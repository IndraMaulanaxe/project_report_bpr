unit EntryFormDSN0002;

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
  cxGroupBox, Vcl.ExtCtrls, cxMemo, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxLabel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dm_bpr, Data.DB, DBAccess, MyAccess, MemDS, Vcl.ComCtrls, dxCore, cxDateUtils,
  //add RN
  sEdit, sMemo, sCheckBox, sLabel, sRadioButton, sGroupBox, cxCurrencyEdit,
  dxGDIPlusClasses, Vcl.Buttons, acPNG, DBCtrls, DBGrids, System.UITypes,
  cxCheckBox, System.StrUtils, cxSpinEdit,
  //

  cxCalendar, dxBarBuiltInMenu, cxPC;

type
  Tfr_EntryFormDSN0002 = class(Tfr_new_template)
    dsMyQTemp: TMyDataSource;
    cxPageControl1: TcxPageControl;
    cxTabPage1: TcxTabSheet;
    PanelTab1: TcxGroupBox;
    cxTabPage2: TcxTabSheet;
    PanelTab4: TcxGroupBox;
    Label3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    tgl_mulai_atau_tgl_aro_terakhir: TcxDateEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    nasabah_id: TcxTextEdit;
    nm_kategori_tingkat_bunga_simpanan: TcxTextEdit;
    kategori_tingkat_bunga_simpanan: TcxButtonEdit;
    staus_dana: TcxButtonEdit;
    nm_staus_dana: TcxTextEdit;
    alasan_blokir: TcxButtonEdit;
    nm_alasan_blokir: TcxTextEdit;
    no_rekening: TcxTextEdit;
    tgl_akru_terakhir: TcxDateEdit;
    tanggal_jt: TcxDateEdit;
    saldo_akhir_bunga_bmhd: TcxCurrencyEdit;
    nominal_blokir: TcxCurrencyEdit;
    jml_deposito: TcxCurrencyEdit;
    biaya_cashback: TcxCurrencyEdit;
    tingkat_bunga_penjaminan_lps: TcxCurrencyEdit;
    jumlah_pemilik_rekening: TcxCurrencyEdit;
    gb_suku_bunga: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    suku_bunga: TcxCurrencyEdit;
    suku_bunga_val: TcxCurrencyEdit;
    MyQTemp: TMyQuery;
    MyQTempjumlah_pemilik_rekening: TIntegerField;
    MyQTempnasabah_id: TStringField;
    MyQTempkode_integrasi: TStringField;
    MyQTempno_rekening: TStringField;
    MyQTempstatus_dana: TStringField;
    MyQTemptgl_mulai_atau_tgl_aro_terakhir: TDateField;
    MyQTempsuku_bunga: TStringField;
    MyQTempsuku_bunga_val: TFloatField;
    MyQTempbiaya_cashback: TFloatField;
    MyQTemptingkat_bunga_penjaminan_lps: TFloatField;
    MyQTempkategori_tingkat_bunga_simpanan: TStringField;
    MyQTempsaldo_akhir: TFloatField;
    MyQTempnominal_blokir: TFloatField;
    MyQTempalasan_blokir: TStringField;
    MyQTempsaldo_akhir_bunga_bmhd: TFloatField;
    MyQTemptgl_akru_terakhir: TDateField;
    MyQTemptanggal_jt: TDateField;
    procedure MemKeteranganPropertiesChange(Sender: TObject);
    procedure btlb_SaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure alasan_blokirExit(Sender: TObject);
    procedure staus_danaExit(Sender: TObject);
    procedure kategori_tingkat_bunga_simpananExit(Sender: TObject);
    procedure staus_danaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kategori_tingkat_bunga_simpananPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure alasan_blokirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FDownPoint: TPoint;
    FDragging: Boolean;
    FAllowDrag: Boolean;
  public
    { Public declarations }
    property AllowDrag: Boolean read FAllowDrag write FAllowDrag;
    function Cek_Validasi(Sender: TObject): Boolean;
  end;

var
  fr_EntryFormDSN0002: Tfr_EntryFormDSN0002;
  JenisTrans0002: String;
  cLabelIni, cNewLabelIni: String;

implementation
uses Types, TypInfo, SHFolder, DateUtils, MyLib, MyVAR, FormRefLPS;

{$R *.dfm}

function Tfr_EntryFormDSN0002.Cek_Validasi(Sender: TObject): Boolean;
var
  jml: Integer;
  cPesan, cHint: string;
begin
  cPesan := '';
  Result := False;
    for jml := 0 to ComponentCount -1 do
    if Components[jml] is TEdit then
      begin
        if (TEdit(Components[jml]).Tag=0) then
          begin
            TEdit(Components[jml]).Ctl3D := False;
          end;

        if (Trim(TEdit(Components[jml]).Text)='') and (TEdit(Components[jml]).Tag=1) then
          begin
            cHint  := TEdit(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TEdit(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            TEdit(Components[jml]).Ctl3D := False;
            if TEdit(Components[jml]).CanFocus then
              TEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TsEdit then
      begin
        if (TsEdit(Components[jml]).Tag=0) then
          begin
            TsEdit(Components[jml]).Ctl3D := False;
          end;

        if (Trim(TsEdit(Components[jml]).Text)='') and (TsEdit(Components[jml]).Tag=1) then
          begin
            cHint  := TsEdit(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TsEdit(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            TsEdit(Components[jml]).Ctl3D := False;
            if TsEdit(Components[jml]).CanFocus then
              TsEdit(Components[jml]).SetFocus;
          end;
      end
//here
    else if Components[jml] is TcxButtonEdit then
      begin
        if (TcxButtonEdit(Components[jml]).Tag=0) then
          TcxButtonEdit(Components[jml]).Style.BorderColor := clWindowFrame;

        if (Trim(TcxButtonEdit(Components[jml]).Text)='')
          and (TcxButtonEdit(Components[jml]).Tag=1) then
          begin
            cHint  := TcxButtonEdit(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxButtonEdit(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            if (TcxButtonEdit(Components[jml]).Enabled) then
              TcxButtonEdit(Components[jml]).Style.BorderColor := clSilver;
            if TcxButtonEdit(Components[jml]).CanFocus then
              TcxButtonEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TcxTextEdit then
      begin
        if (TcxTextEdit(Components[jml]).Tag=0) then
          TcxTextEdit(Components[jml]).Style.BorderColor := clWindowFrame;

        if (Trim(TcxTextEdit(Components[jml]).Text)='') and (TcxTextEdit(Components[jml]).Tag=1) then
          begin
            cHint  := TcxTextEdit(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxTextEdit(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            if (TcxTextEdit(Components[jml]).Enabled) then
              TcxTextEdit(Components[jml]).Style.BorderColor := clSilver;
            if TcxTextEdit(Components[jml]).CanFocus then
              TcxTextEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TcxCurrencyEdit then
      begin
        if (TcxCurrencyEdit(Components[jml]).Tag=0) then
          TcxCurrencyEdit(Components[jml]).Style.BorderColor := clWindowFrame;

        if (Trim(TcxCurrencyEdit(Components[jml]).Text)='') and (TcxCurrencyEdit(Components[jml]).Tag=1) then
          begin
            cHint  := TcxCurrencyEdit(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxCurrencyEdit(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            if (TcxCurrencyEdit(Components[jml]).Enabled) then
              TcxCurrencyEdit(Components[jml]).Style.BorderColor := clSilver;
            if TcxCurrencyEdit(Components[jml]).CanFocus then
              TcxCurrencyEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TcxMemo then
      begin
        if (TcxMemo(Components[jml]).Tag=0) then
          TcxMemo(Components[jml]).Style.BorderColor := clWindowFrame;

        if (Trim(TcxMemo(Components[jml]).Lines.Text)='')
          and (TcxMemo(Components[jml]).Tag=1) then
          begin
            cHint  := TcxMemo(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxMemo(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            if (TcxMemo(Components[jml]).Enabled) then
              TcxMemo(Components[jml]).Style.BorderColor := clSilver;
            if TcxMemo(Components[jml]).CanFocus then
              TcxMemo(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TcxDateEdit then
      begin
        if (TcxDateEdit(Components[jml]).Tag=0) then
            TcxDateEdit(Components[jml]).Style.BorderColor := clWindowFrame;

        if (DateOf(TcxDateEdit(Components[jml]).Date) <= DateOf(dTglSystem)) and (TcxDateEdit(Components[jml]).Tag=1) then
          begin
            cHint  := TcxDateEdit(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxDateEdit(Components[jml]).Name;

            cPesan := cPesan + cHint + ' belum diset atau sudah expired !'+#13#10;
            if (TcxButtonEdit(Components[jml]).Enabled) then
              TcxDateEdit(Components[jml]).Style.BorderColor := clSilver;
            if TcxDateEdit(Components[jml]).CanFocus then
              TcxDateEdit(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TcxComboBox then
      begin
        if (TcxComboBox(Components[jml]).Tag=0) then
          TcxComboBox(Components[jml]).Style.BorderColor := clWindowFrame;

        if (Trim(TcxComboBox(Components[jml]).Text)='')
          and (TcxComboBox(Components[jml]).Tag=1) then
          begin
            cHint  := TcxComboBox(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxComboBox(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            if (TcxComboBox(Components[jml]).Enabled) then
              TcxComboBox(Components[jml]).Style.BorderColor := clSilver;
            if TcxComboBox(Components[jml]).CanFocus then
              TcxComboBox(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TcxLookupComboBox then
      begin
        if (TcxLookupComboBox(Components[jml]).Tag=0) then
          TcxLookupComboBox(Components[jml]).Style.BorderColor := clWindowFrame;

        if (Trim(TcxLookupComboBox(Components[jml]).Text)='')
          and (TcxLookupComboBox(Components[jml]).Tag=1) then
          begin
            cHint  := TcxLookupComboBox(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TcxLookupComboBox(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            if (TcxLookupComboBox(Components[jml]).Enabled) then
              TcxLookupComboBox(Components[jml]).Style.BorderColor := clSilver;
            if TcxLookupComboBox(Components[jml]).CanFocus then
              TcxLookupComboBox(Components[jml]).SetFocus;
          end;
      end
//here
    else if Components[jml] is TMemo then
      begin
        if (TMemo(Components[jml]).Tag=0) then
          begin
            TMemo(Components[jml]).Ctl3D := False;
          end;

        if (Trim(TMemo(Components[jml]).Lines.Text)='') and (TMemo(Components[jml]).Tag=1) then
          begin
            cHint  := TMemo(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TMemo(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            TMemo(Components[jml]).Ctl3D := False;
            if TMemo(Components[jml]).CanFocus then
              TMemo(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TsMemo then
      begin
        if (TsMemo(Components[jml]).Tag=0) then
          begin
            TsMemo(Components[jml]).Ctl3D := False;
          end;

        if (Trim(TsMemo(Components[jml]).Lines.Text)='') and (TsMemo(Components[jml]).Tag=1) then
          begin
            cHint  := TsMemo(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TsMemo(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            TsMemo(Components[jml]).Ctl3D := False;
            if TsMemo(Components[jml]).CanFocus then
              TsMemo(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TDateTimePicker then
      begin
        if (DateOf(TDateTimePicker(Components[jml]).Date) <= DateOf(dTglSystem)) and (TDateTimePicker(Components[jml]).Tag=1) then
          begin
            cHint  := TDateTimePicker(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TDateTimePicker(Components[jml]).Name;

            cPesan := cPesan + cHint + ' belum diset atau sudah expired !'+#13#10;
            if TDateTimePicker(Components[jml]).CanFocus then
              TDateTimePicker(Components[jml]).SetFocus;
          end;
      end
    else if Components[jml] is TDBLookupComboBox then
      begin
          TDBLookupComboBox(Components[jml]).Ctl3D := False;

        if (TDBLookupComboBox(Components[jml]).Text='') and (TDBLookupComboBox(Components[jml]).Tag=1) then
          begin
            cHint  := TDBLookupComboBox(Components[jml]).Hint;
            if Empty(cHint) then
              cHint := TDBLookupComboBox(Components[jml]).Name;

            cPesan := cPesan + cHint + ' masih kosong !'+#13#10;
            TDBLookupComboBox(Components[jml]).Ctl3D := False;
            if TDBLookupComboBox(Components[jml]).CanFocus then
              TDBLookupComboBox(Components[jml]).SetFocus;
          end;
      end;

  if not Empty(cPesan) then
    Pesan(2,Trim(cPesan))
  else
    Result := True;
end;

procedure Tfr_EntryFormDSN0002.alasan_blokirPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
      if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_alasan_blokir';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      alasan_blokir.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_alasan_blokir.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDSN0002.btlb_SaveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormDSN0002.FormActivate(Sender: TObject);
var
  jml: Integer;
begin
if not lbl_view_only.Enabled then
  begin
    //dikembalikan ke true, agar tidak bergerak saat form show
    lbl_view_only.Enabled := True;

    for jml := 0 to ComponentCount -1 do
      begin
        if Components[jml] is TEdit then
          TEdit(Components[jml]).ReadOnly:=True;
        if Components[jml] is TcxTextEdit then
          TcxTextEdit(Components[jml]).Properties.ReadOnly:=True;
        if Components[jml] is TMemo then
          TMemo(Components[jml]).ReadOnly:=True;
        if Components[jml] is TcxMemo then
          TcxMemo(Components[jml]).Properties.ReadOnly:=True;
        if Components[jml] is TCheckBox then
          TCheckBox(Components[jml]).Enabled:=False;
        if Components[jml] is TComboBox then
          TComboBox(Components[jml]).Enabled:=False;

        if Components[jml] is TcxCurrencyEdit then
          TcxCurrencyEdit(Components[jml]).Properties.ReadOnly:=True;
        if Components[jml] is TcxCheckBox then
          TcxCheckBox(Components[jml]).Properties.ReadOnly:=True;
        if Components[jml] is TcxComboBox then
          TcxComboBox(Components[jml]).Properties.ReadOnly:=True;
        if Components[jml] is TcxSpinEdit then
          TcxSpinEdit(Components[jml]).Properties.ReadOnly:=True;

        if Components[jml] is TDateTimePicker then
          TDateTimePicker(Components[jml]).Enabled:=False;

        if Components[jml] is TcxDateEdit then
          TcxDateEdit(Components[jml]).Properties.ReadOnly := True;
        if Components[jml] is TDBLookupComboBox then
          TDBLookupComboBox(Components[jml]).Enabled:=False;
        if Components[jml] is TButton then
            if not ((TButton(Components[jml]).Name='bt_batal')
              or (TButton(Components[jml]).Name='bt_cancel')
              or (TButton(Components[jml]).Name='bt_keluar')
              or (TButton(Components[jml]).Name='bt_close'))then
          TButton(Components[jml]).Enabled:=False;

        if Components[jml] is TcxButton then
          begin
            if not ((TcxButton(Components[jml]).Name='bt_batal')
              or (TcxButton(Components[jml]).Name='bt_cancel')
              or (TcxButton(Components[jml]).Name='bt_keluar')
              or (TcxButton(Components[jml]).Name='bt_close'))then
              TcxButton(Components[jml]).Enabled:=False;
          end;

        if Components[jml] is TBitBtn then
          begin
            if not ((TBitBtn(Components[jml]).Name='bt_batal')
              or (TBitBtn(Components[jml]).Name='bt_cancel')
              or (TBitBtn(Components[jml]).Name='bt_keluar')
              or (TBitBtn(Components[jml]).Name='bt_close'))then
              TBitBtn(Components[jml]).Enabled:=False;
          end;

        if Components[jml] is TcxButtonEdit then
          begin
            TcxButtonEdit(Components[jml]).Properties.ReadOnly:=True;
            TcxButtonEdit(Components[jml]).Properties.Buttons[0].Enabled:=False;
          end;

        if Components[jml] is TcxButton then
          begin
            if ((TcxButton(Components[jml]).Name='btlb_tools1')
              or (TcxButton(Components[jml]).Name='btlb_tools2')
              or (TcxButton(Components[jml]).Name='btlb_tools3')
              or (TcxButton(Components[jml]).Name='btlb_Pilih')
              or (TcxButton(Components[jml]).Name='btlb_Insert')
              //or (TcxButton(Components[jml]).Name='btlb_Edit')
              or (TcxButton(Components[jml]).Name='btlb_Delete')
              or (TcxButton(Components[jml]).Name='btlb_Save')
              or (TcxButton(Components[jml]).Name='btlb_Print')
              //or (TLabel(Components[jml]).Name='btlb_Cancel')
              //or (TLabel(Components[jml]).Name='btlb_Close')
              or (TcxButton(Components[jml]).Name='btlb_Refresh')) then
              TcxButton(Components[jml]).Enabled:=False;
            if (TcxButton(Components[jml]).Name='btlb_Edit') then
              TcxButton(Components[jml]).Caption:='View';
          end;
      end;
  end;
end;

procedure Tfr_EntryFormDSN0002.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_EntryFormDSN0002.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (Tag=1) then
    begin
      if Application.MessageBox('Yakin keluar dari aplikasi ?', 'Konfirmasi',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 + MB_TOPMOST) = IDNO then
          begin
            CanClose := False;
          end;
    end;
end;

procedure Tfr_EntryFormDSN0002.FormCreate(Sender: TObject);
var
  jml, jml2: Integer;
  cCaption, cTag, cHint, cWidth, cScale: String;
  cTemp: string;
  lLabeling: Boolean;
  DesignDPI: Integer;
begin
  KeyPreview:=True;
  FAllowDrag := True;
  Tag := 1;

  cScale := IniGetStringValue(Ogie_FileIni, 'Configuration', 'ScaleScreen', '110');
  DesignDPI := StrToInt(cScale);  //110; // DPI saat form didesain
  if 100 <> DesignDPI then
    Self.ScaleBy(DesignDPI, 100); // Menyesuaikan skala form

  if not Self.Showing then
    begin
      if (Self.Width > Screen.Width) or (Self.Height > Screen.Height+75) then
        ShowScrollBar(Handle, SB_BOTH, True);

      if (Self.Width > Screen.Width) then
        begin
          HorzScrollBar.Range := Self.Width; // set the range to an higher number
          Self.Width := Self.Width + 30;
        end;
      if (Self.Height > Screen.Height+75) then
        begin
          VertScrollBar.Range := Self.Height; // set the range to an higher number
          Self.Height := Self.Height + 75;
          Self.Width := Self.Width + 30;
        end;
    end;

  PanelTopSystem.Color := clDefault;
  PanelHeader.Color := clDefault;
  PanelContent.Color := clDefault;
  PanelFooter.Color := clDefault;

  Self.Font.Color := clDefault;

  FAllowDrag := True;
  GetOgieGlobalSetting;

  cLocation := ExtractFilePath(Application.ExeName);
  SetCurrentDir(cLocation);
end;

procedure Tfr_EntryFormDSN0002.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    end;
  if Key = #27 then
    Close;
end;

procedure Tfr_EntryFormDSN0002.alasan_blokirExit(Sender: TObject);
begin
  inherited;
     if not Empty(alasan_blokir.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_alasan_blokir WHERE selectable=1 AND sandi='+QuotedStr(alasan_blokir.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and alasan_blokir.CanFocus then
        alasan_blokir.SetFocus;
      Exit;
    end;

  if not Empty(alasan_blokir.Text) then
    nm_alasan_blokir.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_alasan_blokir','sandi',alasan_blokir.Text,'deskripsi_sandi');


end;

procedure Tfr_EntryFormDSN0002.staus_danaExit(Sender: TObject);
begin
  inherited;

  if not Empty(staus_dana.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_status_dana WHERE selectable=1 AND sandi='+QuotedStr(staus_dana.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and staus_dana.CanFocus then
        staus_dana.SetFocus;
      Exit;
    end;

  if not Empty(staus_dana.Text) then
    nm_staus_dana.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_status_dana','sandi',staus_dana.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDSN0002.staus_danaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
   if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_status_dana';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      staus_dana.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_staus_dana.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDSN0002.kategori_tingkat_bunga_simpananExit(Sender: TObject);
begin
  inherited;
    if not Empty(kategori_tingkat_bunga_simpanan.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kategori_tingkat_bunga_simpanan WHERE selectable=1 AND sandi='+QuotedStr(kategori_tingkat_bunga_simpanan.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kategori_tingkat_bunga_simpanan.CanFocus then
        kategori_tingkat_bunga_simpanan.SetFocus;
      Exit;
    end;

  if not Empty(kategori_tingkat_bunga_simpanan.Text) then
    nm_kategori_tingkat_bunga_simpanan.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kategori_tingkat_bunga_simpanan','sandi',kategori_tingkat_bunga_simpanan.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDSN0002.kategori_tingkat_bunga_simpananPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
    if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_kategori_tingkat_bunga_simpanan';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kategori_tingkat_bunga_simpanan.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nm_kategori_tingkat_bunga_simpanan.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDSN0002.MemKeteranganPropertiesChange(
  Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

end.
