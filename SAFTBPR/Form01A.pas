unit Form01A;

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
  MyLib, EntryForm01A, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox;

type
  Tfr_Form01A = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQ01A: TMyDataSource;
    MyQ01A: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQ01Aflag_detail: TStringField;
    MyQ01Akode_komponen: TStringField;
    MyQ01Akejadian_fraud_menurut_pelaku: TStringField;
    MyQ01Aid_kejadian_fraud: TStringField;
    MyQ01Ajenis_fraud: TStringField;
    MyQ01Aket_jenis_fraud: TStringField;
    MyQ01Aaktivitas_terkait_fraud: TIntegerField;
    MyQ01Adeskripsi_fraud: TStringField;
    MyQ01Alokasi_fraud: TStringField;
    MyQ01Aket_lokasi_fraud: TStringField;
    MyQ01Adivisi_unit_kerja: TStringField;
    MyQ01Apihak_yang_dirugikan: TStringField;
    MyQ01Awaktu_terjadi_awal: TDateField;
    MyQ01Awaktu_terjadi_akhir: TDateField;
    MyQ01Afraud_diketahui: TDateField;
    MyQ01Aljk_riil: TFloatField;
    MyQ01Aljk_potensial: TFloatField;
    MyQ01Aljk_recovery: TFloatField;
    MyQ01Akonsumen_riil: TFloatField;
    MyQ01Akonsumen_potensial: TFloatField;
    MyQ01Akonsumen_recovery: TFloatField;
    MyQ01Apihak_lain_riil: TFloatField;
    MyQ01Apihak_lain_potensial: TFloatField;
    MyQ01Apihak_lain_recovery: TFloatField;
    MyQ01Akelemahan_penyebab_fraud: TStringField;
    MyQ01Aket_kelemahan_fraud: TStringField;
    MyQ01Atindakan_penanganan_fraud: TStringField;
    MyQ01Aket_tindakan_penanganan: TStringField;
    MyQ01Atindakan_pencegahan_fraud: TStringField;
    MyQ01Aket_tindakan_pencegahan: TStringField;
    MyQ01Atarget_waktu_pelaksanaan: TStringField;
    MyQ01Arealisasi_pelaksanaan: TStringField;
    MyQ01Aintern_ekstern: TStringField;
    MyQ01Anama_pelaku: TStringField;
    MyQ01Ajenis_identitas: TStringField;
    MyQ01Anomor_identitas: TStringField;
    MyQ01Ajenis_kelamin: TStringField;
    MyQ01Aalamat_identitas: TStringField;
    MyQ01Aalamat_domisili: TStringField;
    MyQ01Atempat_lahir: TStringField;
    MyQ01Atanggal_lahir: TDateField;
    MyQ01Astatus_pelaku: TStringField;
    MyQ01Ajabatan_saat_fraud: TStringField;
    MyQ01Aket_jabatan_saat_fraud: TStringField;
    MyQ01Ajabatan_saat_diketahui: TStringField;
    MyQ01Aket_jabatan_saat_diketahui: TStringField;
    MyQ01Aketerangan_pelaku: TStringField;
    MyQ01Apengenaan_sanksi: TStringField;
    MyQ01Astatus_penanganan: TStringField;
    cxGridDBTableView1kode_komponen: TcxGridDBColumn;
    cxGridDBTableView1kejadian_fraud_menurut_pelaku: TcxGridDBColumn;
    cxGridDBTableView1id_kejadian_fraud: TcxGridDBColumn;
    cxGridDBTableView1jenis_fraud: TcxGridDBColumn;
    cxGridDBTableView1ket_jenis_fraud: TcxGridDBColumn;
    cxGridDBTableView1aktivitas_terkait_fraud: TcxGridDBColumn;
    cxGridDBTableView1deskripsi_fraud: TcxGridDBColumn;
    cxGridDBTableView1status_penanganan: TcxGridDBColumn;
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
  fr_Form01A: Tfr_Form01A;

implementation
uses Types, TypInfo, dm_bpr, SHFolder, DateUtils;

{$R *.dfm}

procedure Tfr_Form01A.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_Form01A.GetOgieGlobalSetting;
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


procedure Tfr_Form01A.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQ01A.RecordCount=0) or (not MyQ01A.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if not Pesan(3, 'yakin mau hapus data?') then
    Exit;

  MyExecuteSQL(' DELETE FROM '+cDb2+'.`saftbpr_01a` '+
               ' WHERE `id_kejadian_fraud` = '+QuotedStr(MyQ01Aid_kejadian_fraud.Text)+
               ' AND `jenis_fraud` = '+QuotedStr(MyQ01Ajenis_fraud.Text)+
               ' AND `jenis_identitas` = '+QuotedStr(MyQ01Ajenis_fraud.Text)+
               ' AND `nomor_identitas` = '+QuotedStr(MyQ01Anomor_identitas.Text));

  if MyQ01A.Active then
    MyQ01A.Refresh
  else
    MyQ01A.Open;

end;

procedure Tfr_Form01A.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQ01A.RecordCount=0) or (not MyQ01A.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm01A') = nil then
    Application.CreateForm(Tfr_EntryForm01A, fr_EntryForm01A);

  with fr_EntryForm01A do
    begin

      //open table reff
      if MyQRefkejadian_menurut_pelaku.Active then
        MyQRefkejadian_menurut_pelaku.Refresh
      else
        MyQRefkejadian_menurut_pelaku.Open;

      if MyQRefJenisFraud.Active then
        MyQRefJenisFraud.Refresh
      else
        MyQRefJenisFraud.Open;

      if MyQRefAktivitasFraud.Active then
        MyQRefAktivitasFraud.Refresh
      else
        MyQRefAktivitasFraud.Open;

      if MyQRefLokasiFraud.Active then
        MyQRefLokasiFraud.Refresh
      else
        MyQRefLokasiFraud.Open;

      if MyQRefKetLokasiFraud.Active then
        MyQRefKetLokasiFraud.Refresh
      else
        MyQRefKetLokasiFraud.Open;

      if MyQRefPihakRugi.Active then
        MyQRefPihakRugi.Refresh
      else
        MyQRefPihakRugi.Open;

      if MyQRefSebabFraud.Active then
        MyQRefSebabFraud.Refresh
      else
        MyQRefSebabFraud.Open;

      if MyQRefPenangananFraud.Active then
        MyQRefPenangananFraud.Refresh
      else
        MyQRefPenangananFraud.Open;

      if MyQRefPerbaikanFraud.Active then
        MyQRefPerbaikanFraud.Refresh
      else
        MyQRefPerbaikanFraud.Open;

      if MyQRefInternalEkstern.Active then
        MyQRefInternalEkstern.Refresh
      else
        MyQRefInternalEkstern.Open;

      if MyQRefJenisIdentitas.Active then
        MyQRefJenisIdentitas.Refresh
      else
        MyQRefJenisIdentitas.Open;

      if MyQRefJenisKelamin.Active then
        MyQRefJenisKelamin.Refresh
      else
        MyQRefJenisKelamin.Open;

      if MyQRefStatusPelaku.Active then
        MyQRefStatusPelaku.Refresh
      else
        MyQRefStatusPelaku.Open;

      if MyQRefJabatanSaatTerjadi.Active then
        MyQRefJabatanSaatTerjadi.Refresh
      else
        MyQRefJabatanSaatTerjadi.Open;

      if MyQRefJabatanSaatDiketahui.Active then
        MyQRefJabatanSaatDiketahui.Refresh
      else
        MyQRefJabatanSaatDiketahui.Open;

      if MyQRefKetPelaku.Active then
        MyQRefKetPelaku.Refresh
      else
        MyQRefKetPelaku.Open;

      if MyQRefStatusPenanganan.Active then
        MyQRefStatusPenanganan.Refresh
      else
        MyQRefStatusPenanganan.Open;


      //size
      //Tab Data Fraud
      kode_komponen.Properties.MaxLength := MyQ01Akode_komponen.Size;
      kejadian_menurut_pelaku.Properties.MaxLength := MyQ01Akejadian_fraud_menurut_pelaku.Size;
      id_kejadian.Properties.MaxLength := MyQ01Aid_kejadian_fraud.Size;
      jenis_fraud.Properties.MaxLength := MyQ01Ajenis_fraud.Size;
      memketerangan_jenis_fraud.Properties.MaxLength := MyQ01Aket_jenis_fraud.Size;
      aktivitas_fraud.Properties.MaxLength := MyQ01Aaktivitas_terkait_fraud.Size;
      memdeskripsi_fraud.Properties.MaxLength := MyQ01Adeskripsi_fraud.Size;
      lokasi_fraud.Properties.MaxLength := MyQ01Alokasi_fraud.Size;
      ket_lokasi_fraud.Properties.MaxLength := MyQ01Aket_lokasi_fraud.Size;
      memDivisiFraud.Properties.MaxLength := MyQ01Adivisi_unit_kerja.Size;
      pihak_dirugikan.Properties.MaxLength := MyQ01Apihak_yang_dirugikan.Size;
      //dtAwalKejadian.Properties.MaxLength := MyQ01A.Size;
      //dtAkhirKejadian.Properties.MaxLength := MyQ01A.Size;
      //dtDiketahui.Properties.MaxLength := MyQ01A.Size;

      //Data Kerugian
      ljk_rill.Properties.MaxLength := MyQ01Aljk_riil.Size;
      ljk_potensial.Properties.MaxLength := MyQ01Aljk_potensial.Size;
      ljk_recovery.Properties.MaxLength := MyQ01Aljk_recovery.Size;
      Konsumen_rill.Properties.MaxLength := MyQ01Akonsumen_riil.Size;
      konsumen_potensial.Properties.MaxLength := MyQ01Akonsumen_potensial.Size;
      konsumen_recovery.Properties.MaxLength := MyQ01Akonsumen_recovery.Size;
      lain_rill.Properties.MaxLength := MyQ01Apihak_lain_riil.Size;
      lain_potensial.Properties.MaxLength := MyQ01Apihak_lain_potensial.Size;
      lain_recovery.Properties.MaxLength := MyQ01Apihak_lain_recovery.Size;

      //Data Penyebab Dan Tindakan
      memkelemahan_sebab_fraud.Properties.MaxLength := MyQ01Aket_kelemahan_fraud.Size;
      kelemahan_sebab_fraud.Properties.MaxLength := MyQ01Akelemahan_penyebab_fraud.Size;
      mempenanganan_fraud.Properties.MaxLength := MyQ01Aket_tindakan_penanganan.Size;
      penanganan_fraud.Properties.MaxLength := MyQ01Atindakan_penanganan_fraud.Size;
      memperbaikan_fraud.Properties.MaxLength := MyQ01Aket_tindakan_pencegahan.Size;
      perbaikan_fraud.Properties.MaxLength := MyQ01Atindakan_pencegahan_fraud.Size;
      //waktu_pelaksanaan.Properties.MaxLength := MyQ01A.Size;
      //realiasasi_pelaksanaan.Properties.MaxLength := MyQ01A.Size;

      //Data Pelaku
      intern_ekstern.Properties.MaxLength := MyQ01Aintern_ekstern.Size;
      nama.Properties.MaxLength := MyQ01Anama_pelaku.Size;
      nomor_identitas.Properties.MaxLength := MyQ01Anomor_identitas.Size;
      jenis_identitas.Properties.MaxLength := MyQ01Ajenis_fraud.Size;
      jenis_kelamin.Properties.MaxLength := MyQ01Ajenis_fraud.Size;
      memalamat_identitas.Properties.MaxLength := MyQ01Aalamat_identitas.Size;
      memalamat_domisili.Properties.MaxLength := MyQ01Aalamat_domisili.Size;
      //dttanggal_lahir.Properties.MaxLength := MyQ01A.Size;
      memtempat_lahir.Properties.MaxLength := MyQ01Atempat_lahir.Size;
      status_pelaku.Properties.MaxLength := MyQ01Astatus_pelaku.Size;
      memjabatan_saat_terjadi.Properties.MaxLength := MyQ01Aket_jabatan_saat_fraud.Size;
      jabatan_saat_terjadi.Properties.MaxLength := MyQ01Ajabatan_saat_fraud.Size;
      memjabatan_saat_diketahui.Properties.MaxLength := MyQ01Aket_jabatan_saat_diketahui.Size;
      jabatan_saat_diketahui.Properties.MaxLength := MyQ01Ajabatan_saat_diketahui.Size;
      memsanksi.Properties.MaxLength := MyQ01Apengenaan_sanksi.Size;
      keterangan_pelaku.Properties.MaxLength := MyQ01Aketerangan_pelaku.Size;
      status_penanganan.Properties.MaxLength := MyQ01Astatus_penanganan.Size;

      //assignment
      // DATA FRAUD
      kode_komponen.Text := MyQ01Akode_komponen.AsString;
      kejadian_menurut_pelaku.EditValue := MyQ01Akejadian_fraud_menurut_pelaku.AsString;
      id_kejadian.Text := MyQ01Aid_kejadian_fraud.AsString;
      jenis_fraud.EditValue := MyQ01Ajenis_fraud.AsString;
      memketerangan_jenis_fraud.Text := MyQ01Aket_jenis_fraud.AsString;
      aktivitas_fraud.EditValue := MyQ01Aaktivitas_terkait_fraud.AsString;
      memdeskripsi_fraud.Text := MyQ01Adeskripsi_fraud.AsString;
      lokasi_fraud.EditValue := MyQ01Alokasi_fraud.AsString;
      ket_lokasi_fraud.EditValue := MyQ01Aket_lokasi_fraud.AsString;
      memDivisiFraud.Text := MyQ01Adivisi_unit_kerja.AsString;
      pihak_dirugikan.EditValue := MyQ01Apihak_yang_dirugikan.AsString;
      dtAwalKejadian.Date := MyQ01Awaktu_terjadi_awal.AsDateTime;
      dtAkhirKejadian.Date := MyQ01Awaktu_terjadi_akhir.AsDateTime;
      dtDiketahui.Date := MyQ01Afraud_diketahui.AsDateTime;


      // DATA KERUGIAN
      ljk_rill.Value := MyQ01Aljk_riil.AsFloat;
      ljk_potensial.Value := MyQ01Aljk_potensial.AsFloat;
      ljk_recovery.Value := MyQ01Aljk_recovery.AsFloat;

      Konsumen_rill.Value := MyQ01Akonsumen_riil.AsFloat;
      konsumen_potensial.Value := MyQ01Akonsumen_potensial.AsFloat;
      konsumen_recovery.Value := MyQ01Akonsumen_recovery.AsFloat;

      lain_rill.Value := MyQ01Apihak_lain_riil.AsFloat;
      lain_potensial.Value := MyQ01Apihak_lain_potensial.AsFloat;
      lain_recovery.Value := MyQ01Apihak_lain_recovery.AsFloat;

      // DATA PENYEBAB & TINDAKAN
      memkelemahan_sebab_fraud.Text := MyQ01Aket_kelemahan_fraud.AsString;
      kelemahan_sebab_fraud.EditValue := MyQ01Akelemahan_penyebab_fraud.AsString;

      mempenanganan_fraud.Text := MyQ01Aket_tindakan_penanganan.AsString;
      penanganan_fraud.EditValue := MyQ01Atindakan_penanganan_fraud.AsString;

      memperbaikan_fraud.Text := MyQ01Aket_tindakan_pencegahan.AsString;
      perbaikan_fraud.EditValue := MyQ01Atindakan_pencegahan_fraud.AsString;

      waktu_pelaksanaan.Text := MyQ01Atarget_waktu_pelaksanaan.AsString;
      realiasasi_pelaksanaan.Text := MyQ01Arealisasi_pelaksanaan.AsString;


      // DATA PELAKU
      intern_ekstern.EditValue := MyQ01Aintern_ekstern.AsString;
      nama.Text := MyQ01Anama_pelaku.AsString;
      nomor_identitas.Text := MyQ01Anomor_identitas.AsString;
      jenis_identitas.EditValue := MyQ01Ajenis_identitas.AsString;
      jenis_kelamin.EditValue := MyQ01Ajenis_kelamin.AsString;

      memalamat_identitas.Text := MyQ01Aalamat_identitas.AsString;
      memalamat_domisili.Text := MyQ01Aalamat_domisili.AsString;

      dttanggal_lahir.Date := MyQ01Atanggal_lahir.AsDateTime;
      memtempat_lahir.Text := MyQ01Atempat_lahir.AsString;

      status_pelaku.EditValue := MyQ01Astatus_pelaku.AsString;

      memjabatan_saat_terjadi.Text := MyQ01Aket_jabatan_saat_fraud.AsString;
      jabatan_saat_terjadi.EditValue := MyQ01Ajabatan_saat_fraud.AsString;

      memjabatan_saat_diketahui.Text := MyQ01Aket_jabatan_saat_diketahui.AsString;
      jabatan_saat_diketahui.EditValue := MyQ01Ajabatan_saat_diketahui.AsString;

      memsanksi.Text := MyQ01Apengenaan_sanksi.AsString;
      keterangan_pelaku.EditValue := MyQ01Aketerangan_pelaku.AsString;

      status_penanganan.EditValue := MyQ01Astatus_penanganan.AsString;

      kode_komponen.Enabled := False;
    end;
  fr_EntryForm01A.Tag := 0;
  fr_EntryForm01A.ShowModal;
  if fr_EntryForm01A.Tag=2 then
    begin
      with fr_EntryForm01A do
        begin
          // Update
          MyExecuteSQL('UPDATE '+cDb2+'.`saftbpr_01a` '+
                      'SET '+

                      // TAB DATA FRAUD
                      '`kode_komponen` = '+QuotedStr(kode_komponen.Text)+
                      ', `kejadian_fraud_menurut_pelaku` = '+QuotedStr(kejadian_menurut_pelaku.EditValue)+
                      ', `id_kejadian_fraud` = '+QuotedStr(id_kejadian.Text)+
                      ', `jenis_fraud` = '+QuotedStr(jenis_fraud.EditValue)+
                      ', `ket_jenis_fraud` = '+QuotedStr(memketerangan_jenis_fraud.Text)+
                      ', `aktivitas_terkait_fraud` = '+QuotedStr(aktivitas_fraud.EditValue)+
                      ', `deskripsi_fraud` = '+QuotedStr(memdeskripsi_fraud.Text)+
                      ', `lokasi_fraud` = '+QuotedStr(lokasi_fraud.EditValue)+
                      ', `ket_lokasi_fraud` = '+QuotedStr(ket_lokasi_fraud.EditValue)+
                      ', `divisi_unit_kerja` = '+QuotedStr(memDivisiFraud.Text)+
                      ', `pihak_yang_dirugikan` = '+QuotedStr(pihak_dirugikan.EditValue)+
                      ', `waktu_terjadi_awal` = '+DateToStrSQL(dtAwalKejadian.Date)+
                      ', `waktu_terjadi_akhir` = '+DateToStrSQL(dtAkhirKejadian.Date)+
                      ', `fraud_diketahui` = '+DateToStrSQL(dtDiketahui.Date)+

                      // TAB DATA KERUGIAN
                      ', `ljk_riil` = '+FloatToStr(ljk_rill.Value)+
                      ', `ljk_potensial` = '+FloatToStr(ljk_potensial.Value)+
                      ', `ljk_recovery` = '+FloatToStr(ljk_recovery.Value)+
                      ', `konsumen_riil` = '+FloatToStr(Konsumen_rill.Value)+
                      ', `konsumen_potensial` = '+FloatToStr(konsumen_potensial.Value)+
                      ', `konsumen_recovery` = '+FloatToStr(konsumen_recovery.Value)+
                      ', `pihak_lain_riil` = '+FloatToStr(lain_rill.Value)+
                      ', `pihak_lain_potensial` = '+FloatToStr(lain_potensial.Value)+
                      ', `pihak_lain_recovery` = '+FloatToStr(lain_recovery.Value)+

                      // TAB PENYEBAB & TINDAKAN
                      ', `kelemahan_penyebab_fraud` = '+QuotedStr(kelemahan_sebab_fraud.EditValue)+
                      ', `ket_kelemahan_fraud` = '+QuotedStr(memkelemahan_sebab_fraud.Text)+
                      ', `tindakan_penanganan_fraud` = '+QuotedStr(penanganan_fraud.EditValue)+
                      ', `ket_tindakan_penanganan` = '+QuotedStr(mempenanganan_fraud.Text)+
                      ', `tindakan_pencegahan_fraud` = '+QuotedStr(perbaikan_fraud.EditValue)+
                      ', `ket_tindakan_pencegahan` = '+QuotedStr(memperbaikan_fraud.Text)+
                      ', `target_waktu_pelaksanaan` = '+QuotedStr(waktu_pelaksanaan.Text)+
                      ', `realisasi_pelaksanaan` = '+QuotedStr(realiasasi_pelaksanaan.Text)+

                      // TAB DATA PELAKU
                      ', `intern_ekstern` = '+QuotedStr(intern_ekstern.EditValue)+
                      ', `nama_pelaku` = '+QuotedStr(nama.Text)+
                      ', `jenis_identitas` = '+QuotedStr(jenis_identitas.EditValue)+
                      ', `nomor_identitas` = '+QuotedStr(nomor_identitas.Text)+
                      ', `jenis_kelamin` = '+QuotedStr(jenis_kelamin.EditValue)+
                      ', `alamat_identitas` = '+QuotedStr(memalamat_identitas.Text)+
                      ', `alamat_domisili` = '+QuotedStr(memalamat_domisili.Text)+
                      ', `tempat_lahir` = '+QuotedStr(memtempat_lahir.Text)+
                      ', `tanggal_lahir` = '+DateToStrSQL(dttanggal_lahir.Date)+
                      ', `status_pelaku` = '+QuotedStr(status_pelaku.EditValue)+
                      ', `jabatan_saat_fraud` = '+QuotedStr(jabatan_saat_terjadi.EditValue)+
                      ', `ket_jabatan_saat_fraud` = '+QuotedStr(memjabatan_saat_terjadi.Text)+
                      ', `jabatan_saat_diketahui` = '+QuotedStr(jabatan_saat_diketahui.EditValue)+
                      ', `ket_jabatan_saat_diketahui` = '+QuotedStr(memjabatan_saat_diketahui.Text)+
                      ', `keterangan_pelaku` = '+QuotedStr(keterangan_pelaku.EditValue)+
                      ', `pengenaan_sanksi` = '+QuotedStr(memsanksi.Text)+
                      ', `status_penanganan` = '+QuotedStr(status_penanganan.EditValue)+

                      ' WHERE `id_kejadian_fraud` = '+QuotedStr(MyQ01Aid_kejadian_fraud.Text)+
                      ' AND `nomor_identitas` = '+QuotedStr(MyQ01Anomor_identitas.Text)+
                      ' AND `jenis_fraud` = '+QuotedStr(MyQ01Ajenis_fraud.Text)+
                      ' AND `jenis_identitas` = '+QuotedStr(MyQ01Ajenis_identitas.Text));
        end;
      if MyQ01A.Active then
        MyQ01A.Refresh
      else
        MyQ01A.Open;
    end;

  fr_EntryForm01A.Free;
  fr_EntryForm01A := nil;
end;

procedure Tfr_Form01A.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if (not MyQ01A.Active) then
    begin
      Pesan(2,'Maaf, table belum aktif...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm01A') = nil then
    Application.CreateForm(Tfr_EntryForm01A, fr_EntryForm01A);

  with fr_EntryForm01A do
    begin
      //open table reff
      if MyQRefkejadian_menurut_pelaku.Active then
        MyQRefkejadian_menurut_pelaku.Refresh
      else
        MyQRefkejadian_menurut_pelaku.Open;

      if MyQRefJenisFraud.Active then
        MyQRefJenisFraud.Refresh
      else
        MyQRefJenisFraud.Open;

      if MyQRefAktivitasFraud.Active then
        MyQRefAktivitasFraud.Refresh
      else
        MyQRefAktivitasFraud.Open;

      if MyQRefLokasiFraud.Active then
        MyQRefLokasiFraud.Refresh
      else
        MyQRefLokasiFraud.Open;

      if MyQRefKetLokasiFraud.Active then
        MyQRefKetLokasiFraud.Refresh
      else
        MyQRefKetLokasiFraud.Open;

      if MyQRefPihakRugi.Active then
        MyQRefPihakRugi.Refresh
      else
        MyQRefPihakRugi.Open;

      if MyQRefSebabFraud.Active then
        MyQRefSebabFraud.Refresh
      else
        MyQRefSebabFraud.Open;

      if MyQRefPenangananFraud.Active then
        MyQRefPenangananFraud.Refresh
      else
        MyQRefPenangananFraud.Open;

      if MyQRefPerbaikanFraud.Active then
        MyQRefPerbaikanFraud.Refresh
      else
        MyQRefPerbaikanFraud.Open;

      if MyQRefInternalEkstern.Active then
        MyQRefInternalEkstern.Refresh
      else
        MyQRefInternalEkstern.Open;

      if MyQRefJenisIdentitas.Active then
        MyQRefJenisIdentitas.Refresh
      else
        MyQRefJenisIdentitas.Open;

      if MyQRefJenisKelamin.Active then
        MyQRefJenisKelamin.Refresh
      else
        MyQRefJenisKelamin.Open;

      if MyQRefStatusPelaku.Active then
        MyQRefStatusPelaku.Refresh
      else
        MyQRefStatusPelaku.Open;

      if MyQRefJabatanSaatTerjadi.Active then
        MyQRefJabatanSaatTerjadi.Refresh
      else
        MyQRefJabatanSaatTerjadi.Open;

      if MyQRefJabatanSaatDiketahui.Active then
        MyQRefJabatanSaatDiketahui.Refresh
      else
        MyQRefJabatanSaatDiketahui.Open;

      if MyQRefKetPelaku.Active then
        MyQRefKetPelaku.Refresh
      else
        MyQRefKetPelaku.Open;

      if MyQRefStatusPenanganan.Active then
        MyQRefStatusPenanganan.Refresh
      else
        MyQRefStatusPenanganan.Open;


      //size
      //Tab Data Fraud
      kode_komponen.Properties.MaxLength := MyQ01Akode_komponen.Size;
      kejadian_menurut_pelaku.Properties.MaxLength := MyQ01Akejadian_fraud_menurut_pelaku.Size;
      id_kejadian.Properties.MaxLength := MyQ01Aid_kejadian_fraud.Size;
      jenis_fraud.Properties.MaxLength := MyQ01Ajenis_fraud.Size;
      memketerangan_jenis_fraud.Properties.MaxLength := MyQ01Aket_jenis_fraud.Size;
      aktivitas_fraud.Properties.MaxLength := MyQ01Aaktivitas_terkait_fraud.Size;
      memdeskripsi_fraud.Properties.MaxLength := MyQ01Adeskripsi_fraud.Size;
      lokasi_fraud.Properties.MaxLength := MyQ01Alokasi_fraud.Size;
      ket_lokasi_fraud.Properties.MaxLength := MyQ01Aket_lokasi_fraud.Size;
      memDivisiFraud.Properties.MaxLength := MyQ01Adivisi_unit_kerja.Size;
      pihak_dirugikan.Properties.MaxLength := MyQ01Apihak_yang_dirugikan.Size;
      //dtAwalKejadian.Properties.MaxLength := MyQ01A.Size;
      //dtAkhirKejadian.Properties.MaxLength := MyQ01A.Size;
      //dtDiketahui.Properties.MaxLength := MyQ01A.Size;

      //Data Kerugian
      ljk_rill.Properties.MaxLength := MyQ01Aljk_riil.Size;
      ljk_potensial.Properties.MaxLength := MyQ01Aljk_potensial.Size;
      ljk_recovery.Properties.MaxLength := MyQ01Aljk_recovery.Size;
      Konsumen_rill.Properties.MaxLength := MyQ01Akonsumen_riil.Size;
      konsumen_potensial.Properties.MaxLength := MyQ01Akonsumen_potensial.Size;
      konsumen_recovery.Properties.MaxLength := MyQ01Akonsumen_recovery.Size;
      lain_rill.Properties.MaxLength := MyQ01Apihak_lain_riil.Size;
      lain_potensial.Properties.MaxLength := MyQ01Apihak_lain_potensial.Size;
      lain_recovery.Properties.MaxLength := MyQ01Apihak_lain_recovery.Size;

      //Data Penyebab Dan Tindakan
      memkelemahan_sebab_fraud.Properties.MaxLength := MyQ01Aket_kelemahan_fraud.Size;
      kelemahan_sebab_fraud.Properties.MaxLength := MyQ01Akelemahan_penyebab_fraud.Size;
      mempenanganan_fraud.Properties.MaxLength := MyQ01Aket_tindakan_penanganan.Size;
      penanganan_fraud.Properties.MaxLength := MyQ01Atindakan_penanganan_fraud.Size;
      memperbaikan_fraud.Properties.MaxLength := MyQ01Aket_tindakan_pencegahan.Size;
      perbaikan_fraud.Properties.MaxLength := MyQ01Atindakan_pencegahan_fraud.Size;
      //waktu_pelaksanaan.Properties.MaxLength := MyQ01A.Size;
      //realiasasi_pelaksanaan.Properties.MaxLength := MyQ01A.Size;

      //Data Pelaku
      intern_ekstern.Properties.MaxLength := MyQ01Aintern_ekstern.Size;
      nama.Properties.MaxLength := MyQ01Anama_pelaku.Size;
      nomor_identitas.Properties.MaxLength := MyQ01Anomor_identitas.Size;
      jenis_identitas.Properties.MaxLength := MyQ01Ajenis_fraud.Size;
      jenis_kelamin.Properties.MaxLength := MyQ01Ajenis_fraud.Size;
      memalamat_identitas.Properties.MaxLength := MyQ01Aalamat_identitas.Size;
      memalamat_domisili.Properties.MaxLength := MyQ01Aalamat_domisili.Size;
      //dttanggal_lahir.Properties.MaxLength := MyQ01A.Size;
      memtempat_lahir.Properties.MaxLength := MyQ01Atempat_lahir.Size;
      status_pelaku.Properties.MaxLength := MyQ01Astatus_pelaku.Size;
      memjabatan_saat_terjadi.Properties.MaxLength := MyQ01Aket_jabatan_saat_fraud.Size;
      jabatan_saat_terjadi.Properties.MaxLength := MyQ01Ajabatan_saat_fraud.Size;
      memjabatan_saat_diketahui.Properties.MaxLength := MyQ01Aket_jabatan_saat_diketahui.Size;
      jabatan_saat_diketahui.Properties.MaxLength := MyQ01Ajabatan_saat_diketahui.Size;
      memsanksi.Properties.MaxLength := MyQ01Apengenaan_sanksi.Size;
      keterangan_pelaku.Properties.MaxLength := MyQ01Aketerangan_pelaku.Size;
      status_penanganan.Properties.MaxLength := MyQ01Astatus_penanganan.Size;

      //assignment
      kode_komponen.Text := '0101000000';
      dtAwalKejadian.Date := dTglSystem;
      dtAkhirKejadian.Date := dTglSystem;
      dtDiketahui.Date := dTglSystem;
      dttanggal_lahir.Date := dTglSystem;

      kode_komponen.Enabled := False;
    end;
  fr_EntryForm01A.Tag := 0;
  fr_EntryForm01A.ShowModal;
  if fr_EntryForm01A.Tag=2 then
    begin
      with fr_EntryForm01A do
        begin
          // Insert
          MyExecuteSQL('INSERT INTO '+cDb2+'.`saftbpr_01a` ('+
                        // TAB DATA FRAUD
                        '`flag_detail`, `kode_komponen`, `kejadian_fraud_menurut_pelaku`, `id_kejadian_fraud`, `jenis_fraud`, `ket_jenis_fraud`, '+
                        '`aktivitas_terkait_fraud`, `deskripsi_fraud`, `lokasi_fraud`, `ket_lokasi_fraud`, `divisi_unit_kerja`, `pihak_yang_dirugikan`, '+
                        '`waktu_terjadi_awal`, `waktu_terjadi_akhir`, `fraud_diketahui`, '+

                        // TAB DATA KERUGIAN
                        '`ljk_riil`, `ljk_potensial`, `ljk_recovery`, `konsumen_riil`, `konsumen_potensial`, `konsumen_recovery`, '+
                        '`pihak_lain_riil`, `pihak_lain_potensial`, `pihak_lain_recovery`, '+

                        // TAB PENYEBAB & TINDAKAN
                        '`kelemahan_penyebab_fraud`, `ket_kelemahan_fraud`, `tindakan_penanganan_fraud`, `ket_tindakan_penanganan`, '+
                        '`tindakan_pencegahan_fraud`, `ket_tindakan_pencegahan`, `target_waktu_pelaksanaan`, `realisasi_pelaksanaan`, '+

                        // TAB DATA PELAKU
                        '`intern_ekstern`, `nama_pelaku`, `jenis_identitas`, `nomor_identitas`, `jenis_kelamin`, '+
                        '`alamat_identitas`, `alamat_domisili`, `tempat_lahir`, `tanggal_lahir`, `status_pelaku`, '+
                        '`jabatan_saat_fraud`, `ket_jabatan_saat_fraud`, `jabatan_saat_diketahui`, `ket_jabatan_saat_diketahui`, '+
                        '`keterangan_pelaku`, `pengenaan_sanksi`, `status_penanganan`'+

                        ') VALUES ('+

                        // TAB DATA FRAUD
                        QuotedStr('D01')+
                        ', '+QuotedStr(kode_komponen.Text)+
                        ', '+QuotedStr(kejadian_menurut_pelaku.EditValue)+
                        ', '+QuotedStr(id_kejadian.Text)+
                        ', '+QuotedStr(jenis_fraud.EditValue)+
                        ', '+QuotedStr(memketerangan_jenis_fraud.Text)+
                        ', '+QuotedStr(aktivitas_fraud.EditValue)+
                        ', '+QuotedStr(memdeskripsi_fraud.Text)+
                        ', '+QuotedStr(lokasi_fraud.EditValue)+
                        ', '+QuotedStr(ket_lokasi_fraud.EditValue)+
                        ', '+QuotedStr(memDivisiFraud.Text)+
                        ', '+QuotedStr(pihak_dirugikan.EditValue)+
                        ', '+DateToStrSQL(dtAwalKejadian.Date)+
                        ', '+DateToStrSQL(dtAkhirKejadian.Date)+
                        ', '+DateToStrSQL(dtDiketahui.Date)+

                        // TAB DATA KERUGIAN
                        ', '+FloatToStr(ljk_rill.Value)+
                        ', '+FloatToStr(ljk_potensial.Value)+
                        ', '+FloatToStr(ljk_recovery.Value)+
                        ', '+FloatToStr(Konsumen_rill.Value)+
                        ', '+FloatToStr(konsumen_potensial.Value)+
                        ', '+FloatToStr(konsumen_recovery.Value)+
                        ', '+FloatToStr(lain_rill.Value)+
                        ', '+FloatToStr(lain_potensial.Value)+
                        ', '+FloatToStr(lain_recovery.Value)+

                        // TAB PENYEBAB & TINDAKAN
                        ', '+QuotedStr(kelemahan_sebab_fraud.EditValue)+
                        ', '+QuotedStr(memkelemahan_sebab_fraud.Text)+
                        ', '+QuotedStr(penanganan_fraud.EditValue)+
                        ', '+QuotedStr(mempenanganan_fraud.Text)+
                        ', '+QuotedStr(perbaikan_fraud.EditValue)+
                        ', '+QuotedStr(memperbaikan_fraud.Text)+
                        ', '+QuotedStr(waktu_pelaksanaan.Text)+
                        ', '+QuotedStr(realiasasi_pelaksanaan.Text)+

                        // TAB DATA PELAKU
                        ', '+QuotedStr(intern_ekstern.EditValue)+
                        ', '+QuotedStr(nama.Text)+
                        ', '+QuotedStr(jenis_identitas.EditValue)+
                        ', '+QuotedStr(nomor_identitas.Text)+
                        ', '+QuotedStr(jenis_kelamin.EditValue)+
                        ', '+QuotedStr(memalamat_identitas.Text)+
                        ', '+QuotedStr(memalamat_domisili.Text)+
                        ', '+QuotedStr(memtempat_lahir.Text)+
                        ', '+DateToStrSQL(dttanggal_lahir.Date)+
                        ', '+QuotedStr(status_pelaku.EditValue)+
                        ', '+QuotedStr(jabatan_saat_terjadi.EditValue)+
                        ', '+QuotedStr(memjabatan_saat_terjadi.Text)+
                        ', '+QuotedStr(jabatan_saat_diketahui.EditValue)+
                        ', '+QuotedStr(memjabatan_saat_diketahui.Text)+
                        ', '+QuotedStr(keterangan_pelaku.EditValue)+
                        ', '+QuotedStr(memsanksi.Text)+
                        ', '+QuotedStr(status_penanganan.EditValue)+

                        ')');
        end;
      if MyQ01A.Active then
        MyQ01A.Refresh
      else
        MyQ01A.Open;
    end;

  fr_EntryForm01A.Free;
  fr_EntryForm01A := nil;
  fr_EntryForm01A.ShowModal;
end;

procedure Tfr_Form01A.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQ01A.Active then
    MyQ01A.Refresh
  else
    MyQ01A.Open;
end;

procedure Tfr_Form01A.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_Form01A.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_Form01A.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfr_Form01A.AssignJudulEvent;
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

procedure Tfr_Form01A.FormCreate(Sender: TObject);
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

procedure Tfr_Form01A.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_Form01A.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
