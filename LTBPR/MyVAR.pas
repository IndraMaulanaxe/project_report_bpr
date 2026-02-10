unit MyVAR;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Dialogs,
    Forms, IniFiles, Registry, StrUtils, Math, Wininet, URLMon, WinSvc, WinSock,
    DateUtils, ShlObj, ClipBrd, StdCtrls, ImageHlp, ShellApi, SHFolder, ComCtrls,
    sGauge, ipwcore, ipwhttp, ipwipinfo, ipcxmlencrypt, ipcezcrypt,
    IdHashMessageDigest, idHash;

function ConvertStringToPChar(StringValue: String): PwideChar ;
function BoolToBitStr(lflag: Boolean): String;
function BitToBoolean(nBit: Integer): Boolean;
function At(cCari,cText: String): Integer;
function SubStr(cString: String; nStart, nlen: integer): string;
function Rat(cCari, cText: String): Integer;
function LastWord(cCari: String): string;
function IniGetStringValue(TheIniFile, IniSection, StringName, DefaultString: String): String;
function IniSetStringValue(TheIniFile, IniSection, StringName, StringValue : String): Boolean;
function IniDelStringValue(TheIniFile, IniSection, StringName : String): Boolean;
function IniDelSectionString(TheIniFile, IniSection : String): Boolean;
function Replicate(c: char; nlen: integer): string;
function StrZero(nNo, nLen: integer): String;
function SecToTime(Sec: Integer): String;
function FindWindowByTitle(WindowTitle: string): Hwnd;
function GetLocalComputerName: String;
function Empty(cString: String): Boolean;
procedure DrawMyDesktop;
procedure ScreenShot(Bild: TBitMap);
procedure ScreenShotTopWindow(hWindow: HWND; bm: TBitmap);
procedure ScreenShotActiveWindow(Bild: TBitMap);
function AttachToFile(const AFileName: String; MemoryStream: TMemoryStream): Boolean;
function LoadFromFile(const AFileName: String; MemoryStream: TMemoryStream): Boolean;
procedure SaveDate(const sKey: string; const sField: string; aDate: TDateTime);
function ReadDate(const sKey: string; const sField: string) : TDateTime;
function Num2Rupiah( nRp: Double; lRupiah: Boolean = True): String;
function LeftStr(cString: String; nlen: integer): string;
function DateToStrSQL(dTgl: TDate): String;
function DateTimeToStrSQL(dTgl: TDateTime): String;
function TimeToStrSQL(dTgl: TTime): String;
function AmbilVersi(): string;
function Get_MACAddress: string;
function DownloadURL(const aUrl: string): Boolean;
function DownloadFile(SourceFile, DestFile: string): Boolean;
function ServiceGetStatus(sMachine,sService: string ): DWord;
function ServiceRunning(sMachine,sService: string ): boolean;
function ServiceStopped(sMachine,sService: string ): boolean;
function ServiceStart(sMachine,sService: string ): boolean;
function ServiceStop(sMachine,sService: string ): boolean;
function PosStr(cString: String; nStart: integer): string;
function IsValidEmail(const Value: string): Boolean;
function GetPathPath: string;
function MonthIndo(dTgl: TDateTime): String;
function DateIndo(dTgl: TDateTime): String;
Function IniGetFontValue(TheIniFile : String; IniSection : String; StringName : String; DefaultFont : TFont): TFont;
Function IniSetFontValue(TheIniFile : String; IniSection : String; StringName : String; FontValue : TFont): Boolean;
procedure Str2Array(const Delimiter: Char; Input: string; const Strings: TStrings);
function  _IsConnectedToInternet: Boolean;
function CoCreateGuid(var guid: TGUID): HResult; stdcall; far external 'ole32.dll';
Function Encrypt(const s: String; CryptInt: Integer): String;
Function Decrypt(const s: String; CryptInt: Integer): String;
function EncryptPass(cPass: String): String;
function DecryptPass(cPass: String): String;
Function RegRead (Mykey,MyField : String) : String;
Procedure RegWrite (Mykey,MyField,MyValue : String);
function Pesan(nId: Integer; cMessage: String): Boolean;
function IsPrevInst: Boolean;
function HariIndo(dTgl: TDateTime): String;
function GetTempFile(const Extension: string): string;
procedure CopyFilesToClipboard(FileList: string);
function IsWinXP: Boolean;
function IsWinVista: Boolean;
function IsStrANumber(const S: String): Boolean;
procedure TurnSysKeysOff;
procedure TurnSysKeysBackOn;
procedure EnableCTRLALTDEL(YesNo: boolean);
procedure ShowStartButton(bvisible : boolean);
procedure ReplaceText(edit: TCustomEdit; strOLD, strNEW: string);
function Replace(Dest, SubStr, Str: string): string;
function ReplaceStr(cText, strOLD, strNEW: string): String;
function LoadAndRunDLLProcedure(sDLL, sFunc : string ): boolean;
procedure ListDLLExports(const FileName: string; List: TStrings);
function RecycleFile(sFileName: string): Boolean;
function BulanRomawi(nBulan: Byte): String;
function RightPad(S: string; Ch: Char; Len: Integer): string;
function RightStr(Const Str: String; Size: Word): String;
function GetSerialHDD(cDrive: string): string;
function CopyDir(von,zieldir: String): boolean;
function MoveDir(von,zieldir: String): boolean;
function DelDir(dir: String): boolean;
procedure ShellFileOperation(fromFile: string; toFile: string; Flags: Integer);
function IsFileInUse(fName : string) : boolean;
procedure FileReplaceString(const FileName, searchstring, replacestring: string);
function AppendOrWriteTextToFile(filename:TFilename; WriteText:String): Boolean;
function GetLoginName: string;
function GetLocalIP: string;
Function GetArgCount(cText, cPembatas: string): Integer;
function GetArg(cText: string; nPos: Integer; cPembatas: string): string;
function md5(const Input: String): String;
function getmd5(SourceString: string): string;
function GetIPFromHost
  (var HostName, IPaddr, WSAErr: string): Boolean;
function MyPassInputQuery(const ACaption, APrompt: string;
  var Value: string): Boolean;
function MyPassInputBox(const ACaption, APrompt, ADefault: string): string;
function GetAveCharSize(Canvas: TCanvas): TPoint;
procedure DeleteIECache;
function SplitFile(FileName : TFileName; FilesByteSize : Integer): string;
procedure MergeFiles(FirstSplitFileName, OutFileName : TFileName);
function upload_file(remote_server,directory,local_file,remote_file,user,pass: PwideChar): boolean;
function download_file(remote_server, //by Rot1
                     directory,
                     remote_file,
                     local_file,
                     user,
                     pass: PwideChar): boolean;
function IsWrongIP(ip: string): boolean;
function CtrlDown : Boolean;
function ShiftDown : Boolean;
function AltDown : Boolean;
function SecondsIdle: DWord;
function UserInGroup(Group :DWORD) : Boolean;
function DeleteLineBreaks(const S: string): string;
function GetComputerNetName: string;
function GetUserFromWindows: string;
function GetTextFromFile(AFile: String; var ReturnString: string): Boolean;
function GetSpecialFolderPath(folder : integer): string;
procedure CaptureScreen(ABitmap: TBitmap);
procedure CaptureScreenToFile(const AFilename: string);
procedure CaptureScreenActiveWindowToFile(hWindow: HWND; const AFilename: string);
function GetFirstLine(var Text:string):string;
function FtpDownloadFile(strHost, strUser, strPwd: string;
  Port: Integer; ftpDir, ftpFile, TargetFile: string; GaugeBar: TsGauge): Boolean;
procedure CallDLLProses(DLLName, FunctionName: String; IndexFrom: Integer);
function CallDLLProsesValue(DLLName, FunctionName, ValueProc, ValueParam, ValueSecParam: String;
  IndexFrom: Integer): String;
procedure VarArraySaveFile(const FileName: string ; varData : Variant);

var
  nDuration, nConIndex: Integer;
  cCurrentVersion,cNewVersion,cNamaUser,cCabangID,cNamaPT,cTmpSQL,cLocation,
  cAlamatPT,cKotaPT,cTelpPT,cBahasa,cPesanBahasa,cKodeKas,cNamaKas,cMaxRow,cUserID,cUserInitial,
  cUserEmail,
  cColorGridOddFront,cColorGridOddBg,cColorGridSelectedFront,cColorGridSelectedBg,
  cColorGridRow,cColorGridMinFront,cColorGridMaxFront,cFontJudulForm,cNo_Reff, cKodeKasUtama, cNamaKasUtama,
  cUserIDDelegasiFrom,cMyIPPublic,cKodeCabang,cUserIDHeadIT,cRegIDGCM,cOtorisasiAndroid: String;
  Ogie_FileIni, cNamaRaveReport, cOtorisatorParameter, cDb1, cDb2, cDb3, cDb4, cDb5, cDb6,
  cParamWhere, cKolekBI, cTempSQL, cPerpanjangan, cSandiCabang,
  cNamaLengkapUser, cNamaCabangPT, cKodeBankPT, cWebMailNotif, cIPAddress : String;
  lGridColor,lHabis,lRegistered,lBackDate,lSaldoAwalNeraca, lIsUserAdmin,
  lLogDebug: Boolean;
  dTglExpiredPassword, dTglSystem, dTgllSaldoAwalNeraca: TDate;
  cScriptSQL: TStrings;
  lLooping, lChange, lUpdate: Boolean;
  nRetry: Byte;
  dTglSLIK_D01, dTglSLIK_D02, dTglSLIK_F01, dTglSLIK_A01, dTglSLIK_P01,
  dTglSLIK_M01, dTglSLIK_K01, dTglSLIK_S01: TDate;
  nJumlahRealisasiBulanIni, njumlahDenda, nbaki_debet, nTunggakanPokok, nTunggakanBunga : Double;
  nDueDays, ft_tunggakan_bi, lTotal : Integer;

implementation

uses
  wcrypt2, jpeg;

type
  ESMTP = class (Exception);

Const
 SECURITY_NT_AUTHORITY: TSIDIdentifierAuthority = (Value: (0, 0, 0, 0, 0, 5));
 SECURITY_BUILTIN_DOMAIN_RID = $00000020;
 DOMAIN_ALIAS_RID_ADMINS     = $00000220;
 DOMAIN_ALIAS_RID_USERS      = $00000221;
 DOMAIN_ALIAS_RID_GUESTS     = $00000222;
 DOMAIN_ALIAS_RID_POWER_USERS= $00000223;

function CheckTokenMembership(TokenHandle: THandle; SidToCheck: PSID; var IsMember: BOOL): BOOL; stdcall; external advapi32;

function  UserInGroup(Group :DWORD) : Boolean;
 var
  pIdentifierAuthority :TSIDIdentifierAuthority;
  pSid : Windows.PSID;
  IsMember    : BOOL;
 begin
  pIdentifierAuthority := SECURITY_NT_AUTHORITY;
  Result := AllocateAndInitializeSid(pIdentifierAuthority,2, SECURITY_BUILTIN_DOMAIN_RID, Group, 0, 0, 0, 0, 0, 0, pSid);
  try
    if Result then
      if not CheckTokenMembership(0, pSid, IsMember) then //passing 0 means which the function will be use the token of the calling thread.
         Result:= False
      else
         Result:=IsMember;
  finally
     FreeSid(pSid);
  end;
 end;



function GetLoginName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetUserName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

function GetSerialHDD(cDrive: string): string;
var
  SerialNum: DWord;
  A,B: DWord;
  C: array [0..255] of Char;
  Buffer: array [0..255] of Char;
begin
  if GetVolumeInformation(
    PwideChar(cDrive),
    Buffer,
    256,
    @SerialNum,
    A,
    B,
    C,
    256) then Result :=IntToHex(SerialNum,8)
    else Result := '';
end;

function RightStr(Const Str: String; Size: Word): String;
begin
 if Size > Length(Str) then Size := Length(Str);
 RightStr := Copy(Str, Length(Str)-Size+1, Size)
end;

function RightPad(S: string; Ch: Char; Len: Integer): string;
var
  RestLen: Integer;
begin
  Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := StringOfChar(Ch, RestLen) + S;
end;

function ConvertStringToPChar(StringValue: String): PwideChar ;
Var
  PCharString: Array[0..255] of Char;
Begin
  Result := StrPCopy(PCharString,StringValue);
End;

function BoolToBitStr(lflag: Boolean): String;
Begin
  if lflag then
    Result := '1'
  else
    Result := '0'
End;

function BitToBoolean(nBit: Integer): Boolean;
Begin
  if nBit=1 then
    Result := True
  else
    Result := False;
End;

function At(cCari, cText: String): Integer;
begin
   Result := Pos(cCari,cText);
end;

function SubStr(cString: String; nStart, nlen: integer): string;
var
  nlen2: integer;
begin
  nlen2 := Length(cString)-(nStart-1);
  if (nlen > nlen2) then
    nlen := nlen2
  else if (nlen < 1) then
    nlen := 1;
  Result := Copy(cString,nStart,nlen);
end;

function Rat(cCari, cText: String): Integer;
var
 nPos, nlen: Integer;
 cTmp: string;
begin
   nlen := 0;
   cTmp := cText;
   nPos := At(cTmp, cText);
   while nPos > 0 do
   begin
     nlen := nlen + nPos;
     cTmp := SubStr(cTmp, nPos + 1, Length(cText));
     nPos := At(cCari, cTmp);
   end;
   Result := nlen;
//   nlen := Length(cText);
//   while nlen > 0 do
//   begin
//     if (cText[nlen]=cCari) then
//        begin
//          Result := nlen;
//          Exit;
//        end;
//     Dec(nlen);
//   end;
//   Result := nlen;
end;

function LastWord(cCari: String): string;
begin
  Result := Trim(SubStr(cCari,Rat(' ',cCari),Length(cCari)));
end;

function IniGetStringValue(TheIniFile, IniSection, StringName, DefaultString: String): String;
Var
   TheIni : TIniFile;
Begin
   TheIni := TIniFile.Create( TheIniFile );
   Try
     Result :=
       TheIni.ReadString(
         IniSection,
         StringName,
         DefaultString) ;
     If Result = '' Then
        Result := DefaultString;
   Finally
     TheIni.Free;
   End;
End;

function IniSetStringValue(TheIniFile, IniSection, StringName, StringValue : String): Boolean;
Var
   TheIni : TIniFile;
Begin
   TheIni := TIniFile.Create( TheIniFile ) ;
   Try
     Try
       TheIni.WriteString(
         IniSection,
         StringName,
         StringValue);
       Result := True;
     Except
       Result := False;
     End;
   Finally
     TheIni.Free;
   End;
End;

function IniDelStringValue(TheIniFile, IniSection, StringName : String): Boolean;
Var
   TheIni : TIniFile;
Begin
   TheIni := TIniFile.Create( TheIniFile ) ;
   Try
     Try
       TheIni.DeleteKey(
         IniSection,
         StringName);
       Result := True;
     Except
       Result := False;
     End;
   Finally
     TheIni.Free;
   End;
end;

function IniDelSectionString(TheIniFile, IniSection : String): Boolean;
Var
   TheIni : TIniFile;
Begin
   TheIni := TIniFile.Create( TheIniFile ) ;
   Try
     Try
       TheIni.EraseSection(
         IniSection);
       Result := True;
     Except
       Result := False;
     End;
   Finally
     TheIni.Free;
   End;
end;

function Replicate(c: char; nlen: integer): string;
var
  i: integer;
begin
  Result:='';
  for i := 1 to nlen do
    Result := Result+c;
end;

function StrZero(nNo, nLen: integer): String;
var
  nLenght: Integer;
begin
   nLenght := Length(Trim(IntToStr(nNo)));
   Result  := Replicate('0',nLen-nLenght)+IntToStr(nNo);
end;

function SecToTime(Sec: Integer): String;
var
  Hr, Mn, Sc: String;
  zHr, zMn, zSc: Integer;
begin
  zHr := Sec div 3600;
  zMn := Sec div 60-zHr*60;
  zSc := Sec - (zHr*3600+zMn*60);
  Hr := StrZero(zHr,2);
  Mn := StrZero(zMn,2);
  Sc := StrZero(zSc,2);
  Result := Hr+':'+Mn+':'+Sc
end;

function FindWindowByTitle(WindowTitle: string): Hwnd;
var
  NextHandle: Hwnd;
  NextTitle: array[0..260] of char;
begin
  NextHandle := GetWindow(Application.Handle, GW_HWNDFIRST);
  while NextHandle > 0 do begin
    GetWindowText(NextHandle, NextTitle, 255);
    if pos(WindowTitle, StrPas(NextTitle)) <> 0 then
    begin
      result := NextHandle;
      exit;
    end else
      NextHandle := GetWindow(NextHandle, GW_HWNDNEXT);
  end;
  result := 0;
end;

function GetLocalComputerName: String;
Var
  aLength           : DWORD;
  aLocalComputerName: Array[0..MAX_PATH - 1] Of Char;
begin
  aLength := MAX_COMPUTERNAME_LENGTH + 1;
  GetComputerName(aLocalComputerName, aLength);
  Result := aLocalComputerName;
end;

function Empty(cString: String): Boolean;
begin
  if Trim(cString)=EmptyStr then
    Result := True
  else
    Result := False;
end;

procedure DrawMyDesktop;
var
  Picture : TPicture;
  Desktop : TCanvas;
  X, Y    : Integer;
begin
  // create objects
  Picture := TPicture.Create;
  Desktop := TCanvas.Create;
  // load bitmap
  //Picture.Graphic.
  ScreenShot(Picture.Bitmap);
  // get DC of desktop
  Desktop.Handle := GetWindowDC(0);
  // position of bitmap
  X := 0;
  Y := 0;
  // draw bitmap
  Desktop.Draw(X, Y, Picture.Graphic);
  ReleaseDC(0, Desktop.Handle);
  // release objects
  Picture.Free;
  Desktop.Free;
end;

procedure ScreenShot(Bild: TBitMap);
var
  c: TCanvas;
  r: TRect;
begin
 c:= TCanvas.Create;
 c.Handle:= GetWindowDC (GetDesktopWindow);
 try
  r:= Rect(0,0,screen.width,screen.height);
  Bild.Width:=screen.Width;
  Bild.Height:=screen.Height;
  Bild.Canvas.CopyRect(r, c, r);
 finally
  ReleaseDC(0, c.handle);
  c.Free;
 end;
end;

procedure ScreenShotTopWindow(hWindow: HWND; bm: TBitmap);
var
  Left, Top, Width, Height: Word;
  R: TRect;
  dc: HDC;
  lpPal: PLOGPALETTE;
begin
  {Check if valid window handle}
  if not IsWindow(hWindow) then Exit;
  {Retrieves the rectangular coordinates of the specified window}
  GetWindowRect(hWindow, R);
  Left := R.Left;
  Top := R.Top;
  Width := R.Right - R.Left;
  Height := R.Bottom - R.Top;
  bm.Width  := Width;
  bm.Height := Height;
  {get the screen dc}
  dc := GetDc(0);
  if (dc = 0) then 
  begin
    Exit;
  end;
  {do we have a palette device?}
  if (GetDeviceCaps(dc, RASTERCAPS) and
    RC_PALETTE = RC_PALETTE) then 
  begin
    {allocate memory for a logical palette}
    GetMem(lpPal,
      SizeOf(TLOGPALETTE) +
    (255 * SizeOf(TPALETTEENTRY)));
    {zero it out to be neat}
    FillChar(lpPal^,
      SizeOf(TLOGPALETTE) +
    (255 * SizeOf(TPALETTEENTRY)),
      #0);
    {fill in the palette version}
    lpPal^.palVersion := $300;
    {grab the system palette entries}
    lpPal^.palNumEntries :=
      GetSystemPaletteEntries(dc,
      0,
      256,
      lpPal^.palPalEntry);
    if (lpPal^.PalNumEntries <> 0) then 
    begin
      {create the palette}
      bm.Palette := CreatePalette(lpPal^);
    end;
    FreeMem(lpPal, SizeOf(TLOGPALETTE) +
    (255 * SizeOf(TPALETTEENTRY)));
  end;
  {copy from the screen to the bitmap}
  BitBlt(bm.Canvas.Handle,
    0,
    0,
    Width,
    Height,
    Dc,
    Left,
    Top,
    SRCCOPY);
  {release the screen dc}
  ReleaseDc(0, dc);
end;

procedure ScreenShotActiveWindow(Bild: TBitMap);
var
  c: TCanvas;
  r, t: TRect;
  h: THandle;
begin
 c:= TCanvas.Create;
 c.Handle:= GetWindowDC (GetDesktopWindow);
 h:=GetForeGroundWindow;
 if h<>0 then
 GetWindowRect(h, t);
 try
  r:= Rect(0,0,t.Right-t.left,t.Bottom-t.Top);
  Bild.Width:=t.Right-t.left;
  Bild.Height:=t.Bottom-t.Top;
  Bild.Canvas.CopyRect(r, c, t);
 finally
  ReleaseDC(0, c.handle);
  c.Free;
 end;
end;

function AttachToFile(const AFileName: String; MemoryStream: TMemoryStream): Boolean;
var
  aStream: TFileStream;
  iSize: Integer;
begin
  Result := False;
  aStream := nil;
  if not FileExists(AFileName) then
    Exit;
  try
    aStream := TFileStream.Create(AFileName, fmOpenWrite or fmShareDenyWrite);
    MemoryStream.Seek(0, soFromBeginning);
    // seek to end of File
    aStream.Seek(0, soFromEnd);
    // copy data from MemoryStream
    aStream.CopyFrom(MemoryStream, 0);
    // save Stream-Size
    iSize := MemoryStream.Size + SizeOf(Integer);
    aStream.Write(iSize, SizeOf(iSize));
  finally
    aStream.Free;
  end;
  Result := True;
end;

function LoadFromFile(const AFileName: String; MemoryStream: TMemoryStream): Boolean;
var
  aStream: TFileStream;
  iSize: Integer;
begin
  Result := False;
  aStream := nil;
  if not FileExists(AFileName) then
    Exit;

  try
    aStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
    // seek to position where Stream-Size is saved
    aStream.Seek( - SizeOf(Integer), soFromEnd);
    aStream.Read(iSize, SizeOf(iSize));
    if iSize > aStream.Size then
    begin
      aStream.Free;
      aStream := nil;
      Exit;
    end;
    // seek to position where data is saved
    aStream.Seek( - iSize, soFromEnd);
    MemoryStream.SetSize(iSize - SizeOf(Integer));
    MemoryStream.CopyFrom(aStream, iSize - SizeOf(iSize));
    MemoryStream.Seek(0, soFromBeginning);
  finally
    aStream.Free;
  end;
  Result := True;
end;

{
procedure TForm1.SaveClick(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  Memo1.Lines.SaveToStream(aStream);
  AttachToFile('Test.exe', aStream);
  aStream.Free;
end;

procedure TForm1.LoadClick(Sender: TObject);
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  LoadFromFile('Test.exe', aStream);
  Memo1.Lines.LoadFromStream(aStream);
  aStream.Free;
end;
}
{
Note:
You can't proof whether additional data is attached or not.
To reach this, you would have to create a checksumm of the
MemoryStream and attach it.
}

procedure SaveDate(const sKey: string; const sField: string; aDate: TDateTime);
begin
  with TRegistry.Create do
  begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey(sKey, True) then
    begin
      WriteBinaryData(sField, aDate, SizeOf(aDate));
      CloseKey;
    end;
    Free;
  end;
end;

function ReadDate(const sKey: string; const sField: string) : TDateTime;
begin
  // default: return 0
  Result := 0;

  with TRegistry.Create do
  begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey(sKey, False) then
    begin
      try
        ReadBinaryData(sField, Result, SizeOf(Result));
      except

      end;
      CloseKey;
    end;
    Free;
  end;
end;

//function Num2Rupiah( nRp: Double; lRupiah: Boolean = True ): String;
//const
//  aSat1 : array[1..6] of string[20] = ('sen','rupiah','ribu','juta','milyar','triliun');
//  aSat2 : array[0..20] of string[20] = ('','satu','dua','tiga','empat','lima',
//     'enam','tujuh','delapan','sembilan','sepuluh','sebelas','dua belas','tiga belas',
//     'empat belas','lima belas','enam belas','tujuh belas','delapan belas','sembilan belas','');
//var
//  i,nSen,nLenRp: Integer;
//  nRupiah: Double;
//  cRp,cSen,cNum,cRupiah: String;
//  aPos: array[1..2] of Integer;
//  lSat: Boolean;
//begin
//  nRupiah := StrToFloat(FormatFloat('#0',nRp));   //Int(nRp);
//  nSen    := StrToInt(FormatFloat('#0',(nRp-nRupiah)*100));  //Int((nRp-nRupiah)*100);
//  nLenRp  := Length(Trim(FormatFloat('#0',nRupiah)));
//  //nLenSen := Length(Trim(IntToStr(nSen)));
//  cRp     := Trim(FormatFloat('#0',nRupiah));
//  cSen    := Trim(IntToStr(nSen));
//  aPos[1] := nLenRp div 3;
//  aPos[2] := nLenRp mod 3;
//  lSat := True;
//
//  cRupiah := '';
//
//  if aPos[2]=0 then
//    begin
//      for i := 1 to aPos[1] do
//        begin
//          cNum := LeftStr(cRp,3);
//          if (cNum='') then
//            lSat := False
//          else if (StrToInt(cNum)=0) then
//            lSat := False else lSat := True;
//          cRp  := RightStr(cRp,nLenRp-(i*3));
//          if (StrToInt(cNum) >= 100) and (StrToInt(cNum) < 200) then
//            cRupiah := cRupiah+' seratus'
//          else if (StrToInt(cNum) >= 200) then
//            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' ratus';
//
//          cNum := PosStr(cNum,2);
//
//          if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
//            cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]
//          else if (StrToInt(cNum) >= 20) then
//            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))];
//            {cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))];
//            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(RightStr(cNum,2)='',20,StrToInt(RightStr(cNum,2)))];}
//
//          if lSat then
//            cRupiah := Trim(cRupiah)+' '+aSat1[(aPos[1]-i)+2];
//        end;
//    end
//  else if aPos[2]>0 then
//    begin
//      cNum := LeftStr(cRp,aPos[2]);
//      cRp  := RightStr(cRp,nLenRp-(aPos[2]));
//      if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
//        begin
//          if (nLenRp=4) and (cNum='1') then
//            cRupiah := cRupiah+' seribu'
//          else
//            cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]+' '+aSat1[aPos[1]+2];
//        end
//      else if (StrToInt(cNum) >= 20) then
//        cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))]+' '+aSat1[aPos[1]+2];
//      for i := 1 to aPos[1] do
//        begin
//          cNum := LeftStr(cRp,3);
//          if (cNum='') then
//            lSat := False
//          else if (StrToInt(cNum)=0) then
//            lSat := False else lSat := True;
//          cRp  := RightStr(cRp,(nLenRp-aPos[2])-(i*3));
//          if (StrToInt(cNum) >= 100) and (StrToInt(cNum) < 200) then
//            cRupiah := cRupiah+' seratus'
//          else if (StrToInt(cNum) >= 200) then
//            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' ratus';
//
//          cNum := PosStr(cNum,2);
//
//          if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
//            cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]
//          else if (StrToInt(cNum) >= 20) then
//            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(StrToInt(PosStr(cNum,2))=0,20,StrToInt(PosStr(cNum,2)))];
//
//          if lSat then
//            cRupiah := Trim(cRupiah)+' '+aSat1[(aPos[1]-i)+2];
//        end;
//    end;
//  cRupiah := cRupiah+IfThen(lSat,' ',IfThen(lRupiah,' rupiah',''));
//
//  if not lRupiah and (Pos('rupiah',cRupiah) > 0) then
//    cRupiah := SubStr(cRupiah,1,Pos('rupiah',cRupiah)-2)+
//      SubStr(cRupiah,Pos('rupiah',cRupiah)+7,Length(cRupiah)-7);
//    //ReplaceText(cRupiah,'rupiah',' ');
//
//  if (StrToInt(cSen) > 0) then
//    begin
//      if not lRupiah then
//        cRupiah := cRupiah + ' koma ';
//      cNum := cSen;
//      if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
//        cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]
//      else if (StrToInt(cNum) >= 20) then
//        cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))];
//      cRupiah := cRupiah;
//      if lRupiah then
//        IfThen(cNum='','sen',' sen');
//    end;
//
//  cRupiah := Trim(cRupiah);     //substr(crupiah,2)
//  cRupiah := UpperCase(LeftStr(cRupiah,1))+PosStr(cRupiah,2);
////  if not lRupiah then
////    cRupiah := LeftStr(cRupiah,Length(cRupiah)-7);
//  Result := cRupiah;
//end;
function Num2Rupiah( nRp: Double; lRupiah: Boolean = True ): String;
const
  aSat1 : array[1..6] of string[20] = ('sen','rupiah','ribu','juta','milyar','triliun');
  aSat2 : array[0..20] of string[20] = ('','satu','dua','tiga','empat','lima',
     'enam','tujuh','delapan','sembilan','sepuluh','sebelas','dua belas','tiga belas',
     'empat belas','lima belas','enam belas','tujuh belas','delapan belas','sembilan belas','');
var
  i,nLenRp: Integer;
  nRupiah,nSen: Int64;
  cRp,cSen,cNum,cRupiah: String;
  aPos: array[1..2] of Integer;
  lSat: Boolean;
begin
  nRupiah := Trunc(nRp);
  //StrToInt(FormatFloat('#0',nRp));   //Int(nRp);
  nSen    := StrToInt(FormatFloat('#0',(nRp-nRupiah)*100));  //Int((nRp-nRupiah)*100);
  nLenRp  := Length(Trim(IntToStr(nRupiah)));
  //nLenSen := Length(Trim(IntToStr(nSen)));
  cRp     := Trim(IntToStr(nRupiah));
  cSen    := Trim(IntToStr(nSen));
  aPos[1] := nLenRp div 3;
  aPos[2] := nLenRp mod 3;
  lSat := True;

  cRupiah := '';

  if aPos[2]=0 then
    begin
      for i := 1 to aPos[1] do
        begin
          cNum := LeftStr(cRp,3);
          if (cNum='') then
            lSat := False
          else if (StrToInt(cNum)=0) then
            lSat := False else lSat := True;
          cRp  := RightStr(cRp,nLenRp-(i*3));
          if (StrToInt(cNum) >= 100) and (StrToInt(cNum) < 200) then
            cRupiah := cRupiah+' seratus'
          else if (StrToInt(cNum) >= 200) then
            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' ratus';

          cNum := PosStr(cNum,2);

          if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
            cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]
          else if (StrToInt(cNum) >= 20) then
            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))];
            {cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))];
            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(RightStr(cNum,2)='',20,StrToInt(RightStr(cNum,2)))];}

          if lSat then
            cRupiah := Trim(cRupiah)+' '+aSat1[(aPos[1]-i)+2];
        end;
    end
  else if aPos[2]>0 then
    begin
      cNum := LeftStr(cRp,aPos[2]);
      cRp  := RightStr(cRp,nLenRp-(aPos[2]));
      if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
        begin
          if (nLenRp=4) and (cNum='1') then
            cRupiah := cRupiah+' seribu'
          else
            cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]+' '+aSat1[aPos[1]+2];
        end
      else if (StrToInt(cNum) >= 20) then
        cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))]+' '+aSat1[aPos[1]+2];
      for i := 1 to aPos[1] do
        begin
          cNum := LeftStr(cRp,3);
          if (cNum='') then
            lSat := False
          else if (StrToInt(cNum)=0) then
            lSat := False else lSat := True;
          cRp  := RightStr(cRp,(nLenRp-aPos[2])-(i*3));
          if (StrToInt(cNum) >= 100) and (StrToInt(cNum) < 200) then
            cRupiah := cRupiah+' seratus'
          else if (StrToInt(cNum) >= 200) then
            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' ratus';

          cNum := PosStr(cNum,2);

          if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
            cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]
          else if (StrToInt(cNum) >= 20) then
            cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(StrToInt(PosStr(cNum,2))=0,20,StrToInt(PosStr(cNum,2)))];

          if lSat then
            cRupiah := Trim(cRupiah)+' '+aSat1[(aPos[1]-i)+2];
        end;
    end;
  cRupiah := cRupiah+IfThen(lSat,' ',IfThen(lRupiah,' rupiah',''));

  if not lRupiah and (Pos('rupiah',cRupiah) > 0) then
    cRupiah := SubStr(cRupiah,1,Pos('rupiah',cRupiah)-2)+
      SubStr(cRupiah,Pos('rupiah',cRupiah)+7,Length(cRupiah)-7);
    //ReplaceText(cRupiah,'rupiah',' ');

  if (StrToInt(cSen) > 0) then
    begin
      if not lRupiah then
        cRupiah := IfThen(Empty(cRupiah),'nol',cRupiah) + ' koma';
      cNum := cSen;
      if (StrToInt(cNum) > 0) and (StrToInt(cNum) < 20) then
        cRupiah := cRupiah+' '+aSat2[StrToInt(cNum)]
      else if (StrToInt(cNum) >= 20) then
        cRupiah := cRupiah+' '+aSat2[StrToInt(LeftStr(cNum,1))]+' puluh '+aSat2[IfThen(PosStr(cNum,2)='',20,StrToInt(PosStr(cNum,2)))];
      cRupiah := cRupiah;
      if lRupiah then
        IfThen(cNum='','sen',' sen');
    end;

  cRupiah := Trim(cRupiah);     //substr(crupiah,2)
  cRupiah := UpperCase(LeftStr(cRupiah,1))+PosStr(cRupiah,2);
//  if not lRupiah then
//    cRupiah := LeftStr(cRupiah,Length(cRupiah)-7);
  Result := cRupiah;
end;

function LeftStr(cString: String; nlen: integer): string;
begin
  if (Length(cString) > nlen) then
    Result := Copy(cString,1,nlen)
  else
    Result := cString;
end;

function DateToStrSQL(dTgl: TDate): String;
var
  cTgl: String;
begin
    cTgl := FormatDateTime('yyyy-mm-dd',dTgl);
    Result := ''''+cTgl+'''';
end;

function DateTimeToStrSQL(dTgl: TDateTime): String;
var
  cTgl: String;
begin
    cTgl := FormatDateTime('yyyy-mm-dd hh:nn:ss',dTgl);
    Result := ''''+cTgl+'''';
end;

function TimeToStrSQL(dTgl: TTime): String;
var
  cTgl: String;
begin
    cTgl := FormatDateTime('hh:nn:ss',dTgl);
    Result := ''''+cTgl+'''';
end;

Function AmbilVersi(): string;
const
  InfoNum = 10;
  InfoStr: array[1..InfoNum] of string = ('CompanyName', 'FileDescription', 'FileVersion', 'InternalName', 'LegalCopyright', 'LegalTradeMarks', 'OriginalFileName', 'ProductName', 'ProductVersion', 'Comments');
var
  S: string;
  n, Len, i: DWORD;
  Buf: PwideChar ;
  Value: PwideChar ;
begin
  S := Application.ExeName;
  n := GetFileVersionInfoSize(PwideChar (S), n);
  if n > 0 then
  begin
    Buf := AllocMem(n);
    GetFileVersionInfo(PwideChar (S), 0, n, Buf);
    i := 3;
      if VerQueryValue(Buf, PwideChar ('StringFileInfo\040904E4\' + InfoStr[i]), Pointer(Value), Len) then
        if (i=3) then
          begin
            Result := Value;
          end;
    FreeMem(Buf, n);
  end;
end;

function Get_MACAddress: string;
var
  g: TGUID;
  i: Byte;
begin
  Result := '';
  CoCreateGUID(g);
  for i := 2 to 7 do
    Result := Result + IntToHex(g.D4[i], 2);
end;

function DownloadURL(const aUrl: string): Boolean;
var
  hSession: HINTERNET;
  hService: HINTERNET;
  lpBuffer: array[0..1024 + 1] of Char;
  dwBytesRead: DWORD;
begin
  Result := False;
  hSession := InternetOpen('Ogiesoft Download', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  try
    if Assigned(hSession) then
    begin
      hService := InternetOpenUrl(hSession, PwideChar (aUrl), nil, 0, 0, 0);
      if Assigned(hService) then
        try
          while True do
          begin
            dwBytesRead := 1024;
            InternetReadFile(hService, @lpBuffer, 1024, dwBytesRead);
            if dwBytesRead = 0 then break;
            lpBuffer[dwBytesRead] := #0;
            //fr_Menu.Memo1.Lines.Add(lpBuffer);
          end;
          Result := True;
        finally
          InternetCloseHandle(hService);
        end;
    end;
  finally
    InternetCloseHandle(hSession);
  end;
end;

function DownloadFile(SourceFile, DestFile: string): Boolean;
begin
  try
    Result := UrlDownloadToFile(nil, PwideChar (SourceFile), PwideChar (DestFile), 0, nil) = 0;
  except
    Result := False;
  end;
end;

//-------------------------------------
// get service status
//
// return status code if successful
// -1 if not
//
// return codes:
//   SERVICE_STOPPED
//   SERVICE_RUNNING
//   SERVICE_PAUSED
//
// following return codes
// are used to indicate that
// the service is in the
// middle of getting to one
// of the above states:
//   SERVICE_START_PENDING
//   SERVICE_STOP_PENDING
//   SERVICE_CONTINUE_PENDING
//   SERVICE_PAUSE_PENDING
//
// sMachine:
//   machine name, ie: \\SERVER
//   empty = local machine
//
// sService
//   service name, ie: Alerter
//
function ServiceGetStatus(sMachine,sService: string ): DWord;
var
  // service control
  // manager handle
  schm,
  // service handle
  schs   : SC_Handle;
  // service status
  ss     : TServiceStatus;
  // current service status
  dwStat : Shortint;//DWord;
begin
  dwStat := -1;
  // connect to the service
  // control manager
  schm := OpenSCManager(
    PwideChar (sMachine),
    Nil,
    SC_MANAGER_CONNECT);

  // if successful...
  if(schm > 0)then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(
      schm,
      PwideChar (sService),
      // we want to
      // query service status
      SERVICE_QUERY_STATUS);

    // if successful...
    if(schs > 0)then
    begin
      // retrieve the current status
      // of the specified service
      if(QueryServiceStatus(
           schs,
           ss))then
      begin
        dwStat := ss.dwCurrentState;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  Result := dwStat;
end;

function ServiceRunning(
  sMachine,
  sService : string ) : boolean;
begin
  Result := SERVICE_RUNNING =
    ServiceGetStatus(
      sMachine, sService );
end;

Function ServiceStopped(
  sMachine,
  sService : string ) : boolean;
begin
  Result := SERVICE_STOPPED =
    ServiceGetStatus(
      sMachine, sService );
end;

function ServiceStart(sMachine,sService: string ): boolean;
var
  // service control
  // manager handle
  schm,
  // service handle
  schs   : SC_Handle;
  // service status
  ss     : TServiceStatus;
  // temp char pointer
  psTemp : PwideChar ;
  // check point
  dwChkP : DWord;
begin
  ss.dwCurrentState := 0;//-1;

  // connect to the service
  // control manager
  schm := OpenSCManager(
    PwideChar (sMachine),
    Nil,
    SC_MANAGER_CONNECT);

  // if successful...
  if(schm > 0)then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(
      schm,
      PwideChar (sService),
      // we want to
      // start the service and
      SERVICE_START or
      // query service status
      SERVICE_QUERY_STATUS);

    // if successful...
    if(schs > 0)then
    begin
      psTemp := Nil;
      if(StartService(
           schs,
           0,
           psTemp))then
      begin
        // check status
        if(QueryServiceStatus(
             schs,
             ss))then
        begin
          while(SERVICE_RUNNING
            <> ss.dwCurrentState)do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;

            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
//            Sleep(ss.dwWaitHint);
            Sleep(500);

            if(not QueryServiceStatus(
                 schs,
                 ss))then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;

            if(ss.dwCheckPoint <
              dwChkP)then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  // return TRUE if
  // the service status is running
  Result :=
    SERVICE_RUNNING =
      ss.dwCurrentState;
end;

function ServiceStop(sMachine,sService: string ): boolean;
var
  //
  // service control
  // manager handle
  schm,
  //
  // service handle
  schs   : SC_Handle;
  //
  // service status
  ss     : TServiceStatus;
  //
  // check point
  dwChkP : DWord;
begin
  // connect to the service
  // control manager
  schm := OpenSCManager(
    PwideChar (sMachine),
    Nil,
    SC_MANAGER_CONNECT);

  // if successful...
  if(schm > 0)then
  begin
    // open a handle to
    // the specified service
    schs := OpenService(
      schm,
      PwideChar (sService),
      // we want to
      // stop the service and
      SERVICE_STOP or
      // query service status
      SERVICE_QUERY_STATUS);

    // if successful...
    if(schs > 0)then
    begin
      if(ControlService(
           schs,
           SERVICE_CONTROL_STOP,
           ss))then
      begin
        // check status
        if(QueryServiceStatus(
             schs,
             ss))then
        begin
          while(SERVICE_STOPPED
            <> ss.dwCurrentState)do
          begin
            //
            // dwCheckPoint contains a
            // value that the service
            // increments periodically
            // to report its progress
            // during a lengthy
            // operation.
            //
            // save current value
            //
            dwChkP := ss.dwCheckPoint;

            //
            // wait a bit before
            // checking status again
            //
            // dwWaitHint is the
            // estimated amount of time
            // the calling program
            // should wait before calling
            // QueryServiceStatus() again
            //
            // idle events should be
            // handled here...
            //
//            Sleep(ss.dwWaitHint);
            Sleep(500);

            if(not QueryServiceStatus(
                 schs,
                 ss))then
            begin
              // couldn't check status
              // break from the loop
              break;
            end;

            if(ss.dwCheckPoint <
              dwChkP)then
            begin
              // QueryServiceStatus
              // didn't increment
              // dwCheckPoint as it
              // should have.
              // avoid an infinite
              // loop by breaking
              break;
            end;
          end;
        end;
      end;

      // close service handle
      CloseServiceHandle(schs);
    end;

    // close service control
    // manager handle
    CloseServiceHandle(schm);
  end;

  // return TRUE if
  // the service status is stopped
  Result :=
    SERVICE_STOPPED =
      ss.dwCurrentState;
end;

function PosStr(cString: String; nStart: integer): string;
var
  nlen: integer;
begin
  nlen := Length(cString);
  Result := Copy(cString,nStart,nlen-(nStart-1));
end;

function IsValidEmail(const Value: string): Boolean;

  function CheckAllowed(const s: string): Boolean;
  var i: Integer;
  begin
    Result:= false;
    for i:= 1 to Length(s) do
      if not (s[i] in ['a'..'z',
                       'A'..'Z',
                       '0'..'9',
                       '_',
                       '-',
                       '.']) then Exit;
    Result:= true;
  end;

var
  i: Integer;
  NamePart, ServerPart: string;
begin
  Result:= False;
  i:=Pos('@', Value);
  if i=0 then Exit;
  NamePart:=Copy(Value, 1, i-1);
  ServerPart:=Copy(Value, i+1, Length(Value));
  if (Length(NamePart)=0) or ((Length(ServerPart)=0)) then Exit;
  i:=Pos('.', ServerPart);
  if (i=0) or (i>(Length(serverPart)-2)) then Exit;
  Result:= CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

function GetPathPath: string;
  { Retrive app path }
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function MonthIndo(dTgl: TDateTime): String;
var
  aBulan: array[1..12] of String;
  nBln: Word;
begin
  aBulan[1] := 'Januari';
  aBulan[2] := 'Pebruari';
  aBulan[3] := 'Maret';
  aBulan[4] := 'April';
  aBulan[5] := 'Mei';
  aBulan[6] := 'Juni';
  aBulan[7] := 'Juli';
  aBulan[8] := 'Agustus';
  aBulan[9] := 'September';
  aBulan[10] := 'Oktober';
  aBulan[11] := 'November';
  aBulan[12] := 'Desember';
  nBln := MonthOf(dTgl);
  Result := aBulan[nBln];
end;

function DateIndo(dTgl: TDateTime): String;
var
  aBulan: array[1..12] of String;
  cTemp: String;
  nBln: Word;
begin
  aBulan[1] := 'Januari';
  aBulan[2] := 'Pebruari';
  aBulan[3] := 'Maret';
  aBulan[4] := 'April';
  aBulan[5] := 'Mei';
  aBulan[6] := 'Juni';
  aBulan[7] := 'Juli';
  aBulan[8] := 'Agustus';
  aBulan[9] := 'September';
  aBulan[10] := 'Oktober';
  aBulan[11] := 'November';
  aBulan[12] := 'Desember';
  cTemp := FormatDateTime('dd/MM/yyyy',dTgl);
  nBln := MonthOf(dTgl);
  Result := LeftStr(cTemp,2)+' '+aBulan[nBln]+' '+PosStr(cTemp,7);
end;

function IniGetFontValue(
   TheIniFile : String;
   IniSection : String;
   StringName : String;
   DefaultFont : TFont): TFont;
Var
   TheIni : TIniFile;
   FontArray: TStringList;
   ctemp,cDefaultValue: String;
Begin
   TheIni := TIniFile.Create( TheIniFile );
   FontArray := TStringList.Create;
   cDefaultValue := DefaultFont.Name + ',' +
         IntToStr(DefaultFont.CharSet) + ',' +
         IntToStr(DefaultFont.Color) + ',' +
         IntToStr(DefaultFont.Size) + ',' +
         IntToStr(Byte(DefaultFont.Style));
   ctemp := IniGetStringValue(TheIniFile,IniSection,StringName,cDefaultValue);

   Try
      Result := TFont.Create;
      Result.Name := LeftStr(ctemp,At(',',ctemp)-1);
        ctemp := SubStr(ctemp,At(',',ctemp)+1,Length(ctemp));
        Str2Array(',',ctemp, FontArray);
      Result.CharSet := TFontCharSet(StrToInt(FontArray[0]));
      Result.Color := TColor(StrToInt(FontArray[1]));
      Result.Size := StrToInt(FontArray[2]);
      Result.Style := TFontStyles(Byte(StrToInt(FontArray[3])));
   Finally
     TheIni.Free;
     FontArray.Free;
   End;
End;

function IniSetFontValue(
   TheIniFile : String;
   IniSection : String;
   StringName : String;
   FontValue : TFont): Boolean;
Var
   TheIni : TIniFile;
Begin
   TheIni := TIniFile.Create( TheIniFile ) ;
   Try
     Try
       TheIni.WriteString(
         IniSection,
         StringName,
         FontValue.Name + ',' +
         IntToStr(FontValue.CharSet) + ',' +
         IntToStr(FontValue.Color) + ',' +
         IntToStr(FontValue.Size) + ',' +
         IntToStr(Byte(FontValue.Style))
         ) ;
       Result := True;
     Except
       Result := False;
     End;
   Finally
     TheIni.Free;
   End;
end;

procedure Str2Array
  (const Delimiter: Char;
   Input: string;
   const Strings: TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := ',';
  Strings.DelimitedText := Input;
end;

function  _IsConnectedToInternet: Boolean;
var
  dwConnectionTypes: DWORD;
begin
  try
    dwConnectionTypes := INTERNET_CONNECTION_MODEM +
                         INTERNET_CONNECTION_LAN +
                         INTERNET_CONNECTION_PROXY;
    if InternetGetConnectedState(@dwConnectionTypes, 0) then
      Result := true
    else
      Result := false;
  except
    Result := false;
  end;
end;

Function Encrypt(const s: String; CryptInt: Integer): String;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) + CrypTint);
  Result := s2;
end;

Function Decrypt(const s: String; CryptInt: Integer): String;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) - cryptint);
  Result := s2;
end;

function EncryptPass(cPass: String): String;
var
  ipcEzCrypt1: TipcEzCrypt;
begin
  ipcEzCrypt1 := TipcEzCrypt.Create(nil);
  if not Empty(cPass) then
    begin
      ipcEzCrypt1.Algorithm := TipcEzCryptAlgorithms(0);
      ipcEzCrypt1.UseHex := true;
      ipcEzCrypt1.InputMessage := cPass;
      ipcEzCrypt1.KeyPassword := 'top-cbs';
      ipcEzCrypt1.Encrypt();
      cPass := ipcEzCrypt1.OutputMessage;
    end;
  Result := cPass;
  ipcEzCrypt1.Free;
end;

function DecryptPass(cPass: String): String;
var
  ipcEzCrypt1: TipcEzCrypt;
begin
  ipcEzCrypt1 := TipcEzCrypt.Create(nil);
  if not Empty(cPass) then
    begin
      ipcEzCrypt1.Algorithm := TipcEzCryptAlgorithms(0);
      ipcEzCrypt1.UseHex := true;
      ipcEzCrypt1.InputMessage := cPass;
      ipcEzCrypt1.KeyPassword := 'top-cbs';
      ipcEzCrypt1.Decrypt();
      cPass := ipcEzCrypt1.OutputMessage;
    end;
  Result := cPass;
  ipcEzCrypt1.Free;
end;

Function RegRead (Mykey,MyField : String) : string;
Var
  Reg : TRegistry;
begin
  //Create the Object
  Reg := TRegistry.Create;
  with Reg do
   begin
    //Sets the destination for our requests
    RootKey:=HKEY_CURRENT_USER;
    //Check if whe can open our key, if the key dosn't exist, we create it
    if OpenKey(MyKey,true) then
     begin
      //Is our field availbe
      if ValueExists(MyField) then
        //Read the value from the field
         result := ReadString(MyField)
      //else
        //ShowMessage(MyField+' does not exists under '+MyKey);
     end
     else
     //There is a big error if we get an errormessage by
     //opening/creating the key
     //ShowMessage('Error opening/creating key : '+MyKey);
     CloseKey;
   end;
   Reg.Free;
   //Reg := nil;
end;


Procedure RegWrite (Mykey,MyField,MyValue : String);
Var
  Reg : TRegistry;
begin
    //Create the Object
    Reg := TRegistry.Create;
    with Reg do
    begin
    //Sets the destination for our requests
    RootKey:=HKEY_CURRENT_USER;
    //Check if we can open our key, if the key doesn't exist, we create it
    if OpenKey(MyKey,true) then
      //We don't need to check if the field is available because the
      //field is created by writing the value
      Writestring(MyField,MyValue)
    else
     //There is a big error if we gets an errormessage by
     //opening/creating the key
     ShowMessage('Error opening/creating key : '+MyKey);
     CloseKey;
   end;
   Reg.Free;
   //Reg := nil;
end;

function Pesan(nId: Integer; cMessage: String): Boolean;
var
  cPesan: PwideChar ;
begin
  Result := False;
  cPesan := Pointer(cMessage);
  if (nId = 1) then
    begin
      MessageBeep(MB_ICONEXCLAMATION);
      if (Application.MessageBox(cPesan,'Informasi',MB_OK or MB_ICONINFORMATION)=mrOk) then
         Result := True;
    end;
  if (nId = 2) then
    begin
      MessageBeep(MB_ICONHAND);
      if (Application.MessageBox(cPesan,'Perhatian',MB_OK or MB_ICONWARNING)=mrOk) then
         Result := True;
    end;
  if (nId = 3) then
    begin
      MessageBeep(MB_OK);
      if (Application.MessageBox(cPesan,'Konfirmasi',MB_YESNO or MB_ICONQUESTION or MB_DEFBUTTON2)=mrYes) then
         Result := True;
    end;
end;

function IsPrevInst: Boolean;
var
  semName,
  appClass: PwideChar ;
  hSem    : THandle;
  hWndMe  : HWnd;
  appTitle: Array[0..MAX_PATH] of Char;
begin
  // Initializations
  Result := FALSE;
  GetMem(semName,15);
  GetMem(appClass,15);
  StrPCopy(semName,'SemaphoreName');
  StrPCopy(appClass,'TApplication');
  StrPCopy(appTitle,ExtractFileName(Application.Title));
  // Lets create a semaphore. If this is the first instance, hSem will contain 0.
  hSem := CreateSemaphore(nil,0,1,semName);
  // Does the semaphore already exist ? Yes : second instance.
  if (hSem <> 0) and (GetLastError = ERROR_ALREADY_EXISTS) then
    begin
      CloseHandle(hSem);
      // Lets change our main window title in order to find the first instance's one.
      hWndMe := FindWindow(appClass,appTitle);
      SetWindowText(hWndMe,'ZZZZZZZ');

      // Then we find the preceeding instance's main window, reactivate it and
      // bring it on front. It isfound by looking for the application's class and title.
      hWndMe := FindWindow(appClass,appTitle);
      if (hWndMe <> 0) then
        begin
          BringWindowToTop(hWndMe);
          ShowWindow(hWndMe,SW_SHOWNORMAL);
        end;
      Result := TRUE;
    end;
  // Deallocate used Data
  FreeMem(semName,15);
  FreeMem(appClass,15);
end;

function HariIndo(dTgl: TDateTime): String;
var
  days: array[1..7] of string;
begin
  days[1] := 'Minggu';
  days[2] := 'Senin';
  days[3] := 'Selasa';
  days[4] := 'Rabu';
  days[5] := 'Kamis';
  days[6] := 'Jum''at';
  days[7] := 'Sabtu';
  Result := days[DayOfWeek(dTgl)];
end;

function GetTempFile(const Extension: string): string;
var
  Buffer: array[0..MAX_PATH] OF Char;
begin
  repeat
    GetTempPath(Sizeof(Buffer)-1,Buffer);
    GetTempFileName(Buffer,'~',0,Buffer);
    result := ChangeFileExt(Buffer,Extension);
  until not FileExists(result);
end;

procedure CopyFilesToClipboard(FileList: string);
var
  DropFiles: PDropFiles;
  hGlobal: THandle;
  iLen: Integer;
begin
  iLen := Length(FileList) + 2;
  FileList := FileList + #0#0;
  hGlobal := GlobalAlloc(GMEM_SHARE or GMEM_MOVEABLE or GMEM_ZEROINIT,
    SizeOf(TDropFiles) + iLen);
  if (hGlobal = 0) then raise Exception.Create('Could not allocate memory.');
  begin
    DropFiles := GlobalLock(hGlobal);
    DropFiles^.pFiles := SizeOf(TDropFiles);
    Move(FileList[1], (PAnsiChar (DropFiles) + SizeOf(TDropFiles))^, iLen);
    GlobalUnlock(hGlobal);
    Clipboard.SetAsHandle(CF_HDROP, hGlobal);
  end;
end;

function IsWinXP: Boolean;
begin
 Result := (Win32Platform = VER_PLATFORM_WIN32_NT) and
  (Win32MajorVersion >= 5) and (Win32MinorVersion = 1);
end;

function IsWinVista: Boolean;
begin
 Result := (Win32Platform = VER_PLATFORM_WIN32_NT) and
  (Win32MajorVersion >= 6) and (Win32MinorVersion = 0);
end;

function IsStrANumber(const S: String): Boolean;
var
  P:PAnsiChar ;
begin
  P:=PAnsiChar (S);
  result:=False;
  while P^ <> #0 do
  begin
    if not (P^ in ['0'..'9']) then exit;
    inc(P);
  end;
  result:=True;
end;

procedure TurnSysKeysOff;
var
 OldVal : LongInt;
begin
 OldVal := 0;
 if not IsWinXP then
  begin
   SystemParametersInfo(SPI_SETFASTTASKSWITCH, Word(True), @OldVal, 0);
   SystemParametersInfo(SPI_SCREENSAVERRUNNING, Word(True), @OldVal, 0);
  end
 else
   EnableCTRLALTDEL(False);
end;

procedure TurnSysKeysBackOn;
var
 OldVal : LongInt;
begin
 OldVal := 1;
 if not IsWinXP then
  begin
   SystemParametersInfo(SPI_SETFASTTASKSWITCH, Word(False), @OldVal, 0);
   SystemParametersInfo(SPI_SCREENSAVERRUNNING, Word(False), @OldVal, 0);
  end
 else
   EnableCTRLALTDEL(True);
end;

procedure EnableCTRLALTDEL(YesNo: boolean);
const
  sRegPolicies = '\Software\Microsoft\Windows\CurrentVersion\Policies';
begin
  with TRegistry.Create do
  try
    RootKey:=HKEY_CURRENT_USER;
    if OpenKey(sRegPolicies+'\System',True) then
      begin
        case YesNo of
        False:
          begin
            WriteInteger('DisableTaskMgr',1) ;
          end;
        True:
          begin
            WriteInteger('DisableTaskMgr',0) ;
          end;
        end;
      end;
    CloseKey;
    if OpenKey(sRegPolicies+'\Explorer',True) then
      begin
        case YesNo of
        False:
          begin
            WriteInteger('NoChangeStartMenu',1) ;
            WriteInteger('NoClose',1);
            WriteInteger('NoLogOff',1);
          end;
        True:
          begin
            WriteInteger('NoChangeStartMenu',0);
            WriteInteger('NoClose',0);
            WriteInteger('NoLogOff',0);
          end;
        end;
      end;
    CloseKey;
  finally
    Free;
  end;
end;

procedure ShowStartButton(bvisible : boolean);
var
  h : hwnd;
  TaskWindow : hwnd;
  HTaskbar : HWND;
begin
  HTaskBar:=FindWindow('Shell_TrayWnd',nil);
  if bvisible then
  begin
    h := FindWindowEx(GetDesktopWindow,0,'Button',nil);
    TaskWindow := FindWindow('Shell_TrayWnd', nil);
    ShowWindow(h,1);
    Windows.SetParent(h,TaskWindow);
    ShowWindow(HTaskbar,SW_SHOW); //Show the taskbar
  end else
  begin
    h := FindWindowEx(FindWindow('Shell_TrayWnd', nil),0,'Button',nil);
    ShowWindow(h,0);
    Windows.SetParent(h,0);
    ShowWindow(HTaskbar,SW_HIDE); //Hide the taskbar
  end;
end;

procedure ReplaceText(edit: TCustomEdit; strOLD, strNEW: string);
var
  x, position:     integer;
  tmpstr, tmpstr2: string;
begin
  tmpstr := edit.Text;
  position := 0;
  for x := 0 to length(edit.Text) do
  begin
    if copy(edit.Text, x, length(strold)) = strold then
    begin
      tmpstr   := copy(edit.Text, 0, x - 1) + strnew;
      position := x;
    end;
  end;
  tmpstr2 := edit.Text;
  if position <> 0 then
    edit.Text := tmpstr + copy(tmpstr2, position + length(strOLD), length(tmpstr2))
  else
    edit.Text := tmpstr;
end;

function Replace(Dest, SubStr, Str: string): string;
var
  Position: Integer;
begin
  Position:=Pos(SubStr, Dest);
  Delete(Dest, Position, Length(SubStr));
  Insert(Str, Dest, Position);
  Result:=Dest;
end;

function ReplaceStr(cText, strOLD, strNEW: string): String;
var
  x: integer;
  tmpstr: string;
begin
  tmpstr := '';
  for x := 1 to length(cText) do
  begin
    if copy(cText, x, length(strOLD)) = strOLD then
      tmpstr   := tmpstr+strNEW
    else
      tmpstr   := tmpstr+copy(cText, x, length(strOLD))
  end;
  Result := tmpstr;
end;

function LoadAndRunDLLProcedure(
  sDLL,
  sFunc : string )
  : boolean;
type
  // define the type of "function"
  // we're calling
  TFunc_Start = procedure;
var
  Func_Start : TFunc_Start;

  hDll       : THandle;
  FuncPtr    : TFarProc;
  sMsg       : string;
begin
  Result := False;
  hDll   := LoadLibrary(
              PwideChar ( sDLL ) );
  if(hDll > 32)then
  begin
    FuncPtr :=
      GetProcAddress(
        hDll, PAnsiChar ( sFunc ) );
    @Func_Start := FuncPtr;
    if(nil <> @Func_Start)then
    begin
      Func_Start;
      Result := True;
    end else
    begin
      sMsg := 'DLL entry point ' +
              sFunc + ' not found';
      MessageBox(
        0, PwideChar ( sMsg ), 'Error',
        MB_OK );
    end;
    FreeLibrary( hDll );
  end else
  begin
    sMsg := 'File ' + sDLL +
            ' not found';
    MessageBox(
      0, PwideChar ( sMsg ), 'Error',
      MB_OK );
  end;
end;

procedure ListDLLExports(const FileName: string; List: TStrings);
type
  TDWordArray = array [0..$FFFFF] of DWORD;
var
  imageinfo: LoadedImage;
  pExportDirectory: PImageExportDirectory;
  dirsize: Cardinal;
  pDummy: PImageSectionHeader;
  i: Cardinal;
  pNameRVAs: ^TDWordArray;
  Name: string;
begin
  List.Clear;
  if MapAndLoad(PAnsiChar (FileName), nil, @imageinfo, True, True) then
  begin
    try
      pExportDirectory := ImageDirectoryEntryToData(imageinfo.MappedAddress,
        False, IMAGE_DIRECTORY_ENTRY_EXPORT, dirsize);
      if (pExportDirectory <> nil) then
      begin
        pNameRVAs := ImageRvaToVa(imageinfo.FileHeader, imageinfo.MappedAddress,
          DWORD(pExportDirectory^.AddressOfNames), pDummy);
        for i := 0 to pExportDirectory^.NumberOfNames - 1 do
        begin
          Name := PAnsiChar (ImageRvaToVa(imageinfo.FileHeader, imageinfo.MappedAddress,
            pNameRVAs^[i], pDummy));
          List.Add(Name);
        end;
      end;
    finally
      UnMapAndLoad(@imageinfo);
    end;
  end;
end;

function RecycleFile(sFileName: string): Boolean;
var
  FOS: TSHFileOpStruct;
begin
  FillChar(FOS, SizeOf(FOS), 0);
  with FOS do
  begin
    wFunc := FO_DELETE;
    pFrom := PwideChar (sFileName);
    fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  end;
  Result := (SHFileOperation(FOS) = 0);
end;

function BulanRomawi(nBulan: Byte): String;
var
  aBulan: array[1..12] of String;
begin
  aBulan[1] := 'I';
  aBulan[2] := 'II';
  aBulan[3] := 'III';
  aBulan[4] := 'IV';
  aBulan[5] := 'V';
  aBulan[6] := 'VI';
  aBulan[7] := 'VII';
  aBulan[8] := 'VIII';
  aBulan[9] := 'IX';
  aBulan[10] := 'X';
  aBulan[11] := 'XI';
  aBulan[12] := 'XII';
  Result := aBulan[nBulan];
end;

function copydir(von,zieldir: String): boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc := FO_COPY;
    fFlags := FOF_FILESONLY;
    pFrom := PwideChar (von+#0);
    pTo := PwideChar (zieldir)
  end;
  Result:=(0=ShFileOperation(fos));
end;


function movedir(von,zieldir: String): boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc := FO_MOVE;
    fFlags := FOF_FILESONLY;
    pFrom := PwideChar (von+#0);
    pTo := PwideChar (zieldir)
  end;
  Result:=(0=ShFileOperation(fos));
end;

function deldir(dir: String): boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc := FO_DELETE;
    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom := PwideChar (dir+#0);
  end;
  Result:=(0=ShFileOperation(fos));
end;

procedure ShellFileOperation(fromFile: string; toFile: string; Flags: Integer);
var
  shellinfo: TSHFileOpStructA;
begin
  with shellinfo do
  begin
    wnd   := Application.Handle;
    wFunc := Flags;
    pFrom := PAnsiChar (fromFile);
    pTo   := PAnsiChar (toFile);
  end;
  SHFileOperationA(shellinfo);
end;

function IsFileInUse(fName : string) : boolean;
var HFileRes : HFILE;
begin
  Result := False;
  if not FileExists(fName) then
    Exit;
  HFileRes := CreateFile(PwideChar (fName),
                         GENERIC_READ or GENERIC_WRITE,
                         0, nil, OPEN_EXISTING,
                         FILE_ATTRIBUTE_NORMAL, 0);
  Result := (HFileRes = INVALID_HANDLE_VALUE);
  if not Result then
    CloseHandle(HFileRes);
end;

procedure FileReplaceString(const FileName, searchstring, replacestring: string);
var
  fs: TFileStream;
  S: string;
begin
  fs := TFileStream.Create(FileName, fmOpenread or fmShareDenyNone);
  try
    SetLength(S, fs.Size);
    fs.ReadBuffer(S[1], fs.Size);
  finally
    fs.Free;
  end;
  S  := StringReplace(S, SearchString, replaceString, [rfReplaceAll, rfIgnoreCase]);
  fs := TFileStream.Create(FileName, fmCreate);
  try
    fs.WriteBuffer(S[1], Length(S));
  finally
    fs.Free;
  end;
end;

function AppendOrWriteTextToFile(filename:TFilename; WriteText: String): Boolean;
var
 f: Textfile;
begin
 try
  AssignFile(f,filename);
   If FileExists(filename) = false then
    begin
     Rewrite(f);
    end
     else
      begin
        Reset(f);
        Append(f);
      end;
  Writeln(f,WriteText);
  CloseFile(f);
  result := true;
 except
  result := false;
 end;
end;

function GetLocalIP : string;
var
  I: Integer;
  ipwIPInfo1: TipwIPInfo;
//var
//  Host, IP, Err: string;
begin
  ipwIPInfo1 := TipwIPInfo.Create(Application);
  try
    for I := 0 to ipwIPInfo1.AdapterCount-1 do
      begin
        ipwIPInfo1.AdapterIndex := I;
        if not Empty(ipwIPInfo1.AdapterGateway) then
          Break
      end;

    Result := ipwIPInfo1.AdapterIPAddress;  //'N/A';
  finally
    ipwIPInfo1.Free;
  end;
//  if GetIPFromHost(Host, IP, Err) then
//    begin
//      //Pesan(1,Host+' - '+IP);
//      Result := IP;
//    end
//  else
//    Result := '';
//    //Pesan(1,Err);
end;

Function GetArgCount(cText, cPembatas: string): Integer;
var
  nTemp,n: Integer;
  cTemp: string;
begin
  cTemp := cText;
  nTemp := 1;
  while At(cPembatas, cTemp) > 0 do
    begin
      nTemp := nTemp+1;
      n := At(cPembatas, cTemp);
      cTemp := SubStr(cTemp,n+1,Length(cTemp)-n);
    end;
  Result := nTemp;
end;

function GetArg(cText: string; nPos: Integer; cPembatas: string): string;
var
  cTemp: string;
  nTempPos,nke: Integer;
begin
  cTemp := cText;
  nTempPos := At(cPembatas,cTemp);
  nke := 0;
  //Result := '';  //cTemp;         //ini tepat tapi harus rubah ke all form yang mengakses
  Result := cTemp;
  while (nTempPos > 0) do
    begin
      nke := nke+1;
      if (nke=nPos) then
        begin
          Result := Trim(LeftStr(cTemp,nTempPos-1));
          Break;
        end;
      cTemp := SubStr(cTemp,nTempPos+1,Length(cTemp));
      nTempPos := At(cPembatas,cTemp);
      //if (nTempPos=0) and (nke+1=nPos) then  //ini tepat tapi harus rubah ke all form yang mengakses
      if (nTempPos=0) then
        Result := cTemp;
    end;
end;

function md5(const Input: String): String;
var
  hCryptProvider: HCRYPTPROV;
  hHash: HCRYPTHASH;
  bHash: array[0..$7f] of Byte;
  dwHashLen: DWORD;
  pbContent: PByte;
  i: Integer;
begin
  dwHashLen := 16;
  pbContent := Pointer(PAnsiChar (Input));

  Result := '';

  if CryptAcquireContext(@hCryptProvider, nil, nil, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT or CRYPT_MACHINE_KEYSET) then
  begin
    if CryptCreateHash(hCryptProvider, CALG_MD5, 0, 0, @hHash) then
    begin
      if CryptHashData(hHash, pbContent, Length(Input), 0) then
      begin
        if CryptGetHashParam(hHash, HP_HASHVAL, @bHash[0], @dwHashLen, 0) then
        begin
          for i := 0 to dwHashLen - 1 do
          begin
            Result := Result + Format('%.2x', [bHash[i]]);
          end;
        end;
      end;
      CryptDestroyHash(hHash);
    end;
    CryptReleaseContext(hCryptProvider, 0);
  end;

  Result := AnsiLowerCase(Result);
end;


(* function read html5*)
function getmd5(SourceString: string): string;
  var
    md5: TIdHashMessageDigest5;
begin
  result := '';
  md5 := TIdHashMessageDigest5.Create;
  try
    result := AnsiLowerCase(md5.HashStringAsHex(SourceString));
  finally
    FreeAndNil(md5);
  end;
end;

function GetIPFromHost
(var HostName, IPaddr, WSAErr: string): Boolean; 
type 
  Name = array[0..100] of Char;
  PName = ^Name;
var 
  HEnt: pHostEnt; 
  HName: PName;
  WSAData: TWSAData; 
  i: Integer; 
begin 
  Result := False;     
  if WSAStartup($0101, WSAData) <> 0 then begin 
    WSAErr := 'Winsock is not responding."'; 
    Exit; 
  end; 
  IPaddr := ''; 
  New(HName);
  if GetHostName(PansiChar(AnsiString(HName^)),SizeOf(Name)) = 0 then
    begin 
      HostName := StrPas(HName^);
      HEnt := GetHostByName(PansiChar(AnsiString(HName^)));
      for i := 0 to HEnt^.h_length - 1 do 
       IPaddr :=
        Concat(IPaddr,
        IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.'); 
      SetLength(IPaddr, Length(IPaddr) - 1); 
      Result := True; 
    end
  else begin
     case WSAGetLastError of
      WSANOTINITIALISED:WSAErr:='WSANotInitialised';
      WSAENETDOWN      :WSAErr:='WSAENetDown';
      WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
     end;
  end; 
  Dispose(HName); 
  WSACleanup; 
end; 

function MyPassInputQuery(const ACaption, APrompt: string;
  var Value: string): Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        PasswordChar := '*';
        Text := Value;
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := 'Ok';
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := 'Batal';
        ModalResult := mrCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;          
      end;
      if ShowModal = mrOk then
      begin
        Value := Edit.Text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

function MyPassInputBox(const ACaption, APrompt, ADefault: string): string;
begin
  Result := ADefault;
  MyPassInputQuery(ACaption, APrompt, Result);
end;

function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

procedure DeleteIECache;
var
  lpEntryInfo: PInternetCacheEntryInfo;
  hCacheDir: LongWord;
  dwEntrySize: LongWord;
begin { DeleteIECache }
  dwEntrySize := 0;

  FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);

  GetMem(lpEntryInfo, dwEntrySize);

  if dwEntrySize>0 then
    lpEntryInfo^.dwStructSize := dwEntrySize;

  hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);

  if hCacheDir<>0 then
  begin
    repeat
      DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
      FreeMem(lpEntryInfo, dwEntrySize);
      dwEntrySize := 0;
      FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^), dwEntrySize);
      GetMem(lpEntryInfo, dwEntrySize);
      if dwEntrySize>0 then
        lpEntryInfo^.dwStructSize := dwEntrySize;
    until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize)
  end; { hCacheDir<>0 }
  FreeMem(lpEntryInfo, dwEntrySize);

  FindCloseUrlCache(hCacheDir)
end; { DeleteIECache }

function SplitFile(FileName : TFileName; FilesByteSize : Integer): string;
// FileName == file to split into several smaller files
// FilesByteSize == the size of files in bytes
var
   fs, ss: TFileStream;
   cnt : integer;
   SplitName,cHasil: String;
begin
   cHasil := '';
   fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite) ;
   try
     for cnt := 1 to Trunc(fs.Size / FilesByteSize) + 1 do
     begin
       SplitName := ChangeFileExt(FileName, Format('%s%d', ['._',cnt])) ;
       ss := TFileStream.Create(SplitName, fmCreate or fmShareExclusive) ;
       try
         if fs.Size - fs.Position < FilesByteSize then
           FilesByteSize := fs.Size - fs.Position;
         ss.CopyFrom(fs, FilesByteSize) ;
         cHasil := cHasil + SplitName + IfThen(cnt < (Trunc(fs.Size / FilesByteSize) + 1),';','');
       finally
         ss.Free;
       end;
     end;
   finally
     fs.Free;
   end;
   Result := cHasil;
end;
//Note: a 3 KB file 'myfile.ext' will be split into 'myfile._1', 'myfile._2','myfile._3'
//if FilesByteSize parameter equals 1024 (1 KB).

procedure MergeFiles(FirstSplitFileName, OutFileName : TFileName);
// FirstSplitFileName == the name of the first piece of the split file
// OutFileName == the name of the resulting merged file
var
   fs, ss: TFileStream;
   cnt: integer;
begin
   cnt := 1;
   fs := TFileStream.Create(OutFileName, fmCreate or fmShareExclusive) ;
   try
     while FileExists(FirstSplitFileName) do
     begin
       ss := TFileStream.Create(FirstSplitFileName, fmOpenRead or fmShareDenyWrite) ;
       try
         fs.CopyFrom(ss, 0) ;
       finally
         ss.Free;
       end;
       Inc(cnt) ;
       FirstSplitFileName := ChangeFileExt(FirstSplitFileName, Format('%s%d', ['._',cnt])) ;
     end;
   finally
     fs.Free;
   end;
end;
{Usage:
SplitFile('c:\mypicture.bmp', 1024) ; //into 1 KB files
...
MergeFiles('c:\mypicture._1','c:\mymergedpicture.bmp') ;
~~~~~~~~~~~~~~~~~~~~~~~~~}

function upload_file(remote_server, //by Rot1
                     directory,
                     local_file,
                     remote_file,
                     user,
                     pass: PwideChar): boolean;
var hInet, hConnect: HINTERNET;
    Dir, Put: Boolean;
begin
  hInet := InternetOpen(nil, INTERNET_OPEN_TYPE_DIRECT, nil, nil, 0);
  hConnect := InternetConnect(hInet,
                              remote_server,
                              INTERNET_DEFAULT_FTP_PORT,
                              user, pass,
                              INTERNET_SERVICE_FTP,
                              INTERNET_FLAG_PASSIVE,
                              0);
  Dir := ftpSetCurrentDirectory(hConnect, directory);
  WaitForSingleObject(Cardinal(Dir), infinite);
  Put := ftpPutFile(hConnect, local_file, remote_file, FTP_TRANSFER_TYPE_BINARY, 0);
  InternetCloseHandle(hInet);
  InternetCloseHandle(hConnect);
  Result:= Put;
end;

function download_file(remote_server, //by Rot1
                     directory,
                     remote_file,
                     local_file,
                     user,
                     pass: PwideChar): boolean;
var hInet, hConnect: HINTERNET;
    Dir, get: Boolean;
begin
  hInet := InternetOpen(nil, INTERNET_OPEN_TYPE_DIRECT, nil, nil, 0);
  hConnect := InternetConnect(hInet,
                              remote_server,
                              INTERNET_DEFAULT_FTP_PORT,
                              user, pass,
                              INTERNET_SERVICE_FTP,
                              INTERNET_FLAG_PASSIVE,
                              0);
  Dir := ftpSetCurrentDirectory(hConnect, directory);
  WaitForSingleObject(Cardinal(Dir), infinite);
  get := FtpGetFile(hConnect, remote_file, local_file, False, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, 0);
  InternetCloseHandle(hInet);
  InternetCloseHandle(hConnect);
  Result:= get;
end;

function IsWrongIP(ip: string): boolean;
var
  z, i: Integer;
  st:   array[1..3] of byte;
const
  ziff = ['0'..'9'];
begin
  st[1]  := 0;
  st[2]  := 0;
  st[3]  := 0;
  z      := 0;
  Result := False;
  for i := 1 to length(ip) do if ip[i] in ziff then
  else
  begin
    if ip[i] = '.' then
    begin
      inc(z);
      if z < 4 then st[z] := i
      else
      begin
        IsWrongIP:= True;
        exit;
      end;
    end
    else
    begin
      IsWrongIP:= True;
      exit;
    end;
  end;
  if (z <> 3) or (st[1] < 2) or (st[3] = length(ip)) or (st[1] + 2 > st[2]) or
    (st[2] + 2 > st[3]) or (st[1] > 4) or (st[2] > st[1] + 4) or (st[3] > st[2] + 4) then
  begin
    IsWrongIP:= True;
    exit;
  end;
  z := StrToInt(copy(ip, 1, st[1] - 1));
  if (z > 255) or (ip[1] = '0') then
  begin
    IsWrongIP:= True;
    exit;
  end;
  z := StrToInt(copy(ip, st[1] + 1, st[2] - st[1] - 1));
  if (z > 255) or ((z <> 0) and (ip[st[1] + 1] = '0')) then
  begin
    IsWrongIP:= True;
    exit;
  end;
  z := StrToInt(copy(ip, st[2] + 1, st[3] - st[2] - 1));
  if (z > 255) or ((z <> 0) and (ip[st[2] + 1] = '0')) then
  begin
    IsWrongIP:= True;
    exit;
  end;
  z := StrToInt(copy(ip, st[3] + 1, length(ip) - st[3]));
  if (z > 255) or ((z <> 0) and (ip[st[3] + 1] = '0')) then
  begin
    IsWrongIP:= True;
    exit;
  end;
end;

function CtrlDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Control] And 128) <> 0);
end;

function ShiftDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Shift] and 128) <> 0);
end;

function AltDown : Boolean;
var
  State : TKeyboardState;
begin
  GetKeyboardState(State);
  Result := ((State[vk_Menu] and 128) <> 0);
end;

function SecondsIdle: DWord;
var
   liInfo: TLastInputInfo;
begin
   liInfo.cbSize := SizeOf(TLastInputInfo) ;
   GetLastInputInfo(liInfo) ;
   Result := (GetTickCount - liInfo.dwTime) DIV 1000;
end;

function DeleteLineBreaks(const S: string): string;
var
   Source, SourceEnd: PAnsiChar ;
begin
   Source := Pointer(S) ;
   SourceEnd := Source + Length(S) ;
   while Source < SourceEnd do
   begin
     case Source^ of
       #10: Source^ := #32;
       #13: Source^ := #32;
     end;
     Inc(Source) ;
   end;
   Result := S;
End;

function GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

function GetUserFromWindows: string;
var
   UserName : string;
   UserNameLen : Dword;
begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PwideChar (UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';
end;

function GetTextFromFile(AFile: String; var ReturnString: string): Boolean;
var
  FileStream : TFileStream;
begin
  result := false;
  if not fileexists(AFile) then exit;
  FileStream := TFileStream.Create(AFile, fmOpenRead);
  try
    if FileStream.Size > 0 then
    begin
      SetLength(ReturnString, FileStream.Size);
      FileStream.Read(ReturnString[1], FileStream.Size);
      result := true;
    end;
  finally
    FileStream.Free;
  end;
end;

function GetSpecialFolderPath(folder : integer) : string;
const
 SHGFP_TYPE_CURRENT = 0;
var
 path: array [0..MAX_PATH] of char;
begin
 if SUCCEEDED(SHGetFolderPath(0,folder,0,SHGFP_TYPE_CURRENT,@path[0])) then
   Result := path
 else
   Result := '';
end;

procedure CaptureScreen(ABitmap: TBitmap);
var
  vDesktopDC: HDC;   // variable to store the device context handle of desktop window
begin
  // get the device context handle of current desktop window
  vDesktopDC := GetWindowDC(GetDesktopWindow);
  try
      // adjust the dimension and format of the supplied bitmap to match the screen
      ABitmap.PixelFormat := pf24bit;
      ABitmap.Height := Screen.Height;
      ABitmap.Width := Screen.Width;

      // draw the content of desktop into ABitmap
      BitBlt(ABitmap.Canvas.Handle, 0, 0, ABitmap.Width, ABitmap.Height, vDesktopDC, 0, 0, SRCCOPY);
  finally
    // mark that we have done with the desktop device context
    ReleaseDC(GetDesktopWindow, vDesktopDC);
  end;
end;

procedure CaptureScreenToFile(const AFilename: string);
var
  vJpg: TJpegImage;
  vBmp: TBitmap;
begin
  // create temporary bitmap
  vBmp := TBitmap.Create;
  try
    CaptureScreen(vBmp);
    // create Jpg image object
    vJpg := TJpegImage.Create;
    try
      vJpg.Assign(vBmp);
      // compress the image to have quality 70% of original
      vJpg.CompressionQuality := 70;
      // save the captured screen into a file in jpg format
      vJpg.SaveToFile(AFileName);
    finally
      vJpg.Free;  //destroy the jpg image object
    end;
  finally
    vBmp.Free; // destroy temporary bitmap
  end;
end;

procedure CaptureScreenActiveWindowToFile(hWindow: HWND; const AFilename: string);
var
  vJpg: TJpegImage;
  vBmp: TBitmap;
begin
  // create temporary bitmap
  vBmp := TBitmap.Create;
  try
    ScreenShotTopWindow(hWindow, vBmp);
    // create Jpg image object
    vJpg := TJpegImage.Create;
    try
      vJpg.Assign(vBmp);
      // compress the image to have quality 70% of original
      vJpg.CompressionQuality := 70;
      // save the captured screen into a file in jpg format
      vJpg.SaveToFile(AFileName);
    finally
      vJpg.Free;  //destroy the jpg image object
    end;
  finally
    vBmp.Free; // destroy temporary bitmap
  end;
end;

function GetFirstLine(var Text:string):string;
var
  title: string;
  position: integer;
begin
    title := '';
    position := AnsiPos(#10, Text);

    if position = 0 then
      begin
        position := AnsiPos('.', Text);
        if (position = 0) then
           title := Text
        else
           title := copy(Text, 1, position);
      end
    else
      begin
          title := copy(Text, 1, position);
      end;

    result := title;
end;

function FtpDownloadFile(strHost, strUser, strPwd: string;
  Port: Integer; ftpDir, ftpFile, TargetFile: string; GaugeBar: TsGauge): Boolean;

  function FmtFileSize(Size: Integer): string;
  begin
    if Size >= $F4240 then
      Result := Format('%.2f', [Size / $F4240]) + ' Mb'
    else
    if Size < 1000 then
      Result := IntToStr(Size) + ' bytes'
    else
      Result := Format('%.2f', [Size / 1000]) + ' Kb';
  end;

const
  READ_BUFFERSIZE = 4096;  // or 256, 512, ...
var
  hNet, hFTP, hFile: HINTERNET;
  buffer: array[0..READ_BUFFERSIZE - 1] of Char;
  bufsize, dwBytesRead, fileSize: DWORD;
  sRec: TWin32FindData;
  //strStatus: string;
  LocalFile: file;
  bSuccess: Boolean;
begin
  Result := False;

  { Open an internet session }
  hNet := InternetOpen('Program_Name', // Agent
                        INTERNET_OPEN_TYPE_PRECONFIG, // AccessType
                        nil,  // ProxyName
                        nil, // ProxyBypass
                        0); // or INTERNET_FLAG_ASYNC / INTERNET_FLAG_OFFLINE

  {
    Agent contains the name of the application or
    entity calling the Internet functions
  }


  { See if connection handle is valid }
  if hNet = nil then
  begin
    ShowMessage('Unable to get access to WinInet.Dll');
    Exit;
  end;

  { Connect to the FTP Server }
  hFTP := InternetConnect(hNet, // Handle from InternetOpen
                          PwideChar (strHost), // FTP server
                          port, // (INTERNET_DEFAULT_FTP_PORT),
                          PwideChar (StrUser), // username
                          PwideChar (strPwd),  // password
                          INTERNET_SERVICE_FTP, // FTP, HTTP, or Gopher?
                          0, // flag: 0 or INTERNET_FLAG_PASSIVE
                          0);// User defined number for callback

  if hFTP = nil then
  begin
    InternetCloseHandle(hNet);
    ShowMessage(Format('Host "%s" is not available',[strHost]));
    Exit;
  end;

  { Change directory }
  bSuccess := FtpSetCurrentDirectory(hFTP, PwideChar (ftpDir));

  if not bSuccess then
  begin
    InternetCloseHandle(hFTP);
    InternetCloseHandle(hNet);
    ShowMessage(Format('Cannot set directory to %s.',[ftpDir]));
    Exit;
  end;

  { Read size of file }
  if FtpFindFirstFile(hFTP, PwideChar (ftpFile), sRec, 0, 0) <> nil then
  begin
    fileSize := sRec.nFileSizeLow;
    // fileLastWritetime := sRec.lastWriteTime
  end else
  begin
    InternetCloseHandle(hFTP);
    InternetCloseHandle(hNet);
    ShowMessage(Format('Cannot find file ',[ftpFile]));
    Exit;
  end;

  { Open the file }
  hFile := FtpOpenFile(hFTP, // Handle to the ftp session
                       PwideChar (ftpFile), // filename
                       GENERIC_READ, // dwAccess
                       FTP_TRANSFER_TYPE_BINARY, // dwFlags
                       0); // This is the context used for callbacks.

  if hFile = nil then
  begin
    InternetCloseHandle(hFTP);
    InternetCloseHandle(hNet);
    Exit;
  end;

  { Create a new local file }
  AssignFile(LocalFile, TargetFile);
  {$i-}
  Rewrite(LocalFile, 1);
  {$i+}

  if IOResult <> 0 then
  begin
    InternetCloseHandle(hFile);
    InternetCloseHandle(hFTP);
    InternetCloseHandle(hNet);
    Exit;
  end;

  dwBytesRead := 0;
  bufsize := READ_BUFFERSIZE;

  while (bufsize > 0) do
  begin
    Application.ProcessMessages;

    if not InternetReadFile(hFile,
                            @buffer, // address of a buffer that receives the data
                            READ_BUFFERSIZE, // number of bytes to read from the file
                            bufsize) then Break; // receives the actual number of bytes read

    if (bufsize > 0) and (bufsize <= READ_BUFFERSIZE) then
      BlockWrite(LocalFile, buffer, bufsize);
    dwBytesRead := dwBytesRead + bufsize;

    { Show Progress }
    GaugeBar.Visible := True;
    GaugeBar.Progress := Round(dwBytesRead * 100 / fileSize);
    //Form1.Label1.Caption := Format('%s of %s / %d %%',[FmtFileSize(dwBytesRead),FmtFileSize(fileSize) ,ProgressBar.Position]);
  end;

  CloseFile(LocalFile);

  InternetCloseHandle(hFile);
  InternetCloseHandle(hFTP);
  InternetCloseHandle(hNet);
  Result := True;
end;

procedure CallDLLProses(DLLName, FunctionName: String; IndexFrom: Integer);
//var Hand: THandle;
//    Call: procedure(AppHandle: THandle; ModulIndex: Integer); stdcall;
begin
//  try
//    Hand:=LoadLibrary(PAnsiChar (GetPathPath + 'mdl.coresys\' + DLLName));
//    if Hand = 0 then
//      Application.MessageBox(PAnsiChar ('Cannot launch this modul.' + #13 + 'File "' +
//      GetPathPath + 'mdl.coresys\' + DLLName + '" not found!'),'Error',MB_OK or MB_ICONERROR)
//    else
//      begin
//        @Call:=GetProcAddress(Hand,PAnsiChar (FunctionName));
//        Call(Application.Handle,99);
//      end;
//  finally
//    FreeLibrary(Hand);
//  end;
end;

function CallDLLProsesValue(DLLName, FunctionName, ValueProc, ValueParam, ValueSecParam: String;
  IndexFrom: Integer): String;
//var Hand: THandle;
//    Call: function(AppHandle: THandle; InputValue, InputParam, InputSecParam: String; ModulIndex: Integer): String; stdcall;
begin
//  try
//    Hand:=LoadLibrary(PAnsiChar (GetPathPath + 'mdl.coresys\' + DLLName));
//    if Hand = 0 then
//      Application.MessageBox(PAnsiChar ('Cannot launch this modul.' + #13 + 'File "' +
//      GetPathPath + 'mdl.coresys\' + DLLName + '" not found!'),'Error',MB_OK or MB_ICONERROR)
//    else
//      begin
//        @Call:=GetProcAddress(Hand,PAnsiChar (FunctionName));
//        Result:=Call(Application.Handle,ValueProc,ValueParam,ValueSecParam,99);
//      end;
//  finally
//    FreeLibrary(Hand);
//  end;
end;

procedure VarArraySaveFile(const FileName: string ; varData : Variant);
var
 F: file;
 Size: Integer;
 Data: PAnsiChar ;
begin
 AssignFile(F, FileName);
 ReWrite(F, 1);
 size:=VarArrayHighBound(varData,1) ;
 try
   Data := VarArrayLock(varData);
   try
     BlockWrite(F, Data^, size+1);
   finally
     VarArrayUnlock(varData);
   end;
 finally
   CloseFile(F);
 end;
end ;

end.
