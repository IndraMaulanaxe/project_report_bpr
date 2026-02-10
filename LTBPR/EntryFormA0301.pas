unit EntryFormA0301;

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
  cxGroupBox, Vcl.ExtCtrls, cxMemo, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxLabel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dm_bpr, Data.DB, DBAccess, MyAccess, MemDS, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar;

type
  Tfr_EntryFormA0301 = class(Tfr_new_template)
    nomor_akta_pendirian: TcxTextEdit;
    Label6: TcxLabel;
    cxLabel1: TcxLabel;
    MyDataSource1: TMyDataSource;
    tgl_akta_pendirian: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    tgl_ubah_anggaran: TcxDateEdit;
    nomor_ubah_anggaran: TcxTextEdit;
    cxLabel4: TcxLabel;
    nomor_pengesahan: TcxTextEdit;
    tgl_pengesahan: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    tgl_mulai_operasi: TcxDateEdit;
    membidangusaha: TcxMemo;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    memtempat_kedudukan: TcxMemo;
    cxLabel9: TcxLabel;
    cb_akuntan_publik: TcxLookupComboBox;
    memketerangan: TcxMemo;
    cxLabel10: TcxLabel;
    kode_komponen: TcxButtonEdit;
    Label3: TcxLabel;
    dsMyQref_opini_akuntan_publik: TMyDataSource;
    MyQref_opini_akuntan_publik: TMyQuery;
    MyQref_opini_akuntan_publiksandi: TStringField;
    MyQref_opini_akuntan_publiknama: TStringField;
    procedure MemKeteranganPropertiesChange(Sender: TObject);
    procedure btlb_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryFormA0301: Tfr_EntryFormA0301;

implementation

{$R *.dfm}

procedure Tfr_EntryFormA0301.btlb_SaveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormA0301.MemKeteranganPropertiesChange(
  Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

end.
