unit AddMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Form_Template, sSkinProvider, sBitBtn;

type
  Tfr_AddMemo = class(Tfr_template)
    Memo1: TMemo;
    bt_ok: TsBitBtn;
    procedure bt_okClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_AddMemo: Tfr_AddMemo;

//function Pesan(nId: Integer; cMessage: String): Boolean; external 'OgiesoftLIB.dll';
//function Empty(cString: String): Boolean; external 'OgiesoftLIB.dll';
  
implementation

uses
  OgiesoftVAR, DaftarPerkiraan;

{$R *.dfm}

procedure Tfr_AddMemo.bt_okClick(Sender: TObject);
begin
  inherited;
//  if Empty(Memo1.Lines.Text) then
//    begin
//      Pesan(2,'Isian masih kosong !');
//      Exit;
//    end;
  Tag := 2;
  Close;
end;

procedure Tfr_AddMemo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_F2) then
    begin
      if Application.FindComponent('fr_DaftarPerkiraan') = nil then
        Application.CreateForm(Tfr_DaftarPerkiraan, fr_DaftarPerkiraan);
      fr_DaftarPerkiraan.Tag := 1;
      fr_DaftarPerkiraan.ShowModal;
      if fr_DaftarPerkiraan.Tag=2 then
        begin
          if Empty(Memo1.Lines.Text) then
            Memo1.Lines.Text := fr_DaftarPerkiraan.MyQDaftarPerkiraankode_perk.AsString
          else
            Memo1.Lines.Text := Memo1.Lines.Text+';'+
                fr_DaftarPerkiraan.MyQDaftarPerkiraankode_perk.AsString;
        end;
      fr_DaftarPerkiraan.Free;
      fr_DaftarPerkiraan := nil;
    end;
end;

end.
