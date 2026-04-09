unit FormE0204;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NewTemplate, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
//  dxSkinsCore,
//  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
//  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
//  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
//  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
//  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
//  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
//  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
//  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
//  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
//  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
//  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
//  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
//  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
//  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
//  dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGroupBox, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MyAccess, MemDS, MyVAR,
  MyLib, EntryFormE0204, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox,
  cxTextEdit, cxMemo, cxLabel;

type
  Tfr_FormE0204 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQE0204: TMyDataSource;
    MyQE0204: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQE0204flag_detail: TStringField;
    MyQE0204kode_komponen: TStringField;
    MyQE0204nama_anggota_komite: TStringField;
    MyQE0204nik: TStringField;
    MyQE0204keahlian: TStringField;
    MyQE0204komite_audit: TStringField;
    MyQE0204komite_pemantau_risiko: TStringField;
    MyQE0204komite_remunerasi_dan_nominasi: TStringField;
    MyQE0204komite_management_risiko: TStringField;
    MyQE0204komite_lainnya: TStringField;
    MyQE0204pihak_independent: TStringField;
    cxGridDBTableView1flag_detail: TcxGridDBColumn;
    cxGridDBTableView1kode_komponen: TcxGridDBColumn;
    cxGridDBTableView1nama_anggota_komite: TcxGridDBColumn;
    cxGridDBTableView1nik: TcxGridDBColumn;
    cxGridDBTableView1keahlian: TcxGridDBColumn;
    cxGridDBTableView1komite_audit: TcxGridDBColumn;
    cxGridDBTableView1komite_pemantau_risiko: TcxGridDBColumn;
    cxGridDBTableView1komite_remunerasi_dan_nominasi: TcxGridDBColumn;
    cxGridDBTableView1komite_management_risiko: TcxGridDBColumn;
    cxGridDBTableView1komite_lainnya: TcxGridDBColumn;
    cxGridDBTableView1pihak_independent: TcxGridDBColumn;
    cxGBFooter: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxLabel10: TcxLabel;
    memtindak_lanjut_footer: TcxMemo;
    btlb_Footer: TcxButton;
    procedure btlb_RefreshClick(Sender: TObject);
    procedure btlb_EditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btlb_InsertClick(Sender: TObject);
    procedure btlb_DeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AssignJudulEvent;
    procedure judulMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btlb_FooterClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
    FDownPoint: TPoint;
    FDragging: Boolean;
    FAllowDrag: Boolean;
    procedure GetOgieGlobalSetting;
  public
    { Public declarations }
    property AllowDrag: Boolean read FAllowDrag write FAllowDrag;
  end;

var
  fr_FormE0204: Tfr_FormE0204;

implementation
uses Types, TypInfo, dm_bpr, SHFolder, DateUtils;

{$R *.dfm}

procedure Tfr_FormE0204.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_FormE0204.GetOgieGlobalSetting;
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


procedure Tfr_FormE0204.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQE0204.RecordCount=0) or (not MyQE0204.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if not Pesan(3, 'yakin mau hapus data?') then
    Exit;

  MyExecuteSQL('DELETE FROM '+cDb2+'.`ltbprk_e0204_struktur_independensi_anggota_komite` '+
                ' WHERE `kode_komponen` = '+QuotedStr(MyQE0204kode_komponen.Text)+
                ' AND `nik` = '+QuotedStr(MyQE0204nik.Text));

  // footer
  MyExecuteSQL(' DELETE FROM '+cDb2+'.`ltbprk_e0204_struktur_independensi_anggota_komite_footer` ');

  if MyQE0204.Active then
    MyQE0204.Refresh
  else
    MyQE0204.Open;

end;

procedure Tfr_FormE0204.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQE0204.RecordCount=0) or (not MyQE0204.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryFormE0204') = nil then
    Application.CreateForm(Tfr_EntryFormE0204, fr_EntryFormE0204);

  with fr_EntryFormE0204 do
    begin
      //open table reff
      if MyQRefKomite.Active then
        MyQRefKomite.Refresh
      else
        MyQRefKomite.Open;

      if MyQRefindepeden.Active then
        MyQRefindepeden.Refresh
      else
        MyQRefindepeden.Open;

      //size
      kode_komponen.Properties.MaxLength := MyQE0204kode_komponen.Size;
      nama_anggota.Properties.MaxLength := MyQE0204nama_anggota_komite.Size;
      nik.Properties.MaxLength := MyQE0204nik.Size;
      memkeahlian.Properties.MaxLength := MyQE0204keahlian.Size;
      cb_audit.Properties.MaxLength := MyQE0204komite_audit.Size;
      cb_pantau.Properties.MaxLength := MyQE0204komite_pemantau_risiko.Size;
      cb_remunerasi.Properties.MaxLength := MyQE0204komite_remunerasi_dan_nominasi.Size;
      cb_manaj.Properties.MaxLength := MyQE0204komite_management_risiko.Size;
      cb_lainya.Properties.MaxLength := MyQE0204komite_lainnya.Size;
      cb_pihak.Properties.MaxLength := MyQE0204pihak_independent.Size;

      //assignment
      kode_komponen.Text := MyQE0204kode_komponen.Text;
      nama_anggota.Text := MyQE0204nama_anggota_komite.Text;
      nik.Text := MyQE0204nik.Text;
      memkeahlian.Text := MyQE0204keahlian.Text;
      cb_audit.EditValue := MyQE0204komite_audit.Text;
      cb_pantau.EditValue := MyQE0204komite_pemantau_risiko.Text;
      cb_remunerasi.EditValue := MyQE0204komite_remunerasi_dan_nominasi.Text;
      cb_manaj.EditValue := MyQE0204komite_management_risiko.Text;
      cb_lainya.EditValue := MyQE0204komite_lainnya.Text;
      cb_pihak.EditValue := MyQE0204pihak_independent.Text;
      

      kode_komponen.Enabled := False;
    end;
  fr_EntryFormE0204.Tag := 0;
  fr_EntryFormE0204.ShowModal;
  if fr_EntryFormE0204.Tag=2 then
    begin
      with fr_EntryFormE0204 do
        begin
          // Update
          MyExecuteSQL('UPDATE '+cDb2+'.`ltbprk_e0204_struktur_independensi_anggota_komite` '+
                      'SET `kode_komponen` = '+QuotedStr(kode_komponen.Text)+
                      ', `nama_anggota_komite` = '+QuotedStr(nama_anggota.Text)+
                      ', `nik` = '+QuotedStr(nik.Text)+
                      ', `keahlian` = '+QuotedStr(memkeahlian.Text)+
                      ', `komite_audit` = '+QuotedStr(cb_audit.EditValue)+
                      ', `komite_pemantau_risiko` = '+QuotedStr(cb_pantau.EditValue)+
                      ', `komite_remunerasi_dan_nominasi` = '+QuotedStr(cb_remunerasi.EditValue)+
                      ', `komite_management_risiko` = '+QuotedStr(cb_manaj.EditValue)+
                      ', `komite_lainnya` = '+QuotedStr(cb_lainya.EditValue)+
                      ', `pihak_independent` = '+QuotedStr(cb_pihak.EditValue)+
                      ' WHERE `kode_komponen` = '+QuotedStr(MyQE0204kode_komponen.Text)+
                      ' AND `nik` = '+QuotedStr(MyQE0204nik.Text));
        end;
      if MyQE0204.Active then
        MyQE0204.Refresh
      else
        MyQE0204.Open;
    end;

  fr_EntryFormE0204.Free;
  fr_EntryFormE0204 := nil;
end;

procedure Tfr_FormE0204.btlb_FooterClick(Sender: TObject);
begin
  inherited;
  //footer
  memtindak_lanjut_footer.Text := SelectRow('SELECT keterangan FROM '+cDb2+'.ltbprk_e0204_struktur_independensi_anggota_komite_footer where flag_detail='+QuotedStr('F01')+'  ');

  cxGBFooter.Visible:=true;
end;

procedure Tfr_FormE0204.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if (not MyQE0204.Active) then
    begin
      Pesan(2,'Maaf, table belum aktif...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryFormE0204') = nil then
    Application.CreateForm(Tfr_EntryFormE0204, fr_EntryFormE0204);

  with fr_EntryFormE0204 do
    begin
      //open table reff
      if MyQRefKomite.Active then
        MyQRefKomite.Refresh
      else
        MyQRefKomite.Open;

      if MyQRefindepeden.Active then
        MyQRefindepeden.Refresh
      else
        MyQRefindepeden.Open;

      //size
      kode_komponen.Properties.MaxLength := MyQE0204kode_komponen.Size;
      nama_anggota.Properties.MaxLength := MyQE0204nama_anggota_komite.Size;
      nik.Properties.MaxLength := MyQE0204nik.Size;
      memkeahlian.Properties.MaxLength := MyQE0204keahlian.Size;
      cb_audit.Properties.MaxLength := MyQE0204komite_audit.Size;
      cb_pantau.Properties.MaxLength := MyQE0204komite_pemantau_risiko.Size;
      cb_remunerasi.Properties.MaxLength := MyQE0204komite_remunerasi_dan_nominasi.Size;
      cb_manaj.Properties.MaxLength := MyQE0204komite_management_risiko.Size;
      cb_lainya.Properties.MaxLength := MyQE0204komite_lainnya.Size;
      cb_pihak.Properties.MaxLength := MyQE0204pihak_independent.Size;


      //assignment
      kode_komponen.Text := '013201000000';

      kode_komponen.Enabled := False;
    end;
  fr_EntryFormE0204.Tag := 0;
  fr_EntryFormE0204.ShowModal;
  if fr_EntryFormE0204.Tag=2 then
    begin
      with fr_EntryFormE0204 do
        begin
          // Insert
          MyExecuteSQL('INSERT INTO '+cDb2+'.`ltbprk_e0204_struktur_independensi_anggota_komite` SET '+
                      '`kode_komponen` = '+QuotedStr(kode_komponen.Text)+
                      ', `nama_anggota_komite` = '+QuotedStr(nama_anggota.Text)+
                      ', `nik` = '+QuotedStr(nik.Text)+
                      ', `keahlian` = '+QuotedStr(memkeahlian.Text)+
                      ', `komite_audit` = '+QuotedStr(cb_audit.EditValue)+
                      ', `komite_pemantau_risiko` = '+QuotedStr(cb_pantau.EditValue)+
                      ', `komite_remunerasi_dan_nominasi` = '+QuotedStr(cb_remunerasi.EditValue)+
                      ', `komite_management_risiko` = '+QuotedStr(cb_manaj.EditValue)+
                      ', `komite_lainnya` = '+QuotedStr(cb_lainya.EditValue)+
                      ', `pihak_independent` = '+QuotedStr(cb_pihak.EditValue)+
                      ' ON DUPLICATE KEY UPDATE '+
                      '`nama_anggota_komite` = VALUES(`nama_anggota_komite`),'+
                      '`keahlian` = VALUES(`keahlian`),'+
                      '`komite_audit` = VALUES(`komite_audit`),'+
                      '`komite_pemantau_risiko` = VALUES(`komite_pemantau_risiko`),'+
                      '`komite_remunerasi_dan_nominasi` = VALUES(`komite_remunerasi_dan_nominasi`),'+
                      '`komite_management_risiko` = VALUES(`komite_management_risiko`),'+
                      '`komite_lainnya` = VALUES(`komite_lainnya`),'+
                      '`pihak_independent` = VALUES(`pihak_independent`)');

        end;
      if MyQE0204.Active then
        MyQE0204.Refresh
      else
        MyQE0204.Open;
    end;

  fr_EntryFormE0204.Free;
  fr_EntryFormE0204 := nil;
end;

procedure Tfr_FormE0204.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQE0204.Active then
    MyQE0204.Refresh
  else
    MyQE0204.Open;
end;

procedure Tfr_FormE0204.cxButton4Click(Sender: TObject);
begin
  inherited;
  // footer
  MyExecuteSQL(' DELETE FROM '+cDb2+'.`ltbprk_e0204_struktur_independensi_anggota_komite_footer` ');

  MyExecuteSQL(' INSERT INTO '+cDb2+'.`ltbprk_e0204_struktur_independensi_anggota_komite_footer` '+
               ' (`flag_detail`,`keterangan`) '+
               ' VALUES ('+QuotedStr('F01')+', '+QuotedStr(memtindak_lanjut_footer.Text)+')');
  //
  cxGBFooter.Visible:=false;
end;

procedure Tfr_FormE0204.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_FormE0204.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_FormE0204.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (Tag=1) then
    begin
      if Application.MessageBox('Yakin keluar dari aplikasi ?', 'Konfirmasi',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDNO then
          begin
            CanClose := False;
          end;
    end
end;

procedure Tfr_FormE0204.AssignJudulEvent;
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
              //PEvent^ := judulMouseDown;
              Method.Data := Self;
              SetMethodProp(Components[i], PropInfo, Method);
            end;
          end;
        end;
    end;
end;

procedure Tfr_FormE0204.FormCreate(Sender: TObject);
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

procedure Tfr_FormE0204.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_FormE0204.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
