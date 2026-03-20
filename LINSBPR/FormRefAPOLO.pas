unit FormRefAPOLO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, sSkinProvider, Data.DB, MemDS, DBAccess,
  MyAccess, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  sPanel;

type
  Tfr_FormRefAPOLO = class(TForm)
    dsMasterReferensi: TMyDataSource;
    MyQMasterReferensi: TMyQuery;
    sSkinProvider1: TsSkinProvider;
    sPanel2: TsPanel;
    Label58: TLabel;
    Edit1: TEdit;
    bt_search: TBitBtn;
    nm_table: TEdit;
    filter2: TEdit;
    sPanel1: TsPanel;
    bt_close: TBitBtn;
    bt_pilih: TBitBtn;
    DBGrid1: TDBGrid;
    procedure bt_closeClick(Sender: TObject);
    procedure bt_pilihClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormRefAPOLO: Tfr_FormRefAPOLO;

implementation

{$R *.dfm}

uses MyLib, MyVAR;

procedure Tfr_FormRefAPOLO.bt_closeClick(Sender: TObject);
begin
  Close;
end;

procedure Tfr_FormRefAPOLO.bt_pilihClick(Sender: TObject);
var
  cTemp: string;
begin
  inherited;
  if MyQMasterReferensi.RecordCount=0 then
    Exit;

  if not Empty(filter2.Text) then
    begin
      cTemp := SelectRow('SELECT COUNT(*) AS jml '+
        'FROM '+nm_table.Text+' '+
        'WHERE sandi='+QuotedStr(MyQMasterReferensi.FieldByName('SANDI').AsString)+
        '   AND '+filter2.Text);
      if StrToInt(cTemp)=0 then
        begin
          Pesan(2,'Sandi tersebut tidak masuk dalam kriteria...!');
          Exit;
        end;
    end;

  if MyQMasterReferensi.FieldByName('selectable').AsInteger=0 then
    Exit;

  Tag := 2;
  Close
end;

procedure Tfr_FormRefAPOLO.bt_searchClick(Sender: TObject);
begin
  inherited;
  if not Empty(Edit1.Text) and (Tag=0) then
    begin
      MyQMasterReferensi.MacroByName('WHERE').Value := 'WHERE '+
        'sandi LIKE '+QuotedStr('%'+Trim(Edit1.Text)+'%')+' or '+
        ' '+MyQMasterReferensi.MacroByName('FIELD2').Value+' like '+QuotedStr('%'+Trim(Edit1.Text)+'%');
    end
  else
    MyQMasterReferensi.MacroByName('WHERE').Value := '';

  if MyQMasterReferensi.Active then
    MyQMasterReferensi.Refresh
  else
    MyQMasterReferensi.Open;

  if not Empty(Edit1.Text) and (Tag=1)then
    begin
      if not MyQMasterReferensi.Locate('sandi',Trim(Edit1.Text),[loCaseInsensitive]) then
        MyQMasterReferensi.Locate(MyQMasterReferensi.MacroByName('FIELD2').Value,Trim(Edit1.Text),[loCaseInsensitive]);
    end;

  if not Empty(Edit1.Text) then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
    end;
end;

procedure Tfr_FormRefAPOLO.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfr_FormRefAPOLO.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
    Key := 0; {ignore}
  if Key =  VK_UP then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQMasterReferensi.Prior;
      Key := 0;
    end;
  if Key =  VK_DOWN then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQMasterReferensi.Next;
      Key := 0;
    end;
end;

procedure Tfr_FormRefAPOLO.DBGrid1KeyPress(Sender: TObject;
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

procedure Tfr_FormRefAPOLO.Edit1Change(Sender: TObject);
begin
  bt_searchClick(Sender);
end;

procedure Tfr_FormRefAPOLO.FormActivate(Sender: TObject);
begin
  inherited;
  if MyQMasterReferensi.Active then
    MyQMasterReferensi.Refresh
  else
    MyQMasterReferensi.Open;
end;

procedure Tfr_FormRefAPOLO.FormCreate(Sender: TObject);
begin
  inherited;
  MyQMasterReferensi.MacroByName('NAMA_TABLE').Value := nm_table.Text;
end;

end.
