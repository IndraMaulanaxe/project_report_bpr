unit LoginLTBPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Form_Template, DB,
  sSkinProvider, sSkinManager, OleCtrls, SHDocVw,
  DBCtrls, sPanel, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, sLabel, sBitBtn, sSpeedButton, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  ipwcore, ipwipmonitor, ipwhttp;


type
  ESMTP = class (Exception);
  Tfr_LoginBPR = class(Tfr_template)
    sSkinManager1: TsSkinManager;
    Edit1: TEdit;
    WebBrowser1: TWebBrowser;
    sPanel1: TsPanel;
    bt_cancel: TsBitBtn;
    bt_ok: TsBitBtn;
    sPanel2: TsPanel;
    log_server: TEdit;
    Label3: TsLabel;
    Label4: TsLabel;
    log_port: TEdit;
    bt_config: TsBitBtn;
    label_perusahaan: TsLabelFX;
    ProductName: TsLabel;
    Version: TsLabel;
    Copyright: TsLabel;
    bt_cek_update: TsBitBtn;
    sPanel0: TsPanel;
    sLabelCaption: TsLabelFX;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sPanel3: TsPanel;
    Label1: TsLabel;
    log_user: TEdit;
    log_password: TEdit;
    Label2: TsLabel;
    Label5: TsLabel;
    cb_db: TComboBox;
    ProgramIcon: TImage;
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_configClick(Sender: TObject);
    procedure log_passwordChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_dbChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bt_configKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_cek_updateClick(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure ipwIPMonitor1IPAddress(Sender: TObject; const IpAddress: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_LoginBPR: Tfr_LoginBPR;
  nWrongPass: Byte;

implementation

uses MyVAR, MyLib, GetSystemDate, StrUtils, dm_bpr, Math, ShellAPI, IdException, DateUtils,
  ProgramSetting, MainMenu;

{$R *.dfm}

procedure Tfr_LoginBPR.bt_okClick(Sender: TObject);
var
  cPassSHA1,cDbName,cPesanError: String;
  IsValidPassword: Boolean;
  dTglTemp: TDate;
begin
  inherited;
  if Empty(log_password.Text) then
    if not Pesan(3,'Password masih kosong, lanjutkan ?') then
      Exit;

  if (cb_db.ItemIndex >= 0) then
    begin
      nConIndex := cb_db.ItemIndex;
      cDb1 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'DatabaseCore','dbcbs');
      cDbName := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'DatabaseName','ltbpr');
      cDb2 := cDbName;
    end;

  try
    dm_bpr1.MyCon2.Connect;
  except
    on E: EDatabaseError do
      begin
        Application.MessageBox('Maaf, tidak dapat terhubung ke database !'+#13+#10+
            'Periksa kembali seting user dan password database anda !','Perhatian',MB_OK or MB_ICONWARNING);
        Exit;
      end;
  end;

  if not dm_bpr1.MyCon2.Connected then
    begin
      Application.MessageBox('Maaf, tidak dapat terhubung ke database !','Perhatian',MB_OK or MB_ICONWARNING);
      Exit;
    end
  else
    begin
      cNamaUser := Trim(log_user.Text);

      //matikan timer cari IP Dinamic
      if (IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Online','N')='Y') then
        IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Host',log_server.Text);

      dm_bpr1.MyCon2.Database := cDbName;

      IniSetStringValue(Ogie_FileIni,'Configuration','User',log_user.Text);
      IniSetStringValue(Ogie_FileIni,'Configuration','Host',log_server.Text);
      cCurrentVersion := AmbilVersi;
      IniSetStringValue(Ogie_FileIni,'Configuration','Version',cCurrentVersion);

      if (cb_db.ItemIndex >= 0) then
        begin
          IniSetStringValue(Ogie_FileIni,'Configuration','KoneksiDefault',IntToStr(cb_db.ItemIndex));
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'User',log_user.Text);
        end;

      cNamaUser := Trim(log_user.Text);
      cPassSHA1 := getmd5(Trim(log_password.Text));

      if SelectRow('SELECT COUNT(*) AS hasil FROM '+cDb2+'.user WHERE user='+QuotedStr(cNamaUser)+
        ' AND password='+QuotedStr(cPassSHA1))='1' then
        IsValidPassword := True
      else
        IsValidPassword := False;

      dm_bpr1.MyQueryTemp.SQL.Text :=
        'SELECT user_id, password, nama, level, kd_cabang, flg_block, tgl_expired, initial, '+
        '   user_id_induk, reg_id_gcm, email, kode_perk_kas, kode_perk_kas_utama '+
        'FROM '+cDb2+'.user '+
        'WHERE user='+QuotedStr(cNamaUser);
      if dm_bpr1.MyQueryTemp.Active then
        dm_bpr1.MyQueryTemp.Refresh
      else
        dm_bpr1.MyQueryTemp.Open;

      if (dm_bpr1.MyQueryTemp.RecordCount=0) then
        begin
          Pesan(2, 'Maaf User Name tidak ditemukan...!');
          ReleaseLimitUser('LOGIN_LTBPR' + '_' + Trim(UpperCase(cNamaUser)));
          Application.Terminate;
          Exit;
        end;

      cUserID := dm_bpr1.MyQueryTemp.FieldByName('user_id').AsString;
      cUserInitial := dm_bpr1.MyQueryTemp.FieldByName('initial').AsString;
      cCabangID := dm_bpr1.MyQueryTemp.FieldByName('kd_cabang').AsString;
      cRegIDGCM := dm_bpr1.MyQueryTemp.FieldByName('reg_id_gcm').AsString;
      cUserEmail := dm_bpr1.MyQueryTemp.FieldByName('email').AsString;
      cKodeKas := dm_bpr1.MyQueryTemp.FieldByName('kode_perk_kas').AsString;
      cKodeKasUtama := dm_bpr1.MyQueryTemp.FieldByName('kode_perk_kas_utama').AsString;
      cKodeCabang := SelectRow('SELECT kode_cabang '+
        'FROM '+cDb2+'.app_kode_kantor '+
        'WHERE kode_kantor='+QuotedStr(cCabangID));

      //cek blokir user
      if (dm_bpr1.MyQueryTemp.FieldByName('flg_block').AsString='Y') then
        begin
          Pesan(2,'Maaf, User anda sudah di Blokir, '+#13#10+
            'anda tidak berhak menggunakan Aplikasi ini...!');
          ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
          Application.Terminate;
          Exit;
        end;

      dTglTemp := GetTglEOD(cKodeCabang);
      dTglSystem := IncDay(dTglTemp);  //gunakan dtglsystem sesuai database //rev 26 Jan 2016

      //cek expired user
      if (DateOf(dm_bpr1.MyQueryTemp.FieldByName('tgl_expired').AsDateTime)<=DateOf(dTglSystem)) then
        begin
          Pesan(2,'Maaf, User anda telah expired, '+#13#10+
            'anda tidak berhak lagi menggunakan Aplikasi ini...!');
          ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
          Application.Terminate;
          Exit;
        end;


      cUserIDHeadIT := SelectRow('SELECT `user_id` FROM '+cDb2+'.`user` '+
        ' WHERE user_code="3" AND group_menu="IT" LIMIT 1');
      cOtorisasiAndroid := GetMyParameter('OTORISASI_ANDROID','TIDAK');


      
      if LimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser))) then
        begin
          Pesan(2,'Penggunaan Aplikasi melebihi jumlah yang ditetapkan (max '+
            GetMyParameter('MAX_LIMIT_PC','2')+'/PC)...!');
          Exit;
        end;

//      //just test

        if IsValidPassword then
          begin
            Application.CreateForm(Tfr_GetSystemDate, fr_GetSystemDate);
            fr_GetSystemDate.ShowModal;
            if (fr_GetSystemDate.Tag<>2) then
              begin
                fr_GetSystemDate.Free;
                fr_GetSystemDate := nil;
                ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
                Close;
                Exit;
              end;
            fr_GetSystemDate.Free;
            fr_GetSystemDate := nil;

            dTglExpiredPassword := StrToDate(SelectRow('select tgl_expired from '+cDb2+'.user_password where '+
                  'user='+QuotedStr(cNamaUser)+' and tgl_expired>='+DateToStrSQL(dTglSystem)));

            lSaldoAwalNeraca     := False;  //GetMyParameter('SALDO_AWAL_NERACA','YA')='YA';
            dTgllSaldoAwalNeraca := dTglSystem;  //GetTglSaldoAwalNeraca(cKodeCabang, IncDay(dTglSystem, 1));

              if (GetMyParameter('LOCK_SYSTEM','TIDAK')='YA') then
                begin
                  Pesan(2,'Maaf, Untuk sementara system tidak dapat diakses...!'+#13+#10+
                    GetMyParameter('LOCK_SYSTEM_MESSAGE','Sedang Proses Maintenance Database'));
                  if UserAdmin(cNamaUser) then
                    begin
                      if Pesan(3,'Non Aktifkan LOCK SYSTEM Sekarang ?') then
                        SetMyParameter('LOCK_SYSTEM','TIDAK');
                    end
                  else
                    begin
                      ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
                      Exit;
                    end;
                end;

              if (GetMyParameter('CEK_LAST_VERSION_LTBPR','YA')='YA') then
                begin
                  cCurrentVersion := GetMyParameter('LAST_VERSION_LTBPR','1.0.0.0');
                  if AmbilVersi < cCurrentVersion then
                    begin
                      Pesan(2,'Harap Update System ke Versi '+cCurrentVersion+'...!');
                      ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
                      if Application.FindComponent('fr_MainMenu') = nil then
                          Application.CreateForm(Tfr_MainMenu, fr_MainMenu);
                      fr_MainMenu.TimerUpdaterTimer(Sender);
                      fr_MainMenu.Free;
                      fr_MainMenu := nil;
                      Exit;
                    end;
                end;
              if AmbilVersi > cCurrentVersion then
                SetMyParameter('LAST_VERSION_LTBPR',AmbilVersi);

              nDuration:=0;

              //cNamaKas := GetFValueByFKeyValue('perkiraan','kode_perk',cKodeKas,'nama_perk');
              //cNamaKasUtama := GetFValueByFKeyValue('perkiraan','kode_perk',cKodeKasUtama,'nama_perk');
              cMaxRow := GetMyParameter('MAX_LIMIT_ROW','25');
              //lVisibleMenu := (GetMyParameter('VISIBLE_MENU_DISABLE','YA')='YA');

              //lAdmin := UserAdmin(cNamaUser);
              cOtorisatorParameter := SelectRow('select concat_ws(";",user_id,nama,'+
                'kd_cabang,penerimaan,pengeluaran,kode_perk_kas,penerimaan_ob,'+
                'pengeluaran_ob,ip_address) as hasil from '+cDb2+'.user where user_code in (2,3) '+
                'and user_id='+QuotedStr(cUserID));

              MyExecuteSQL('update '+cDb2+'.user '+
                ' set flag=1, ip_address='+QuotedStr(GetLocalIP)+
                ' where user_id='+QuotedStr(cUserID));


                  dm_bpr1.MyQueryTemp.SQL.Text := 'SELECT nama_kantor as nama, alamat_kantor as alamat, kota_kantor as kota, '+
                    ' CONCAT(if(tlp="","",concat("Telp. ",tlp)), if(fax="","",concat(", Fax. ",fax))) AS telp_fax '+
                    'FROM '+cDb2+'.app_kode_kantor LIMIT 1';
                  if dm_bpr1.MyQueryTemp.Active then
                    dm_bpr1.MyQueryTemp.Refresh
                  else
                    dm_bpr1.MyQueryTemp.Open;

                  cNamaPT := dm_bpr1.MyQueryTemp.FieldByName('nama').AsString;
                  cAlamatPT := dm_bpr1.MyQueryTemp.FieldByName('alamat').AsString;
                  cKotaPT := dm_bpr1.MyQueryTemp.FieldByName('kota').AsString;;
                  cTelpPT := dm_bpr1.MyQueryTemp.FieldByName('telp_fax').AsString;


              log_password.Text := '';
              Self.Hide;

              UpdateUserLog(Self.Name ,True, 'Login Sukses : '+cNamaUser+
                ' Tanggal System : '+DateIndo(dTglSystem)+
                ' IP : '+GetLocalIP+
                ' OS User : '+Trim(UpperCase(GetLoginName)));
              sPanel3.Enabled := False;
              bt_ok.Enabled := False;
              bt_cancel.Enabled := False;

              if Application.FindComponent('fr_MainMenu') = nil then
                Application.CreateForm(Tfr_MainMenu, fr_MainMenu);
              fr_MainMenu.Caption := Application.Title + ' - ' + cNamaPT + ' ('+cDbName+')';
              fr_MainMenu.ShowModal;
              fr_MainMenu.Free;
              fr_MainMenu := nil;

              IniSetStringValue(Ogie_FileIni,'Configuration','Skin',sSkinManager1.SkinName);
              IniSetStringValue(Ogie_FileIni,'Configuration','SkinAktif',IfThen(sSkinManager1.Active,'1','0'));
              //sudah dipindah di menu
            Close;
          end
        else
          begin
            //sudah di pastikan hanya user yg terdaftar dan aktif
            Inc(nWrongPass);

            //reset edit text antisipasi user lupa ganti users
            log_user.Text := '';
            log_password.Text := '';

            cPesanError := 'Maaf, user dan password yang anda masukkan salah...!'+#13+#10+
              'Periksa kembali penulisan user dan password anda !'+#13+#10+
              IfThen(nWrongPass = 2,'Anda sudah melakukan kesalahan 2 kali...'+#13+#10+
              'Untuk ke 3 kali User ID anda akan kami block...'+#13+#10+
              'Terima kasih...','');
            //untuk mencegah jika komputernya dimatikan paksa 
            if (nWrongPass > 2) then
              begin
                cPesanError := 'Maaf User ID anda kami block...!'+#13+#10+
                  'Kejadian ini telah kami catat di log'+#13+#10+
                  'Harap hubungi Administrator'+#13+#10+
                  'Terima kasih...';
                MyExecuteSQL('UPDATE '+cDb2+'.user '+
                  'SET flg_block = "Y" '+
                  'WHERE user='+QuotedStr(cNamaUser));
                UpdateUserLog(Self.Name ,True, 'Login Failed > 2, Block User : '+cNamaUser+
                  ' Tanggal System : '+DateIndo(dTglSystem)+
                  ' IP : '+GetLocalIP+
                  ' OS User : '+Trim(UpperCase(GetLoginName)));
              end
            else
              UpdateUserLog(Self.Name ,True, 'Login Failed, ke : '+IntToStr(nWrongPass)+' : '+cNamaUser+
                ' Tanggal System : '+DateIndo(dTglSystem)+
                ' IP : '+GetLocalIP+
                ' OS User : '+Trim(UpperCase(GetLoginName)));
            Pesan(2,cPesanError);
            if (nWrongPass > 2) then
              begin
                ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
                Application.Terminate;
                Exit;
              end;
            log_password.SetFocus;
            ReleaseLimitUser('LOGIN_LTBPR'+'_'+Trim(UpperCase(cNamaUser)));
            Exit;
          end;
    end;

//  else
//    begin
//      Application.MessageBox('Anda tidak berhak menggunakan program ini !','Perhatian',MB_OK or MB_ICONWARNING);
//      log_password.SetFocus;
//      Exit;
//    end;
end;

procedure Tfr_LoginBPR.cb_dbChange(Sender: TObject);
begin
  inherited;
  if (cb_db.ItemIndex >= 0) then
    begin
      log_server.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Host','localhost');
      log_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Port','3306');
      log_user.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'User',GetUserFromWindows);
    end;
end;

procedure Tfr_LoginBPR.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
  //Pesan(2,EncryptPass('root'));
  //Pesan(2,EncryptPass('indra'));
end;

procedure Tfr_LoginBPR.FormActivate(Sender: TObject);
begin
  inherited;
  if Empty(log_user.Text) and log_user.CanFocus then
    log_user.SetFocus;
  if Empty(log_password.Text) and log_password.CanFocus then
    log_password.SetFocus;
end;

procedure Tfr_LoginBPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Application.Terminate;
end;

procedure Tfr_LoginBPR.FormCreate(Sender: TObject);
var
  cKoneksi: string;
  i: Byte;
begin
  inherited;
  Version.Caption := 'Versi '+AmbilVersi;
{$IFDEF DEBUG}
  if FileExists(cLocation+'Logo_LTBPR.jpg') then
    begin
      Copyright.Caption :=  IniGetStringValue(Ogie_FileIni,'Configuration','Copyright','Copyright TOP (c) 2025');
    end;
{$ELSE}
  if FileExists(cLocation+'Logo_LTBPR.jpg') then
    begin
      Copyright.Caption :=IniGetStringValue(Ogie_FileIni,'Configuration','Copyright','Copyright TOP (c) 2025')+#13#10+
        IniGetStringValue(Ogie_FileIni,'Configuration','Web','http://www.top.co.id');
    end
  else if FileExists(cLocation+'Logo_LTBPR.jpg') then
    begin
      Copyright.Caption := IniGetStringValue(Ogie_FileIni,'Configuration','Copyright','Copyright TOP (c) 2025')+#13#10+
       IniGetStringValue(Ogie_FileIni,'Configuration','Web','http://www.top.co.id');
    end;
{$ENDIF}

  sSkinManager1.SkinName := IniGetStringValue(Ogie_FileIni,'Configuration','Skin','WLM (internal)');
  sSkinManager1.Active := IniGetStringValue(Ogie_FileIni,'Configuration','SkinAktif','1')='1';

  cKoneksi := LowerCase(Trim(IniGetStringValue(Ogie_FileIni,'Configuration','KoneksiDefault','0')));

  cb_db.Items.Clear;
  for i := 1 to 25 do
    begin
      if Empty(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name','')) then
        begin
          if (i=1) then
            cb_db.Items.Add('KONEKSI_'+StrZero(i,2)+' Empty')
          else
            IniDelSectionString(Ogie_FileIni,'KONEKSI_'+StrZero(i,2));
        end
      else
        cb_db.Items.Add(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name',''));


    end;



  cb_db.ItemIndex := 0;
  if not Empty(cKoneksi) then
    begin
      if StrToInt(cKoneksi) <= cb_db.ItemHeight then
        cb_db.ItemIndex := StrToInt(cKoneksi);
    end;

  if (cb_db.ItemIndex >= 0) then
    begin
      log_server.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Host','localhost');
      log_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Port','3306');
      log_user.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'User',GetUserFromWindows);
    end;

  nWrongPass := 0;

{$IFDEF DEBUG}
  if FileExists(cLocation+'Logo_LTBPR.jpg') then
    ProgramIcon.Picture.LoadFromFile(cLocation+'Logo_LTBPR.jpg')
  else
    ProgramIcon.Picture.Bitmap := nil;
{$ELSE}
  if FileExists(cLocation+'Logo_LTBPR.png') then
    ProgramIcon.Picture.LoadFromFile(cLocation+'Logo_LTBPR.png')
  else if FileExists(cLocation+'Logo_LTBPR.jpg') then
    ProgramIcon.Picture.LoadFromFile(cLocation+'Logo_LTBPR.jpg')
  else
    ProgramIcon.Picture.Bitmap := nil;
{$ENDIF}

  Application.Title := Application.Title+' Ver.'+AmbilVersi;
  Caption := Application.Title;
  IniSetStringValue(Ogie_FileIni,'Configuration','Location',cLocation);
  cFontJudulForm := IniGetStringValue(Ogie_FileIni,'Configuration','FontJudulForm','');
      cColorGridOddFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridOddFront','0');
      cColorGridOddBg := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridOddBg','15780518');
      cColorGridSelectedFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedFront','16777215');
      cColorGridSelectedBg := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedBg','16711680');
      cColorGridRow := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridRow','2');
      cColorGridMinFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridMinFront','32768');
      cColorGridMaxFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridMaxFront','255');
  if Application.FindComponent('dm_bpr1') = nil then
    Application.CreateForm(Tdm_bpr1, dm_bpr1);

  if IniGetStringValue(Ogie_FileIni,'Configuration','MonitorDB','0')='1' then
    dm_bpr1.MySQLMonitor1.Active := True;
end;

procedure Tfr_LoginBPR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_F6 then
    begin
      if CtrlDown then
        bt_config.Visible := not bt_config.Visible;
    end;
  if Key=VK_F3 then
    begin
      if CtrlDown then
        sPanel0.Visible := not sPanel0.Visible;
    end;
end;

procedure Tfr_LoginBPR.ipwIPMonitor1IPAddress(Sender: TObject;
  const IpAddress: string);
begin
  inherited;
  Pesan(1,IpAddress);
end;

procedure Tfr_LoginBPR.log_passwordChange(Sender: TObject);
begin
  inherited;
  if Empty(log_server.Text) or Empty(log_port.Text) or
    Empty(log_user.Text) or Empty(log_password.Text) then
      bt_ok.Default := False
  else
      bt_ok.Default := True;
end;

procedure Tfr_LoginBPR.sSpeedButton1Click(Sender: TObject);
begin
  inherited;
  sPanel0.Visible := False;
end;

procedure Tfr_LoginBPR.bt_cek_updateClick(Sender: TObject);
begin
  inherited;
  if (cb_db.ItemIndex >= 0) then
    begin
      cNamaUser := 'x';
      nConIndex := cb_db.ItemIndex;
      cDb2 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'DatabaseName','dpm_online');
    end;

  try
    dm_bpr1.MyCon2.Connect;
  except
    on E: EDatabaseError do
      begin
        Application.MessageBox('Maaf, tidak dapat terhubung ke database !','Perhatian',MB_OK or MB_ICONWARNING);
        Exit;
      end;
  end;

     if Application.FindComponent('fr_MainMenu') = nil then
        Application.CreateForm(Tfr_MainMenu, fr_MainMenu);
      lUpdate := True;
      fr_MainMenu.TimerUpdater.Enabled := True;
end;

procedure Tfr_LoginBPR.bt_configClick(Sender: TObject);
var
  cKoneksi: string;
  i: Byte;
begin
  inherited;
  if Application.FindComponent('fr_ProgramSetting') = nil then
    Application.CreateForm(Tfr_ProgramSetting, fr_ProgramSetting);
  fr_ProgramSetting.ShowModal;
  fr_ProgramSetting.Free;
  fr_ProgramSetting := nil;
  cKoneksi := LowerCase(Trim(IniGetStringValue(Ogie_FileIni,'Configuration','KoneksiDefault','0')));

  cb_db.Items.Clear;
  for i := 1 to 25 do
    begin
      if Empty(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name','')) then
        begin
          if (i=1) then
            cb_db.Items.Add('KONEKSI_'+StrZero(i,2)+' Empty');
        end
      else
        cb_db.Items.Add(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name',''));
    end;

  cb_db.ItemIndex := 0;
  if not Empty(cKoneksi) then
    begin
      if StrToInt(cKoneksi) <= cb_db.ItemHeight then
        cb_db.ItemIndex := StrToInt(cKoneksi);
    end;

  if (cb_db.ItemIndex >= 0) then
    begin
      log_server.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Host','localhost');
      log_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'Port','3306');
      log_user.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_db.ItemIndex+1,2),'User',GetUserFromWindows);
    end;
end;

procedure Tfr_LoginBPR.bt_configKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_F6 then
    begin
      if CtrlDown then
        bt_config.Visible := not bt_config.Visible;
    end;
end;

end.
