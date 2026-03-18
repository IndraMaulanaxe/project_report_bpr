unit CekPassword;
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
  Tfr_CekPassword = class(Tfr_template)
    Edit1: TEdit;
    Label2: TLabel;
    bt_simpan: TsBitBtn;
    Bevel1: TBevel;
    procedure bt_simpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_CekPassword: Tfr_CekPassword;

//function md5(const Input: String): String; external 'OgiesoftLIB.dll';

implementation

uses MyLib, MyVAR;

{$R *.dfm}

procedure Tfr_CekPassword.bt_simpanClick(Sender: TObject);
begin
  inherited;
  If not (SelectRow('select count(*) as hasil from '+cDb2+'.user where level in ('+
      GetMyParameter('LEVEL_OTORISASI_BACKDATE','1')+') and '+
      'password='+QuotedStr(md5(Trim(Edit1.Text))))='0') then
    Tag := 0
  else
    Application.MessageBox('Password salah !','Salah Password',MB_OK or MB_ICONEXCLAMATION);
  Close;
end;

procedure Tfr_CekPassword.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Release;
end;

end.
