unit dm_bpr;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DASQLMonitor, MyDacMonitor,
  MySQLMonitor, MyDacVcl, DADump, MyDump, DALoader, MyLoader, MyBackup,
  DAScript, MyScript, ADODB, Dialogs, sDialogs, QExport4,
  QExport4XLS, QExport4Dialog, MemData, frxClass, frxDBSet, frxDesgn,
  RpRenderRTF, RpRenderText, RpRender, RpRenderPDF, RpBase, RpFiler, RpSystem,
  RpDefine, RpRave, RpCon, RpConDS, ImgList, Controls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ipwcore, ipwipinfo,
  frxExportCSV, frxExportXLSX, frxExportPDF, QExport4Xlsx, frxExportBaseDialog,
  System.ImageList;

type
  Tdm_bpr1 = class(TDataModule)
    MyQuery1: TMyQuery;
    MySQLMonitor1: TMySQLMonitor;
    MyCon2: TMyConnection;
    MyConnectDialog1: TMyConnectDialog;
    MyBackup1: TMyBackup;
    MyLoader1: TMyLoader;
    MyScript1: TMyScript;
    MyQLapKodeKantor: TMyQuery;
    MyCommand1: TMyCommand;
    MyQueryDump: TMyQuery;
    MyQkode_kantor: TMyQuery;
    dsMyQkode_kantor: TMyDataSource;
    MyQueryTemp: TMyQuery;
    sSaveDialog1: TsSaveDialog;
    QExport4XLS1: TQExport4XLS;
    QExport4Dialog1: TQExport4Dialog;
    MyQLapKodeKantorkode_kantor: TStringField;
    MyQLapKodeKantorkode_cabang: TStringField;
    MyQLapKodeKantornama_kantor: TStringField;
    MyQLapKodeKantornama_database: TStringField;
    MyQuery2: TMyQuery;
    MyQUserInduk: TMyQuery;
    dsUserInduk: TMyDataSource;
    MyQuery3: TMyQuery;
    MyQTableList: TMyQuery;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ImageList4: TImageList;
    IdHTTP1: TIdHTTP;
    MyQLapKodeKantorUser: TMyQuery;
    MyQLapKodeKantorUserkode_kantor: TStringField;
    MyQLapKodeKantorUsernama_kantor: TStringField;
    MyQLapKodeKantorUsernama_database: TStringField;
    dsLapKodeKantorUser: TMyDataSource;
    dsLapKodeKantor: TMyDataSource;
    sOpenDialog1: TsOpenDialog;
    QExport4Xlsx1: TQExport4Xlsx;
    procedure MySQLMonitor1SQL(Sender: TObject; Text: string;
      Flag: TDATraceFlag);
    procedure QExport4XLS1EndExport(Sender: TObject);
    procedure MyCon2AfterConnect(Sender: TObject);
    procedure MyCon1XAfterConnect(Sender: TObject);
    procedure MyCon2Error(Sender: TObject; E: EDAError; var Fail: Boolean);
    procedure MyCon2ConnectionLost(Sender: TObject; Component: TComponent;
      ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
    procedure MyCon2BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_bpr1: Tdm_bpr1;


implementation

uses
 MyVAR, MyLib;

{$R *.dfm}


procedure Tdm_bpr1.MyCon1XAfterConnect(Sender: TObject);
begin
  MemDS.LocateExOldBehavior := True;
end;

procedure Tdm_bpr1.MyCon2AfterConnect(Sender: TObject);
begin
  MemDS.LocateExOldBehavior := True;
end;

procedure Tdm_bpr1.MyCon2BeforeConnect(Sender: TObject);
var
  cTempUser, cTempPasswd: string;
begin
  if (nConIndex >= 0) then
    begin
      dm_bpr1.MyCon2.Server := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nConIndex+1,2),'Host','localhost');
      dm_bpr1.MyCon2.Port := StrToInt(IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nConIndex+1,2),'Port','3306'));

      cTempUser := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nConIndex+1,2),'UserName','root'); //Trim(log_user.Text);
      if not Empty(cTempUser) then
        cTempUser := DecryptPass(cTempUser);
      dm_bpr1.MyCon2.UserName := cTempUser;

      cTempPasswd := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nConIndex+1,2),'Password','');
      if not Empty(cTempPasswd) then
        cTempPasswd := DecryptPass(cTempPasswd);
      dm_bpr1.MyCon2.Password := cTempPasswd;

      dm_bpr1.MyCon2.Database := IniGetStringValue(Ogie_FileIni,'KONEKSI_'+StrZero(nConIndex+1,2),'DatabaseName','');
      dm_bpr1.MyCon2.LoginPrompt := False;
    end;
end;

procedure Tdm_bpr1.MyCon2ConnectionLost(Sender: TObject; Component: TComponent;
  ConnLostCause: TConnLostCause; var RetryMode: TRetryMode);
begin
  RetryMode := rmReconnect;
  AppendOrWriteTextToFile(GetPathPath + 'MicroBPROnline.err', 'Connection Lost' + DateIndo(Now) + ' ' + FormatDateTime('hh:mm:nn', Now));
end;

procedure Tdm_bpr1.MyCon2Error(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  AppendOrWriteTextToFile(GetPathPath + 'Apolo.err', E.Message + DateIndo(Now) + ' ' + FormatDateTime('hh:mm:nn', Now));
end;

procedure Tdm_bpr1.MySQLMonitor1SQL(Sender: TObject; Text: string;
  Flag: TDATraceFlag);
begin
//  Pesan(1,Text);
end;

procedure Tdm_bpr1.QExport4XLS1EndExport(Sender: TObject);
begin
  Pesan(1,'Data telah berhasil di export ke file '+QExport4XLS1.FileName);
end;

end.
