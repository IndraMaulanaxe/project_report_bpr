unit EntryFormLps0002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sCurrencyEdit, Vcl.ComCtrls, sGroupBox,
  sPageControl, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfr_EntryFormLps0002 = class(Tfr_template)
    sPanel1: TsPanel;
    bt_save: TsBitBtn;
    bt_cancel: TsBitBtn;
    dsMyQTemp: TMyDataSource;
    MyQTemp: TMyQuery;
    sCurrencyEdit3: TsCurrencyEdit;
    GroupEdit: TsGroupBox;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    Label16: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    nasabah_id: TEdit;
    no_rekening: TEdit;
    sGroupBox1: TsGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    suku_bunga_val: TsCurrencyEdit;
    bt_staus_dana: TsBitBtn;
    nm_staus_dana: TEdit;
    staus_dana: TEdit;
    jumlah_pemilik_rekening: TsCurrencyEdit;
    tgl_mulai_atau_tgl_aro_terakhir: TDateTimePicker;
    sTabSheet2: TsTabSheet;
    Label1: TLabel;
    biaya_cashback: TsCurrencyEdit;
    Label2: TLabel;
    tingkat_bunga_penjaminan_lps: TsCurrencyEdit;
    Label5: TLabel;
    kategori_tingkat_bunga_simpanan: TEdit;
    bt_kategori_tingkat_bunga_simpanan: TsBitBtn;
    nm_kategori_tingkat_bunga_simpanan: TEdit;
    Label8: TLabel;
    alasan_blokir: TEdit;
    bt_alasan_blokir: TsBitBtn;
    nm_alasan_blokir: TEdit;
    Label9: TLabel;
    jml_deposito: TsCurrencyEdit;
    Label10: TLabel;
    nominal_blokir: TsCurrencyEdit;
    Label11: TLabel;
    saldo_akhir_bunga_bmhd: TsCurrencyEdit;
    Label12: TLabel;
    tgl_akru_terakhir: TDateTimePicker;
    Label14: TLabel;
    tanggal_jt: TDateTimePicker;
    MyQTempjumlah_pemilik_rekening: TIntegerField;
    MyQTempnasabah_id: TStringField;
    MyQTempkode_integrasi: TStringField;
    MyQTempno_rekening: TStringField;
    MyQTempstaus_dana: TStringField;
    MyQTemptgl_mulai_atau_tgl_aro_terakhir: TDateField;
    MyQTempsuku_bunga: TStringField;
    MyQTempsuku_bunga_val: TFloatField;
    MyQTempbiaya_cashback: TFloatField;
    MyQTemptingkat_bunga_penjaminan_lps: TFloatField;
    MyQTempkategori_tingkat_bunga_simpanan: TStringField;
    MyQTempjml_deposito: TFloatField;
    MyQTempnominal_blokir: TFloatField;
    MyQTempalasan_blokir: TStringField;
    MyQTempsaldo_akhir_bunga_bmhd: TFloatField;
    MyQTemptgl_akru_terakhir: TDateField;
    MyQTemptanggal_jt: TDateField;
    suku_bunga: TsCurrencyEdit;
    procedure bt_kode_integrasiClick(Sender: TObject);
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_staus_danaClick(Sender: TObject);
    procedure staus_danaExit(Sender: TObject);
    procedure kode_integrasiExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_kategori_tingkat_bunga_simpananClick(Sender: TObject);
    procedure bt_alasan_blokirClick(Sender: TObject);
    procedure kategori_tingkat_bunga_simpananExit(Sender: TObject);
    procedure alasan_blokirExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryFormLps0002: Tfr_EntryFormLps0002;
  JenisTrans0002: String;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, MasterRefLPS;

{$R *.dfm}

procedure Tfr_EntryFormLps0002.alasan_blokirExit(Sender: TObject);
begin
  inherited;
     if not Empty(alasan_blokir.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_alasan_blokir WHERE selectable=1 AND sandi='+QuotedStr(alasan_blokir.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and alasan_blokir.CanFocus then
        alasan_blokir.SetFocus;
      Exit;
    end;

  if not Empty(alasan_blokir.Text) then
    nm_alasan_blokir.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_alasan_blokir','sandi',alasan_blokir.Text,'kualitas');

end;

procedure Tfr_EntryFormLps0002.bt_alasan_blokirClick(Sender: TObject);
begin
  inherited;
      if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_alasan_blokir';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      alasan_blokir.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_alasan_blokir.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0002.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_EntryFormLps0002.bt_kategori_tingkat_bunga_simpananClick(
  Sender: TObject);
begin
  inherited;
    if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kategori_tingkat_bunga_simpanan';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      kategori_tingkat_bunga_simpanan.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_kategori_tingkat_bunga_simpanan.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0002.bt_kode_integrasiClick(Sender: TObject);
begin
  inherited;
//  if Application.FindComponent('fr_MasterRefLPS') = nil then
//    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
//  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kode_laporan';
//  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
//  fr_MasterRefLPS.FormCreate(Sender);
//  fr_MasterRefLPS.ShowModal;
//  if fr_MasterRefLPS.Tag=2 then
//    begin
//      kode_integrasi.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
//      nm_kode_integrasi.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
//      Tag := 1;
//    end;
//  fr_MasterRefLPS.Free;
//  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0002.bt_saveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormLps0002.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

procedure Tfr_EntryFormLps0002.staus_danaExit(Sender: TObject);
begin
  inherited;
  if not Empty(staus_dana.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_status_dana WHERE selectable=1 AND sandi='+QuotedStr(staus_dana.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and staus_dana.CanFocus then
        staus_dana.SetFocus;
      Exit;
    end;

  if not Empty(staus_dana.Text) then
    nm_staus_dana.Text := GetFValueByFKeyValue(cDb2+'.apolo_ref_sandi_bank','sandi',staus_dana.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLps0002.kategori_tingkat_bunga_simpananExit(
  Sender: TObject);
begin
  inherited;
    if not Empty(kategori_tingkat_bunga_simpanan.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kategori_tingkat_bunga_simpanan WHERE selectable=1 AND sandi='+QuotedStr(kategori_tingkat_bunga_simpanan.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kategori_tingkat_bunga_simpanan.CanFocus then
        kategori_tingkat_bunga_simpanan.SetFocus;
      Exit;
    end;

  if not Empty(kategori_tingkat_bunga_simpanan.Text) then
    nm_kategori_tingkat_bunga_simpanan.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kategori_tingkat_bunga_simpanan','sandi',kategori_tingkat_bunga_simpanan.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLps0002.kode_integrasiExit(Sender: TObject);
begin
  inherited;
//   if not Empty(kode_integrasi.Text) and
//    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
//      cDb2+'.lps_ref_kode_laporan WHERE selectable=1 AND sandi='+QuotedStr(kode_integrasi.Text))='0') then
//    begin
//      Pesan(2,'Kode sandi tersebut tidak ada');
//      if Self.Showing and kode_integrasi.CanFocus then
//        kode_integrasi.SetFocus;
//      Exit;
//    end;
//
//  if not Empty(kode_integrasi.Text) then
//    nm_kode_integrasi.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kode_laporan','sandi',kode_integrasi.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLps0002.bt_staus_danaClick(Sender: TObject);
begin
  inherited;
   if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_status_dana';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      staus_dana.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_staus_dana.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

end.
