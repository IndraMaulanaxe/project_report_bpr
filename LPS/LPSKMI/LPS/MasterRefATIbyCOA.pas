unit MasterRefATIbyCOA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, StdCtrls, Buttons, sBitBtn, Grids, DBGrids, sGauge,
  ExtCtrls, sPanel, DB, MemDS, DBAccess, MyAccess, sSkinProvider, sLabel,
  DBCtrls;

type
  Tfr_MasterRefATIByCOA = class(Tfr_template)
    dsMyQAtiCOA: TMyDataSource;
    MyQAtiCOA: TMyQuery;
    sPanel2: TsPanel;
    sGauge1: TsGauge;
    DBGrid1: TDBGrid;
    sPanel1: TsPanel;
    bt_tambah: TsBitBtn;
    bt_edit: TsBitBtn;
    bt_delete: TsBitBtn;
    bt_close: TsBitBtn;
    bt_refresh: TsBitBtn;
    bt_biaya_perolehan: TsBitBtn;
    MyQAtiCOAid: TIntegerField;
    MyQAtiCOAsandi: TStringField;
    MyQAtiCOAati_tidak_berwujud: TStringField;
    MyQAtiCOAselectable: TSmallintField;
    MyQAtiCOAkode_old: TStringField;
    MyQAtiCOAsandi_sumber_perolehan: TStringField;
    MyQAtiCOAsandi_status_aset: TStringField;
    MyQAtiCOAkode_perk_biaya_perolehan: TStringField;
    MyQAtiCOAkode_perk_akumulasi_amortisasi: TStringField;
    MyQAtiCOAkode_perk_akumulasi_kerugian: TStringField;
    sPanel3: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    dsSumberPerolehan: TMyDataSource;
    MyQSumberPerolehan: TMyQuery;
    cb_sumber_perolehan: TDBLookupComboBox;
    MyQSumberPerolehanid: TIntegerField;
    MyQSumberPerolehansandi: TStringField;
    MyQSumberPerolehansumber_perolehan: TStringField;
    MyQSumberPerolehanselectable: TSmallintField;
    cb_status_aset: TDBLookupComboBox;
    dsStatusAset: TMyDataSource;
    MyQStatusAset: TMyQuery;
    MyQStatusAsetid: TIntegerField;
    MyQStatusAsetsandi: TStringField;
    MyQStatusAsetstatus_aset_ati: TStringField;
    MyQStatusAsetselectable: TSmallintField;
    bt_akum_amortisasi: TsBitBtn;
    bt_akum_kerugian: TsBitBtn;
    procedure bt_biaya_perolehanClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_sumber_perolehanClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_akum_amortisasiClick(Sender: TObject);
    procedure bt_akum_kerugianClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_MasterRefATIByCOA: Tfr_MasterRefATIByCOA;

implementation

uses
  dm_bpr, AddMemo, OgiesoftVAR, MyOgiLib;

{$R *.dfm}

procedure Tfr_MasterRefATIByCOA.bt_akum_kerugianClick(Sender: TObject);
var
  cKodePerk: string;
begin
  inherited;
  if MyQAtiCOAselectable.AsInteger=1 then
    begin
      if Application.FindComponent('fr_AddMemo') = nil then
        Application.CreateForm(Tfr_AddMemo, fr_AddMemo);
      fr_AddMemo.Caption := 'Kode Perkiraan (Pisahkan dengan tanda ;';
      fr_AddMemo.Memo1.Lines.Text := MyQAtiCOAkode_perk_akumulasi_kerugian.AsString;
      fr_AddMemo.ShowModal;
      if fr_AddMemo.Tag=2 then
        begin
          cKodePerk := fr_AddMemo.Memo1.Lines.Text;
          MyExecuteSQL('UPDATE '+cDb2+'.apolo_ref_ati_coa '+
            'SET `kode_perk_akumulasi_kerugian`='+QuotedStr(cKodePerk)+' '+
            'WHERE `id`='+QuotedStr(MyQAtiCOAid.AsString));
        end;
      fr_AddMemo.Free;
      fr_AddMemo := nil;
      if MyQAtiCOA.Active then
        MyQAtiCOA.Refresh
      else
        MyQAtiCOA.Open;
    end;
end;

procedure Tfr_MasterRefATIByCOA.bt_biaya_perolehanClick(Sender: TObject);
var
  cKodePerk: string;
begin
  inherited;
  if MyQAtiCOAselectable.AsInteger=1 then
    begin
      if Application.FindComponent('fr_AddMemo') = nil then
        Application.CreateForm(Tfr_AddMemo, fr_AddMemo);
      fr_AddMemo.Caption := 'Kode Perkiraan (Pisahkan dengan tanda ;';
      fr_AddMemo.Memo1.Lines.Text := MyQAtiCOAkode_perk_biaya_perolehan.AsString;
      fr_AddMemo.ShowModal;
      if fr_AddMemo.Tag=2 then
        begin
          cKodePerk := fr_AddMemo.Memo1.Lines.Text;
          MyExecuteSQL('UPDATE '+cDb2+'.apolo_ref_ati_coa '+
            'SET `kode_perk_biaya_perolehan`='+QuotedStr(cKodePerk)+' '+
            'WHERE `id`='+QuotedStr(MyQAtiCOAid.AsString));
        end;
      fr_AddMemo.Free;
      fr_AddMemo := nil;
      if MyQAtiCOA.Active then
        MyQAtiCOA.Refresh
      else
        MyQAtiCOA.Open;
    end;
end;

procedure Tfr_MasterRefATIByCOA.cb_sumber_perolehanClick(Sender: TObject);
begin
  inherited;
  MyQAtiCOA.MacroByName('WHERE').Value :=
    'WHERE sandi_sumber_perolehan='+QuotedStr(VarToStr(cb_sumber_perolehan.KeyValue))+
    '   AND sandi_status_aset='+QuotedStr(VarToStr(cb_status_aset.KeyValue));
  if MyQAtiCOA.Active then
    MyQAtiCOA.Refresh
  else
    MyQAtiCOA.Open;  
end;

procedure Tfr_MasterRefATIByCOA.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfr_MasterRefATIByCOA.FormActivate(Sender: TObject);
begin
  inherited;
  if MyQSumberPerolehan.Active then
    MyQSumberPerolehan.Refresh
  else
    MyQSumberPerolehan.Open;

  if MyQStatusAset.Active then
    MyQStatusAset.Refresh
  else
    MyQStatusAset.Open;

  cb_sumber_perolehan.KeyValue := '99';
  cb_status_aset.KeyValue := '2';
  cb_sumber_perolehanClick(Sender);
end;

procedure Tfr_MasterRefATIByCOA.bt_akum_amortisasiClick(Sender: TObject);
var
  cKodePerk: string;
begin
  inherited;
  if MyQAtiCOAselectable.AsInteger=1 then
    begin
      if Application.FindComponent('fr_AddMemo') = nil then
        Application.CreateForm(Tfr_AddMemo, fr_AddMemo);
      fr_AddMemo.Caption := 'Kode Perkiraan (Pisahkan dengan tanda ;';
      fr_AddMemo.Memo1.Lines.Text := MyQAtiCOAkode_perk_akumulasi_amortisasi.AsString;
      fr_AddMemo.ShowModal;
      if fr_AddMemo.Tag=2 then
        begin
          cKodePerk := fr_AddMemo.Memo1.Lines.Text;
          MyExecuteSQL('UPDATE '+cDb2+'.apolo_ref_ati_coa '+
            'SET `kode_perk_akumulasi_amortisasi`='+QuotedStr(cKodePerk)+' '+
            'WHERE `id`='+QuotedStr(MyQAtiCOAid.AsString));
        end;
      fr_AddMemo.Free;
      fr_AddMemo := nil;
      if MyQAtiCOA.Active then
        MyQAtiCOA.Refresh
      else
        MyQAtiCOA.Open;
    end;
end;

end.
