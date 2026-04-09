unit FormLps0002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, sGauge, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MyAccess, Mask, sMaskEdit, sCustomComboEdit,
  sCurrEdit, sCurrencyEdit, sLabel, Math,
  QExport4, QExport4XLS, QExport4Dialog, sEdit, QImport3, QImport3XLS;

type
  Tfr_FormLps0002 = class(Tfr_template)
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
    dsMyQDaftarSimpananNasabah: TMyDataSource;
    MyQDaftarSimpananNasabah: TMyQuery;
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
    MyQDaftarSimpananNasabahjumlah_pemilik_rekening: TIntegerField;
    MyQDaftarSimpananNasabahnasabah_id: TStringField;
    MyQDaftarSimpananNasabahkode_integrasi: TStringField;
    MyQDaftarSimpananNasabahno_rekening: TStringField;
    MyQDaftarSimpananNasabahtgl_mulai_atau_tgl_aro_terakhir: TDateField;
    MyQDaftarSimpananNasabahsuku_bunga: TStringField;
    MyQDaftarSimpananNasabahsuku_bunga_val: TFloatField;
    MyQDaftarSimpananNasabahbiaya_cashback: TFloatField;
    MyQDaftarSimpananNasabahtingkat_bunga_penjaminan_lps: TFloatField;
    MyQDaftarSimpananNasabahkategori_tingkat_bunga_simpanan: TStringField;
    MyQDaftarSimpananNasabahnominal_blokir: TFloatField;
    MyQDaftarSimpananNasabahalasan_blokir: TStringField;
    MyQDaftarSimpananNasabahsaldo_akhir_bunga_bmhd: TFloatField;
    MyQDaftarSimpananNasabahtgl_akru_terakhir: TDateField;
    MyQDaftarSimpananNasabahtanggal_jt: TDateField;
    MyQImportD: TStringField;
    MyQImportklasifikasi_rekening: TStringField;
    MyQImportjumlah_pemilik_rekening: TStringField;
    MyQImportnasabah_id: TStringField;
    MyQImportjenis_simpanan: TStringField;
    MyQImportno_rekening: TStringField;
    MyQImportstatus_dana: TStringField;
    MyQImporttanggal_mulai_atau_tanggal_aro_terakhir: TStringField;
    MyQImportjenis_tingkat_bunga: TStringField;
    MyQImporttingkat_bunga: TFloatField;
    MyQImporttingkat_bunga_penjaminan_lps: TStringField;
    MyQImportkategori_tingkat_bunga_simpanan: TStringField;
    MyQImportsaldo_simpanan: TFloatField;
    MyQImportnominal_blokir: TFloatField;
    MyQImportalasan_blokir: TStringField;
    MyQImportbunga_akrual: TFloatField;
    MyQImporttanggal_akrual_terakhir: TStringField;
    MyQImporttanggal_jatuh_tempo: TStringField;
    MyQDaftarSimpananNasabahstatus_dana: TStringField;
    MyQDaftarSimpananNasabahsaldo_akhir: TFloatField;
    MyQImportcashback: TFloatField;
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
  fr_FormLps0002: Tfr_FormLps0002;
  dTglProses0002: TDate;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, EntryFormLps0002;

{$R *.dfm}

function SafeNum(const F: TField): string;
begin
  if (F = nil) or F.IsNull or (Trim(F.AsString) = '') then
    Result := 'NULL'
  else
    Result := F.AsString; // numeric TANPA tanda petik
end;

procedure Tfr_FormLps0002.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormLps0002.bt_deleteClick(Sender: TObject);
begin
  inherited;
  if (MyQDaftarSimpananNasabah.RecordCount=0) or (not MyQDaftarSimpananNasabah.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

  if Pesan(3,'Anda sudah yakin menghapus data ini ?') then
    begin

      UpdateUserLog(Self.Name, True,'Hapus Rekening=' + MyQDaftarSimpananNasabahno_rekening.Text +
      ' Nasabah ID=' + MyQDaftarSimpananNasabahnasabah_id.Text +' Kode Integrasi=' + MyQDaftarSimpananNasabahkode_integrasi.Text);
      try
          MyExecuteSQL(
            'DELETE FROM ' + cDb2 + '.lps_dsn_f0002 ' +
            'WHERE no_rekening = ' + QuotedStr(MyQDaftarSimpananNasabahno_rekening.Text));
      except
        on E: EDatabaseError do
          begin
            //Pesan(2,SubStr(E.Message,At());
          end;
      end;

      if MyQDaftarSimpananNasabah.Active then
        MyQDaftarSimpananNasabah.Refresh
      else
        MyQDaftarSimpananNasabah.Open;
    end;
end;

procedure Tfr_FormLps0002.bt_editClick(Sender: TObject);
begin
  inherited;
  if (MyQDaftarSimpananNasabah.RecordCount=0) or (not MyQDaftarSimpananNasabah.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

    if Application.FindComponent('fr_EntryFormLps0002') = nil then
      Application.CreateForm(Tfr_EntryFormLps0002, fr_EntryFormLps0002);

    fr_EntryFormLps0002.MyQTemp.MacroByName('WHERE').Value :=
      'WHERE no_rekening = ' + QuotedStr(MyQDaftarSimpananNasabahno_rekening.Text) +
      '  AND nasabah_id = ' + QuotedStr(MyQDaftarSimpananNasabahnasabah_id.Text);

    {
    fr_EntryFormLps0002.MyQTemp.MacroByName('WHERE').Value :=
      'WHERE a.no_rekening = ' + QuotedStr(MyQDaftarSimpananNasabahno_rekening.Text) +
      '  AND a.nasabah_id = ' + QuotedStr(MyQDaftarSimpananNasabahnasabah_id.Text) +
      '  AND a.flag_detail = ' + QuotedStr(MyQDaftarSimpananNasabahflag_detail.Text);
    }

    if fr_EntryFormLps0002.MyQTemp.Active then
      fr_EntryFormLps0002.MyQTemp.Refresh
    else
      fr_EntryFormLps0002.MyQTemp.Open;

    with fr_EntryFormLps0002 do
    begin
      JenisTrans0002 := '2';

      jumlah_pemilik_rekening.MaxLength := MyQTempjumlah_pemilik_rekening.Size;
      nasabah_id.MaxLength := MyQTempnasabah_id.Size;
      no_rekening.MaxLength := MyQTempno_rekening.Size;
      staus_dana.MaxLength := MyQTempstaus_dana.Size;
      suku_bunga.MaxLength := MyQTempsuku_bunga.Size;
      suku_bunga_val.MaxLength := MyQTempsuku_bunga_val.Size;
      biaya_cashback.MaxLength := MyQTempbiaya_cashback.Size;
      tingkat_bunga_penjaminan_lps.MaxLength := MyQTemptingkat_bunga_penjaminan_lps.Size;
      kategori_tingkat_bunga_simpanan.MaxLength := MyQTempkategori_tingkat_bunga_simpanan.Size;
      alasan_blokir.MaxLength := MyQTempalasan_blokir.Size;

      jumlah_pemilik_rekening.Text := MyQTempjumlah_pemilik_rekening.AsString;
      nasabah_id.Text := MyQTempnasabah_id.AsString;
      no_rekening.Text := MyQTempno_rekening.AsString;
      staus_dana.Text := MyQTempstaus_dana.AsString;
      staus_danaExit(Sender);
      tgl_mulai_atau_tgl_aro_terakhir.Date := MyQTemptgl_mulai_atau_tgl_aro_terakhir.AsDateTime;
      suku_bunga.Text := MyQTempsuku_bunga.AsString;
      suku_bunga_val.Value := MyQTempsuku_bunga_val.Value;
      biaya_cashback.Value := MyQTempbiaya_cashback.Value;
      tingkat_bunga_penjaminan_lps.Value := MyQTemptingkat_bunga_penjaminan_lps.Value;
      kategori_tingkat_bunga_simpanan.Text := MyQTempkategori_tingkat_bunga_simpanan.AsString;
      kategori_tingkat_bunga_simpananExit(Sender);
      jml_deposito.Value := MyQTempjml_deposito.Value;
      nominal_blokir.Value := MyQTempnominal_blokir.Value;
      alasan_blokir.Text := MyQTempalasan_blokir.AsString;
      alasan_blokirExit(Sender);
      saldo_akhir_bunga_bmhd.Value := MyQTempsaldo_akhir_bunga_bmhd.Value;

      tgl_akru_terakhir.Date := MyQTemptgl_akru_terakhir.AsDateTime;
      tanggal_jt.Date := MyQTemptanggal_jt.AsDateTime;
    end;

  fr_EntryFormLps0002.Tag := 0;
  fr_EntryFormLps0002.ShowModal;
  if fr_EntryFormLps0002.Tag=2 then
    begin
      with fr_EntryFormLps0002 do
        begin
        MyExecuteSQL('UPDATE ' + cDb2 + '.lps_dsn_f0002 ' +
          'SET ' +
          '`jumlah_pemilik_rekening`=' + QuotedStr(jumlah_pemilik_rekening.Text) +
          ', `nasabah_id`=' + QuotedStr(nasabah_id.Text) +
          ', `no_rekening`=' + QuotedStr(no_rekening.Text) +
          ', `status_dana`=' + QuotedStr(staus_dana.Text) +   // <== baris ini aman
          ', `tgl_mulai_atau_tgl_aro_terakhir`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_mulai_atau_tgl_aro_terakhir.Date)) +
          ', `suku_bunga`=' + FloatToStr(suku_bunga.Value) +
          ', `suku_bunga_val`=' + FloatToStr(suku_bunga_val.Value) +
          ', `biaya_cashback`=' + FloatToStr(biaya_cashback.Value) +
          ', `tingkat_bunga_penjaminan_lps`=' + FloatToStr(tingkat_bunga_penjaminan_lps.Value) +
          ', `kategori_tingkat_bunga_simpanan`=' + QuotedStr(kategori_tingkat_bunga_simpanan.Text) +
          ', `saldo_akhir`=' + FloatToStr(jml_deposito.Value) +
          ', `nominal_blokir`=' + FloatToStr(nominal_blokir.Value) +
          ', `alasan_blokir`=' + QuotedStr(alasan_blokir.Text) +
          ', `saldo_akhir_bunga_bmhd`=' + FloatToStr(saldo_akhir_bunga_bmhd.Value) +
          ', `tgl_akru_terakhir`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_akru_terakhir.Date)) +
          ', `tanggal_jt`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tanggal_jt.Date)) +
          ' WHERE `no_rekening`=' + QuotedStr(MyQDaftarSimpananNasabahno_rekening.Text) +
          ' AND `nasabah_id`=' + QuotedStr(MyQDaftarSimpananNasabahnasabah_id.Text));
        end;
      if MyQDaftarSimpananNasabah.Active then
        MyQDaftarSimpananNasabah.Refresh
      else
        MyQDaftarSimpananNasabah.Open;
    end;

  fr_EntryFormLps0002.Free;
  fr_EntryFormLps0002 := nil;
        end;

procedure Tfr_FormLps0002.bt_exportClick(Sender: TObject);
var
  i: Integer;
  nSheet1: TxlsSheet;
begin
  inherited;
  if not Pesan(3, 'Yakin ingin mengexport data dalam bentuk file excel ?') then
    Exit;

  if (MyQDaftarSimpananNasabah.RecordCount = 0) then
  begin
    Pesan(2,'Maaf, Data masih kosong !, Export tidak dapat diproses...!');
    Exit;
  end;

  if MyQDaftarSimpananNasabah.Active then
    MyQDaftarSimpananNasabah.Refresh
  else
    MyQDaftarSimpananNasabah.Open;

  dm_bpr1.sSaveDialog1.InitialDir := 'D:\imam\LPS\LPS\laporan_Lps';
  dm_bpr1.sSaveDialog1.FileName   := 'LaporanLps0002' + FormatDateTime('ddMMyyyyhhmmss', Now) + '.xls';

  if dm_bpr1.sSaveDialog1.Execute() then
  begin
    nSheet1 := dm_bpr1.QExport4XLS1.Sheets.Add;
    nSheet1.Title := SubStr(Caption, At('-', Caption)+1, Length(Caption));
    nSheet1.ExportedFields.Clear;
    nSheet1.Captions.Clear;
    nSheet1.ColumnsWidth.Clear;
    nSheet1.DataSet := MyQDaftarSimpananNasabah;
    dm_bpr1.QExport4XLS1.ShowFile := True;

    for i := 0 to MyQDaftarSimpananNasabah.FieldCount - 1 do
    begin
      with MyQDaftarSimpananNasabah.Fields[i] do
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

procedure Tfr_FormLps0002.bt_openClick(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    begin
      if MyQDaftarSimpananNasabah.Active then
        MyQDaftarSimpananNasabah.Refresh
      else
        MyQDaftarSimpananNasabah.Open;

      nama_file.Text := OpenDialog1.FileName;
      QImport3XLS1.FileName := OpenDialog1.FileName;
      if Pesan(3,'Jalankan Proses Import ?') then
      begin
        QImport3XLS1.Execute;
      end;
    end;
end;

procedure Tfr_FormLps0002.bt_searchClick(Sender: TObject);
var
  cNoRek: string;
begin
  inherited;

  // *** HAPUS cb_kantorClick(Sender), karena itu me-reload LIMIT 30 ***
  // cb_kantorClick(Sender);   <-- ini dihapus

  // Load FULL DATA (tanpa LIMIT)
  MyQDaftarSimpananNasabah.Close;
  MyQDaftarSimpananNasabah.SQL.Text :=
    'SELECT * FROM lps_dsn_f0002';
  MyQDaftarSimpananNasabah.Open;

  // --- Lanjutkan fungsi Locate Anda ---
  if not MyQDaftarSimpananNasabah.Locate('no_rekening', Trim(Edit1.Text),
     [loCaseInsensitive, loPartialKey]) then
  begin
    cNoRek := SelectRow(
      'SELECT no_rekening '+
      'FROM lps_dsn_f0002 '+
      'WHERE REPLACE(no_rekening, "-", "")='+QuotedStr(Edit1.Text)
    );

    if not Empty(cNoRek) then
      MyQDaftarSimpananNasabah.Locate('no_rekening', cNoRek,
        [loCaseInsensitive, loPartialKey]);
  end;
end;

procedure Tfr_FormLps0002.bt_tambahClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_EntryFormLps0002') = nil then
    Application.CreateForm(Tfr_EntryFormLps0002, fr_EntryFormLps0002);

  fr_EntryFormLps0002.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE no_rekening=' + QuotedStr(MyQDaftarSimpananNasabahno_rekening.Text);

  if fr_EntryFormLps0002.MyQTemp.Active then
    fr_EntryFormLps0002.MyQTemp.Refresh
  else
    fr_EntryFormLps0002.MyQTemp.Open;

  with fr_EntryFormLps0002 do
  begin
    JenisTrans0002 := '1';

    jumlah_pemilik_rekening.MaxLength := MyQTempjumlah_pemilik_rekening.Size;
    nasabah_id.MaxLength := MyQTempnasabah_id.Size;
    no_rekening.MaxLength := MyQTempno_rekening.Size;
    staus_dana.MaxLength := MyQTempstaus_dana.Size;
    suku_bunga.MaxLength := MyQTempsuku_bunga.Size;
    suku_bunga_val.MaxLength := MyQTempsuku_bunga_val.Size;
    biaya_cashback.MaxLength := MyQTempbiaya_cashback.Size;
    tingkat_bunga_penjaminan_lps.MaxLength := MyQTemptingkat_bunga_penjaminan_lps.Size;
    kategori_tingkat_bunga_simpanan.MaxLength := MyQTempkategori_tingkat_bunga_simpanan.Size;
    jml_deposito.MaxLength := MyQTempjml_deposito.Size;
    nominal_blokir.MaxLength := MyQTempnominal_blokir.Size;
    alasan_blokir.MaxLength := MyQTempalasan_blokir.Size;
    saldo_akhir_bunga_bmhd.MaxLength := MyQTempsaldo_akhir_bunga_bmhd.Size;

    jumlah_pemilik_rekening.Value := 0;
    nasabah_id.Text := '';
    no_rekening.Text := '';
    staus_dana.Text := '';
    tgl_mulai_atau_tgl_aro_terakhir.Date := Date;
    suku_bunga.Value := 0;
    suku_bunga_val.Value := 0;
    biaya_cashback.Value := 0;
    tingkat_bunga_penjaminan_lps.Value := 0;
    kategori_tingkat_bunga_simpanan.Text := '';
    jml_deposito.Value := 0;
    nominal_blokir.Value := 0;
    alasan_blokir.Text := '';
    saldo_akhir_bunga_bmhd.Value := 0;
    tgl_akru_terakhir.Date := Date;
    tanggal_jt.Date := Date;
  end;

  fr_EntryFormLps0002.Tag := 0;
  fr_EntryFormLps0002.ShowModal;

  if fr_EntryFormLps0002.Tag = 2 then
  begin
    with fr_EntryFormLps0002 do
    try
      MyExecuteSQL(
      'INSERT INTO '+cDb2+'.lps_dsn_f0002 ('+
      '`jumlah_pemilik_rekening`, `nasabah_id`, `kode_integrasi`, `no_rekening`, '+
      '`status_dana`, `tgl_mulai_atau_tgl_aro_terakhir`, `suku_bunga`, `suku_bunga_val`, `biaya_cashback`, '+
      '`tingkat_bunga_penjaminan_lps`, `kategori_tingkat_bunga_simpanan`, `saldo_akhir`, `nominal_blokir`, `alasan_blokir`, '+
      '`saldo_akhir_bunga_bmhd`, `tgl_akru_terakhir`, `tanggal_jt`, `created_at`, `updated_at`) VALUES ('+
      FormatFloat('0.######', jumlah_pemilik_rekening.Value)+','+
      QuotedStr(nasabah_id.Text)+','+
      QuotedStr(no_rekening.Text)+','+
      QuotedStr(staus_dana.Text)+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_mulai_atau_tgl_aro_terakhir.Date))+','+
      FormatFloat('0.######', suku_bunga.Value)+','+
      FormatFloat('0.######', suku_bunga_val.Value)+','+
      FormatFloat('0.######', biaya_cashback.Value)+','+
      FormatFloat('0.######', tingkat_bunga_penjaminan_lps.Value)+','+
      QuotedStr(kategori_tingkat_bunga_simpanan.Text)+','+
      FormatFloat('0.######', jml_deposito.Value)+','+
      FormatFloat('0.######', nominal_blokir.Value)+','+
      QuotedStr(alasan_blokir.Text)+','+
      FormatFloat('0.######', saldo_akhir_bunga_bmhd.Value)+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_akru_terakhir.Date))+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd', tanggal_jt.Date))+','+
      'NOW(), NOW()'+
      ') ON DUPLICATE KEY UPDATE '+
      'jumlah_pemilik_rekening='+FormatFloat('0.######', jumlah_pemilik_rekening.Value)+','+
      'nasabah_id='+QuotedStr(nasabah_id.Text)+','+
      'status_dana='+QuotedStr(staus_dana.Text)+','+
      'tgl_mulai_atau_tgl_aro_terakhir='+QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_mulai_atau_tgl_aro_terakhir.Date))+','+
      'suku_bunga='+FormatFloat('0.######', suku_bunga.Value)+','+
      'suku_bunga_val='+FormatFloat('0.######', suku_bunga_val.Value)+','+
      'biaya_cashback='+FormatFloat('0.######', biaya_cashback.Value)+','+
      'tingkat_bunga_penjaminan_lps='+FormatFloat('0.######', tingkat_bunga_penjaminan_lps.Value)+','+
      'kategori_tingkat_bunga_simpanan='+QuotedStr(kategori_tingkat_bunga_simpanan.Text)+','+
      'saldo_akhir='+FormatFloat('0.######', jml_deposito.Value)+','+
      'nominal_blokir='+FormatFloat('0.######', nominal_blokir.Value)+','+
      'alasan_blokir='+QuotedStr(alasan_blokir.Text)+','+
      'saldo_akhir_bunga_bmhd='+FormatFloat('0.######', saldo_akhir_bunga_bmhd.Value)+','+
      'tgl_akru_terakhir='+QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_akru_terakhir.Date))+','+
      'tanggal_jt='+QuotedStr(FormatDateTime('yyyy-mm-dd', tanggal_jt.Date))+','+
      'updated_at = NOW()');
    except
      on E: Exception do
        ShowMessage('SQL ERROR: ' + E.Message);
    end;

    if MyQDaftarSimpananNasabah.Active then
      MyQDaftarSimpananNasabah.Refresh
    else
      MyQDaftarSimpananNasabah.Open;
  end;

  fr_EntryFormLps0002.Free;
  fr_EntryFormLps0002 := nil;
end;

procedure Tfr_FormLps0002.cb_kantorClick(Sender: TObject);
begin
  inherited;
  if MyQLapKodeKantorsandi_cabang.AsString='000' then
    MyQDaftarSimpananNasabah.MacroByName('WHERE').Value := ''
  else
    MyQDaftarSimpananNasabah.MacroByName('WHERE').Value :=
      'WHERE `sandi_kantor`='+QuotedStr(MyQLapKodeKantorsandi_cabang.AsString);
  if MyQDaftarSimpananNasabah.Active then
    MyQDaftarSimpananNasabah.Refresh
  else
    MyQDaftarSimpananNasabah.Open;
end;

procedure Tfr_FormLps0002.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if bt_edit.Enabled then
    bt_editClick(Sender);
end;

procedure Tfr_FormLps0002.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfr_FormLps0002.FormCreate(Sender: TObject);
begin
  inherited;
    if MyQLapKodeKantor.Active then
    MyQLapKodeKantor.Refresh
  else
    MyQLapKodeKantor.Open;

  cb_kantor.KeyValue := '*';
  cb_kantorClick(Sender);
end;

procedure Tfr_FormLps0002.QImport3XLS1AfterImport(Sender: TObject);
begin
  inherited;
    Pesan(1, 'Proses Import Selesai...');
    sGauge1.Visible := False;
    MyQDaftarSimpananNasabah.EnableControls;

  if MyQDaftarSimpananNasabah.Active then
    MyQDaftarSimpananNasabah.Refresh
  else
    MyQDaftarSimpananNasabah.Open;
end;

procedure Tfr_FormLps0002.QImport3XLS1BeforeImport(Sender: TObject);
begin
  inherited;
    sGauge1.Visible := True;
    sGauge1.Progress := 0;
    sGauge1.MaxValue := QImport3XLS1.TotalRecCount;
    MyQDaftarSimpananNasabah.DisableControls;
end;

procedure Tfr_FormLps0002.QImport3XLS1UserDefinedImport(Sender: TObject;
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

          if (i=0) then
          begin
            cTempSqlI := cTempSqlI + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ' `jumlah_pemilik_rekening`=' + QuotedStr(cTemp);
          end
          else if (i=1) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `nasabah_id`=' + QuotedStr(cTemp);
          end
          else if (i=2) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `kode_integrasi`=' + QuotedStr(cTemp);
          end
          else if (i=3) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `no_rekening`=' + QuotedStr(cTemp);
          end
          else if (i=4) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ' `staus_dana`=' + QuotedStr(cTemp);
          end
          else if (i=5) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `tgl_mulai_atau_tgl_aro_terakhir`=' + QuotedStr(cTemp);
          end
          else if (i=6) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `suku_bunga`=' + QuotedStr(cTemp);
          end
          else if (i=7) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `suku_bunga_val`=' + QuotedStr(cTemp);
          end
          else if (i=8) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `biaya_cashback`=' + QuotedStr(cTemp);
          end
          else if (i=9) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `tingkat_bunga_penjaminan_lps`=' + QuotedStr(cTemp);
          end
          else if (i=10) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `kategori_tingkat_bunga_simpanan`=' + QuotedStr(cTemp);
          end
          else if (i=11) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `jml_deposito`=' + QuotedStr(cTemp);
          end
          else if (i=12) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `nominal_blokir`=' + QuotedStr(cTemp);
          end
          else if (i=13) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `alasan_blokir`=' + QuotedStr(cTemp);
          end
          else if (i=14) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `saldo_akhir_bunga_bmhd`=' + QuotedStr(cTemp);
          end
          else if (i=15) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `tgl_akru_terakhir`=' + QuotedStr(cTemp);
          end
          else if (i=16) then
          begin
            cTempSqlI := cTempSqlI + ', ' + QuotedStr(cTemp);
            cTempSqlU := cTempSqlU + ', `tanggal_jt`=' + QuotedStr(cTemp);
          end;
        end;

      if (not Empty(cTempSqlU)) then
      begin
        MyExecuteSQL('INSERT INTO ' + cDb2 + '.lps_dsn_f0002 ' +
          ' (`jumlah_pemilik_rekening`, `nasabah_id`, `kode_integrasi`, `no_rekening`, ' +
          ' `staus_dana`, `tgl_mulai_atau_tgl_aro_terakhir`, `suku_bunga`, `suku_bunga_val`, ' +
          ' `biaya_cashback`, `tingkat_bunga_penjaminan_lps`, `kategori_tingkat_bunga_simpanan`, ' +
          ' `jml_deposito`, `nominal_blokir`, `alasan_blokir`, `saldo_akhir_bunga_bmhd`, ' +
          ' `tgl_akru_terakhir`, `tanggal_jt`) VALUES (' +
          cTempSqlI +
          ') ON DUPLICATE KEY UPDATE ' + cTempSqlU);

        cTempSqlI := '';
        cTempSqlU := '';
      end;

  Application.ProcessMessages;
end;

procedure Tfr_FormLps0002.qmyClick(Sender: TObject);
var
  cCount      : string;
  cTglMulai   : string;
  cTglAkrual  : string;
  cTglJT     : string;
  dtTmp       : TDateTime;
begin
  inherited;

  if not Pesan(3, 'Proses Import Data Simpanan dari Database Core ?') then
    Exit;

  MyQImport.MacroByName('TGL').Value:=DateToStrSQL(dTglProses0002);

  if MyQImport.Active then
    MyQImport.Refresh
  else
    MyQImport.Open;

  if MyQImport.RecordCount = 0 then
  begin
    Pesan(2, 'Maaf tidak ada data...!');
    Exit;
  end;

  MyExecuteSQL( 'UPDATE ' + cDb2 + '.`lps_dsn_f0002` SET saldo_akhir=0 ');

  sGauge1.Visible  := True;
  sGauge1.MaxValue := MyQImport.RecordCount;
  sGauge1.Progress := 0;

  while not MyQImport.Eof do
  begin
    { ==== TANGGAL MULAI / ARO TERAKHIR ==== }
    if MyQImporttanggal_mulai_atau_tanggal_aro_terakhir.IsNull then
      cTglMulai := 'NULL'
    else if TryStrToDate(MyQImporttanggal_mulai_atau_tanggal_aro_terakhir.AsString, dtTmp) then
    begin
      if dtTmp <= EncodeDate(1900,1,1) then
        cTglMulai := 'NULL'
      else
        cTglMulai := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTmp));
    end
    else
      cTglMulai := 'NULL';

    { ==== TANGGAL AKRUAL TERAKHIR ==== }
    if MyQImporttanggal_akrual_terakhir.IsNull then
      cTglAkrual := 'NULL'
    else if TryStrToDate(MyQImporttanggal_akrual_terakhir.AsString, dtTmp) then
    begin
      if dtTmp <= EncodeDate(1900,1,1) then
        cTglAkrual := 'NULL'
      else
        cTglAkrual := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTmp));
    end
    else
      cTglAkrual := 'NULL';

    { ==== TANGGAL JATUH TEMPO ==== }
    if MyQImporttanggal_jatuh_tempo.IsNull then
      cTglJT := 'NULL'
    else if TryStrToDate(MyQImporttanggal_jatuh_tempo.AsString, dtTmp) then
    begin
      if dtTmp <= EncodeDate(1900,1,1) then
        cTglJT := 'NULL'
      else
        cTglJT := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTmp));
    end
    else
      cTglJT := 'NULL';

    { ==== CEK DATA ==== }
    cCount := SelectRow(
      'SELECT COUNT(*) FROM ' + cDb2 + '.`lps_dsn_f0002` ' +
      'WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)+
      ' AND kode_integrasi='+ QuotedStr(MyQImportjenis_simpanan.AsString)
    );

    { ==== INSERT / UPDATE ==== }
    if StrToIntDef(cCount, 0) = 0 then
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.`lps_dsn_f0002` (' +
        'type_join, jumlah_pemilik_rekening, nasabah_id, kode_integrasi, no_rekening, ' +
        'status_dana, tgl_mulai_atau_tgl_aro_terakhir, suku_bunga, suku_bunga_val, biaya_cashback, ' +
        'tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_akhir, nominal_blokir, alasan_blokir, ' +
        'saldo_akhir_bunga_bmhd, tgl_akru_terakhir, tanggal_jt) VALUES (' +

        QuotedStr(MyQImportklasifikasi_rekening.AsString) + ',' +
        QuotedStr(MyQImportjumlah_pemilik_rekening.AsString) + ',' +
        QuotedStr(MyQImportnasabah_id.AsString) + ',' +
        QuotedStr(MyQImportjenis_simpanan.AsString) + ',' +
        QuotedStr(MyQImportno_rekening.AsString) + ',' +
        QuotedStr(MyQImportstatus_dana.AsString) + ',' +
        cTglMulai + ',' +
        QuotedStr(MyQImportjenis_tingkat_bunga.AsString) + ',' +
        MyQImporttingkat_bunga.AsString + ',' +
        FloatToStr(MyQImportcashback.AsFloat)+ ',' +
        MyQImporttingkat_bunga_penjaminan_lps.AsString + ',' +
        QuotedStr(MyQImportkategori_tingkat_bunga_simpanan.AsString) + ',' +
        MyQImportsaldo_simpanan.AsString + ',' +
        MyQImportnominal_blokir.AsString + ',' +
        QuotedStr(MyQImportalasan_blokir.AsString) + ',' +
        MyQImportbunga_akrual.AsString + ',' +
        cTglAkrual + ',' +
        cTglJT +
        ')'
      );
    end
    else
    begin
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.`lps_dsn_f0002` SET ' +
        'type_join=' + QuotedStr(MyQImportklasifikasi_rekening.AsString) +
        ', jumlah_pemilik_rekening=' + QuotedStr(MyQImportjumlah_pemilik_rekening.AsString) +
        //', nasabah_id=' + QuotedStr(MyQImportnasabah_id.AsString) +
        // ', kode_integrasi=' + QuotedStr(MyQImportjenis_simpanan.AsString) +
        ', status_dana=' + QuotedStr(MyQImportstatus_dana.AsString) +
        ', tgl_mulai_atau_tgl_aro_terakhir=' + cTglMulai +
        ', suku_bunga=' + QuotedStr(MyQImportjenis_tingkat_bunga.AsString) +
        ', suku_bunga_val=' + MyQImporttingkat_bunga.AsString +
        ', biaya_cashback=' + FloatToStr(MyQImportcashback.AsFloat) +
        ', tingkat_bunga_penjaminan_lps=' + MyQImporttingkat_bunga_penjaminan_lps.AsString +
        ', kategori_tingkat_bunga_simpanan=' + QuotedStr(MyQImportkategori_tingkat_bunga_simpanan.AsString) +
        ', saldo_akhir=' + MyQImportsaldo_simpanan.AsString +
        ', nominal_blokir=' + MyQImportnominal_blokir.AsString +
        ', alasan_blokir=' + QuotedStr(MyQImportalasan_blokir.AsString) +
        ', saldo_akhir_bunga_bmhd=' + MyQImportbunga_akrual.AsString +
        ', tgl_akru_terakhir=' + cTglAkrual +
        ', tanggal_jt=' + cTglJT +
        ' WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)+
        ' AND kode_integrasi='+ QuotedStr(MyQImportjenis_simpanan.AsString)
      );
    end;

    MyQImport.Next;
    sGauge1.Progress := sGauge1.Progress + 1;
    Application.ProcessMessages;
  end;

  sGauge1.Visible := False;
  Pesan(1, 'Proses Import Data Simpanan Selesai...');
end;


end.
