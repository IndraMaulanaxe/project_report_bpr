unit MainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxClasses,
//  dxSkinsCore, dxSkinBlack,
//  dxSkinDarkRoom, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
//  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMetropolisDark,
 //dxSkinsForm, dxSkinBlue, dxSkinBlueprint,
//  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
//  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinMcSkin,
//  dxSkinMetropolis, dxSkinMoneyTwins, dxSkinOffice2007Black,
//  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
//  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
//  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
//  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
//  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
//  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
//  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
//  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
//  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
//  dxSkinXmas2008Blue,
cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel,
  cxGroupBox, Data.DB, System.DateUtils, cxMemo, acPathDialog, ipwcore,
  ipwtypes, ipwhttp, ZipForge, ShellAPI, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, cxSpinEdit, MemDS,
  DBAccess, MyAccess, dxGaugeCustomScale, dxGaugeDigitalScale, dxGaugeControl, QExport4, QExport4XLS,
   System.IOUtils;

type
  Tfr_MainMenu = class(TForm)
    PopupMenu1: TPopupMenu;
    M1: TMenuItem;
    N3: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    SkinOn: TMenuItem;
    SkinOff: TMenuItem;
    N1: TMenuItem;
    AndroidOSinternal1: TMenuItem;
    BlackBoxinternal1: TMenuItem;
    BluePlasticinternal1: TMenuItem;
    DarkGlassinternal1: TMenuItem;
    Steam2internal1: TMenuItem;
    UnderWaterinternal1: TMenuItem;
    WLMinternal1: TMenuItem;
    Woodinternal1: TMenuItem;
    TrayIcon1: TTrayIcon;
    TimerUpdater: TTimer;
    ZipForge1: TZipForge;
    HTTP1: TipwHTTP;
    sPathDialog1: TsPathDialog;
    cxGroupBox1: TcxGroupBox;
    cxButton2: TcxButton;
    ProductName: TcxLabel;
    cxLabel1: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    bt_proses: TcxButton;
    bt_save: TcxButton;
    bt_import_text_all: TcxButton;
    bt_export_excel: TcxButton;
    bt_update_status: TcxButton;
    bt_restore_point: TcxButton;
    bt_restore_data: TcxButton;
    bt_ganti_bulan: TcxButton;
    bt_close: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxLabel3: TcxLabel;
    no_surat: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel5: TcxLabel;
    kode_sektor_ljk: TcxTextEdit;
    cxLabel6: TcxLabel;
    kode_ljk: TcxTextEdit;
    cxLabel7: TcxLabel;
    cb_jenis_laporan: TcxComboBox;
    koreksi_ke: TcxSpinEdit;
    flg_koreksi: TcxCheckBox;
    per_tgl: TDateTimePicker;
    MyQuery1: TMyQuery;
    MyQFormLapBul: TMyQuery;
    MyQFormLapBulid: TIntegerField;
    MyQFormLapBulkode_form: TStringField;
    MyQFormLapBulnama_form: TStringField;
    MyQFormLapBulnama_table: TStringField;
    MyQField: TMyQuery;
    dxGaugeControl1: TdxGaugeControl;
    sGaugeStatus: TdxGaugeDigitalScale;
    dxGaugeControl2: TdxGaugeControl;
    sGaugeJenisLaporan: TdxGaugeDigitalScale;
    sGaugeJenisLaporanCaption1: TdxGaugeDigitalScaleCaption;
    sGaugeStatusCaption1: TdxGaugeDigitalScaleCaption;
    CategoryPanelGroup1: TCategoryPanelGroup;
    cp_lap_lanjutan: TCategoryPanel;
    cp_transparasi: TCategoryPanel;
    bt_formE0100: TcxButton;
    bt_formE0201: TcxButton;
    bt_formE0202: TcxButton;
    bt_formE0203: TcxButton;
    bt_formE0204: TcxButton;
    bt_formE0600: TcxButton;
    bt_formE0500: TcxButton;
    bt_formE0402: TcxButton;
    bt_formE0401: TcxButton;
    bt_formE0303: TcxButton;
    bt_formE0302: TcxButton;
    bt_formE0701: TcxButton;
    bt_formE0702: TcxButton;
    bt_formE0800: TcxButton;
    bt_formE0900: TcxButton;
    bt_formE1000: TcxButton;
    bt_formE1100: TcxButton;
    cp_sp_kebenaran_lpran: TCategoryPanel;
    cp_opini_akuntan: TCategoryPanel;
    cp_lap_akuntan_publik: TCategoryPanel;
    cp_lap_keuangan: TCategoryPanel;
    cp_sdm: TCategoryPanel;
    bt_formA05072: TcxButton;
    cp_laporan_manajemen: TCategoryPanel;
    bt_formA0502: TcxButton;
    bt_formA0506: TcxButton;
    cp_strategi: TCategoryPanel;
    bt_formA0400: TcxButton;
    cp_perkembanganbpr: TCategoryPanel;
    bt_formA0301: TcxButton;
    bt_formA0304: TcxButton;
    bt_formA0305: TcxButton;
    cp_kepemilikan: TCategoryPanel;
    cp_kepengurusan: TCategoryPanel;
    OpenDialog1: TOpenDialog;
    bt_formA0503: TcxButton;
    bt_formA0504: TcxButton;
    bt_formC0100: TcxButton;
    bt_formD0000: TcxButton;
    bt_formF0000: TcxButton;
    MyQFormLapBulis_footer: TSmallintField;
    MyQFormLapBulis_file: TSmallintField;
    procedure CategoryPanel1Click(Sender: TObject);
    procedure bt_loginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_formA0301Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TimerUpdaterTimer(Sender: TObject);
    procedure bt_formA0304Click(Sender: TObject);
    procedure bt_formA0502Click(Sender: TObject);
    procedure bt_formA0506Click(Sender: TObject);
    procedure bt_formA05072Click(Sender: TObject);
    procedure bt_formE0100Click(Sender: TObject);
    procedure bt_formE0201Click(Sender: TObject);
    procedure bt_ganti_bulanClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure bt_prosesClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_import_text_allClick(Sender: TObject);
    procedure bt_export_excelClick(Sender: TObject);
    procedure bt_update_statusClick(Sender: TObject);
    procedure bt_restore_pointClick(Sender: TObject);
    procedure bt_restore_dataClick(Sender: TObject);
    procedure bt_formE0202Click(Sender: TObject);
    procedure bt_formA0400Click(Sender: TObject);
    procedure bt_formE1100Click(Sender: TObject);
    procedure bt_formE1000Click(Sender: TObject);
    procedure bt_formE0900Click(Sender: TObject);
    procedure bt_formE0800Click(Sender: TObject);
    procedure bt_formE0702Click(Sender: TObject);
    procedure bt_formE0701Click(Sender: TObject);
    procedure bt_formE0600Click(Sender: TObject);
    procedure bt_formE0500Click(Sender: TObject);
    procedure bt_formE0402Click(Sender: TObject);
    procedure bt_formE0401Click(Sender: TObject);
    procedure bt_formE0303Click(Sender: TObject);
    procedure bt_formE0302Click(Sender: TObject);
    procedure bt_formE0204Click(Sender: TObject);
    procedure bt_formE0203Click(Sender: TObject);
    procedure bt_formA0305Click(Sender: TObject);
    procedure bt_formA0503Click(Sender: TObject);
    procedure bt_formA0504Click(Sender: TObject);
    procedure bt_formC0100Click(Sender: TObject);
    procedure bt_formD0000Click(Sender: TObject);
    procedure bt_formF0000Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_MainMenu: Tfr_MainMenu;

implementation

uses
  dm_bpr, StrUtils, FormKP2000,  MyVAR, MyLib, FormA0301, FormA0304, FormA0502,
  FormA0506, FormA05072, FormE0100, FormE0201, DaftarBackupAPOLO,
  FormE0202, FormE0203, FormE0302,
  FormE0303, FormE0401, FormE0402, FormE0600, FormE0701, FormE0702, FormE0800,
  FormE0900, FormE1000, FormE1100, FormE0204, FormE0500;

  Var cKodeJenisPelaporan : String;

{$R *.dfm}



procedure Tfr_MainMenu.CategoryPanel1Click(Sender: TObject);
begin
//  (Sender as TCategoryPanel).Collapsed := not (Sender as TCategoryPanel).Collapsed;
end;

procedure Tfr_MainMenu.bt_formA0400Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'A0400');
  end;
end;

procedure Tfr_MainMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not Pesan(3, 'Keluar dari aplikasi sekarang ?') then
    CanClose := False;
end;

procedure Tfr_MainMenu.FormCreate(Sender: TObject);
var cNamaTabelCek, cKodeArsipCek, cKodeFormArsipCek : string;
 nCountCek : Integer;
begin
  inherited;
  cp_lap_lanjutan.Collapsed := True;
  cp_transparasi.Collapsed := True;
  cp_sp_kebenaran_lpran.Collapsed := True;
  cp_opini_akuntan.Collapsed := True;
  cp_lap_akuntan_publik.Collapsed := True;
  cp_lap_keuangan.Collapsed := True;
  cp_sdm.Collapsed := True;
  cp_laporan_manajemen.Collapsed := True;
  cp_strategi.Collapsed := True;
  cp_perkembanganbpr.Collapsed := True;
  cp_kepemilikan.Collapsed := True;
  cp_kepengurusan.Collapsed := True;

  kode_sektor_ljk.Text := GetMyParameter('LTBPR_KODE_SEKTOR_LJK','010201');
  kode_ljk.Text := GetMyParameter('LTBPR_KODE_LJK','600432');
  per_tgl.Date := GetDateFValueByFKeyValue('sistem','jenis','TGL_LTBPR','tanggal');

  if (YearOf(per_tgl.Date) < 2018) then
    begin
      per_tgl.Date := StrToDate('12/31/2018');
      MyExecuteSQL('INSERT INTO '+cDb2+'.`sistem` (`jenis`, `tanggal`) '+
        ' VALUES ("TGL_LTBPR", '+DateToStrSQL(per_tgl.Date)+') '+
        ' ON DUPLICATE KEY UPDATE tanggal='+DateToStrSQL(per_tgl.Date));
    end;
  per_tgl.Format := 'MMMM yyyy';
  cKodeArsipCek := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);
  cKodeFormArsipCek := cDb2+'.'+'ltbprk_header_arsip';
  nCountCek := StrToIntDef(SelectRow('SELECT count(*) FROM '+cKodeFormArsipCek+
              ' WHERE kode_arsip='+QuotedStr(cKodeArsipCek)),0);

  if (nCountCek > 0) then
      bt_ganti_bulan.Enabled:=True;
end;

procedure Tfr_MainMenu.TimerUpdaterTimer(Sender: TObject);
 var
  cnew, apath, apath2, bakName, cFileName, cSectionName, cLinkUpdate, cLastnew, cCekMyIP, cUpdateVia: string;
  nFiles: Word;
  cNamaFileTemp: TFileName;
  dTglWajib: TDate;
  lLanjutUpdate: Boolean;
  cFTPName, cFTPUser, cFTPPassword, cFTPFolder: string;
begin
  inherited;
  TimerUpdater.Enabled := False;

  if not _IsConnectedToInternet then
  begin
    TrayIcon1.Visible := True;
    TrayIcon1.BalloonHint := 'Tidak connect ke internet...!';
    TrayIcon1.ShowBalloonHint;
    Exit;
  end;

  //delete chache ie
  DeleteIECache;

  //apath := GetPathPath;
  //untuk windows 7
  apath := ExtractFilePath(Ogie_FileIni);
  cSectionName := ChangeFileExt(ExtractFileName(Ogie_FileIni), '');  //harus sama dengan nama file exe
  //Pesan(1,apath);
  TrayIcon1.Visible := True;
  TrayIcon1.BalloonHint := 'Checking New Version...';
  TrayIcon1.ShowBalloonHint;

  TrayIcon1.Visible := True;
  TrayIcon1.BalloonHint := 'Setting Using : ' + GetMyParameter('SETTING_UPDATE', '');
  TrayIcon1.ShowBalloonHint;

  cCekMyIP := GetLocalIP;
  if (GetMyParameter('SETTING_UPDATE', '') = 'DPMKM') then
  begin
    if cCekMyIP = GetMyParameter('IP_SERVER_UPDATE', '') then
      cLinkUpdate := 'http://' + GetMyParameter('IP_SERVER_UPDATE_LOKAL', '') + '/upload/updater/update' + ExtractFileName(Ogie_FileIni)
    else
      cLinkUpdate := 'http://' + GetMyParameter('IP_SERVER_UPDATE', '') + '/upload/updater/update' + ExtractFileName(Ogie_FileIni);
  end;

//  Pesan(2,'1-'+cLinkUpdate);

  TrayIcon1.Visible := True;
  TrayIcon1.BalloonHint := 'Download file ' + cLinkUpdate + '...';
  TrayIcon1.ShowBalloonHint;

  try
    try
      lTotal := MaxLongint;
      HTTP1.FollowRedirects := frAlways;
      HTTP1.LocalFile := apath + '/update.ini';
      HTTP1.Get(cLinkUpdate);
    except
      cLinkUpdate := 'http://' + IniGetStringValue(Ogie_FileIni, 'Configuration', 'WebHost', 'www.ogiesoft.com') + '/upload/updater/update' + ExtractFileName(Ogie_FileIni);
    end;
  finally
    lLanjutUpdate := True;
  end;

  if not lLanjutUpdate then
    begin
      Pesan(2, 'Update Gagal...!');
      Exit;
    end;


  cUpdateVia := GetMyParameter('UPDATE_VIA', 'HTTP');

  if lLanjutUpdate then
  begin
    cnew := GetMyParameter('LAST_VERSION_LTBPR', '1.0.0.1');
    cLastnew := IniGetStringValue(Ogie_FileIni, 'Configuration', 'LastVersionDownload', '1.0.0.0');
//    if not FileExists(cFileName) then
//      cLastnew := '1.0.0.0';
    if Empty(cLastnew) then
       cLastnew := '1.0.0.0';
    cNewVersion := AmbilVersi;
    if lUpdate and (cNewVersion >= cnew) then
    begin
      if not Pesan(3, 'Anda sudah menggunakan Versi Terbaru, tetap lanjutkan update ?') then
      begin
        lUpdate := False;
        Exit;
      end;
    end;

    if not lUpdate and (cNewVersion >= cnew) then
    begin
      TrayIcon1.BalloonHint := 'Anda sudah menggunakan Versi Terbaru...';
      TrayIcon1.ShowBalloonHint;
    end
    else
    begin
      lUpdate := True;
      dTglWajib := StrToDate(IniGetStringValue(apath + '/update.ini', cSectionName, 'TglExpired', '01/01/2013'));

      if (cnew = cLastnew) then
      begin
        TrayIcon1.BalloonHint := 'Versi Terbaru sudah berhasil didownload...';
        TrayIcon1.ShowBalloonHint;
      end
      else if not Pesan(3, 'Versi Terbaru telah tersedia, Download Update sekarang ?') then
      begin
        if (DateOf(dTglWajib) <= DateOf(dTglSystem)) then
        begin
          Pesan(1, 'Anda diwajibkan update program saat ini juga...!');
        end
        else
          Exit;
      end;
    end;

    if lUpdate then
    begin
      nFiles := StrToInt(IniGetStringValue(apath + '/update.ini', cSectionName, 'JumlahFiles', '1'));
      apath2 := '';
      cFileName := IniGetStringValue(apath + '/update.ini', cSectionName, Trim(IntToStr(nFiles)), '0');
      TrayIcon1.BalloonHint := 'Proses download file ' + cFileName + ', harap tunggu sampai selesai download...';
      TrayIcon1.ShowBalloonHint;
      if at('\', cFileName) > 0 then
        apath2 := '\' + LeftStr(cFileName, at('\', cFileName));
      if not DirectoryExists(apath + 'Backup' + apath2) then
        CreateDir(apath + 'Backup' + apath2);
      if not DirectoryExists(apath + 'update') then
        CreateDir(apath + 'update');

      if (cnew <> cLastnew) then
      begin
        while IniGetStringValue(apath + '/update.ini', cSectionName, Trim(IntToStr(nFiles)), '0') <> '0' do
        begin
          cFileName := IniGetStringValue(apath + '/update.ini', cSectionName, Trim(IntToStr(nFiles)), '0');
          if at('\', cFileName) > 0 then
            apath2 := '\' + LeftStr(cFileName, at('\', cFileName))
          else
            apath2 := '';
          if not DirectoryExists(apath + 'Backup' + apath2) then
            CreateDir(apath + 'Backup' + apath2);
          if not DirectoryExists(apath + apath2) then
            CreateDir(apath + apath2);
          bakName := ChangeFileExt(apath + 'Backup\' + cFileName, '.old');
          RenameFile(apath + 'update\' + cFileName, bakName);
          if FileExists(bakName) then
            DeleteFile(bakName);

          cFileName:= GetMyParameter('FILE_APLIKASI_LTBPR','LTBPRSetup')+ReplaceStr(cnew,'.','')+'.zip';

          if (GetMyParameter('SETTING_UPDATE', '') = 'DPMKM') then
          begin
            if cCekMyIP = GetMyParameter('IP_SERVER_UPDATE', '') then
              cLinkUpdate := 'http://' + GetMyParameter('IP_SERVER_UPDATE_LOKAL', '') + '/upload/updater/' + cFileName
            else
              cLinkUpdate := 'http://' + GetMyParameter('IP_SERVER_UPDATE', '') + '/upload/updater/' + cFileName;
          end;

//          Pesan(2,'2-'+cLinkUpdate);

          if (cUpdateVia = 'HTTP') then
            begin
              try
                TrayIcon1.BalloonHint := 'Proses download file ' + cLinkUpdate + ' to ' + apath + 'update\' + cFileName;
                TrayIcon1.ShowBalloonHint;
                try

                  lTotal := MaxLongint;
                  HTTP1.FollowRedirects := frAlways;
                  HTTP1.LocalFile := apath + 'update\' + cFileName;
                 // Pesan(1,apath + 'update\' + cFileName);
                 // Pesan(1,cLinkUpdate);
                  HTTP1.Get(cLinkUpdate);
                except
                  begin
                    TrayIcon1.BalloonHint := 'Proses Download file ' + cFileName + ' gagal...!';
                    TrayIcon1.ShowBalloonHint;
                  end;
                end;
              finally
                begin
                  TrayIcon1.BalloonHint := 'Proses Download file ' + cFileName + ' selesai...';
                  TrayIcon1.ShowBalloonHint;
                end;
              end;
            end;

          Inc(nFiles, 1);
          Application.ProcessMessages;
        end;
      end;

//      Pesan(2,'3-'+apath + 'update\' + cFileName);

     if FileExists(apath + 'update\' + cFileName) then
      begin
        IniSetStringValue(Ogie_FileIni, 'Configuration', 'LastVersionDownload', cnew);

        TrayIcon1.BalloonHint := 'Proses Extract file ' + cFileName;
        TrayIcon1.ShowBalloonHint;
        ZipForge1.BaseDir := apath + 'update\';
        ZipForge1.FileName := apath + 'update\' + cFileName;
        ZipForge1.OpenArchive;
        ZipForge1.ExtractFiles;
        ZipForge1.CloseArchive;
        TrayIcon1.BalloonHint := 'Proses Extract file ' + cFileName + ' selesai...';
        TrayIcon1.ShowBalloonHint;
        cNamaFileTemp := apath + 'update\' + GetMyParameter('FILE_APLIKASI_LTBPR','LTBPRSetup')+'.zip' ;
        cNamaFileTemp := ChangeFileExt(cNamaFileTemp, '.exe');
//        Pesan(2,'4-'+cNamaFileTemp);
        if FileExists(cNamaFileTemp) then
        begin
          if Pesan(3, 'System akan menutup semua Aplikasi ' + ExtractFileName(Application.ExeName) + ' yang masih aktif' + #13 + #10 + 'dan menjalankan Setup Aplikasi ' + ExtractFileName(Application.ExeName) + ' Versi ' + cnew + #13 + #10 + 'dan pastikan pekerjaan anda telah tersimpan..., Lanjutkan ?') then
            if Pesan(3, 'Program akan menutup semua aplikasi yang terkait' + #13 + #10 + 'dan menjalankan Setup Program dengan Versi yang baru' + #13 + #10 + 'dan pastikan pekerjaan anda telah tersimpan..., Lanjutkan ?') then
            begin
              ReleaseLimitUser('LOGIN_LTBPR' + '_' + Trim(UpperCase(cNamaUser)));
              if ShellExecute(Application.Handle, PChar('open'), Pchar(cNamaFileTemp), PChar(''), nil, SW_NORMAL) > 32 then
                Application.Terminate;
            end;
        end;
      end
      else
      begin
        IniSetStringValue(Ogie_FileIni, 'Configuration', 'LastVersionDownload', '1.0.0.0');
        TrayIcon1.BalloonHint := 'File ' + cFileName + ' tidak ada..., silahkan ulangi kembali';
        TrayIcon1.ShowBalloonHint;
      end;
    end;
  end
  else
  begin
    TrayIcon1.BalloonHint := 'Update gagal...';
    TrayIcon1.ShowBalloonHint;
  end;

end;

procedure Tfr_MainMenu.bt_closeClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure Tfr_MainMenu.bt_export_excelClick(Sender: TObject);
 var
  Fn: Integer;
  cTemp, cTempSQL, cKodeBankLJK, cPeriodeLaporan, cKodeForm, cNamaTargetTxt,
  cContentPerLine, cKodeArsip: string;
  nJmlLain, nJmlLainAll, nRasioAsetLainnya: Double;
  i: Integer;
  cOldState: Boolean;
  nSheet1, nSheet2, nSheet3: TxlsSheet;
begin
  inherited;

  if not Pesan(3, 'Pastikan Anda sudah memilih Kode Jenis Laporan dengan benar, Lanjutkan ?') then
    Exit;

  if not sPathDialog1.Execute then
    Exit;


  cKodeJenisPelaporan := GetMyParameter('LTBPR_KODE_JENIS_LAPORAN_','PRBPRKS');
  cKodeBankLJK := kode_ljk.Text;
  cPeriodeLaporan := FormatDateTime('yyyyMMdd', per_tgl.DateTime);
  cTemp := GetMyParameter('LTBPR_JUMLAH_REC_PERFILE','1000');
  if Empty(cTemp) then
    cTemp := '1000';
  Tag := 1;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

//  sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Value := '0';
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
     if  (MyQFormLapBulis_footer.AsInteger=0) and  (MyQFormLapBulis_file.AsInteger=0) then
      begin
        sGaugeJenisLaporanCaption1.Text := '% '+MyQFormLapBulnama_table.AsString;
        cKodeForm := MyQFormLapBulkode_form.AsString;

        if cb_jenis_laporan.ItemIndex=0 then
          cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeJenisPelaporan+'-'+cKodeForm+'-R-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.xls'
        else
          cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeJenisPelaporan+'-'+cKodeForm+'-K-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.xls';

        if FileExists(cNamaTargetTxt) then
          DeleteFile(cNamaTargetTxt);

        if FileExists(sPathDialog1.Path+'\iphist.dat') then
          DeleteFile(sPathDialog1.Path+'\iphist.dat');

        if cKodeForm='E0100' then
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+' '
        else
          MyQuery1.SQL.Text := 'SELECT * FROM view_'+MyQFormLapBulnama_table.AsString+' ';


        if MyQuery1.Active then
          MyQuery1.Refresh
        else
          MyQuery1.Open;

            dm_bpr1.QExport4Xlsx1.DataSet := MyQuery1;
            dm_bpr1.QExport4Xlsx1.ExportedFields.Clear;
            dm_bpr1.QExport4Xlsx1.Captions.Clear;
            dm_bpr1.QExport4Xlsx1.ShowFile := True;

            dm_bpr1.QExport4Xlsx1.Header.Text := cNamaPT+#13+#10+
              SubStr(Caption,At('-',Caption)+2,Length(Caption))+#13+#10+
              'Konsolidasi - '+MyQFormLapBulnama_table.AsString;

            dm_bpr1.QExport4Xlsx1.FileName := cNamaTargetTxt;
            dm_bpr1.QExport4Xlsx1.Execute;
            dm_bpr1.QExport4Xlsx1.ExportedFields.Clear;
            dm_bpr1.QExport4Xlsx1.Captions.Clear;
      end;

      MyQFormLapBul.Next;
      sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
      Application.ProcessMessages;
    end;

  Pesan(1,'Proses telah selesai...!');
  sGaugeJenisLaporan.Visible := False;

end;

procedure Tfr_MainMenu.bt_formA0301Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormA0301') = nil then
    Application.CreateForm(Tfr_FormA0301, fr_FormA0301);
  fr_FormA0301.Tag := 0;
  fr_FormA0301.ShowModal;
  fr_FormA0301.Free;
  fr_FormA0301 := nil;
end;

procedure Tfr_MainMenu.bt_formA0304Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormA0304') = nil then
    Application.CreateForm(Tfr_FormA0304, fr_FormA0304);
  fr_FormA0304.Tag := 0;
  fr_FormA0304.ShowModal;
  fr_FormA0304.Free;
  fr_FormA0304 := nil;
end;

procedure Tfr_MainMenu.bt_formA0305Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'A0305');
  end;
end;

procedure Tfr_MainMenu.bt_formA0502Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormA0502') = nil then
    Application.CreateForm(Tfr_FormA0502, fr_FormA0502);
  fr_FormA0502.Tag := 0;
  fr_FormA0502.ShowModal;
  fr_FormA0502.Free;
  fr_FormA0502 := nil;
end;

procedure Tfr_MainMenu.bt_formA0503Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'A0503');
  end;
end;

procedure Tfr_MainMenu.bt_formA0504Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'A0504');
  end;
end;

procedure Tfr_MainMenu.bt_formA0506Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormA0506') = nil then
    Application.CreateForm(Tfr_FormA0506, fr_FormA0506);
  fr_FormA0506.Tag := 0;
  fr_FormA0506.ShowModal;
  fr_FormA0506.Free;
  fr_FormA0506 := nil;
end;

procedure Tfr_MainMenu.bt_formA05072Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormA05072') = nil then
    Application.CreateForm(Tfr_FormA05072, fr_FormA05072);
  fr_FormA05072.Tag := 0;
  fr_FormA05072.ShowModal;
  fr_FormA05072.Free;
  fr_FormA05072 := nil;
end;

procedure Tfr_MainMenu.bt_formC0100Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'C0100');
  end;
end;

procedure Tfr_MainMenu.bt_formD0000Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'D0000');
  end;
end;

procedure Tfr_MainMenu.bt_formE0100Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0100') = nil then
    Application.CreateForm(Tfr_FormE0100, fr_FormE0100);
  fr_FormE0100.Tag := 0;
  fr_FormE0100.ShowModal;
  fr_FormE0100.Free;
  fr_FormE0100 := nil;
end;

procedure Tfr_MainMenu.bt_formE0201Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0201') = nil then
    Application.CreateForm(Tfr_FormE0201, fr_FormE0201);
  fr_FormE0201.Tag := 0;
  fr_FormE0201.ShowModal;
  fr_FormE0201.Free;
  fr_FormE0201 := nil;
end;

procedure Tfr_MainMenu.bt_formE0202Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0202') = nil then
    Application.CreateForm(Tfr_FormE0202, fr_FormE0202);
  fr_FormE0202.Tag := 0;
  fr_FormE0202.ShowModal;
  fr_FormE0202.Free;
  fr_FormE0202 := nil;
end;

procedure Tfr_MainMenu.bt_formE0203Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0203') = nil then
    Application.CreateForm(Tfr_FormE0203, fr_FormE0203);
  fr_FormE0203.Tag := 0;
  fr_FormE0203.ShowModal;
  fr_FormE0203.Free;
  fr_FormE0203 := nil;
end;

procedure Tfr_MainMenu.bt_formE0204Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0204') = nil then
    Application.CreateForm(Tfr_FormE0204, fr_FormE0204);
  fr_FormE0204.Tag := 0;
  fr_FormE0204.ShowModal;
  fr_FormE0204.Free;
  fr_FormE0204 := nil;
end;

procedure Tfr_MainMenu.bt_formE0302Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0302') = nil then
    Application.CreateForm(Tfr_FormE0302, fr_FormE0302);
  fr_FormE0302.Tag := 0;
  fr_FormE0302.ShowModal;
  fr_FormE0302.Free;
  fr_FormE0302 := nil;
end;

procedure Tfr_MainMenu.bt_formE0303Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0303') = nil then
    Application.CreateForm(Tfr_FormE0303, fr_FormE0303);
  fr_FormE0303.Tag := 0;
  fr_FormE0303.ShowModal;
  fr_FormE0303.Free;
  fr_FormE0303 := nil;
end;

procedure Tfr_MainMenu.bt_formE0401Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0401') = nil then
    Application.CreateForm(Tfr_FormE0401, fr_FormE0401);
  fr_FormE0401.Tag := 0;
  fr_FormE0401.ShowModal;
  fr_FormE0401.Free;
  fr_FormE0401 := nil;
end;

procedure Tfr_MainMenu.bt_formE0402Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0402') = nil then
    Application.CreateForm(Tfr_FormE0402, fr_FormE0402);
  fr_FormE0402.Tag := 0;
  fr_FormE0402.ShowModal;
  fr_FormE0402.Free;
  fr_FormE0402 := nil;
end;

procedure Tfr_MainMenu.bt_formE0500Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0500') = nil then
    Application.CreateForm(Tfr_FormE0500, fr_FormE0500);
  fr_FormE0500.Tag := 0;
  fr_FormE0500.ShowModal;
  fr_FormE0500.Free;
  fr_FormE0500 := nil;
end;

procedure Tfr_MainMenu.bt_formE0600Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0600') = nil then
    Application.CreateForm(Tfr_FormE0600, fr_FormE0600);
  fr_FormE0600.Tag := 0;
  fr_FormE0600.ShowModal;
  fr_FormE0600.Free;
  fr_FormE0600 := nil;
end;

procedure Tfr_MainMenu.bt_formE0701Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0701') = nil then
    Application.CreateForm(Tfr_FormE0701, fr_FormE0701);
  fr_FormE0701.Tag := 0;
  fr_FormE0701.ShowModal;
  fr_FormE0701.Free;
  fr_FormE0701 := nil;
end;

procedure Tfr_MainMenu.bt_formE0702Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0702') = nil then
    Application.CreateForm(Tfr_FormE0702, fr_FormE0702);
  fr_FormE0702.Tag := 0;
  fr_FormE0702.ShowModal;
  fr_FormE0702.Free;
  fr_FormE0702 := nil;
end;

procedure Tfr_MainMenu.bt_formE0800Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0800') = nil then
    Application.CreateForm(Tfr_FormE0800, fr_FormE0800);
  fr_FormE0800.Tag := 0;
  fr_FormE0800.ShowModal;
  fr_FormE0800.Free;
  fr_FormE0800 := nil;
end;

procedure Tfr_MainMenu.bt_formE0900Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE0900') = nil then
    Application.CreateForm(Tfr_FormE0900, fr_FormE0900);
  fr_FormE0900.Tag := 0;
  fr_FormE0900.ShowModal;
  fr_FormE0900.Free;
  fr_FormE0900 := nil;
end;

procedure Tfr_MainMenu.bt_formE1000Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE1000') = nil then
    Application.CreateForm(Tfr_FormE1000, fr_FormE1000);
  fr_FormE1000.Tag := 0;
  fr_FormE1000.ShowModal;
  fr_FormE1000.Free;
  fr_FormE1000 := nil;
end;

procedure Tfr_MainMenu.bt_formE1100Click(Sender: TObject);
begin
  if Application.FindComponent('fr_FormE1100') = nil then
    Application.CreateForm(Tfr_FormE1100, fr_FormE1100);
  fr_FormE1100.Tag := 0;
  fr_FormE1100.ShowModal;
  fr_FormE1100.Free;
  fr_FormE1100 := nil;
end;

procedure Tfr_MainMenu.bt_formF0000Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'PDF Files (*.pdf)|*.pdf';
  OpenDialog1.DefaultExt := 'pdf';

  if OpenDialog1.Execute then
  begin
    ProsesUpload(OpenDialog1.FileName,'F0000');
  end;
end;

procedure Tfr_MainMenu.bt_ganti_bulanClick(Sender: TObject);
var cKodeArsip : string;
begin
  inherited;
    cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);

  //cek update status bulan lalu
  if (SelectRow('SELECT COUNT(*) FROM '+cDb2+'.`ltbprk_backup_log` '+
        ' WHERE kode_arsip='+QuotedStr(cKodeArsip)+' AND '+
        ' tgl_laporan='+DateToStrSQL(per_tgl.Date)) = '0') then
    begin
      Pesan(2, 'Maaf, Anda belum melakukan Update Status Kirim Data Pelaporan Bulan='+MonthIndo(per_tgl.Date)+
      ' Tahun='+IntToStr(YearOf(per_tgl.Date))+'...!'#13#10 +
      ' Step-Step untuk Update Status Kirim Data'#13#10 +
      ' 1. Klik Button Export ALL '#13#10 +
      ' 2. Klik Button Save Point '#13#10 +
      ' 3. Klik Button Update Status');
      Exit;
    end;

  if not Pesan(3, 'Jalankan Proses Ganti Bulan Data manjadi '+
    MonthIndo(IncMonth(per_tgl.Date,1))+'-'+IntToStr(YearOf(IncMonth(per_tgl.Date,1)))+' ?') then
    Exit;

  if MyExecuteSQL('UPDATE '+cDb2+'.sistem SET tanggal='+DateToStrSQL(EndOfTheMonth(IncMonth(per_tgl.Date,1)))+
      'WHERE jenis="TGL_LTBPR"') then
        begin
          FormCreate(Sender);
          Pesan(1, 'Proses Ganti Bulan sudah dijalankan...');
        end;

end;

procedure Tfr_MainMenu.bt_import_text_allClick(Sender: TObject);
var
  //Fn: Integer;
  cTemp, cKodeBankLJK, cPeriodeLaporan, cKodeForm, cNamaTargetTxt,
  cKodeArsip, cTableTarget: string;    //cTempSQL, cContentPerLine,
  //nJmlLain, nJmlLainAll, nRasioAsetLainnya: Double;
begin
  inherited;
  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);

  if (SelectRow('SELECT COUNT(*) FROM '+cDb2+'.`ltbprk_backup_log` '+
        'WHERE kode_arsip='+QuotedStr(cKodeArsip)) <> '0') then
    begin
      Pesan(2, 'Maaf, Status Kirim Data Pelaporan Bulan='+MonthIndo(per_tgl.Date)+
      ' Tahun='+IntToStr(YearOf(per_tgl.Date))+
      IfThen(flg_koreksi.Checked,' Koreksi Ke='+koreksi_ke.Text,'')+
      ' sudah ada...! (Kode Arsip : '+cKodeArsip+')');
      Exit;
    end;

  if not Pesan(3, 'Pastikan Anda sudah memilih Kode Jenis Laporan dengan benar, Lanjutkan ?') then
    Exit;

  if not sPathDialog1.Execute then
    Exit;

  bt_proses.Enabled := False;
  cb_jenis_laporan.Enabled := False;

  cKodeJenisPelaporan := GetMyParameter('LTBPR_KODE_JENIS_LAPORAN','LTBPRK');
  cKodeBankLJK := kode_ljk.Text;
  cPeriodeLaporan := FormatDateTime('yyyyMMdd', per_tgl.DateTime);
  cTemp := GetMyParameter('LTBPR_JUMLAH_REC_PERFILE','1000');
  if Empty(cTemp) then
    cTemp := '1000';
  Tag := 1;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  //sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Value := '0';
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      if (MyQFormLapBulis_footer.AsInteger=0) and (MyQFormLapBulis_file.AsInteger=0) then
      begin

        sGaugeJenisLaporanCaption1.Text := '% '+MyQFormLapBulnama_table.AsString;
        cKodeForm := MyQFormLapBulkode_form.AsString;


        if cb_jenis_laporan.ItemIndex=0 then
          cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeJenisPelaporan+'-'+cKodeForm+'-R-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.txt'
        else
          cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeJenisPelaporan+'-'+cKodeForm+'-K-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.txt';

        // Pesan(2,cNamaTargetTxt);
        if FileExists(cNamaTargetTxt) then
          begin
            //proses disini
            cTableTarget := cDb2+'.'+MyQFormLapBulnama_table.AsString;
            ImportTXT2SQL(cNamaTargetTxt, cTableTarget)
          end;
      end;

      MyQFormLapBul.Next;
      sGaugeStatus.Visible := False;
      sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
      Application.ProcessMessages;
    end;

  Pesan(1,'Proses telah selesai...!, Jangan lupa klik tombol Save Point untuk menyimpan arsip laporan');
  sGaugeJenisLaporan.Visible := False;
  bt_proses.Enabled := True;
  bt_save.Enabled := True;

end;

procedure Tfr_MainMenu.bt_loginClick(Sender: TObject);
var
  IsValidPassword: Boolean;
  cDbName: string;
begin
  {cDbName := 'corebpr_dev';
  cDb1 := cDbName;
  cDb2 := cDbName;
  cDb3 := cDbName;   //slik
  cDb4 := cDbName;   //apolo
  cDb5 := cDbName;   //obox
  cDb6 := cDbName;   //mymobile

  try
    dm_bpr1.MyCon2.Connect;
  except
    on E: EDatabaseError do
      begin
        Application.MessageBox('Maaf, tidak dapat terhubung ke database !','Perhatian',MB_OK or MB_ICONWARNING);
        Exit;
      end;
  end;

  if not dm_bpr1.MyCon2.Connected then
    begin
      Application.MessageBox('Maaf, tidakMessageBox dapat terhubung ke database !','Perhatian',MB_OK or MB_ICONWARNING);
      Exit;
    end;

  if dm_bpr1.MyCon2.Connected then
    begin
      dm_bpr1.MyCon2.Database := cDbName;
      cCurrentVersion := AmbilVersi;

      cNamaUser := user_id.Text;
      cUserID := '3';

      //tandanya berhasil login
      bt_login.Caption := 'Logout ('+UpperCase('hamsudi')+')';
      CategoryPanelGroup1.Enabled := True;

      cNamaLengkapUser := 'Hamsudi';
      cCabangID := '001';
      cUserEmail := 'hamsudi@gmail.com';
      cKodeKas := '10102';
      cKodeKasUtama := '10103';

      cKodeCabang := '001';
      dTglSystem := Date;  // IncDay(dTglTemp);  //gunakan dtglsystem sesuai database //rev 26 Jan 2016

      lIsUserAdmin := True; //anda sebagai admin
      lLogDebug := True;

      nDuration := 0;
      cNamaKas := 'Kas Teller';
      cMaxRow := GetMyParameter('MAX_LIMIT_ROW','25');

      cNamaPT := 'PT BPR XYZ';
      cNamaCabangPT := 'Kantor Pusat';
      cAlamatPT := 'Jl. Raya Bogor No. 21';
      cKotaPT := 'Bogor';
      cTelpPT := '021-8888-9999';
      cKodeBankPT := '600XYZ';

      //tampilkan informasi ini
      SysLog.Lines.Add('cDbName='+cDbName);
      SysLog.Lines.Add('cCurrentVersion='+cCurrentVersion);
      SysLog.Lines.Add('cNamaUser='+cNamaUser);
      SysLog.Lines.Add('cUserID='+cUserID);
      SysLog.Lines.Add('cNamaLengkapUser='+cNamaLengkapUser);
      SysLog.Lines.Add('cCabangID='+cCabangID);
      SysLog.Lines.Add('cRegIDGCM='+cRegIDGCM);
      SysLog.Lines.Add('cUserEmail='+cUserEmail);
      SysLog.Lines.Add('cKodeKas='+cKodeKas);
      SysLog.Lines.Add('cKodeKasUtama='+cKodeKasUtama);

      SysLog.Lines.Add('lIsUserAdmin='+IfThen(lIsUserAdmin,'1','0'));
      SysLog.Lines.Add('lLogDebug='+IfThen(lLogDebug,'1','0'));

      SysLog.Lines.Add('cKodeCabang='+cKodeCabang);
      SysLog.Lines.Add('dTglSystem='+DateIndo(dTglSystem));
      SysLog.Lines.Add('cUserIDHeadIT='+cUserIDHeadIT);
      SysLog.Lines.Add('cOtorisasiAndroid='+cOtorisasiAndroid);

      SysLog.Lines.Add('nDuration='+IntToStr(nDuration));
      SysLog.Lines.Add('cNamaKas='+cWebMailNotif);
      SysLog.Lines.Add('cMaxRow='+cMaxRow);
      SysLog.Lines.Add('cNamaPT='+cNamaPT);
      SysLog.Lines.Add('cNamaCabangPT='+cNamaCabangPT);
      SysLog.Lines.Add('cAlamatPT='+cAlamatPT);
      SysLog.Lines.Add('cKotaPT='+cKotaPT);
      SysLog.Lines.Add('cTelpPT='+cTelpPT);
      SysLog.Lines.Add('cKodeBankPT='+cKodeBankPT);
    end; }
end;

procedure Tfr_MainMenu.bt_prosesClick(Sender: TObject);
var
  Fn, nFlgSaham: Integer;
  cTemp, cTempSQL, cKodeBankLJK, cPeriodeLaporan, cKodeForm, cNamaTargetTxt,
  cContentPerLine, cKodeArsip: string;
  nJmlLain, nJmlLainAll, nRasioAsetLainnya: Double;
begin
  inherited;

  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);

  if (SelectRow('SELECT COUNT(*) FROM '+cDb2+'.`ltbprk_backup_log` '+
        'WHERE kode_arsip='+QuotedStr(cKodeArsip)) <> '0') then
    begin
      if not Pesan(3, 'Maaf, Status Kirim Data Pelaporan Bulan='+MonthIndo(per_tgl.Date)+
        ' Tahun='+IntToStr(YearOf(per_tgl.Date))+
        IfThen(flg_koreksi.Checked,' Koreksi Ke='+koreksi_ke.Text,'')+
        ' sudah ada...! (Kode Arsip : '+cKodeArsip+'), Lanjutkan ?') then
        Exit;
    end;

  if not Pesan(3, 'Pastikan Anda sudah memilih Kode Jenis Laporan dengan benar, Lanjutkan ?') then
    Exit;

  if not sPathDialog1.Execute then
    Exit;

  bt_proses.Enabled := False;
  cb_jenis_laporan.Enabled := False;

  cKodeJenisPelaporan := GetMyParameter('LTBPR_KODE_JENIS_LAPORAN','LTBPRK');
  cKodeBankLJK := kode_ljk.Text;
  cPeriodeLaporan := FormatDateTime('yyyyMMdd', per_tgl.DateTime);
  

  cTemp := GetMyParameter('LTBPR_JUMLAH_REC_PERFILE','1000');
  if Empty(cTemp) then
    cTemp := '1000';
  Tag := 1;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  //sGaugeJenisLaporan.  MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Value := '0';
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      sGaugeJenisLaporanCaption1.Text := '% '+MyQFormLapBulnama_table.AsString;

     if (MyQFormLapBulis_footer.AsInteger=0) and (MyQFormLapBulis_file.AsInteger=1)  then
      begin
        cKodeForm := MyQFormLapBulkode_form.AsString;
        if cb_jenis_laporan.ItemIndex=0 then
          cNamaTargetTxt := cKodeJenisPelaporan+'-'+cKodeForm+'-R-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.pdf'
        else
          cNamaTargetTxt := cKodeJenisPelaporan+'-'+cKodeForm+'-K-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.pdf';

        if FileExists(sPathDialog1.Path+'\'+cNamaTargetTxt) then
            DeleteFile(sPathDialog1.Path+'\'+cNamaTargetTxt);

        if FileExists(sPathDialog1.Path+'\iphist.dat') then
            DeleteFile(sPathDialog1.Path+'\iphist.dat');

        if not CopyFileUpload(cKodeForm+'.pdf', cNamaTargetTxt , sPathDialog1.Path) then
          Pesan(2, 'File '+cNamaTargetTxt+' Gagal dibuat...!');
      end;

      if (MyQFormLapBulis_footer.AsInteger=0) and (MyQFormLapBulis_file.AsInteger=0)  then
      begin

        cKodeForm := MyQFormLapBulkode_form.AsString;
        if cb_jenis_laporan.ItemIndex=0 then
          cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeJenisPelaporan+'-'+cKodeForm+'-R-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.txt'
        else
          cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeJenisPelaporan+'-'+cKodeForm+'-K-A-'+cPeriodeLaporan+'-'+cKodeBankLJK+'-01'+'.txt';

        if FileExists(cNamaTargetTxt) then
          DeleteFile(cNamaTargetTxt);

        if FileExists(sPathDialog1.Path+'\iphist.dat') then
          DeleteFile(sPathDialog1.Path+'\iphist.dat');

        //header
        if not MyExecuteSQL('INSERT INTO '+cDb2+'.`ltbprk_header` '+
          '(`flag_header`, `kode_sektor`, `sandi_bpr`, `periode_data`, '+
          ' `kode_jenis_pelaporan`, `kode_form_laporan`, `kode_status_koreksi`, `nomor_surat`) VALUES ('+
          QuotedStr('H01')+', '+
          QuotedStr(kode_sektor_ljk.Text)+', '+
          QuotedStr(kode_ljk.Text)+', '+
          QuotedStr(FormatDateTime('yyyy-MM-dd', per_tgl.Date))+', '+
          QuotedStr(cKodeJenisPelaporan)+', '+
          QuotedStr(cKodeForm)+', '+
          QuotedStr(koreksi_ke.Text)+','+
          QuotedStr(IfThen(cb_jenis_laporan.ItemIndex=2,no_surat.Text,''))+') '+
          'ON DUPLICATE KEY UPDATE '+
          '`nomor_surat`='+QuotedStr(IfThen(cb_jenis_laporan.ItemIndex=2,no_surat.Text,''))) then
        begin
          Pesan(2, 'Proses Header Form '+cKodeForm+' GAGAL...!');
          Exit;
        end;
        cContentPerLine := 'H01|'+kode_sektor_ljk.Text+'|'+cKodeBankLJK+
          '|'+FormatDateTime('yyyy-MM-dd', per_tgl.Date)+
          '|'+cKodeJenisPelaporan+
          '|'+cKodeForm+
          '|'+koreksi_ke.Text+
          '|'+IfThen(cb_jenis_laporan.ItemIndex=2,no_surat.Text,'');
        AppendOrWriteTextToFile(cNamaTargetTxt,cContentPerLine);



        if cKodeForm='E0100' then
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+' '
        else
          MyQuery1.SQL.Text := 'SELECT * FROM view_'+MyQFormLapBulnama_table.AsString+' ';

        if MyQuery1.Active then
          MyQuery1.Refresh
        else
          MyQuery1.Open;

        //sGaugeStatus.MaxValue := MyQuery1.RecordCount;
        sGaugeStatus.Value := '0';
        sGaugeStatus.Visible := True;
        MyQuery1.First;
        while not MyQuery1.Eof do
          begin
            //detail

            cContentPerLine := ''; //'D';
            for Fn := 0 to MyQuery1.FieldCount - 1 do
              begin
                  if (MyQFormLapBulkode_form.AsString='E0500') then
                  begin
                    if (Fn > 1) and ((MyQuery1.Fields.Fields[0].AsString='F01') or (MyQuery1.Fields.Fields[0].AsString='F02') ) then
                      cContentPerLine := cContentPerLine + ''
                    else
                    if (MyQuery1.Fields.Fields[Fn].DataType in [ftInteger]) and (MyQuery1.Fields.Fields[Fn].AsInteger=0) then
                       cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|')
                    else
                    if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                    else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('0',MyQuery1.Fields.Fields[Fn].AsFloat)
                    else
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                  end
                  else
                  if (MyQFormLapBulkode_form.AsString='E0800') then
                  begin
                    if (Fn > 1) and ((MyQuery1.Fields.Fields[0].AsString='F01') or (MyQuery1.Fields.Fields[0].AsString='F02') ) then
                      cContentPerLine := cContentPerLine + ''
                    else
                    if (MyQuery1.Fields.Fields[Fn].DataType in [ftInteger]) and (MyQuery1.Fields.Fields[Fn].AsInteger=0) then
                       cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|')
                    else
                    if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                    else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('0',MyQuery1.Fields.Fields[Fn].AsFloat)
                    else
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                  end
                  else
                  if (MyQFormLapBulkode_form.AsString='E1000') then
                  begin
                    if (Fn > 1) and ((MyQuery1.Fields.Fields[0].AsString='F01') or (MyQuery1.Fields.Fields[0].AsString='F02') ) then
                      cContentPerLine := cContentPerLine + ''
                    else
                    if (MyQuery1.Fields.Fields[Fn].DataType in [ftInteger]) and (MyQuery1.Fields.Fields[Fn].AsInteger=0) then
                       cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|')
                    else
                    if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                    else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('0',MyQuery1.Fields.Fields[Fn].AsFloat)
                    else
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                  end
                  else
                   if (MyQFormLapBulkode_form.AsString='E1100') then
                  begin
                    if (Fn > 1) and ((MyQuery1.Fields.Fields[0].AsString='F01') or (MyQuery1.Fields.Fields[0].AsString='F02') ) then
                      cContentPerLine := cContentPerLine + ''
                    else
                    if (MyQuery1.Fields.Fields[Fn].DataType in [ftInteger]) and (MyQuery1.Fields.Fields[Fn].AsInteger=0) then
                       cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|')
                    else
                    if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                    else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('0',MyQuery1.Fields.Fields[Fn].AsFloat)
                    else
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                  end
                  else
                //selain table diatas
                  begin
                    if (Fn > 1) and ((MyQuery1.Fields.Fields[0].AsString='F01') or (MyQuery1.Fields.Fields[0].AsString='F02') ) then
                      cContentPerLine := cContentPerLine + ''
                    else
                    if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                    else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('#,#0.00',MyQuery1.Fields.Fields[Fn].AsFloat)
                    else
                      cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                  end;
              end;
            //record
            AppendOrWriteTextToFile(cNamaTargetTxt,cContentPerLine);

            MyQuery1.Next;
            sGaugeStatus.Value := IntToStr(StrToInt(sGaugeStatus.Value)+1);
            Application.ProcessMessages;
          end;
      end;

      MyQFormLapBul.Next;
      sGaugeStatus.Visible := False;
      sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
      Application.ProcessMessages;
    end;

  Pesan(1,'Proses telah selesai...!, Jangan lupa klik tombol Save Point untuk menyimpan arsip laporan');
  sGaugeJenisLaporan.Visible := False;
  bt_proses.Enabled := True;
  bt_save.Enabled := True;

end;

procedure Tfr_MainMenu.bt_restore_dataClick(Sender: TObject);
var
  cKodeForm, cKodeFormArsip, cKodeFormBAK, cKodeArsip, cAllField: string;
  dTglRestore: TDate;
  Fn: Smallint;
begin
  inherited;

  if not Pesan(3, 'Restore Data Hasil Pengiriman, lanjutkan ?') then
    Exit;

  bt_restore_data.Enabled := False;
  cKodeArsip := '';
  dTglRestore := per_tgl.Date;

  if Application.FindComponent('fr_DaftarBackupAPOLO') = nil then
    Application.CreateForm(Tfr_DaftarBackupAPOLO, fr_DaftarBackupAPOLO);
  fr_DaftarBackupAPOLO.FormCreate(Sender);
  fr_DaftarBackupAPOLO.ShowModal;
  if fr_DaftarBackupAPOLO.Tag=2 then
    begin
      cKodeArsip := fr_DaftarBackupAPOLO.MyQDaftarkode_arsip.AsString;
      dTglRestore := fr_DaftarBackupAPOLO.MyQDaftartgl_laporan.AsDateTime;
      Tag := 1;
    end;
  fr_DaftarBackupAPOLO.Free;
  fr_DaftarBackupAPOLO := nil;

  if not Empty(cKodeArsip) then
    begin
      if MyQFormLapBul.Active then
        MyQFormLapBul.Refresh
      else
        MyQFormLapBul.Open;

//      sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
      sGaugeJenisLaporan.Value := '0';
      sGaugeJenisLaporan.Visible := True;
      MyQFormLapBul.First;
      while not MyQFormLapBul.Eof do
        begin
          if (MyQFormLapBulis_file.AsInteger=0) then
          begin
            cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
            cKodeFormArsip := cDb2+'.'+MyQFormLapBulnama_table.AsString+'_arsip';
            cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',dTglRestore);

            MyQField.SQL.Text := 'SELECT * FROM '+cKodeForm;
            if MyQField.Active then
              MyQField.Refresh
            else
              MyQField.Open;

            cAllField := '';
            for Fn := 0 to MyQField.FieldCount - 1 do
              begin
                cAllField := cAllField + IfThen(Empty(cAllField),'',', ') + MyQField.Fields.Fields[Fn].FieldName;
              end;

            try
              //indra 09/11/2021 update Tambah koding ini karena ingin hapus formnya atau restore formnya juga
              MyExecuteSQLNoTrans('TRUNCATE TABLE '+cKodeForm);
              MyExecuteSQLNoTrans('INSERT INTO '+cKodeForm+
                ' SELECT '+cAllField+' FROM '+cKodeFormArsip+' WHERE kode_arsip='+QuotedStr(cKodeArsip));
              //selesai
              MyExecuteSQLNoTrans('DROP TABLE IF EXISTS '+cKodeFormBAK);
              MyExecuteSQLNoTrans('CREATE TABLE '+cKodeFormBAK+' LIKE '+cKodeForm);
              MyExecuteSQLNoTrans('INSERT INTO '+cKodeFormBAK+
                ' SELECT '+cAllField+' FROM '+cKodeFormArsip+' WHERE kode_arsip='+QuotedStr(cKodeArsip));
              sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
            except
              on E: Exception do     //    on E: EIdException do
                begin
                  if not Pesan(3, 'Proses Error, Coba Lagi ?') then
                    Break;
                end;
            end;
          end;
          MyQFormLapBul.Next;
          Application.ProcessMessages;
        end;

      bt_restore_data.Enabled := True;
      bt_restore_point.Enabled := True;
      sGaugeJenisLaporan.Visible := False;
      if MyExecuteSQL('UPDATE '+cDb2+'.sistem SET tanggal='+DateToStrSQL(EndOfTheMonth(dTglRestore))+
          'WHERE jenis="TGL_LTBPR"') then
        begin
          FormCreate(Sender);
          Pesan(1, 'Restore Data Hasil Pengiriman berhasil...');
        end;
    end;

end;

procedure Tfr_MainMenu.bt_restore_pointClick(Sender: TObject);
 var
  cKodeForm, cKodeFormArsip, cKodeFormBAK, cKodeArsip: string;
  dTglRestore: TDate;
begin
  inherited;

  if not Pesan(3, 'Restore Data dari Restore Point, lanjutkan ?') then
    Exit;

  bt_restore_point.Enabled := False;
  cKodeArsip := '';
  dTglRestore := per_tgl.Date;

  if Application.FindComponent('fr_DaftarBackupAPOLO') = nil then
    Application.CreateForm(Tfr_DaftarBackupAPOLO, fr_DaftarBackupAPOLO);
  fr_DaftarBackupAPOLO.FormCreate(Sender);
  fr_DaftarBackupAPOLO.ShowModal;
  if fr_DaftarBackupAPOLO.Tag=2 then
    begin
      cKodeArsip := fr_DaftarBackupAPOLO.MyQDaftarkode_arsip.AsString;
      dTglRestore := fr_DaftarBackupAPOLO.MyQDaftartgl_laporan.AsDateTime;
      Tag := 1;
    end;
  fr_DaftarBackupAPOLO.Free;
  fr_DaftarBackupAPOLO := nil;

  if not Empty(cKodeArsip) then
    begin
      if MyQFormLapBul.Active then
        MyQFormLapBul.Refresh
      else
        MyQFormLapBul.Open;

//      sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
      sGaugeJenisLaporan.Value := '0';
      sGaugeJenisLaporan.Visible := True;
      MyQFormLapBul.First;


      cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',dTglRestore);
     // MyQField.SQL.Text := 'SHOW TABLES LIKE '+QuotedStr(MyQFormLapBulnama_table.AsString);
     MyQField.SQL.Text := 'SHOW TABLES LIKE '+QuotedStr(cKodeFormBAK);
      if MyQField.Active then
        MyQField.Refresh
      else
        MyQField.Open;

      if MyQField.RecordCount = 0 then
        begin
          Pesan(2, 'Table Restore Point tidak ditemukan...!');
          Exit;
        end;

      while not MyQFormLapBul.Eof do
        begin
          if (MyQFormLapBulis_file.AsInteger=0) then
          begin
            cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
            cKodeFormArsip := cDb2+'.'+MyQFormLapBulnama_table.AsString+'_arsip';
            cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',dTglRestore);

            try
              MyExecuteSQLNoTrans('DELETE FROM '+cKodeForm);
              MyExecuteSQLNoTrans('INSERT INTO '+cKodeForm+' SELECT * FROM '+cKodeFormBAK);
              sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
            except
              on E: Exception do     //    on E: EIdException do
                begin
                  if not Pesan(3, 'Proses Error, Coba Lagi ?') then
                    Break;
                end;
            end;
          end;
          MyQFormLapBul.Next;
          Application.ProcessMessages;
        end;

      bt_restore_point.Enabled := True;
      sGaugeJenisLaporan.Visible := False;
      if MyExecuteSQL('UPDATE '+cDb2+'.sistem SET tanggal='+DateToStrSQL(EndOfTheMonth(dTglRestore))+
          'WHERE jenis="TGL_LTBPR"') then
        begin
          FormCreate(Sender);
          Pesan(1, 'Restore Data Hasil Pengiriman berhasil...');
        end;
    end;
end;

procedure Tfr_MainMenu.bt_saveClick(Sender: TObject);
var
  cKodeForm, cKodeFormBAK: string;
begin
  inherited;

  if not Pesan(3, 'Data Hasil Export akan diarsipkan, lanjutkan ?') then
    Exit;

  bt_save.Enabled := False;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  //sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Value := '0';
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      if (MyQFormLapBulis_file.AsInteger=0) then
      begin
        cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
        cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',per_tgl.Date);

        try
          MyExecuteSQLNoTrans('DROP TABLE IF EXISTS '+cKodeFormBAK);
          MyExecuteSQLNoTrans('CREATE TABLE '+cKodeFormBAK+' SELECT * FROM '+cKodeForm);

          sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
        except
          on E: Exception do     //    on E: EIdException do
            begin
              if not Pesan(3, 'Proses Error, Coba Lagi ?') then
                Break;
            end;
        end;
      end;
      MyQFormLapBul.Next;
      Application.ProcessMessages;
    end;

  bt_update_status.Enabled := True;
  Pesan(1, 'Data Hasil Export sudah berhasil diarsipkan...');
  sGaugeJenisLaporan.Visible := False;
end;

procedure Tfr_MainMenu.bt_update_statusClick(Sender: TObject);
var
  cKodeForm, cKodeFormArsip, cKodeFormBAK, cKodeArsip: string;
begin
  inherited;
  if not Pesan(3, 'Data Hasil Pengiriman akan dibackup, lanjutkan ?') then
    Exit;

  bt_update_status.Enabled := False;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  //sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Value := '0';
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);
  while not MyQFormLapBul.Eof do
    begin
       if (MyQFormLapBulis_file.AsInteger=0) then
        begin
          cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
          cKodeFormArsip := cDb2+'.'+MyQFormLapBulnama_table.AsString+'_arsip';
          cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',per_tgl.Date);

          try
            MyExecuteSQLNoTrans('DELETE FROM '+cKodeFormArsip+' WHERE kode_arsip='+QuotedStr(cKodeArsip));
             MyExecuteSQLNoTrans('INSERT INTO '+cKodeFormArsip+' SELECT *,'+QuotedStr(cKodeArsip)+' AS kode_arsip FROM '+cKodeFormBAK);
              //drop after done
            MyExecuteSQLNoTrans('DROP TABLE IF EXISTS '+cKodeFormBAK);


           sGaugeJenisLaporan.Value :=  IntToStr(StrToInt(sGaugeJenisLaporan.Value)+1);
          except
            on E: Exception do     //    on E: EIdException do
              begin
                if not Pesan(3, 'Proses Error, Coba Lagi ?') then
                  Break;
              end;
          end;
        end;
      MyQFormLapBul.Next;
      Application.ProcessMessages;
    end;

  try
    MyExecuteSQLNoTrans('DELETE FROM '+cDb2+'.ltbprk_header_arsip WHERE kode_arsip='+QuotedStr(cKodeArsip));
    MyExecuteSQLNoTrans('INSERT INTO '+cDb2+'.ltbprk_header_arsip '+
      'SELECT *,'+QuotedStr(cKodeArsip)+' AS kode_arsip FROM '+cDb2+'.ltbprk_header '+
      'WHERE sandi_bpr='+QuotedStr(kode_ljk.Text)+
      '   AND periode_data='+QuotedStr(FormatDateTime('yyyy-MM-dd', per_tgl.Date))+
      '   AND kode_status_koreksi='+QuotedStr(IntToStr(cb_jenis_laporan.ItemIndex)));
  except
    on E: Exception do     //    on E: EIdException do
      begin
        Pesan(2, 'Proses Error, Silahkan diulangi, Mulai dari Save Point...!');
        sGaugeJenisLaporan.Visible := False;
        Exit;
      end;
  end;

  if MyExecuteSQL('INSERT INTO '+cDb2+'.ltbprk_backup_log '+
    'SET `kode_arsip`='+QuotedStr(cKodeArsip)+
    ', `tgl_laporan`='+DateToStrSQL(per_tgl.Date)+
    ', `created_by`='+cUserID+', `last_created`=NOW()  on duplicate key update '+
    ' `created_by`='+cUserID+', `last_created`=NOW()') then
    begin
      Pesan(1, 'Data Hasil Export sudah berhasil diarsipkan...');
      sGaugeJenisLaporan.Visible := False;
      bt_ganti_bulan.Enabled := True;
    end;

end;

end.
