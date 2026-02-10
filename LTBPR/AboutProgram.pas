unit AboutProgram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Form_Template,
  sSkinProvider, ComCtrls, acProgressBar, sLabel, jpeg;

type
  Tfr_AboutLTBPR = class(Tfr_template)
    Version: TLabel;
    ProductName: TLabel;
    Panel1: TPanel;
    ProgramIcon: TImage;
    OKButton: TButton;
    Copyright: TLabel;
    Bevel1: TBevel;
    procedure OKButtonClick(Sender: TObject);
    procedure judulMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_AboutLTBPR: Tfr_AboutLTBPR;

implementation

uses MyLib, MyVAR, DateUtils;

{$R *.dfm}

procedure Tfr_AboutLTBPR.judulMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  inherited;
end;

procedure Tfr_AboutLTBPR.OKButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
