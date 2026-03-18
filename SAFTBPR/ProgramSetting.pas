unit ProgramSetting;

{
  Nama Form     : FormProgramSetting
  Create        : 7 Januari 2007
  Last Update   : 7 Januari 2007
  Create By     : Hamsudi
  Company       : Ogiesoft
  Copyrights    : Ogiesoft
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, 
  ExtCtrls, Form_Template, sSkinProvider, sPanel, sEdit, sBitBtn, 
  sComboBox, sCheckBox;

type
  Tfr_ProgramSetting = class(Tfr_template)
    Panel1: TsPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    ColorGridMaxFront: TColorBox;
    ColorGridMinFront: TColorBox;
    ColorGridSelectedFront: TColorBox;
    ColorGridOddFront: TColorBox;
    ColorGridSelectedBg: TColorBox;
    ColorGridOddBg: TColorBox;
    bt_ok: TsBitBtn;
    bt_cancel: TsBitBtn;
    ColorGridRow: TEdit;
    sPanel1: TsPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    nm_versi: TsEdit;
    nm_domain: TsEdit;
    nm_file_setup: TsEdit;
    nm_ip_sms: TsEdit;
    Label13: TLabel;
    ftp_user: TsEdit;
    ftp_password: TsEdit;
    ftp_folder: TsEdit;
    ftp_name: TsEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    sPanel2: TsPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    cb_backup_db: TsComboBox;
    con_host: TEdit;
    con_port: TEdit;
    bt_new: TsBitBtn;
    bt_edit: TsBitBtn;
    bt_delete: TsBitBtn;
    Label22: TLabel;
    con_db: TEdit;
    Label23: TLabel;
    con_host_id: TEdit;
    con_ip_vpn: TEdit;
    Label24: TLabel;
    con_db_report: TEdit;
    Label5: TLabel;
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ColorGridRowKeyPress(Sender: TObject; var Key: Char);
    procedure bt_newClick(Sender: TObject);
    procedure cb_backup_dbChange(Sender: TObject);
    procedure bt_editClick(Sender: TObject);
    procedure bt_deleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_ProgramSetting: Tfr_ProgramSetting;

//function Encrypt(const s: String; CryptInt: Integer): String; external 'OgiesoftLIB.dll';
//function GetPathPath: string; external 'OgiesoftLIB.dll';
//function AmbilVersi(): string; external 'OgiesoftLIB.dll';
//function StrZero(nNo, nLen: integer): String; external 'OgiesoftLIB.dll';

implementation

uses MyVAR, SettingKoneksi, StrUtils;

{$R *.dfm}

procedure Tfr_ProgramSetting.bt_deleteClick(Sender: TObject);
var
  i, cOldIdx: Byte;
  cvar1, cvar2, cvar3, cvar4, cvar5, cvar6, cvar7, cvar8, cMaxKoneksi: string;
begin
  inherited;
  if (cb_backup_db.ItemIndex < 0) then
    Exit;

  if (cb_backup_db.ItemIndex >= 0) then
    begin
      cMaxKoneksi := IniGetStringValue(Ogie_FileIni,'Configuration','MaxKoneksi','5');
      if Empty(cMaxKoneksi) then
        cMaxKoneksi := '5';

      if Pesan(3,'Yakin menghapus koneksi '+cb_backup_db.Text+' ?') then
        begin
          cOldIdx := cb_backup_db.ItemIndex;
          for i := cb_backup_db.ItemIndex+1 to StrToInt(cMaxKoneksi) do
            begin
              //get next value
              cvar1 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'Name','');
              cvar2 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'Host','');
              cvar3 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'Port','');
              cvar4 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'UserName','');
              cvar5 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'Password','');
              cvar6 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'DatabaseName','');
              cvar7 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'Id','');
              cvar8 := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i+1,2),'HostVPN','');
              //set value to current index
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name',cvar1);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Host',cvar2);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Port',cvar3);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'UserName',cvar4);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Password',cvar5);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'DatabaseName',cvar6);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Id',cvar7);
              IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'HostVPN',cvar8);
            end;
          //reset value last index
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'Name','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'Host','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'Port','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'UserName','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'Password','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'DatabaseName','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'Id','');
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(25,2),'HostVPN','');
          cb_backup_db.DeleteSelected;
          if ((cOldIdx-1) >= 0) then
            cb_backup_db.ItemIndex := cOldIdx-1
          else
            cb_backup_db.ItemIndex := cOldIdx;

          if (cb_backup_db.Items.Count=0) then
            begin
              cb_backup_db.Items.Add('KONEKSI_01 Empty');
              cb_backup_db.ItemIndex := 0;
            end;

          cb_backup_dbChange(Sender);
        end;
    end;
end;

procedure Tfr_ProgramSetting.bt_editClick(Sender: TObject);
var
  cOldIdx: Byte;
begin
  inherited;
  cOldIdx := cb_backup_db.ItemIndex;
  Application.CreateForm(Tfr_SettingKoneksi, fr_SettingKoneksi);
  with fr_SettingKoneksi do
    begin
      cNamaKoneksi := 'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2);
      con_name.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Name','');
      db_host.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Host','');
      db_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Port','');
      db_username.Text := ''; //Decrypt(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'UserName',''),21);
      db_password.Text := '';  //IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Password','');
      db_name_slik.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseName','');
      db_name_core.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseCore','');
      db_host_id.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Id','');
      db_ip_vpn.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'HostVPN','');
      chk_online.Checked := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Online','')='Y';
    end;
  fr_SettingKoneksi.Tag := 0;
  fr_SettingKoneksi.ShowModal;
  if (fr_SettingKoneksi.Tag=2) then
    begin
      with fr_SettingKoneksi do
        begin
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Name',con_name.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Host',db_host.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Port',db_port.Text);
          if not Empty(db_username.Text) then
            IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'UserName',EncryptPass(db_username.Text));
          if not Empty(db_password.Text) then
            IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Password',EncryptPass(db_password.Text));
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseName',db_name_slik.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseCore',db_name_core.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Id',db_host_id.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'HostVPN',db_ip_vpn.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Online',IfThen(chk_online.Checked,'Y','N'));
          //reload
          cb_backup_db.DeleteSelected;
          cb_backup_db.Items.Insert(cOldIdx,con_name.Text);
          //cb_backup_db.Items.ValueFromIndex[cOldIdx] := con_name.Text;
          cb_backup_db.ItemIndex := cOldIdx;
          cb_backup_dbChange(Sender);
        end;
      //Tag := 1;
    end;
  fr_SettingKoneksi.Free;
  fr_SettingKoneksi := nil;
end;

procedure Tfr_ProgramSetting.bt_newClick(Sender: TObject);
var
  nNewItem: Byte;
begin
  inherited;
  nNewItem := cb_backup_db.Items.Count+1;
  Application.CreateForm(Tfr_SettingKoneksi, fr_SettingKoneksi);
  with fr_SettingKoneksi do
    begin
      cNamaKoneksi := 'KONEKSI_'+StrZero(nNewItem,2);
      con_name.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Name','new connection');
      db_host.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Host','localhost');
      db_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Port','3306');
      db_username.Text := '';  //IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'UserName','');
      db_password.Text := '';  //IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Password','');
      db_name_slik.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'DatabaseName','dpm_online');
      db_name_core.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'DatabaseCore','');
      db_host_id.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Id','HO');
      db_ip_vpn.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'HostVPN','');
      chk_online.Checked := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Online','')='Y';
    end;
  fr_SettingKoneksi.Tag := 0;
  fr_SettingKoneksi.ShowModal;
  if (fr_SettingKoneksi.Tag=2) then
    begin
      with fr_SettingKoneksi do
        begin
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Name',con_name.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Host',db_host.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Port',db_port.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'UserName',EncryptPass(db_username.Text));
          if not Empty(db_password.Text) then
            IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Password',EncryptPass(db_password.Text));
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'DatabaseName',db_name_slik.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'DatabaseCore',db_name_core.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Id',db_host_id.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'HostVPN',db_ip_vpn.Text);
          IniSetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nNewItem,2),'Online',IfThen(chk_online.Checked,'Y','N'));
          //add items
          cb_backup_db.Items.Insert(nNewItem-1,con_name.Text);
          cb_backup_db.ItemIndex := nNewItem-1;
          cb_backup_dbChange(Sender);
        end;
      //Tag := 1;
    end;
  fr_SettingKoneksi.Free;
  fr_SettingKoneksi := nil;
end;

procedure Tfr_ProgramSetting.bt_okClick(Sender: TObject);
begin
  inherited;
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridOddFront',IntToStr(ColorGridOddFront.Selected));
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridOddBg',IntToStr(ColorGridOddBg.Selected));
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedFront',IntToStr(ColorGridSelectedFront.Selected));
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedBg',IntToStr(ColorGridSelectedBg.Selected));
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridRow',ColorGridRow.Text);
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridMinFront',IntToStr(ColorGridMinFront.Selected));
  IniSetStringValue(Ogie_FileIni,'Configuration','ColorGridMaxFront',IntToStr(ColorGridMaxFront.Selected));
  cColorGridOddFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridOddFront','0');
  cColorGridOddBg := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridOddBg','15780518');
  cColorGridSelectedFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedFront','16777215');
  cColorGridSelectedBg := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridSelectedBg','16711680');
  cColorGridRow := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridRow','2');
  cColorGridMinFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridMinFront','32768');
  cColorGridMaxFront := IniGetStringValue(Ogie_FileIni,'Configuration','ColorGridMaxFront','255');

  IniSetStringValue(Ogie_FileIni,'Configuration','WebHost',nm_domain.Text);
  IniSetStringValue(Ogie_FileIni,'Configuration','FileSetup',nm_file_setup.Text);
  IniSetStringValue(Ogie_FileIni,'Configuration','ServerPusat',nm_ip_sms.Text);

  IniSetStringValue(GetPathPath + '/update.ini','OgieBPR','1',nm_file_setup.Text);
  IniSetStringValue(GetPathPath + '/update.ini','OgieBPR','JumlahFiles','1');
  IniSetStringValue(GetPathPath + '/update.ini','OgieBPR','Version',nm_versi.Text);

  Tag:=2;
  Close;
end;

procedure Tfr_ProgramSetting.cb_backup_dbChange(Sender: TObject);
begin
  inherited;
  if (cb_backup_db.ItemIndex >= 0) then
    begin
      con_host.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Host','localhost');
      con_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Port','3306');
      //con_username.Text := Decrypt(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'UserName','test'),21);
      con_db.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseName','dpm_online');
      con_db_report.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseCore','');
      con_host_id.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Id','HO');
      con_ip_vpn.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'HostVPN','');
    end;
end;

procedure Tfr_ProgramSetting.bt_cancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_ProgramSetting.FormCreate(Sender: TObject);
var
  i: Byte;
  cMaxKoneksi: string;
begin
  inherited;
  ColorGridOddFront.Selected := StrToInt(cColorGridOddFront);
  ColorGridOddBg.Selected := StrToInt(cColorGridOddBg);
  ColorGridSelectedFront.Selected := StrToInt(cColorGridSelectedFront);
  ColorGridSelectedBg.Selected := StrToInt(cColorGridSelectedBg);
  ColorGridRow.Text := cColorGridRow;
  ColorGridMaxFront.Selected := StrToInt(cColorGridMaxFront);
  ColorGridMinFront.Selected := StrToInt(cColorGridMinFront);

  nm_versi.Text := AmbilVersi;
  nm_domain.Text := IniGetStringValue(Ogie_FileIni,'Configuration','WebHost','');
  nm_file_setup.Text := IniGetStringValue(Ogie_FileIni,'Configuration','FileSetup','MicroBPROnlineSetup.zip');

  nm_ip_sms.Text := IniGetStringValue(Ogie_FileIni,'Configuration','ServerPusat','');
  cMaxKoneksi := IniGetStringValue(Ogie_FileIni,'Configuration','MaxKoneksi','5');
  if Empty(cMaxKoneksi) then
    cMaxKoneksi := '5';

//  ftp_name.Text := IniGetStringValue(Ogie_FileIni,'Configuration','FTPName','');
//  ftp_user.Text := IniGetStringValue(Ogie_FileIni,'Configuration','FTPUser','');
//  ftp_password.Text := '';
//  ftp_folder.Text := IniGetStringValue(Ogie_FileIni,'Configuration','FTPFolder','/public/ftp/upload/');

  cb_backup_db.Items.Clear;
  for i := 1 to StrToInt(cMaxKoneksi) do
    begin
      if Empty(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name','')) then
        begin
          if (i=1) then
            cb_backup_db.Items.Add('KONEKSI_'+StrZero(i,2)+' Empty');
        end
      else
        cb_backup_db.Items.Add(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(i,2),'Name',''));
    end;

  cb_backup_db.ItemIndex := 0;

  if (cb_backup_db.ItemIndex >= 0) then
    begin
      con_host.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Host','localhost');
      con_port.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Port','3306');
      //con_username.Text := Decrypt(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'UserName','root'),21);
      con_db.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseName','dpm_online');
      con_db_report.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'DatabaseCore','');
      con_host_id.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'Id','HO');
      con_ip_vpn.Text := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(cb_backup_db.ItemIndex+1,2),'HostVPN','');
    end;
end;

procedure Tfr_ProgramSetting.ColorGridRowKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in [#8, '0'..'9', '-', FormatSettings.DecimalSeparator]) then
    Key := #0
  else if ((Key = FormatSettings.DecimalSeparator) or (Key = '-')) and
          (Pos(Key, (Sender as TEdit).Text) > 0) then
    Key := #0
  else if (Key = '-') and
          ((Sender as TEdit).SelStart <> 0) then
    Key := #0;
end;

end.
