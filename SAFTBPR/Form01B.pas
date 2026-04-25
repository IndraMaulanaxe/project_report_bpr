unit Form01B;

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
  MyLib, EntryForm01B, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox;

type
  Tfr_Form01B = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQ01B: TMyDataSource;
    MyQ01B: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1kode_komponen: TcxGridDBColumn;
    cxGridDBTableView1kejadian_fraud_menurut_pelaku: TcxGridDBColumn;
    cxGridDBTableView1id_kejadian_fraud: TcxGridDBColumn;
    cxGridDBTableView1jenis_fraud: TcxGridDBColumn;
    cxGridDBTableView1keterangan_jenis_fraud: TcxGridDBColumn;
    cxGridDBTableView1aktivitas_terkait_fraud: TcxGridDBColumn;
    cxGridDBTableView1deskripsi_fraud: TcxGridDBColumn;
    cxGridDBTableView1status_penanganan: TcxGridDBColumn;
    MyQ01Bflag_detail: TStringField;
    MyQ01Bkode_komponen: TStringField;
    MyQ01Bkejadian_fraud_menurut_pelaku: TStringField;
    MyQ01Bid_kejadian_fraud: TStringField;
    MyQ01Bjenis_fraud: TStringField;
    MyQ01Bketerangan_jenis_fraud: TStringField;
    MyQ01Baktivitas_terkait_fraud: TStringField;
    MyQ01Bdeskripsi_fraud: TStringField;
    MyQ01Blokasi_fraud: TStringField;
    MyQ01Bketerangan_lokasi_fraud: TStringField;
    MyQ01Bdivisi_unit_kerja: TStringField;
    MyQ01Bwaktu_terjadi_awal: TDateField;
    MyQ01Bwaktu_terjadi_akhir: TDateField;
    MyQ01Bfraud_diketahui: TDateField;
    MyQ01Bpihak_dirugikan: TStringField;
    MyQ01Bjumlah_kerugian_potensial: TFloatField;
    MyQ01Btindak_lanjut_ljk: TStringField;
    MyQ01Bintern_ekstern: TStringField;
    MyQ01Bnama_pelaku: TStringField;
    MyQ01Bjenis_identitas: TStringField;
    MyQ01Bnomor_identitas: TStringField;
    MyQ01Bjenis_kelamin: TStringField;
    MyQ01Balamat_identitas: TStringField;
    MyQ01Balamat_domisili: TStringField;
    MyQ01Btempat_lahir: TStringField;
    MyQ01Btanggal_lahir: TDateField;
    MyQ01Bstatus_pelaku: TStringField;
    MyQ01Bjabatan_saat_fraud: TStringField;
    MyQ01Bket_jabatan_saat_fraud: TStringField;
    MyQ01Bjabatan_saat_diketahui: TStringField;
    MyQ01Bket_jabatan_saat_diketahui: TStringField;
    MyQ01Bketerangan_pelaku: TStringField;
    MyQ01Bpengenaan_sanksi: TStringField;
    MyQ01Bstatus_penanganan: TStringField;
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
  fr_Form01B: Tfr_Form01B;

implementation
uses Types, TypInfo, dm_bpr, SHFolder, DateUtils;

{$R *.dfm}

procedure Tfr_Form01B.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_Form01B.GetOgieGlobalSetting;
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


procedure Tfr_Form01B.btlb_CloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_Form01B.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQ01B.RecordCount=0) or (not MyQ01B.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if not Pesan(3, 'yakin mau hapus data?') then
    Exit;

  MyExecuteSQL(' DELETE FROM '+cDb2+'.`saftbpr_01a` '+
               ' WHERE `id_kejadian_fraud` = '+QuotedStr(MyQ01Bid_kejadian_fraud.Text)+
               ' AND `jenis_fraud` = '+QuotedStr(MyQ01Bjenis_fraud.Text)+
               ' AND `jenis_identitas` = '+QuotedStr(MyQ01Bjenis_fraud.Text)+
               ' AND `nomor_identitas` = '+QuotedStr(MyQ01Bnomor_identitas.Text));

  if MyQ01B.Active then
    MyQ01B.Refresh
  else
    MyQ01B.Open;

end;

procedure Tfr_Form01B.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQ01B.RecordCount=0) or (not MyQ01B.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm01B') = nil then
    Application.CreateForm(Tfr_EntryForm01B, fr_EntryForm01B);

  with fr_EntryForm01B do
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
      kode_komponen.Properties.MaxLength := MyQ01Bkode_komponen.Size;
      kejadian_menurut_pelaku.Properties.MaxLength := MyQ01Bkejadian_fraud_menurut_pelaku.Size;
      id_kejadian.Properties.MaxLength := MyQ01Bid_kejadian_fraud.Size;
      jenis_fraud.Properties.MaxLength := MyQ01Bjenis_fraud.Size;
      memketerangan_jenis_fraud.Properties.MaxLength := MyQ01Bketerangan_jenis_fraud.Size;
      aktivitas_fraud.Properties.MaxLength := MyQ01Baktivitas_terkait_fraud.Size;
      memdeskripsi_fraud.Properties.MaxLength := MyQ01Bdeskripsi_fraud.Size;
      lokasi_fraud.Properties.MaxLength := MyQ01Blokasi_fraud.Size;
      ket_lokasi_fraud.Properties.MaxLength := MyQ01Bketerangan_lokasi_fraud.Size;
      memDivisiFraud.Properties.MaxLength := MyQ01Bdivisi_unit_kerja.Size;
      pihak_dirugikan.Properties.MaxLength := MyQ01Bpihak_dirugikan.Size;
      jumlah_kerugian.Properties.MaxLength := MyQ01Bjumlah_kerugian_potensial.Size;
      memtindak_lanjut_ljk.Properties.MaxLength := MyQ01Btindak_lanjut_ljk.Size;
      //dtAwalKejadian.Properties.MaxLength := MyQ01B.Size;
      //dtAkhirKejadian.Properties.MaxLength := MyQ01B.Size;
      //dtDiketahui.Properties.MaxLength := MyQ01B.Size;

      //Data Pelaku
      intern_ekstern.Properties.MaxLength := MyQ01Bintern_ekstern.Size;
      nama.Properties.MaxLength := MyQ01Bnama_pelaku.Size;
      nomor_identitas.Properties.MaxLength := MyQ01Bnomor_identitas.Size;
      jenis_identitas.Properties.MaxLength := MyQ01Bjenis_fraud.Size;
      jenis_kelamin.Properties.MaxLength := MyQ01Bjenis_fraud.Size;
      memalamat_identitas.Properties.MaxLength := MyQ01Balamat_identitas.Size;
      memalamat_domisili.Properties.MaxLength := MyQ01Balamat_domisili.Size;
      //dttanggal_lahir.Properties.MaxLength := MyQ01B.Size;
      memtempat_lahir.Properties.MaxLength := MyQ01Btempat_lahir.Size;
      status_pelaku.Properties.MaxLength := MyQ01Bstatus_pelaku.Size;
      memjabatan_saat_terjadi.Properties.MaxLength := MyQ01Bket_jabatan_saat_fraud.Size;
      jabatan_saat_terjadi.Properties.MaxLength := MyQ01Bjabatan_saat_fraud.Size;
      memjabatan_saat_diketahui.Properties.MaxLength := MyQ01Bket_jabatan_saat_diketahui.Size;
      jabatan_saat_diketahui.Properties.MaxLength := MyQ01Bjabatan_saat_diketahui.Size;
      memsanksi.Properties.MaxLength := MyQ01Bpengenaan_sanksi.Size;
      keterangan_pelaku.Properties.MaxLength := MyQ01Bketerangan_pelaku.Size;
      status_penanganan.Properties.MaxLength := MyQ01Bstatus_penanganan.Size;

      //assignment
      // DATA FRAUD
      kode_komponen.Text := MyQ01Bkode_komponen.AsString;
      kejadian_menurut_pelaku.EditValue := MyQ01Bkejadian_fraud_menurut_pelaku.AsString;
      id_kejadian.Text := MyQ01Bid_kejadian_fraud.AsString;
      jenis_fraud.EditValue := MyQ01Bjenis_fraud.AsString;
      memketerangan_jenis_fraud.Text := MyQ01Bketerangan_jenis_fraud.AsString;
      aktivitas_fraud.EditValue := MyQ01Baktivitas_terkait_fraud.AsString;
      memdeskripsi_fraud.Text := MyQ01Bdeskripsi_fraud.AsString;
      lokasi_fraud.EditValue := MyQ01Blokasi_fraud.AsString;
      ket_lokasi_fraud.EditValue := MyQ01Bketerangan_lokasi_fraud.AsString;
      memDivisiFraud.Text := MyQ01Bdivisi_unit_kerja.AsString;
      pihak_dirugikan.EditValue := MyQ01Bpihak_dirugikan.AsString;
      dtAwalKejadian.Date := MyQ01Bwaktu_terjadi_awal.AsDateTime;
      dtAkhirKejadian.Date := MyQ01Bwaktu_terjadi_akhir.AsDateTime;
      dtDiketahui.Date := MyQ01Bfraud_diketahui.AsDateTime;
      jumlah_kerugian.Value := MyQ01Bjumlah_kerugian_potensial.AsFloat;
      memtindak_lanjut_ljk.Text := MyQ01Btindak_lanjut_ljk.AsString;

      // DATA PELAKU
      intern_ekstern.EditValue := MyQ01Bintern_ekstern.AsString;
      nama.Text := MyQ01Bnama_pelaku.AsString;
      nomor_identitas.Text := MyQ01Bnomor_identitas.AsString;
      jenis_identitas.EditValue := MyQ01Bjenis_identitas.AsString;
      jenis_kelamin.EditValue := MyQ01Bjenis_kelamin.AsString;
      memalamat_identitas.Text := MyQ01Balamat_identitas.AsString;
      memalamat_domisili.Text := MyQ01Balamat_domisili.AsString;
      dttanggal_lahir.Date := MyQ01Btanggal_lahir.AsDateTime;
      memtempat_lahir.Text := MyQ01Btempat_lahir.AsString;
      status_pelaku.EditValue := MyQ01Bstatus_pelaku.AsString;
      memjabatan_saat_terjadi.Text := MyQ01Bket_jabatan_saat_fraud.AsString;
      jabatan_saat_terjadi.EditValue := MyQ01Bjabatan_saat_fraud.AsString;
      memjabatan_saat_diketahui.Text := MyQ01Bket_jabatan_saat_diketahui.AsString;
      jabatan_saat_diketahui.EditValue := MyQ01Bjabatan_saat_diketahui.AsString;
      memsanksi.Text := MyQ01Bpengenaan_sanksi.AsString;
      keterangan_pelaku.EditValue := MyQ01Bketerangan_pelaku.AsString;
      status_penanganan.EditValue := MyQ01Bstatus_penanganan.AsString;

      kode_komponen.Enabled := False;
    end;
  fr_EntryForm01B.Tag := 0;
  fr_EntryForm01B.ShowModal;
  if fr_EntryForm01B.Tag=2 then
    begin
      with fr_EntryForm01B do
        begin
          // Update
          MyExecuteSQL('UPDATE '+cDb2+'.`saftbpr_01b` '+
                        'SET '+
                        '`kode_komponen` = '+QuotedStr(kode_komponen.Text)+
                        ', `kejadian_fraud_menurut_pelaku` = '+QuotedStr(kejadian_menurut_pelaku.EditValue)+
                        ', `id_kejadian_fraud` = '+QuotedStr(id_kejadian.Text)+
                        ', `jenis_fraud` = '+QuotedStr(jenis_fraud.EditValue)+
                        ', `keterangan_jenis_fraud` = '+QuotedStr(memketerangan_jenis_fraud.Text)+
                        ', `aktivitas_terkait_fraud` = '+QuotedStr(aktivitas_fraud.EditValue)+
                        ', `deskripsi_fraud` = '+QuotedStr(memdeskripsi_fraud.Text)+
                        ', `lokasi_fraud` = '+QuotedStr(lokasi_fraud.EditValue)+
                        ', `keterangan_lokasi_fraud` = '+QuotedStr(ket_lokasi_fraud.EditValue)+
                        ', `divisi_unit_kerja` = '+QuotedStr(memDivisiFraud.Text)+
                        ', `waktu_terjadi_awal` = '+DateToStrSQL(dtAwalKejadian.Date)+
                        ', `waktu_terjadi_akhir` = '+DateToStrSQL(dtAkhirKejadian.Date)+
                        ', `fraud_diketahui` = '+DateToStrSQL(dtDiketahui.Date)+
                        ', `pihak_dirugikan` = '+QuotedStr(pihak_dirugikan.EditValue)+
                        ', `jumlah_kerugian_potensial` = '+FloatToStr(jumlah_kerugian.Value)+
                        ', `tindak_lanjut_ljk` = '+QuotedStr(memtindak_lanjut_ljk.Text)+
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
                        ', `lampiran_file` = '+QuotedStr(NamaFileHasil)+
                        ' WHERE `id_kejadian_fraud` = '+QuotedStr(MyQ01Bid_kejadian_fraud.AsString)+
                        ' AND `nomor_identitas` = '+QuotedStr(MyQ01Bnomor_identitas.AsString)+
                        ' AND `jenis_fraud` = '+QuotedStr(MyQ01Bjenis_fraud.AsString)+
                        ' AND `jenis_identitas` = '+QuotedStr(MyQ01Bjenis_identitas.AsString));
      end;
      if MyQ01B.Active then
        MyQ01B.Refresh
      else
        MyQ01B.Open;
    end;

  fr_EntryForm01B.Free;
  fr_EntryForm01B := nil;
end;

procedure Tfr_Form01B.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if (not MyQ01B.Active) then
    begin
      Pesan(2,'Maaf, table belum aktif...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm01B') = nil then
    Application.CreateForm(Tfr_EntryForm01B, fr_EntryForm01B);

  with fr_EntryForm01B do
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
      kode_komponen.Properties.MaxLength := MyQ01Bkode_komponen.Size;
      kejadian_menurut_pelaku.Properties.MaxLength := MyQ01Bkejadian_fraud_menurut_pelaku.Size;
      id_kejadian.Properties.MaxLength := MyQ01Bid_kejadian_fraud.Size;
      jenis_fraud.Properties.MaxLength := MyQ01Bjenis_fraud.Size;
      memketerangan_jenis_fraud.Properties.MaxLength := MyQ01Bketerangan_jenis_fraud.Size;
      aktivitas_fraud.Properties.MaxLength := MyQ01Baktivitas_terkait_fraud.Size;
      memdeskripsi_fraud.Properties.MaxLength := MyQ01Bdeskripsi_fraud.Size;
      lokasi_fraud.Properties.MaxLength := MyQ01Blokasi_fraud.Size;
      ket_lokasi_fraud.Properties.MaxLength := MyQ01Bketerangan_lokasi_fraud.Size;
      memDivisiFraud.Properties.MaxLength := MyQ01Bdivisi_unit_kerja.Size;
      pihak_dirugikan.Properties.MaxLength := MyQ01Bpihak_dirugikan.Size;
      jumlah_kerugian.Properties.MaxLength := MyQ01Bjumlah_kerugian_potensial.Size;
      memtindak_lanjut_ljk.Properties.MaxLength := MyQ01Btindak_lanjut_ljk.Size;
      //dtAwalKejadian.Properties.MaxLength := MyQ01B.Size;
      //dtAkhirKejadian.Properties.MaxLength := MyQ01B.Size;
      //dtDiketahui.Properties.MaxLength := MyQ01B.Size;

      //Data Pelaku
      intern_ekstern.Properties.MaxLength := MyQ01Bintern_ekstern.Size;
      nama.Properties.MaxLength := MyQ01Bnama_pelaku.Size;
      nomor_identitas.Properties.MaxLength := MyQ01Bnomor_identitas.Size;
      jenis_identitas.Properties.MaxLength := MyQ01Bjenis_fraud.Size;
      jenis_kelamin.Properties.MaxLength := MyQ01Bjenis_fraud.Size;
      memalamat_identitas.Properties.MaxLength := MyQ01Balamat_identitas.Size;
      memalamat_domisili.Properties.MaxLength := MyQ01Balamat_domisili.Size;
      //dttanggal_lahir.Properties.MaxLength := MyQ01B.Size;
      memtempat_lahir.Properties.MaxLength := MyQ01Btempat_lahir.Size;
      status_pelaku.Properties.MaxLength := MyQ01Bstatus_pelaku.Size;
      memjabatan_saat_terjadi.Properties.MaxLength := MyQ01Bket_jabatan_saat_fraud.Size;
      jabatan_saat_terjadi.Properties.MaxLength := MyQ01Bjabatan_saat_fraud.Size;
      memjabatan_saat_diketahui.Properties.MaxLength := MyQ01Bket_jabatan_saat_diketahui.Size;
      jabatan_saat_diketahui.Properties.MaxLength := MyQ01Bjabatan_saat_diketahui.Size;
      memsanksi.Properties.MaxLength := MyQ01Bpengenaan_sanksi.Size;
      keterangan_pelaku.Properties.MaxLength := MyQ01Bketerangan_pelaku.Size;
      status_penanganan.Properties.MaxLength := MyQ01Bstatus_penanganan.Size;

      //assignment
      kode_komponen.Text := '0201000000';
      dtAwalKejadian.Date := dTglSystem;
      dtAkhirKejadian.Date := dTglSystem;
      dtDiketahui.Date := dTglSystem;
      dttanggal_lahir.Date := dTglSystem;

      kode_komponen.Enabled := False;
    end;
  fr_EntryForm01B.Tag := 0;
  fr_EntryForm01B.ShowModal;
  if fr_EntryForm01B.Tag=2 then
    begin
      with fr_EntryForm01B do
        begin
          // Insert
          MyExecuteSQL('INSERT INTO '+cDb2+'.`saftbpr_01b` ('+
                        '`flag_detail`, `kode_komponen`, `kejadian_fraud_menurut_pelaku`, `id_kejadian_fraud`, `jenis_fraud`, '+
                        '`keterangan_jenis_fraud`, `aktivitas_terkait_fraud`, `deskripsi_fraud`, `lokasi_fraud`, `keterangan_lokasi_fraud`, '+
                        '`divisi_unit_kerja`, `waktu_terjadi_awal`, `waktu_terjadi_akhir`, `fraud_diketahui`, `pihak_dirugikan`, '+
                        '`jumlah_kerugian_potensial`, `tindak_lanjut_ljk`, '+
                        '`intern_ekstern`, `nama_pelaku`, `jenis_identitas`, `nomor_identitas`, `jenis_kelamin`, '+
                        '`alamat_identitas`, `alamat_domisili`, `tempat_lahir`, `tanggal_lahir`, `status_pelaku`, '+
                        '`jabatan_saat_fraud`, `ket_jabatan_saat_fraud`, `jabatan_saat_diketahui`, `ket_jabatan_saat_diketahui`, '+
                        '`keterangan_pelaku`, `pengenaan_sanksi`, `status_penanganan`, `lampiran_file`'+
                        ') VALUES ('+
                        // DATA FRAUD
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
                        ', '+DateToStrSQL(dtAwalKejadian.Date)+
                        ', '+DateToStrSQL(dtAkhirKejadian.Date)+
                        ', '+DateToStrSQL(dtDiketahui.Date)+
                        ', '+QuotedStr(pihak_dirugikan.EditValue)+
                        ', '+FloatToStr(jumlah_kerugian.Value)+
                        ', '+QuotedStr(memtindak_lanjut_ljk.Text)+
                        // DATA PELAKU
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
                        ', '+QuotedStr(NamaFileHasil)+
                        ')');
        end;
      if MyQ01B.Active then
        MyQ01B.Refresh
      else
        MyQ01B.Open;
    end;

  fr_EntryForm01B.Free;
  fr_EntryForm01B := nil;
end;

procedure Tfr_Form01B.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQ01B.Active then
    MyQ01B.Refresh
  else
    MyQ01B.Open;
end;

procedure Tfr_Form01B.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_Form01B.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_Form01B.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfr_Form01B.AssignJudulEvent;
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

procedure Tfr_Form01B.FormCreate(Sender: TObject);
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

procedure Tfr_Form01B.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_Form01B.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
