unit FormLps0001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, sGauge, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS, DBAccess, MyAccess, Mask, sMaskEdit, sCustomComboEdit,
  sCurrEdit, sCurrencyEdit, sLabel, Math,
  QExport4, QExport4XLS, QExport4Dialog, sEdit, QImport3, QImport3XLS;

type
  Tfr_FormLPS0001 = class(Tfr_template)
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
    dsMyQDaftarDataNasabah: TMyDataSource;
    MyQDaftarDataNasabah: TMyQuery;
    dsLapKodeKantor: TMyDataSource;
    MyQLapKodeKantor: TMyQuery;
    MyQLapKodeKantorsandi_cabang: TStringField;
    MyQLapKodeKantorkode_kantor: TStringField;
    MyQLapKodeKantornama_kantor: TStringField;
    MyQLapKodeKantornama_database: TStringField;
    MyQImport: TMyQuery;
    OpenDialog1: TOpenDialog;
    QImport3XLS1: TQImport3XLS;
    MyQDaftarDataNasabahflag_detail: TStringField;
    MyQDaftarDataNasabahnasabah_id: TStringField;
    MyQDaftarDataNasabahnama_nasabah: TStringField;
    MyQDaftarDataNasabahjenis_id: TStringField;
    MyQDaftarDataNasabahno_id: TStringField;
    MyQDaftarDataNasabahnama_ibu_kandung: TStringField;
    MyQDaftarDataNasabahtgl_lahir: TDateField;
    MyQDaftarDataNasabahno_id2: TStringField;
    MyQDaftarDataNasabahnama_pengurus: TStringField;
    MyQDaftarDataNasabahjenis_identitas: TStringField;
    MyQDaftarDataNasabahnomor_identitas: TStringField;
    MyQDaftarDataNasabahalamat: TStringField;
    MyQDaftarDataNasabahkota_kab: TStringField;
    MyQDaftarDataNasabahwni: TStringField;
    MyQDaftarDataNasabahtelpon: TStringField;
    MyQDaftarDataNasabahflag_fraud: TStringField;
    MyQDaftarDataNasabahhub_dgn_bank: TStringField;
    MyQDaftarDataNasabahslik_kode_hub_ljk: TStringField;
    MyQDaftarDataNasabahslik_kode_gol_debitur: TStringField;
    cb_kantor: TDBLookupComboBox;
    Label13: TLabel;
    MyQImportnasabah_id: TStringField;
    MyQImportnama_nasabah: TStringField;
    MyQImportjenis_identitas: TStringField;
    MyQImportnomor_identitas: TStringField;
    MyQImportnama_ibu_kandung: TStringField;
    MyQImporttanggal_lahir: TStringField;
    MyQImportnomor_identitas_badan_hukum: TStringField;
    MyQImportnama_lengkap_pemegang_kuasa: TStringField;
    MyQImportjenis_identitas_pemegang_kuasa: TStringField;
    MyQImportnomor_identitas_pemegang_kuasa: TStringField;
    MyQImportalamat: TStringField;
    MyQImportkota_kab: TStringField;
    MyQImportkewarganegaraan: TStringField;
    MyQImportnomor_telepon: TStringField;
    MyQImportflag_fraud: TStringField;
    MyQImporthubungan_dengan_bank: TStringField;
    MyQImporthubungan_dengan_pihak_terkait: TStringField;
    MyQImportgolongan_nasabah: TStringField;
    procedure bt_tambahClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_editClick(Sender: TObject);
    procedure bt_deleteClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure qmyClick(Sender: TObject);
    procedure bt_openClick(Sender: TObject);
    procedure QImport3XLS1AfterImport(Sender: TObject);
    procedure QImport3XLS1BeforeImport(Sender: TObject);
    procedure QImport3XLS1UserDefinedImport(Sender: TObject; Row: TQImportRow);
    procedure cb_kantorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormLPS0001: Tfr_FormLPS0001;
  dTglProses0001: TDate;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, EntryFormLps0001;

{$R *.dfm}

procedure Tfr_FormLPS0001.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormLPS0001.bt_deleteClick(Sender: TObject);
begin
  inherited;

  if (not MyQDaftarDataNasabah.Active) or
     (MyQDaftarDataNasabah.RecordCount = 0) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Pesan(3, 'Anda sudah yakin menghapus data ini ?') then
  begin
    UpdateUserLog(Self.Name, True,
      'Hapus Data Nominatif: ' +
      'NasabahID=' + MyQDaftarDataNasabah.FieldByName('nasabah_id').AsString + ', ' +
      'Nama=' + MyQDaftarDataNasabah.FieldByName('nama_nasabah').AsString + ', ' +
      'NoIdentitas=' + MyQDaftarDataNasabah.FieldByName('nomor_identitas').AsString + ', ' +
      'NoID2=' + MyQDaftarDataNasabah.FieldByName('no_id2').AsString + ', ' +
      'HubunganBank=' + MyQDaftarDataNasabah.FieldByName('hub_dgn_bank').AsString);

    try
      MyExecuteSQL(
        'DELETE FROM ' + cDb2 + '.lps_dn_f0001 ' +
        'WHERE nasabah_id = ' + QuotedStr(MyQDaftarDataNasabah.FieldByName('nasabah_id').AsString));
    except
      on E: EDatabaseError do
      begin
        Pesan(2, 'Terjadi kesalahan saat menghapus data: ' + E.Message);
      end;
    end;

    if MyQDaftarDataNasabah.Active then
      MyQDaftarDataNasabah.Refresh
    else
      MyQDaftarDataNasabah.Open;
  end;
end;

procedure Tfr_FormLPS0001.bt_editClick(Sender: TObject);
begin
  inherited;

  if (MyQDaftarDataNasabah.RecordCount = 0) or (not MyQDaftarDataNasabah.Active) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Application.FindComponent('fr_EntryFormNasabah') = nil then
    Application.CreateForm(Tfr_EntryFormLPS0001, fr_EntryFormLPS0001);

  fr_EntryFormLPS0001.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDaftarDataNasabahnasabah_id.Text);

  if fr_EntryFormLPS0001.MyQTemp.Active then
    fr_EntryFormLPS0001.MyQTemp.Refresh
  else
    fr_EntryFormLPS0001.MyQTemp.Open;

  with fr_EntryFormLPS0001 do
  begin
    JenisTrans0001 := 'EDIT';

    nasabah_id.MaxLength := MyQTempnasabah_id.Size;
    nama_nasabah.MaxLength := MyQTempnama_nasabah.Size;
    jenis_id.MaxLength := MyQTempjenis_id.Size;
    no_id.MaxLength := MyQTempno_id.Size;
    nama_ibu_kandung.MaxLength := MyQTempnama_ibu_kandung.Size;
    no_id2.MaxLength := MyQTempno_id2.Size;
    nama_pengurus.MaxLength := MyQTempnama_pengurus.Size;
    jenis_identitas.MaxLength := MyQTempjenis_identitas.Size;
    nomor_identitas.MaxLength := MyQTempnomor_identitas.Size;
    alamat.MaxLength := MyQTempalamat.Size;
    kota_kab.MaxLength := MyQTempkota_kab.Size;
    wni.MaxLength := MyQTempwni.Size;
    telpon.MaxLength := MyQTemptelpon.Size;
    flag_fraud.MaxLength := MyQTempflag_fraud.Size;
    hub_dgn_bank.MaxLength := MyQTemphub_dgn_bank.Size;
    slik_kode_hub_ljk.MaxLength := MyQTempslik_kode_hub_ljk.Size;
    slik_kode_gol_debitur.MaxLength := MyQTempslik_kode_gol_debitur.Size;

    nasabah_id.Text := MyQTempnasabah_id.AsString;
    nama_nasabah.Text := MyQTempnama_nasabah.AsString;
    jenis_id.Text := MyQTempjenis_id.AsString;
    Jenis_idExit(Sender);
    no_id.Text := MyQTempno_id.AsString;
    nama_ibu_kandung.Text := MyQTempnama_ibu_kandung.AsString;
    tgl_lahir.Date := MyQTemptgl_lahir.AsDateTime;
    no_id2.Text := MyQTempno_id2.AsString;
    nama_pengurus.Text := MyQTempnama_pengurus.AsString;
    jenis_identitas.Text := MyQTempjenis_identitas.AsString;
    jenis_identitasExit(Sender);
    nomor_identitas.Text := MyQTempnomor_identitas.AsString;
    alamat.Text := MyQTempalamat.AsString;
    kota_kab.Text := MyQTempkota_kab.AsString;
    kota_kabExit(Sender);
    wni.Text := MyQTempwni.AsString;
    wniExit(Sender);
    telpon.Text := MyQTemptelpon.AsString;
    flag_fraud.Text := MyQTempflag_fraud.AsString;
    flag_fraudExit(Sender);
    hub_dgn_bank.Text := MyQTemphub_dgn_bank.AsString;
    hub_dgn_bankExit(Sender);
    slik_kode_hub_ljk.Text := MyQTempslik_kode_hub_ljk.AsString;
    slik_kode_hub_ljkExit(Sender);
    slik_kode_gol_debitur.Text := MyQTempslik_kode_gol_debitur.AsString;
    slik_kode_gol_debiturExit(Sender);
  end;

  fr_EntryFormLPS0001.Tag := 0;
  fr_EntryFormLPS0001.ShowModal;

  if fr_EntryFormLPS0001.Tag = 2 then
  begin
    with fr_EntryFormLPS0001 do
    begin
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.lps_dn_f0001 SET ' +
        '`nasabah_id`=' + QuotedStr(nasabah_id.Text) + ',' +
        '`nama_nasabah`=' + QuotedStr(nama_nasabah.Text) + ',' +
        '`jenis_id`=' + QuotedStr(jenis_id.Text) + ',' +
        '`no_id`=' + QuotedStr(no_id.Text) + ',' +
        '`nama_ibu_kandung`=' + QuotedStr(nama_ibu_kandung.Text) + ',' +
        '`tgl_lahir`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_lahir.Date)) + ',' +
        '`no_id2`=' + QuotedStr(no_id2.Text) + ',' +
        '`nama_pengurus`=' + QuotedStr(nama_pengurus.Text) + ',' +
        '`jenis_identitas`=' + QuotedStr(jenis_identitas.Text) + ',' +
        '`nomor_identitas`=' + QuotedStr(nomor_identitas.Text) + ',' +
        '`alamat`=' + QuotedStr(alamat.Text) + ',' +
        '`kota_kab`=' + QuotedStr(kota_kab.Text) + ',' +
        '`wni`=' + QuotedStr(wni.Text) + ',' +
        '`telpon`=' + QuotedStr(telpon.Text) + ',' +
        '`flag_fraud`=' + QuotedStr(flag_fraud.Text) + ',' +
        '`hub_dgn_bank`=' + QuotedStr(hub_dgn_bank.Text) + ',' +
        '`slik_kode_hub_ljk`=' + QuotedStr(slik_kode_hub_ljk.Text) + ',' +
        '`slik_kode_gol_debitur`=' + QuotedStr(slik_kode_gol_debitur.Text) + ',' +
        'WHERE nasabah_id=' + QuotedStr(MyQDaftarDataNasabahnasabah_id.Text));
    end;

    if MyQDaftarDataNasabah.Active then
      MyQDaftarDataNasabah.Refresh
    else
      MyQDaftarDataNasabah.Open;
  end;

  fr_EntryFormLPS0001.Free;
  fr_EntryFormLPS0001 := nil;
end;


procedure Tfr_FormLPS0001.bt_openClick(Sender: TObject);
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

procedure Tfr_FormLPS0001.bt_searchClick(Sender: TObject);
var
  cNoRek: string;
begin
  inherited;

  // *** HAPUS cb_kantorClick(Sender), karena itu me-reload LIMIT 30 ***
  // cb_kantorClick(Sender);   <-- ini dihapus

  // Load FULL DATA (tanpa LIMIT)
  MyQDaftarDataNasabah.Close;
  MyQDaftarDataNasabah.SQL.Text :=
    'SELECT * FROM lps_dn_f0001';
  MyQDaftarDataNasabah.Open;

  // --- Lanjutkan fungsi Locate Anda ---
  if not MyQDaftarDataNasabah.Locate('nasabah_id', Trim(Edit1.Text),
     [loCaseInsensitive, loPartialKey]) then
  begin
    cNoRek := SelectRow(
      'SELECT nasabah_id '+
      'FROM lps_dn_f0001 '+
      'WHERE REPLACE(nasabah_id, "-", "")='+QuotedStr(Edit1.Text)
    );

    if not Empty(cNoRek) then
      MyQDaftarDataNasabah.Locate('nasabah_id', cNoRek,
        [loCaseInsensitive, loPartialKey]);
  end;
end;

procedure Tfr_FormLPS0001.bt_tambahClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_EntryFormLPS0001') = nil then
    Application.CreateForm(Tfr_EntryFormLPS0001, fr_EntryFormLPS0001);
  fr_EntryFormLPS0001.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDaftarDataNasabahnasabah_id.Text);
  if fr_EntryFormLPS0001.MyQTemp.Active then
    fr_EntryFormLPS0001.MyQTemp.Refresh
  else
    fr_EntryFormLPS0001.MyQTemp.Open;

  with fr_EntryFormLPS0001 do
  begin
    JenisTrans0001 := '1';

    nasabah_id.MaxLength := MyQTempnasabah_id.Size;
    nama_nasabah.MaxLength := MyQTempnama_nasabah.Size;
    jenis_id.MaxLength := MyQTempjenis_id.Size;
    no_id.MaxLength := MyQTempno_id.Size;
    nama_ibu_kandung.MaxLength := MyQTempnama_ibu_kandung.Size;
    no_id2.MaxLength := MyQTempno_id2.Size;
    nama_pengurus.MaxLength := MyQTempnama_pengurus.Size;
    jenis_identitas.MaxLength := MyQTempjenis_identitas.Size;
    nomor_identitas.MaxLength := MyQTempnomor_identitas.Size;
    alamat.MaxLength := MyQTempalamat.Size;
    kota_kab.MaxLength := MyQTempkota_kab.Size;
    wni.MaxLength := MyQTempwni.Size;
    telpon.MaxLength := MyQTemptelpon.Size;
    flag_fraud.MaxLength := MyQTempflag_fraud.Size;
    hub_dgn_bank.MaxLength := MyQTemphub_dgn_bank.Size;
    slik_kode_hub_ljk.MaxLength := MyQTempslik_kode_hub_ljk.Size;
    slik_kode_gol_debitur.MaxLength := MyQTempslik_kode_gol_debitur.Size;

    nasabah_id.Text := '';
    nama_nasabah.Text := '';
    jenis_id.Text := '';
    no_id.Text := '';
    nama_ibu_kandung.Text := '';
    tgl_lahir.Date := dTglSystem;
    no_id2.Text := '';
    nama_pengurus.Text := '';
    jenis_identitas.Text := '';
    nomor_identitas.Text := '';
    alamat.Text := '';
    kota_kab.Text := '';
    wni.Text := '';
    telpon.Text := '';
    flag_fraud.Text := '';
    hub_dgn_bank.Text := '';
    slik_kode_hub_ljk.Text := '';
    slik_kode_gol_debitur.Text := '';
  end;

  fr_EntryFormLPS0001.Tag := 0;
  fr_EntryFormLPS0001.ShowModal;

  if fr_EntryFormLPS0001.Tag = 2 then
  begin
    with fr_EntryFormLPS0001 do
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.lps_dn_f0001 (' +
        '`nasabah_id`, `nama_nasabah`, `jenis_id`, `no_id`, ' +
        '`nama_ibu_kandung`, `tgl_lahir`, `no_id2`, `nama_pengurus`, ' +
        '`jenis_identitas`, `nomor_identitas`, `alamat`, `kota_kab`, `wni`, ' +
        '`telpon`, `flag_fraud`, `hub_dgn_bank`, `slik_kode_hub_ljk`, `slik_kode_gol_debitur`) VALUES (' +
        QuotedStr(nasabah_id.Text) + ', ' +
        QuotedStr(nama_nasabah.Text) + ', ' +
        QuotedStr(jenis_id.Text) + ', ' +
        QuotedStr(no_id.Text) + ', ' +
        QuotedStr(nama_ibu_kandung.Text) + ', ' +
        DateToStrSQL(tgl_lahir.Date) + ', ' +
        QuotedStr(no_id2.Text) + ', ' +
        QuotedStr(nama_pengurus.Text) + ', ' +
        QuotedStr(jenis_identitas.Text) + ', ' +
        QuotedStr(nomor_identitas.Text) + ', ' +
        QuotedStr(alamat.Text) + ', ' +
        QuotedStr(kota_kab.Text) + ', ' +
        QuotedStr(wni.Text) + ', ' +
        QuotedStr(telpon.Text) + ', ' +
        QuotedStr(flag_fraud.Text) + ', ' +
        QuotedStr(hub_dgn_bank.Text) + ', ' +
        QuotedStr(slik_kode_hub_ljk.Text) + ', ' +
        QuotedStr(slik_kode_gol_debitur.Text) + ' ) ' +
        'ON DUPLICATE KEY UPDATE ' +
        '`nama_nasabah`=' + QuotedStr(nama_nasabah.Text) + ',' +
        '`jenis_id`=' + QuotedStr(jenis_id.Text) + ',' +
        '`no_id`=' + QuotedStr(no_id.Text) + ',' +
        '`nama_ibu_kandung`=' + QuotedStr(nama_ibu_kandung.Text) + ',' +
        '`tgl_lahir`=' + DateToStrSQL(tgl_lahir.Date) + ',' +
        '`no_id2`=' + QuotedStr(no_id2.Text) + ',' +
        '`nama_pengurus`=' + QuotedStr(nama_pengurus.Text) + ',' +
        '`jenis_identitas`=' + QuotedStr(jenis_identitas.Text) + ',' +
        '`nomor_identitas`=' + QuotedStr(nomor_identitas.Text) + ',' +
        '`alamat`=' + QuotedStr(alamat.Text) + ',' +
        '`kota_kab`=' + QuotedStr(kota_kab.Text) + ',' +
        '`wni`=' + QuotedStr(wni.Text) + ',' +
        '`telpon`=' + QuotedStr(telpon.Text) + ',' +
        '`flag_fraud`=' + QuotedStr(flag_fraud.Text) + ',' +
        '`hub_dgn_bank`=' + QuotedStr(hub_dgn_bank.Text) + ',' +
        '`slik_kode_hub_ljk`=' + QuotedStr(slik_kode_hub_ljk.Text) + ',' +
        '`slik_kode_gol_debitur`=' + QuotedStr(slik_kode_gol_debitur.Text));
    end;

    if MyQDaftarDataNasabah.Active then
      MyQDaftarDataNasabah.Refresh
    else
      MyQDaftarDataNasabah.Open;
  end;

  fr_EntryFormLPS0001.Free;
  fr_EntryFormLPS0001 := nil;
end;

procedure Tfr_FormLPS0001.cb_kantorClick(Sender: TObject);
begin
  inherited;
  if MyQLapKodeKantorsandi_cabang.AsString='000' then
    MyQDaftarDataNasabah.MacroByName('WHERE').Value := ''
  else
    MyQDaftarDataNasabah.MacroByName('WHERE').Value :=
      'WHERE `sandi_kantor`='+QuotedStr(MyQLapKodeKantorsandi_cabang.AsString);
  if MyQDaftarDataNasabah.Active then
    MyQDaftarDataNasabah.Refresh
  else
    MyQDaftarDataNasabah.Open;
end;

procedure Tfr_FormLPS0001.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if bt_edit.Enabled then
    bt_editClick(Sender);
end;

procedure Tfr_FormLPS0001.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfr_FormLPS0001.QImport3XLS1AfterImport(Sender: TObject);
begin
  inherited;
    Pesan(1, 'Proses Import Selesai...');
    sGauge1.Visible := False;
    MyQDaftarDataNasabah.EnableControls;

  if MyQDaftarDataNasabah.Active then
    MyQDaftarDataNasabah.Refresh
  else
    MyQDaftarDataNasabah.Open;
end;

procedure Tfr_FormLPS0001.QImport3XLS1BeforeImport(Sender: TObject);
begin
  inherited;
    sGauge1.Visible := True;
    sGauge1.Progress := 0;
    sGauge1.MaxValue := QImport3XLS1.TotalRecCount;
    MyQDaftarDataNasabah.DisableControls;
end;

procedure Tfr_FormLPS0001.QImport3XLS1UserDefinedImport(Sender: TObject;
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
                //cTempSqlU :=cTempSqlU+ ' `sandi_kantor`=' +QuotedStr(cTemp)
              end
              else
              if (i=1)  then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                //cTempSqlU :=cTempSqlU+ ', `id_pihak_lawan`=' + QuotedStr(cTemp)
              end
              else
              if i=2 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                //cTempSqlU :=cTempSqlU+ ', `no_identitas`=' + QuotedStr(cTemp)
              end
              else
              if i=3 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                //cTempSqlU :=cTempSqlU+ ', `no_rekening`=' + QuotedStr(cTemp)
              end
              else
              if i=4 then
              begin
               cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
               //cTempSqlU :=cTempSqlU+ ', `jml_pendanaan_plafon`=' +QuotedStr(cTemp)
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
                //cTempSqlU :=cTempSqlU+ ', `bagian_pendanaan_plafon`=' + QuotedStr(cTemp)
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
                //cTempSqlU :=cTempSqlU+ ', `sandi_bank_peserta`=' + QuotedStr(cTemp)
              end
              else
              if i=9 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                //cTempSqlU :=cTempSqlU+ ', `status_peserta`=' + QuotedStr(cTemp)
              end
              else
              if i=10 then
                begin
                  cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                  //cTempSqlU :=cTempSqlU+ ', `no_perjanjian`=' + QuotedStr(cTemp)
                end
              else
              if i=11 then
              begin
                cTempSqlI :=cTempSqlI+', '+QuotedStr(cTemp);
                //cTempSqlU :=cTempSqlU+ ', `pendanaan_bank_pelapor`=' + QuotedStr(cTemp)
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
            MyExecuteSQL('INSERT INTO '+cDb2+'.apolo_f0602 '+
          ' (`sandi_kantor`, `id_pihak_lawan`, `no_identitas`, `no_rekening`, ' +
          ' `jml_pendanaan_plafon`, `jml_pendanaan_baki_debet`, `bagian_pendanaan_plafon`, ' +
          ' `bagian_pendanaan_baki_debet`, `sandi_bank_peserta`, `status_peserta`, `no_perjanjian`, ' +
          ' `pendanaan_bank_pelapor`, `kualitas`, `nominal_tunggakan_pokok`, `nominal_tunggakan_bunga`, ' +
          ' `hari_tunggakan_pokok`, `hari_tunggakan_bunga`) VALUES (' +cTempSqlI+
          ') ON DUPLICATE KEY UPDATE '+cTempSqlU);
           cTempSqlI:='';
           cTempSqlU:='';
        end;

  Application.ProcessMessages;
end;

procedure Tfr_FormLPS0001.qmyClick(Sender: TObject);
var
  cCount    : string;
  cTglLahir : string;
  dtLahir   : TDateTime;
begin
  inherited;

  if not Pesan(3, 'Proses Import Data Nasabah dari Database Core ?') then
    Exit;

  MyQImport.MacroByName('TGL').Value:=DateToStrSQL(dTglProses0001);
//  MyQImport.MacroByName('WHERE').Value:= 'WHERE n.nasabah_id IN ("0006068","0012065","0014950","0018457","0025490", '+
//  ' "0025947","0025955","0030383","0075625")';
//
//  MyQImport.MacroByName('WHERE1').Value:= 'AND n.nasabah_id IN ("0006068","0012065","0014950","0018457","0025490", '+
//  ' "0025947","0025955","0030383","0075625")';

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
    { ==== TANGGAL LAHIR (AMAN) ==== }
    if MyQImporttanggal_lahir.IsNull then
      cTglLahir := 'NULL'
    else if TryStrToDate(MyQImporttanggal_lahir.AsString, dtLahir) then
    begin
      if dtLahir <= EncodeDate(1900,1,1) then
        cTglLahir := 'NULL'
      else
        cTglLahir := QuotedStr(FormatDateTime('yyyy-mm-dd', dtLahir));
    end
    else
      cTglLahir := 'NULL';

    { ==== CEK DATA ==== }
    cCount := SelectRow(
      'SELECT COUNT(*) FROM ' + cDb2 + '.lps_dn_f0001 ' +
      'WHERE nasabah_id=' + QuotedStr(MyQImportnasabah_id.AsString)
    );

    { ==== INSERT ==== }
    if StrToIntDef(cCount, 0) = 0 then
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.lps_dn_f0001 (' +
        'nasabah_id, nama_nasabah, jenis_id, no_id, ' +
        'nama_ibu_kandung, tgl_lahir, no_id2, ' +
        'nama_pengurus, jenis_identitas, ' +
        'nomor_identitas, alamat, kota_kab, wni, ' +
        'telpon, flag_fraud, hub_dgn_bank, ' +
        'slik_kode_hub_ljk, slik_kode_gol_debitur) VALUES (' +

        QuotedStr(MyQImportnasabah_id.AsString) + ',' +
        QuotedStr(MyQImportnama_nasabah.AsString) + ',' +
        QuotedStr(MyQImportjenis_identitas.AsString) + ',' +
        QuotedStr(MyQImportnomor_identitas.AsString) + ',' +
        QuotedStr(MyQImportnama_ibu_kandung.AsString) + ',' +
        cTglLahir + ',' +
        QuotedStr(MyQImportnomor_identitas_badan_hukum.AsString) + ',' +
        QuotedStr(MyQImportnama_lengkap_pemegang_kuasa.AsString) + ',' +
        QuotedStr(MyQImportjenis_identitas_pemegang_kuasa.AsString) + ',' +
        QuotedStr(MyQImportnomor_identitas_pemegang_kuasa.AsString) + ',' +
        QuotedStr(MyQImportalamat.AsString) + ',' +
        QuotedStr(MyQImportkota_kab.AsString) + ',' +
        QuotedStr(MyQImportkewarganegaraan.AsString) + ',' +
        QuotedStr(MyQImportnomor_telepon.AsString) + ',' +
        QuotedStr(MyQImportflag_fraud.AsString) + ',' +
        QuotedStr(MyQImporthubungan_dengan_bank.AsString) + ',' +
        QuotedStr(MyQImporthubungan_dengan_pihak_terkait.AsString) + ',' +
        QuotedStr(MyQImportgolongan_nasabah.AsString) +
        ')'
      );
    end
    else
    begin
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.lps_dn_f0001 SET ' +
        //'nama_nasabah=' + QuotedStr(MyQImportnama_nasabah.AsString) +
       // ', jenis_id=' + QuotedStr(MyQImportjenis_identitas.AsString) +
       // ', no_id=' + QuotedStr(MyQImportnomor_identitas.AsString) +
       // ', nama_ibu_kandung=' + QuotedStr(MyQImportnama_ibu_kandung.AsString) +
       // ', tgl_lahir=' + cTglLahir +
        ' no_id2=' + QuotedStr(MyQImportnomor_identitas_badan_hukum.AsString) +
        ', nama_pengurus=' + QuotedStr(MyQImportnama_lengkap_pemegang_kuasa.AsString) +
        ', jenis_identitas=' + QuotedStr(MyQImportjenis_identitas_pemegang_kuasa.AsString) +
        ', nomor_identitas=' + QuotedStr(MyQImportnomor_identitas_pemegang_kuasa.AsString) +
        ', alamat=' + QuotedStr(MyQImportalamat.AsString) +
        ', kota_kab=' + QuotedStr(MyQImportkota_kab.AsString) +
       // ', wni=' + QuotedStr(MyQImportkewarganegaraan.AsString) +
        ', telpon=' + QuotedStr(MyQImportnomor_telepon.AsString) +
        ', flag_fraud=' + QuotedStr(MyQImportflag_fraud.AsString) +
       // ', hub_dgn_bank=' + QuotedStr(MyQImporthubungan_dengan_bank.AsString) +
       // ', slik_kode_hub_ljk=' + QuotedStr(MyQImporthubungan_dengan_pihak_terkait.AsString) +
       // ', slik_kode_gol_debitur=' + QuotedStr(MyQImportgolongan_nasabah.AsString) +
        ' WHERE nasabah_id=' + QuotedStr(MyQImportnasabah_id.AsString)
      );
    end;

    MyQImport.Next;
    sGauge1.Progress := sGauge1.Progress + 1;
    Application.ProcessMessages;
  end;

  sGauge1.Visible := False;
  Pesan(1, 'Proses Import Data Nasabah Selesai...');

  if MyQDaftarDataNasabah.Active then
    MyQDaftarDataNasabah.Refresh
  else
    MyQDaftarDataNasabah.Open;
end;



end.
