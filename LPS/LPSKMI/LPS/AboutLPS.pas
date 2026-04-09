unit AboutLPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Form_Template,
  sSkinProvider, ComCtrls, acProgressBar, sLabel, jpeg;

type
  Tfr_AboutMicroBPROnline = class(Tfr_template)
    Version: TLabel;
    ProductName: TLabel;
    Panel1: TPanel;
    ProgramIcon: TImage;
    OKButton: TButton;
    Copyright: TLabel;
    Comments: TLabel;
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
  fr_AboutMicroBPROnline: Tfr_AboutMicroBPROnline;

implementation

uses MyOgiLib, OgiesoftVAR, DateUtils;

{$R *.dfm}

procedure Tfr_AboutMicroBPROnline.judulMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  inherited;
end;

procedure Tfr_AboutMicroBPROnline.OKButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
