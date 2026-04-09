program LPSBPR;

uses
  Vcl.Forms,
  System.SysUtils,
  Form_Template in 'Form_Template.pas' {fr_template},
  NewTemplate in 'NewTemplate.pas' {fr_new_template},
  AboutProgram in 'AboutProgram.pas' {fr_AboutLTBPR},
  CekMyPassword in 'CekMyPassword.pas' {fr_CekMyPassword},
  CekPassword in 'CekPassword.pas' {fr_CekPassword},
  DaftarBackupAPOLO in 'DaftarBackupAPOLO.pas' {fr_DaftarBackupAPOLO},
  dm_bpr in 'dm_bpr.pas' {dm_bpr1: TDataModule},
  FormRefAPOLO in 'FormRefAPOLO.pas' {fr_FormRefAPOLO},
  MainMenu in 'MainMenu.pas' {fr_MainMenu},
  MasterRefLTBPR in 'MasterRefLTBPR.pas' {fr_MasterRefAPOLO},
  MyLib in 'MyLib.pas',
  MyVAR in 'MyVAR.pas',
  ProgramSetting in 'ProgramSetting.pas' {fr_ProgramSetting},
  Progress in 'Progress.pas' {fr_Progress},
  SettingKoneksi in 'SettingKoneksi.pas' {fr_SettingKoneksi},
  Wcrypt2 in 'Wcrypt2.pas',
  LoginBPR in 'LoginBPR.pas' {fr_LoginBPR},
  FormA0301 in 'FormA0301.pas' {fr_FormA0301},
  EntryFormA0301 in 'EntryFormA0301.pas' {fr_EntryFormA0301},
  GetSystemDate in 'GetSystemDate.pas' {fr_GetSystemDate};

{$R *.res}

begin
  Application.Initialize;
  Application.Icon.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_BPR.ico');
  Application.Title := 'LPS :: Aplikasi Pelaporan Online LPS';
  Application.CreateForm(Tfr_LoginBPR, fr_LoginBPR);
  Application.Run;
end.
