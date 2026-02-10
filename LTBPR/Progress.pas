unit Progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, sSkinProvider, StdCtrls, sGauge;

type
  Tfr_Progress = class(Tfr_template)
    sGauge1: TsGauge;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_Progress: Tfr_Progress;

implementation

{$R *.dfm}

end.
