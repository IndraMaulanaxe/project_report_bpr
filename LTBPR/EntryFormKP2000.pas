unit EntryFormKP2000;

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
  Tfr_EntryForm2000 = class(Tfr_new_template)
    Label3: TcxLabel;
    kode_komponen: TcxButtonEdit;
    nm_nik: TcxTextEdit;
    Label6: TcxLabel;
    MemNama: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cb_jabatan: TcxLookupComboBox;
    MyQSandiJabatan: TMyQuery;
    dsMyQSandiJabatan: TMyDataSource;
    MyQSandiJabatansandi: TStringField;
    MyQSandiJabatannama: TStringField;
    cb_status: TcxLookupComboBox;
    MyQSandiKepegawaian: TMyQuery;
    dsMyQSandiKepegawaian: TMyDataSource;
    MyQSandiKepegawaiansandi: TStringField;
    MyQSandiKepegawaianstatus: TStringField;
    cb_pendidikan: TcxLookupComboBox;
    MyQSandiPendidikan: TMyQuery;
    dsMyQSandiPendidikan: TMyDataSource;
    MyQSandiPendidikansandi: TStringField;
    MyQSandiPendidikantingkat: TStringField;
    cb_masajabatan: TcxDateEdit;
    MyDataSource1: TMyDataSource;
    procedure MemKeteranganPropertiesChange(Sender: TObject);
    procedure btlb_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryForm2000: Tfr_EntryForm2000;

implementation

{$R *.dfm}

procedure Tfr_EntryForm2000.btlb_SaveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryForm2000.MemKeteranganPropertiesChange(
  Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

end.
