unit FormLpsDk0004;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, sGauge, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MyAccess, Mask, sMaskEdit, sCustomComboEdit,
  sCurrEdit, sCurrencyEdit, sLabel, Math,
  QExport4, QExport4XLS, QExport4Dialog, sEdit, QImport3, QImport3XLS;

type
  Tfr_FormLPSDk0004 = class(Tfr_template)
    sPanel1: TsPanel;
    bt_tambah: TsBitBtn;
    bt_edit: TsBitBtn;
    bt_delete: TsBitBtn;
    bt_close: TsBitBtn;
    qmy: TsBitBtn;
    bt_export: TsBitBtn;
    sGauge1: TsGauge;
    sPanel4: TsPanel;
    Label58: TLabel;
    Edit1: TEdit;
    bt_search: TsBitBtn;
    DBGrid1: TDBGrid;
    dsMyQDaftarDataKeuangan: TMyDataSource;
    MyQDaftarDataKeuangan: TMyQuery;
    dsLapKodeKantor: TMyDataSource;
    MyQLapKodeKantor: TMyQuery;
    MyQLapKodeKantorsandi_cabang: TStringField;
    MyQLapKodeKantorkode_kantor: TStringField;
    MyQLapKodeKantornama_kantor: TStringField;
    MyQLapKodeKantornama_database: TStringField;
    MyQImport: TMyQuery;
    OpenDialog1: TOpenDialog;
    QImport3XLS1: TQImport3XLS;
    MyQDaftarDataKeuangannasabah_id: TStringField;
    MyQDaftarDataKeuanganno_rekening: TStringField;
    MyQDaftarDataKeuanganpersentase_kepemilikan: TFloatField;
    cb_kantor: TDBLookupComboBox;
    Label13: TLabel;
    MyQDaftarDataKeuanganflag_detail: TStringField;
    MyQImportnasabah_id: TStringField;
    MyQImportno_rekening: TStringField;
    MyQImportpersentase_kepemilikan: TStringField;
    procedure bt_tambahClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_editClick(Sender: TObject);
    procedure bt_deleteClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
//    procedure qmyClick(Sender: TObject);
    procedure bt_openClick(Sender: TObject);
    procedure QImport3XLS1AfterImport(Sender: TObject);
    procedure QImport3XLS1BeforeImport(Sender: TObject);
    procedure QImport3XLS1UserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure bt_exportClick(Sender: TObject);
    procedure cb_kantorClick(Sender: TObject);
    procedure qmyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormLPSDk0004: Tfr_FormLPSDk0004;
  dTglProses0004: TDate;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, EntryFormLpsDk0004;

{$R *.dfm}

procedure Tfr_FormLPSDk0004.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormLPSDk0004.bt_deleteClick(Sender: TObject);
begin
  inherited;

  // Cek dataset
  if (not MyQDaftarDataKeuangan.Active) or
     (MyQDaftarDataKeuangan.RecordCount = 0) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  // Konfirmasi hapus
  if Pesan(3, 'Anda sudah yakin menghapus data ini ?') then
  begin
    // Simpan log
    UpdateUserLog(Self.Name, True,
      'Hapus Data: ' +
      'FlagDetail=' + MyQDaftarDataKeuangan.FieldByName('flag_detail').AsString + ', ' +
      'NasabahID=' + MyQDaftarDataKeuangan.FieldByName('nasabah_id').AsString + ', ' +
      'NoRekening=' + MyQDaftarDataKeuangan.FieldByName('no_rekening').AsString + ', ' +
      'PersentaseKepemilikan=' + MyQDaftarDataKeuangan.FieldByName('persentase_kepemilikan').AsString);

    // Eksekusi DELETE
    try
      MyExecuteSQL(
        'DELETE FROM ' + cDb2 + '.lps_dk_f0004 ' +
        'WHERE nasabah_id = ' + QuotedStr(MyQDaftarDataKeuangan.FieldByName('nasabah_id').AsString) + ' ' +
        'AND no_rekening = ' + QuotedStr(MyQDaftarDataKeuangan.FieldByName('no_rekening').AsString)
      );
    except
      on E: EDatabaseError do
        Pesan(2, 'Terjadi kesalahan saat menghapus data: ' + E.Message);
    end;

    // Refresh data
    if MyQDaftarDataKeuangan.Active then
      MyQDaftarDataKeuangan.Refresh
    else
      MyQDaftarDataKeuangan.Open;
  end;
end;

procedure Tfr_FormLPSDk0004.bt_editClick(Sender: TObject);
begin
  inherited;

  if (MyQDaftarDataKeuangan.RecordCount = 0) or (not MyQDaftarDataKeuangan.Active) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Application.FindComponent('fr_EntryFormLpsDk0004') = nil then
    Application.CreateForm(Tfr_EntryFormLpsDk0004, fr_EntryFormLpsDk0004);

  // Filter berdasarkan nasabah_id
  fr_EntryFormLpsDk0004.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDaftarDataKeuangannasabah_id.Text);

  if fr_EntryFormLpsDk0004.MyQTemp.Active then
    fr_EntryFormLpsDk0004.MyQTemp.Refresh
  else
    fr_EntryFormLpsDk0004.MyQTemp.Open;

  with fr_EntryFormLpsDk0004 do
  begin
    JenisTrans0004 := 'EDIT';

    //=== FIELD MAXLENGTH ===
//    flag_detail.MaxLength             := MyQTempflag_detail.Size;
    nasabah_id.MaxLength              := MyQTempnasabah_id.Size;
    no_rekening.MaxLength             := MyQTempno_rekening.Size;
    persentase_kepemilikan.MaxLength  := MyQTemppersentase_kepemilikan.Size;

    //=== LOAD DATA KE FORM ===
//    flag_detail.Text             := MyQTempflag_detail.AsString;
    nasabah_id.Text              := MyQTempnasabah_id.AsString;
    no_rekening.Text             := MyQTempno_rekening.AsString;
    persentase_kepemilikan.Text  := MyQTemppersentase_kepemilikan.AsString;
  end;

  fr_EntryFormLpsDk0004.Tag := 0;
  fr_EntryFormLpsDk0004.ShowModal;

  //=== SIMPAN ===
  if fr_EntryFormLpsDk0004.Tag = 2 then
  begin
    with fr_EntryFormLpsDk0004 do
    begin
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.lps_dk_f0004 SET ' +
//        '`flag_detail`=' + QuotedStr(flag_detail.Text) + ',' +
        '`nasabah_id`=' + QuotedStr(nasabah_id.Text) + ',' +
        '`no_rekening`=' + QuotedStr(no_rekening.Text) + ',' +
        '`persentase_kepemilikan`=' + QuotedStr(persentase_kepemilikan.Text) + ',' +
        '`updated_at`=NOW() ' +
        'WHERE nasabah_id=' + QuotedStr(MyQDaftarDataKeuangannasabah_id.Text)
      );
    end;

    if MyQDaftarDataKeuangan.Active then
      MyQDaftarDataKeuangan.Refresh
    else
      MyQDaftarDataKeuangan.Open;
  end;

  fr_EntryFormLpsDk0004.Free;
  fr_EntryFormLpsDk0004 := nil;
end;

procedure Tfr_FormLPSDk0004.bt_exportClick(Sender: TObject);
var
  i: Integer;
  nSheet1: TxlsSheet;
begin
  inherited;
  if not Pesan(3, 'Yakin ingin mengexport data dalam bentuk file excel ?') then
    Exit;

  if (MyQDaftarDataKeuangan.RecordCount = 0) then
  begin
    Pesan(2,'Maaf, Data masih kosong !, Export tidak dapat diproses...!');
    Exit;
  end;

  if MyQDaftarDataKeuangan.Active then
    MyQDaftarDataKeuangan.Refresh
  else
    MyQDaftarDataKeuangan.Open;

  dm_bpr1.sSaveDialog1.InitialDir := 'D:\imam\LPS\LPS\laporan_Lps';
  dm_bpr1.sSaveDialog1.FileName   := 'LaporanLpsDk0004' + FormatDateTime('ddMMyyyyhhmmss', Now) + '.xls';

  if dm_bpr1.sSaveDialog1.Execute() then
  begin
    nSheet1 := dm_bpr1.QExport4XLS1.Sheets.Add;
    nSheet1.Title := SubStr(Caption, At('-', Caption)+1, Length(Caption));
    nSheet1.ExportedFields.Clear;
    nSheet1.Captions.Clear;
    nSheet1.ColumnsWidth.Clear;
    nSheet1.DataSet := MyQDaftarDataKeuangan;
    dm_bpr1.QExport4XLS1.ShowFile := True;

    for i := 0 to MyQDaftarDataKeuangan.FieldCount - 1 do
    begin
      with MyQDaftarDataKeuangan.Fields[i] do
      begin
        nSheet1.ExportedFields.Add(FieldName);
        nSheet1.Captions.Add(FieldName + '=' + DisplayLabel);

        if IsBlob or (Size <= 0) then
          nSheet1.ColumnsWidth.Add(FieldName + '=30')
        else if Size > 30 then
          nSheet1.ColumnsWidth.Add(FieldName + '=30')
        else
          nSheet1.ColumnsWidth.Add(FieldName + '=' + IntToStr(Size));
      end;
    end;

    nSheet1.SaveToQExportXLS;

    with dm_bpr1.QExport4XLS1.Sheets.Items[0].Options.DataFormat do
    begin
      Borders.Top.Style    := bstHair;
      Borders.Bottom.Style := bstHair;
      Borders.Left.Style   := bstHair;
      Borders.Right.Style  := bstHair;
      Font.Name := 'Arial Narrow';
      Font.Size := 8;
    end;

    dm_bpr1.QExport4XLS1.Sheets.Items[0].Header.Text :=
      cNamaPT + #13#10 +
      SubStr(Caption, At('-', Caption)+1, Length(Caption)) + #13#10 +
      cb_kantor.Text;

    dm_bpr1.QExport4XLS1.FileName := dm_bpr1.sSaveDialog1.FileName;
    dm_bpr1.QExport4XLS1.Options.DataFormat.Font.Name := 'Arial Narrow';
    dm_bpr1.QExport4XLS1.Options.DataFormat.Font.Size := 8;
    dm_bpr1.QExport4XLS1.Execute;
    dm_bpr1.QExport4XLS1.ExportedFields.Clear;
    dm_bpr1.QExport4XLS1.Captions.Clear;
    dm_bpr1.QExport4XLS1.ColumnsWidth.Clear;
    dm_bpr1.QExport4XLS1.Sheets.Clear;
  end;
end;

procedure Tfr_FormLPSDk0004.bt_openClick(Sender: TObject);
begin
  inherited;
//  if OpenDialog1.Execute then
//    begin
//      if MyQDaftarLaporanPenjaminanSimpananDataNominatif.Active then
//        MyQDaftarLaporanPenjaminanSimpananDataNominatif.Refresh
//      else
//        MyQDaftarLaporanPenjaminanSimpananDataNominatif.Open;
//
//      nama_file.Text := OpenDialog1.FileName;
//      QImport3XLS1.FileName := OpenDialog1.FileName;
//      if Pesan(3,'Jalankan Proses Import ?') then
//      begin
//        QImport3XLS1.Execute;
//      end;
//    end;
end;

procedure Tfr_FormLPSDk0004.bt_searchClick(Sender: TObject);
var
  cNoRek: string;
begin
  inherited;
  cb_kantorClick(Sender);
  if not MyQDaftarDataKeuangan.Locate('no_rekening', Trim(Edit1.Text), [loCaseInsensitive, loPartialKey]) then
    begin
      cNoRek := SelectRow('SELECT no_rekening '+
        'FROM `lps_dk_f0004` '+
        'WHERE REPLACE(no_rekening, "-", "")='+QuotedStr(Edit1.Text));

        if not Empty(cNoRek) then
        begin
          MyQDaftarDataKeuangan.Locate('no_rekening', cNoRek, [loCaseInsensitive, loPartialKey]);
        end;
    end;
end;

procedure Tfr_FormLPSDk0004.bt_tambahClick(Sender: TObject);
begin
  inherited;

  if Application.FindComponent('fr_EntryFormLpsDk0004') = nil then
    Application.CreateForm(Tfr_EntryFormLpsDk0004, fr_EntryFormLpsDk0004);

  fr_EntryFormLpsDk0004.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDaftarDataKeuangannasabah_id.Text);

  if fr_EntryFormLpsDk0004.MyQTemp.Active then
    fr_EntryFormLpsDk0004.MyQTemp.Refresh
  else
    fr_EntryFormLpsDk0004.MyQTemp.Open;

  // === SETTING FORM ===
  with fr_EntryFormLpsDk0004 do
  begin
    JenisTrans0004 := '1';

    // MaxLength untuk field baru
//    flag_detail.MaxLength            := MyQTempflag_detail.Size;
    nasabah_id.MaxLength             := MyQTempnasabah_id.Size;
    no_rekening.MaxLength            := MyQTempno_rekening.Size;
    persentase_kepemilikan.MaxLength := MyQTemppersentase_kepemilikan.Size;

    // SET DEFAULT INPUT
//    flag_detail.Text            := 'D';  // default jika perlu
    nasabah_id.Text             := '';
    no_rekening.Text            := '';
    persentase_kepemilikan.Text := '';
  end;

  fr_EntryFormLpsDk0004.Tag := 0;
  fr_EntryFormLpsDk0004.ShowModal;

  // === SIMPAN DATA ===
  if fr_EntryFormLpsDk0004.Tag = 2 then
  begin
    with fr_EntryFormLpsDk0004 do
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.lps_dk_f0004 (' +
        '`flag_detail`, `nasabah_id`, `no_rekening`, `persentase_kepemilikan`, `created_at`, `updated_at`) ' +
        'VALUES (' +
//        QuotedStr(flag_detail.Text) + ', ' +
        QuotedStr(nasabah_id.Text) + ', ' +
        QuotedStr(no_rekening.Text) + ', ' +
        QuotedStr(persentase_kepemilikan.Text) + ', NOW(), NOW()) ' +

        'ON DUPLICATE KEY UPDATE ' +
//        '`flag_detail`=' + QuotedStr(flag_detail.Text) + ',' +
        '`no_rekening`=' + QuotedStr(no_rekening.Text) + ',' +
        '`persentase_kepemilikan`=' + QuotedStr(persentase_kepemilikan.Text));
    end;

    if MyQDaftarDataKeuangan.Active then
      MyQDaftarDataKeuangan.Refresh
    else
      MyQDaftarDataKeuangan.Open;
  end;

  fr_EntryFormLpsDk0004.Free;
  fr_EntryFormLpsDk0004 := nil;
end;

procedure Tfr_FormLPSDk0004.cb_kantorClick(Sender: TObject);
begin
  inherited;
  if MyQLapKodeKantorsandi_cabang.AsString='000' then
    MyQDaftarDataKeuangan.MacroByName('WHERE').Value := ''
  else
    MyQDaftarDataKeuangan.MacroByName('WHERE').Value :=
      'WHERE `sandi_kantor`='+QuotedStr(MyQLapKodeKantorsandi_cabang.AsString);
  if MyQDaftarDataKeuangan.Active then
    MyQDaftarDataKeuangan.Refresh
  else
    MyQDaftarDataKeuangan.Open;
end;

procedure Tfr_FormLPSDk0004.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if bt_edit.Enabled then
    bt_editClick(Sender);
end;

procedure Tfr_FormLPSDk0004.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
   if DBGrid1.DataSource.DataSet.RecNo mod StrToInt(cColorGridRow) = 0 then
  begin
     DBGrid1.Canvas.Font.Color:=StrToInt(cColorGridOddFront);
     DBGrid1.Canvas.Brush.Color:=StrToInt(cColorGridOddBg);
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  If (gdSelected in State) then
    begin
     DBGrid1.Canvas.Font.Color:=StrToInt(cColorGridSelectedFront);
     DBGrid1.Canvas.Brush.Color:=StrToInt(cColorGridSelectedBg);
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure Tfr_FormLPSDk0004.QImport3XLS1AfterImport(Sender: TObject);
begin
  inherited;
    Pesan(1, 'Proses Import Selesai...');
    sGauge1.Visible := False;
    MyQDaftarDataKeuangan.EnableControls;

  if MyQDaftarDataKeuangan.Active then
    MyQDaftarDataKeuangan.Refresh
  else
    MyQDaftarDataKeuangan.Open;
end;

procedure Tfr_FormLPSDk0004.QImport3XLS1BeforeImport(Sender: TObject);
begin
  inherited;
    sGauge1.Visible := True;
    sGauge1.Progress := 0;
    sGauge1.MaxValue := QImport3XLS1.TotalRecCount;
    MyQDaftarDataKeuangan.DisableControls;
end;

procedure Tfr_FormLPSDk0004.QImport3XLS1UserDefinedImport(Sender: TObject;
Row: TQImportRow);
var
  i: Integer;
  cTemp, cTempSqlI, cTempSqlU: WideString;
begin
  inherited;

  cTempSqlI := '';
  cTempSqlU := '';
  sGauge1.Progress := sGauge1.Progress + 1;

  // Loop isi data berdasarkan urutan kolom
  for i := 0 to Row.Count - 1 do
  begin
    cTemp := QuotedStr(Row[i].Value);

    case i of
      0: begin
           // nasabah_id
           cTempSqlI := cTempSqlI + cTemp;
           cTempSqlU := cTempSqlU + ' nasabah_id=' + cTemp;
         end;

      1: begin
           // no_rekening
           cTempSqlI := cTempSqlI + ', ' + cTemp;
           cTempSqlU := cTempSqlU + ', no_rekening=' + cTemp;
         end;

      2: begin
           // persentase_kepemilikan
           cTempSqlI := cTempSqlI + ', ' + cTemp;
           cTempSqlU := cTempSqlU + ', persentase_kepemilikan=' + cTemp;
         end;

      3: begin
           // created_at
           cTempSqlI := cTempSqlI + ', ' + cTemp;
           cTempSqlU := cTempSqlU + ', created_at=' + cTemp;
         end;

      4: begin
           // updated_at
           cTempSqlI := cTempSqlI + ', ' + cTemp;
           cTempSqlU := cTempSqlU + ', updated_at=' + cTemp;
         end;
    end;
  end;

  // Jalankan SQL jika ada UPDATE
  if (not Empty(cTempSqlU)) then
  begin
    MyExecuteSQL(
      'INSERT INTO ' + cDb2 + '.lps_dk_f0004 ' +
      ' (nasabah_id, no_rekening, persentase_kepemilikan, created_at, updated_at) ' +
      ' VALUES (' + cTempSqlI + ') ' +
      ' ON DUPLICATE KEY UPDATE ' + cTempSqlU
    );

    cTempSqlI := '';
    cTempSqlU := '';
  end;

  Application.ProcessMessages;
end;

procedure Tfr_FormLPSDk0004.qmyClick(Sender: TObject);
var
  nSaldoAyda, nNilaiBersih: Double;
  nJmlRek : Integer;
begin
  inherited;

  if Pesan(3, 'Proses Import Data dari Database Core ?') then
  begin
//    MyQImport.MacroByName('DB').Value := cDb1;
   MyQImport.MacroByName('TGL').Value := DateToStrSQL(dTglProses0004);


    if MyQImport.Active then
      MyQImport.Refresh
    else
      MyQImport.Open;

    if MyQImport.RecordCount = 0 then
    begin
      Pesan(2, 'Maaf tidak ada data...!');
      Exit;
    end;

    MyExecuteSQL('TRUNCATE TABLE ' + cDb2 + '.lps_dk_f0004');

    sGauge1.Visible := True;
    sGauge1.MaxValue := MyQImport.RecordCount;
    sGauge1.Progress := 0;

    while not MyQImport.Eof do
    begin
        MyExecuteSQL(
          'INSERT INTO ' + cDb2 + '.lps_dk_f0004 ' +
          '(nasabah_id, no_rekening, persentase_kepemilikan) VALUES (' +
          QuotedStr(MyQImportnasabah_id.Text) + ',' +
          QuotedStr(MyQImportno_rekening.Text) + ',' +
          FloatToStr(MyQImportpersentase_kepemilikan.AsFloat) +
          ')'
        );

      MyQImport.Next;
      sGauge1.Progress := sGauge1.Progress + 1;
      Application.ProcessMessages;
    end;


    dm_bpr1.MyQuery1.SQL.Text:='SELECT no_rekening FROM ' + cDb2 + '.lps_dsn_f0002 '+
    ' WHERE saldo_akhir > 0 and no_rekening IN (SELECT no_rekening FROM ' + cDb2 + '.`lps_dk_f0004` )';
    dm_bpr1.MyQuery1.Open;

    dm_bpr1.MyQuery1.First;
    while not dm_bpr1.MyQuery1.Eof do
    begin
      nJmlRek := StrToInt(SelectRow(
        ' SELECT COUNT(*) FROM ' + cDb2 + '.`lps_dk_f0004` ' +
        ' WHERE no_rekening=' + QuotedStr(dm_bpr1.MyQuery1.FieldByName('no_rekening').AsString)));
      MyExecuteSQL( 'UPDATE ' + cDb2 + '.`lps_dsn_f0002` SET '+
        ' jumlah_pemilik_rekening='+IntToStr(nJmlRek)+
        ' WHERE no_rekening='+QuotedStr(dm_bpr1.MyQuery1.FieldByName('no_rekening').AsString));
      dm_bpr1.MyQuery1.Next;
    end;



    sGauge1.Visible := False;
    Pesan(1, 'Proses Import Selesai...');
  end;

  if MyQDaftarDataKeuangan.Active then
    MyQDaftarDataKeuangan.Refresh
  else
    MyQDaftarDataKeuangan.Open;
end;



end.
