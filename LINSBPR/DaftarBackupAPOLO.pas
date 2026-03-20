unit DaftarBackupAPOLO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, sSkinProvider, StdCtrls, ExtCtrls, sPanel, Grids,
  DBGrids, Buttons, DB, MemDS, DBAccess, MyAccess;

type
  Tfr_DaftarBackupAPOLO = class(Tfr_template)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    Label58: TLabel;
    Edit1: TEdit;
    bt_search: TBitBtn;
    bt_close: TBitBtn;
    DBGrid1: TDBGrid;
    bt_pilih: TBitBtn;
    dsDaftar: TMyDataSource;
    MyQDaftar: TMyQuery;
    MyQDaftarkode_arsip: TStringField;
    MyQDaftarcreated_by: TIntegerField;
    MyQDaftarlast_created: TDateTimeField;
    MyQDaftarlast_updated: TDateTimeField;
    MyQDaftartgl_laporan: TDateField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure bt_pilihClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_DaftarBackupAPOLO: Tfr_DaftarBackupAPOLO;

implementation

uses
  dm_bpr, MyVAR, MyLib;

{$R *.dfm}

procedure Tfr_DaftarBackupAPOLO.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_DaftarBackupAPOLO.bt_pilihClick(Sender: TObject);
var
  cTemp: string;
begin
  inherited;
  if MyQDaftar.RecordCount=0 then
    Exit;

  Tag := 2;
  Close
end;

procedure Tfr_DaftarBackupAPOLO.bt_searchClick(Sender: TObject);
begin
  inherited;
  if not Empty(Edit1.Text) and (Tag=0) then
    begin
      MyQDaftar.MacroByName('WHERE').Value := 'WHERE '+
        'kode_arsip LIKE '+QuotedStr('%'+Trim(Edit1.Text)+'%');
    end
  else
    MyQDaftar.MacroByName('WHERE').Value := '';

  if MyQDaftar.Active then
    MyQDaftar.Refresh
  else
    MyQDaftar.Open;

  if not Empty(Edit1.Text) then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
    end;
end;

procedure Tfr_DaftarBackupAPOLO.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DBGrid1.DataSource.DataSet.RecNo mod StrToInt(cColorGridRow) = 0 then
  begin
     DBGrid1.Canvas.Font.Color:=StrToInt(cColorGridOddFront);
     DBGrid1.Canvas.Brush.Color:=StrToInt(cColorGridOddBg);
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  If (gdSelected in State) then
    begin
     DBGrid1.Canvas.Font.Color:=StrToInt(cColorGridSelectedFront);
     DBGrid1.Canvas.Brush.Color:=StrToInt(cColorGridSelectedBg);
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure Tfr_DaftarBackupAPOLO.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
    Key := 0; {ignore}
  if Key =  VK_UP then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQDaftar.Prior;
      Key := 0;
    end;
  if Key =  VK_DOWN then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQDaftar.Next;
      Key := 0;
    end;
end;

procedure Tfr_DaftarBackupAPOLO.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in [' ','0'..'9','a'..'z','A'..'Z'] then
    begin
      Edit1.Text := Edit1.Text+Key;
      Edit1.SetFocus;
      Edit1.SelStart:=Edit1.SelLength;
    end;
  if Key = #8 then  //backspace
    begin
      Edit1.Text := LeftStr(Edit1.Text,Length(Edit1.Text)-1);
      Edit1.SetFocus;
      Edit1.SelStart:=Edit1.SelLength;
    end;
end;

procedure Tfr_DaftarBackupAPOLO.Edit1Change(Sender: TObject);
begin
  inherited;
  bt_searchClick(Sender);
end;

procedure Tfr_DaftarBackupAPOLO.FormActivate(Sender: TObject);
begin
  inherited;
  if MyQDaftar.Active then
    MyQDaftar.Refresh
  else
    MyQDaftar.Open;
end;

end.
