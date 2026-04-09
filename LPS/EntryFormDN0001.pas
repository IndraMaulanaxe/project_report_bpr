unit EntryFormDN0001;

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
  Tfr_EntryFormDN0001 = class(Tfr_new_template)
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
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    memdeskripsi_fraud: TcxMemo;
    tgl_lahir: TcxDateEdit;
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
    nama_nasabah: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    nama_ibu_kandung: TcxTextEdit;
    no_id: TcxTextEdit;
    nama_pengurus: TcxTextEdit;
    no_iden_bdn_hukum: TcxTextEdit;
    no_iden_pegang_kuasa: TcxTextEdit;
    nama_kota_kab: TcxTextEdit;
    alamat: TcxMemo;
    kode_kota_kab: TcxButtonEdit;
    kode_jenis_id: TcxButtonEdit;
    nama_jenis_id: TcxTextEdit;
    kode_jenis_id_pengurus: TcxButtonEdit;
    nama_jenis_id_pengurus: TcxTextEdit;
    kode_kewarganegaraan: TcxButtonEdit;
    nama_kewarganegaraan: TcxTextEdit;
    telpon: TcxTextEdit;
    kode_flag: TcxButtonEdit;
    nama_flag: TcxTextEdit;
    kode_hub_bank: TcxButtonEdit;
    nama_hub_bank: TcxTextEdit;
    kode_hub_pihak_terkait: TcxButtonEdit;
    nama_hub_pihak_terkait: TcxTextEdit;
    kode_gol_nasabah: TcxButtonEdit;
    nama_gol_nasabah: TcxTextEdit;
    MyQTemp: TMyQuery;
    MyQTempflag_detail: TStringField;
    MyQTempnasabah_id: TStringField;
    MyQTempnama_nasabah: TStringField;
    MyQTempjenis_id: TStringField;
    MyQTempno_id: TStringField;
    MyQTempnama_ibu_kandung: TStringField;
    MyQTemptgl_lahir: TDateField;
    MyQTempno_id2: TStringField;
    MyQTempnama_pengurus: TStringField;
    MyQTempjenis_identitas: TStringField;
    MyQTempnomor_identitas: TStringField;
    MyQTempalamat: TStringField;
    MyQTempkota_kab: TStringField;
    MyQTempwni: TStringField;
    MyQTemptelpon: TStringField;
    MyQTempflag_fraud: TStringField;
    MyQTemphub_dgn_bank: TStringField;
    MyQTempslik_kode_hub_ljk: TStringField;
    MyQTempslik_kode_gol_debitur: TStringField;
    procedure MemKeteranganPropertiesChange(Sender: TObject);
    procedure btlb_SaveClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure kode_jenis_idPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_jenis_id_pengurusPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_kota_kabPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_kewarganegaraanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_flagPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_hub_bankPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_hub_pihak_terkaitPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_gol_nasabahPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure kode_flagExit(Sender: TObject);
    procedure kode_hub_bankExit(Sender: TObject);
    procedure kode_jenis_id_pengurusExit(Sender: TObject);
    procedure kode_jenis_idExit(Sender: TObject);
    procedure kode_kota_kabExit(Sender: TObject);
    procedure kode_gol_nasabahExit(Sender: TObject);
    procedure kode_hub_pihak_terkaitExit(Sender: TObject);
    procedure kode_kewarganegaraanExit(Sender: TObject);
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
  fr_EntryFormDN0001: Tfr_EntryFormDN0001;
  JenisTrans0001: String;
  cLabelIni, cNewLabelIni: String;

implementation
uses Types, TypInfo, SHFolder, DateUtils, MyLib, MyVAR, FormRefLPS;

{$R *.dfm}

function Tfr_EntryFormDN0001.Cek_Validasi(Sender: TObject): Boolean;
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

procedure Tfr_EntryFormDN0001.btlb_SaveClick(Sender: TObject);
begin
  inherited;
  if not Cek_Validasi(Sender) then
    Exit;

  Tag := 2;
  Close;
end;

procedure Tfr_EntryFormDN0001.FormActivate(Sender: TObject);
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

procedure Tfr_EntryFormDN0001.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
  Action := caFree;
end;

procedure Tfr_EntryFormDN0001.FormCloseQuery(Sender: TObject;
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

procedure Tfr_EntryFormDN0001.FormCreate(Sender: TObject);
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

procedure Tfr_EntryFormDN0001.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    end;
  if Key = #27 then
    Close;
end;

procedure Tfr_EntryFormDN0001.kode_flagExit(Sender: TObject);
begin
  inherited;
    if not Empty(kode_flag.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_flag_fraud WHERE selectable=1 AND sandi='+QuotedStr(kode_flag.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_flag.CanFocus then
        kode_flag.SetFocus;
      Exit;
    end;

  if not Empty(kode_flag.Text) then
    nama_flag.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_flag_fraud','sandi',kode_flag.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDN0001.kode_flagPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
       if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_flag_fraud';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_flag.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_flag.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_gol_nasabahExit(Sender: TObject);
begin
  inherited;

  if not Empty(kode_gol_nasabah.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_gol_nasabah WHERE selectable=1 AND sandi='+QuotedStr(kode_gol_nasabah.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_gol_nasabah.CanFocus then
        kode_gol_nasabah.SetFocus;
      Exit;
    end;

  if not Empty(kode_gol_nasabah.Text) then
    nama_gol_nasabah.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_gol_nasabah','sandi',kode_gol_nasabah.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDN0001.kode_gol_nasabahPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
      if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_gol_nasabah';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_gol_nasabah.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_gol_nasabah.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_hub_bankExit(Sender: TObject);
begin
  inherited;
    if not Empty(kode_hub_bank.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_hub_bank WHERE selectable=1 AND sandi='+QuotedStr(kode_hub_bank.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_hub_bank.CanFocus then
        kode_hub_bank.SetFocus;
      Exit;
    end;

  if not Empty(kode_hub_bank.Text) then
    nama_hub_bank.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_hub_bank','sandi',kode_hub_bank.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDN0001.kode_hub_bankPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
     if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_hub_bank';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_hub_bank.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_hub_bank.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_hub_pihak_terkaitExit(Sender: TObject);
begin
  inherited;
  if not Empty(kode_hub_pihak_terkait.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_hub_pihak_terkait WHERE selectable=1 AND sandi='+QuotedStr(kode_hub_pihak_terkait.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_hub_pihak_terkait.CanFocus then
        kode_hub_pihak_terkait.SetFocus;
      Exit;
    end;

  if not Empty(kode_hub_pihak_terkait.Text) then
    nama_hub_pihak_terkait.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_hub_pihak_terkait','sandi',kode_hub_pihak_terkait.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDN0001.kode_hub_pihak_terkaitPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
      if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_hub_pihak_terkait';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_hub_pihak_terkait.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_hub_pihak_terkait.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_jenis_idExit(Sender: TObject);
begin
  inherited;

    if not Empty(kode_jenis_id.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_jenis_identitas WHERE selectable=1 AND sandi='+QuotedStr(kode_jenis_id.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_jenis_id.CanFocus then
        kode_jenis_id.SetFocus;
      Exit;
    end;

  if not Empty(kode_jenis_id.Text) then
    nama_jenis_id.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_jenis_identitas','sandi',kode_jenis_id.Text,'jenis_identitas');

end;

procedure Tfr_EntryFormDN0001.kode_jenis_idPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_jenis_identitas';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`jenis_identitas`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_jenis_id.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_jenis_id.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_jenis_id_pengurusExit(Sender: TObject);
begin
  inherited;
  if not Empty(kode_jenis_id_pengurus.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_jenis_identitas WHERE selectable=1 AND sandi='+QuotedStr(kode_jenis_id_pengurus.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_jenis_id_pengurus.CanFocus then
        kode_jenis_id_pengurus.SetFocus;
      Exit;
    end;

  if not Empty(kode_jenis_id_pengurus.Text) then
    nama_jenis_id_pengurus.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_jenis_identitas','sandi',kode_jenis_id_pengurus.Text,'jenis_identitas');

end;

procedure Tfr_EntryFormDN0001.kode_jenis_id_pengurusPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_jenis_identitas';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`jenis_identitas`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_jenis_id_pengurus.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_jenis_id_pengurus.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_kewarganegaraanExit(Sender: TObject);
begin
  inherited;
        if not Empty(kode_kewarganegaraan.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kewarganegaraan WHERE selectable=1 AND sandi='+QuotedStr(kode_kewarganegaraan.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_kewarganegaraan.CanFocus then
        kode_kewarganegaraan.SetFocus;
      Exit;
    end;

  if not Empty(kode_kewarganegaraan.Text) then
    nama_kewarganegaraan.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kewarganegaraan','sandi',kode_kewarganegaraan.Text,'deskripsi_sandi');

end;

procedure Tfr_EntryFormDN0001.kode_kewarganegaraanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
    if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_kewarganegaraan';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`deskripsi_sandi`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_kewarganegaraan.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_kewarganegaraan.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.kode_kota_kabExit(Sender: TObject);
begin
  inherited;
      if not Empty(kode_kota_kab.Text) and
    (SelectRow('SELECT COUNT(*) AS hasil FROM '+
      cDb2+'.lps_ref_kab_kota WHERE selectable=1 AND sandi='+QuotedStr(kode_kota_kab.Text))='0') then
    begin
      Pesan(2,'Kode sandi tersebut tidak ada');
      if Self.Showing and kode_kota_kab.CanFocus then
        kode_kota_kab.SetFocus;
      Exit;
    end;

  if not Empty(kode_kota_kab.Text) then
    nama_kota_kab.Text := GetFValueByFKeyValue(cDb2+'.lps_ref_kab_kota','sandi',kode_kota_kab.Text,'nama_kotakab');

end;

procedure Tfr_EntryFormDN0001.kode_kota_kabPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
      if Application.FindComponent('fr_FormRefLPS') = nil then
    Application.CreateForm(Tfr_FormRefLPS, fr_FormRefLPS);
  fr_FormRefLPS.nm_table.Text := cDb2+'.lps_ref_kab_kota';
  fr_FormRefLPS.MyQMasterReferensi.MacroByName('FIELD2').Value := '`nama_kotakab`';
  fr_FormRefLPS.FormCreate(Sender);
  fr_FormRefLPS.ShowModal;
  if fr_FormRefLPS.Tag=2 then
    begin
      kode_kota_kab.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('sandi').AsString;
      nama_kota_kab.Text := fr_FormRefLPS.MyQMasterReferensi.FieldByName('keterangan').AsString;
      Tag := 1;
    end;
  fr_FormRefLPS.Free;
  fr_FormRefLPS := nil;
end;

procedure Tfr_EntryFormDN0001.MemKeteranganPropertiesChange(
  Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

end.
