unit FormDSN0002;

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
  MyLib, EntryFormDSN0002, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox,
  cxProgressBar;

type
  Tfr_FormDSN0002 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQDSN0002: TMyDataSource;
    MyQDSN0002: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQDSN0002klasifikasi_rekening: TStringField;
    MyQDSN0002jumlah_pemilik_rekening: TIntegerField;
    MyQDSN0002nasabah_id: TStringField;
    MyQDSN0002jenis_simpanan: TStringField;
    MyQDSN0002no_rekening: TStringField;
    MyQDSN0002status_dana: TStringField;
    MyQDSN0002tgl_mulai: TDateField;
    MyQDSN0002jenis_tingkat_bunga: TStringField;
    MyQDSN0002tingkat_bunga: TFloatField;
    MyQDSN0002biaya_cashback: TFloatField;
    MyQDSN0002tingkat_bunga_penjaminan_lps: TFloatField;
    MyQDSN0002kategori_tingkat_bunga_simpanan: TStringField;
    MyQDSN0002saldo_simpanan: TFloatField;
    MyQDSN0002nominal_blokir: TFloatField;
    MyQDSN0002alasan_blokir: TStringField;
    MyQDSN0002bunga_akrual: TFloatField;
    MyQDSN0002tgl_akru_terakhir: TDateField;
    MyQDSN0002tanggal_jt: TDateField;
    cxGridDBTableView1klasifikasi_rekening: TcxGridDBColumn;
    cxGridDBTableView1jumlah_pemilik_rekening: TcxGridDBColumn;
    cxGridDBTableView1nasabah_id: TcxGridDBColumn;
    cxGridDBTableView1jenis_simpanan: TcxGridDBColumn;
    cxGridDBTableView1no_rekening: TcxGridDBColumn;
    cxGridDBTableView1status_dana: TcxGridDBColumn;
    cxGridDBTableView1tgl_mulai: TcxGridDBColumn;
    cxGridDBTableView1jenis_tingkat_bunga: TcxGridDBColumn;
    cxGridDBTableView1tingkat_bunga: TcxGridDBColumn;
    cxGridDBTableView1biaya_cashback: TcxGridDBColumn;
    cxGridDBTableView1tingkat_bunga_penjaminan_lps: TcxGridDBColumn;
    cxGridDBTableView1kategori_tingkat_bunga_simpanan: TcxGridDBColumn;
    cxGridDBTableView1saldo_simpanan: TcxGridDBColumn;
    cxGridDBTableView1nominal_blokir: TcxGridDBColumn;
    cxGridDBTableView1alasan_blokir: TcxGridDBColumn;
    cxGridDBTableView1bunga_akrual: TcxGridDBColumn;
    cxGridDBTableView1tgl_akru_terakhir: TcxGridDBColumn;
    cxGridDBTableView1tanggal_jt: TcxGridDBColumn;
    MyQImport: TMyQuery;
    MyQImportD: TStringField;
    MyQImportklasifikasi_rekening: TStringField;
    MyQImportjumlah_pemilik_rekening: TStringField;
    MyQImportnasabah_id: TStringField;
    MyQImportjenis_simpanan: TStringField;
    MyQImportno_rekening: TStringField;
    MyQImportstatus_dana: TStringField;
    MyQImportjenis_tingkat_bunga: TStringField;
    MyQImporttingkat_bunga: TFloatField;
    MyQImporttingkat_bunga_penjaminan_lps: TStringField;
    MyQImportkategori_tingkat_bunga_simpanan: TStringField;
    MyQImportsaldo_simpanan: TFloatField;
    MyQImportnominal_blokir: TFloatField;
    MyQImportalasan_blokir: TStringField;
    MyQImportbunga_akrual: TFloatField;
    MyQImportcashback: TFloatField;
    sGauge1: TcxProgressBar;
    MyQImporttanggal_mulai_atau_tanggal_aro_terakhir: TStringField;
    MyQImporttanggal_akrual_terakhir: TStringField;
    MyQImporttanggal_jatuh_tempo: TStringField;
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
  fr_FormDSN0002: Tfr_FormDSN0002;
  dTglProses0002: TDate;

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


procedure Tfr_FormDSN0002.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_FormDSN0002.GetOgieGlobalSetting;
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


procedure Tfr_FormDSN0002.btlb_CloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormDSN0002.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQDSN0002.RecordCount=0) or (not MyQDSN0002.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

  if Pesan(3,'Anda sudah yakin menghapus data ini ?') then
    begin

      UpdateUserLog(Self.Name, True,'Hapus Rekening=' + MyQDSN0002no_rekening.Text +
      ' Nasabah ID=' + MyQDSN0002nasabah_id.Text +' Klasifikasi Rekening=' + MyQDSN0002klasifikasi_rekening.Text);
      try
          MyExecuteSQL(
            'DELETE FROM ' + cDb2 + '.lps_dsn_f0002 ' +
            'WHERE no_rekening = ' + QuotedStr(MyQDSN0002no_rekening.Text));
      except
        on E: EDatabaseError do
          begin
            //Pesan(2,SubStr(E.Message,At());
          end;
      end;

      if MyQDSN0002.Active then
        MyQDSN0002.Refresh
      else
        MyQDSN0002.Open;
    end;
end;

procedure Tfr_FormDSN0002.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQDSN0002.RecordCount=0) or (not MyQDSN0002.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

    if Application.FindComponent('fr_EntryFormDSN0002') = nil then
      Application.CreateForm(Tfr_EntryFormDSN0002, fr_EntryFormDSN0002);

    fr_EntryFormDSN0002.MyQTemp.MacroByName('WHERE').Value :=
      'WHERE no_rekening = ' + QuotedStr(MyQDSN0002no_rekening.Text) +
      '  AND nasabah_id = ' + QuotedStr(MyQDSN0002nasabah_id.Text);

    {
    fr_EntryFormLps0002.MyQTemp.MacroByName('WHERE').Value :=
      'WHERE a.no_rekening = ' + QuotedStr(MyQDaftarSimpananNasabahno_rekening.Text) +
      '  AND a.nasabah_id = ' + QuotedStr(MyQDaftarSimpananNasabahnasabah_id.Text) +
      '  AND a.flag_detail = ' + QuotedStr(MyQDaftarSimpananNasabahflag_detail.Text);
    }

    if fr_EntryFormDSN0002.MyQTemp.Active then
      fr_EntryFormDSN0002.MyQTemp.Refresh
    else
      fr_EntryFormDSN0002.MyQTemp.Open;

    with fr_EntryFormDSN0002 do
    begin
      JenisTrans0002 := '2';

      jumlah_pemilik_rekening.Properties.MaxLength := MyQTempjumlah_pemilik_rekening.Size;
      nasabah_id.Properties.MaxLength := MyQTempnasabah_id.Size;
      no_rekening.Properties.MaxLength := MyQTempno_rekening.Size;
      staus_dana.Properties.MaxLength := MyQTempstatus_dana.Size;
      suku_bunga.Properties.MaxLength := MyQTempjenis_tingkat_bunga.Size;
      suku_bunga_val.Properties.MaxLength := MyQTemptingkat_bunga.Size;
      biaya_cashback.Properties.MaxLength := MyQTempbiaya_cashback.Size;
      tingkat_bunga_penjaminan_lps.Properties.MaxLength := MyQTemptingkat_bunga_penjaminan_lps.Size;
      kategori_tingkat_bunga_simpanan.Properties.MaxLength := MyQTempkategori_tingkat_bunga_simpanan.Size;
      alasan_blokir.Properties.MaxLength := MyQTempalasan_blokir.Size;

      klasifikasi.Text := MyQTempklasifikasi_rekening.AsString;
      klasifikasiExit(Sender);
      jenis_simpanan.Text := MyQTempjenis_simpanan.AsString;
      jenis_simpananExit(Sender);
      jumlah_pemilik_rekening.Text := MyQTempjumlah_pemilik_rekening.AsString;
      nasabah_id.Text := MyQTempnasabah_id.AsString;
      no_rekening.Text := MyQTempno_rekening.AsString;
      staus_dana.Text := MyQTempstatus_dana.AsString;
      staus_danaExit(Sender);
      tgl_mulai.Date := MyQTemptgl_mulai.AsDateTime;
      suku_bunga.Text := MyQTempjenis_tingkat_bunga.AsString;
      suku_bunga_val.Value := MyQTemptingkat_bunga.Value;
      biaya_cashback.Value := MyQTempbiaya_cashback.Value;
      tingkat_bunga_penjaminan_lps.Value := MyQTemptingkat_bunga_penjaminan_lps.Value;
      kategori_tingkat_bunga_simpanan.Text := MyQTempkategori_tingkat_bunga_simpanan.AsString;
      kategori_tingkat_bunga_simpananExit(Sender);
      jml_deposito.Value := MyQTempsaldo_simpanan.Value;
      nominal_blokir.Value := MyQTempnominal_blokir.Value;
      alasan_blokir.Text := MyQTempalasan_blokir.AsString;
      alasan_blokirExit(Sender);
      saldo_akhir_bunga_bmhd.Value := MyQTempbunga_akrual.Value;

      tgl_akru_terakhir.Date := MyQTemptgl_akru_terakhir.AsDateTime;
      tanggal_jt.Date := MyQTemptanggal_jt.AsDateTime;
    end;

  fr_EntryFormDSN0002.Tag := 0;
  fr_EntryFormDSN0002.ShowModal;
  if fr_EntryFormDSN0002.Tag=2 then
    begin
      with fr_EntryFormDSN0002 do
        begin
        MyExecuteSQL('UPDATE ' + cDb2 + '.lps_dsn_f0002 ' +
                      'SET ' +
                      '`klasifikasi_rekening`=' + QuotedStr(klasifikasi.Text) +
                      ', `jumlah_pemilik_rekening`=' + QuotedStr(jumlah_pemilik_rekening.Text) +
                      ', `nasabah_id`=' + QuotedStr(nasabah_id.Text) +
                      ', `jenis_simpanan`=' + QuotedStr(jenis_simpanan.Text) +
                      ', `no_rekening`=' + QuotedStr(no_rekening.Text) +
                      ', `status_dana`=' + QuotedStr(staus_dana.Text) +
                      ', `tgl_mulai`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_mulai.Date)) +
                      ', `jenis_tingkat_bunga`=' + FloatToStr(suku_bunga.Value) +
                      ', `tingkat_bunga`=' + FloatToStr(suku_bunga_val.Value) +
                      ', `biaya_cashback`=' + FloatToStr(biaya_cashback.Value) +
                      ', `tingkat_bunga_penjaminan_lps`=' + FloatToStr(tingkat_bunga_penjaminan_lps.Value) +
                      ', `kategori_tingkat_bunga_simpanan`=' + QuotedStr(kategori_tingkat_bunga_simpanan.Text) +
                      ', `saldo_simpanan`=' + FloatToStr(jml_deposito.Value) +
                      ', `nominal_blokir`=' + FloatToStr(nominal_blokir.Value) +
                      ', `alasan_blokir`=' + QuotedStr(alasan_blokir.Text) +
                      ', `bunga_akrual`=' + FloatToStr(saldo_akhir_bunga_bmhd.Value) +
                      ', `tgl_akru_terakhir`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_akru_terakhir.Date)) +
                      ', `tanggal_jt`=' + QuotedStr(FormatDateTime('yyyy-mm-dd', tanggal_jt.Date)) +
                      ' WHERE `no_rekening`=' + QuotedStr(MyQDSN0002no_rekening.Text) +
                      ' AND `klasifikasi_rekening`=' + QuotedStr(MyQDSN0002klasifikasi_rekening.Text));
        end;
      if MyQDSN0002.Active then
        MyQDSN0002.Refresh
      else
        MyQDSN0002.Open;
    end;

  fr_EntryFormDSN0002.Free;
  fr_EntryFormDSN0002 := nil;
end;

procedure Tfr_FormDSN0002.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_EntryFormDSN0002') = nil then
    Application.CreateForm(Tfr_EntryFormDSN0002, fr_EntryFormDSN0002);

  fr_EntryFormDSN0002.MyQTemp.MacroByName('WHERE').Value :=
    'WHERE no_rekening=' + QuotedStr(MyQDSN0002no_rekening.Text);

  if fr_EntryFormDSN0002.MyQTemp.Active then
    fr_EntryFormDSN0002.MyQTemp.Refresh
  else
    fr_EntryFormDSN0002.MyQTemp.Open;

  with fr_EntryFormDSN0002 do
  begin
    JenisTrans0002 := '1';

    jumlah_pemilik_rekening.Properties.MaxLength := MyQTempjumlah_pemilik_rekening.Size;
    nasabah_id.Properties.MaxLength := MyQTempnasabah_id.Size;
    no_rekening.Properties.MaxLength := MyQTempno_rekening.Size;
    staus_dana.Properties.MaxLength := MyQTempstatus_dana.Size;
    suku_bunga.Properties.MaxLength := MyQTempjenis_tingkat_bunga.Size;
    suku_bunga_val.Properties.MaxLength := MyQTemptingkat_bunga.Size;
    biaya_cashback.Properties.MaxLength := MyQTempbiaya_cashback.Size;
    tingkat_bunga_penjaminan_lps.Properties.MaxLength := MyQTemptingkat_bunga_penjaminan_lps.Size;
    kategori_tingkat_bunga_simpanan.Properties.MaxLength := MyQTempkategori_tingkat_bunga_simpanan.Size;
    jml_deposito.Properties.MaxLength := MyQTempsaldo_simpanan.Size;
    nominal_blokir.Properties.MaxLength := MyQTempnominal_blokir.Size;
    alasan_blokir.Properties.MaxLength := MyQTempalasan_blokir.Size;
    saldo_akhir_bunga_bmhd.Properties.MaxLength := MyQTempbunga_akrual.Size;

    jumlah_pemilik_rekening.Value := 0;
    nasabah_id.Text := '';
    no_rekening.Text := '';
    staus_dana.Text := '';
    tgl_mulai.Date := Date;
    suku_bunga.Value := 0;
    suku_bunga_val.Value := 0;
    biaya_cashback.Value := 0;
    tingkat_bunga_penjaminan_lps.Value := 0;
    kategori_tingkat_bunga_simpanan.Text := '';
    jml_deposito.Value := 0;
    nominal_blokir.Value := 0;
    alasan_blokir.Text := '';
    saldo_akhir_bunga_bmhd.Value := 0;
    tgl_akru_terakhir.Date := Date;
    tanggal_jt.Date := Date;
  end;

  fr_EntryFormDSN0002.Tag := 0;
  fr_EntryFormDSN0002.ShowModal;

  if fr_EntryFormDSN0002.Tag = 2 then
  begin
    with fr_EntryFormDSN0002 do
    try
    MyExecuteSQL(
                    'INSERT INTO '+cDb2+'.lps_dsn_f0002 ('+
                    '`klasifikasi_rekening`, `jumlah_pemilik_rekening`, `nasabah_id`, `jenis_simpanan`, `no_rekening`, '+
                    '`status_dana`, `tgl_mulai`, `jenis_tingkat_bunga`, `tingkat_bunga`, `biaya_cashback`, '+
                    '`tingkat_bunga_penjaminan_lps`, `kategori_tingkat_bunga_simpanan`, `saldo_simpanan`, `nominal_blokir`, `alasan_blokir`, '+
                    '`bunga_akrual`, `tgl_akru_terakhir`, `tanggal_jt`) VALUES ('+
                    QuotedStr(klasifikasi.Text)+','+
                    FormatFloat('0.######', jumlah_pemilik_rekening.Value)+','+
                    QuotedStr(nasabah_id.Text)+','+
                    QuotedStr(jenis_simpanan.Text)+','+
                    QuotedStr(no_rekening.Text)+','+
                    QuotedStr(staus_dana.Text)+','+
                    QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_mulai.Date))+','+
                    FormatFloat('0.######', suku_bunga.Value)+','+
                    FormatFloat('0.######', suku_bunga_val.Value)+','+
                    FormatFloat('0.######', biaya_cashback.Value)+','+
                    FormatFloat('0.######', tingkat_bunga_penjaminan_lps.Value)+','+
                    QuotedStr(kategori_tingkat_bunga_simpanan.Text)+','+
                    FormatFloat('0.######', jml_deposito.Value)+','+
                    FormatFloat('0.######', nominal_blokir.Value)+','+
                    QuotedStr(alasan_blokir.Text)+','+
                    FormatFloat('0.######', saldo_akhir_bunga_bmhd.Value)+','+
                    QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_akru_terakhir.Date))+','+
                    QuotedStr(FormatDateTime('yyyy-mm-dd', tanggal_jt.Date))+
                    ') ON DUPLICATE KEY UPDATE '+
                    '`klasifikasi_rekening`='+QuotedStr(klasifikasi.Text)+','+
                    '`jumlah_pemilik_rekening`='+FormatFloat('0.######', jumlah_pemilik_rekening.Value)+','+
                    '`nasabah_id`='+QuotedStr(nasabah_id.Text)+','+
                    '`jenis_simpanan`='+QuotedStr(jenis_simpanan.Text)+','+
                    '`status_dana`='+QuotedStr(staus_dana.Text)+','+
                    '`tgl_mulai`='+QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_mulai.Date))+','+
                    '`jenis_tingkat_bunga`='+FormatFloat('0.######', suku_bunga.Value)+','+
                    '`tingkat_bunga`='+FormatFloat('0.######', suku_bunga_val.Value)+','+
                    '`biaya_cashback`='+FormatFloat('0.######', biaya_cashback.Value)+','+
                    '`tingkat_bunga_penjaminan_lps`='+FormatFloat('0.######', tingkat_bunga_penjaminan_lps.Value)+','+
                    '`kategori_tingkat_bunga_simpanan`='+QuotedStr(kategori_tingkat_bunga_simpanan.Text)+','+
                    '`saldo_simpanan`='+FormatFloat('0.######', jml_deposito.Value)+','+
                    '`nominal_blokir`='+FormatFloat('0.######', nominal_blokir.Value)+','+
                    '`alasan_blokir`='+QuotedStr(alasan_blokir.Text)+','+
                    '`bunga_akrual`='+FormatFloat('0.######', saldo_akhir_bunga_bmhd.Value)+','+
                    '`tgl_akru_terakhir`='+QuotedStr(FormatDateTime('yyyy-mm-dd', tgl_akru_terakhir.Date))+','+
                    '`tanggal_jt`='+QuotedStr(FormatDateTime('yyyy-mm-dd', tanggal_jt.Date))+' ');
    except
      on E: Exception do
        ShowMessage('SQL ERROR: ' + E.Message);
    end;

    if MyQDSN0002.Active then
      MyQDSN0002.Refresh
    else
      MyQDSN0002.Open;
  end;

  fr_EntryFormDSN0002.Free;
  fr_EntryFormDSN0002 := nil;
end;

procedure Tfr_FormDSN0002.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQDSN0002.Active then
    MyQDSN0002.Refresh
  else
    MyQDSN0002.Open;
end;

procedure Tfr_FormDSN0002.btlb_tools1Click(Sender: TObject);
var
  cCount      : string;
  cTglMulai   : string;
  cTglAkrual  : string;
  cTglJT     : string;
  dtTmp       : TDateTime;
begin
  inherited;

  if not Pesan(3, 'Proses Import Data Simpanan dari Database Core ?') then
    Exit;

  MyQImport.MacroByName('TGL').Value:=DateToStrSQL(dTglProses0002);

  if MyQImport.Active then
    MyQImport.Refresh
  else
    MyQImport.Open;

  if MyQImport.RecordCount = 0 then
  begin
    Pesan(2, 'Maaf tidak ada data...!');
    Exit;
  end;

  MyExecuteSQL( 'UPDATE ' + cDb2 + '.`lps_dsn_f0002` SET saldo_simpanan=0 ');

  sGauge1.Visible  := True;
  sGauge1.Properties.Max  := MyQImport.RecordCount;
  sGauge1.Position := 0;

  while not MyQImport.Eof do
  begin
    { ==== TANGGAL MULAI / ARO TERAKHIR ==== }
    dtTmp := Now();
    if MyQImporttanggal_mulai_atau_tanggal_aro_terakhir.IsNull then
      cTglMulai := 'NULL'
    else if TryStrToDate(MyQImporttanggal_mulai_atau_tanggal_aro_terakhir.AsString, dtTmp) then
    begin
      if dtTmp <= EncodeDate(1900,1,1) then
        cTglMulai := 'NULL'
      else
        cTglMulai := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTmp));
    end
    else
      cTglMulai := MyQImporttanggal_mulai_atau_tanggal_aro_terakhir.AsString;

    { ==== TANGGAL AKRUAL TERAKHIR ==== }
    if MyQImporttanggal_akrual_terakhir.IsNull then
      cTglAkrual := 'NULL'
    else if TryStrToDate(MyQImporttanggal_akrual_terakhir.AsString, dtTmp) then
    begin
      if dtTmp <= EncodeDate(1900,1,1) then
        cTglAkrual := 'NULL'
      else
        cTglAkrual := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTmp));
    end
    else
      cTglAkrual :=MyQImporttanggal_akrual_terakhir.AsString;

    { ==== TANGGAL JATUH TEMPO ==== }
    if MyQImporttanggal_jatuh_tempo.IsNull then
      cTglJT := 'NULL'
    else if TryStrToDate(MyQImporttanggal_jatuh_tempo.AsString, dtTmp) then
    begin
      if dtTmp <= EncodeDate(1900,1,1) then
        cTglJT := 'NULL'
      else
        cTglJT := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTmp));
    end
    else
      cTglJT := MyQImporttanggal_jatuh_tempo.AsString;

    { ==== CEK DATA ==== }
    cCount := SelectRow(
      'SELECT COUNT(*) FROM ' + cDb2 + '.`lps_dsn_f0002` ' +
      'WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)+
      ' AND jenis_simpanan='+ QuotedStr(MyQImportjenis_simpanan.AsString)
    );

    { ==== INSERT / UPDATE ==== }
    if StrToIntDef(cCount, 0) = 0 then
    begin
      MyExecuteSQL(
        'INSERT INTO ' + cDb2 + '.`lps_dsn_f0002` (' +
        'klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, ' +
        'status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, ' +
        'tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, ' +
        'bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (' +

        QuotedStr(MyQImportklasifikasi_rekening.AsString) + ',' +
        QuotedStr(MyQImportjumlah_pemilik_rekening.AsString) + ',' +
        QuotedStr(MyQImportnasabah_id.AsString) + ',' +
        QuotedStr(MyQImportjenis_simpanan.AsString) + ',' +
        QuotedStr(MyQImportno_rekening.AsString) + ',' +
        QuotedStr(MyQImportstatus_dana.AsString) + ',' +
        QuotedStr(cTglMulai) + ',' +
        QuotedStr(MyQImportjenis_tingkat_bunga.AsString) + ',' +
        MyQImporttingkat_bunga.AsString + ',' +
        FloatToStr(MyQImportcashback.AsFloat)+ ',' +
        QuotedStr(MyQImporttingkat_bunga_penjaminan_lps.AsString) + ',' +
        QuotedStr(MyQImportkategori_tingkat_bunga_simpanan.AsString) + ',' +
        MyQImportsaldo_simpanan.AsString + ',' +
        MyQImportnominal_blokir.AsString + ',' +
        QuotedStr(MyQImportalasan_blokir.AsString) + ',' +
        MyQImportbunga_akrual.AsString + ',' +
        QuotedStr(cTglAkrual) + ',' +
        QuotedStr(cTglJT) +
        ')'
      );
    end
    else
    begin
      MyExecuteSQL(
        'UPDATE ' + cDb2 + '.`lps_dsn_f0002` SET ' +
        'klasifikasi_rekening=' + QuotedStr(MyQImportklasifikasi_rekening.AsString) +
        ', jumlah_pemilik_rekening=' + QuotedStr(MyQImportjumlah_pemilik_rekening.AsString) +
        //', nasabah_id=' + QuotedStr(MyQImportnasabah_id.AsString) +
        // ', jenis_simpanan=' + QuotedStr(MyQImportjenis_simpanan.AsString) +
        ', status_dana=' + QuotedStr(MyQImportstatus_dana.AsString) +
        ', tgl_mulai=' + QuotedStr(cTglMulai) +
        ', jenis_tingkat_bunga=' + QuotedStr(MyQImportjenis_tingkat_bunga.AsString) +
        ', tingkat_bunga=' + MyQImporttingkat_bunga.AsString +
        ', biaya_cashback=' + FloatToStr(MyQImportcashback.AsFloat) +
        ', tingkat_bunga_penjaminan_lps=' + QuotedStr(MyQImporttingkat_bunga_penjaminan_lps.AsString) +
        ', kategori_tingkat_bunga_simpanan=' + QuotedStr(MyQImportkategori_tingkat_bunga_simpanan.AsString) +
        ', saldo_simpanan=' + MyQImportsaldo_simpanan.AsString +
        ', nominal_blokir=' + MyQImportnominal_blokir.AsString +
        ', alasan_blokir=' + QuotedStr(MyQImportalasan_blokir.AsString) +
        ', bunga_akrual=' + MyQImportbunga_akrual.AsString +
        ', tgl_akru_terakhir=' + QuotedStr(cTglAkrual) +
        ', tanggal_jt=' + QuotedStr(cTglJT) +
        ' WHERE no_rekening=' + QuotedStr(MyQImportno_rekening.AsString)+
        ' AND jenis_simpanan='+ QuotedStr(MyQImportjenis_simpanan.AsString)
      );
    end;

    MyQImport.Next;
    sGauge1.Position := sGauge1.Position + 1;
    Application.ProcessMessages;
  end;

  sGauge1.Visible := False;
  Pesan(1, 'Proses Import Data Simpanan Selesai...');

  if MyQDSN0002.Active then
    MyQDSN0002.Refresh
  else
    MyQDSN0002.Open;

end;

procedure Tfr_FormDSN0002.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_FormDSN0002.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_FormDSN0002.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfr_FormDSN0002.AssignJudulEvent;
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

procedure Tfr_FormDSN0002.FormCreate(Sender: TObject);
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

procedure Tfr_FormDSN0002.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_FormDSN0002.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
