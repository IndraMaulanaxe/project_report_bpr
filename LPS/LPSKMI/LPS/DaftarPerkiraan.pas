unit DaftarPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, 
  Form_Template, sSkinProvider, ExtCtrls, DBAccess, MyAccess, MemDS, sPanel,
  sBitBtn;

type
  Tfr_DaftarPerkiraan = class(Tfr_template)
    DBGrid1: TDBGrid;
    MyQDaftarPerkiraan: TMyQuery;
    MyQDaftarPerkiraankode_perk: TStringField;
    MyQDaftarPerkiraannama_perk: TStringField;
    MyQDaftarPerkiraankode_alternatif: TStringField;
    MyQDaftarPerkiraankode_konsolidasi: TStringField;
    MyQDaftarPerkiraantype_perk: TStringField;
    MyQDaftarPerkiraansaldo_akhir: TFloatField;
    MyQDaftarPerkiraand_or_k: TStringField;
    MyQDaftarPerkiraang_or_d: TStringField;
    MyQDaftarPerkiraanlevel_perk: TIntegerField;
    MyQDaftarPerkiraanid_induk: TIntegerField;
    MyQDaftarPerkiraansaldo_awal: TFloatField;
    MyQDaftarPerkiraansaldo_kredit: TFloatField;
    MyQDaftarPerkiraansaldo_debet: TFloatField;
    MyQDaftarPerkiraankode_induk: TStringField;
    MyQDaftarPerkiraanid_perk: TIntegerField;
    dsDaftarPerkiraan: TMyDataSource;
    sPanel1: TsPanel;
    Label58: TLabel;
    Edit1: TEdit;
    bt_search: TsBitBtn;
    sPanel2: TsPanel;
    bt_close: TsBitBtn;
    bt_pilih: TsBitBtn;
    MyQDaftarPerkiraannm_perk: TStringField;
    bt_refresh: TsBitBtn;
    procedure b_prosesClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bt_PilihClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bt_refreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_DaftarPerkiraan: Tfr_DaftarPerkiraan;
  KeySort: string;

//function Empty(cString: String): Boolean; external 'OgiesoftLIB.dll';
//function SubStr(cString: String; nStart, nlen: integer): string; external 'OgiesoftLIB.dll';
//function At(cCari,cText: String): Integer; external 'OgiesoftLIB.dll';

implementation

uses
  OgiesoftVAR, dm_bpr, MyOgiLib;

{$R *.dfm}

procedure Tfr_DaftarPerkiraan.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_DaftarPerkiraan.bt_PilihClick(Sender: TObject);
var
  cJml: string;
begin
  inherited;
  cJml := SelectRow('SELECT COUNT(*) AS jml '+
    'FROM '+cDb2+'.app_kode_perk_limit '+
    'WHERE modul="MOD" AND kode_perk='+QuotedStr(MyQDaftarPerkiraankode_perk.AsString));

  if StrToInt(cJml) > 0 then
    begin
      Pesan(2,'Maaf, anda tidak boleh memilih perkiraan yang digunakan pada modul system...!');
      Exit;
    end;

  if (Tag=0) and (MyQDaftarPerkiraang_or_d.Text='G') then
    begin
      Pesan(2,'Maaf, anda tidak boleh memilih perkiraan induk...!');
      Exit;
    end;

  Tag := 2;
  Close;
end;

procedure Tfr_DaftarPerkiraan.bt_refreshClick(Sender: TObject);
begin
  inherited;
  MyQDaftarPerkiraan.Refresh;
end;

procedure Tfr_DaftarPerkiraan.bt_searchClick(Sender: TObject);
var
  cfield: String;
begin
  inherited;
  if (At(' DESC', KeySort)= 0) then
    cfield := KeySort
  else
    cfield := SubStr(KeySort,1,At(' DESC', KeySort));

  if not Empty(Edit1.Text) and (Tag=0) then
    begin
      MyQDaftarPerkiraan.MacroByName('WHERE').Value :='WHERE (kode_perk like '
        +QuotedStr(Edit1.Text+'%')+
        ' or kode_alternatif like '+QuotedStr(Edit1.Text+'%')+
        ' or nama_perk like '+QuotedStr('%'+Edit1.Text+'%')+')';
    end
  else
    MyQDaftarPerkiraan.MacroByName('WHERE').Value :='WHERE 0=0';

  MyQDaftarPerkiraan.MacroByName('ORDER').Value := 'ORDER BY '+KeySort;

  if MyQDaftarPerkiraan.Active then
    MyQDaftarPerkiraan.Refresh
  else
    MyQDaftarPerkiraan.Open;

  if (Tag=1) then
    if not MyQDaftarPerkiraan.Locate('kode_perk',Trim(Edit1.Text),[loCaseInsensitive, loPartialKey]) then
      MyQDaftarPerkiraan.Locate('nama_perk',Trim(Edit1.Text),[loCaseInsensitive, loPartialKey]);

  if not Empty(Edit1.Text) then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
    end;
end;

procedure Tfr_DaftarPerkiraan.b_prosesClick(Sender: TObject);
begin
  inherited;
//  if e_cari.Text<>'<kode perkiraan, kode alternatif, nama perkiraan>' then
//  begin
//    MyQDaftarPerkiraan.MacroByName('WHERE').AsString :=' where kode_perk like '
//    +QuotedStr('%'+e_cari.Text+'%')+' or kode_alternatif like '+QuotedStr('%'+e_cari.Text+'%')+
//    ' or nama_perk like '+QuotedStr('%'+e_cari.Text+'%');
//    MyQDaftarPerkiraan.Refresh;
//  end;
end;

procedure Tfr_DaftarPerkiraan.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfr_DaftarPerkiraan.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
    Key := 0; {ignore}
  if Key =  VK_UP then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQDaftarPerkiraan.Prior;
      Key := 0;
    end;
  if Key =  VK_DOWN then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQDaftarPerkiraan.Next;
      Key := 0;
    end;
//  if Key =  VK_PRIOR then
//    begin
//      bt_search.Default := False;
//      bt_Pilih.Default := True;
//      FocusControl(DBGrid1); {Give Grid Focus}
//
//      {Then simulate PageDown}
//      keybd_event(VK_PRIOR, 0, 0, 0);
////      keybd_event(VK_PRIOR, 0, KEYEVENTF_KEYUP, 0);
////      Key := 0;
//    end;
//  if Key =  VK_NEXT then
//    begin
//      bt_search.Default := False;
//      bt_Pilih.Default := True;
//      FocusControl(DBGrid1); {Give Grid Focus}
//
//      {Then simulate PageDown}
//      keybd_event(VK_NEXT, 0, 0, 0);
////      keybd_event(VK_NEXT, 0, KEYEVENTF_KEYUP, 0);
////      Key := 0;
//    end;
end;

procedure Tfr_DaftarPerkiraan.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfr_DaftarPerkiraan.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  pt: TGridcoord;
begin
  inherited;
  pt:= DBGrid1.MouseCoord(x, y);

  if pt.y=0 then
    DBGrid1.Cursor:=crHandPoint
  else
    DBGrid1.Cursor:=crDefault;
end;

procedure Tfr_DaftarPerkiraan.DBGrid1TitleClick(Column: TColumn);
{$J+}
const PreviousColumnIndex: integer = 0;
{$J-}
begin
  inherited;
  if DBGrid1.DataSource.DataSet is TMyQuery then
    with TMyQuery(DBGrid1.DataSource.DataSet) do
    begin
      try
        DBGrid1.Columns[PreviousColumnIndex].title.Font.Style :=
        DBGrid1.Columns[PreviousColumnIndex].title.Font.Style - [fsItalic];
      except
      end;

      Column.title.Font.Style :=
      Column.title.Font.Style + [fsItalic];
      PreviousColumnIndex := Column.Index;
      if (Pos(Column.FieldName, KeySort) = 1)
      and (Pos(' DESC', KeySort)= 0) then
        KeySort := Column.FieldName + ' DESC'
      else
        KeySort := Column.FieldName;

      MyQDaftarPerkiraan.MacroByName('ORDER').Value := 'ORDER BY '+KeySort;
      if MyQDaftarPerkiraan.Active then
        MyQDaftarPerkiraan.Refresh;
    end;
end;

procedure Tfr_DaftarPerkiraan.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
    Key := 0; {ignore}
  if Key =  VK_RETURN then
    begin
      bt_searchClick(Sender);
      bt_Pilih.Default := True;
      Key := 0;
    end;
  if Key =  VK_UP then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQDaftarPerkiraan.Prior;
      Key := 0;
    end;
  if Key =  VK_DOWN then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      MyQDaftarPerkiraan.Next;
      Key := 0;
    end;
  if Key =  VK_PRIOR then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      FocusControl(DBGrid1); {Give Grid Focus}

      {Then simulate PageDown}
      keybd_event(VK_PRIOR, 0, 0, 0);
//      keybd_event(VK_PRIOR, 0, KEYEVENTF_KEYUP, 0);
//      Key := 0;
    end;
  if Key =  VK_NEXT then
    begin
      bt_search.Default := False;
      bt_Pilih.Default := True;
      FocusControl(DBGrid1); {Give Grid Focus}

      {Then simulate PageDown}
      keybd_event(VK_NEXT, 0, 0, 0);
//      keybd_event(VK_NEXT, 0, KEYEVENTF_KEYUP, 0);
//      Key := 0;
    end;
end;

procedure Tfr_DaftarPerkiraan.FormActivate(Sender: TObject);
begin
  inherited;
  bt_searchClick(Sender);
end;

procedure Tfr_DaftarPerkiraan.FormCreate(Sender: TObject);
begin
  inherited;
  if dm_bpr1.MyCon2.Connected then
    begin
      KeySort := DBGrid1.Columns.Items[1].FieldName;
      DBGrid1.Columns.Items[1].Title.Font.Style := DBGrid1.Columns.Items[1].title.Font.Style + [fsItalic];
    end
  else
    Pesan(1,'Koneksi dengan Database terputus !');
end;

end.
