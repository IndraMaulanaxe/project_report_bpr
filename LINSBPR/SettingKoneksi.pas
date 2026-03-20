unit SettingKoneksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, sSkinProvider, StdCtrls, ExtCtrls, sPanel, sCheckBox,
  Buttons, DB, DBAccess, MyAccess;

type
  Tfr_SettingKoneksi = class(Tfr_template)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    Label1: TLabel;
    con_name: TEdit;
    db_host: TEdit;
    Label2: TLabel;
    db_name_slik: TEdit;
    db_port: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    bt_cancel: TBitBtn;
    bt_save: TBitBtn;
    Label23: TLabel;
    db_host_id: TEdit;
    db_ip_vpn: TEdit;
    Label6: TLabel;
    db_username: TEdit;
    Label5: TLabel;
    db_password: TEdit;
    Label7: TLabel;
    bt_test: TBitBtn;
    MyConTest: TMyConnection;
    chk_test_koneksi: TsCheckBox;
    chk_online: TsCheckBox;
    Label8: TLabel;
    db_name_core: TEdit;
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure con_nameChange(Sender: TObject);
    procedure chk_flg_restoreClick(Sender: TObject);
    procedure bt_testClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_SettingKoneksi: Tfr_SettingKoneksi;
  cNamaKoneksi: string;


implementation

uses
  MyVAR;

{$R *.dfm}

procedure Tfr_SettingKoneksi.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_SettingKoneksi.bt_saveClick(Sender: TObject);
var
  cTemp: string;
begin
  inherited;
  if Empty(con_name.Text) or Empty(db_host.Text) or Empty(db_port.Text) or
    Empty(db_name_slik.Text) or Empty(db_name_core.Text) or Empty(db_host_id.Text) then   //or Empty(db_ip_vpn.Text)
      begin
        Pesan(2,'Semua field harap di isi dengan benar...!');
        Exit;
      end;

  if chk_test_koneksi.Checked then
    begin
      MyConTest.Disconnect;
      MyConTest.Server := db_host.Text;
      MyConTest.Database := db_name_slik.Text;
      MyConTest.Port := StrToInt(db_port.Text);

      MyConTest.Username := db_username.Text;
      if Empty(db_username.Text) then
        begin
          cTemp := IniGetStringValue(Ogie_FileIni,cNamaKoneksi,'UserName','');
          if not Empty(cTemp) and Empty(db_username.Text) then
            MyConTest.Username := DecryptPass(cTemp);
        end;

      MyConTest.Password := db_password.Text;
      if Empty(db_password.Text) then
        begin
          cTemp := IniGetStringValue(Ogie_FileIni,cNamaKoneksi,'Password','');
          if not Empty(cTemp) and Empty(db_password.Text) then
            MyConTest.Password := DecryptPass(cTemp);
        end;
        
      MyConTest.ConnectionTimeout := 30;
      MyConTest.Connect;
      if MyConTest.Connected then
        Pesan(1,'Koneksi berhasil...!')
      else
        begin
          Pesan(1,'Koneksi gagal, harap periksa kembali...!');
          Exit;
        end;
    end;

  Tag := 2;
  Close;
end;

procedure Tfr_SettingKoneksi.bt_testClick(Sender: TObject);
var
  cTemp: string;
begin
  inherited;
  MyConTest.Disconnect;
  MyConTest.Server := db_host.Text;
  MyConTest.Database := db_name_slik.Text;
  MyConTest.Port := StrToInt(db_port.Text);
  MyConTest.Username := db_username.Text;
  if Empty(db_username.Text) then
    begin
      cTemp := IniGetStringValue(Ogie_FileIni,cNamaKoneksi,'UserName','');
      if not Empty(cTemp) and Empty(db_username.Text) then
        MyConTest.Username := DecryptPass(cTemp);
    end;

  MyConTest.Password := db_password.Text;
  if Empty(db_password.Text) then
    begin
      cTemp := IniGetStringValue(Ogie_FileIni,cNamaKoneksi,'Password','');
      if not Empty(cTemp) and Empty(db_password.Text) then
        MyConTest.Password := DecryptPass(cTemp);
    end;
  MyConTest.ConnectionTimeout := 30;
  MyConTest.Connect;
  if MyConTest.Connected then
    Pesan(1,'Koneksi berhasil...!')
  else
    Pesan(1,'Koneksi gagal, harap periksa kembali...!');
end;

procedure Tfr_SettingKoneksi.chk_flg_restoreClick(Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

procedure Tfr_SettingKoneksi.con_nameChange(Sender: TObject);
begin
  inherited;
  Tag := 1;
end;

procedure Tfr_SettingKoneksi.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

end.
