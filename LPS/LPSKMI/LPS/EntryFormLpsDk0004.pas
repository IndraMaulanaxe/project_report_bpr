unit EntryFormLpsDk0004;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form_Template, sSkinProvider,
  Vcl.StdCtrls, Vcl.Buttons, sBitBtn, Vcl.ExtCtrls, sPanel, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sCurrencyEdit, Vcl.ComCtrls, sGroupBox,
  sPageControl, Data.DB, MemDS, DBAccess, MyAccess;

type
  Tfr_EntryFormLpsDk0004 = class(Tfr_template)
    sPanel1: TsPanel;
    bt_save: TsBitBtn;
    bt_cancel: TsBitBtn;
    dsMyQTemp: TMyDataSource;
    MyQTemp: TMyQuery;
    sCurrencyEdit3: TsCurrencyEdit;
    GroupEdit: TsGroupBox;
    sPageControl1: TsPageControl;
    sPanel2: TsPanel;
    no_rekening: TEdit;
    Label16: TLabel;
    nasabah_id: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    persentase_kepemilikan: TsCurrencyEdit;
    MyQTempnasabah_id: TStringField;
    MyQTempno_rekening: TStringField;
    MyQTemppersentase_kepemilikan: TFloatField;
    procedure bt_cancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_EntryFormLpsDk0004: Tfr_EntryFormLpsDk0004;
  JenisTrans0004: String;

implementation

uses
  dm_bpr, OgiesoftVAR, MyOgiLib, MasterRefLPS;

{$R *.dfm}



procedure Tfr_EntryFormLpsDk0004.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_EntryFormLpsDk0004.bt_saveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormLpsDk0004.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
    if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

end.
