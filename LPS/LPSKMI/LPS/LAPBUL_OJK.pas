unit LAPBUL_OJK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, sSkinProvider, StdCtrls, ExtCtrls, sPanel, Buttons,
  sSpeedButton, sLabel, sBitBtn, sGroupBox, sGauge, DB, MemDS, DBAccess,
  MyAccess, ComCtrls, DateUtils, sEdit, Math, StrUtils, Menus, acPathDialog,
  sCheckBox, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit,
  sSpinEdit, sScrollBar, sScrollBox, sPageControl, QExport4, QExport4XLS, QExport4Dialog,
  ipwcore, ipwhttp, ZipForge, ShellAPI, ipwtypes, acPNG, acImage;

type
  Tfr_LPS = class(Tfr_template)
    sPanel2: TsPanel;
    bt_close: TsBitBtn;
    sPanel0: TsPanel;
    sLabelCaption: TsLabelFX;
    sb_logo: TsSpeedButton;
    sLabelFX2: TsLabelFX;
    bt_proses: TsBitBtn;
    sGroupBox1: TsGroupBox;
    sLabel1: TsLabel;
    per_tgl: TDateTimePicker;
    sLabel2: TsLabel;
    kode_kepesertaan: TsEdit;
    MyQuery1: TMyQuery;
    bt_setting: TsBitBtn;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    sPathDialog1: TsPathDialog;
    bt_ganti_bulan: TsBitBtn;
    bt_save: TsBitBtn;
    bt_update_status: TsBitBtn;
    sGroupBox2: TsGroupBox;
    sLabel6: TsLabel;
    cb_jenis_laporan: TComboBox;
    MyQFormLapBul: TMyQuery;
    MyQFormLapBulid: TIntegerField;
    MyQFormLapBulkode_form: TStringField;
    MyQFormLapBulnama_form: TStringField;
    MyQFormLapBulnama_table: TStringField;
    LabelSurat: TsLabel;
    no_surat: TsEdit;
    sGaugeStatus: TsGauge;
    sGaugeJenisLaporan: TsGauge;
    flg_koreksi: TsCheckBox;
    koreksi_ke: TsDecimalSpinEdit;
    sLabel4: TsLabel;
    bt_restore_data: TsBitBtn;
    bt_restore_point: TsBitBtn;
    MyQField: TMyQuery;
    bt_import_text_all: TsBitBtn;
    sPanel1: TsPanel;
    bt_export_excel: TsBitBtn;
    TimerUpdater: TTimer;
    TrayIcon1: TTrayIcon;
    my_background: TImage;
    HTTP1: TipwHTTP;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    bt_form0001: TsBitBtn;
    bt_form0002: TsBitBtn;
    bt_form0003: TsBitBtn;
    bt_form0004: TsBitBtn;
    bt_form0005: TsBitBtn;
    sImage1: TsImage;
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
    ZipForge1: TZipForge;
    MyQFormLapBulkode_laporan: TStringField;
    procedure bt_closeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_prosesClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure S1Click(Sender: TObject);
    procedure bt_settingClick(Sender: TObject);
    procedure bt_ganti_bulanClick(Sender: TObject);
    procedure cb_jenis_laporanChange(Sender: TObject);
    procedure bt_form0001Click(Sender: TObject);
    procedure bt_form0002Click(Sender: TObject);
    procedure bt_form0003Click(Sender: TObject);
    procedure bt_form0004Click(Sender: TObject);
    procedure bt_form0005Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_update_statusClick(Sender: TObject);
    procedure bt_restore_dataClick(Sender: TObject);
    procedure bt_restore_pointClick(Sender: TObject);
    procedure bt_import_text_allClick(Sender: TObject);
    procedure bt_export_excelClick(Sender: TObject);
    procedure HTTP1EndTransfer(Sender: TObject; Direction: Integer);
    procedure HTTP1StartTransfer(Sender: TObject; Direction: Integer);
    procedure HTTP1Transfer(Sender: TObject; Direction: Integer;
      BytesTransferred: Int64; PercentDone: Integer; Text: string);
    procedure TrayIcon1Click(Sender: TObject);
    procedure TimerUpdaterTimer(Sender: TObject);
    procedure SkinOnClick(Sender: TObject);
    procedure SkinOffClick(Sender: TObject);
    procedure AndroidOSinternal1Click(Sender: TObject);
    procedure BlackBoxinternal1Click(Sender: TObject);
    procedure BluePlasticinternal1Click(Sender: TObject);
    procedure DarkGlassinternal1Click(Sender: TObject);
    procedure Steam2internal1Click(Sender: TObject);
    procedure UnderWaterinternal1Click(Sender: TObject);
    procedure WLMinternal1Click(Sender: TObject);
    procedure Woodinternal1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     lTotal: longint;
  end;

var
  fr_LPS: Tfr_LPS;
  cTableTempD01, cTableTempD02, cTableTempF01, cTableTempA01, cTableTempP01,
  cTableTempM01, cTableTempK01, cTableTempS01, cKodePeriode: string;
  lUpdate : Boolean;

//function AppendOrWriteTextToFile(filename:TFilename; WriteText:String): Boolean; external 'OgiesoftLIB.dll';
//function MonthIndo(dTgl: TDateTime): String; external 'OgiesoftLIB.dll';

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, Progress, LoginLPS, DaftarBackupLPS, FormLps0004,
  FormLps0001, FormLps0003, FormLps0002, FormLpsDk0004;

{$R *.dfm}

procedure Tfr_LPS.AndroidOSinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'Android OS (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'Android OS (internal)');
end;

procedure Tfr_LPS.BlackBoxinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'Black Box (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'Black Box (internal)');
end;

procedure Tfr_LPS.BluePlasticinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'BluePlastic (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'BluePlastic (internal)');
 end;

procedure Tfr_LPS.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_LPS.bt_ganti_bulanClick(Sender: TObject);
var
  cKodeArsip : string;
begin
  inherited;

  // Bentuk kode arsip
  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex + 1) + '_' +
    IfThen(flg_koreksi.Checked, 'K_' + koreksi_ke.Text, '') +
    FormatDateTime('MMyyyy', per_tgl.Date);

  // cek update status bulan lalu di tabel lps_backup_log
  if (SelectRow('SELECT COUNT(*) FROM ' + cDb2 + '.`lps_backup_log` ' +
      'WHERE kode_arsip = ' + QuotedStr(cKodeArsip) + ' AND ' +
      'tgl_laporan = ' + DateToStrSQL(per_tgl.Date)) = '0') then
  begin
    Pesan(2, 'Maaf, Anda belum melakukan Update Status Kirim Data Pelaporan Bulan=' +
      MonthIndo(per_tgl.Date) + ' Tahun=' + IntToStr(YearOf(per_tgl.Date)) + '...!'#13#10 +
      ' Step-Step untuk Update Status'#13#10 +
      ' 1. Klik Button Export ALL '#13#10 +
      ' 2. Klik Button Save Point '#13#10 +
      ' 3. Klik Button Update Status');
    Exit;
  end;

  // konfirmasi proses ganti bulan
  if not Pesan(3, 'Jalankan Proses Ganti Bulan Data menjadi ' +
    MonthIndo(IncMonth(per_tgl.Date, 1)) + '-' +
    IntToStr(YearOf(IncMonth(per_tgl.Date, 1))) + ' ?') then
    Exit;

  // update tanggal sistem ke akhir bulan berikutnya
  if MyExecuteSQL('UPDATE ' + cDb2 + '.sistem SET tanggal = ' +
      DateToStrSQL(EndOfTheMonth(IncMonth(per_tgl.Date, 1))) +
      ' WHERE jenis = "TGL_LPS"') then
  begin
    FormCreate(Sender);
    // per_tgl.Date := GetDateFValueByFKeyValue('sistem','jenis','TGL_LPS','tanggal');
    // per_tgl.Format := 'MMMM yyyy';
    Pesan(1, 'Proses Ganti Bulan sudah dijalankan...');
  end;
end;

procedure Tfr_LPS.bt_import_text_allClick(Sender: TObject);
var
  //Fn: Integer;
  cTemp, cKodeKepesertaan, cPeriodeLaporan, cKodeForm, cKodeLaporan, cNamaTargetTxt,
  cKodeArsip, cTableTarget: string;    //cTempSQL, cContentPerLine,
  //nJmlLain, nJmlLainAll, nRasioAsetLainnya: Double;
begin
  inherited;
  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);

  if (SelectRow('SELECT COUNT(*) FROM '+cDb2+'.`lps_backup_log` '+
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


  cKodeKepesertaan := kode_kepesertaan.Text;
  cPeriodeLaporan := FormatDateTime('yyyyMMdd', per_tgl.DateTime);
  cTemp := GetMyParameter('LPS_JUMLAH_REC_PERFILE','1000');
  if Empty(cTemp) then
    cTemp := '1000';
  Tag := 1;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Progress := 0;
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      sGaugeJenisLaporan.Suffix := '% '+MyQFormLapBulnama_table.AsString;
      cKodeForm := MyQFormLapBulkode_form.AsString;
      cKodeLaporan := MyQFormLapBulkode_laporan.AsString;

       cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeLaporan+'_'+cKodeKepesertaan+'_'+cPeriodeLaporan+
        '_'+cKodePeriode+'_'+IfThen(flg_koreksi.Checked,'K'+koreksi_ke.Text,'R')+'.txt';

      if FileExists(cNamaTargetTxt) then
        begin
          //proses disini
          cTableTarget := cDb2+'.'+MyQFormLapBulnama_table.AsString;
          ImportTXT2SQL(cNamaTargetTxt, cTableTarget)
        end;

      MyQFormLapBul.Next;
      sGaugeStatus.Visible := False;
      sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
      Application.ProcessMessages;
    end;

  Pesan(1,'Proses telah selesai...!, Jangan lupa klik tombol Save Point untuk menyimpan arsip laporan');
  sGaugeJenisLaporan.Visible := False;
  bt_proses.Enabled := True;
  bt_save.Enabled := True;
end;

procedure Tfr_LPS.bt_prosesClick(Sender: TObject);
var
  Fn, nFlgSaham: Integer;
  cTemp, cTempSQL,  cKodeKepesertaan, cPeriodeLaporan, cKodeForm, cKodeLaporan, cNamaTargetTxt,
  cContentPerLine, cKodeArsip  :string;
  nJmlLain, nJmlLainAll, nRasioAsetLainnya: Double;
begin
  inherited;

  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);

  if (SelectRow('SELECT COUNT(*) FROM '+cDb2+'.`lps_backup_log` '+
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

  cKodeKepesertaan := kode_kepesertaan.Text;
  cPeriodeLaporan := FormatDateTime('yyyyMMdd', per_tgl.DateTime);
  cTemp := GetMyParameter('LPS_JUMLAH_REC_PERFILE','1000');
  if Empty(cTemp) then
    cTemp := '1000';
  Tag := 1;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Progress := 0;
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      sGaugeJenisLaporan.Suffix := '% '+MyQFormLapBulnama_table.AsString;
      cKodeForm := MyQFormLapBulkode_form.AsString;
      cKodeLaporan := MyQFormLapBulkode_laporan.AsString;


       cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeLaporan+'_'+cKodeKepesertaan+'_'+cPeriodeLaporan+
        '_'+cKodePeriode+'_'+IfThen(flg_koreksi.Checked,'K'+koreksi_ke.Text,'R')+'.txt';

      if FileExists(cNamaTargetTxt) then
        DeleteFile(cNamaTargetTxt);

      if FileExists(sPathDialog1.Path+'\iphist.dat') then
        DeleteFile(sPathDialog1.Path+'\iphist.dat');

      //header
      if not MyExecuteSQL('INSERT INTO '+cDb2+'.`lps_header` '+
        '(`flag_header`, `kode_kepesertaan`, `periode_data`, '+
        ' kode_jenis_pelaporan, `kode_form_laporan`, `kode_status_koreksi`, `nomor_surat`, '+
        ' periode_pengiriman, kode_status_pengiriman) VALUES ('+
        QuotedStr('H')+', '+
        QuotedStr(kode_kepesertaan.Text)+', '+
        QuotedStr(FormatDateTime('yyyy-MM-dd', per_tgl.Date))+', '+
        QuotedStr(cKodeLaporan)+', '+
        QuotedStr(cKodeForm)+', '+
        QuotedStr(IntToStr(cb_jenis_laporan.ItemIndex))+', '+
        QuotedStr(IfThen(cb_jenis_laporan.ItemIndex=2,no_surat.Text,''))+', '+
        QuotedStr(cKodePeriode)+', '+
        QuotedStr(IfThen(flg_koreksi.Checked,'K'+koreksi_ke.Text,'R'))+') '+
        'ON DUPLICATE KEY UPDATE '+
        '`nomor_surat`='+QuotedStr(IfThen(cb_jenis_laporan.ItemIndex=2,no_surat.Text,''))       ) then
      begin
        Pesan(2, 'Proses Header Form '+cKodeForm+' GAGAL...!');
        Exit;
      end;


      if (MyQFormLapBulnama_table.AsString='lps_dn_f0001') then
          cTempSQL := SelectRow('SELECT count(*) AS total FROM '+MyQFormLapBulnama_table.AsString+
            ' WHERE nasabah_id IN (SELECT nasabah_id from view_nasabah_id) ')
      else
      if (MyQFormLapBulnama_table.AsString='lps_dsn_f0002') then
          cTempSQL := SelectRow('SELECT count(*) AS total FROM '+MyQFormLapBulnama_table.AsString+
            ' WHERE saldo_akhir > 0 ' )
      else
      if (MyQFormLapBulnama_table.AsString='lps_dk_f0003') then
         cTempSQL := SelectRow('SELECT  count(*) AS total FROM '+MyQFormLapBulnama_table.AsString+
            ' WHERE baki_debet > 0 ' )
      else
      if (MyQFormLapBulnama_table.AsString='lps_dk_f0004') then
          cTempSQL := SelectRow('SELECT  count(*) AS total FROM '+MyQFormLapBulnama_table.AsString+
          ' WHERE  no_rekening IN (SELECT no_rekening FROM lps_dsn_f0002 '+
          ' WHERE saldo_akhir > 0) '+
          ' AND nasabah_id IN (SELECT nasabah_id FROM lps_dn_f0001 '+
          ' WHERE nasabah_id IN (SELECT nasabah_id from view_nasabah_id))')
      else
          cTempSQL := SelectRow('SELECT count(*) AS total '+
                'FROM '+MyQFormLapBulnama_table.AsString+' ');

      if Empty(cTempSQL) then
         cTempSQL := '0';

      cContentPerLine := 'H|'+cKodeKepesertaan+
        '|'+FormatDateTime('yyyyMMdd', per_tgl.Date)+
        '|'+cKodePeriode+
        '|'+IfThen(flg_koreksi.Checked,'K'+koreksi_ke.Text,'R')+
        '|'+cTempSQL;
      AppendOrWriteTextToFile(cNamaTargetTxt,cContentPerLine);



      if (MyQFormLapBulnama_table.AsString='lps_dn_f0001') then
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+
            ' WHERE nasabah_id IN (SELECT nasabah_id from view_nasabah_id) '
      else
      if (MyQFormLapBulnama_table.AsString='lps_dsn_f0002') then
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+
            ' WHERE saldo_akhir > 0 '
      else
      if (MyQFormLapBulnama_table.AsString='lps_dk_f0003') then
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+
            ' WHERE baki_debet > 0 '
      else
      if (MyQFormLapBulnama_table.AsString='lps_dk_f0004') then
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+
          ' WHERE  no_rekening IN (SELECT no_rekening FROM lps_dsn_f0002 '+
          ' WHERE saldo_akhir > 0) '+
          ' AND nasabah_id IN (SELECT nasabah_id FROM lps_dn_f0001 '+
          ' WHERE nasabah_id IN (SELECT nasabah_id from view_nasabah_id))'
      else
          MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString;


      if MyQuery1.Active then
        MyQuery1.Refresh
      else
        MyQuery1.Open;

      sGaugeStatus.MaxValue := MyQuery1.RecordCount;
      sGaugeStatus.Progress := 0;
      sGaugeStatus.Visible := True;
      MyQuery1.First;
      while not MyQuery1.Eof do
        begin
          //detail
          cContentPerLine := ''; //'D';
          for Fn := 0 to MyQuery1.FieldCount - 1 do
            begin
              if (MyQFormLapBulnama_table.AsString='lps_dn_f0001') then   //prubahan ojk sep 21=done
                begin
                  if MatchStr(MyQuery1.Fields.Fields[Fn].FieldName,['tgl_lahir']) then
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') +
                      IfThen(MyQuery1.FieldByName('slik_kode_gol_debitur').AsString<>'9700','',FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime))
                  else if MatchStr(MyQuery1.Fields.Fields[Fn].FieldName,['wni']) then
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') +
                      IfThen(MyQuery1.FieldByName('slik_kode_gol_debitur').AsString<>'9700','',MyQuery1.Fields.Fields[Fn].AsString)
                  else if MatchStr(MyQuery1.Fields.Fields[Fn].FieldName,['nama_pengurus']) then
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') +
                      IfThen(MyQuery1.FieldByName('slik_kode_gol_debitur').AsString='9700','',MyQuery1.Fields.Fields[Fn].AsString)
                  else if MatchStr(MyQuery1.Fields.Fields[Fn].FieldName,['nomor_identitas']) then
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') +
                      IfThen(MyQuery1.FieldByName('slik_kode_gol_debitur').AsString='9700','',MyQuery1.Fields.Fields[Fn].AsString)
                  else if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                  else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('#0',MyQuery1.Fields.Fields[Fn].AsFloat)
                  else
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                end
               else
               if (MyQFormLapBulnama_table.AsString='lps_dsn_f0002') then   //prubahan ojk sep 21=done
                begin
                  if MatchStr(MyQuery1.Fields.Fields[Fn].FieldName,['tanggal_jt']) then
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') +
                      IfThen(MyQuery1.FieldByName('kode_integrasi').AsString<>'DEP',cPeriodeLaporan,FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime))
                  else if MatchStr(MyQuery1.Fields.Fields[Fn].FieldName,['jumlah_pemilik_rekening']) then
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') +
                      IfThen(MyQuery1.FieldByName('type_join').AsString<>'J','',FormatFloat('#0',MyQuery1.Fields.Fields[Fn].AsFloat))
                  else if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                  else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('#0',MyQuery1.Fields.Fields[Fn].AsFloat)
                  else
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                end
               else
              //selain table diatas
                begin
                  if MyQuery1.Fields.Fields[Fn].DataType in [ftDate] then    //hanya yang berformat date
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatDateTime('yyyyMMdd',MyQuery1.Fields.Fields[Fn].AsDateTime)
                  else if MyQuery1.Fields.Fields[Fn].DataType in [ftFloat] then    //hanya yang berformat float
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + FormatFloat('#0',MyQuery1.Fields.Fields[Fn].AsFloat)
                  else
                    cContentPerLine := cContentPerLine + IfThen(Empty(cContentPerLine),'','|') + MyQuery1.Fields.Fields[Fn].AsString;
                end;
            end;
          //record
          AppendOrWriteTextToFile(cNamaTargetTxt,cContentPerLine);

          MyQuery1.Next;
          sGaugeStatus.Progress := sGaugeStatus.Progress + 1;
          Application.ProcessMessages;
        end;

      MyQFormLapBul.Next;
      sGaugeStatus.Visible := False;
      sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
      Application.ProcessMessages;
    end;

  Pesan(1,'Proses telah selesai...!, Jangan lupa klik tombol Save Point untuk menyimpan arsip laporan');
  sGaugeJenisLaporan.Visible := False;
  bt_proses.Enabled := True;
  bt_save.Enabled := True;
end;

procedure Tfr_LPS.bt_restore_dataClick(Sender: TObject);
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

  if Application.FindComponent('fr_DaftarBackupLPS') = nil then
    Application.CreateForm(Tfr_DaftarBackupLPS, fr_DaftarBackupLPS);
  fr_DaftarBackupLPS.FormCreate(Sender);
  fr_DaftarBackupLPS.ShowModal;
  if fr_DaftarBackupLPS.Tag=2 then
    begin
      cKodeArsip := fr_DaftarBackupLPS.MyQDaftarkode_arsip.AsString;
      dTglRestore := fr_DaftarBackupLPS.MyQDaftartgl_laporan.AsDateTime;
      Tag := 1;
    end;
  fr_DaftarBackupLPS.Free;
  fr_DaftarBackupLPS := nil;

  if not Empty(cKodeArsip) then
    begin
      if MyQFormLapBul.Active then
        MyQFormLapBul.Refresh
      else
        MyQFormLapBul.Open;

      sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
      sGaugeJenisLaporan.Progress := 0;
      sGaugeJenisLaporan.Visible := True;
      MyQFormLapBul.First;
      while not MyQFormLapBul.Eof do
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
            MyQFormLapBul.Next;
            sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
          except
            on E: Exception do     //    on E: EIdException do
              begin
                if not Pesan(3, 'Proses Error, Coba Lagi ?') then
                  Break;
              end;
          end;

          Application.ProcessMessages;
        end;

      bt_restore_data.Enabled := True;
      bt_restore_point.Enabled := True;
      sGaugeJenisLaporan.Visible := False;
      if MyExecuteSQL('UPDATE '+cDb2+'.sistem SET tanggal='+DateToStrSQL(EndOfTheMonth(dTglRestore))+
          'WHERE jenis="TGL_LPS"') then
        begin
          FormCreate(Sender);
          Pesan(1, 'Restore Data Hasil Pengiriman berhasil...');
        end;
    end;
end;

procedure Tfr_LPS.bt_restore_pointClick(Sender: TObject);
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

  if Application.FindComponent('fr_DaftarBackupLPS') = nil then
    Application.CreateForm(Tfr_DaftarBackupLPS, fr_DaftarBackupLPS);
  fr_DaftarBackupLPS.FormCreate(Sender);
  fr_DaftarBackupLPS.ShowModal;
  if fr_DaftarBackupLPS.Tag=2 then
    begin
      cKodeArsip := fr_DaftarBackupLPS.MyQDaftarkode_arsip.AsString;
      dTglRestore := fr_DaftarBackupLPS.MyQDaftartgl_laporan.AsDateTime;
      Tag := 1;
    end;
  fr_DaftarBackupLPS.Free;
  fr_DaftarBackupLPS := nil;

  if not Empty(cKodeArsip) then
    begin
      if MyQFormLapBul.Active then
        MyQFormLapBul.Refresh
      else
        MyQFormLapBul.Open;

      sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
      sGaugeJenisLaporan.Progress := 0;
      sGaugeJenisLaporan.Visible := True;
      MyQFormLapBul.First;

      MyQField.SQL.Text := 'SHOW TABLES LIKE '+QuotedStr(MyQFormLapBulnama_table.AsString);
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
          cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
          cKodeFormArsip := cDb2+'.'+MyQFormLapBulnama_table.AsString+'_arsip';
          cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',dTglRestore);

          try
            MyExecuteSQLNoTrans('DELETE FROM '+cKodeForm);
            MyExecuteSQLNoTrans('INSERT INTO '+cKodeForm+' SELECT * FROM '+cKodeFormBAK);
            MyQFormLapBul.Next;
            sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
          except
            on E: Exception do     //    on E: EIdException do
              begin
                if not Pesan(3, 'Proses Error, Coba Lagi ?') then
                  Break;
              end;
          end;

          Application.ProcessMessages;
        end;

      bt_restore_point.Enabled := True;
      sGaugeJenisLaporan.Visible := False;
      if MyExecuteSQL('UPDATE '+cDb2+'.sistem SET tanggal='+DateToStrSQL(EndOfTheMonth(dTglRestore))+
          'WHERE jenis="TGL_LPS"') then
        begin
          FormCreate(Sender);
          Pesan(1, 'Restore Data Hasil Pengiriman berhasil...');
        end;
    end;
end;

procedure Tfr_LPS.bt_saveClick(Sender: TObject);
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

  sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Progress := 0;
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
      cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',per_tgl.Date);

      try
        MyExecuteSQLNoTrans('DROP TABLE IF EXISTS '+cKodeFormBAK);
        MyExecuteSQLNoTrans('CREATE TABLE '+cKodeFormBAK+' SELECT * FROM '+cKodeForm);
        MyQFormLapBul.Next;
        sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
      except
        on E: Exception do     //    on E: EIdException do
          begin
            if not Pesan(3, 'Proses Error, Coba Lagi ?') then
              Break;
          end;
      end;

      Application.ProcessMessages;
    end;

  bt_update_status.Enabled := True;
  Pesan(1, 'Data Hasil Export sudah berhasil diarsipkan...');
  sGaugeJenisLaporan.Visible := False;
end;

procedure Tfr_LPS.bt_settingClick(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure Tfr_LPS.bt_update_statusClick(Sender: TObject);
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

  sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Progress := 0;
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  cKodeArsip := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+FormatDateTime('MMyyyy',per_tgl.Date);
  while not MyQFormLapBul.Eof do
    begin
      cKodeForm := cDb2+'.'+MyQFormLapBulnama_table.AsString;
      cKodeFormArsip := cDb2+'.'+MyQFormLapBulnama_table.AsString+'_arsip';
      cKodeFormBAK := cDb2+'.'+MyQFormLapBulnama_table.AsString+IfThen(flg_koreksi.Checked,'_K_'+koreksi_ke.Text,'_')+FormatDateTime('MMyyyy',per_tgl.Date);

      try
        MyExecuteSQLNoTrans('DELETE FROM '+cKodeFormArsip+' WHERE kode_arsip='+QuotedStr(cKodeArsip));
        MyExecuteSQLNoTrans('INSERT INTO '+cKodeFormArsip+' SELECT *,'+QuotedStr(cKodeArsip)+' AS kode_arsip FROM '+cKodeFormBAK);

        //drop after done
        MyExecuteSQLNoTrans('DROP TABLE IF EXISTS '+cKodeFormBAK);

        MyQFormLapBul.Next;
        sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
      except
        on E: Exception do     //    on E: EIdException do
          begin
            if not Pesan(3, 'Proses Error, Coba Lagi ?') then
              Break;
          end;
      end;
      Application.ProcessMessages;
    end;

  try
    MyExecuteSQLNoTrans('DELETE FROM '+cDb2+'.lps_header_arsip WHERE kode_arsip='+QuotedStr(cKodeArsip));
    MyExecuteSQLNoTrans('INSERT INTO '+cDb2+'.lps_header_arsip '+
      'SELECT *,'+QuotedStr(cKodeArsip)+' AS kode_arsip FROM '+cDb2+'.lps_header '+
      'WHERE kode_kepesertaan='+QuotedStr(kode_kepesertaan.Text)+
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

  if MyExecuteSQL('INSERT INTO '+cDb2+'.lps_backup_log '+
    'SET `kode_arsip`='+QuotedStr(cKodeArsip)+
    ', `tgl_laporan`='+DateToStrSQL(per_tgl.Date)+
    ', `created_by`='+cUserID+', `last_created`=NOW()  on duplicate key update '+
    ' `tgl_laporan`='+DateToStrSQL(per_tgl.Date)+', `created_by`='+cUserID+', `last_created`=NOW()') then
    begin
      Pesan(1, 'Data Hasil Export sudah berhasil diarsipkan...');
      sGaugeJenisLaporan.Visible := False;
      bt_ganti_bulan.Enabled := True;
    end;
end;

procedure Tfr_LPS.cb_jenis_laporanChange(Sender: TObject);
begin
  inherited;
  if cb_jenis_laporan.ItemIndex=0 then
    cKodePeriode := 'M'
  else if cb_jenis_laporan.ItemIndex=1 then
    cKodePeriode := 'S'
  else if cb_jenis_laporan.ItemIndex=2 then
    cKodePeriode := 'D'
  else
  if cb_jenis_laporan.ItemIndex=4 then
    begin
      LabelSurat.Visible := True;
      no_surat.Visible := True;
      cKodePeriode := 'K'
    end
  else
    begin
      LabelSurat.Visible := False;
      no_surat.Visible := False;
      cKodePeriode := 'K'
    end;
end;

procedure Tfr_LPS.DarkGlassinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'DarkGlass (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'DarkGlass (internal)');
end;

procedure Tfr_LPS.FormActivate(Sender: TObject);
begin
  inherited;
//   0 - Laporan Bulanan BPR Rutin
//   1 - Laporan Semesteran BPR
//   2 - Laporan Sewaktu-waktu BPR
//   3 - Laporan Bulanan BPR Perubahan Inisiatif BPR
//   4 - Laporan Bulanan BPR Penyesuaian Pengawas OJK
//   5 - Laporan Bulanan BPR Penyesuaian Kantor Akuntan Publik
   if (MonthOf(per_tgl.Date)=6) or (MonthOf(per_tgl.Date)=12)  then
    cb_jenis_laporan.ItemIndex := 1
   else
    cb_jenis_laporan.ItemIndex := 0;

  if cb_jenis_laporan.ItemIndex=0 then
    cKodePeriode := 'M'
  else if cb_jenis_laporan.ItemIndex=1 then
    cKodePeriode := 'S'
  else if cb_jenis_laporan.ItemIndex=2 then
    cKodePeriode := 'D'
  else
  if cb_jenis_laporan.ItemIndex=4 then
    begin
      LabelSurat.Visible := True;
      no_surat.Visible := True;
      cKodePeriode := 'K'
    end
  else
    begin
      LabelSurat.Visible := False;
      no_surat.Visible := False;
      cKodePeriode := 'K'
    end;
end;

procedure Tfr_LPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Application.Terminate;
end;

procedure Tfr_LPS.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if not Pesan(3,'Keluar dan kembali ke menu utama ?') then
    CanClose := False
  else
    ReleaseLimitUser('LOGIN_LPS'+'_'+Trim(UpperCase(cNamaUser)));
end;

procedure Tfr_LPS.FormCreate(Sender: TObject);
var
  cNamaTabelCek, cKodeArsipCek, cKodeFormArsipCek : string;
  nCountCek : Integer;
begin
  inherited;
  kode_kepesertaan.Text := GetMyParameter('LPS_KODE_KEPERSETAAN','31300083');
  per_tgl.Date        := GetDateFValueByFKeyValue('sistem','jenis','TGL_LPS','tanggal');

  if (YearOf(per_tgl.Date) < 2018) then
  begin
    per_tgl.Date := StrToDate('12/31/2018');
    MyExecuteSQL('INSERT INTO '+cDb2+'.`sistem` (`jenis`, `tanggal`) '+
      ' VALUES ("TGL_LPS", '+DateToStrSQL(per_tgl.Date)+') '+
      ' ON DUPLICATE KEY UPDATE tanggal='+DateToStrSQL(per_tgl.Date));
  end;

  per_tgl.Format := 'MMMM yyyy';

  cKodeArsipCek := IntToStr(cb_jenis_laporan.ItemIndex+1)+'_'+
                   IfThen(flg_koreksi.Checked,'K_'+koreksi_ke.Text,'')+
                   FormatDateTime('MMyyyy',per_tgl.Date);

  cKodeFormArsipCek := cDb2+'.lps_header_arsip';

  nCountCek := StrToIntDef(SelectRow(
                    'SELECT COUNT(*) FROM '+cKodeFormArsipCek+
                    ' WHERE kode_arsip='+QuotedStr(cKodeArsipCek)+
                    '   AND kode_kepesertaan='+QuotedStr(kode_kepesertaan.Text)+
                    '   AND periode_data='+DateToStrSQL(per_tgl.Date)
                  ),0);


  if (nCountCek = 0) then
  begin
    nCountCek := StrToIntDef(SelectRow(
                  'SELECT COUNT(*) FROM '+cKodeFormArsipCek+
                  ' WHERE kode_arsip='+QuotedStr(cKodeArsipCek)
                ),0);
  end;

  if (nCountCek > 0) then
    bt_ganti_bulan.Enabled := True;
end;

procedure Tfr_LPS.HTTP1EndTransfer(Sender: TObject; Direction: Integer);
begin
  inherited;
  fr_Progress.Close;
  fr_Progress.Free;
  fr_Progress := nil;
end;

procedure Tfr_LPS.HTTP1StartTransfer(Sender: TObject; Direction: Integer);
begin
  inherited;
 if Application.FindComponent('fr_Progress') = nil then
    Application.CreateForm(Tfr_Progress, fr_Progress);
  fr_Progress.FormStyle := fsStayOnTop;
  fr_Progress.Show;
  fr_Progress.sGauge1.MaxValue := 100;
  fr_Progress.sGauge1.Progress := 0;
end;

procedure Tfr_LPS.HTTP1Transfer(Sender: TObject; Direction: Integer;
  BytesTransferred: Int64; PercentDone: Integer; Text: string);
begin
  inherited;
   fr_Progress.sGauge1.Progress := PercentDone;
end;

procedure Tfr_LPS.S1Click(Sender: TObject);
var
  cTemp, cTempMax: string;
begin
  inherited;
  cTempMax := GetMyParameter('LPS_JUMLAH_REC_PERFILE','1000');
  cTemp := InputBox('Max Record Per File', 'Jumlah Max', cTempMax);
  if not Empty(cTemp) and (cTemp <> cTempMax) then
    SetMyParameter('LPS_JUMLAH_REC_PERFILE', cTemp);
end;

procedure Tfr_LPS.SkinOnClick(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.Active := True;
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'SkinAktif', '1');
end;

procedure Tfr_LPS.SkinOffClick(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.Active := False;
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'SkinAktif', '0');
end;

procedure Tfr_LPS.Steam2internal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'Steam2 (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'Steam2 (internal)');
end;

procedure Tfr_LPS.TimerUpdaterTimer(Sender: TObject);
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
    cnew := GetMyParameter('LAST_VERSION_LPS', '1.0.0.1');
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

          cFileName:= GetMyParameter('FILE_APLIKASI_LPS','LPSSetup')+ReplaceStr(cnew,'.','')+'.zip';

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
        cNamaFileTemp := apath + 'update\' + GetMyParameter('FILE_APLIKASI_LPS','LPSSetup')+'.zip' ;
        cNamaFileTemp := ChangeFileExt(cNamaFileTemp, '.exe');
//        Pesan(2,'4-'+cNamaFileTemp);
        if FileExists(cNamaFileTemp) then
        begin
          if Pesan(3, 'System akan menutup semua Aplikasi ' + ExtractFileName(Application.ExeName) + ' yang masih aktif' + #13 + #10 + 'dan menjalankan Setup Aplikasi ' + ExtractFileName(Application.ExeName) + ' Versi ' + cnew + #13 + #10 + 'dan pastikan pekerjaan anda telah tersimpan..., Lanjutkan ?') then
            if Pesan(3, 'Program akan menutup semua aplikasi yang terkait' + #13 + #10 + 'dan menjalankan Setup Program dengan Versi yang baru' + #13 + #10 + 'dan pastikan pekerjaan anda telah tersimpan..., Lanjutkan ?') then
            begin
              ReleaseLimitUser('LOGIN_LPS' + '_' + Trim(UpperCase(cNamaUser)));
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

procedure Tfr_LPS.TrayIcon1Click(Sender: TObject);
begin
  inherited;
  TrayIcon1.Visible := False;
end;

procedure Tfr_LPS.UnderWaterinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'UnderWater (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'UnderWater (internal)');
end;

procedure Tfr_LPS.WLMinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'WLM (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'WLM (internal)');
end;

procedure Tfr_LPS.Woodinternal1Click(Sender: TObject);
begin
  inherited;
  fr_LoginBPR.sSkinManager1.SkinName := 'Wood (internal)';
  SkinOnClick(Sender);
  IniSetStringValue(Ogie_FileIni, 'Configuration', 'Skin', 'Wood (internal)');
end;

procedure Tfr_LPS.bt_form0005Click(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_FormLPSDk0004') = nil then
    Application.CreateForm(Tfr_FormLPSDk0004, fr_FormLPSDk0004);
  fr_FormLPSDk0004.MyQDaftarDataKeuangan.MacroByName('WHERE').Value := '';
  if fr_FormLPSDk0004.MyQDaftarDataKeuangan.Active then
    fr_FormLPSDk0004.MyQDaftarDataKeuangan.Refresh
  else
    fr_FormLPSDk0004.MyQDaftarDataKeuangan.Open;
    dTglProses0004  := per_tgl.Date;
  fr_FormLPSDk0004.ShowModal;
  fr_FormLPSDk0004.Free;
  fr_FormLPSDk0004 := nil;
end;

procedure Tfr_LPS.bt_form0003Click(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_FormLps0003') = nil then
    Application.CreateForm(Tfr_FormLps0003, fr_FormLps0003);
  fr_FormLps0003.MyQDaftarKreditSindikasi.MacroByName('WHERE').Value := '';
  if fr_FormLps0003.MyQDaftarKreditSindikasi.Active then
    fr_FormLps0003.MyQDaftarKreditSindikasi.Refresh
  else
    fr_FormLps0003.MyQDaftarKreditSindikasi.Open;

  dTglProses0003 := per_tgl.Date;

  fr_FormLps0003.ShowModal;
  fr_FormLps0003.Free;
  fr_FormLps0003 := nil;
end;

procedure Tfr_LPS.bt_form0004Click(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_FormLps0004') = nil then
    Application.CreateForm(Tfr_FormLps0004, fr_FormLps0004);
  fr_FormLps0004.MyQDaftarKantor.MacroByName('WHERE').Value := '';
  if fr_FormLps0004.MyQDaftarKantor.Active then
    fr_FormLps0004.MyQDaftarKantor.Refresh
  else
    fr_FormLps0004.MyQDaftarKantor.Open;

  dTglProses0004 := per_tgl.Date;

  fr_FormLps0004.ShowModal;
  fr_FormLps0004.Free;
  fr_FormLps0004 := nil;
end;

procedure Tfr_LPS.bt_form0002Click(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_FormLps0002') = nil then
    Application.CreateForm(Tfr_FormLps0002, fr_FormLps0002);
  fr_FormLps0002.MyQDaftarSimpananNasabah.MacroByName('WHERE').Value := '';
  if fr_FormLps0002.MyQDaftarSimpananNasabah.Active then
    fr_FormLps0002.MyQDaftarSimpananNasabah.Refresh
  else
    fr_FormLps0002.MyQDaftarSimpananNasabah.Open;
     dTglProses0002 := per_tgl.Date;
  fr_FormLps0002.ShowModal;
  fr_FormLps0002.Free;
  fr_FormLps0002 := nil;
end;

procedure Tfr_LPS.bt_form0001Click(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_FormLps0001') = nil then
    Application.CreateForm(Tfr_FormLps0001, fr_FormLps0001);
  fr_FormLps0001.MyQDaftarDataNasabah.MacroByName('WHERE').Value := '';
  if fr_FormLps0001.MyQDaftarDataNasabah.Active then
    fr_FormLps0001.MyQDaftarDataNasabah.Refresh
  else
    fr_FormLps0001.MyQDaftarDataNasabah.Open;
  dTglProses0001 := per_tgl.Date;
  fr_FormLps0001.ShowModal;
  fr_FormLps0001.Free;
  fr_FormLps0001 := nil;
end;

procedure Tfr_LPS.bt_export_excelClick(Sender: TObject);
var
  Fn: Integer;
  cTemp, cTempSQL, cKodeJenisLPS, cKodeKepesertaan, cPeriodeLaporan, cKodeLaporan, cKodeForm, cNamaTargetTxt,
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


  cKodeKepesertaan := kode_kepesertaan.Text;
  cPeriodeLaporan := FormatDateTime('yyyyMMdd', per_tgl.DateTime);
  cTemp := GetMyParameter('LPS_JUMLAH_REC_PERFILE','1000');
  if Empty(cTemp) then
    cTemp := '1000';
  Tag := 1;

  if MyQFormLapBul.Active then
    MyQFormLapBul.Refresh
  else
    MyQFormLapBul.Open;

  sGaugeJenisLaporan.MaxValue := MyQFormLapBul.RecordCount;
  sGaugeJenisLaporan.Progress := 0;
  sGaugeJenisLaporan.Visible := True;
  MyQFormLapBul.First;
  while not MyQFormLapBul.Eof do
    begin
      sGaugeJenisLaporan.Suffix := '% '+MyQFormLapBulnama_table.AsString;
      cKodeForm := MyQFormLapBulkode_form.AsString;
      cKodeLaporan := MyQFormLapBulkode_laporan.AsString;

      cNamaTargetTxt := sPathDialog1.Path+'\'+cKodeLaporan+'_'+cKodeKepesertaan+'_'+cPeriodeLaporan+
        '_'+cKodePeriode+'_'+IfThen(flg_koreksi.Checked,'K'+koreksi_ke.Text,'R')+'.txt';

      if FileExists(cNamaTargetTxt) then
        DeleteFile(cNamaTargetTxt);

      if FileExists(sPathDialog1.Path+'\iphist.dat') then
        DeleteFile(sPathDialog1.Path+'\iphist.dat');

      MyQuery1.SQL.Text := 'SELECT * FROM '+MyQFormLapBulnama_table.AsString+' ';


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
            'Konsolidasi';

          dm_bpr1.QExport4Xlsx1.FileName := cNamaTargetTxt;
          dm_bpr1.QExport4Xlsx1.Execute;
          dm_bpr1.QExport4Xlsx1.ExportedFields.Clear;
          dm_bpr1.QExport4Xlsx1.Captions.Clear;

      MyQFormLapBul.Next;
      sGaugeJenisLaporan.Progress := sGaugeJenisLaporan.Progress + 1;
      Application.ProcessMessages;
    end;

  Pesan(1,'Proses telah selesai...!');
  sGaugeJenisLaporan.Visible := False;

end;

end.
