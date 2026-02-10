unit Form_Template;
{
  Nama Form     : FormTemplate
  Create        : 7 Januari 2007
  Last Update   : 7 Januari 2007
  Create By     : Hamsudi
  Company       : Ogiesoft
  Copyrights    : Ogiesoft
}
interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, sCurrencyEdit,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Graphics, ComCtrls, sSkinManager,
  sCheckBox, sSkinProvider, DBCtrls, DBGrids, sMemo, sEdit, sLabel, Menus,
  sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox;

type
  Tfr_template = class(TForm)
    lbl_view_only: TLabel;
    sSkinProvider1: TsSkinProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure log_portKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure judulMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AssignJudulEvent;
    procedure bgMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bgMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bgMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure sSkinProvider1SkinItem(Item: TComponent; var CanBeAdded: Boolean;
      var SkinSection: string);
  private
    { Private declarations }
    FDownPoint: TPoint;
    FDragging: Boolean;
    FAllowDrag: Boolean;
    procedure GetOgieGlobalSetting;
  public
    { Public declarations }
    property AllowDrag: Boolean read FAllowDrag write FAllowDrag;
    function Cek_Validasi(Sender: TObject): Boolean;
  end;

var
  fr_template: Tfr_template;
  cLabelIni, cNewLabelIni: String;


implementation

uses Types, MyVAR, TypInfo, dm_bpr, MyLib, SHFolder, DateUtils;


{$R *.dfm}

procedure Tfr_template.GetOgieGlobalSetting;
begin
  Ogie_FileIni := ExtractFilePath(Application.ExeName)+ChangeFileExt(ExtractFileName((Application.ExeName)),'.ini');
  FormatSettings.DateSeparator := '/';
  FormatSettings.TimeSeparator := ':';
  FormatSettings.ShortDateFormat := 'MM/dd/yyyy';
  FormatSettings.ShortTimeFormat := 'HH:mm';
  FormatSettings.ThousandSeparator := ',';
  FormatSettings.DecimalSeparator := '.';
  Application.UpdateFormatSettings := False;
end;

procedure Tfr_template.FormCreate(Sender: TObject);
var
  jml, jml2: Integer;
  cCaption, cTag, cHint, cWidth: String;
  cTemp: string;
  lLabeling: Boolean;
begin
  FAllowDrag := True;
  GetOgieGlobalSetting;

  AssignJudulEvent;

  KeyPreview:=True;
  cLocation := ExtractFilePath(Application.ExeName);
  SetCurrentDir(cLocation);

  cLabelIni := cLocation+'\label.ini';
  if FileExists(cLabelIni) then
    DeleteFile(cLabelIni);
  lLabeling := False;
  cNewLabelIni := cLocation+'\'+Self.Name+'.ini';
  cColorGridOddFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridOddFront','0');
  cColorGridOddBg := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridOddBg','15780518');
  cColorGridSelectedFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedFront','16777215');
  cColorGridSelectedBg := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedBg','16711680');
  cColorGridRow := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridRow','2');
  cColorGridMinFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridMinFront','32768');
  cColorGridMaxFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridMaxFront','255');

  if Application.FindComponent('dm_bpr1') <> nil then
    if dm_bpr1.MyCon2.Connected then
      begin
        dm_bpr1.MyQuery1.SQL.Text := 'SELECT file_label FROM '+
          cDb2+'.label_form '+
          'WHERE loaded="Y" AND nama_form='+QuotedStr(Self.Name);
        if dm_bpr1.MyQuery1.Active then
          dm_bpr1.MyQuery1.Refresh
        else
          dm_bpr1.MyQuery1.Open;

        if dm_bpr1.MyQuery1.RecordCount > 0 then
          begin
            cTemp := dm_bpr1.MyQuery1.FieldByName('file_label').AsString;
            dm_bpr1.MyQuery1.SQL.Text := cTemp;
            dm_bpr1.MyQuery1.SQL.SaveToFile(cLabelIni);
            if FileExists(cLabelIni) then
              lLabeling := True;
          end
        else
          DeleteFile(cLabelIni);
      end;

  if lLabeling then
    begin
      for jml := 0 to ComponentCount -1 do
        begin
          if Components[jml] is TDateTimePicker then
            begin
              if (TDateTimePicker(Components[jml]).Kind = dtkDate) then
                TDateTimePicker(Components[jml]).Format:= 'dd/MM/yyyy';
            end;

          if Components[jml] is TLabel then
            begin
              TLabel(Components[jml]).OnMouseDown := judulMouseDown;

              cCaption := IniGetStringValue(cLabelIni,Self.Name,TLabel(Components[jml]).Name,TLabel(Components[jml]).Caption);
              if not Empty(cCaption) and (cCaption <> TLabel(Components[jml]).Caption) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,TLabel(Components[jml]).Name,cCaption);
                  TLabel(Components[jml]).Caption:=cCaption;
                end;
            end;

          if Components[jml] is TEdit then
            begin
              TEdit(Components[jml]).OnMouseDown := judulMouseDown;

              cTag := IniGetStringValue(cLabelIni,Self.Name,'tag_'+TEdit(Components[jml]).Name,IntToStr(TEdit(Components[jml]).Tag));
              if not Empty(cTag) and (cTag <> IntToStr(TEdit(Components[jml]).Tag)) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,'tag_'+TEdit(Components[jml]).Name,cTag);
                  TEdit(Components[jml]).Tag := StrToInt(cTag);
                end;

              cHint := IniGetStringValue(cLabelIni,Self.Name,'hint_'+TEdit(Components[jml]).Name,TEdit(Components[jml]).Hint);
              if not Empty(cHint) and (cHint<>TEdit(Components[jml]).Hint) and (cHint<>TEdit(Components[jml]).Name) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,'hint_'+TEdit(Components[jml]).Name,cHint);
                  TEdit(Components[jml]).Hint := cHint;
                end
              else if Empty(cHint) then
                begin
                  TEdit(Components[jml]).Hint := TEdit(Components[jml]).Name;
                end;
            end;

          if Components[jml] is TsLabel then
            begin
              TsLabel(Components[jml]).OnMouseDown := judulMouseDown;

              cCaption := IniGetStringValue(cLabelIni,Self.Name,TsLabel(Components[jml]).Name,TLabel(Components[jml]).Caption);
              if not Empty(cCaption) and (cCaption <> TLabel(Components[jml]).Caption) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,TsLabel(Components[jml]).Name,cCaption);
                  TsLabel(Components[jml]).Caption:=cCaption;
                end;
            end;

          if Components[jml] is TsEdit then
            begin
              TsEdit(Components[jml]).OnMouseDown := judulMouseDown;

              cTag := IniGetStringValue(cLabelIni,Self.Name,'tag_'+TsEdit(Components[jml]).Name,IntToStr(TsEdit(Components[jml]).Tag));
              if not Empty(cTag) and (cTag<>IntToStr(TsEdit(Components[jml]).Tag)) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,'tag_'+TsEdit(Components[jml]).Name,cTag);
                  TsEdit(Components[jml]).Tag := StrToInt(cTag);
                end;

              cHint := IniGetStringValue(cLabelIni,Self.Name,'hint_'+TsEdit(Components[jml]).Name,TsEdit(Components[jml]).Hint);
              if not Empty(cHint) and (cHint<>TsEdit(Components[jml]).Hint) and (cHint<>TsEdit(Components[jml]).Name) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,'hint_'+TsEdit(Components[jml]).Name,cHint);
                  TsEdit(Components[jml]).Hint := cHint;
                end
              else if Empty(cHint) then
                begin
                  TsEdit(Components[jml]).Hint := TsEdit(Components[jml]).Name;
                end;
            end;

          if Components[jml] is TsCurrencyEdit then
            begin
              TsCurrencyEdit(Components[jml]).OnMouseDown := judulMouseDown;

              cTag := IniGetStringValue(cLabelIni,Self.Name,'tag_'+TsCurrencyEdit(Components[jml]).Name,IntToStr(TsCurrencyEdit(Components[jml]).Tag));
              if not Empty(cTag) and (cTag<>IntToStr(TsCurrencyEdit(Components[jml]).Tag)) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,'tag_'+TsCurrencyEdit(Components[jml]).Name,cTag);
                  TsCurrencyEdit(Components[jml]).Tag := StrToInt(cTag);
                end;

              cHint := IniGetStringValue(cLabelIni,Self.Name,'hint_'+TsCurrencyEdit(Components[jml]).Name,TsCurrencyEdit(Components[jml]).Hint);
              if not Empty(cHint) and (cHint<>TsCurrencyEdit(Components[jml]).Hint) and (cHint<>TsCurrencyEdit(Components[jml]).Name) then
                begin
                  IniSetStringValue(cNewLabelIni,Self.Name,'hint_'+TsCurrencyEdit(Components[jml]).Name,cHint);
                  TsCurrencyEdit(Components[jml]).Hint := cHint;
                end
              else if Empty(cHint) then
                begin
                  TsCurrencyEdit(Components[jml]).Hint := TsCurrencyEdit(Components[jml]).Name;
                end;
            end;

          if (Components[jml] is TDBGrid) and (TDBGrid(Components[jml]).Tag=0) then
            begin
              TDBGrid(Components[jml]).OnMouseDown := judulMouseDown;
        
              for jml2 := 0 to TDBGrid(Components[jml]).Columns.Count -1 do
                begin
                  cCaption := IniGetStringValue(cLabelIni,Self.Name,'grid_'+TDBGrid(Components[jml]).Columns[jml2].FieldName,TDBGrid(Components[jml]).Columns[jml2].Title.Caption);
                  cWidth := IniGetStringValue(cLabelIni,Self.Name,'width_'+TDBGrid(Components[jml]).Columns[jml2].FieldName,IntToStr(TDBGrid(Components[jml]).Columns[jml2].Width));
                  if not Empty(cCaption) and (cCaption<>TDBGrid(Components[jml]).Columns[jml2].Title.Caption) then
                    begin
                      IniSetStringValue(cNewLabelIni,Self.Name,'grid_'+TDBGrid(Components[jml]).Columns[jml2].FieldName,cCaption);
                      TDBGrid(Components[jml]).Columns[jml2].Title.Caption := cCaption;
                    end
                  else if Empty(cCaption) then
                    begin
                      TDBGrid(Components[jml]).Columns[jml2].Title.Caption := TDBGrid(Components[jml]).Columns[jml2].FieldName;
                    end;

                  if not Empty(cWidth) and (cWidth<>IntToStr(TDBGrid(Components[jml]).Columns[jml2].Width)) then
                    begin
                      IniSetStringValue(cNewLabelIni,Self.Name,'width_'+TDBGrid(Components[jml]).Columns[jml2].FieldName,cWidth);
                      TDBGrid(Components[jml]).Columns[jml2].Width := StrToInt(cWidth);
                    end;
                end;
            end;
        end;
    end;

  if (Application.FindComponent('dm_bpr1') <> nil) then
    if dm_bpr1.MyCon2.Connected then
      begin
        if UserAdmin(cNamaUser) then
          begin
            if FileExists(cNewLabelIni) then
              begin
                dm_bpr1.MyQuery1.SQL.LoadFromFile(cNewLabelIni);
                cTemp := dm_bpr1.MyQuery1.SQL.Text;

                MyExecuteSQL('INSERT INTO '+cDb2+'.label_form (nama_form,file_label,user,waktu) '+
                  'VALUES ('+QuotedStr(Self.Name)+','+QuotedStr(cTemp)+','+QuotedStr(cNamaUser)+','+DateTimeToStrSQL(Now)+') '+
                  'ON DUPLICATE KEY UPDATE file_label='+QuotedStr(cTemp)+', waktu='+DateTimeToStrSQL(Now));
              end;
//            else
//              MyExecuteSQL('DELETE FROM '+cDb2+'.label_form '+
//                'WHERE nama_form='+QuotedStr(Self.Name));
          end;
      end;

  if FileExists(cLabelIni) then
    DeleteFile(cLabelIni);
  if FileExists(cNewLabelIni) then
    DeleteFile(cNewLabelIni);
end;

procedure Tfr_template.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_template.log_portKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);  {promote character to upper case}
  if not (Key in ['.','0'..'9',#13,#27,#8] ) then {numeric,enter,esc,tab}
    Key := #0;         {key not in the proper range}
end;

procedure Tfr_template.sSkinProvider1SkinItem(Item: TComponent;
  var CanBeAdded: Boolean; var SkinSection: string);
begin
    if Item is TEdit then
      begin
        CanBeAdded := False;
        if TEdit(Item).Tag = 1 then
          TEdit(Item).Color := clYellow;
      end;

    if Item is TsEdit then
      begin
        CanBeAdded := False;
        if TsEdit(Item).Tag = 1 then
          TsEdit(Item).Color := clYellow;
      end;

    if Item is TMemo then
      begin
        CanBeAdded := False;
        if TMemo(Item).Tag = 1 then
          TMemo(Item).Color := clYellow;
      end;

    if Item is TsMemo then
      begin
        CanBeAdded := False;
        if TsMemo(Item).Tag = 1 then
          TsMemo(Item).Color := clYellow;
      end;

    if Item is TsCurrencyEdit then
      begin
        CanBeAdded := False;
        if TsCurrencyEdit(Item).Tag = 1 then
          TsCurrencyEdit(Item).Color := clYellow;
      end;
      
    if Item is TComboBox then
      begin
        CanBeAdded := False;
        if TComboBox(Item).Tag = 1 then
          TComboBox(Item).Color := clYellow;
      end;

    if Item is TsComboBox then
      begin
        CanBeAdded := False;
        if TsComboBox(Item).Tag = 1 then
          TsComboBox(Item).Color := clYellow;
      end;

    if Item is TDBLookupComboBox then
      begin
        CanBeAdded := False;
        if TDBLookupComboBox(Item).Tag = 1 then
          TDBLookupComboBox(Item).Color := clYellow;
      end;
end;

procedure Tfr_template.FormActivate(Sender: TObject);
var
  jml: Integer;
begin
if not lbl_view_only.Enabled then
  begin
    for jml := 0 to ComponentCount -1 do
      begin
        if Components[jml] is TEdit then
          TEdit(Components[jml]).ReadOnly:=True;
        if Components[jml] is TMemo then
          TMemo(Components[jml]).ReadOnly:=True;
        if Components[jml] is TsEdit then
          TsEdit(Components[jml]).ReadOnly:=True;
        if Components[jml] is TsMemo then
          TsMemo(Components[jml]).ReadOnly:=True;
        if Components[jml] is TsCurrencyEdit then
          TsCurrencyEdit(Components[jml]).ReadOnly:=True;
          //TsCurrencyEdit(Components[jml]).Enabled:=False;
        if Components[jml] is TCheckBox then
          TCheckBox(Components[jml]).Enabled:=False;
        if Components[jml] is TsCheckBox then
          TsCheckBox(Components[jml]).Enabled:=False;
        if Components[jml] is TComboBox then
          TComboBox(Components[jml]).Enabled:=False;
        if Components[jml] is TsComboBox then
          TsComboBox(Components[jml]).Enabled:=False;
        if Components[jml] is TDateTimePicker then
          TDateTimePicker(Components[jml]).Enabled:=False;
        if Components[jml] is TDBLookupComboBox then
          TDBLookupComboBox(Components[jml]).Enabled:=False;
        if Components[jml] is TButton then
          TButton(Components[jml]).Enabled:=False;
        if Components[jml] is TBitBtn then
          begin
            if not ((TBitBtn(Components[jml]).Name='bt_batal')
              or (TBitBtn(Components[jml]).Name='bt_cancel')
              or (TBitBtn(Components[jml]).Name='bt_keluar')
              or (TBitBtn(Components[jml]).Name='bt_close'))then
              TBitBtn(Components[jml]).Enabled:=False;
          end;
        if Components[jml] is TsButton then
          TsButton(Components[jml]).Enabled:=False;
        if Components[jml] is TsBitBtn then
          begin
            if not ((TsBitBtn(Components[jml]).Name='bt_batal')
              or (TsBitBtn(Components[jml]).Name='bt_cancel')
              or (TsBitBtn(Components[jml]).Name='bt_keluar')
              or (TsBitBtn(Components[jml]).Name='bt_close'))then
              TsBitBtn(Components[jml]).Enabled:=False;
          end;
        if Components[jml] is TSpeedButton then
          TSpeedButton(Components[jml]).Enabled:=False;
        if Components[jml] is TsSpeedButton then
          TsSpeedButton(Components[jml]).Enabled:=False;
//        if Components[jml] is TGroupBox then
//          TGroupBox(Components[jml]).Enabled:=False;
//        if Components[jml] is TsGroupBox then
//          TsGroupBox(Components[jml]).Enabled:=False;
      end;
  end
else
  begin  //untuk perubahan jika skin non aktif
    for jml := 0 to ComponentCount -1 do
      begin
        if Components[jml] is TEdit then
          if TEdit(Components[jml]).Tag = 1 then
            TEdit(Components[jml]).Color := clYellow;

        if Components[jml] is TsEdit then
          if TsEdit(Components[jml]).Tag = 1 then
            TsEdit(Components[jml]).Color := clYellow;

        if Components[jml] is TMemo then
          if TMemo(Components[jml]).Tag = 1 then
            TMemo(Components[jml]).Color := clYellow;

        if Components[jml] is TsMemo then
          if TsMemo(Components[jml]).Tag = 1 then
            TsMemo(Components[jml]).Color := clYellow;

        if Components[jml] is TsCurrencyEdit then
          if TsCurrencyEdit(Components[jml]).Tag = 1 then
            TsCurrencyEdit(Components[jml]).Color := clYellow;

        if Components[jml] is TComboBox then
          if TComboBox(Components[jml]).Tag = 1 then
            TComboBox(Components[jml]).Color := clYellow;

        if Components[jml] is TsComboBox then
          if TsComboBox(Components[jml]).Tag = 1 then
            TsComboBox(Components[jml]).Color := clYellow;

        if Components[jml] is TDBLookupComboBox then
          if TDBLookupComboBox(Components[jml]).Tag = 1 then
            TDBLookupComboBox(Components[jml]).Color := clYellow;
      end;
  end;
end;

procedure Tfr_template.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_template.judulMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  cNewCaption: String;
  jml2: Integer;
  cTemp: string;
begin
if Button in [mbRight] then
  begin
    if UserAdmin(cNamaUser) then
      begin
        if Application.FindComponent('dm_bpr1') <> nil then
            if dm_bpr1.MyCon2.Connected then
              begin
                dm_bpr1.MyQuery1.SQL.Text := 'SELECT file_label FROM '+cDb2+'.label_form WHERE nama_form='+QuotedStr(Self.Name);
                if dm_bpr1.MyQuery1.Active then
                  dm_bpr1.MyQuery1.Refresh
                else
                  dm_bpr1.MyQuery1.Open;

                if dm_bpr1.MyQuery1.RecordCount > 0 then
                  begin
                    cTemp := dm_bpr1.MyQuery1.FieldByName('file_label').AsString;
                    dm_bpr1.MyQuery1.SQL.Text := cTemp;
                    dm_bpr1.MyQuery1.SQL.SaveToFile(cLabelIni);
                  end;
              end;

        if Sender is TLabel then
          begin
            cNewCaption := InputBox('Change Caption', 'Caption ', TLabel(Sender).Caption );
            IniSetStringValue(cLabelIni,Self.Name,TLabel(Sender).Name,cNewCaption);
            TLabel(Sender).Caption := cNewCaption;
            if TLabel(Sender).Tag=1 then
              SetMySysID(LeftStr(TLabel(Sender).Name,3),
                TLabel(Sender).Name,cNewCaption);            
          end;

        if Sender is TsLabel then
          begin
            cNewCaption := InputBox('Change Caption', 'Caption ', TsLabel(Sender).Caption );
            IniSetStringValue(cLabelIni,Self.Name,TsLabel(Sender).Name,cNewCaption);
            TsLabel(Sender).Caption := cNewCaption;
            if TsLabel(Sender).Tag=1 then
              SetMySysID(LeftStr(TsLabel(Sender).Name,3),
                TsLabel(Sender).Name,cNewCaption);            
          end;

        if Sender is TEdit then
          begin
            cNewCaption := InputBox('Change Tag', 'Tag ', IntToStr(TEdit(Sender).Tag) );
            IniSetStringValue(cLabelIni,Self.Name,'tag_'+TEdit(Sender).Name,cNewCaption);
            TEdit(Sender).Tag := StrToInt(cNewCaption);

//            if TEdit(Sender).Tag=1 then
//            begin
              cNewCaption := InputBox('Change Hint', 'Hint ', TEdit(Sender).Hint );
              IniSetStringValue(cLabelIni,Self.Name,'hint_'+TEdit(Sender).Name,cNewCaption);
              TEdit(Sender).Hint := cNewCaption;
//            end;
          end;

        if Sender is TsEdit then
          begin
            cNewCaption := InputBox('Change Tag', 'Tag ', IntToStr(TsEdit(Sender).Tag) );
            IniSetStringValue(cLabelIni,Self.Name,'tag_'+TsEdit(Sender).Name,cNewCaption);
            TsEdit(Sender).Tag := StrToInt(cNewCaption);

//            if TsEdit(Sender).Tag=1 then
//            begin
              cNewCaption := InputBox('Change Hint', 'Hint ', TsEdit(Sender).Hint );
              IniSetStringValue(cLabelIni,Self.Name,'hint_'+TsEdit(Sender).Name,cNewCaption);
              TsEdit(Sender).Hint := cNewCaption;
//            end;
          end;

        if Sender is TsCurrencyEdit then
          begin
            cNewCaption := InputBox('Change Tag', 'Tag ', IntToStr(TsCurrencyEdit(Sender).Tag) );
            IniSetStringValue(cLabelIni,Self.Name,'tag_'+TsCurrencyEdit(Sender).Name,cNewCaption);
            TsCurrencyEdit(Sender).Tag := StrToInt(cNewCaption);

//            if TsEdit(Sender).Tag=1 then
//            begin
              cNewCaption := InputBox('Change Hint', 'Hint ', TsCurrencyEdit(Sender).Hint );
              IniSetStringValue(cLabelIni,Self.Name,'hint_'+TsCurrencyEdit(Sender).Name,cNewCaption);
              TsCurrencyEdit(Sender).Hint := cNewCaption;
//            end;
          end;

        if Sender is TDBLookupComboBox then
          begin
            cNewCaption := InputBox('Change Tag', 'Tag ', IntToStr(TDBLookupComboBox(Sender).Tag) );
            IniSetStringValue(cLabelIni,Self.Name,'tag_'+TDBLookupComboBox(Sender).Name,cNewCaption);
            TDBLookupComboBox(Sender).Tag := StrToInt(cNewCaption);

//            if TsEdit(Sender).Tag=1 then
//            begin
              cNewCaption := InputBox('Change Hint', 'Hint ', TDBLookupComboBox(Sender).Hint );
              IniSetStringValue(cLabelIni,Self.Name,'hint_'+TDBLookupComboBox(Sender).Name,cNewCaption);
              TDBLookupComboBox(Sender).Hint := cNewCaption;
//            end;
          end;

        if Sender is TDBGrid then
          begin
            for jml2 := 0 to TDBGrid(Sender).Columns.Count - 1 do
            begin
              cNewCaption := InputBox('Change Caption', 'Caption ', TDBGrid(Sender).Columns[jml2].Title.Caption );
              IniSetStringValue(cLabelIni,Self.Name,'grid_'+TDBGrid(Sender).Columns[jml2].FieldName,cNewCaption);
              TDBGrid(Sender).Columns[jml2].Title.Caption := cNewCaption;
            end;
          end;

        if Application.FindComponent('dm_bpr1') <> nil then
          if dm_bpr1.MyCon2.Connected then
            begin
              dm_bpr1.MyQuery1.SQL.LoadFromFile(cLabelIni);
              cTemp := dm_bpr1.MyQuery1.SQL.Text;

//              dm_bpr1.MyQuery1.SQL.Text := 'SELECT file_label FROM '+cDb2+'.label_form WHERE nama_form='+QuotedStr(Self.Name);
//              if dm_bpr1.MyQuery1.Active then
//                dm_bpr1.MyQuery1.Refresh
//              else
//                dm_bpr1.MyQuery1.Open;
//
//              if dm_bpr1.MyQuery1.RecordCount > 0 then
//                begin
//                  dm_bpr1.MyCommand1.SQL.Text := 'UPDATE label_form SET file_label='+QuotedStr(cTemp)+
//                    ' WHERE nama_form='+QuotedStr(Self.Name);
//                  dm_bpr1.MyCommand1.Execute;
//                end
//              else
//                begin
                  MyExecuteSQL('INSERT INTO '+cDb2+'.label_form (nama_form,file_label,user,waktu) '+
                    'VALUES ('+QuotedStr(Self.Name)+','+QuotedStr(cTemp)+','+QuotedStr(cNamaUser)+','+DateTimeToStrSQL(Now)+') '+
                    'ON DUPLICATE KEY UPDATE file_label='+QuotedStr(cTemp)+', waktu='+DateTimeToStrSQL(Now));
//                end;
            end;

        DeleteFile(cLabelIni);
      end;
  end;
end;

procedure Tfr_template.AssignJudulEvent;
var
  i: Integer;
  PropInfo: PPropInfo;
  Method: TMethod;
  PEvent: ^TMouseEvent;
begin
  for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TLabel then
        begin
          PropInfo := GetPropInfo(Components[i].ClassInfo, 'OnMouseDown');
          if (PropInfo <> nil) and (PropInfo^.PropType^^.Kind = tkMethod) then
          begin
            Method := GetMethodProp(Components[i], PropInfo);
            if not Assigned(Method.Code) then
            begin
              PEvent := @Method.Code;
              PEvent^ := judulMouseDown;
              Method.Data := Self;
              SetMethodProp(Components[i], PropInfo, Method);
            end;
          end;
        end;
    end;
end;

procedure Tfr_template.bgMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbLeft then
  begin
   FDragging := True;
   GetCursorPos(FDownPoint);
   FDownPoint.X := FDownPoint.X - Self.Left;
   FDownPoint.Y := FDownPoint.Y - Self.Top;
  end;
end;

procedure Tfr_template.bgMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  MovePoint: TPoint;
begin
 if FDragging and FAllowDrag then
  begin
   GetCursorPos(MovePoint);
   Self.SetBounds(
    MovePoint.X - FDownPoint.X,
    MovePoint.Y - FDownPoint.Y,
    Self.Width, Self.Height
   );
  end;
end;

procedure Tfr_template.bgMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbLeft then
    FDragging := False;
end;

function Tfr_template.Cek_Validasi(Sender: TObject): Boolean;
var
  jml: Integer;
  cPesan: string;
begin
  cPesan := '';    
  Result := False;
    for jml := 0 to ComponentCount -1 do
    if Components[jml] is TEdit then
      begin
        if (Trim(TEdit(Components[jml]).Text)='') and (TEdit(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TEdit(Components[jml]).Hint+' masih kosong !'+#13#10;
            //Pesan(2,TEdit(Components[jml]).Hint+' masih kosong !');
            TEdit(Components[jml]).Color := clYellow;
            if TEdit(Components[jml]).CanFocus then
              TEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TsEdit then
      begin
        if (Trim(TsEdit(Components[jml]).Text)='') and (TsEdit(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TsEdit(Components[jml]).Hint+' masih kosong !'+#13#10;
            //Pesan(2,TsEdit(Components[jml]).Hint+' masih kosong !');
            TsEdit(Components[jml]).Color := clYellow;
            if TsEdit(Components[jml]).CanFocus then
              TsEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TMemo then
      begin
        if (Trim(TMemo(Components[jml]).Lines.Text)='') and (TMemo(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TMemo(Components[jml]).Hint+' masih kosong !'+#13#10;
            //Pesan(2,TMemo(Components[jml]).Hint+' masih kosong !');
            TMemo(Components[jml]).Color := clYellow;
            if TMemo(Components[jml]).CanFocus then
              TMemo(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TsMemo then
      begin
        if (Trim(TsMemo(Components[jml]).Lines.Text)='') and (TsMemo(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TsMemo(Components[jml]).Hint+' masih kosong !'+#13#10;
            //Pesan(2,TsMemo(Components[jml]).Hint+' masih kosong !');
            TsMemo(Components[jml]).Color := clYellow;
            if TsMemo(Components[jml]).CanFocus then
              TsMemo(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TsCurrencyEdit then
      begin
        if (TsCurrencyEdit(Components[jml]).Value=0) and (TsCurrencyEdit(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TsCurrencyEdit(Components[jml]).Hint+' ada yang masih 0 !'+#13#10;
            //Pesan(2,TsCurrencyEdit(Components[jml]).Hint+' ada yang masih 0 !');
            TsCurrencyEdit(Components[jml]).Color := clYellow;
            if TsCurrencyEdit(Components[jml]).CanFocus then
              TsCurrencyEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TDateTimePicker then
      begin
        if (DateOf(TDateTimePicker(Components[jml]).Date) <= DateOf(dTglSystem)) and (TDateTimePicker(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TDateTimePicker(Components[jml]).Hint+' belum diset atau sudah expired !'+#13#10;
            //Pesan(2,TsCurrencyEdit(Components[jml]).Hint+' ada yang masih 0 !');
            TDateTimePicker(Components[jml]).Color := clYellow;
            if TDateTimePicker(Components[jml]).CanFocus then
              TDateTimePicker(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TDBLookupComboBox then
      begin
        if (TDBLookupComboBox(Components[jml]).Text='') and (TDBLookupComboBox(Components[jml]).Tag=1) then
          begin
            cPesan := cPesan + TDBLookupComboBox(Components[jml]).Hint+' masih kosong !'+#13#10;
            //Pesan(2,TDBLookupComboBox(Components[jml]).Hint+' ada yang masih 0 !');
            TDBLookupComboBox(Components[jml]).Color := clYellow;
            if TDBLookupComboBox(Components[jml]).CanFocus then
              TDBLookupComboBox(Components[jml]).SetFocus;
          end;
      end;

  if not Empty(cPesan) then
    Pesan(2,cPesan)
  else
    Result := True;
end;

end.
