unit FormKP2000;

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
  MyLib, EntryFormKP2000, dxDateRanges;

type
  Tfr_FormKP2000 = class(Tfr_new_template)
    MyQuery1: TMyQuery;
    MyQuery1jml: TLargeintField;
    MyQuery1bd: TFloatField;
    MyQuery1provisi: TFloatField;
    MyQuery1biaya: TFloatField;
    MyQuery1ppapwd: TFloatField;
    MyQuery1pyad: TFloatField;
    MyQuery1bd_netto: TFloatField;
    MyQuery1pbdp: TFloatField;
    dsMyQKP2000: TMyDataSource;
    MyQKP2000: TMyQuery;
    cxgGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    MyQKP2000id: TIntegerField;
    MyQKP2000flag_detail: TStringField;
    MyQKP2000kode_komponen: TStringField;
    MyQKP2000nik: TStringField;
    MyQKP2000nama: TStringField;
    MyQKP2000jabatan: TStringField;
    MyQKP2000status_kepegawaian: TStringField;
    MyQKP2000tingkat_pendidikan: TStringField;
    MyQKP2000lama_masa_jabatan: TDateField;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1flag_detail: TcxGridDBColumn;
    cxGridDBTableView1kode_komponen: TcxGridDBColumn;
    cxGridDBTableView1nik: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1jabatan: TcxGridDBColumn;
    cxGridDBTableView1status_kepegawaian: TcxGridDBColumn;
    cxGridDBTableView1tingkat_pendidikan: TcxGridDBColumn;
    cxGridDBTableView1lama_masa_jabatan: TcxGridDBColumn;
    MyQKP2000sandi_jabatan: TStringField;
    MyQKP2000sandi_status_kepegawaian: TStringField;
    MyQKP2000sandi_tingkat_pendidikan: TStringField;
    procedure btlb_RefreshClick(Sender: TObject);
    procedure btlb_EditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btlb_InsertClick(Sender: TObject);
    procedure btlb_DeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormKP2000: Tfr_FormKP2000;

implementation

{$R *.dfm}

procedure Tfr_FormKP2000.btlb_DeleteClick(Sender: TObject);
begin
  inherited;
  if (MyQKP2000.RecordCount=0) or (not MyQKP2000.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if not Pesan(3, 'yakin mau hapus data?') then
    Exit;

  MyExecuteSQL('DELETE FROM '+cDb2+'.`kp_2000` '+
    '  WHERE `id` = '+QuotedStr(MyQKP2000id.Text));

  if MyQKP2000.Active then
    MyQKP2000.Refresh
  else
    MyQKP2000.Open;

end;

procedure Tfr_FormKP2000.btlb_EditClick(Sender: TObject);
begin
  inherited;
  if (MyQKP2000.RecordCount=0) or (not MyQKP2000.Active) then
    begin
      Pesan(2,'Maaf, Tidak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm2000') = nil then
    Application.CreateForm(Tfr_EntryForm2000, fr_EntryForm2000);

  with fr_EntryForm2000 do
    begin

      //open table reff
      if MyQSandiJabatan.Active then
        MyQSandiJabatan.Refresh
      else
        MyQSandiJabatan.Open;
      if MyQSandiKepegawaian.Active then
        MyQSandiKepegawaian.Refresh
      else
        MyQSandiKepegawaian.Open;
      if MyQSandiPendidikan.Active then
        MyQSandiPendidikan.Refresh
      else
        MyQSandiPendidikan.Open;

      //size
      kode_komponen.Properties.MaxLength := MyQKP2000kode_komponen.Size;
      nm_nik.Properties.MaxLength := MyQKP2000nik.Size;
      MemNama.Properties.MaxLength := MyQKP2000nama.Size;

      //assignment
      kode_komponen.Text := MyQKP2000kode_komponen.Text;
      nm_nik.Text := MyQKP2000nik.Text;
      MemNama.Text := MyQKP2000nama.Text;
      cb_jabatan.EditValue := MyQKP2000sandi_jabatan.Text;
      cb_status.EditValue := MyQKP2000sandi_status_kepegawaian.Text;
      cb_pendidikan.EditValue := MyQKP2000sandi_tingkat_pendidikan.Text;
      cb_masajabatan.Date :=MyQKP2000lama_masa_jabatan.Value;

      kode_komponen.Enabled := False;
    end;
  fr_EntryForm2000.Tag := 0;
  fr_EntryForm2000.ShowModal;
  if fr_EntryForm2000.Tag=2 then
    begin
      with fr_EntryForm2000 do
        begin
          // Update
          MyExecuteSQL('UPDATE '+cDb2+'.`kp_2000` '+
            'SET `kode_komponen` = '+QuotedStr(kode_komponen.text)+
            ',`nik` = '+QuotedStr(nm_nik.text)+
            ', `nama` = '+QuotedStr(MemNama.Text)+
            ', `jabatan` = '+QuotedStr(cb_jabatan.EditValue)+
            ', `status_kepegawaian` = '+QuotedStr(cb_status.EditValue)+
            ', `tingkat_pendidikan` = '+QuotedStr(cb_pendidikan.EditValue)+
            ', `lama_masa_jabatan` = '+DateToStrSQL(cb_masajabatan.Date)+
            '  WHERE `id` = '+QuotedStr(MyQKP2000id.Text));
        end;
      if MyQKP2000.Active then
        MyQKP2000.Refresh
      else
        MyQKP2000.Open;
    end;

  fr_EntryForm2000.Free;
  fr_EntryForm2000 := nil;
end;

procedure Tfr_FormKP2000.btlb_InsertClick(Sender: TObject);
begin
  inherited;
  if (not MyQKP2000.Active) then
    begin
      Pesan(2,'Maaf, table belum aktif...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryForm2000') = nil then
    Application.CreateForm(Tfr_EntryForm2000, fr_EntryForm2000);

  with fr_EntryForm2000 do
    begin
      //open table reff
      if MyQSandiJabatan.Active then
        MyQSandiJabatan.Refresh
      else
        MyQSandiJabatan.Open;
      if MyQSandiKepegawaian.Active then
        MyQSandiKepegawaian.Refresh
      else
        MyQSandiKepegawaian.Open;
      if MyQSandiPendidikan.Active then
        MyQSandiPendidikan.Refresh
      else
        MyQSandiPendidikan.Open;

      //size
      kode_komponen.Properties.MaxLength := MyQKP2000kode_komponen.Size;
      nm_nik.Properties.MaxLength := MyQKP2000nik.Size;
      MemNama.Properties.MaxLength := MyQKP2000nama.Size;

      //assignment
      cb_masajabatan.Date := dTglSystem;
      kode_komponen.Text := 'K1300';

      kode_komponen.Enabled := False;
    end;
  fr_EntryForm2000.Tag := 0;
  fr_EntryForm2000.ShowModal;
  if fr_EntryForm2000.Tag=2 then
    begin
      with fr_EntryForm2000 do
        begin
          // Update
          MyExecuteSQL('INSERT INTO '+cDb2+'.`kp_2000` '+
            'SET `flag_detail` = '+QuotedStr('D01')+
            ',`kode_komponen` = '+QuotedStr(kode_komponen.text)+
            ',`nik` = '+QuotedStr(nm_nik.text)+
            ',`nama` = '+QuotedStr(MemNama.Text)+
            ',`jabatan` = '+QuotedStr(cb_jabatan.EditValue)+
            ',`status_kepegawaian` = '+QuotedStr(cb_status.EditValue)+
            ',`tingkat_pendidikan` = '+QuotedStr(cb_pendidikan.EditValue)+
            ',`lama_masa_jabatan` = '+DateToStrSQL(cb_masajabatan.Date));
        end;
      if MyQKP2000.Active then
        MyQKP2000.Refresh
      else
        MyQKP2000.Open;
    end;

  fr_EntryForm2000.Free;
  fr_EntryForm2000 := nil;
end;

procedure Tfr_FormKP2000.btlb_RefreshClick(Sender: TObject);
begin
  inherited;
  if MyQKP2000.Active then
    MyQKP2000.Refresh
  else
    MyQKP2000.Open;
end;

procedure Tfr_FormKP2000.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if btlb_Edit.Enabled then
    btlb_EditClick(Sender);
end;

procedure Tfr_FormKP2000.FormShow(Sender: TObject);
begin
  inherited;
  btlb_RefreshClick(Sender);
end;

end.
