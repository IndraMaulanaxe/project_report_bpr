unit EntryFormLps0001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sCurrencyEdit, Vcl.ComCtrls, sGroupBox,
  sPageControl, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfr_EntryFormLPS0001 = class(Tfr_template)
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
    no_id: TEdit;
    nama_nasabah: TEdit;
    nama_ibu_kandung: TEdit;
    bt_jenis_id: TsBitBtn;
    nm_jenis_id: TEdit;
    jenis_identitas: TEdit;
    bt_jenis_identitas: TsBitBtn;
    nm_jenis_identitas: TEdit;
    Jenis_id: TEdit;
    no_id2: TEdit;
    tgl_lahir: TDateTimePicker;
    Label1: TLabel;
    nama_pengurus: TEdit;
    sTabSheet2: TsTabSheet;
    Label2: TLabel;
    nomor_identitas: TEdit;
    Label6: TLabel;
    alamat: TEdit;
    Label7: TLabel;
    kota_kab: TEdit;
    bt_kota_kab: TsBitBtn;
    nm_kota_kab: TEdit;
    Label8: TLabel;
    wni: TEdit;
    bt_wni: TsBitBtn;
    nm_wni: TEdit;
    Label9: TLabel;
    telpon: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    hub_dgn_bank: TEdit;
    bt_hub_dgn_bank: TsBitBtn;
    nm_hub_dgn_bank: TEdit;
    Label12: TLabel;
    slik_kode_gol_debitur: TEdit;
    bt_slik_kode_gol_debitur: TsBitBtn;
    nm_slik_kode_gol_debitur: TEdit;
    Label14: TLabel;
    flag_fraud: TEdit;
    bt_flag_fraud: TsBitBtn;
    nm_flag_fraud: TEdit;
    slik_kode_hub_ljk: TEdit;
    bt_slik_kode_hub_ljk: TsBitBtn;
    nm_slik_kode_hub_ljk: TEdit;
    MyQTempflag_detail: TStringField;
    MyQTempnasabah_id: TStringField;
    MyQTempnama_nasabah: TStringField;
    MyQTempjenis_id: TStringField;
    MyQTempno_id: TStringField;
    MyQTempnama_ibu_kandung: TStringField;
    MyQTemptgl_lahir: TDateField;
    MyQTempno_id2: TStringField;
    MyQTempnama_pengurus: TStringField;
    MyQTempjenis_identitas: TStringField;
    MyQTempnomor_identitas: TStringField;
    MyQTempalamat: TStringField;
    MyQTempkota_kab: TStringField;
    MyQTempwni: TStringField;
    MyQTemptelpon: TStringField;
    MyQTempflag_fraud: TStringField;
    MyQTemphub_dgn_bank: TStringField;
    MyQTempslik_kode_hub_ljk: TStringField;
    MyQTempslik_kode_gol_debitur: TStringField;
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_jenis_identitasClick(Sender: TObject);
    procedure bt_jenis_idClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_saveClick(Sender: TObject);
    procedure jenis_identitasExit(Sender: TObject);
    procedure bt_kota_kabClick(Sender: TObject);
    procedure bt_wniClick(Sender: TObject);
    procedure bt_hub_dgn_bankClick(Sender: TObject);
    procedure bt_slik_kode_gol_debiturClick(Sender: TObject);
    procedure bt_flag_fraudClick(Sender: TObject);
    procedure bt_slik_kode_hub_ljkClick(Sender: TObject);
    procedure Jenis_idExit(Sender: TObject);
    procedure kota_kabExit(Sender: TObject);
    procedure wniExit(Sender: TObject);
    procedure flag_fraudExit(Sender: TObject);
    procedure hub_dgn_bankExit(Sender: TObject);
    procedure slik_kode_hub_ljkExit(Sender: TObject);
    procedure slik_kode_gol_debiturExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryFormLPS0001: Tfr_EntryFormLPS0001;
  JenisTrans0001: String;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, MasterRefLPS;

{$R *.dfm}

procedure Tfr_EntryFormLPS0001.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_EntryFormLPS0001.bt_saveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormLPS0001.bt_slik_kode_gol_debiturClick(Sender: TObject);
begin
  inherited;
      if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_gol_nasabah';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      slik_kode_gol_debitur.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_slik_kode_gol_debitur.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.bt_slik_kode_hub_ljkClick(Sender: TObject);
begin
  inherited;
      if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_hub_pihak_terkait';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      slik_kode_hub_ljk.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_slik_kode_hub_ljk.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.bt_wniClick(Sender: TObject);
begin
  inherited;
    if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kewarganegaraan';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      wni.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_wni.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.flag_fraudExit(Sender: TObject);
begin
  inherited;
    if not Empty(flag_fraud.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_flag_fraud WHERE selectable=1 AND sandi='+QuotedStr(flag_fraud.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and flag_fraud.CanFocus then
        flag_fraud.SetFocus;
      Exit;
    end;

  if not Empty(flag_fraud.Text) then
    nm_flag_fraud.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_flag_fraud','sandi',flag_fraud.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLPS0001.bt_jenis_identitasClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_jenis_identitas';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`jenis_identitas`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      jenis_identitas.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_jenis_identitas.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

procedure Tfr_EntryFormLPS0001.hub_dgn_bankExit(Sender: TObject);
begin
  inherited;
    if not Empty(hub_dgn_bank.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_hub_bank WHERE selectable=1 AND sandi='+QuotedStr(hub_dgn_bank.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and hub_dgn_bank.CanFocus then
        hub_dgn_bank.SetFocus;
      Exit;
    end;

  if not Empty(hub_dgn_bank.Text) then
    nm_hub_dgn_bank.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_hub_bank','sandi',hub_dgn_bank.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLPS0001.jenis_identitasExit(Sender: TObject);
begin
  inherited;
  if not Empty(jenis_identitas.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_jenis_identitas WHERE selectable=1 AND sandi='+QuotedStr(jenis_identitas.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and jenis_identitas.CanFocus then
        jenis_identitas.SetFocus;
      Exit;
    end;

  if not Empty(jenis_identitas.Text) then
    nm_jenis_identitas.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_jenis_identitas','sandi',jenis_identitas.Text,'jenis_identitas');

end;

procedure Tfr_EntryFormLPS0001.Jenis_idExit(Sender: TObject);
begin
  inherited;
    if not Empty(Jenis_id.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_jenis_identitas WHERE selectable=1 AND sandi='+QuotedStr(Jenis_id.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and Jenis_id.CanFocus then
        Jenis_id.SetFocus;
      Exit;
    end;

  if not Empty(Jenis_id.Text) then
    nm_jenis_id.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_jenis_identitas','sandi',Jenis_id.Text,'jenis_identitas');

end;

procedure Tfr_EntryFormLPS0001.kota_kabExit(Sender: TObject);
begin
  inherited;
      if not Empty(kota_kab.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kab_kota WHERE selectable=1 AND sandi='+QuotedStr(kota_kab.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kota_kab.CanFocus then
        kota_kab.SetFocus;
      Exit;
    end;

  if not Empty(kota_kab.Text) then
    nm_kota_kab.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kab_kota','sandi',kota_kab.Text,'nama_kotakab');

end;

procedure Tfr_EntryFormLPS0001.slik_kode_gol_debiturExit(Sender: TObject);
begin
  inherited;
             if not Empty(slik_kode_gol_debitur.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_gol_nasabah WHERE selectable=1 AND sandi='+QuotedStr(slik_kode_gol_debitur.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and slik_kode_gol_debitur.CanFocus then
        slik_kode_gol_debitur.SetFocus;
      Exit;
    end;

  if not Empty(slik_kode_gol_debitur.Text) then
    nm_slik_kode_gol_debitur.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_gol_nasabah','sandi',slik_kode_gol_debitur.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLPS0001.slik_kode_hub_ljkExit(Sender: TObject);
begin
  inherited;
          if not Empty(slik_kode_hub_ljk.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_hub_pihak_terkait WHERE selectable=1 AND sandi='+QuotedStr(slik_kode_hub_ljk.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and slik_kode_hub_ljk.CanFocus then
        slik_kode_hub_ljk.SetFocus;
      Exit;
    end;

  if not Empty(slik_kode_hub_ljk.Text) then
    nm_slik_kode_hub_ljk.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_hub_pihak_terkait','sandi',slik_kode_hub_ljk.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLPS0001.wniExit(Sender: TObject);
begin
  inherited;
        if not Empty(wni.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kewarganegaraan WHERE selectable=1 AND sandi='+QuotedStr(wni.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and wni.CanFocus then
        wni.SetFocus;
      Exit;
    end;

  if not Empty(wni.Text) then
    nm_wni.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kewarganegaraan','sandi',wni.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormLPS0001.bt_kota_kabClick(Sender: TObject);
begin
  inherited;
      if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_kab_kota';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`nama_kotakab`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      kota_kab.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_kota_kab.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.bt_flag_fraudClick(Sender: TObject);
begin
  inherited;
       if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_flag_fraud';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      flag_fraud.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_flag_fraud.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.bt_hub_dgn_bankClick(Sender: TObject);
begin
  inherited;
     if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_hub_bank';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      hub_dgn_bank.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_hub_dgn_bank.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

procedure Tfr_EntryFormLPS0001.bt_jenis_idClick(Sender: TObject);
begin
  inherited;
   if Application.FindComponent('fr_MasterRefLPS') = nil then
    Application.CreateForm(Tfr_MasterRefLPS, fr_MasterRefLPS);
  fr_MasterRefLPS.nm_table.Text := cDb2+'.lps_ref_jenis_identitas';
  fr_MasterRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`jenis_identitas`';
  fr_MasterRefLPS.FormCreate(Sender);
  fr_MasterRefLPS.ShowModal;
  if fr_MasterRefLPS.Tag=2 then
    begin
      jenis_id.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_jenis_id.Text := fr_MasterRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_MasterRefLPS.Free;
  fr_MasterRefLPS := nil;
end;

end.
