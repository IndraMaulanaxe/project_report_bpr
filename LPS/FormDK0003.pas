unit FormDK0003;

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
  MyLib, EntryFormDK0003, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox,
  cxProgressBar;

type
  Tfr_FormDK0003 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQDK0003: TMyDataSource;
    MyQDK0003: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQDK0003flag_detail: TStringField;
    MyQDK0003nasabah_id: TStringField;
    MyQDK0003no_rekening: TStringField;
    MyQDK0003jenis: TStringField;
    MyQDK0003kolektibilitas: TStringField;
    MyQDK0003plafon: TFloatField;
    MyQDK0003baki_debet: TFloatField;
    MyQDK0003tunggakan_pokok: TFloatField;
    MyQDK0003tunggakan_bunga: TFloatField;
    MyQDK0003jenis_agunan: TStringField;
    MyQDK0003tgl_mulai: TDateField;
    MyQDK0003tgl_jatuh_tempo: TDateField;
    MyQDK0003kategori_usaha: TStringField;
    cxGridDBTableView1flag_detail: TcxGridDBColumn;
    cxGridDBTableView1nasabah_id: TcxGridDBColumn;
    cxGridDBTableView1no_rekening: TcxGridDBColumn;
    cxGridDBTableView1jenis: TcxGridDBColumn;
    cxGridDBTableView1kolektibilitas: TcxGridDBColumn;
    cxGridDBTableView1plafon: TcxGridDBColumn;
    cxGridDBTableView1baki_debet: TcxGridDBColumn;
    cxGridDBTableView1tunggakan_pokok: TcxGridDBColumn;
    cxGridDBTableView1tunggakan_bunga: TcxGridDBColumn;
    cxGridDBTableView1jenis_agunan: TcxGridDBColumn;
    cxGridDBTableView1tgl_mulai: TcxGridDBColumn;
    cxGridDBTableView1tgl_jatuh_tempo: TcxGridDBColumn;
    cxGridDBTableView1kategori_usaha: TcxGridDBColumn;
    MyQImport: TMyQuery;
    MyQImportnasabah_id: TStringField;
    MyQImportno_rekening: TStringField;
    MyQImportjenis_kewajiban: TStringField;
    MyQImportkolek_bi: TSmallintField;
    MyQImportjml_pinjaman: TFloatField;
    MyQImportbaki_debet: TLargeintField;
    MyQImportjumlah_tunggakan_pokok: TLargeintField;
    MyQImportjumlah_tunggakan_bunga: TLargeintField;
    MyQImportjangka_waktu_mulai: TDateField;
    MyQImportjangka_waktu_jatuh_tempo: TDateField;
    MyQImportkategori_usaha: TStringField;
    sGauge1: TcxProgressBar;
    MyQImportjenis_agunan: TIntegerField;
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
    procedure btlb_CloseClick(Sender: TObject);
    procedure btlb_tools1Click(Sender: TObject);
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
  fr_FormDK0003: Tfr_FormDK0003;
  dTglProses0003: TDate;

implementation
uses Types, TypInfo, dm_bpr, SHFolder, DateUtils;

{$R *.dfm}

function SafeNum(const F: TField): string;
begin
  if (F = nil) or F.IsNull or (Trim(F.AsString) = '') then
    Result := 'NULL'
  else
    Result := F.AsString; // numeric TANPA tanda petik
end;


procedure Tfr_FormDK0003.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_FormDK0003.GetOgieGlobalSetting;
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


procedure Tfr_FormDK0003.btlb_CloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormDK0003.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQDK0003.RecordCount=0) or (not MyQDK0003.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

  if Pesan(3,'Anda sudah yakin menghapus data ini ?') then
    begin

      UpdateUserLog(Self.Name ,True, 'Hapus Nasabah Id='+MyQDK0003nasabah_id.Text+
      ' No Rekening='+MyQDK0003no_rekening.Text+
      ' Jenis='+MyQDK0003jenis.Value);
      try
        MyExecuteSQL('DELETE FROM '+cDb2+'.lps_dk_f0003 WHERE no_rekening='+QuotedStr(MyQDK0003no_rekening.Text));
      except
        on E: EDatabaseError do
          begin
            //Pesan(2,SubStr(E.Message,At());
          end;
      end;

      if MyQDK0003.Active then
        MyQDK0003.Refresh
      else
        MyQDK0003.Open;
    end;
end;

procedure Tfr_FormDK0003.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQDK0003.RecordCount = 0) or (not MyQDK0003.Active) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Application.FindComponent('fr_EntryFormDK0003') = nil then
    Application.CreateForm(Tfr_EntryFormDK0003, fr_EntryFormDK0003);
  fr_EntryFormDK0003.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDK0003nasabah_id.Text) +
    ' AND no_rekening=' + QuotedStr(MyQDK0003no_rekening.Text);

  if fr_EntryFormDK0003.MyQTemp.Active then
    fr_EntryFormDK0003.MyQTemp.Refresh
  else
    fr_EntryFormDK0003.MyQTemp.Open;

  with fr_EntryFormDK0003 do
  begin
    JenisTrans0003 := '2';

    nasabah_id.Properties.MaxLength := MyQTempnasabah_id.Size;
    no_rekening.Properties.MaxLength := MyQTempno_rekening.Size;
    jenis.Properties.MaxLength := MyQTempjenis.Size;
    kolektibilitas.Properties.MaxLength := MyQTempkolektibilitas.Size;
    jenis_agunan.Properties.MaxLength := MyQTempjenis_agunan.Size;
    kategori_usaha.Properties.MaxLength := MyQTempkategori_usaha.Size;

    nasabah_id.Text := MyQTempnasabah_id.AsString;
    no_rekening.Text := MyQTempno_rekening.AsString;
    jenis.Text := MyQTempjenis.AsString;
    jenisExit(Sender);
    kolektibilitas.Text := MyQTempkolektibilitas.AsString;
    kolektibilitasExit(Sender);
    jml_pinjaman.Value := MyQTempplafon.Value;
    baki_debet.Value := MyQTempbaki_debet.Value;
    jumlah_tunggakan_pokok.Value := MyQTemptunggakan_pokok.Value;
    jumlah_tunggakan_bunga.Value := MyQTemptunggakan_bunga.Value;
    jenis_agunan.Text := MyQTempjenis_agunan.AsString;
    jenis_agunanExit(Sender);
    tgl_realisasi.Date := MyQTemptgl_mulai.AsDateTime;
    tgl_jatuh_tempo.Date := MyQTemptgl_jatuh_tempo.AsDateTime;
    kategori_usaha.Text := MyQTempkategori_usaha.AsString;
    kategori_usahaExit(Sender);
  end;

  fr_EntryFormDK0003.Tag := 0;
  fr_EntryFormDK0003.ShowModal;

  if fr_EntryFormDK0003.Tag = 2 then
  begin
    with fr_EntryFormDK0003 do
        begin
        MyExecuteSQL('UPDATE ' + cDb2 + '.lps_dk_f0003 SET ' +
        ' `nasabah_id`=' + QuotedStr(nasabah_id.Text) +
        ', `no_rekening`=' + QuotedStr(no_rekening.Text) +
        ', `jenis`=' + QuotedStr(jenis.Text) +
        ', `kolektibilitas`=' + QuotedStr(kolektibilitas.Text) +
        ', `plafon`=' + FloatToStr(jml_pinjaman.Value) +
        ', `baki_debet`=' + FloatToStr(baki_debet.Value) +
        ', `tunggakan_pokok`=' + FloatToStr(jumlah_tunggakan_pokok.Value) +
        ', `tunggakan_bunga`=' + FloatToStr(jumlah_tunggakan_bunga.Value) +
        ', `jenis_agunan`=' + QuotedStr(jenis_agunan.Text) +
        ', `tgl_mulai`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_realisasi.Date)) +
        ', `tgl_jatuh_tempo`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_jatuh_tempo.Date)) +
        ', `kategori_usaha`=' + QuotedStr(kategori_usaha.Text) +
        ' WHERE `nasabah_id`=' + QuotedStr(MyQDK0003nasabah_id.Text) +
        ' AND `no_rekening`=' + QuotedStr(MyQDK0003no_rekening.Text));
    end;

    if MyQDK0003.Active then
      MyQDK0003.Refresh
    else
      MyQDK0003.Open;
  end;

  fr_EntryFormDK0003.Free;
  fr_EntryFormDK0003 := nil;
end;

procedure Tfr_FormDK0003.btlb_InsertClick(Sender: TObject);
begin
  inherited;
   if Application.FindComponent('fr_EntryFormDK0003') = nil then
  Application.CreateForm(Tfr_EntryFormDK0003, fr_EntryFormDK0003);
  fr_EntryFormDK0003.MyQTemp.MacroByName('WHERE').Value := 'WHERE no_rekening=' + QuotedStr(MyQDK0003no_rekening.Text);
  if fr_EntryFormDK0003.MyQTemp.Active then
    fr_EntryFormDK0003.MyQTemp.Refresh
  else
    fr_EntryFormDK0003.MyQTemp.Open;

  with fr_EntryFormDK0003 do
  begin
    JenisTrans0003 := '1';
    nasabah_id.Properties.MaxLength := MyQTemp.FieldByName('nasabah_id').Size;
    no_rekening.Properties.MaxLength := MyQTemp.FieldByName('no_rekening').Size;
    jenis.Properties.MaxLength := MyQTemp.FieldByName('jenis').Size;
    kolektibilitas.Properties.MaxLength := MyQTemp.FieldByName('kolektibilitas').Size;
    jml_pinjaman.Properties.MaxLength := MyQTemp.FieldByName('plafon').Size;
    baki_debet.Properties.MaxLength := MyQTemp.FieldByName('baki_debet').Size;
    jumlah_tunggakan_pokok.Properties.MaxLength := MyQTemp.FieldByName('tunggakan_pokok').Size;
    jumlah_tunggakan_bunga.Properties.MaxLength := MyQTemp.FieldByName('tunggakan_bunga').Size;
    jenis_agunan.Properties.MaxLength := MyQTemp.FieldByName('jenis_agunan').Size;
    kategori_usaha.Properties.MaxLength := MyQTemp.FieldByName('kategori_usaha').Size;

    nasabah_id.Text := '';
    no_rekening.Text := '';
    jenis.Text := '';
    kolektibilitas.Text := '';
    jml_pinjaman.Value := 0;
    baki_debet.Value := 0;
    jumlah_tunggakan_pokok.Value := 0;
    jumlah_tunggakan_bunga.Value := 0;
    jenis_agunan.Text := '';
    kategori_usaha.Text := '';

    //opsional: jika ingin nilai default tertentu
    tgl_realisasi.Date := Date;
    tgl_jatuh_tempo.Date := Date;
  end;

    fr_EntryFormDK0003.Tag := 0;
    fr_EntryFormDK0003.ShowModal;
    if fr_EntryFormDK0003.Tag=2 then
      begin
        with fr_EntryFormDK0003 do
         begin
          MyExecuteSQL('INSERT INTO ' + cDb2 + '.lps_dk_f0003 ' +
            '(`nasabah_id`, `no_rekening`, `jenis`, `kolektibilitas`, `plafon`, ' +
            '`baki_debet`, `tunggakan_pokok`, `tunggakan_bunga`, ' +
            '`jenis_agunan`, `tgl_mulai`, `tgl_jatuh_tempo`, `kategori_usaha`) VALUES (' +
            QuotedStr(nasabah_id.Text) + ',' +
            QuotedStr(no_rekening.Text) + ',' +
            QuotedStr(jenis.Text) + ',' +
            QuotedStr(kolektibilitas.Text) + ',' +
            FloatToStr(jml_pinjaman.Value) + ',' +
            FloatToStr(baki_debet.Value) + ',' +
            FloatToStr(jumlah_tunggakan_pokok.Value) + ',' +
            FloatToStr(jumlah_tunggakan_bunga.Value) + ',' +
            QuotedStr(jenis_agunan.Text) + ',' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_realisasi.Date)) + ',' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_jatuh_tempo.Date)) + ',' +
            QuotedStr(kategori_usaha.Text) +
            ') ON DUPLICATE KEY UPDATE ' +
            '`nasabah_id`=' + QuotedStr(nasabah_id.Text) +
            ', `no_rekening`=' + QuotedStr(no_rekening.Text) +
            ', `jenis`=' + QuotedStr(jenis.Text) +
            ', `kolektibilitas`=' + QuotedStr(kolektibilitas.Text) +
            ', `plafon`=' + FloatToStr(jml_pinjaman.Value) +
            ', `baki_debet`=' + FloatToStr(baki_debet.Value) +
            ', `tunggakan_pokok`=' + FloatToStr(jumlah_tunggakan_pokok.Value) +
            ', `tunggakan_bunga`=' + FloatToStr(jumlah_tunggakan_bunga.Value) +
            ', `jenis_agunan`=' + QuotedStr(jenis_agunan.Text) +
            ', `tgl_mulai`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_realisasi.Date)) +
            ', `tgl_jatuh_tempo`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_jatuh_tempo.Date)) +
            ', `kategori_usaha`=' + QuotedStr(kategori_usaha.Text));
        end;

        if MyQDK0003.Active then
          MyQDK0003.Refresh
        else
          MyQDK0003.Open;
      end;

    fr_EntryFormDK0003.Free;
    fr_EntryFormDK0003 := nil;
end;

procedure Tfr_FormDK0003.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQDK0003.Active then
    MyQDK0003.Refresh
  else
    MyQDK0003.Open;
end;

procedure Tfr_FormDK0003.btlb_tools1Click(Sender: TObject);
var
  cCount            : string;
  cMulai, cJatuh    : string;
  dtMulai, dtJatuh  : TDateTime;
begin
  inherited;

  if not Pesan(3, 'Proses Import Data Kredit dari Database Core ?') then
    Exit;

    MyQImport.MacroByName('TGL').Value:=DateToStrSQL(dTglProses0003);

  if MyQImport.Active then
    MyQImport.Refresh
  else
    MyQImport.Open;

  if MyQImport.RecordCount = 0 then
  begin
    Pesan(2, 'Maaf tidak ada data...!');
    Exit;
  end;

  sGauge1.Visible  := True;
  sGauge1.Properties.Max := MyQImport.RecordCount;
  sGauge1.Position := 0;

  while not MyQImport.Eof do
  begin

    { ==== CEK DATA ==== }
    cCount := SelectRow(
      'SELECT COUNT(*) FROM ' + cDb2 + '.lps_dk_f0003 ' +
      'WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)
    );

    { ==== INSERT ==== }
    if StrToIntDef(cCount, 0) = 0 then
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.lps_dk_f0003 (' +
        'nasabah_id, no_rekening, jenis, kolektibilitas, ' +
        'plafon, baki_debet, tunggakan_pokok, ' +
        'tunggakan_bunga, jenis_agunan, ' +
        'tgl_mulai, tgl_jatuh_tempo, kategori_usaha) VALUES (' +
        QuotedStr(MyQImportnasabah_id.AsString) + ',' +
        QuotedStr(MyQImportno_rekening.AsString) + ',' +
        QuotedStr(MyQImportjenis_kewajiban.AsString) + ',' +
        QuotedStr(MyQImportkolek_bi.AsString) + ',' +
        MyQImportjml_pinjaman.AsString + ',' +
        MyQImportbaki_debet.AsString + ',' +
        MyQImportjumlah_tunggakan_pokok.AsString + ',' +
        MyQImportjumlah_tunggakan_bunga.AsString + ',' +
        QuotedStr(MyQImportjenis_agunan.AsString) + ',' +
        DateToStrSQL(MyQImportjangka_waktu_mulai.AsDateTime)  + ',' +
        DateToStrSQL(MyQImportjangka_waktu_jatuh_tempo.AsDateTime) + ',' +
        QuotedStr(MyQImportkategori_usaha.AsString) +
        ')'
      );
    end
    else
    begin
      { ==== UPDATE ==== }
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.lps_dk_f0003 SET ' +
        'nasabah_id=' + QuotedStr(MyQImportnasabah_id.AsString) +
        ', jenis=' + QuotedStr(MyQImportjenis_kewajiban.AsString) +
        ', kolektibilitas=' + QuotedStr(MyQImportkolek_bi.AsString) +
        ', plafon=' + MyQImportjml_pinjaman.AsString +
        ', baki_debet=' + MyQImportbaki_debet.AsString +
        ', tunggakan_pokok=' + MyQImportjumlah_tunggakan_pokok.AsString +
        ', tunggakan_bunga=' + MyQImportjumlah_tunggakan_bunga.AsString +
        ', jenis_agunan=' + QuotedStr(MyQImportjenis_agunan.AsString) +
        ', tgl_mulai=' + DateToStrSQL(MyQImportjangka_waktu_mulai.AsDateTime) +
        ', tgl_jatuh_tempo=' +  DateToStrSQL(MyQImportjangka_waktu_jatuh_tempo.AsDateTime) +
        ', kategori_usaha=' + QuotedStr(MyQImportkategori_usaha.AsString) +
        ' WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)
      );
    end;

    MyQImport.Next;
    sGauge1.Position := sGauge1.Position + 1;
    Application.ProcessMessages;
  end;

  sGauge1.Visible := False;
  Pesan(1, 'Proses Import Data Kredit Selesai...');
  btlb_RefreshClick(Sender);

end;

procedure Tfr_FormDK0003.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_FormDK0003.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_FormDK0003.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfr_FormDK0003.AssignJudulEvent;
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

procedure Tfr_FormDK0003.FormCreate(Sender: TObject);
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

procedure Tfr_FormDK0003.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_FormDK0003.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
