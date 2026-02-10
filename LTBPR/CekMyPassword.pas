unit CekMyPassword;
{
  Nama Form     : fr_CekPassword
  Create        : Juni 2004
  Last Update   : 02 Mei 2007
  Create By     : Hamsudi
  Company       : Ogiesoft
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, 
  sSkinProvider, Form_Template, sBitBtn;

type
  Tfr_CekMyPassword = class(Tfr_template)
    Edit1: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    bt_simpan: TsBitBtn;
    procedure bt_simpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CekMyPassword: Tfr_CekMyPassword;

//function md5(const Input: String): String; external 'OgiesoftLIB.dll';

implementation

uses MyLib, MyVAR;

{$R *.dfm}

procedure Tfr_CekMyPassword.bt_simpanClick(Sender: TObject);
begin
  inherited;
  if not (SelectRow('select count(*) as hasil from '+cDb2+'.user where level=1 and '+
      'password='+QuotedStr(md5(Trim(Edit1.Text))))='0') then
    Tag := 0
  else if not (SelectRow('select count(*) as hasil from '+cDb2+'.user where user='+QuotedStr(cNamaUser)+' and '+
      'password='+QuotedStr(md5(Trim(Edit1.Text))))='0') then
    Tag := 0
  else
    Application.MessageBox('Password salah !','Salah Password',MB_OK or MB_ICONEXCLAMATION);
  Close;
end;

procedure Tfr_CekMyPassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Release;
end;

end.
