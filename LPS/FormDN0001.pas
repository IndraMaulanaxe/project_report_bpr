unit FormDN0001;

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
  MyLib, EntryFormDN0001, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox;

type
  Tfr_FormDN0001 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQDN0001: TMyDataSource;
    MyQDN0001: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQDN0001flag_detail: TStringField;
    MyQDN0001nasabah_id: TStringField;
    MyQDN0001nama_nasabah: TStringField;
    MyQDN0001jenis_id: TStringField;
    MyQDN0001no_id: TStringField;
    MyQDN0001nama_ibu_kandung: TStringField;
    MyQDN0001tgl_lahir: TDateField;
    MyQDN0001no_id2: TStringField;
    MyQDN0001nama_pengurus: TStringField;
    MyQDN0001jenis_identitas: TStringField;
    MyQDN0001nomor_identitas: TStringField;
    MyQDN0001alamat: TStringField;
    MyQDN0001kota_kab: TStringField;
    MyQDN0001wni: TStringField;
    MyQDN0001telpon: TStringField;
    MyQDN0001flag_fraud: TStringField;
    MyQDN0001hub_dgn_bank: TStringField;
    MyQDN0001slik_kode_hub_ljk: TStringField;
    MyQDN0001slik_kode_gol_debitur: TStringField;
    cxGridDBTableView1flag_detail: TcxGridDBColumn;
    cxGridDBTableView1nasabah_id: TcxGridDBColumn;
    cxGridDBTableView1nama_nasabah: TcxGridDBColumn;
    cxGridDBTableView1jenis_id: TcxGridDBColumn;
    cxGridDBTableView1no_id: TcxGridDBColumn;
    cxGridDBTableView1nama_ibu_kandung: TcxGridDBColumn;
    cxGridDBTableView1tgl_lahir: TcxGridDBColumn;
    cxGridDBTableView1no_id2: TcxGridDBColumn;
    cxGridDBTableView1nama_pengurus: TcxGridDBColumn;
    cxGridDBTableView1jenis_identitas: TcxGridDBColumn;
    cxGridDBTableView1nomor_identitas: TcxGridDBColumn;
    cxGridDBTableView1alamat: TcxGridDBColumn;
    cxGridDBTableView1kota_kab: TcxGridDBColumn;
    cxGridDBTableView1wni: TcxGridDBColumn;
    cxGridDBTableView1telpon: TcxGridDBColumn;
    cxGridDBTableView1flag_fraud: TcxGridDBColumn;
    cxGridDBTableView1hub_dgn_bank: TcxGridDBColumn;
    cxGridDBTableView1slik_kode_hub_ljk: TcxGridDBColumn;
    cxGridDBTableView1slik_kode_gol_debitur: TcxGridDBColumn;
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
  fr_FormDN0001: Tfr_FormDN0001;
  dTglProses0001: TDate;

implementation
uses Types, TypInfo, dm_bpr, SHFolder, DateUtils;

{$R *.dfm}

procedure Tfr_FormDN0001.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_FormDN0001.GetOgieGlobalSetting;
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


procedure Tfr_FormDN0001.btlb_CloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormDN0001.btlb_DeleteClick(Sender: TObject);
begin
  inherited;

  if (not MyQDN0001.Active) or
     (MyQDN0001.RecordCount = 0) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Pesan(3, 'Anda sudah yakin menghapus data ini ?') then
  begin
    UpdateUserLog(Self.Name, True,
      'Hapus Data Nominatif: ' +
      'NasabahID=' + MyQDN0001.FieldByName('nasabah_id').AsString + ', ' +
      'Nama=' + MyQDN0001.FieldByName('nama_nasabah').AsString + ', ' +
      'NoIdentitas=' + MyQDN0001.FieldByName('nomor_identitas').AsString + ', ' +
      'NoID2=' + MyQDN0001.FieldByName('no_id2').AsString + ', ' +
      'HubunganBank=' + MyQDN0001.FieldByName('hub_dgn_bank').AsString);

    try
      MyExecuteSQL(
        'DELETE FROM ' + cDb2 + '.lps_dn_f0001 ' +
        'WHERE nasabah_id = ' + QuotedStr(MyQDN0001.FieldByName('nasabah_id').AsString));
    except
      on E: EDatabaseError do
      begin
        Pesan(2, 'Terjadi kesalahan saat menghapus data: ' + E.Message);
      end;
    end;

    if MyQDN0001.Active then
      MyQDN0001.Refresh
    else
      MyQDN0001.Open;
  end;
end;

procedure Tfr_FormDN0001.btlb_EditClick(Sender: TObject);
begin
  inherited;

  if (MyQDN0001.RecordCount = 0) or (not MyQDN0001.Active) then
  begin
    Pesan(2, 'Maaf, Tidak ada data...!');
    Exit;
  end;

  if Application.FindComponent('fr_EntryFormNasabah') = nil then
    Application.CreateForm(Tfr_EntryFormDN0001, fr_EntryFormDN0001);

  fr_EntryFormDN0001.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDN0001nasabah_id.Text);

  if fr_EntryFormDN0001.MyQTemp.Active then
    fr_EntryFormDN0001.MyQTemp.Refresh
  else
    fr_EntryFormDN0001.MyQTemp.Open;

  with fr_EntryFormDN0001 do
  begin
    JenisTrans0001 := 'EDIT';

    nasabah_id.Properties.MaxLength := MyQTempnasabah_id.Size;
    nama_nasabah.Properties.MaxLength := MyQTempnama_nasabah.Size;
    kode_jenis_id.Properties.MaxLength := MyQTempjenis_id.Size;
    no_id.Properties.MaxLength := MyQTempno_id.Size;
    nama_ibu_kandung.Properties.MaxLength := MyQTempnama_ibu_kandung.Size;
    no_iden_bdn_hukum.Properties.MaxLength := MyQTempno_id2.Size;
    nama_pengurus.Properties.MaxLength := MyQTempnama_pengurus.Size;
    kode_jenis_id_pengurus.Properties.MaxLength := MyQTempjenis_identitas.Size;
    no_iden_pegang_kuasa.Properties.MaxLength := MyQTempnomor_identitas.Size;
    alamat.Properties.MaxLength := MyQTempalamat.Size;
    kode_kota_kab.Properties.MaxLength := MyQTempkota_kab.Size;
    kode_kewarganegaraan.Properties.MaxLength := MyQTempwni.Size;
    telpon.Properties.MaxLength := MyQTemptelpon.Size;
    kode_flag.Properties.MaxLength := MyQTempflag_fraud.Size;
    kode_hub_bank.Properties.MaxLength := MyQTemphub_dgn_bank.Size;
    kode_hub_pihak_terkait.Properties.MaxLength := MyQTempslik_kode_hub_ljk.Size;
    kode_gol_nasabah.Properties.MaxLength := MyQTempslik_kode_gol_debitur.Size;

    nasabah_id.Text := MyQTempnasabah_id.AsString;
    nama_nasabah.Text := MyQTempnama_nasabah.AsString;
    kode_jenis_id.Text := MyQTempjenis_id.AsString;
    kode_jenis_idExit(Sender);
    no_id.Text := MyQTempno_id.AsString;
    nama_ibu_kandung.Text := MyQTempnama_ibu_kandung.AsString;
    tgl_lahir.Date := MyQTemptgl_lahir.AsDateTime;
    no_iden_bdn_hukum.Text := MyQTempno_id2.AsString;
    nama_pengurus.Text := MyQTempnama_pengurus.AsString;
    kode_jenis_id_pengurus.Text := MyQTempjenis_identitas.AsString;
    kode_jenis_id_pengurusExit(Sender);
    no_iden_pegang_kuasa.Text := MyQTempnomor_identitas.AsString;
    alamat.Text := MyQTempalamat.AsString;
    kode_kota_kab.Text := MyQTempkota_kab.AsString;
    kode_kota_kabExit(Sender);
    kode_kewarganegaraan.Text := MyQTempwni.AsString;
    kode_kewarganegaraanExit(Sender);
    telpon.Text := MyQTemptelpon.AsString;
    kode_flag.Text := MyQTempflag_fraud.AsString;
    kode_flagExit(Sender);
    kode_hub_bank.Text := MyQTemphub_dgn_bank.AsString;
    kode_hub_bankExit(Sender);
    kode_hub_pihak_terkait.Text := MyQTempslik_kode_hub_ljk.AsString;
    kode_hub_pihak_terkaitExit(Sender);
    kode_gol_nasabah.Text := MyQTempslik_kode_gol_debitur.AsString;
    kode_gol_nasabahExit(Sender);
  end;

  fr_EntryFormDN0001.Tag := 0;
  fr_EntryFormDN0001.ShowModal;

  if fr_EntryFormDN0001.Tag = 2 then
  begin
    with fr_EntryFormDN0001 do
    begin
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.lps_dn_f0001 SET ' +
        '`nasabah_id`=' + QuotedStr(nasabah_id.Text) + ',' +
        '`nama_nasabah`=' + QuotedStr(nama_nasabah.Text) + ',' +
        '`jenis_id`=' + QuotedStr(kode_jenis_id.Text) + ',' +
        '`no_id`=' + QuotedStr(no_id.Text) + ',' +
        '`nama_ibu_kandung`=' + QuotedStr(nama_ibu_kandung.Text) + ',' +
        '`tgl_lahir`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_lahir.Date)) + ',' +
        '`no_id2`=' + QuotedStr(no_iden_bdn_hukum.Text) + ',' +
        '`nama_pengurus`=' + QuotedStr(nama_pengurus.Text) + ',' +
        '`jenis_identitas`=' + QuotedStr(kode_jenis_id_pengurus.Text) + ',' +
        '`nomor_identitas`=' + QuotedStr(no_iden_pegang_kuasa.Text) + ',' +
        '`alamat`=' + QuotedStr(alamat.Text) + ',' +
        '`kota_kab`=' + QuotedStr(kode_kota_kab.Text) + ',' +
        '`wni`=' + QuotedStr(kode_kewarganegaraan.Text) + ',' +
        '`telpon`=' + QuotedStr(telpon.Text) + ',' +
        '`flag_fraud`=' + QuotedStr(kode_flag.Text) + ',' +
        '`hub_dgn_bank`=' + QuotedStr(kode_hub_bank.Text) + ',' +
        '`slik_kode_hub_ljk`=' + QuotedStr(kode_hub_pihak_terkait.Text) + ',' +
        '`slik_kode_gol_debitur`=' + QuotedStr(kode_gol_nasabah.Text) + ',' +
        'WHERE nasabah_id=' + QuotedStr(MyQDN0001nasabah_id.Text));
    end;

    if MyQDN0001.Active then
      MyQDN0001.Refresh
    else
      MyQDN0001.Open;
  end;

  fr_EntryFormDN0001.Free;
  fr_EntryFormDN0001 := nil;
end;

procedure Tfr_FormDN0001.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_EntryFormDN0001') = nil then
    Application.CreateForm(Tfr_EntryFormDN0001, fr_EntryFormDN0001);
  fr_EntryFormDN0001.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE nasabah_id=' + QuotedStr(MyQDN0001nasabah_id.Text);
  if fr_EntryFormDN0001.MyQTemp.Active then
    fr_EntryFormDN0001.MyQTemp.Refresh
  else
    fr_EntryFormDN0001.MyQTemp.Open;

  with fr_EntryFormDN0001 do
  begin
    JenisTrans0001 := '1';

    nasabah_id.Properties.MaxLength := MyQTempnasabah_id.Size;
    nama_nasabah.Properties.MaxLength := MyQTempnama_nasabah.Size;
    kode_jenis_id.Properties.MaxLength := MyQTempjenis_id.Size;
    no_id.Properties.MaxLength := MyQTempno_id.Size;
    nama_ibu_kandung.Properties.MaxLength := MyQTempnama_ibu_kandung.Size;
    no_iden_bdn_hukum.Properties.MaxLength := MyQTempno_id2.Size;
    nama_pengurus.Properties.MaxLength := MyQTempnama_pengurus.Size;
    kode_jenis_id_pengurus.Properties.MaxLength := MyQTempjenis_identitas.Size;
    no_iden_pegang_kuasa.Properties.MaxLength := MyQTempnomor_identitas.Size;
    alamat.Properties.MaxLength := MyQTempalamat.Size;
    kode_kota_kab.Properties.MaxLength := MyQTempkota_kab.Size;
    kode_kewarganegaraan.Properties.MaxLength := MyQTempwni.Size;
    telpon.Properties.MaxLength := MyQTemptelpon.Size;
    kode_flag.Properties.MaxLength := MyQTempflag_fraud.Size;
    kode_hub_bank.Properties.MaxLength := MyQTemphub_dgn_bank.Size;
    kode_hub_pihak_terkait.Properties.MaxLength := MyQTempslik_kode_hub_ljk.Size;
    kode_gol_nasabah.Properties.MaxLength := MyQTempslik_kode_gol_debitur.Size;

    nasabah_id.Text := '';
    nama_nasabah.Text := '';
    kode_jenis_id.Text := '';
    no_id.Text := '';
    nama_ibu_kandung.Text := '';
    tgl_lahir.Date := dTglSystem;
    nama_pengurus.Text := '';
    nama_pengurus.Text := '';
    kode_jenis_id_pengurus.Text := '';
    no_iden_pegang_kuasa.Text := '';
    alamat.Text := '';
    kode_kota_kab.Text := '';
    kode_kewarganegaraan.Text := '';
    telpon.Text := '';
    kode_flag.Text := '';
    kode_hub_bank.Text := '';
    kode_hub_pihak_terkait.Text := '';
    kode_gol_nasabah.Text := '';
  end;

  fr_EntryFormDN0001.Tag := 0;
  fr_EntryFormDN0001.ShowModal;

  if fr_EntryFormDN0001.Tag = 2 then
  begin
    with fr_EntryFormDN0001 do
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.lps_dn_f0001 (' +
        '`nasabah_id`, `nama_nasabah`, `jenis_id`, `no_id`, ' +
        '`nama_ibu_kandung`, `tgl_lahir`, `no_id2`, `nama_pengurus`, ' +
        '`jenis_identitas`, `nomor_identitas`, `alamat`, `kota_kab`, `wni`, ' +
        '`telpon`, `flag_fraud`, `hub_dgn_bank`, `slik_kode_hub_ljk`, `slik_kode_gol_debitur`) VALUES (' +
        QuotedStr(nasabah_id.Text) + ', ' +
        QuotedStr(nama_nasabah.Text) + ', ' +
        QuotedStr(kode_jenis_id.Text) + ', ' +
        QuotedStr(no_id.Text) + ', ' +
        QuotedStr(nama_ibu_kandung.Text) + ', ' +
        DateToStrSQL(tgl_lahir.Date) + ', ' +
        QuotedStr(no_iden_pegang_kuasa.Text) + ', ' +
        QuotedStr(nama_pengurus.Text) + ', ' +
        QuotedStr(kode_jenis_id_pengurus.Text) + ', ' +
        QuotedStr(no_iden_pegang_kuasa.Text) + ', ' +
        QuotedStr(alamat.Text) + ', ' +
        QuotedStr(kode_kota_kab.Text) + ', ' +
        QuotedStr(kode_kewarganegaraan.Text) + ', ' +
        QuotedStr(telpon.Text) + ', ' +
        QuotedStr(kode_flag.Text) + ', ' +
        QuotedStr(kode_hub_bank.Text) + ', ' +
        QuotedStr(kode_hub_pihak_terkait.Text) + ', ' +
        QuotedStr(kode_gol_nasabah.Text) + ', ' +
        'NOW(), NOW()) ' +
        'ON DUPLICATE KEY UPDATE ' +
        '`nama_nasabah`=' + QuotedStr(nama_nasabah.Text) + ',' +
        '`jenis_id`=' + QuotedStr(kode_jenis_id.Text) + ',' +
        '`no_id`=' + QuotedStr(no_id.Text) + ',' +
        '`nama_ibu_kandung`=' + QuotedStr(nama_ibu_kandung.Text) + ',' +
        '`tgl_lahir`=' + DateToStrSQL(tgl_lahir.Date) + ',' +
        '`no_id2`=' + QuotedStr(no_iden_pegang_kuasa.Text) + ',' +
        '`nama_pengurus`=' + QuotedStr(nama_pengurus.Text) + ',' +
        '`jenis_identitas`=' + QuotedStr(kode_jenis_id_pengurus.Text) + ',' +
        '`nomor_identitas`=' + QuotedStr(no_iden_bdn_hukum.Text) + ',' +
        '`alamat`=' + QuotedStr(alamat.Text) + ',' +
        '`kota_kab`=' + QuotedStr(kode_kota_kab.Text) + ',' +
        '`wni`=' + QuotedStr(kode_kewarganegaraan.Text) + ',' +
        '`telpon`=' + QuotedStr(telpon.Text) + ',' +
        '`flag_fraud`=' + QuotedStr(kode_flag.Text) + ',' +
        '`hub_dgn_bank`=' + QuotedStr(kode_hub_bank.Text) + ',' +
        '`slik_kode_hub_ljk`=' + QuotedStr(kode_hub_pihak_terkait.Text) + ',' +
        '`slik_kode_gol_debitur`=' + QuotedStr(kode_gol_nasabah.Text));
    end;

    if MyQDN0001.Active then
      MyQDN0001.Refresh
    else
      MyQDN0001.Open;
  end;

  fr_EntryFormDN0001.Free;
  fr_EntryFormDN0001 := nil;
end;

procedure Tfr_FormDN0001.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQDN0001.Active then
    MyQDN0001.Refresh
  else
    MyQDN0001.Open;
end;

procedure Tfr_FormDN0001.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_FormDN0001.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_FormDN0001.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfr_FormDN0001.AssignJudulEvent;
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

procedure Tfr_FormDN0001.FormCreate(Sender: TObject);
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

procedure Tfr_FormDN0001.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_FormDN0001.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
