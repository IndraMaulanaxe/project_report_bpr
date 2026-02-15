program LTBPR;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Form_Template in 'Form_Template.pas' {fr_template},
  NewTemplate in 'NewTemplate.pas' {fr_new_template},
  AboutProgram in 'AboutProgram.pas' {fr_AboutLTBPR},
  CekMyPassword in 'CekMyPassword.pas' {fr_CekMyPassword},
  CekPassword in 'CekPassword.pas' {fr_CekPassword},
  DaftarBackupAPOLO in 'DaftarBackupAPOLO.pas' {fr_DaftarBackupAPOLO},
  dm_bpr in 'dm_bpr.pas' {dm_bpr1: TDataModule},
  FormKP2000 in 'FormKP2000.pas' {fr_FormKP2000},
  FormRefAPOLO in 'FormRefAPOLO.pas' {fr_FormRefAPOLO},
  GetSystemDate in 'GetSystemDate.pas' {fr_GetSystemDate},
  MainMenu in 'MainMenu.pas' {fr_MainMenu},
  MasterRefLTBPR in 'MasterRefLTBPR.pas' {fr_MasterRefAPOLO},
  MyLib in 'MyLib.pas',
  MyVAR in 'MyVAR.pas',
  ProgramSetting in 'ProgramSetting.pas' {fr_ProgramSetting},
  Progress in 'Progress.pas' {fr_Progress},
  SettingKoneksi in 'SettingKoneksi.pas' {fr_SettingKoneksi},
  Wcrypt2 in 'Wcrypt2.pas',
  LoginBPR in 'LoginBPR.pas' {fr_LoginBPR},
  FormE0100 in 'FormE0100.pas' {fr_FormE0100},
  FormA0301 in 'FormA0301.pas' {fr_FormA0301},
  FormA05072 in 'FormA05072.pas' {fr_FormA05072},
  FormA0506 in 'FormA0506.pas' {fr_FormA0506},
  FormA0502 in 'FormA0502.pas' {fr_FormA0502},
  FormA0304 in 'FormA0304.pas' {fr_FormA0304},
  EntryFormE0100 in 'EntryFormE0100.pas' {fr_EntryFormE0100},
  EntryFormA05072 in 'EntryFormA05072.pas' {fr_EntryFormA05072},
  EntryFormA0506 in 'EntryFormA0506.pas' {fr_EntryFormA0506},
  EntryFormA0502 in 'EntryFormA0502.pas' {fr_EntryFormA0502},
  EntryFormA0304 in 'EntryFormA0304.pas' {fr_EntryFormA0304},
  EntryFormA0301 in 'EntryFormA0301.pas' {fr_EntryFormA0301},
  EntryFormKP2000 in 'EntryFormKP2000.pas' {fr_EntryForm2000},
  EntryFormE0201 in 'EntryFormE0201.pas' {fr_EntryFormE0201},
  FormE0201 in 'FormE0201.pas' {fr_FormE0201};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfr_LoginBPR, fr_LoginBPR);
  Application.Run;
end.
