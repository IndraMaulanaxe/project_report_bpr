unit EntryFormLps0003;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sCurrencyEdit, Vcl.ComCtrls, sGroupBox,
  sPageControl, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfr_EntryFormLps0003 = class(Tfr_template)
    sPanel1: TsPanel;
    bt_save: TsBitBtn;
    bt_cancel: TsBitBtn;
    dsMyQTemp: TMyDataSource;
    MyQTemp: TMyQuery;
    GroupEdit: TsGroupBox;
    Label17: TLabel;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    Label3: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    Label26: TLabel;
    nasabah_id: TEdit;
    no_rekening: TEdit;
    sGroupBox3: TsGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    jml_pinjaman: TsCurrencyEdit;
    baki_debet: TsCurrencyEdit;
    sGroupBox10: TsGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    jumlah_tunggakan_pokok: TsCurrencyEdit;
    jumlah_tunggakan_bunga: TsCurrencyEdit;
    kategori_usaha: TEdit;
    bt_kategori_usaha: TsBitBtn;
    nm_kategori_usaha: TEdit;
    bt_jenis_agunan: TsBitBtn;
    nm_jenis_agunan: TEdit;
    jenis_agunan: TEdit;
    MyQTempflag_detail: TStringField;
    MyQTempnasabah_id: TStringField;
    MyQTempno_rekening: TStringField;
    MyQTempjenis: TStringField;
    MyQTempkolektibilitas: TStringField;
    MyQTempjml_pinjaman: TFloatField;
    MyQTempbaki_debet: TFloatField;
    MyQTempjumlah_tunggakan_pokok: TFloatField;
    MyQTempjumlah_tunggakan_bunga: TFloatField;
    MyQTempjenis_agunan: TStringField;
    MyQTemptgl_realisasi: TDateField;
    MyQTemptgl_jatuh_tempo: TDateField;
    MyQTempkategori_usaha: TStringField;
    tgl_realisasi: TDateTimePicker;
    tgl_jatuh_tempo: TDateTimePicker;
    kolektibilitas: TEdit;
    bt_kolektibilitas: TsBitBtn;
    nm_kolektibilitas: TEdit;
    nm_jenis: TEdit;
    bt_jenis: TsBitBtn;
    jenis: TEdit;
    procedure bt_nasabah_idClick(Sender: TObject);
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_status_pesertaClick(Sender: TObject);
    procedure bt_jenis_agunanClick(Sender: TObject);
    procedure bt_kategori_usahaClick(Sender: TObject);
    procedure jenis_agunanExit(Sender: TObject);
    procedure nasabah_idExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_saveClick(Sender: TObject);
    procedure status_pesertaExit(Sender: TObject);
    procedure kategori_usahaExit(Sender: TObject);
    procedure bt_kolektibilitasClick(Sender: TObject);
    procedure kolektibilitasExit(Sender: TObject);
    procedure bt_jenisClick(Sender: TObject);
    procedure jenisExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryFormLps0003: Tfr_EntryFormLps0003;
  JenisTrans0003: String;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, MasterRefLPS;

{$R *.dfm}

procedure Tfr_EntryFormLps0003.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_EntryFormLps0003.bt_nasabah_idClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.apolo_ref_kantor';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`keterangan`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
//      sandi_kantor.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
//      nm_sandi_kantor.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0003.bt_saveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormLps0003.bt_status_pesertaClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefAPOLO') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.apolo_ref_status_kepersetaan';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`status_kepersetaan`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
//      status_peserta.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
//      nm_status_peserta.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0003.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

procedure Tfr_EntryFormLps0003.kategori_usahaExit(Sender: TObject);
begin
  inherited;
   if not Empty(kategori_usaha.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kategori_usaha WHERE selectable=1 AND sandi='+QuotedStr(kategori_usaha.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kategori_usaha.CanFocus then
        kategori_usaha.SetFocus;
      Exit;
    end;

  if not Empty(kategori_usaha.Text) then
    nm_kategori_usaha.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kategori_usaha','sandi',kategori_usaha.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLps0003.kolektibilitasExit(Sender: TObject);
begin
  inherited;
    if not Empty(kolektibilitas.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kolektibilitas WHERE selectable=1 AND sandi='+QuotedStr(kolektibilitas.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kolektibilitas.CanFocus then
        kolektibilitas.SetFocus;
      Exit;
    end;

  if not Empty(kolektibilitas.Text) then
    nm_kolektibilitas.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kolektibilitas','sandi',kolektibilitas.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLps0003.jenisExit(Sender: TObject);
begin
  inherited;
     if not Empty(jenis.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_jenis_kewajiban WHERE selectable=1 AND sandi='+QuotedStr(jenis.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and jenis.CanFocus then
        jenis.SetFocus;
      Exit;
    end;

  if not Empty(jenis.Text) then
    nm_jenis.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_jenis_kewajiban','sandi',jenis.Text,'keterangan');

end;

procedure Tfr_EntryFormLps0003.jenis_agunanExit(Sender: TObject);
begin
  inherited;
  if not Empty(jenis_agunan.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_jenis_agunan WHERE selectable=1 AND sandi='+QuotedStr(jenis_agunan.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and jenis_agunan.CanFocus then
        jenis_agunan.SetFocus;
      Exit;
    end;

  if not Empty(jenis_agunan.Text) then
    nm_jenis_agunan.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_jenis_agunan','sandi',jenis_agunan.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLps0003.nasabah_idExit(Sender: TObject);
begin
  inherited;
//   if not Empty(sandi_kantor.Text) and
//    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
//      cDb2+'.apolo_ref_kantor WHERE selectable=1 AND sandi='+QuotedStr(sandi_kantor.Text))='0') then
//    begin
//      Pesan(2,'Kode sandi tersebut tidak ada');
//      if Self.Showing and sandi_kantor.CanFocus then
//        sandi_kantor.SetFocus;
//      Exit;
//    end;
//
//  if not Empty(sandi_kantor.Text) then
//    nm_sandi_kantor.Text := GetFValueByFKeyValue(cDb2+'.apolo_ref_kantor','sandi',sandi_kantor.Text,'keterangan');
end;

procedure Tfr_EntryFormLps0003.status_pesertaExit(Sender: TObject);
begin
  inherited;
//  if not Empty(status_peserta.Text) and
//    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
//      cDb2+'.apolo_ref_status_kepersetaan WHERE selectable=1 AND sandi='+QuotedStr(status_peserta.Text))='0') then
//    begin
//      Pesan(2,'Kode sandi tersebut tidak ada');
//      if Self.Showing and status_peserta.CanFocus then
//        status_peserta.SetFocus;
//      Exit;
//    end;
//
//  if not Empty(status_peserta.Text) then
//    nm_status_peserta.Text := GetFValueByFKeyValue(cDb2+'.apolo_ref_status_kepersetaan','sandi',status_peserta.Text,'status_kepersetaan');

end;

procedure Tfr_EntryFormLps0003.bt_kategori_usahaClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kategori_usaha';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      kategori_usaha.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_kategori_usaha.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0003.bt_kolektibilitasClick(Sender: TObject);
begin
  inherited;
    if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kolektibilitas';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      kolektibilitas.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_kolektibilitas.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0003.bt_jenisClick(Sender: TObject);
begin
  inherited;
     if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_jenis_kewajiban';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      jenis.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_jenis.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLps0003.bt_jenis_agunanClick(Sender: TObject);
begin
  inherited;
   if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_jenis_agunan';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      jenis_agunan.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_jenis_agunan.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

end.
