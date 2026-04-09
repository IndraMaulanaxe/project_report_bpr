program LPS;

uses
  Forms,
  MyOgiLib in 'lps\MyOgiLib.pas',
  OgiesoftVAR in 'lps\OgiesoftVAR.pas',
  LoginLPS in 'LoginLPS.pas' {fr_LoginBPR},
  AboutLPS in 'lps\AboutLPS.pas' {fr_AboutMicroBPROnline},
  LAPBUL_OJK in 'lps\LAPBUL_OJK.pas' {fr_LPS},
  MasterRefLPS in 'lps\MasterRefLPS.pas' {fr_MasterRefLPS},
  GetSystemDate in 'lps\GetSystemDate.pas' {fr_GetSystemDate},
  ProgramSetting in 'lps\ProgramSetting.pas' {fr_ProgramSetting},
  SettingKoneksi in 'lps\SettingKoneksi.pas' {fr_SettingKoneksi},
  AddMemo in 'lps\AddMemo.pas' {fr_AddMemo},
  CekMyPassword in 'lps\CekMyPassword.pas' {fr_CekMyPassword},
  CekPassword in 'lps\CekPassword.pas' {fr_CekPassword},
  DaftarPerkiraan in 'lps\DaftarPerkiraan.pas' {fr_DaftarPerkiraan},
  DaftarBackupLPS in 'lps\DaftarBackupLPS.pas' {fr_DaftarBackupLPS},
  MasterRefATIbyCOA in 'lps\MasterRefATIbyCOA.pas' {fr_MasterRefATIByCOA},
  Vcl.Themes,
  Vcl.Styles,
  dm_bpr in 'dm_bpr.pas' {dm_bpr1: TDataModule},
  Wcrypt2 in 'Wcrypt2.pas',
  Progress in 'Progress.pas' {fr_Progress},
  Form_Template in 'lps\Form_Template.pas' {fr_template},
  EntryFormLps0004 in 'lps\EntryFormLps0004.pas' {fr_EntryFormLps0004},
  FormLps0004 in 'lps\FormLps0004.pas' {fr_FormLps0004},
  FormLps0003 in 'lps\FormLps0003.pas' {fr_FormLps0003},
  EntryFormLps0003 in 'lps\EntryFormLps0003.pas' {fr_EntryFormLps0003},
  EntryFormLps0001 in 'lps\EntryFormLps0001.pas' {fr_EntryFormLPS0001},
  FormLpsDk0004 in 'lps\FormLpsDk0004.pas' {fr_FormLPSDk0004},
  EntryFormLpsDk0004 in 'lps\EntryFormLpsDk0004.pas' {fr_EntryFormLpsDk0004},
  FormLps0002 in 'lps\FormLps0002.pas' {fr_FormLps0002},
  EntryFormLps0002 in 'lps\EntryFormLps0002.pas' {fr_EntryFormLps0002},
  FormLps0001 in 'lps\FormLps0001.pas' {fr_FormLPS0001};

//UserList in 'UserList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'LPS :: Aplikasi Pelaporan Online LPS';
  Application.CreateForm(Tfr_LoginBPR, fr_LoginBPR);
  Application.Run;
end.
