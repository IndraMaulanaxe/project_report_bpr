unit Form0100;

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
  MyLib, EntryForm0100, dxDateRanges,
  //RN
  sCurrencyEdit, Buttons, ComCtrls, sSkinManager, sCheckBox, sSkinProvider,
  DBCtrls, DBGrids, sMemo, sEdit, sLabel, sGroupBox, sButton, sBitBtn, sSpeedButton, sComboBox;

type
  Tfr_Form0100 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQ0100: TMyDataSource;
    MyQ0100: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQ0100flag_detail: TStringField;
    MyQ0100sandi_laporan: TStringField;
    MyQ0100tanggal_kejadian: TDateField;
    MyQ0100nomor_sk_ojk: TStringField;
    MyQ0100tanggal_sk_ojk: TDateField;
    MyQ0100nomor_akta: TStringField;
    MyQ0100tanggal_akta: TDateField;
    MyQ0100nomor_persetujuan: TStringField;
    MyQ0100tanggal_persetujuan: TDateField;
    MyQ0100tanggal_efektif: TDateField;
    MyQ0100nama_pihak: TStringField;
    MyQ0100nik_npwp: TStringField;
    MyQ0100jabatan: TStringField;
    MyQ0100jenis_produk: TStringField;
    MyQ0100nama_produk: TStringField;
    MyQ0100jenis_kantor: TStringField;
    MyQ0100alamat: TStringField;
    MyQ0100alamat_baru: TStringField;
    MyQ0100tanggal_selesai: TDateField;
    MyQ0100pelanggaran: TStringField;
    MyQ0100alasan: TStringField;
    MyQ0100nama_pjti: TStringField;
    MyQ0100register_ref: TStringField;
    MyQ0100langkah_perbaikan: TStringField;
    MyQ0100target_waktu: TDateField;
    MyQ0100realisasi: TStringField;
    MyQ0100status: TStringField;
    MyQ0100status_dokumen: TStringField;
    cxGridDBTableView1sandi_laporan: TcxGridDBColumn;
    cxGridDBTableView1tanggal_kejadian: TcxGridDBColumn;
    cxGridDBTableView1nomor_sk_ojk: TcxGridDBColumn;
    cxGridDBTableView1nomor_akta: TcxGridDBColumn;
    cxGridDBTableView1nomor_persetujuan: TcxGridDBColumn;
    cxGridDBTableView1nama_pihak: TcxGridDBColumn;
    cxGridDBTableView1nik_npwp: TcxGridDBColumn;
    cxGridDBTableView1pelanggaran: TcxGridDBColumn;
    cxGridDBTableView1status_dokumen: TcxGridDBColumn;
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
  fr_Form0100: Tfr_Form0100;

implementation
uses Types, TypInfo, dm_bpr, SHFolder, DateUtils;

{$R *.dfm}

procedure Tfr_Form0100.judulMouseDown(Sender: TObject; Button: TMouseButton;
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

procedure Tfr_Form0100.GetOgieGlobalSetting;
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


procedure Tfr_Form0100.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQ0100.RecordCount=0) or (not MyQ0100.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if not Pesan(3, 'yakin mau hapus data?') then
    Exit;

  MyExecuteSQL(' DELETE FROM '+cDb2+'.`saftbpr_01a` '+
               ' WHERE `flag_detail` = '+QuotedStr(MyQ0100flag_detail.Text)+
               ' AND `sandi_laporan` = '+QuotedStr(MyQ0100sandi_laporan.Text)+
               ' AND `tanggal_kejadian` = '+DateToStrSQL(MyQ0100tanggal_kejadian.AsDateTime)+
               ' AND `nomor_sk_ojk` = '+QuotedStr(MyQ0100nomor_sk_ojk.Text));

  if MyQ0100.Active then
    MyQ0100.Refresh
  else
    MyQ0100.Open;

end;

procedure Tfr_Form0100.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQ0100.RecordCount=0) or (not MyQ0100.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm0100') = nil then
    Application.CreateForm(Tfr_EntryForm0100, fr_EntryForm0100);

  with fr_EntryForm0100 do
    begin
      //open table reff
      if MyQRefJabatan.Active then
        MyQRefJabatan.Refresh
      else
        MyQRefJabatan.Open;
      if MyQRefJenis_Produk.Active then
        MyQRefJenis_Produk.Refresh
      else
        MyQRefJenis_Produk.Open;
      if MyQRefJenisKantor.Active then
        MyQRefJenisKantor.Refresh
      else
        MyQRefJenisKantor.Open;
      if MyQRefPelanggaran.Active then
        MyQRefPelanggaran.Refresh
      else
        MyQRefPelanggaran.Open;
      if MyQRefStatus.Active then
        MyQRefStatus.Refresh
      else
        MyQRefStatus.Open;
      if MyQRefStatusDokumen.Active then
        MyQRefStatusDokumen.Refresh
      else
        MyQRefStatusDokumen.Open;

      //size
      //Tab Laporan
      sandi_laporan.Properties.MaxLength := MyQ0100sandi_laporan.Size;
      no_sk_ojk.Properties.MaxLength := MyQ0100nomor_sk_ojk.Size;
      memnama_pihak.Properties.MaxLength := MyQ0100nama_pihak.Size;
      jabatan.Properties.MaxLength := MyQ0100jabatan.Size;
      tanggal_persetujuan.Properties.MaxLength := MyQ0100tanggal_persetujuan.Size;
      tanggal_efektif.Properties.MaxLength := MyQ0100tanggal_efektif.Size;
      tanggal_kejadian.Properties.MaxLength := MyQ0100tanggal_kejadian.Size;
      nomor_akta.Properties.MaxLength := MyQ0100nomor_akta.Size;
      tanggal_sk_ojk.Properties.MaxLength := MyQ0100tanggal_sk_ojk.Size;
      nomor_persetujuan.Properties.MaxLength := MyQ0100nomor_persetujuan.Size;
      tanggal_akta.Properties.MaxLength := MyQ0100tanggal_akta.Size;
      nik_npwp.Properties.MaxLength := MyQ0100nik_npwp.Size;;

      //Data Laporan Detail
      jenis_produk.Properties.MaxLength := MyQ0100jenis_produk.Size;
      memnama_produk.Properties.MaxLength := MyQ0100nama_produk.Size;
      memperbaikan.Properties.MaxLength := MyQ0100langkah_perbaikan.Size;
      memalamat.Properties.MaxLength := MyQ0100alamat.Size;
      jenis_kantor.Properties.MaxLength := MyQ0100jenis_kantor.Size;
      memalamat_baru.Properties.MaxLength := MyQ0100alamat_baru.Size;
      tanggal_selesai.Properties.MaxLength := MyQ0100tanggal_selesai.Size;
      nama_sinergi.Properties.MaxLength := MyQ0100nama_pjti.Size;
      memalasan.Properties.MaxLength := MyQ0100alasan.Size;
      pelanggaran.Properties.MaxLength := MyQ0100pelanggaran.Size;
      Register.Properties.MaxLength := MyQ0100register_ref.Size;
      memrealiasasi.Properties.MaxLength := MyQ0100realisasi.Size;
      status.Properties.MaxLength := MyQ0100status.Size;
      status_dokumen.Properties.MaxLength := MyQ0100status_dokumen.Size;
      target_waktu.Properties.MaxLength := MyQ0100target_waktu.Size;

      //assignment
      //Tab Laporan
      sandi_laporan.Text := MyQ0100sandi_laporan.AsString;
      nm_laporan.Text := SelectRow('SELECT deskripsi FROM ref_sandi_laporan WHERE CODE='+QuotedStr(MyQ0100sandi_laporan.AsString)+'');
      no_sk_ojk.Text := MyQ0100nomor_sk_ojk.AsString;
      memnama_pihak.Text := MyQ0100nama_pihak.AsString;
      jabatan.EditValue := MyQ0100jabatan.AsString;
      tanggal_persetujuan.Date := MyQ0100tanggal_persetujuan.AsDateTime;
      tanggal_efektif.Date := MyQ0100tanggal_efektif.AsDateTime;
      tanggal_kejadian.Date := MyQ0100tanggal_kejadian.AsDateTime;
      nomor_akta.Text := MyQ0100nomor_akta.AsString;
      tanggal_sk_ojk.Date := MyQ0100tanggal_sk_ojk.AsDateTime;
      nomor_persetujuan.Text := MyQ0100nomor_persetujuan.AsString;
      tanggal_akta.Date := MyQ0100tanggal_akta.AsDateTime;
      nik_npwp.Text := MyQ0100nik_npwp.AsString;


      // Tab Laporan Detail
      jenis_produk.EditValue := MyQ0100jenis_produk.AsString;
      memnama_produk.Text := MyQ0100nama_produk.AsString;
      memperbaikan.Text := MyQ0100langkah_perbaikan.AsString;
      memalamat.Text := MyQ0100alamat.AsString;
      jenis_kantor.EditValue := MyQ0100jenis_kantor.AsString;
      memalamat_baru.Text := MyQ0100alamat_baru.AsString;
      tanggal_selesai.Date := MyQ0100tanggal_selesai.AsDateTime;
      nama_sinergi.Text := MyQ0100nama_pjti.AsString;
      memalasan.Text := MyQ0100alasan.AsString;
      pelanggaran.EditValue := MyQ0100pelanggaran.AsString;
      Register.Text := MyQ0100register_ref.AsString;
      memrealiasasi.Text := MyQ0100realisasi.AsString;
      status.EditValue := MyQ0100status.AsString;
      status_dokumen.EditValue := MyQ0100status_dokumen.AsString;
      target_waktu.Date := MyQ0100target_waktu.AsDateTime;

      //kode_sandi.Enabled := False;
    end;
  fr_EntryForm0100.Tag := 0;
  fr_EntryForm0100.ShowModal;
  if fr_EntryForm0100.Tag=2 then
    begin
      with fr_EntryForm0100 do
        begin
          // Update
          MyExecuteSQL('UPDATE '+cDb2+'.`linsbpr_0100` '+
                        'SET '+
                        // TAB: LAPORAN UTAMA
                        '`nomor_sk_ojk` = '+QuotedStr(no_sk_ojk.Text)+
                        ', `nama_pihak` = '+QuotedStr(memnama_pihak.Text)+
                        ', `jabatan` = '+QuotedStr(jabatan.EditValue)+
                        ', `tanggal_persetujuan` = '+DateToStrSQL(tanggal_persetujuan.Date)+
                        ', `tanggal_efektif` = '+DateToStrSQL(tanggal_efektif.Date)+
                        ', `tanggal_kejadian` = '+DateToStrSQL(tanggal_kejadian.Date)+
                        ', `nomor_akta` = '+QuotedStr(nomor_akta.Text)+
                        ', `tanggal_sk_ojk` = '+DateToStrSQL(tanggal_sk_ojk.Date)+
                        ', `nomor_persetujuan` = '+QuotedStr(nomor_persetujuan.Text)+
                        ', `tanggal_akta` = '+DateToStrSQL(tanggal_akta.Date)+
                        ', `nik_npwp` = '+QuotedStr(nik_npwp.Text)+
                        // TAB: DETAIL LAPORAN
                        ', `jenis_produk` = '+QuotedStr(jenis_produk.EditValue)+
                        ', `nama_produk` = '+QuotedStr(memnama_produk.Text)+
                        ', `langkah_perbaikan` = '+QuotedStr(memperbaikan.Text)+
                        ', `alamat` = '+QuotedStr(memalamat.Text)+
                        ', `jenis_kantor` = '+QuotedStr(jenis_kantor.EditValue)+
                        ', `alamat_baru` = '+QuotedStr(memalamat_baru.Text)+
                        ', `tanggal_selesai` = '+DateToStrSQL(tanggal_selesai.Date)+
                        ', `nama_pjti` = '+QuotedStr(nama_sinergi.Text)+
                        ', `alasan` = '+QuotedStr(memalasan.Text)+
                        ', `pelanggaran` = '+QuotedStr(pelanggaran.EditValue)+
                        ', `register_ref` = '+QuotedStr(Register.Text)+
                        ', `realisasi` = '+QuotedStr(memrealiasasi.Text)+
                        ', `status` = '+QuotedStr(status.EditValue)+
                        ', `status_dokumen` = '+QuotedStr(status_dokumen.EditValue)+
                        ', `target_waktu` = '+DateToStrSQL(target_waktu.Date)+
                        ' WHERE `flag_detail` = ''D01'' '+
                        ' AND `sandi_laporan` = '+QuotedStr(MyQ0100sandi_laporan.AsString)+
                        ' AND `tanggal_kejadian` = '+DateToStrSQL(MyQ0100tanggal_kejadian.AsDateTime)+
                        ' AND `nomor_sk_ojk` = '+QuotedStr(MyQ0100nomor_sk_ojk.AsString));
      end;
      if MyQ0100.Active then
        MyQ0100.Refresh
      else
        MyQ0100.Open;
    end;

  fr_EntryForm0100.Free;
  fr_EntryForm0100 := nil;
end;

procedure Tfr_Form0100.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if (not MyQ0100.Active) then
    begin
      Pesan(2,'Maaf, table belum aktif...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm0100') = nil then
    Application.CreateForm(Tfr_EntryForm0100, fr_EntryForm0100);

  with fr_EntryForm0100 do
    begin
      //open table reff
      if MyQRefJabatan.Active then
        MyQRefJabatan.Refresh
      else
        MyQRefJabatan.Open;
      if MyQRefJenis_Produk.Active then
        MyQRefJenis_Produk.Refresh
      else
        MyQRefJenis_Produk.Open;
      if MyQRefJenisKantor.Active then
        MyQRefJenisKantor.Refresh
      else
        MyQRefJenisKantor.Open;
      if MyQRefPelanggaran.Active then
        MyQRefPelanggaran.Refresh
      else
        MyQRefPelanggaran.Open;
      if MyQRefStatus.Active then
        MyQRefStatus.Refresh
      else
        MyQRefStatus.Open;
      if MyQRefStatusDokumen.Active then
        MyQRefStatusDokumen.Refresh
      else
        MyQRefStatusDokumen.Open;

      //size
      //Tab Laporan
      sandi_laporan.Properties.MaxLength := MyQ0100sandi_laporan.Size;
      no_sk_ojk.Properties.MaxLength := MyQ0100nomor_sk_ojk.Size;
      memnama_pihak.Properties.MaxLength := MyQ0100nama_pihak.Size;
      jabatan.Properties.MaxLength := MyQ0100jabatan.Size;
      tanggal_persetujuan.Properties.MaxLength := MyQ0100tanggal_persetujuan.Size;
      tanggal_efektif.Properties.MaxLength := MyQ0100tanggal_efektif.Size;
      tanggal_kejadian.Properties.MaxLength := MyQ0100tanggal_kejadian.Size;
      nomor_akta.Properties.MaxLength := MyQ0100nomor_akta.Size;
      tanggal_sk_ojk.Properties.MaxLength := MyQ0100tanggal_sk_ojk.Size;
      nomor_persetujuan.Properties.MaxLength := MyQ0100nomor_persetujuan.Size;
      tanggal_akta.Properties.MaxLength := MyQ0100tanggal_akta.Size;
      nik_npwp.Properties.MaxLength := MyQ0100nik_npwp.Size;;

      //Data Laporan Detail
      jenis_produk.Properties.MaxLength := MyQ0100jenis_produk.Size;
      memnama_produk.Properties.MaxLength := MyQ0100nama_produk.Size;
      memperbaikan.Properties.MaxLength := MyQ0100langkah_perbaikan.Size;
      memalamat.Properties.MaxLength := MyQ0100alamat.Size;
      jenis_kantor.Properties.MaxLength := MyQ0100jenis_kantor.Size;
      memalamat_baru.Properties.MaxLength := MyQ0100alamat_baru.Size;
      tanggal_selesai.Properties.MaxLength := MyQ0100tanggal_selesai.Size;
      nama_sinergi.Properties.MaxLength := MyQ0100nama_pjti.Size;
      memalasan.Properties.MaxLength := MyQ0100alasan.Size;
      pelanggaran.Properties.MaxLength := MyQ0100pelanggaran.Size;
      Register.Properties.MaxLength := MyQ0100register_ref.Size;
      memrealiasasi.Properties.MaxLength := MyQ0100realisasi.Size;
      status.Properties.MaxLength := MyQ0100status.Size;
      status_dokumen.Properties.MaxLength := MyQ0100status_dokumen.Size;
      target_waktu.Properties.MaxLength := MyQ0100target_waktu.Size;

      //assignment
      //kode_komponen.Text := '0201000000';
      tanggal_persetujuan.Date := dTglSystem;
      tanggal_efektif.Date := dTglSystem;
      tanggal_kejadian.Date := dTglSystem;
      tanggal_sk_ojk.Date := dTglSystem;
      tanggal_akta.Date := dTglSystem;
      tanggal_selesai.Date := dTglSystem;
      target_waktu.Date  := dTglSystem;

      //kode_komponen.Enabled := False;
    end;
  fr_EntryForm0100.Tag := 0;
  fr_EntryForm0100.ShowModal;
  if fr_EntryForm0100.Tag=2 then
    begin
      with fr_EntryForm0100 do
        begin
          // Insert
          MyExecuteSQL('INSERT INTO '+cDb2+'.`linsbpr_0100` ('+

                      // TAB: LAPORAN UTAMA
                      '`flag_detail`, `sandi_laporan`, `tanggal_kejadian`, `nomor_sk_ojk`, '+
                      '`tanggal_sk_ojk`, `nomor_akta`, `tanggal_akta`, `nomor_persetujuan`, `tanggal_persetujuan`, `tanggal_efektif`, '+
                      '`nama_pihak`, `nik_npwp`, `jabatan`, '+
                      // TAB: DETAIL LAPORAN
                      '`jenis_produk`, `nama_produk`, `jenis_kantor`, `alamat`, `alamat_baru`, `tanggal_selesai`, '+
                      '`pelanggaran`, `alasan`, `nama_pjti`, `register_ref`, `langkah_perbaikan`, `target_waktu`, `realisasi`, `status`, `status_dokumen`'+
                      ') VALUES ('+
                      // TAB: LAPORAN UTAMA
                      QuotedStr('D01')+
                      ', '+QuotedStr(sandi_laporan.Text)+
                      ', '+DateToStrSQL(tanggal_kejadian.Date)+
                      ', '+QuotedStr(no_sk_ojk.Text)+
                      ', '+DateToStrSQL(tanggal_sk_ojk.Date)+
                      ', '+QuotedStr(nomor_akta.Text)+
                      ', '+DateToStrSQL(tanggal_akta.Date)+
                      ', '+QuotedStr(nomor_persetujuan.Text)+
                      ', '+DateToStrSQL(tanggal_persetujuan.Date)+
                      ', '+DateToStrSQL(tanggal_efektif.Date)+
                      ', '+QuotedStr(memnama_pihak.Text)+
                      ', '+QuotedStr(nik_npwp.Text)+
                      ', '+QuotedStr(jabatan.EditValue)+
                      // TAB: DETAIL LAPORAN
                      ', '+QuotedStr(jenis_produk.EditValue)+
                      ', '+QuotedStr(memnama_produk.Text)+
                      ', '+QuotedStr(jenis_kantor.EditValue)+
                      ', '+QuotedStr(memalamat.Text)+
                      ', '+QuotedStr(memalamat_baru.Text)+
                      ', '+DateToStrSQL(tanggal_selesai.Date)+
                      ', '+QuotedStr(pelanggaran.EditValue)+
                      ', '+QuotedStr(memalasan.Text)+
                      ', '+QuotedStr(nama_sinergi.Text)+
                      ', '+QuotedStr(Register.Text)+
                      ', '+QuotedStr(memperbaikan.Text)+
                      ', '+DateToStrSQL(target_waktu.Date)+
                      ', '+QuotedStr(memrealiasasi.Text)+
                      ', '+QuotedStr(status.EditValue)+
                      ', '+QuotedStr(status_dokumen.EditValue)+
                      ')');
        end;
      if MyQ0100.Active then
        MyQ0100.Refresh
      else
        MyQ0100.Open;
    end;

  fr_EntryForm0100.Free;
  fr_EntryForm0100 := nil;
end;

procedure Tfr_Form0100.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQ0100.Active then
    MyQ0100.Refresh
  else
    MyQ0100.Open;
end;

procedure Tfr_Form0100.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_Form0100.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_Form0100.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfr_Form0100.AssignJudulEvent;
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

procedure Tfr_Form0100.FormCreate(Sender: TObject);
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

procedure Tfr_Form0100.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
  end;
  if Key = #27 then
    Close;
end;

procedure Tfr_Form0100.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
