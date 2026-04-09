unit EntryFormLps0004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, sSkinProvider, StdCtrls, Buttons, ExtCtrls, sPanel,
  sGroupBox, sBitBtn, 
  DB, MemDS, DBAccess, MyAccess, sCheckBox, StrUtils,
  ComCtrls, DateUtils, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit,
  sCurrencyEdit, sPageControl;

type
  Tfr_EntryFormLps0004 = class(Tfr_template)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    GroupEdit: TsGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    koordinat_kantor: TEdit;
    sandi_kantor: TEdit;
    nama_kantor: TEdit;
    alamat_kantor: TEdit;
    Label24: TLabel;
    MyQTemp: TMyQuery;
    dsMyQTemp: TMyDataSource;
    bt_save: TsBitBtn;
    bt_cancel: TsBitBtn;
    sGroupBox2: TsGroupBox;
    Label8: TLabel;
    Label2: TLabel;
    desa_kecamatan: TEdit;
    Label5: TLabel;
    sandi_kota_kab: TEdit;
    bt_sandi_kota_kab: TsBitBtn;
    nm_sandi_kota_kab: TEdit;
    Label7: TLabel;
    kode_pos: TEdit;
    Label9: TLabel;
    nama_pimpinan: TEdit;
    no_telp: TEdit;
    jml_karyawan_tetap_s3: TsCurrencyEdit;
    Label10: TLabel;
    jml_karyawan_tetap_s2: TsCurrencyEdit;
    Label11: TLabel;
    jml_karyawan_tetap_s1: TsCurrencyEdit;
    Label12: TLabel;
    jml_karyawan_tetap_d3: TsCurrencyEdit;
    Label13: TLabel;
    jml_karyawan_tetap_slta: TsCurrencyEdit;
    jml_karyawan_tetap_lainnya: TsCurrencyEdit;
    Label14: TLabel;
    sGroupBox1: TsGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    jml_karyawan_tidak_tetap_s3: TsCurrencyEdit;
    jml_karyawan_tidak_tetap_s2: TsCurrencyEdit;
    jml_karyawan_tidak_tetap_s1: TsCurrencyEdit;
    jml_karyawan_tidak_tetap_d3: TsCurrencyEdit;
    jml_karyawan_tidak_tetap_slta: TsCurrencyEdit;
    jml_karyawan_tidak_tetap_lainnya: TsCurrencyEdit;
    Label15: TLabel;
    jml_kantor_kas: TsCurrencyEdit;
    Label16: TLabel;
    sandi_kepemilikan_gedung: TEdit;
    bt_sandi_kepemilikan_gedung: TsBitBtn;
    nm_sandi_kepemilikan_gedung: TEdit;
    Label17: TLabel;
    jml_kantor_kas_mobil_apung: TsCurrencyEdit;
    Label25: TLabel;
    jml_edc_sendiri: TsCurrencyEdit;
    jml_edc_bu: TsCurrencyEdit;
    Label26: TLabel;
    jml_edc_lain: TsCurrencyEdit;
    Label27: TLabel;
    Label28: TLabel;
    jml_atm_sendiri: TsCurrencyEdit;
    Label29: TLabel;
    jml_atm_kerjasama: TsCurrencyEdit;
    MyQTempflag_detail: TStringField;
    MyQTempsandi_kantor: TStringField;
    MyQTempnama_kantor: TStringField;
    MyQTempkoordinat_kantor: TStringField;
    MyQTempalamat_kantor: TStringField;
    MyQTempalamat_kecamatan: TStringField;
    MyQTempalamat_kota: TStringField;
    MyQTempalamat_kode_pos: TStringField;
    MyQTempnama_pimpinan: TStringField;
    MyQTempno_telp: TStringField;
    MyQTempjml_tetap_s3: TFloatField;
    MyQTempjml_tetap_s2: TFloatField;
    MyQTempjml_tetap_s1: TFloatField;
    MyQTempjml_tetap_d3: TFloatField;
    MyQTempjml_tetap_slta: TFloatField;
    MyQTempjml_tetap_lainnya: TFloatField;
    MyQTempjml_tidaktetap_s3: TFloatField;
    MyQTempjml_tidaktetap_s2: TFloatField;
    MyQTempjml_tidaktetap_s1: TFloatField;
    MyQTempjml_tidaktetap_d3: TFloatField;
    MyQTempjml_tidaktetap_slta: TFloatField;
    MyQTempjml_tidaktetap_lainnya: TFloatField;
    MyQTempjml_kantor_kas: TFloatField;
    MyQTempstatus_kepemilikan_gedung: TStringField;
    MyQTempjml_kas_mobil_terapung: TFloatField;
    MyQTempjml_edc_sendiri: TFloatField;
    MyQTempjml_edc_bu: TFloatField;
    MyQTempjml_edc_lain: TFloatField;
    MyQTempjml_atm_sendiri: TFloatField;
    MyQTempjml_atm_lain: TFloatField;
    nama_pihak_bekerjasama: TEdit;
    Label30: TLabel;
    sGroupBox3: TsGroupBox;
    Label31: TLabel;
    sandi_ket_data_kantor: TEdit;
    bt_sandi_ket_data_kantor: TsBitBtn;
    nm_sandi_ket_data_kantor: TEdit;
    Label32: TLabel;
    no_surat_persetujuan: TEdit;
    Label33: TLabel;
    tgl_surat_persetujuan: TDateTimePicker;
    Label34: TLabel;
    alamat_sebelumnya: TEdit;
    Label35: TLabel;
    tgl_pelaksanaan: TDateTimePicker;
    MyQTempnama_pihak_kerjasama_atm: TStringField;
    MyQTempket_data_kantor: TStringField;
    MyQTempno_persetujuan_ojk: TStringField;
    MyQTemptgl_persetujuan_ojk: TDateField;
    MyQTempalamat_sebelumnya: TStringField;
    MyQTemptgl_pelaksanaan: TDateField;
    sPageControl1: TsPageControl;
    page1: TsTabSheet;
    page2: TsTabSheet;
    page3: TsTabSheet;
    sGroupBox4: TsGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    jml_tetap_pemasaran: TsCurrencyEdit;
    jml_tetap_pelayanan: TsCurrencyEdit;
    jml_tetap_pplainnya: TsCurrencyEdit;
    sGroupBox5: TsGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    jml_tidaktetap_pemasaran: TsCurrencyEdit;
    jml_tidaktetap_pelayanan: TsCurrencyEdit;
    jml_tidaktetap_pplainnya: TsCurrencyEdit;
    sGroupBox6: TsGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    jml_jk_pria: TsCurrencyEdit;
    jml_jk_wanita: TsCurrencyEdit;
    sGroupBox7: TsGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    jml_usia_kurang_25: TsCurrencyEdit;
    jml_usia_lebih_25: TsCurrencyEdit;
    jml_usia_lebih_35: TsCurrencyEdit;
    Label47: TLabel;
    jml_usia_lebih_45: TsCurrencyEdit;
    Label48: TLabel;
    jml_usia_lebih_55: TsCurrencyEdit;
    Label49: TLabel;
    jml_skk: TsCurrencyEdit;
    MyQTempjml_tetap_pemasaran: TFloatField;
    MyQTempjml_tetap_pelayanan: TFloatField;
    MyQTempjml_tetap_pplainnya: TFloatField;
    MyQTempjml_tidaktetap_pemasaran: TFloatField;
    MyQTempjml_tidaktetap_pelayanan: TFloatField;
    MyQTempjml_tidaktetap_pplainnya: TFloatField;
    MyQTempjml_jk_pria: TFloatField;
    MyQTempjml_jk_wanita: TFloatField;
    MyQTempjml_usia_kurang_25: TFloatField;
    MyQTempjml_usia_lebih_25: TFloatField;
    MyQTempjml_usia_lebih_35: TFloatField;
    MyQTempjml_usia_lebih_45: TFloatField;
    MyQTempjml_usia_lebih_55: TFloatField;
    MyQTempjml_skk: TFloatField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure sandi_kantorExit(Sender: TObject);
    procedure sandi_kantorChange(Sender: TObject);
    procedure sandi_kota_kabExit(Sender: TObject);
    procedure bt_sandi_kota_kabClick(Sender: TObject);
    procedure sandi_kepemilikan_gedungExit(Sender: TObject);
    procedure bt_sandi_kepemilikan_gedungClick(Sender: TObject);
    procedure sandi_ket_data_kantorExit(Sender: TObject);
    procedure bt_sandi_ket_data_kantorClick(Sender: TObject);
    procedure jml_atm_kerjasamaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryFormLps0004: Tfr_EntryFormLps0004;
  JenisTrans004: String;

implementation

uses OgiesoftVAR, MyOgiLib, MasterRefLPS, dm_bpr;

{$R *.dfm}

procedure Tfr_EntryFormLps0004.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_EntryFormLps0004.bt_sandi_kepemilikan_gedungClick(
  Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kepemilikan_gedung';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`kepemilikan_gedung`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      sandi_kepemilikan_gedung.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_sandi_kepemilikan_gedung.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0004.bt_sandi_ket_data_kantorClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_ket_data_kantor';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`nama_ket_data_kantor`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      sandi_ket_data_kantor.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_sandi_ket_data_kantor.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      sandi_ket_data_kantorExit(Sender);  
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0004.bt_sandi_kota_kabClick(
  Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kab_kota';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      sandi_kota_kab.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_sandi_kota_kab.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0004.bt_saveClick(Sender: TObject);
var nJmlPegawai, nJmlPegawaiBagian, nJmlPegawaiJk, nJmlPegawaiUsia : Real;
begin
  inherited;
  sandi_kantorExit(Sender);
  nJmlPegawai := jml_karyawan_tetap_s3.Value + jml_karyawan_tetap_s2.Value +
    jml_karyawan_tetap_s1.Value + jml_karyawan_tetap_d3.Value +
    jml_karyawan_tetap_slta.Value + jml_karyawan_tetap_lainnya.Value +
    jml_karyawan_tidak_tetap_s3.Value + jml_karyawan_tidak_tetap_s2.Value +
    jml_karyawan_tidak_tetap_s1.Value + jml_karyawan_tidak_tetap_d3.Value +
    jml_karyawan_tidak_tetap_slta.Value + jml_karyawan_tidak_tetap_lainnya.Value;
  nJmlPegawaiBagian :=  jml_tetap_pemasaran.Value + jml_tetap_pelayanan.Value +
    jml_tetap_pplainnya.Value + jml_tidaktetap_pemasaran.Value +
    jml_tidaktetap_pelayanan.Value + jml_tidaktetap_pplainnya.Value;
  nJmlPegawaiJk := jml_jk_pria.Value + jml_jk_wanita.Value;
  nJmlPegawaiUsia := jml_usia_kurang_25.Value + jml_usia_lebih_25.Value +
    jml_usia_lebih_35.Value + jml_usia_lebih_45.Value +
    jml_usia_lebih_55.Value;

  if nJmlPegawai<>nJmlPegawaiBagian then
  begin
     Pesan(2,'Jumlah Pegawai tidak sama dengan jumlah pegawai posisi');
     Exit;
  end;

  if nJmlPegawai<>nJmlPegawaiJk then
  begin
     Pesan(2,'Jumlah Pegawai tidak sama dengan jumlah pegawai Jenis Kelamin');
     Exit;
  end;

  if nJmlPegawai<>nJmlPegawaiUsia then
  begin
     Pesan(2,'Jumlah Pegawai tidak sama dengan jumlah pegawai Usia');
     Exit;
  end;


  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormLps0004.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

procedure Tfr_EntryFormLps0004.FormShow(Sender: TObject);
begin
  inherited;
  sPageControl1.ActivePage := page1;
end;

procedure Tfr_EntryFormLps0004.jml_atm_kerjasamaExit(Sender: TObject);
begin
  inherited;
  if (jml_atm_kerjasama.AsInteger > 0) then
    begin
      nama_pihak_bekerjasama.Tag := 1;
      nama_pihak_bekerjasama.Color := clYellow;
    end
  else
    begin
      nama_pihak_bekerjasama.Tag := 0;
      nama_pihak_bekerjasama.Color := clWindow;
      nama_pihak_bekerjasama.Text := '';
    end;
end;

procedure Tfr_EntryFormLps0004.sandi_kantorChange(Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

procedure Tfr_EntryFormLps0004.sandi_kantorExit(Sender: TObject);
begin
  inherited;
  if not Empty(sandi_kantor.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_f0004 WHERE sandi_kantor='+QuotedStr(sandi_kantor.Text)+
      IfThen(JenisTrans004='2',
        ' AND sandi_kantor NOT IN ('+QuotedStr(MyQTempsandi_kantor.AsString)+')',''))<>'0') then
    begin
      Pesan(2,sandi_kantor.Hint+' sudah ada...!');
      if Self.Showing and sandi_kantor.CanFocus then
        sandi_kantor.SetFocus;
      Exit;
    end;
  Tag := 1;
end;

procedure Tfr_EntryFormLps0004.sandi_kepemilikan_gedungExit(Sender: TObject);
begin
  inherited;
  if not Empty(sandi_kepemilikan_gedung.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kepemilikan_gedung WHERE selectable=1 AND sandi='+QuotedStr(sandi_kepemilikan_gedung.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and sandi_kepemilikan_gedung.CanFocus then
        sandi_kepemilikan_gedung.SetFocus;
      Exit;
    end;

  if not Empty(sandi_kepemilikan_gedung.Text) then
    nm_sandi_kepemilikan_gedung.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kepemilikan_gedung','sandi',sandi_kepemilikan_gedung.Text,'kepemilikan_gedung');
end;

procedure Tfr_EntryFormLps0004.sandi_ket_data_kantorExit(Sender: TObject);
begin
  inherited;
  if not Empty(sandi_ket_data_kantor.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_ket_data_kantor WHERE selectable=1 AND sandi='+QuotedStr(sandi_ket_data_kantor.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and sandi_ket_data_kantor.CanFocus then
        sandi_ket_data_kantor.SetFocus;
      Exit;
    end;

  if not Empty(sandi_ket_data_kantor.Text) then
    nm_sandi_ket_data_kantor.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_ket_data_kantor','sandi',sandi_ket_data_kantor.Text,'nama_ket_data_kantor');

  if (sandi_ket_data_kantor.Text='4') then //tidak ada perubaahan
    begin
      no_surat_persetujuan.Text := '';
      no_surat_persetujuan.Tag := 0;
      no_surat_persetujuan.Color := clWindow;
      alamat_sebelumnya.Text := '';
      alamat_sebelumnya.Tag := 0;
      alamat_sebelumnya.Color := clWindow;
      //alasan_perubahan.Color := clYellow;
    end
  else if (sandi_ket_data_kantor.Text='3') then //perubaahan alamat
    alamat_sebelumnya.Tag := 1
  else
    begin
      no_surat_persetujuan.Tag := 1;
      alamat_sebelumnya.Text := '';
      alamat_sebelumnya.Tag := 0;
      alamat_sebelumnya.Color := clWindow;
    end;

end;

procedure Tfr_EntryFormLps0004.sandi_kota_kabExit(
  Sender: TObject);
begin
  inherited;
  if not Empty(sandi_kota_kab.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kab_kota WHERE selectable=1 AND sandi='+QuotedStr(sandi_kota_kab.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and sandi_kota_kab.CanFocus then
        sandi_kota_kab.SetFocus;
      Exit;
    end;

  if not Empty(sandi_kota_kab.Text) then
    nm_sandi_kota_kab.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kab_kota','sandi',sandi_kota_kab.Text,'deskripsi_sandi');
end;

end.
