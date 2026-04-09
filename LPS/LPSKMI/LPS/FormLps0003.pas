unit FormLps0003;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider, Vcl.StdCtrls, Vcl.Buttons, sBitBtn,
  Vcl.ExtCtrls, sPanel, sGauge, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MyAccess, Mask,
  sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit, sLabel, Math, QExport4, QExport4XLS, QExport4Dialog, sEdit,
  QImport3, QImport3XLS;

type
  Tfr_FormLps0003 = class(Tfr_template)
    sPanel1: TsPanel;
    bt_tambah: TsBitBtn;
    bt_edit: TsBitBtn;
    bt_delete: TsBitBtn;
    bt_close: TsBitBtn;
    qmy: TsBitBtn;
    bt_export: TsBitBtn;
    sGauge1: TsGauge;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    Label13: TLabel;
    Label58: TLabel;
    cb_kantor: TDBLookupComboBox;
    Edit1: TEdit;
    bt_search: TsBitBtn;
    DBGrid1: TDBGrid;
    dsMyQDaftarKreditSindikasi: TMyDataSource;
    MyQDaftarKreditSindikasi: TMyQuery;
    dsLapKodeKantor: TMyDataSource;
    MyQLapKodeKantor: TMyQuery;
    MyQLapKodeKantorsandi_cabang: TStringField;
    MyQLapKodeKantorkode_kantor: TStringField;
    MyQLapKodeKantornama_kantor: TStringField;
    MyQLapKodeKantornama_database: TStringField;
    MyQImport: TMyQuery;
    nama_file: TsEdit;
    bt_open: TsBitBtn;
    OpenDialog1: TOpenDialog;
    QImport3XLS1: TQImport3XLS;
    MyQDaftarKreditSindikasiflag_detail: TStringField;
    MyQDaftarKreditSindikasinasabah_id: TStringField;
    MyQDaftarKreditSindikasino_rekening: TStringField;
    MyQDaftarKreditSindikasijenis: TStringField;
    MyQDaftarKreditSindikasikolektibilitas: TStringField;
    MyQDaftarKreditSindikasijml_pinjaman: TFloatField;
    MyQDaftarKreditSindikasibaki_debet: TFloatField;
    MyQDaftarKreditSindikasijumlah_tunggakan_pokok: TFloatField;
    MyQDaftarKreditSindikasijumlah_tunggakan_bunga: TFloatField;
    MyQDaftarKreditSindikasijenis_agunan: TStringField;
    MyQDaftarKreditSindikasitgl_realisasi: TDateField;
    MyQDaftarKreditSindikasitgl_jatuh_tempo: TDateField;
    MyQDaftarKreditSindikasikategori_usaha: TStringField;
    MyQImportnasabah_id: TStringField;
    MyQImportno_rekening: TStringField;
    MyQImportjenis_kewajiban: TStringField;
    MyQImportkolek_bi: TSmallintField;
    MyQImportjml_pinjaman: TFloatField;
    MyQImportbaki_debet: TLargeintField;
    MyQImportjumlah_tunggakan_pokok: TLargeintField;
    MyQImportjumlah_tunggakan_bunga: TLargeintField;
    MyQImportjenis_agunan: TLargeintField;
    MyQImportkategori_usaha: TStringField;
    MyQImportjangka_waktu_mulai: TDateField;
    MyQImportjangka_waktu_jatuh_tempo: TDateField;
    procedure bt_tambahClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_editClick(Sender: TObject);
    procedure cb_kantorClick(Sender: TObject);
    procedure bt_deleteClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure bt_exportClick(Sender: TObject);
    procedure qmyClick(Sender: TObject);
    procedure bt_openClick(Sender: TObject);
    procedure QImport3XLS1AfterImport(Sender: TObject);
    procedure QImport3XLS1BeforeImport(Sender: TObject);
    procedure QImport3XLS1UserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormLps0003: Tfr_FormLps0003;
  dTglProses0003: TDate;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, EntryFormLps0003;

{$R *.dfm}

procedure Tfr_FormLps0003.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormLps0003.bt_deleteClick(Sender: TObject);
begin
  inherited;
  if (MyQDaftarKreditSindikasi.RecordCount=0) or (not MyQDaftarKreditSindikasi.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

  if Pesan(3,'Anda sudah yakin menghapus data ini ?') then
    begin

      UpdateUserLog(Self.Name ,True, 'Hapus Nasabah Id='+MyQDaftarKreditSindikasinasabah_id.Text+
      ' No Rekening='+MyQDaftarKreditSindikasino_rekening.Text+
      ' Jenis='+MyQDaftarKreditSindikasijenis.Value);
      try
        MyExecuteSQL('DELETE FROM '+cDb2+'.lps_dk_f0003 WHERE no_rekening='+QuotedStr(MyQDaftarKreditSindikasino_rekening.Text));
      except
        on E: EDatabaseError do
          begin
            //Pesan(2,SubStr(E.Message,At());
          end;
      end;

      if MyQDaftarKreditSindikasi.Active then
        MyQDaftarKreditSindikasi.Refresh
      else
        MyQDaftarKreditSindikasi.Open;
    end;
end;

procedure Tfr_FormLps0003.bt_editClick(Sender: TObject);
var
  sSQL: string;
begin
  inherited;
  if (MyQDaftarKreditSindikasi.RecordCount = 0) or (not MyQDaftarKreditSindikasi.Active) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Application.FindComponent('fr_EntryFormLps0003') = nil then
    Application.CreateForm(Tfr_EntryFormLps0003, fr_EntryFormLps0003);
  fr_EntryFormLps0003.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDaftarKreditSindikasinasabah_id.Text) +
    ' AND no_rekening=' + QuotedStr(MyQDaftarKreditSindikasino_rekening.Text);

  if fr_EntryFormLps0003.MyQTemp.Active then
    fr_EntryFormLps0003.MyQTemp.Refresh
  else
    fr_EntryFormLps0003.MyQTemp.Open;

  with fr_EntryFormLps0003 do
  begin
    JenisTrans0003 := '2';

    nasabah_id.MaxLength := MyQTempnasabah_id.Size;
    no_rekening.MaxLength := MyQTempno_rekening.Size;
    jenis.MaxLength := MyQTempjenis.Size;
    kolektibilitas.MaxLength := MyQTempkolektibilitas.Size;
    jenis_agunan.MaxLength := MyQTempjenis_agunan.Size;
    kategori_usaha.MaxLength := MyQTempkategori_usaha.Size;

    nasabah_id.Text := MyQTempnasabah_id.AsString;
    no_rekening.Text := MyQTempno_rekening.AsString;
    jenis.Text := MyQTempjenis.AsString;
    jenisExit(Sender);
    kolektibilitas.Text := MyQTempkolektibilitas.AsString;
    kolektibilitasExit(Sender);
    jml_pinjaman.Value := MyQTempjml_pinjaman.Value;
    baki_debet.Value := MyQTempbaki_debet.Value;
    jumlah_tunggakan_pokok.Value := MyQTempjumlah_tunggakan_pokok.Value;
    jumlah_tunggakan_bunga.Value := MyQTempjumlah_tunggakan_bunga.Value;
    jenis_agunan.Text := MyQTempjenis_agunan.AsString;
    jenis_agunanExit(Sender);
    tgl_realisasi.Date := MyQTemptgl_realisasi.AsDateTime;
    tgl_jatuh_tempo.Date := MyQTemptgl_jatuh_tempo.AsDateTime;
    kategori_usaha.Text := MyQTempkategori_usaha.AsString;
    kategori_usahaExit(Sender);
  end;

  fr_EntryFormLps0003.Tag := 0;
  fr_EntryFormLps0003.ShowModal;

  if fr_EntryFormLps0003.Tag = 2 then
  begin
    with fr_EntryFormLps0003 do
    begin
      sSQL :=
        'UPDATE ' + cDb2 + '.lps_dk_f0003 SET ' +
        ' `nasabah_id`=' + QuotedStr(nasabah_id.Text) +
        ', `no_rekening`=' + QuotedStr(no_rekening.Text) +
        ', `jenis`=' + QuotedStr(jenis.Text) +
        ', `kolektibilitas`=' + QuotedStr(kolektibilitas.Text) +
        ', `jml_pinjaman`=' + FloatToStr(jml_pinjaman.Value) +
        ', `baki_debet`=' + FloatToStr(baki_debet.Value) +
        ', `jumlah_tunggakan_pokok`=' + FloatToStr(jumlah_tunggakan_pokok.Value) +
        ', `jumlah_tunggakan_bunga`=' + FloatToStr(jumlah_tunggakan_bunga.Value) +
        ', `jenis_agunan`=' + QuotedStr(jenis_agunan.Text) +
        ', `tgl_realisasi`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_realisasi.Date)) +
        ', `tgl_jatuh_tempo`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_jatuh_tempo.Date)) +
        ', `kategori_usaha`=' + QuotedStr(kategori_usaha.Text) +
        ' WHERE `nasabah_id`=' + QuotedStr(MyQDaftarKreditSindikasinasabah_id.Text) +
        ' AND `no_rekening`=' + QuotedStr(MyQDaftarKreditSindikasino_rekening.Text);

      MyExecuteSQL(sSQL);
    end;

    if MyQDaftarKreditSindikasi.Active then
      MyQDaftarKreditSindikasi.Refresh
    else
      MyQDaftarKreditSindikasi.Open;
  end;

  fr_EntryFormLps0003.Free;
  fr_EntryFormLps0003 := nil;
end;

procedure Tfr_FormLps0003.bt_exportClick(Sender: TObject);
var
  i: Integer;
  nSheet1: TxlsSheet;
  ColumnWidth: Integer;
  SheetTitle: String;
begin
  inherited;
  if not Pesan(3,'Yakin ingin mengexport data dalam bentuk file excel ?') then Exit;

  if (MyQDaftarKreditSindikasi.RecordCount = 0) then
  begin
    Pesan(2,'Maaf, Data masih kosong !, Export tidak dapat diproses...!');
    Exit;
  end;

  if MyQDaftarKreditSindikasi.Active then
    MyQDaftarKreditSindikasi.Refresh
  else
    MyQDaftarKreditSindikasi.Open;

  dm_bpr1.sSaveDialog1.InitialDir := 'D:\imam\LPS\laporan_Lps';
  dm_bpr1.sSaveDialog1.FileName := 'LaporanLps0003_' +FormatDateTime('ddmmyyyy_hhnnss', Now) + '.xls';
  if dm_bpr1.sSaveDialog1.Execute then
  begin
    if Pos('-', Caption) > 0 then
      SheetTitle := Trim(Copy(Caption, Pos('-', Caption)+1, Length(Caption)))
    else
      SheetTitle := Caption;

    dm_bpr1.QExport4XLS1.Sheets.Clear;
    nSheet1 := dm_bpr1.QExport4XLS1.Sheets.Add;
    nSheet1.Title := SheetTitle;
    nSheet1.DataSet := MyQDaftarKreditSindikasi;
    nSheet1.ExportedFields.Clear;
    nSheet1.Captions.Clear;
    nSheet1.ColumnsWidth.Clear;

    for i := 0 to MyQDaftarKreditSindikasi.FieldCount - 1 do
    begin
      nSheet1.ExportedFields.Add(MyQDaftarKreditSindikasi.Fields[i].FieldName);
      nSheet1.Captions.Add(MyQDaftarKreditSindikasi.Fields[i].FieldName + '=' +
      MyQDaftarKreditSindikasi.Fields[i].DisplayLabel);
      if MyQDaftarKreditSindikasi.Fields[i].IsBlob then
        ColumnWidth := 40
      else if MyQDaftarKreditSindikasi.Fields[i].Size > 0 then
        ColumnWidth := Min(Max(MyQDaftarKreditSindikasi.Fields[i].Size, 10), 50)
      else
        ColumnWidth := 25;
      nSheet1.ColumnsWidth.Add(MyQDaftarKreditSindikasi.Fields[i].FieldName + '=' + IntToStr(ColumnWidth));
    end;

    nSheet1.Options.DataFormat.Borders.Top.Style := bstHair;
    nSheet1.Options.DataFormat.Borders.Bottom.Style := bstHair;
    nSheet1.Options.DataFormat.Borders.Left.Style := bstHair;
    nSheet1.Options.DataFormat.Borders.Right.Style := bstHair;
    nSheet1.Options.DataFormat.Font.Name := 'Arial Narrow';
    nSheet1.Options.DataFormat.Font.Size := 8;
    nSheet1.Header.Text := cNamaPT + #13#10 + SheetTitle + #13#10 + cb_kantor.Text;
    dm_bpr1.QExport4XLS1.FileName := dm_bpr1.sSaveDialog1.FileName;
    dm_bpr1.QExport4XLS1.Options.DataFormat.Font.Name := 'Arial Narrow';
    dm_bpr1.QExport4XLS1.Options.DataFormat.Font.Size := 8;
    dm_bpr1.QExport4XLS1.Execute;
    dm_bpr1.QExport4XLS1.Sheets.Clear;

    Pesan(1,'Export selesai!');
  end;
end;

procedure Tfr_FormLps0003.bt_openClick(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    begin
      if MyQDaftarKreditSindikasi.Active then
        MyQDaftarKreditSindikasi.Refresh
      else
        MyQDaftarKreditSindikasi.Open;

      nama_file.Text := OpenDialog1.FileName;
      QImport3XLS1.FileName := OpenDialog1.FileName;
      if Pesan(3,'Jalankan Proses Import ?') then
      begin
        QImport3XLS1.Execute;
      end;
    end;
end;

procedure Tfr_FormLps0003.bt_searchClick(Sender: TObject);
var
  cNoRek: string;
begin
  inherited;

  // *** HAPUS cb_kantorClick(Sender), karena itu me-reload LIMIT 30 ***
  // cb_kantorClick(Sender);   <-- ini dihapus

  // Load FULL DATA (tanpa LIMIT)
  MyQDaftarKreditSindikasi.Close;
  MyQDaftarKreditSindikasi.SQL.Text :=
    'SELECT * FROM lps_dk_f0003';
  MyQDaftarKreditSindikasi.Open;

  // --- Lanjutkan fungsi Locate Anda ---
  if not MyQDaftarKreditSindikasi.Locate('no_rekening', Trim(Edit1.Text),
     [loCaseInsensitive, loPartialKey]) then
  begin
    cNoRek := SelectRow(
      'SELECT no_rekening '+
      'FROM lps_dk_f0003 '+
      'WHERE REPLACE(no_rekening, "-", "")='+QuotedStr(Edit1.Text)
    );

    if not Empty(cNoRek) then
      MyQDaftarKreditSindikasi.Locate('no_rekening', cNoRek,
        [loCaseInsensitive, loPartialKey]);
  end;
end;

procedure Tfr_FormLps0003.bt_tambahClick(Sender: TObject);
begin
  inherited;
   if Application.FindComponent('fr_EntryFormLps0003') = nil then
  Application.CreateForm(Tfr_EntryFormLps0003, fr_EntryFormLps0003);
  fr_EntryFormLps0003.MyQTemp.MacroByName('WHERE').Value := 'WHERE no_rekening=' + QuotedStr(MyQDaftarKreditSindikasino_rekening.Text);
  if fr_EntryFormLps0003.MyQTemp.Active then
    fr_EntryFormLps0003.MyQTemp.Refresh
  else
    fr_EntryFormLps0003.MyQTemp.Open;

  with fr_EntryFormLps0003 do
  begin
    JenisTrans0003 := '1';
    nasabah_id.MaxLength := MyQTemp.FieldByName('nasabah_id').Size;
    no_rekening.MaxLength := MyQTemp.FieldByName('no_rekening').Size;
    jenis.MaxLength := MyQTemp.FieldByName('jenis').Size;
    kolektibilitas.MaxLength := MyQTemp.FieldByName('kolektibilitas').Size;
    jml_pinjaman.MaxLength := MyQTemp.FieldByName('jml_pinjaman').Size;
    baki_debet.MaxLength := MyQTemp.FieldByName('baki_debet').Size;
    jumlah_tunggakan_pokok.MaxLength := MyQTemp.FieldByName('jumlah_tunggakan_pokok').Size;
    jumlah_tunggakan_bunga.MaxLength := MyQTemp.FieldByName('jumlah_tunggakan_bunga').Size;
    jenis_agunan.MaxLength := MyQTemp.FieldByName('jenis_agunan').Size;
    kategori_usaha.MaxLength := MyQTemp.FieldByName('kategori_usaha').Size;

    nasabah_id.Text := '';
    no_rekening.Text := '';
    jenis.Text := '';
    kolektibilitas.Text := '';
    jml_pinjaman.Value := 0;
    baki_debet.Value := 0;
    jumlah_tunggakan_pokok.Value := 0;
    jumlah_tunggakan_bunga.Value := 0;
    jenis_agunan.Text := '';
    kategori_usaha.Text := '';

    tgl_realisasi.Checked := False;
    tgl_jatuh_tempo.Checked := False;
    //opsional: jika ingin nilai default tertentu
    //tgl_realisasi.Date := Now;
    //tgl_jatuh_tempo.Date := Now;
  end;

    fr_EntryFormLps0003.Tag := 0;
    fr_EntryFormLps0003.ShowModal;
    if fr_EntryFormLps0003.Tag=2 then
      begin
        with fr_EntryFormLps0003 do
         begin
          MyExecuteSQL('INSERT INTO ' + cDb2 + '.lps_dk_f0003 ' +
            '(`nasabah_id`, `no_rekening`, `jenis`, `kolektibilitas`, `jml_pinjaman`, ' +
            '`baki_debet`, `jumlah_tunggakan_pokok`, `jumlah_tunggakan_bunga`, ' +
            '`jenis_agunan`, `tgl_realisasi`, `tgl_jatuh_tempo`, `kategori_usaha`) VALUES (' +
            QuotedStr(nasabah_id.Text) + ',' +
            QuotedStr(no_rekening.Text) + ',' +
            QuotedStr(jenis.Text) + ',' +
            QuotedStr(kolektibilitas.Text) + ',' +
            FloatToStr(jml_pinjaman.Value) + ',' +
            FloatToStr(baki_debet.Value) + ',' +
            FloatToStr(jumlah_tunggakan_pokok.Value) + ',' +
            FloatToStr(jumlah_tunggakan_bunga.Value) + ',' +
            QuotedStr(jenis_agunan.Text) + ',' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_realisasi.Date)) + ',' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_jatuh_tempo.Date)) + ',' +
            QuotedStr(kategori_usaha.Text) +
            ') ON DUPLICATE KEY UPDATE ' +
            '`nasabah_id`=' + QuotedStr(nasabah_id.Text) +
            ', `no_rekening`=' + QuotedStr(no_rekening.Text) +
            ', `jenis`=' + QuotedStr(jenis.Text) +
            ', `kolektibilitas`=' + QuotedStr(kolektibilitas.Text) +
            ', `jml_pinjaman`=' + FloatToStr(jml_pinjaman.Value) +
            ', `baki_debet`=' + FloatToStr(baki_debet.Value) +
            ', `jumlah_tunggakan_pokok`=' + FloatToStr(jumlah_tunggakan_pokok.Value) +
            ', `jumlah_tunggakan_bunga`=' + FloatToStr(jumlah_tunggakan_bunga.Value) +
            ', `jenis_agunan`=' + QuotedStr(jenis_agunan.Text) +
            ', `tgl_realisasi`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_realisasi.Date)) +
            ', `tgl_jatuh_tempo`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_jatuh_tempo.Date)) +
            ', `kategori_usaha`=' + QuotedStr(kategori_usaha.Text));
        end;

        if MyQDaftarKreditSindikasi.Active then
          MyQDaftarKreditSindikasi.Refresh
        else
          MyQDaftarKreditSindikasi.Open;
      end;

    fr_EntryFormLps0003.Free;
    fr_EntryFormLps0003 := nil;
end;

procedure Tfr_FormLps0003.cb_kantorClick(Sender: TObject);
begin
  inherited;
  if MyQLapKodeKantorsandi_cabang.AsString='000' then
    MyQDaftarKreditSindikasi.MacroByName('WHERE').Value := ''
  else
    MyQDaftarKreditSindikasi.MacroByName('WHERE').Value :=
      'WHERE `sandi_kantor`='+QuotedStr(MyQLapKodeKantorsandi_cabang.AsString);
  if MyQDaftarKreditSindikasi.Active then
    MyQDaftarKreditSindikasi.Refresh
  else
    MyQDaftarKreditSindikasi.Open;
end;

procedure Tfr_FormLps0003.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if bt_edit.Enabled then
    bt_editClick(Sender);
end;

procedure Tfr_FormLps0003.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfr_FormLps0003.FormCreate(Sender: TObject);
begin
  inherited;
    if MyQLapKodeKantor.Active then
    MyQLapKodeKantor.Refresh
  else
    MyQLapKodeKantor.Open;

  cb_kantor.KeyValue := '*';
  cb_kantorClick(Sender);
end;

procedure Tfr_FormLps0003.QImport3XLS1AfterImport(Sender: TObject);
begin
  inherited;
    Pesan(1, 'Proses Import Selesai...');
    sGauge1.Visible := False;
    MyQDaftarKreditSindikasi.EnableControls;

  if MyQDaftarKreditSindikasi.Active then
    MyQDaftarKreditSindikasi.Refresh
  else
    MyQDaftarKreditSindikasi.Open;
end;

procedure Tfr_FormLps0003.QImport3XLS1BeforeImport(Sender: TObject);
begin
  inherited;
    sGauge1.Visible := True;
    sGauge1.Progress := 0;
    sGauge1.MaxValue := QImport3XLS1.TotalRecCount;
    MyQDaftarKreditSindikasi.DisableControls;
end;

procedure Tfr_FormLps0003.QImport3XLS1UserDefinedImport(Sender: TObject;
  Row: TQImportRow);
   var
   i : integer;  //, nPos
  cTempRek, cTemp, cTempNama, cTempJumlah, cTempSqlI, cTempSqlU: WideString;
begin
  inherited;
  cTempSqlI:='';
  cTempSqlU:='';
  sGauge1.Progress := sGauge1.Progress + 1;
      for i := 0 to Row.Count - 1 do
        begin
          cTemp := Row[i].Value;
              if (i=0)  then
              begin
                cTempSqlI :=cTempSqlI+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ' `sandi_kantor`=' +QuotedStr(cTemp)
              end
              else
              if (i=1)  then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `id_pihak_lawan`=' + QuotedStr(cTemp)
              end
              else
              if i=2 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `no_identitas`=' + QuotedStr(cTemp)
              end
              else
              if i=3 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `no_rekening`=' + QuotedStr(cTemp)
              end
              else
              if i=4 then
              begin
               cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
               cTempSqlU :=cTempSqlU+ ', `jml_pendanaan_plafon`=' +QuotedStr(cTemp)
              end
              else
              if i=5 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ' `jml_pendanaan_baki_debet`=' + QuotedStr(cTemp)
              end
              else
              if i=6 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `bagian_pendanaan_plafon`=' + QuotedStr(cTemp)
              end
              else
              if i=7 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `bagian_pendanaan_baki_debet`=' + QuotedStr(cTemp)
              end
              else
              if i=8 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `sandi_bank_peserta`=' + QuotedStr(cTemp)
              end
              else
              if i=9 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `status_peserta`=' + QuotedStr(cTemp)
              end
              else
              if i=10 then
                begin
                  cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                  cTempSqlU :=cTempSqlU+ ', `no_perjanjian`=' + QuotedStr(cTemp)
                end
              else
              if i=11 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `pendanaan_bank_pelapor`=' + QuotedStr(cTemp)
              end
              else
              if i=12 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `kualitas`=' + QuotedStr(cTemp)
              end
              else
              if (i=13)  then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `nominal_tunggakan_pokok`=' + QuotedStr(cTemp)
              end
              else
              if (i=14)  then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `nominal_tunggakan_bunga`=' + QuotedStr(cTemp)
              end
              else
              if i=15 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `hari_tunggakan_pokok`=' + QuotedStr(cTemp)
              end
              else
              if i=16 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                cTempSqlU :=cTempSqlU+ ', `hari_tunggakan_bunga`=' + QuotedStr(cTemp);
              end;
        end;

        if (not Empty(cTempSqlU)) then
        begin
          MyExecuteSQL('INSERT INTO ' + cDb2 + '.lps_dk_f0003 ' +
            '(`nasabah_id`, `no_rekening`, `jenis`, `kolektibilitas`, `jml_pinjaman`, ' +
            '`baki_debet`, `jumlah_tunggakan_pokok`, `jumlah_tunggakan_bunga`, ' +
            '`jenis_agunan`, `tgl_realisasi`, `tgl_jatuh_tempo`, `kategori_usaha`) VALUES (' +
            cTempSqlI +
          ') ON DUPLICATE KEY UPDATE '+cTempSqlU);
           cTempSqlI:='';
           cTempSqlU:='';
        end;
  Application.ProcessMessages;
end;

procedure Tfr_FormLps0003.qmyClick(Sender: TObject);
var
  cCount            : string;
  cMulai, cJatuh    : string;
  dtMulai, dtJatuh  : TDateTime;
begin
  inherited;

  if not Pesan(3, 'Proses Import Data Kredit dari Database Core ?') then
    Exit;

    MyQImport.MacroByName('TGL').Value:=DateToStrSQL(dTglProses0003);

  if MyQImport.Active then
    MyQImport.Refresh
  else
    MyQImport.Open;

  if MyQImport.RecordCount = 0 then
  begin
    Pesan(2, 'Maaf tidak ada data...!');
    Exit;
  end;

  sGauge1.Visible  := True;
  sGauge1.MaxValue := MyQImport.RecordCount;
  sGauge1.Progress := 0;

  while not MyQImport.Eof do
  begin
//    { ==== JANGKA WAKTU MULAI ==== }
//    if MyQImportjangka_waktu_mulai.IsNull then
//      cMulai := 'NULL'
//    else if TryStrToDate(MyQImportjangka_waktu_mulai.AsString, dtMulai) then
//      cMulai := QuotedStr(FormatDateTime('yyyy-mm-dd', dtMulai))
//    else
//      cMulai := 'NULL';
//
//    { ==== JANGKA WAKTU JATUH TEMPO ==== }
//    if MyQImportjangka_waktu_jatuh_tempo.IsNull then
//      cJatuh := 'NULL'
//    else if TryStrToDate(MyQImportjangka_waktu_jatuh_tempo.AsString, dtJatuh) then
//      cJatuh := QuotedStr(FormatDateTime('yyyy-mm-dd', dtJatuh))
//    else
//      cJatuh := 'NULL';

    { ==== CEK DATA ==== }
    cCount := SelectRow(
      'SELECT COUNT(*) FROM ' + cDb2 + '.lps_dk_f0003 ' +
      'WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)
    );

    { ==== INSERT ==== }
    if StrToIntDef(cCount, 0) = 0 then
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.lps_dk_f0003 (' +
        'nasabah_id, no_rekening, jenis, kolektibilitas, ' +
        'jml_pinjaman, baki_debet, jumlah_tunggakan_pokok, ' +
        'jumlah_tunggakan_bunga, jenis_agunan, ' +
        'tgl_realisasi, tgl_jatuh_tempo, kategori_usaha) VALUES (' +
        QuotedStr(MyQImportnasabah_id.AsString) + ',' +
        QuotedStr(MyQImportno_rekening.AsString) + ',' +
        QuotedStr(MyQImportjenis_kewajiban.AsString) + ',' +
        QuotedStr(MyQImportkolek_bi.AsString) + ',' +
        MyQImportjml_pinjaman.AsString + ',' +
        MyQImportbaki_debet.AsString + ',' +
        MyQImportjumlah_tunggakan_pokok.AsString + ',' +
        MyQImportjumlah_tunggakan_bunga.AsString + ',' +
        QuotedStr(MyQImportjenis_agunan.AsString) + ',' +
        DateToStrSQL(MyQImportjangka_waktu_mulai.AsDateTime)  + ',' +
        DateToStrSQL(MyQImportjangka_waktu_jatuh_tempo.AsDateTime) + ',' +
        QuotedStr(MyQImportkategori_usaha.AsString) +
        ')'
      );
    end
    else
    begin
      { ==== UPDATE ==== }
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.lps_dk_f0003 SET ' +
        'nasabah_id=' + QuotedStr(MyQImportnasabah_id.AsString) +
        ', jenis=' + QuotedStr(MyQImportjenis_kewajiban.AsString) +
        ', kolektibilitas=' + QuotedStr(MyQImportkolek_bi.AsString) +
        ', jml_pinjaman=' + MyQImportjml_pinjaman.AsString +
        ', baki_debet=' + MyQImportbaki_debet.AsString +
        ', jumlah_tunggakan_pokok=' + MyQImportjumlah_tunggakan_pokok.AsString +
        ', jumlah_tunggakan_bunga=' + MyQImportjumlah_tunggakan_bunga.AsString +
        ', jenis_agunan=' + QuotedStr(MyQImportjenis_agunan.AsString) +
        ', tgl_realisasi=' + DateToStrSQL(MyQImportjangka_waktu_mulai.AsDateTime) +
        ', tgl_jatuh_tempo=' +  DateToStrSQL(MyQImportjangka_waktu_jatuh_tempo.AsDateTime) +
        ', kategori_usaha=' + QuotedStr(MyQImportkategori_usaha.AsString) +
        ' WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)
      );
    end;

    MyQImport.Next;
    sGauge1.Progress := sGauge1.Progress + 1;
    Application.ProcessMessages;
  end;

  sGauge1.Visible := False;
  Pesan(1, 'Proses Import Data Kredit Selesai...');
end;



end.
