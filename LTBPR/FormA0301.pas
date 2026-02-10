unit FormA0301;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NewTemplate, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
//  dxSkinsCore,
//  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
//  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
//  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
//  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
//  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
//  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
//  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
//  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
//  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
//  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
//  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
//  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
//  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
//  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
//  dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGroupBox, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS, MyVAR,
  MyLib, EntryFormA0301, dxDateRanges;

type
  Tfr_FormA0301 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQA0301: TMyDataSource;
    MyQA0301: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQA0301flag_detail: TStringField;
    MyQA0301kode_komponen: TStringField;
    MyQA0301nomor_akta_pendirian: TStringField;
    MyQA0301tanggal_akta_pendirian: TDateField;
    MyQA0301nomor_perubahan_anggaran_dasar: TStringField;
    MyQA0301tanggal_perubahan_anggaran_dasar: TDateField;
    MyQA0301nomor_pengesahan_dari_instansi: TStringField;
    MyQA0301tanggal_pengesahan_dari_instansi: TDateField;
    MyQA0301tanggal_mulai_beroperasi: TDateField;
    MyQA0301bidang_usaha_sesuai_anggaran_dasar: TStringField;
    MyQA0301tempat_kedudukan: TStringField;
    MyQA0301opini_akuntan_publik: TStringField;
    MyQA0301nama_akuntan_publik: TStringField;
    MyQA0301keterangan: TStringField;
    cxGridDBTableView1flag_detail: TcxGridDBColumn;
    cxGridDBTableView1kode_komponen: TcxGridDBColumn;
    cxGridDBTableView1nomor_akta_pendirian: TcxGridDBColumn;
    cxGridDBTableView1tanggal_akta_pendirian: TcxGridDBColumn;
    cxGridDBTableView1nomor_perubahan_anggaran_dasar: TcxGridDBColumn;
    cxGridDBTableView1tanggal_perubahan_anggaran_dasar: TcxGridDBColumn;
    cxGridDBTableView1nomor_pengesahan_dari_instansi: TcxGridDBColumn;
    cxGridDBTableView1tanggal_pengesahan_dari_instansi: TcxGridDBColumn;
    cxGridDBTableView1tanggal_mulai_beroperasi: TcxGridDBColumn;
    cxGridDBTableView1bidang_usaha_sesuai_anggaran_dasar: TcxGridDBColumn;
    cxGridDBTableView1tempat_kedudukan: TcxGridDBColumn;
    cxGridDBTableView1opini_akuntan_publik: TcxGridDBColumn;
    cxGridDBTableView1nama_akuntan_publik: TcxGridDBColumn;
    procedure btlb_RefreshClick(Sender: TObject);
    procedure btlb_EditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btlb_InsertClick(Sender: TObject);
    procedure btlb_DeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormA0301: Tfr_FormA0301;

implementation

{$R *.dfm}

procedure Tfr_FormA0301.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQA0301.RecordCount=0) or (not MyQA0301.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if not Pesan(3, 'yakin mau hapus data?') then
    Exit;

  MyExecuteSQL('DELETE FROM '+cDb2+'.`ltbprk_a0301_riwayat_pendirian_bpr` '+
    '  WHERE `nomor_perubahan_anggaran_dasar` = '+QuotedStr(MyQA0301nomor_perubahan_anggaran_dasar.Text));

  if MyQA0301.Active then
    MyQA0301.Refresh
  else
    MyQA0301.Open;

end;

procedure Tfr_FormA0301.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQA0301.RecordCount=0) or (not MyQA0301.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryFormA0301') = nil then
    Application.CreateForm(Tfr_EntryFormA0301, fr_EntryFormA0301);

  with fr_EntryFormA0301 do
    begin

      //open table reff
      if MyQref_opini_akuntan_publik.Active then
        MyQref_opini_akuntan_publik.Refresh
      else
        MyQref_opini_akuntan_publik.Open;

      //size
      kode_komponen.Properties.MaxLength := MyQA0301kode_komponen.Size;
      nomor_akta_pendirian.Properties.MaxLength := MyQA0301nomor_akta_pendirian.Size;
      nomor_ubah_anggaran.Properties.MaxLength := MyQA0301nomor_perubahan_anggaran_dasar.Size;
      membidangusaha.Properties.MaxLength := MyQA0301bidang_usaha_sesuai_anggaran_dasar.Size;
      memtempat_kedudukan.Properties.MaxLength := MyQA0301tempat_kedudukan.Size;
      memketerangan.Properties.MaxLength := MyQA0301keterangan.Size;

      //assignment
      kode_komponen.Text := MyQA0301kode_komponen.Text;
      nomor_akta_pendirian.Text := MyQA0301nomor_akta_pendirian.Text;
      tgl_akta_pendirian.Date :=MyQA0301tanggal_akta_pendirian.Value;
      nomor_ubah_anggaran.Text := MyQA0301nomor_perubahan_anggaran_dasar.Text;
      tgl_ubah_anggaran.Date :=MyQA0301tanggal_perubahan_anggaran_dasar.Value;
      nomor_pengesahan.Text := MyQA0301nomor_pengesahan_dari_instansi.Text;
      tgl_pengesahan.Date :=MyQA0301tanggal_pengesahan_dari_instansi.Value;
      tgl_mulai_operasi.Date :=MyQA0301tanggal_mulai_beroperasi.Value;
      membidangusaha.Text := MyQA0301bidang_usaha_sesuai_anggaran_dasar.Text;
      memtempat_kedudukan.Text := MyQA0301tempat_kedudukan.Text;
      memketerangan.Text := MyQA0301keterangan.Text;
      cb_akuntan_publik.EditValue := MyQA0301opini_akuntan_publik.Text;

      kode_komponen.Enabled := False;
    end;
  fr_EntryFormA0301.Tag := 0;
  fr_EntryFormA0301.ShowModal;
  if fr_EntryFormA0301.Tag=2 then
    begin
      with fr_EntryFormA0301 do
        begin
          // Update
          MyExecuteSQL('UPDATE '+cDb2+'.`ltbprk_a0301_riwayat_pendirian_bpr` '+
            'SET `kode_komponen` = '+QuotedStr(kode_komponen.text)+
            ',`nomor_akta_pendirian` = '+QuotedStr(nomor_akta_pendirian.text)+
            ', `tanggal_akta_pendirian` = '+DateToStrSQL(tgl_akta_pendirian.Date)+
            ',`nomor_perubahan_anggaran_dasar` = '+QuotedStr(nomor_ubah_anggaran.text)+
            ', `tanggal_perubahan_anggaran_dasar` = '+DateToStrSQL(tgl_ubah_anggaran.Date)+
            ',`nomor_pengesahan_dari_instansi` = '+QuotedStr(nomor_pengesahan.text)+
            ', `tanggal_pengesahan_dari_instansi` = '+DateToStrSQL(tgl_pengesahan.Date)+
            ', `tanggal_mulai_beroperasi` = '+DateToStrSQL(tgl_mulai_operasi.Date)+
            ', `bidang_usaha_sesuai_anggaran_dasar` = '+QuotedStr(membidangusaha.text)+
            ', `tempat_kedudukan` = '+QuotedStr(memtempat_kedudukan.text)+
            ', `opini_akuntan_publik` = '+IntToStr(cb_akuntan_publik.itemindex)+
            ', `nama_akuntan_publik` = '+QuotedStr(cb_akuntan_publik.EditValue)+
            ', `keterangan` = '+QuotedStr(memketerangan.text)+
            '  WHERE `nomor_perubahan_anggaran_dasar` = '+QuotedStr(MyQA0301nomor_perubahan_anggaran_dasar.Text));
        end;
      if MyQA0301.Active then
        MyQA0301.Refresh
      else
        MyQA0301.Open;
    end;

  fr_EntryFormA0301.Free;
  fr_EntryFormA0301 := nil;
end;

procedure Tfr_FormA0301.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if (not MyQA0301.Active) then
    begin
      Pesan(2,'Maaf, table belum aktif...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryFormA0301') = nil then
    Application.CreateForm(Tfr_EntryFormA0301, fr_EntryFormA0301);

  with fr_EntryFormA0301 do
    begin
      //open table reff
      if MyQref_opini_akuntan_publik.Active then
        MyQref_opini_akuntan_publik.Refresh
      else
        MyQref_opini_akuntan_publik.Open;

      //size
      kode_komponen.Properties.MaxLength := MyQA0301kode_komponen.Size;
      nomor_akta_pendirian.Properties.MaxLength := MyQA0301nomor_akta_pendirian.Size;
      nomor_ubah_anggaran.Properties.MaxLength := MyQA0301nomor_perubahan_anggaran_dasar.Size;
      membidangusaha.Properties.MaxLength := MyQA0301bidang_usaha_sesuai_anggaran_dasar.Size;
      memtempat_kedudukan.Properties.MaxLength := MyQA0301tempat_kedudukan.Size;
      memketerangan.Properties.MaxLength := MyQA0301keterangan.Size;

      //assignment
      kode_komponen.Text := MyQA0301kode_komponen.Text;
      nomor_akta_pendirian.Text := MyQA0301nomor_akta_pendirian.Text;
      tgl_akta_pendirian.Date :=MyQA0301tanggal_akta_pendirian.Value;
      nomor_ubah_anggaran.Text := MyQA0301nomor_perubahan_anggaran_dasar.Text;
      tgl_ubah_anggaran.Date :=MyQA0301tanggal_perubahan_anggaran_dasar.Value;
      nomor_pengesahan.Text := MyQA0301nomor_pengesahan_dari_instansi.Text;
      tgl_pengesahan.Date :=MyQA0301tanggal_pengesahan_dari_instansi.Value;
      tgl_mulai_operasi.Date :=MyQA0301tanggal_mulai_beroperasi.Value;
      membidangusaha.Text := MyQA0301bidang_usaha_sesuai_anggaran_dasar.Text;
      memtempat_kedudukan.Text := MyQA0301tempat_kedudukan.Text;
      memketerangan.Text := MyQA0301keterangan.Text;
      cb_akuntan_publik.EditValue := MyQA0301opini_akuntan_publik.Text;

      //assignment
      tgl_akta_pendirian.Date := dTglSystem;
      tgl_ubah_anggaran.Date := dTglSystem;
      tgl_pengesahan.Date := dTglSystem;
      tgl_mulai_operasi.Date := dTglSystem;
      kode_komponen.Text := '03001';

      kode_komponen.Enabled := False;
    end;
  fr_EntryFormA0301.Tag := 0;
  fr_EntryFormA0301.ShowModal;
  if fr_EntryFormA0301.Tag=2 then
    begin
      with fr_EntryFormA0301 do
        begin
          // Insert
          MyExecuteSQL( 'INSERT INTO '+cDb2+'.`ltbprk_a0301_riwayat_pendirian_bpr` SET '+
                        '`kode_komponen` = '+QuotedStr(kode_komponen.Text)+
                        ', `nomor_akta_pendirian` = '+QuotedStr(nomor_akta_pendirian.Text)+
                        ', `tanggal_akta_pendirian` = '+DateToStrSQL(tgl_akta_pendirian.Date)+
                        ', `nomor_perubahan_anggaran_dasar` = '+QuotedStr(nomor_ubah_anggaran.Text)+
                        ', `tanggal_perubahan_anggaran_dasar` = '+DateToStrSQL(tgl_ubah_anggaran.Date)+
                        ', `nomor_pengesahan_dari_instansi` = '+QuotedStr(nomor_pengesahan.Text)+
                        ', `tanggal_pengesahan_dari_instansi` = '+DateToStrSQL(tgl_pengesahan.Date)+
                        ', `tanggal_mulai_beroperasi` = '+DateToStrSQL(tgl_mulai_operasi.Date)+
                        ', `bidang_usaha_sesuai_anggaran_dasar` = '+QuotedStr(membidangusaha.Text)+
                        ', `tempat_kedudukan` = '+QuotedStr(memtempat_kedudukan.Text)+
                        ', `opini_akuntan_publik` = '+IntToStr(cb_akuntan_publik.ItemIndex)+
                        ', `nama_akuntan_publik` = '+QuotedStr(cb_akuntan_publik.EditValue)+
                        ', `keterangan` = '+QuotedStr(memketerangan.Text)
                      );
        end;
      if MyQA0301.Active then
        MyQA0301.Refresh
      else
        MyQA0301.Open;
    end;

  fr_EntryFormA0301.Free;
  fr_EntryFormA0301 := nil;
end;

procedure Tfr_FormA0301.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQA0301.Active then
    MyQA0301.Refresh
  else
    MyQA0301.Open;
end;

procedure Tfr_FormA0301.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_FormA0301.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
