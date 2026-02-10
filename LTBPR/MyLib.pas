unit MyLib;

interface

uses SysUtils,Variants,Forms,Windows,Controls,
    Messages,Classes,Dialogs,Graphics,DB;

Function MyExecuteSQL(cSQL: String): Boolean;
Function MyExecuteSQLNoTrans(cSQL: String): Boolean;
Function SelectRow(cSelect: String): String;
Function UpdateRow(cTable, cSet, cKondisi: String): Boolean;
Function UpdateUserLog(ckd_menu: String; lInsert: Boolean; cKet: String = ''): Boolean;
Function UpdateErrorLog(ckd_menu: String; cKet: String = ''): Boolean;
Function InsertRow(cTable, cFieldSet, cValueSet: String): Boolean;
Function ReplaceRow(cTable, cFieldSet, cValueSet: String): Boolean;
Function DeleteRow(cTable, cKondisi: String): Boolean;
Function Ogie_DeleteRow(cTable, cWhere: String): Boolean;
Function UserAdmin( cNamaUser: String ): Boolean;
Function CekUserGroup( cNamaUser, cNamaGroup: String ): Boolean;
Function CekUserArea( cNamaUser, cKodeArea: String ): Boolean;
Function GetUserArea( cNamaUser: String ): String;
Function GetUserID( cNamaUser: String ): String;
Function GetUserEmail( cNamaUser: String ): String;
Function GetUserLevelUp( UserID: String ): String;
Function UserOtorisator(cNamaUser, cType, cTOB: String; nJumlah: Double): Boolean;
Function GetKodeLitigasi( cKodeKantor: String ): String;
Function TglValid(dtgl: TDate): Boolean;
Function CekTrustee(cUser,cMenu,cKet: String; lShowWarning: Boolean = False; nLevel: SmallInt = 0; cIndex: string = ''; nPublic: Byte = 0): Boolean;
Function CekIsUsed(cTabel,cExpression: String; lShowWarning: Boolean = False): Boolean;
Function KodeIsUsed(cTabel,cExpression: String; lShowWarning: Boolean = False): Boolean;
Function TempTable(cTable, cWhere, cSQL: String; lCreate: Boolean): Boolean;
Function GetNextNomor(cSetID: String; lFlg_Update: Boolean = False): String;
Function CekPeriode(dTgl: TDate): Boolean;
function FindWindowByTitle(WindowTitle: string): Hwnd;
function CekPass: Boolean;
function CekMyPass: Boolean;
Function GetMySysID(cGroup, cSetID: String; cDefault: String = ''): String;
Function SetMySysID(cGroup, cSetID: String; cDefault: String = ''): Boolean;
Function TempJurnal(cTransID: String; lCreate: Boolean): Boolean;
function GetFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): String;
function GetFloatFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): Double;
function GetIntegerFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): Integer;
function GetDateFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): TDateTime;
function GetTglSaldoAwalNeraca( cKodeCabang: String; dTglFilter: TDate ): TDate;
Function GetMyParameter(cSetID: String; cDefault: String = ''): String;
function SetMyParameter(cSetID: String; cDefault: String = ''): Boolean;
Function HitungSaldoPerkiraan(cKodePerkAll: string; dTgl: TDate; cKodeKantor: string): Double;
Function HitungSaldoPerkiraanBulan(cKodePerkAll: string; dTgl: TDate; cKodeKantor: string): Double;
function GetSaldoPerkiraanCabangByTanggal(cKode_Cabang, cKodePerkAll: string; dTgl: TDate): Double;
function GetSaldoPerkiraanCabangByBulan(cKode_Cabang, cKodePerkAll: string; dTgl: TDate): Double;
Function AccGetSaldoPerkiraanByTanggal(cKodePerk: string; dTgl: TDate; cKodeKantor: string): Double;
Function AccGetSaldoPerkiraanByBulan(cKodePerk: string; dTgl: TDate; cKodeKantor: string): Double;
Function KreSetSaldoAkhir(cNoRekening: string): Boolean;
Function GetAccrualHarian(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
function GetAccrualHarianPTAB(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
function GetAccrualHarianDeposito(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
Function DepSetSaldoAkhir(cNoRekening: string): Boolean;
Function ResetJadwal(jml_pinjaman, jml_suku_bunga, jml_markup: Extended; jml_angsuran, tgl_tagih, grace_periode: Byte;
  type_kredit, satuan_waktu: string; tgl_cair: TDate; IsAdvance: Boolean = False;
  jml_adm: Extended = 0; IsTgl25: Boolean = False; freq_tagihan: Byte = 0): string;
function AccGetSaldoCLSHariIni(cKodePerk,cKantor:string;dTgl:TDate):double;
function DepGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
function TabGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
Function TabSetSaldoAkhir(cNoRekening: string): Boolean;
Function KreGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
Function IsValidKodePerkDetail(cKodePerk, cKetPerk: string): Boolean;
Function IsHariLibur(dTgl: TDate): Boolean;
function IsDbLock(cKey: String): Boolean;
function GetDbLock(cKey: String; nTimeOut: Byte = 10): Boolean;
function ReleaseDbLock(cKey: String): Boolean;
function GetNamaUser(UserID: String): String;
function GetKodeCabang(kantorID: String): String;
function GetKodePusat(): String;
function GetTglEOD(CabangID: String): TDate;
function GetTglEOM(CabangID: String): TDate;
function GetNextRekID(cTable, cNamaField, cIdFormat: String; dTanggal: TDateTime; cKodeCabang: String = ''; cKodeProduk: String = ''): String;
function ABASetSaldoAkhir(cNoRekening: string): Boolean;
function ABAGetSaldoAkhir(cNoRekening: string; dTgl: TDate): Double;
function KirimNotifikasiAndroid(Pesan: TStrings; UserID: string): Boolean;
function GetPPAPWD(cNoRekening: String; dTgl: TDate; lNoMinusAgunanDiperhitungkan: Boolean = False): Double;
Function TabGetSaldoBlokir(cNoRekening: string; dTgl1: TDate): Double;
function InvGetSaldoAkhir(cNoInventaris: string; dTgl1: TDate): Double;
function InvSetSaldoAkhir(cNoInventaris: string): Boolean;
function IsValidJamTransaksi(cCabangID: string; dTgl: TDate; cJamTransaksi: TTime): Boolean;
function GetValidRekSLIK(cNoRekening: String): String;
function IsScanKTPKCTT(cNasabahID: String): Boolean;
function KreGetSaldoAkhirDebius(cNoRekening: string; dTgl1: TDate): Double;
function KreSetSaldoAkhirDebius(cNoRekening: string): Boolean;
function KreGetSaldoAkhirAyda(cNoRekening: string; dTgl1: TDate): Double;
function KreSetSaldoAkhirAyda(cNoRekening: string): Boolean;
function LimitUser(cKey: String): Boolean;
function ReleaseLimitUser(cKey: String): Boolean;
function CekNasabahBlokir(cNamaNasabah: String): Boolean;
function ABPPinjamanSetSaldoAkhir(cNoRekening: string): Boolean;
function simpan_nasabah_anak(cNasabahID, cNamaTableAnakTemp: String): Boolean;
function simpan_nasabah_waris(cNasabahID, cNamaTableWarisTemp: String): Boolean;
function get_nasabah_pengurus(cNasabahID, cTablePengurusTemp: String): Boolean;
function simpan_nasabah_pengurus(cNasabahID, cTablePengurusTemp: String): Boolean;
function AbpGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
function AbpSetSaldoAkhir(cNoRekening: string): Boolean;
function GetAccrualBMHDHarian(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
function KirimSMS(cPesan, cNoTujuan: string): Boolean;
function UpdateJumlaPosKonsol(cTablePos, cUraian: string): Boolean;
function ImportTXT2SQL(cFileName, cTableTarget: String; lAppend: Boolean = False): Boolean;

var
  buat_pajak, lFlag_FSA: Boolean;


implementation

uses DateUtils, MyVAR, Math, StrUtils, CekPassword, dm_bpr, MyAccess,
  IdException, CekMyPassword;

Function MyExecuteSQL(cSQL: String): Boolean;
begin
  Result := True;
  dm_bpr1.MyCommand1.SQL.Text := '#'+cNamaUser+#13#10+' '+cSQL;
  try
    dm_bpr1.MyCommand1.Execute;
  except
    on E: Exception do     //    on E: EIdException do
      begin
        dm_bpr1.MyCommand1.SQL.Text := 'INSERT INTO '+cDb2+'.`my_logbin` '+
          'SET waktu=CONCAT('+cDb2+'.get_tgl()," ",'+
            cDb2+'.get_jam()), source_bin='+QuotedStr(cSQL)+
            ', AppVer='+QuotedStr(AmbilVersi)+
            ', error_msg='+QuotedStr(E.Message);
          dm_bpr1.MyCommand1.Execute;
        Result := False;
      end;
  end;
end;

Function MyExecuteSQLNoTrans(cSQL: String): Boolean;
begin
  dm_bpr1.MyCommand1.SQL.Text := '#'+cNamaUser+#13#10+' '+cSQL;
  dm_bpr1.MyCommand1.Execute;
  Result := True;
end;

Function UpdateUserLog(ckd_menu: String; lInsert: Boolean; cKet: String = ''): Boolean;
var
  cSQL: String;
begin
  if Empty(cKet) then
    cket := 'null'
  else
    cKet := QuotedStr(cKet);

  if lInsert then
    cSQL := 'insert into '+cDb2+'.user_log (user,kd_menu,waktu,ket,AppVer) values ('+
      QuotedStr(cNamaUser)+','+QuotedStr(ckd_menu)+', NOW(),'+cKet+','+QuotedStr(AmbilVersi)+')'
  else
    cSQL := 'delete from '+cDb2+'.user_log where user='+QuotedStr(cNamaUser)+' and kd_menu='+QuotedStr(ckd_menu);

  Result := MyExecuteSQL(cSQL);

end;

Function UpdateErrorLog(ckd_menu: String; cKet: String = ''): Boolean;
var
  cSQL: String;
begin
  if Empty(cKet) then
    cket := 'null'
  else
    cKet := QuotedStr(cKet);

  cSQL := 'INSERT INTO '+cDb2+'.error_log (USER,kd_menu,waktu,ket,AppVer) VALUES ('+
    QuotedStr(cNamaUser)+','+QuotedStr(ckd_menu)+', NOW(),'+cKet+','+QuotedStr(AmbilVersi)+')';

  Result := MyExecuteSQL(cSQL);
end;

function UpdateRow(cTable, cSet, cKondisi: String): Boolean;
var
  cSQL: String;
begin
  cSQL := 'UPDATE '+Trim(cTable)+' SET '+cSet+' '+cKondisi;

  Result := MyExecuteSQL(cSQL);

end;

function SelectRow(cSelect: String): String;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := '#'+cNamaUser+#13#10+' '+cSelect;
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  Result := MySQLQuery1.Fields.Fields[0].AsString;
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function InsertRow(cTable, cFieldSet, cValueSet: String): Boolean;
var
  cSQL: String;
begin
  if cFieldSet <> '' then
    cSQL := 'INSERT INTO '+Trim(cTable)+' ('+cFieldSet+') VALUES('+cValueSet+') '
  else
    cSQL := 'INSERT INTO '+Trim(cTable)+' VALUES('+cValueSet+')';

  Result := MyExecuteSQL(cSQL);

end;

function ReplaceRow(cTable, cFieldSet, cValueSet: String): Boolean;
var
  cSQL: String;
begin
  if cFieldSet <> '' then
    cSQL := 'REPLACE INTO '+Trim(cTable)+' ('+cFieldSet+') VALUES('+cValueSet+')'
  else
    cSQL := 'REPLACE INTO '+Trim(cTable)+' VALUES('+cValueSet+')';

  Result := MyExecuteSQL(cSQL);

end;

Function DeleteRow(cTable, cKondisi: String): Boolean;
var
  cSQL: String;
begin
  cSQL := 'DELETE FROM '+Trim(cTable)+' '+cKondisi;
  if Pesan(3,'Yakin akan mengapus data ini ?') then
    begin

      Result := MyExecuteSQL(cSQL);
    end
  else
    Result := False;
end;

Function Ogie_DeleteRow(cTable, cWhere: String): Boolean;
var
  cSQL,cTemp: String;
begin
  cTemp := StringReplace(cWhere,'where','',[rfReplaceAll,rfIgnoreCase]);
  cWhere := cTemp;
  cPesanBahasa := SelectRow('select message as hasil from bahasa where bahasa_id='+cBahasa+' and message_id='+QuotedStr('MSG_DELETE'));
  if not CekIsUsed(cTable,cWhere,True) then
  begin
    cSQL := 'DELETE FROM '+Trim(cTable)+' WHERE '+cWhere;
    if Pesan(3,cPesanBahasa) then
      Result := MyExecuteSQL(cSQL)
    else
      Result := False;
  end
  else
    Result := False;
end;

Function UserAdmin( cNamaUser: String ): Boolean;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    begin
      if SelectRow('select level as hasil from '+cDb2+'.user where user='+QuotedStr(cNamaUser))='1' then
        Result := True
      else
        Result := False;
    end
  else
    Result := False;
end;

Function CekUserGroup( cNamaUser, cNamaGroup: String ): Boolean;
var
  cTempJml, cTempFilter: string;
  iCount, x: Integer;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    begin
      iCount := GetArgCount(cNamaGroup,';');
      cTempFilter := '';
      for x := 1 to iCount do
        begin
          cTempFilter := cTempFilter + IfThen(x > 1,', ','') + QuotedStr(GetArg(cNamaGroup,x,';'));
          Application.ProcessMessages;
        end;
      //Pesan(1,cTempFilter);
      //if SelectRow('select group_menu from '+cDb2+'.user where user='+QuotedStr(cNamaUser))=cNamaGroup then
      cTempJml := SelectRow('SELECT COUNT(*) FROM '+cDb2+'.`user` '+
          'WHERE `user`='+QuotedStr(cNamaUser)+' AND group_menu IN ('+cTempFilter+')');
      if (StrToInt(cTempJml) > 0) then
        Result := True
      else
        Result := False;
    end
  else
    Result := False;
end;

Function CekUserArea( cNamaUser, cKodeArea: String ): Boolean;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    begin
      if SelectRow('select kode_area from '+cDb2+'.user where user='+QuotedStr(cNamaUser))=cKodeArea then
        Result := True
      else
        Result := False;
    end
  else
    Result := False;
end;

Function GetUserArea( cNamaUser: String ): String;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    Result := SelectRow('select kode_area from '+cDb2+'.`user` where user='+QuotedStr(cNamaUser))
  else
    Result := '';
end;

Function GetUserID( cNamaUser: String ): String;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    Result := SelectRow('select user_id from '+cDb2+'.`user` where user='+QuotedStr(cNamaUser))
  else
    Result := '';
end;

Function GetUserEmail( cNamaUser: String ): String;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    Result := SelectRow('select email from '+cDb2+'.`user` where user='+QuotedStr(cNamaUser))
  else
    Result := '';
end;

Function GetUserLevelUp( UserID: String ): String;
var
  cUserIdInduk: string;
begin
  cUserIdInduk := SelectRow('select user_id_induk from '+cDb2+'.`user` where user_id='+QuotedStr(UserID));
  if Application.FindComponent('dm_bpr1') <> nil then
    Result := SelectRow('select `user` from '+cDb2+'.`user` where user_id='+QuotedStr(cUserIdInduk))
  else
    Result := '';
end;

Function UserOtorisator(cNamaUser, cType, cTOB: String; nJumlah: Double): Boolean;
var
  cTempSQL: string;
  nPengeluaran: Double;
begin
  Result := False;
  if (nJumlah=0) then
    begin
      If UserAdmin(cNamaUser) or (SelectRow('select count(*) as hasil from '+cDb2+'.user_otorisasi where '+
          'user='+QuotedStr(cNamaUser)+' and jenis='+QuotedStr(cType))='1') then
        Result := True
      else
        Result := False;
    end
  else if (nJumlah <> 0) then
    begin
      if (cType='MASUK') then
         cTempSQL := SelectRow('select '+IfThen(cTOB='T','penerimaan','penerimaan_ob')+
            ' as hasil from '+cDb2+'.user where user_name='+QuotedStr(cNamaUser))
       else
         cTempSQL := SelectRow('select '+IfThen(cTOB='T','pengeluaran','pengeluaran_ob')+
            ' as hasil from '+cDb2+'.user where user_name='+QuotedStr(cNamaUser));

       if Empty(cTempSQL) then
        nPengeluaran := 0
       else
        nPengeluaran := StrToFloat(cTempSQL);

       if (Abs(nJumlah) > nPengeluaran) then
         begin
           Pesan(2,'Maaf, Transaksi tidak dapat dilanjutkan..!'+#13#10+
              'penerimaan/pengeluaran melebihi wewenang otoritas user !');
           if not CekPass then
             begin
               Result := False;
               Exit;
             end;
         end
       else
        Result := True;
    end;
end;

Function GetKodeLitigasi( cKodeKantor: String ): String;
begin
  if Application.FindComponent('dm_bpr1') <> nil then
    Result := SelectRow('select kode_litigasi from '+cDb2+'.`app_kode_kantor` where kode_kantor='+QuotedStr(cKodeKantor))
  else
    Result := '';
end;

function TglValid(dtgl: TDate): Boolean;
begin
  if (SelectRow('select '+DateToStrSQL(dtgl)+' <> tanggal as hasil from sistem where jenis="TGL_EOD"')<>'0') then
    begin
      Pesan(2,'Tanggal system salah, hubungi bagian IT !');
      Result := False;
    end
  else Result := True;
end;

function CekTrustee(cUser,cMenu,cKet: String; lShowWarning: Boolean = False; nLevel: SmallInt = 0; cIndex: string = ''; nPublic: Byte = 0): Boolean;
var
  cTempDelegasi: string;
  MySQLQuery1: TMyQuery;
begin
  cTempDelegasi := SelectRow('select count(*) as hasil from '+cDb2+'.trust '+
      'where user IN (SELECT from_user_id FROM user_delegasi WHERE user_id='+QuotedStr(cUserID)+' '+
      '         AND '+DateToStrSQL(dTglSystem)+' BETWEEN tgl_mulai AND tgl_akhir'+
      '      ) and kd_menu='+QuotedStr(cMenu));
  if Empty(cTempDelegasi) then
    cTempDelegasi := '0';
  
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := 'SELECT `kd_menu`, `nm_menu`, `level`, `kd_urut`, `public` '+
          'FROM '+cDb2+'.menu '+
          'WHERE kd_menu='+QuotedStr(cMenu);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  //MySQLQuery1.FieldByName('value').AsString;

//  if (SelectRow('select count(*) as hasil from menu where kd_menu='+QuotedStr(cMenu))='0') then
//      InsertRow('menu','kd_menu,nm_menu,level,kd_urut',
//        QuotedStr(cMenu)+','+QuotedStr(cKet)+','+IntToStr(nLevel)+','+QuotedStr(cIndex));
  if (MySQLQuery1.RecordCount = 0) then
    MyExecuteSQL('INSERT INTO '+cDb2+'.menu (`kd_menu`, `nm_menu`, `level`, `kd_urut`, `public`) VALUES ('+
      QuotedStr(cMenu)+','+QuotedStr(cKet)+','+IntToStr(nLevel)+','+QuotedStr(cIndex)+','+IntToStr(nPublic)+')')
//      ') ON DUPLICATE KEY UPDATE '+
//      '`level`='+IntToStr(nLevel)+
//      ', `kd_urut`='+QuotedStr(cIndex)+
//      ', `public`='+IntToStr(nPublic))
  else if (MySQLQuery1.RecordCount > 0) and (nLevel > 0) then
    MyExecuteSQL('UPDATE '+cDb2+'.menu '+
      'SET `level`='+IntToStr(nLevel)+
      ', `kd_urut`='+QuotedStr(cIndex)+
      ', `public`='+IntToStr(nPublic)+' '+
      'WHERE `kd_menu`='+QuotedStr(cMenu));

  if (SelectRow('select count(*) as hasil from '+cDb2+'.trust '+
      //'where user='+QuotedStr(cUser)+' and kd_menu='+QuotedStr(cMenu))='0') then
      'where user IN (SELECT `user` FROM `user` WHERE user_id IN ( '+
      '       SELECT '+QuotedStr(cUserID)+' AS from_user_id '+
      '       UNION ALL '+
      '       SELECT from_user_id FROM user_delegasi WHERE user_id='+QuotedStr(cUserID)+' '+
      '         AND '+DateToStrSQL(dTglSystem)+' BETWEEN tgl_mulai AND tgl_akhir'+
      '      )) and kd_menu='+QuotedStr(cMenu))='0') then
    begin
      if UserAdmin(cUser) then
        begin
          UpdateUserLog(cMenu,True,cKet);
          Result := True;
        end
      else
        begin
          if lShowWarning then
            Pesan(2,'Anda tidak berhak menggunakan menu ini !');
          Result := False;
        end;
    end
  else
    begin
      UpdateUserLog(cMenu,True,cKet+IfThen(StrToInt(cTempDelegasi) > 0,' (Delegeasi)',''));
      Result := True;
    end;

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function CekIsUsed(cTabel,cExpression: String; lShowWarning: Boolean = False): Boolean;
begin
  if (SelectRow('select count(*) as hasil from '+cTabel+' where tgl_use is not null and '+cExpression)<>'0') then
    begin
      if lShowWarning then
        Pesan(2,'Data telah dikunci oleh system, data tidak dapat diedit/dihapus !');
      Result := True;
    end
  else
    Result := False;
end;

function KodeIsUsed(cTabel,cExpression: String; lShowWarning: Boolean = False): Boolean;
begin
  if (SelectRow('select count(*) as hasil from '+cTabel+' where '+cExpression)<>'0') then
    begin
      if lShowWarning then
        Pesan(2,'Kode/Nomor sudah ada, gunakan Kode/Nomor yang lain !');
      Result := True;
    end
  else
    Result := False;
end;

Function TempTable(cTable, cWhere, cSQL: String; lCreate: Boolean): Boolean;
var
  MyQuery1: TMyQuery;
begin
  MyQuery1 := TMyQuery.Create(nil);
  MyQuery1.Connection := dm_bpr1.MyCon2;
  MyQuery1.SQL.Text := 'select date(CREATE_TIME) as buat,date(curdate()) from information_schema.TABLES '+
      ' where TABLE_SCHEMA='+QuotedStr(cDb2)+' and TABLE_NAME='+QuotedStr(cTable)+
	    ' and date(CREATE_TIME)=date(curdate())';
  if MyQuery1.Active then
    MyQuery1.Refresh
  else
    MyQuery1.Open;

  if lCreate then
    begin
      if MyQuery1.RecordCount > 0 then
        begin
          Pesan(1,'Data sedang dipakai user lain !');
            if Pesan(3,'PERHATIAN, data yang dipakai bersama dapat menimbulkan perbedaan isi data, Tetap lanjutkan Koreksi data ?') then
              begin
                MyQuery1.Close;
                Result := True;
                Exit;
              end
            else
              begin
                MyQuery1.Close;
                Result := False;
                Exit;
              end;
        end
      else
        MyExecuteSQL('DROP TABLE IF EXISTS '+cTable);
      Result := MyExecuteSQL('CREATE TABLE IF NOT EXISTS '+cTable+
      ' '+cSQL+' '+cWhere);
    end
  else
    begin
      Result := MyExecuteSQL('DROP TABLE IF EXISTS '+cTable);
    end;
  MyQuery1.Close;
  MyQuery1.Free;
end;

Function GetNextNomor(cSetID: String; lFlg_Update: Boolean = False): String;
begin
  Result := SelectRow('select nomor+1 as hasil from '+cDb2+'.counter where setting='+QuotedStr(cSetID));

  if (Trim(Result) = '') then
    begin
      InsertRow(cDb2+'.counter','setting,nomor',QuotedStr(cSetID)+',0');
      Result := '1';
    end;

  //update counter
  if lFlg_Update then
    UpdateRow(cDb2+'.counter','nomor='+Result,'where setting='+QuotedStr(cSetID)+' and nomor <= '+QuotedStr(Result));
end;

Function CekPeriode(dTgl: TDate): Boolean;
var
  dtglAwal,dtglAkhir: TDate;
begin
  dtglAwal := StrToDate('01/01/'+Trim(SelectRow('select value as hasil from parameter where id='+QuotedStr('TAHUN_ABSEN'))));
  dtglAkhir := IncYear(dtglAwal)-1;
  Result := (dTgl >= dtglAwal) and (dTgl <= dtglAkhir);
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

function CekPass: Boolean;
begin
    Application.CreateForm(Tfr_CekPassword, fr_CekPassword);
    fr_CekPassword.Tag := 1;
    fr_CekPassword.ShowModal;
    if fr_CekPassword.Tag=0 then
      Result := True
    else
      Result := False;
    fr_CekPassword.Free;
    fr_CekPassword := nil;
end;

function CekMyPass: Boolean;
begin
    Application.CreateForm(Tfr_CekMyPassword, fr_CekMyPassword);
    fr_CekMyPassword.Tag := 1;
    fr_CekMyPassword.ShowModal;
    if fr_CekMyPassword.Tag=0 then
      Result := True
    else
      Result := False;
    fr_CekMyPassword.Free;
    fr_CekMyPassword := nil;
end;

Function GetMySysID(cGroup, cSetID: String; cDefault: String = ''): String;   //cGroup sudah tidak digunakan lagi
//var
//  cTemp: string;
begin
  //per 25 Maret migrasi sys_mysysid ke parameter
  Result := GetMyParameter(cSetID, cDefault);
//  cTemp := SelectRow('SELECT COUNT(*) as hasil '+
//    'FROM '+cDb2+'.sys_mysysid '+
//    'WHERE keyname='+QuotedStr(cSetID));
//  if (StrToInt(cTemp)=0) then
//    begin
//      ReplaceRow(cDb2+'.sys_mysysid','group_id,keyname,keyvalue',
//        QuotedStr(cGroup)+','+QuotedStr(cSetID)+','+QuotedStr(cDefault));
//      Result := cDefault;
//    end
//  else
//    begin
//      cTemp := SelectRow('SELECT keyvalue AS hasil '+
//        'FROM '+cDb2+'.sys_mysysid '+
//        'WHERE keyname='+QuotedStr(cSetID));
//      Result := cTemp;
//    end;
end;

Function SetMySysID(cGroup, cSetID: String; cDefault: String = ''): Boolean;
begin
  Result := SetMyParameter(cSetID, cDefault);
//  Result := ReplaceRow(cDb2+'.sys_mysysid','group_id,keyname,keyvalue',
//    QuotedStr(cGroup)+','+QuotedStr(cSetID)+','+QuotedStr(cDefault));
end;

Function TempJurnal(cTransID: String; lCreate: Boolean): Boolean;
var
  MyQuery1: TMyQuery;
begin
  MyQuery1 := TMyQuery.Create(nil);
  MyQuery1.Connection := dm_bpr1.MyCon2;
  MyQuery1.SQL.Text := 'show tables like '+QuotedStr('TempTM_JRNL'+cTransID);
  if MyQuery1.Active then
    MyQuery1.Refresh
  else
    MyQuery1.Open;

  if lCreate then
    begin
      if MyQuery1.RecordCount > 0 then
        begin
          Pesan(1,'table sedang dipakai terminal lain !');
            if Pesan(3,'ambil alih table yang dipakai ?') then
              begin
                if CekPass then
                  begin
                    MyQuery1.Close;
                    Result := True;
                    Exit;
                  end
                else
                  begin
                    MyQuery1.Close;
                    Result := False;
                    Exit;
                  end;
              end
            else
              begin
                MyQuery1.Close;
                Result := False;
                Exit;
              end;
        end
      else
        begin
          MyExecuteSQL('DROP TABLE IF EXISTS TempTM_JRNL'+cTransID);
          MyExecuteSQL('DROP TABLE IF EXISTS TempTD_JRNL'+cTransID);
        end;

      Result := MyExecuteSQL('CREATE TABLE IF NOT EXISTS TempTM_JRNL'+cTransID+
      ' select * from transaksi_master where trans_id='+QuotedStr(cTransID))
      and MyExecuteSQL('CREATE TABLE IF NOT EXISTS TempTD_JRNL'+cTransID+
      ' select * from transaksi_detail where master_id='+QuotedStr(cTransID));
    end
  else
    begin
      Result := MyExecuteSQL('DROP TABLE IF EXISTS TempTM_JRNL'+cTransID)
      and MyExecuteSQL('DROP TABLE IF EXISTS TempTD_JRNL'+cTransID);
    end;
  MyQuery1.Close;
  MyQuery1.Free;
end;

function GetFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): String;
var
  MyQuery1: TMyQuery;
begin
  MyQuery1 := TMyQuery.Create(nil);
  MyQuery1.Connection := dm_bpr1.MyCon2;
  MyQuery1.SQL.Text := 'select '+cSearchField+' from '+cTable+' where '+cField+' = '+QuotedStr(cKeyField);
  if MyQuery1.Active then
    MyQuery1.Refresh
  else
    MyQuery1.Open;

  Result := MyQuery1.FieldByName(cSearchField).AsString;

  MyQuery1.Close;
  MyQuery1.Free;
end;

function GetFloatFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): Double;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := 'select '+cSearchField+' from '+cTable+' where '+cField+' = '+QuotedStr(cKeyField);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  Result := MySQLQuery1.FieldByName(cSearchField).AsFloat;

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function GetIntegerFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): Integer;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := 'select '+cSearchField+' from '+cTable+' where '+cField+' = '+QuotedStr(cKeyField);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  Result := MySQLQuery1.FieldByName(cSearchField).AsInteger;

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function GetDateFValueByFKeyValue(cTable, cField, cKeyField, cSearchField: String): TDateTime;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := 'select '+cSearchField+' from '+cTable+' where '+cField+' = '+QuotedStr(cKeyField);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  Result := MySQLQuery1.FieldByName(cSearchField).AsDateTime;

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function GetTglSaldoAwalNeraca( cKodeCabang: String; dTglFilter: TDate ): TDate;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

  if (cKodeCabang<>'*') then
    MySQLQuery1.SQL.Text := 'SELECT MAX(tgl_laporan) AS tgl '+
      'FROM '+cDb2+'.`neraca_saldo` '+
      'WHERE kode_kantor IN (SELECT kode_kantor '+
      '   FROM '+cDb2+'.app_kode_kantor WHERE kode_cabang = '+QuotedStr(cKodeCabang)+') '+
      '   AND tgl_laporan < '+DateToStrSQL(dTglFilter)
  else
    MySQLQuery1.SQL.Text := 'SELECT MAX(tgl_laporan) AS tgl '+
      'FROM '+cDb2+'.`neraca_saldo` '+
      'WHERE tgl_laporan < '+DateToStrSQL(dTglFilter);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  if MySQLQuery1.RecordCount=0 then
    Result := StrToDate('01/01/1950')
    //IncDay(dTglFilter, -1)  //StrToDate('01/01/1900')  //kembalikan nilai tgl awal
  else
    Result := DateOf(MySQLQuery1.FieldByName('tgl').AsDateTime);

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

Function GetMyParameter(cSetID: String; cDefault: String = ''): String;
var
  MySQLQuery1: TMyQuery;
//  cTemp: string;
begin
//  cTemp := SelectRow('SELECT COUNT(*) as hasil '+
//    'FROM '+cDb2+'.parameter '+
//    'WHERE id='+QuotedStr(cSetID));
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := 'SELECT `value` '+
          'FROM '+cDb2+'.parameter '+
          'WHERE id='+QuotedStr(cSetID);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

    //if (StrToInt(cTemp)=0) then
    if (MySQLQuery1.RecordCount=0) then
      begin
        MyExecuteSQL('INSERT INTO '+cDb2+'.parameter '+
          'SET `id`='+QuotedStr(cSetID)+', '+
          ' `value`='+QuotedStr(cDefault)+' '+
          'ON DUPLICATE KEY UPDATE '+
          ' `value`='+QuotedStr(cDefault));
        Result := cDefault;
      end
    else
      begin
//        cTemp := SelectRow('SELECT `value` '+
//          'FROM '+cDb2+'.parameter '+
//          'WHERE id='+QuotedStr(cSetID));
//        Result := cTemp;
        Result := MySQLQuery1.FieldByName('value').AsString;
      end;

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function SetMyParameter(cSetID: String; cDefault: String = ''): Boolean;
begin
  MyExecuteSQL('INSERT INTO '+cDb2+'.parameter '+
    'SET `id`='+QuotedStr(cSetID)+', '+
    ' `value`='+QuotedStr(cDefault)+' '+
    'ON DUPLICATE KEY UPDATE '+
    ' `value`='+QuotedStr(cDefault));
  Result := True;
end;

Function HitungSaldoPerkiraan(cKodePerkAll: string; dTgl: TDate; cKodeKantor: string): Double;
var
  MySQLQuery1: TMyQuery;
  cPerkiraan, cKodePerk : string;
  nResult, nJurnalCLSHariIni : Double;
  iCountPerk, x: Integer;
  dTglMulai: TDate;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  nResult := 0;

  lFlag_FSA := True;
  dTglMulai := GetTglSaldoAwalNeraca(GetKodeCabang(cKodeKantor), IncDay(dTgl, 1));
  if not lSaldoAwalNeraca or (DateOf(dTglMulai)=DateOf(StrToDate('01/01/1950'))) then
    begin
      lFlag_FSA := False;
      dTglMulai := dTgl;
    end;

  iCountPerk := GetArgCount(cKodePerkAll,';');
  for x := 1 to iCountPerk do
    begin
      cPerkiraan := GetArg(cKodePerkAll,x,';'); //cKodePerkAll;
      if (SelectRow('select '+cDb2+
        '.AccPerkiraanIsHaveSub('+QuotedStr(cPerkiraan)+') as hasil')='0') then
        begin
          if (Trim(cKodeKantor)='*') then
            begin
              nResult := nResult + AccGetSaldoPerkiraanByTanggal(cPerkiraan,dTglMulai,'');
              nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,'',dTgl);
              nResult:=nResult+nJurnalCLSHariIni;
            end
          else
            begin
              nResult := nResult+ AccGetSaldoPerkiraanByTanggal(cPerkiraan,dTglMulai,cKodeKantor);
              nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,cKodeKantor,dTgl);
              nResult:=nResult+nJurnalCLSHariIni;
            end;
        end
      else
        begin
          MySQLQuery1.SQL.Text := 'select kode_perk from perkiraan '+
            'where kode_perk like '+QuotedStr(cPerkiraan+'%')+' and G_OR_D="D" ';
          MySQLQuery1.Close;
          MySQLQuery1.Open;
          MySQLQuery1.First;
          while not MySQLQuery1.Eof do
            begin
              cKodePerk := MySQLQuery1.FieldByName('kode_perk').AsString;
              if (Trim(cKodeKantor)='*') then
                begin
                  nResult := nResult + AccGetSaldoPerkiraanByTanggal(cKodePerk,dTglMulai,'');
                  nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,'',dTgl);
                  nResult:=nResult+nJurnalCLSHariIni;
                end
              else
                begin
                  nResult := nResult + AccGetSaldoPerkiraanByTanggal(cKodePerk,dTglMulai,cKodekantor);
                  nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,cKodeKantor,dTgl);
                  nResult:=nResult+nJurnalCLSHariIni;
                end;
              MySQLQuery1.Next;
              Application.ProcessMessages;
            end;
          MySQLQuery1.Close;
        end;
      Application.ProcessMessages;
    end;
  Result := nResult;
  MySQLQuery1.Free;
end;

Function HitungSaldoPerkiraanBulan(cKodePerkAll: string; dTgl: TDate; cKodeKantor: string): Double;
var
  MySQLQuery1: TMyQuery;
  cPerkiraan, cKodePerk : string;
  nResult, nJurnalCLSHariIni : Double;
  iCountPerk, x: Integer;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  nResult := 0;
  lSaldoAwalNeraca := True;

  iCountPerk := GetArgCount(cKodePerkAll,';');
  for x := 1 to iCountPerk do
    begin
      cPerkiraan := GetArg(cKodePerkAll,x,';'); //cKodePerkAll;
      if (SelectRow('select '+cDb2+
        '.AccPerkiraanIsHaveSub('+QuotedStr(cPerkiraan)+') as hasil')='0') then
        begin
          if (Trim(cKodeKantor)='*') then
            begin
              nResult := nResult + AccGetSaldoPerkiraanByBulan(cPerkiraan,dTgl,'');
              nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,'',dTgl);
              nResult:=nResult+nJurnalCLSHariIni;
            end
          else
            begin
              nResult := nResult+ AccGetSaldoPerkiraanByBulan(cPerkiraan,dTgl,cKodeKantor);
              nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,cKodeKantor,dTgl);
              nResult:=nResult+nJurnalCLSHariIni;
            end;
        end
      else
        begin
          MySQLQuery1.SQL.Text := 'select kode_perk from perkiraan '+
            'where kode_perk like '+QuotedStr(cPerkiraan+'%')+' and G_OR_D="D" ';
          MySQLQuery1.Close;
          MySQLQuery1.Open;
          MySQLQuery1.First;
          while not MySQLQuery1.Eof do
            begin
              cKodePerk := MySQLQuery1.FieldByName('kode_perk').AsString;
              if (Trim(cKodeKantor)='*') then
                begin
                  nResult := nResult + AccGetSaldoPerkiraanByBulan(cKodePerk,dTgl,'');
                  nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,'',dTgl);
                  nResult:=nResult+nJurnalCLSHariIni;
                end
              else
                begin
                  nResult := nResult + AccGetSaldoPerkiraanByBulan(cKodePerk,dTgl,cKodekantor);
                  nJurnalCLSHariIni:=AccGetSaldoCLSHariIni(cKodePerk,cKodeKantor,dTgl);
                  nResult:=nResult+nJurnalCLSHariIni;
                end;
              MySQLQuery1.Next;
              Application.ProcessMessages;
            end;
          MySQLQuery1.Close;
        end;
      Application.ProcessMessages;
    end;
  Result := nResult;
  MySQLQuery1.Free;
end;

function GetSaldoPerkiraanCabangByTanggal(cKode_Cabang, cKodePerkAll: string; dTgl: TDate): Double;
var
  MySQLQuery1: TMyQuery;
  cPerkiraan: string;
  nSaldoPerk: Double;
  x, iCountPerk: Integer;
begin
  if not Empty(cKodePerkAll) then
    begin
      MySQLQuery1 := TMyQuery.Create(nil);
      MySQLQuery1.Connection := dm_bpr1.MyCon2;

      if (cKode_Cabang='*') then
        begin
          MySQLQuery1.SQL.Text := 'SELECT kode_kantor FROM '+
              cDb2+'.app_kode_kantor '+
              'ORDER BY kode_kantor';
        end
      else
        begin
          MySQLQuery1.SQL.Text := 'SELECT kode_kantor FROM '+
              cDb2+'.app_kode_kantor '+
              'WHERE kode_cabang = '+QuotedStr(cKode_Cabang)+' '+
              'ORDER BY kode_kantor';
        end;
      if MySQLQuery1.Active then
        MySQLQuery1.Refresh
      else
        MySQLQuery1.Open;

      nSaldoPerk := 0;
      iCountPerk := GetArgCount(cKodePerkAll,';');
      for x := 1 to iCountPerk do
        begin
          cPerkiraan := GetArg(cKodePerkAll,x,';');
          if (MySQLQuery1.RecordCount > 0) then
            begin
              MySQLQuery1.First;
              while not MySQLQuery1.Eof do
                begin
                  nSaldoPerk := nSaldoPerk + HitungSaldoPerkiraan(cPerkiraan, dTgl,
                    MySQLQuery1.FieldByName('kode_kantor').AsString);
                  MySQLQuery1.Next;
                  Application.ProcessMessages;
                end;
            end
          else
            nSaldoPerk := nSaldoPerk + HitungSaldoPerkiraan(cPerkiraan, dTgl, cKode_Cabang);
        end;
      MySQLQuery1.Close;
      MySQLQuery1.Free;
    end
  else
    nSaldoPerk := 0;
  Result := nSaldoPerk;
end;

function GetSaldoPerkiraanCabangByBulan(cKode_Cabang, cKodePerkAll: string; dTgl: TDate): Double;
var
  MySQLQuery1: TMyQuery;
  cPerkiraan: string;
  nSaldoPerk: Double;
  x, iCountPerk: Integer;
begin
  if not Empty(cKodePerkAll) then
    begin
      MySQLQuery1 := TMyQuery.Create(nil);
      MySQLQuery1.Connection := dm_bpr1.MyCon2;

      if (cKode_Cabang='*') then
        begin
          MySQLQuery1.SQL.Text := 'SELECT kode_kantor FROM '+
              cDb2+'.app_kode_kantor '+
              'ORDER BY kode_kantor';
        end
      else
        begin
          MySQLQuery1.SQL.Text := 'SELECT kode_kantor FROM '+
              cDb2+'.app_kode_kantor '+
              'WHERE kode_cabang = '+QuotedStr(cKode_Cabang)+' '+
              'ORDER BY kode_kantor';
        end;
      if MySQLQuery1.Active then
        MySQLQuery1.Refresh
      else
        MySQLQuery1.Open;

      nSaldoPerk := 0;
      iCountPerk := GetArgCount(cKodePerkAll,';');
      for x := 1 to iCountPerk do
        begin
          cPerkiraan := GetArg(cKodePerkAll,x,';');
          if (MySQLQuery1.RecordCount > 0) then
            begin
              MySQLQuery1.First;
              while not MySQLQuery1.Eof do
                begin
                  nSaldoPerk := nSaldoPerk + HitungSaldoPerkiraanBulan(cPerkiraan, dTgl,
                    MySQLQuery1.FieldByName('kode_kantor').AsString);
                  MySQLQuery1.Next;
                  Application.ProcessMessages;
                end;
            end
          else
            nSaldoPerk := nSaldoPerk + HitungSaldoPerkiraanBulan(cPerkiraan, dTgl, cKode_Cabang);
        end;
      MySQLQuery1.Close;
      MySQLQuery1.Free;
    end
  else
    nSaldoPerk := 0;
  Result := nSaldoPerk;
end;

Function AccGetSaldoPerkiraanByTanggal(cKodePerk: string; dTgl: TDate; cKodeKantor: string): Double;
var
  MySQLQuery1: TMyQuery;
  cSQLSA, cSQL: String;
  nSaldoAkhir: Double;
  dTglMulai: TDate;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

  nSaldoAkhir := 0;
  if lFlag_FSA then
    dTglMulai := dTgl
  else
    dTglMulai := StrToDate('01/01/1950');

  //dTglMulai := GetTglSaldoAwalNeraca(cKodeKantor, IncDay(dTgl, 1));

  if (lSaldoAwalNeraca) and lFlag_FSA and (DateOf(dTgl)=DateOf(dTglMulai)) then
    begin
      cSQLSA := 'SELECT SUM(`saldo_akhir`) AS jml_saldo_akhir '+
                 'FROM '+cDb2+'.`neraca_saldo` '+
                 'WHERE kode_perk='+QuotedStr(cKodePerk)+
                 ' AND tgl_laporan='+DateToStrSQL(dTglMulai)+
                 IfThen(Empty(Trim(cKodeKantor)),'',
                    ' AND kode_kantor='+QuotedStr(cKodeKantor))+
                 ' GROUP BY kode_perk';
      MySQLQuery1.SQL.Text := cSQLSA;
      if MySQLQuery1.Active then
        MySQLQuery1.Refresh
      else
        MySQLQuery1.Open;

      if MySQLQuery1.RecordCount > 0 then
        nSaldoAkhir := MySQLQuery1.FieldByName('jml_saldo_akhir').AsFloat;
    end
  else
    begin
      //ambil nilai saldo awal
      if (lSaldoAwalNeraca) then
        begin
          dTglMulai := GetTglSaldoAwalNeraca(GetKodeCabang(cKodeKantor), IncDay(EndOfTheMonth(IncMonth(dTgl, -1)),1));
        end;

      if (lSaldoAwalNeraca) and (DateOf(EndOfTheMonth(IncMonth(dTgl, -1)))=DateOf(dTglMulai)) then
        begin
          cSQLSA := 'SELECT SUM(`saldo_akhir`) AS jml_saldo_akhir '+
                     'FROM '+cDb2+'.`neraca_saldo` '+
                     'WHERE kode_perk='+QuotedStr(cKodePerk)+
                     ' AND tgl_laporan='+DateToStrSQL(dTglMulai)+
                     IfThen(Empty(Trim(cKodeKantor)),'',
                        ' AND kode_kantor='+QuotedStr(cKodeKantor))+
                     ' GROUP BY kode_perk';
          MySQLQuery1.SQL.Text := cSQLSA;
          if MySQLQuery1.Active then
            MySQLQuery1.Refresh
          else
            MySQLQuery1.Open;

          if MySQLQuery1.RecordCount > 0 then
            nSaldoAkhir := MySQLQuery1.FieldByName('jml_saldo_akhir').AsFloat;

          if Empty(Trim(cKodeKantor)) then
            cSQL := 'SELECT SUM(debet) AS debet, SUM(kredit) AS kredit, d_or_k, transaksi_detail.kode_perk '+
              'FROM '+cDb2+'.transaksi_detail, '+cDb2+'.perkiraan '+
              'WHERE transaksi_detail.kode_perk=perkiraan.kode_perk '+
              '   AND transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+
              '   AND master_id IN (SELECT trans_id '+
              '     FROM transaksi_master WHERE tgl_trans > '+DateToStrSQL(dTglMulai)+  //harus > karena sudah pakai tgl terakhir
              '     AND tgl_trans<='+DateToStrSQL(dTgl)+') '+
              'GROUP BY kode_perk '
          else
            cSQL := 'SELECT SUM(debet) AS debet, SUM(kredit) AS kredit, d_or_k, transaksi_detail.kode_perk '+
              'FROM '+cDb2+'.transaksi_detail, '+cDb2+'.perkiraan '+
              'where transaksi_detail.kode_perk=perkiraan.kode_perk '+
              '   AND transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+
              '   AND master_id in (SELECT trans_id '+
              '     FROM '+cDb2+'.transaksi_master WHERE kode_kantor='+QuotedStr(cKodeKantor)+
              '     AND tgl_trans > '+DateToStrSQL(dTglMulai)+  //harus > karena sudah pakai tgl terakhir
              '     AND tgl_trans<='+DateToStrSQL(dTgl)+') '+
              'GROUP BY kode_perk ';
        end
      else
        begin
          if Empty(Trim(cKodeKantor)) then
            cSQL := 'select sum(debet) as debet, sum(kredit) as kredit, d_or_k, transaksi_detail.kode_perk '+
              'from '+cDb2+'.transaksi_detail, '+cDb2+'.perkiraan '+
              'where transaksi_detail.kode_perk=perkiraan.kode_perk '+
              'and transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+' and master_id in (select trans_id '+
              'from transaksi_master where tgl_trans<='+DateToStrSQL(dTgl)+') group by kode_perk '
          else
            cSQL := 'select sum(debet) as debet, sum(kredit) as kredit, d_or_k, transaksi_detail.kode_perk '+
                'from '+cDb2+'.transaksi_detail, '+cDb2+'.perkiraan '+
                'where transaksi_detail.kode_perk=perkiraan.kode_perk '+
                '   and transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+' and master_id in (select trans_id '+
                '     from '+cDb2+'.transaksi_master where kode_kantor='+QuotedStr(cKodeKantor)+
                '     and tgl_trans<='+DateToStrSQL(dTgl)+') group by kode_perk ';
        end;
    end;

  Result := nSaldoAkhir;
  if not Empty(cSQL) then
    begin
      MySQLQuery1.SQL.Text := cSQL;
      if MySQLQuery1.Active then
        MySQLQuery1.Refresh
      else
        MySQLQuery1.Open;
        
      if MySQLQuery1.RecordCount > 0 then
        begin
          if (Trim(MySQLQuery1.FieldByName('d_or_k').AsString)='D') then
            Result := Result + MySQLQuery1.FieldByName('debet').AsFloat - MySQLQuery1.FieldByName('kredit').AsFloat
          else
            Result := Result + MySQLQuery1.FieldByName('kredit').AsFloat - MySQLQuery1.FieldByName('debet').AsFloat;
        end;
    end;

  MySQLQuery1.Free;
end;

Function AccGetSaldoPerkiraanByBulan(cKodePerk: string; dTgl: TDate; cKodeKantor: string): Double;
var
  MySQLQuery1: TMyQuery;
  cSQLSA, cSQL: String;
  nSaldoAkhir: Double;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

  nSaldoAkhir := 0;

  if (lSaldoAwalNeraca) then
    begin
      cSQLSA := 'SELECT SUM(`saldo_akhir`) AS jml_saldo_akhir '+
                 'FROM '+cDb2+'.`neraca_saldo` '+
                 'WHERE kode_perk='+QuotedStr(cKodePerk)+
                 ' AND tgl_laporan='+DateToStrSQL(dTgllSaldoAwalNeraca)+
                 //' AND bulan='+IntToStr(MonthOf(dTglCekNeracaSaldo))+
                 //' AND tahun='+IntToStr(YearOf(dTglCekNeracaSaldo))+
                 IfThen(Empty(Trim(cKodeKantor)),'',
                    ' AND kode_kantor='+QuotedStr(cKodeKantor))+
                 ' GROUP BY kode_perk';
      MySQLQuery1.SQL.Text := cSQLSA;
      if MySQLQuery1.Active then
        MySQLQuery1.Refresh
      else
        MySQLQuery1.Open;

      if MySQLQuery1.RecordCount > 0 then
        nSaldoAkhir := MySQLQuery1.FieldByName('jml_saldo_akhir').AsFloat;

      if (DateOf(dTgl) = DateOf(EndOfTheMonth(dTgl))) then
        cSQL := ''
      else
        begin
          if Empty(Trim(cKodeKantor)) then
            cSQL := 'select sum(debet) as debet, sum(kredit) as kredit, d_or_k, transaksi_detail.kode_perk '+
                'from transaksi_detail,perkiraan where transaksi_detail.kode_perk=perkiraan.kode_perk '+
                'and transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+' and master_id in (select trans_id '+
                'from transaksi_master where MONTH(tgl_trans)='+IntToStr(MonthOf(dTgl))+
                ' AND YEAR(tgl_trans)='+IntToStr(YearOf(dTgl))+') group by kode_perk '
          else
            cSQL := 'select sum(debet) as debet, sum(kredit) as kredit, d_or_k, transaksi_detail.kode_perk '+
                'from transaksi_detail,perkiraan where transaksi_detail.kode_perk=perkiraan.kode_perk '+
                'and transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+' and master_id in (select trans_id '+
                'from transaksi_master where kode_kantor='+QuotedStr(cKodeKantor)+
                ' and MONTH(tgl_trans)='+IntToStr(MonthOf(dTgl))+
                ' AND YEAR(tgl_trans)='+IntToStr(YearOf(dTgl))+') group by kode_perk ';
        end;
    end
  else
    begin
      cSQL := 'select sum(debet) as debet, sum(kredit) as kredit, d_or_k, transaksi_detail.kode_perk '+
          'from transaksi_detail,perkiraan where transaksi_detail.kode_perk=perkiraan.kode_perk '+
          'and transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+' and master_id in (select trans_id '+
          'from transaksi_master where MONTH(tgl_trans)='+IntToStr(MonthOf(dTgl))+
          ' AND YEAR(tgl_trans)='+IntToStr(YearOf(dTgl))+') group by kode_perk ';
      if not Empty(Trim(cKodeKantor)) then
        cSQL := 'select sum(debet) as debet, sum(kredit) as kredit, d_or_k, transaksi_detail.kode_perk '+
            'from transaksi_detail,perkiraan where transaksi_detail.kode_perk=perkiraan.kode_perk '+
            'and transaksi_detail.kode_perk='+QuotedStr(cKodePerk)+' and master_id in (select trans_id '+
            'from transaksi_master where kode_kantor='+QuotedStr(cKodeKantor)+
            ' and MONTH(tgl_trans)='+IntToStr(MonthOf(dTgl))+
            ' AND YEAR(tgl_trans)='+IntToStr(YearOf(dTgl))+') group by kode_perk ';
    end;

  Result := nSaldoAkhir;
  if not Empty(cSQL) then
    begin
      MySQLQuery1.SQL.Text := cSQL;
      MySQLQuery1.Open;

      if MySQLQuery1.RecordCount > 0 then
        begin
          if (Trim(MySQLQuery1.FieldByName('d_or_k').AsString)='D') then
            Result := Result + MySQLQuery1.FieldByName('debet').AsFloat - MySQLQuery1.FieldByName('kredit').AsFloat
          else
            Result := Result + MySQLQuery1.FieldByName('kredit').AsFloat - MySQLQuery1.FieldByName('debet').AsFloat;
        end;
    end;
  MySQLQuery1.Free;
end;

Function KreSetSaldoAkhir(cNoRekening: string): Boolean;
var
  cTempSQL, cVerifikasi, cTypeKredit, cKolekBI: string;
  nJml,nJml2,nJmlDebius,nJmlAyda, nSaldoPokok, nSaldoBunga: Double;
  dTglLunas: TDate;
begin
  //update saldo kredit
  cTempSQL := SelectRow('select count(*) as hasil from '+
    cDb2+'.kretrans where '+
    ' (floor(my_kode_trans/100)=1) and no_rekening='+QuotedStr(cNoRekening)+
    ' group by no_rekening');
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nJml := StrToFloat(cTempSQL);

  cTempSQL := SelectRow('select count(*) as hasil from '+
    cDb2+'.kretrans where '+
    ' (floor(my_kode_trans/100)=3) and no_rekening='+QuotedStr(cNoRekening)+
    ' group by no_rekening');
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nJml2 := StrToFloat(cTempSQL);

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=3,pokok,0)) as hasil from '+
    cDb2+'.kretrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);

  cVerifikasi := SelectRow('select verifikasi as hasil from '+
    cDb2+'.kredit where no_rekening='+
    QuotedStr(cNoRekening));

  if (nJml2 > 0) then
    begin
      cTempSQL := SelectRow('select count(*) as hasil from '+
        cDb2+'.kretrans where '+
        ' (floor(my_kode_trans/100)=8) and no_rekening='+QuotedStr(cNoRekening)+
        ' group by no_rekening');
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nJmlDebius := StrToFloat(cTempSQL);  //debius

      cTempSQL := SelectRow('select count(*) as hasil from '+
        cDb2+'.kretrans where '+
        ' (floor(my_kode_trans/100)=7) and no_rekening='+QuotedStr(cNoRekening)+
        ' group by no_rekening');
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nJmlAyda := StrToFloat(cTempSQL);  //ayda

      if ((nJmlDebius>0) or (nJmlAyda>0)) then
        begin
          MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
            ' tgl_lunas=null WHERE no_rekening='+QuotedStr(cNoRekening));
          //update debius
          if (nJmlDebius>0) then
            KreSetSaldoAkhirDebius(cNoRekening);
          //update ayda
          if (nJmlAyda>0) then
          KreSetSaldoAkhirAyda(cNoRekening);
        end;

      if (nJmlDebius=0) and (nJmlAyda=0) then
        begin
          dm_bpr1.MyQuery3.SQL.Text := 'SELECT MAX(tgl_trans) as tgl_lunas FROM '+cDb2+'.kretrans '+
            'WHERE (FLOOR(my_kode_trans/100)=3) AND (pokok > 0) AND no_rekening='+QuotedStr(cNoRekening);
          if dm_bpr1.MyQuery3.Active then
            dm_bpr1.MyQuery3.Refresh
          else
            dm_bpr1.MyQuery3.Open;

          if (dm_bpr1.MyQuery3.RecordCount > 0) then
            begin
              dTglLunas := dm_bpr1.MyQuery3.FieldByName('tgl_lunas').AsDateTime;
              if (nSaldoPokok = 0) and (cVerifikasi='1') and (nJml>0) and (nJml2>0) then
                MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
                  ' tgl_lunas='+DateToStrSQL(dTglLunas)+' WHERE no_rekening='+QuotedStr(cNoRekening));
            end;
        end;
    end;
  
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,bunga,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=3,bunga,0)) as hasil from '+
    cDb2+'.kretrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoBunga := StrToFloat(cTempSQL);

  cTypeKredit := SelectRow('select type_kredit as hasil from '+
    cDb2+'.kredit where no_rekening='+
    QuotedStr(cNoRekening));

  MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
    ' pokok_saldo_akhir='+FloatToStr(nSaldoPokok)+',  bunga_saldo_akhir='+FloatToStr(IfThen(GetMySysID('KRE','KRE_SETTING_MUNCUL_SALDO_AKHIR_BUNGA')='YA',nSaldoBunga,0))+
    ',  status='+IfThen(nSaldoPokok=0,IfThen(cVerifikasi='1','2','0'),'1')+' WHERE no_rekening='+
    QuotedStr(cNoRekening));

  if (nSaldoPokok > 0) and (cVerifikasi='1') and (nJml>0) then
    MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
      ' tgl_lunas=null WHERE no_rekening='+QuotedStr(cNoRekening));

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=4,bunga,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=5,bunga,0)) as hasil from '+
    cDb2+'.kretrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
    ' saldo_bunga_yad='+FloatToStr(nSaldoPokok)+' WHERE no_rekening='+
    QuotedStr(cNoRekening));

  cKolekBI := SelectRow('SELECT '+cDb2+'.`get_kolek_bi`('+QuotedStr(cNoRekening)+', '+DateToStrSQL(dTglSystem)+')');
  if not Empty(cKolekBI) then  
    MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
      ' kolektibilitas='+cKolekBI+
      ' WHERE no_rekening='+QuotedStr(cNoRekening));

  if (nJml>0) then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=2,amortisasi,0)) as hasil from '+
        cDb2+'.provisi_trans where no_rekening='+
        QuotedStr(cNoRekening));
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nSaldoPokok := StrToFloat(cTempSQL);
      MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
        ' saldo_akhir_provisi=ifnull(provisi,0)-'+FloatToStr(nSaldoPokok)+' WHERE no_rekening='+
        QuotedStr(cNoRekening));

      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=2,amortisasi_adm,0)) as hasil from '+
        cDb2+'.adm_trans where no_rekening='+
        QuotedStr(cNoRekening));
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nSaldoPokok := StrToFloat(cTempSQL);
      MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
        ' saldo_akhir_adm=ifnull(adm_lainnya,0)-'+FloatToStr(nSaldoPokok)+' WHERE no_rekening='+
        QuotedStr(cNoRekening));

      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=8,pokok,0)) - '+
        ' sum(if(floor(my_kode_trans/100)=9 and kode_trans<>"930",pokok,0)) as hasil '+
        'from '+cDb2+'.kretrans where no_rekening='+
        QuotedStr(cNoRekening));
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nSaldoPokok := StrToFloat(cTempSQL);
      MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
        ' saldo_akhir_debius='+FloatToStr(nSaldoPokok)+
        ' WHERE no_rekening='+QuotedStr(cNoRekening));

      cTempSQL := SelectRow('select sum(if(my_kode_trans=700 and kode_trans="385",pokok,0)) - '+
        ' sum(if(my_kode_trans=700 and kode_trans="710",pokok,0)) - '+
        ' sum(if(my_kode_trans=700 and kode_trans="711",pokok,0)) as hasil from '+
        cDb2+'.kretrans where no_rekening='+
        QuotedStr(cNoRekening));
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nSaldoPokok := StrToFloat(cTempSQL);
      MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
        ' saldo_akhir_ayda_pokok='+FloatToStr(nSaldoPokok)+
        ' WHERE no_rekening='+QuotedStr(cNoRekening));

      cTempSQL := SelectRow('select sum(if(my_kode_trans=700 and kode_trans="385",bunga,0)) - '+
        ' sum(if(my_kode_trans=700 and kode_trans="710",bunga,0)) - '+
        ' sum(if(my_kode_trans=700 and kode_trans="711",bunga,0)) as hasil from '+
        cDb2+'.kretrans where no_rekening='+
        QuotedStr(cNoRekening));
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nSaldoPokok := StrToFloat(cTempSQL);
      MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
        ' saldo_akhir_ayda_bunga='+FloatToStr(nSaldoPokok)+
        ' WHERE no_rekening='+QuotedStr(cNoRekening));

      cTempSQL := SelectRow('select sum(if(my_kode_trans=600,denda,0)) - '+
        ' sum(if(floor(my_kode_trans/100)=3,denda,0)) as hasil from '+
        cDb2+'.kretrans where no_rekening='+
        QuotedStr(cNoRekening));
      if Empty(cTempSQL) then
        cTempSQL := '0';
      nSaldoPokok := StrToFloat(cTempSQL);
      MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
        ' saldo_akhir_denda='+FloatToStr(nSaldoPokok)+' WHERE no_rekening='+
        QuotedStr(cNoRekening));
    end;

  Result := True;
end;

function GetAccrualHarian(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
var
  cTempSQL, cTempSQL2: string;
  dTglCair: TDate;
  nTglTagih: Word;
begin
  dTglCair := DateOf(GetDateFValueByFKeyValue('kredit','no_rekening',cNoRekening,'tgl_realisasi'));
  cTempSQL := GetFValueByFKeyValue('kredit','no_rekening',cNoRekening,'tgl_tagihan');
  if Empty(cTempSQL) then
    cTempSQL := IntToStr(DayOf(dTglCair));

  nTglTagih := StrToInt(cTempSQL);
  if (nTglTagih > DayOf(dTglTransaksi)) then
    nTglTagih := DayOf(dTglTransaksi);
    
  Result := 0;

  cTempSQL := SelectRow('SELECT bunga as hasil from '+
    cDb2+'.kretrans WHERE no_rekening='+
    QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(EndOfTheMonth(IncMonth(dTglTransaksi,1)))+
    ' and my_kode_trans=200 '+
    ' order by tgl_trans desc '+
    ' limit 1');
  if Empty(cTempSQL) then
    cTempSQL := '0';

  if (StrToFloat(cTempSQL) > 0) then
    begin
      if (DateOf(StartOfTheMonth(dTglTransaksi)) <= DateOf(dTglCair)) then
        begin
          if lFlag then
            Result := 0
          else
            Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr((DayOf(dTglTransaksi)-nTglTagih)+1)+') as hasil'));
            //Result := StrToFloat(SelectRow('select ('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr(DaysBetween(dTglTransaksi,dTglCair)+1)+' as hasil'));
        end
      else
        begin
          cTempSQL2 := SelectRow('SELECT sum(if(my_kode_trans=200,bunga,0))-sum(if(my_kode_trans=300,bunga,0)) as hasil from '+
            cDb2+'.kretrans WHERE no_rekening='+
            QuotedStr(cNoRekening)+
            ' and tgl_trans <= '+DateToStrSQL(dTglTransaksi)+
            ' and my_kode_trans in (200,300) ');
            //' order by tgl_trans desc '+
            //' limit 1');
          if Empty(cTempSQL2) then
            cTempSQL2 := '0';
          if (StrToFloat(cTempSQL2) <=0) then
            cTempSQL2 := '0';

          if (StrToFloat(cTempSQL) > 0) then
            begin
              if lFlag then
                begin
                  //Result := StrToFloat(SelectRow('select (('+cTempSQL2+'/'+IntToStr(DaysInMonth(IncMonth(dTglTransaksi,-1)))+')*'+IntToStr(1+DayOf(dTglCair)-DayOf(StartOfTheMonth(dTglTransaksi)))+') as hasil'))
                  if (StrToFloat(cTempSQL2) > 0) then
                    Result := StrToFloat(cTempSQL2)
                  else
                    Result := 0;
                end
              else
                Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr((DayOf(dTglTransaksi)-nTglTagih)+1)+') as hasil'));
                //Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr((DayOf(dTglTransaksi)-DayOf(dTglCair))+1)+') as hasil'));
            end;
        end;
    end;
end;

function GetAccrualHarianPTAB(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
var
  cTempSQL, cTempSQL2: string;
  dTglCair: TDate;
begin
  dTglCair := DateOf(GetDateFValueByFKeyValue('kredit','no_rekening',cNoRekening,'tgl_realisasi'));

  Result := 0;

  cTempSQL := SelectRow('SELECT bunga as hasil FROM '+cDb2+
      '.kretrans WHERE no_rekening='+QuotedStr(cNoRekening)+
      '  AND my_kode_trans IN (200) AND bunga > 0 '+
      '  AND tgl_trans <= '+DateToStrSQL(IncMonth(dTglTransaksi,1))+
      'ORDER BY tgl_trans DESC '+
      'LIMIT 1 ');
  if Empty(cTempSQL) then
    cTempSQL := '0';

  if (StrToFloat(cTempSQL) > 0) then
    begin
      if (DateOf(StartOfTheMonth(dTglTransaksi)) <= DateOf(dTglCair)) then
        begin
          if lFlag then
            Result := 0
          else
            Result := StrToFloat(SelectRow('select ('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr(DaysBetween(dTglTransaksi,dTglCair))+' as hasil'));
        end
      else
        begin
          cTempSQL2 := SelectRow('SELECT bunga as hasil from '+
            cDb2+'.kretrans WHERE no_rekening='+
            QuotedStr(cNoRekening)+
            ' and tgl_trans <= '+DateToStrSQL(dTglTransaksi)+
            ' and my_kode_trans=200 '+
            ' order by tgl_trans desc '+
            ' limit 1');
          if Empty(cTempSQL2) then
            cTempSQL2 := '0';

          if (StrToFloat(cTempSQL) > 0) then
            begin
              if lFlag then
                Result := StrToFloat(SelectRow('select (('+cTempSQL2+'/'+IntToStr(DaysInMonth(IncMonth(dTglTransaksi,-1)))+')*'+IntToStr(1+DayOf(dTglCair)-DayOf(StartOfTheMonth(dTglTransaksi)))+') as hasil'))
              else
                Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr(DayOf(dTglTransaksi)-DayOf(dTglCair))+') as hasil'));
            end;
        end;
    end;
end;

function GetAccrualHarianDeposito(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
var
  cTempSQL, cKodeProduk, cHitungPajak, cNasabahID: string;    //, cTempSQL2
  dTglCair: TDate;
  nSaldoAkhir, nSukuBunga, nBunga: Double;  //, nPajak, nPph
  nJmlHari: Integer;
begin
  dTglCair := DateOf(GetDateFValueByFKeyValue('deposito','no_rekening',cNoRekening,'tgl_mulai'));
  nSukuBunga := GetFloatFValueByFKeyValue('deposito','no_rekening',cNoRekening,'suku_bunga');
  //nPph := GetFloatFValueByFKeyValue('deposito','no_rekening',cNoRekening,'persen_pph');
  cKodeProduk:= GetFValueByFKeyValue('deposito','no_rekening',cNoRekening,'kode_produk');
  cHitungPajak := GetMySysID('SYS','SYS_PERHITUNGAN_PAJAK_DEPOSITO','NASABAH ID');
  cNasabahID := GetFValueByFKeyValue('deposito','no_rekening',cNoRekening,'nasabah_id');
  Result := 0;

//  cTempSQL := SelectRow('SELECT bunga_trans as hasil from '+
//    cDb2+'.deptrans WHERE no_rekening='+
//    QuotedStr(cNoRekening)+
//    ' and tgl_trans <= '+DateToStrSQL(dTglTransaksi)+
//    ' and kode_trans=500 '+
//    ' and my_kode_trans=100 '+
//    ' order by tgl_trans desc '+
//    ' limit 1');
//  if Empty(cTempSQL) then
//    cTempSQL := '0';

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok_trans,0)) - '+
                'sum(if(floor(my_kode_trans/100)=2,pokok_trans,0)) as hasil '+
                'from '+cDb2+'.deptrans where no_rekening='+
                QuotedStr(cNoRekening)+
                ' and tgl_trans<='+DateToStrSQL(dTglTransaksi));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  nSaldoAkhir := StrToFloat(cTempSQL);
  if lFlag then
    nJmlHari := DayOfTheMonth(dTglTransaksi)
  else
    nJmlHari := DaysBetween(dTglCair,dTglTransaksi);
//  //1. update dulu SALDO_EFEKTIF_BLN_INI
//  MyExecuteSQL('update '+cDb2+
//    '.deposito set saldo_efektif_bln_ini='+FloatToStr(nSaldoAkhir)+' where no_rekening='+
//    QuotedStr(MySQLQuery1.FieldByName('no_rekening').AsString));
//
  //2. HITUNG BUNGA
  if (Trim(GetFValueByFKeyValue('dep_produk','kode_produk',cKodeProduk,'methode_hitung_bunga'))='HRN') then
     begin
       //blom terpakai
       //nJmlHari:=HitungJmlHariMengendap(MySQLQuery1.FieldByName('tgl_mulai').AsDateTime, dTgl2);
       nBunga:=Trunc((nSaldoAkhir*nSukuBunga/100)*(nJmlHari/365));
//       if (cHitungPajak='NO REKENING') then
//         cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok_trans,0)) - '+
//                'sum(if(floor(my_kode_trans/100)=2,pokok_trans,0)) as hasil '+
//                'from '+cDb2+'.deptrans where no_rekening='+
//                QuotedStr(cNoRekening)+
//                ' and tgl_trans<='+DateToStrSQL(dTglTransaksi))
//       else
//         cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok_trans,0)) - '+
//                'sum(if(floor(my_kode_trans/100)=2,pokok_trans,0)) as hasil '+
//                'from '+cDb2+'.deptrans '+
//                '  left join '+cDb2+'.deposito on deposito.no_rekening=deptrans.no_rekening '+
//                'where nasabah_id='+QuotedStr(cNasabahID)+
//                ' and tgl_trans<='+DateToStrSQL(dTglTransaksi));
//
//       if Empty(cTempSQL) then
//          cTempSQL := '0';
//       nSaldoAkhir := StrToFloat(cTempSQL);
//
//       nPajak:=0;
//       if (nSaldoAkhir>7500000) then
//         nPajak:=Trunc(nBunga*nPph/100);
     end
  else
     begin
       nBunga:=trunc(nSaldoAkhir*nSukuBunga/100/12);
//       if (cHitungPajak='NO REKENING') then
//         cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok_trans,0)) - '+
//                'sum(if(floor(my_kode_trans/100)=2,pokok_trans,0)) as hasil '+
//                'from '+cDb2+'.deptrans where no_rekening='+
//                QuotedStr(cNoRekening)+
//                ' and tgl_trans<='+DateToStrSQL(dTglTransaksi))
//       else
//         cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok_trans,0)) - '+
//                'sum(if(floor(my_kode_trans/100)=2,pokok_trans,0)) as hasil '+
//                'from '+cDb2+'.deptrans '+
//                '  left join '+cDb2+'.deposito on deposito.no_rekening=deptrans.no_rekening '+
//                'where nasabah_id='+QuotedStr(cNasabahID)+
//                ' and tgl_trans<='+DateToStrSQL(dTglTransaksi));
//
//       if Empty(cTempSQL) then
//          cTempSQL := '0';
//       nSaldoAkhir := StrToFloat(cTempSQL);
//
//       nPajak:=0;
//       if (nSaldoAkhir>7500000) then
//         nPajak:=Trunc(nBunga*nPph/100);
     end;

  if (nBunga > 0) then
    begin
//      if (DateOf(StartOfTheMonth(dTglTransaksi)) <= DateOf(dTglCair)) then
//        begin
            Result := nBunga;
//        end;
    end;
end;

Function DepSetSaldoAkhir(cNoRekening: string): Boolean;
var
  cTempSQL,cFlagNew: string;
  nSaldoPokok, nSaldoBunga: Double;
begin
  //update saldo bunga deposito
  cFlagNew := SelectRow('select count(*) as hasil from '+
    cDb2+'.deptrans where no_rekening='+
    QuotedStr(cNoRekening));
  if (StrToInt(cFlagNew) > 0) then
    cFlagNew := '3'  //tutup
  else
    cFlagNew := '1';

  //update saldo pokok deposito
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok_trans,0)) - '+
      ' sum(if(floor(my_kode_trans/100)=2,pokok_trans,0)) as hasil from '+
      cDb2+'.deptrans where no_rekening='+
      QuotedStr(cNoRekening));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nSaldoPokok := StrToFloat(cTempSQL);
    MyExecuteSQL('update '+cDb2+
      '.deposito set saldo_akhir_pokok='+FloatToStr(nSaldoPokok)+
      ', status_aktif='+IfThen(nSaldoPokok=0,cFlagNew,'1')+
      '  where no_rekening='+QuotedStr(cNoRekening));    //+' and status_aktif <> 3'

  //update saldo bunga deposito
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,bunga_trans,0)) - '+
      ' sum(if(floor(my_kode_trans/100)=2,bunga_trans,0)) as hasil from '+
      cDb2+'.deptrans where tgl_trans >= '+DateToStrSQL(StartOfTheMonth(dTglSystem))+
      ' and tgl_trans <= '+DateToStrSQL(EndOfTheMonth(dTglSystem))+
      ' and no_rekening='+QuotedStr(cNoRekening));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nSaldoBunga := StrToFloat(cTempSQL);
    if (cFlagNew='3') and (nSaldoBunga < 0) and (nSaldoPokok = 0) then
      nSaldoBunga := 0;

    MyExecuteSQL('update '+cDb2+
      '.deposito set saldo_akhir_bunga='+FloatToStr(nSaldoBunga)+
      ' where no_rekening='+QuotedStr(cNoRekening));

  //update saldo pajak deposito
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pajak_trans,0)) - '+
      ' sum(if(floor(my_kode_trans/100)=2,pajak_trans,0)) as hasil from '+
      cDb2+'.deptrans where tgl_trans >= '+DateToStrSQL(StartOfTheMonth(dTglSystem))+
      ' and tgl_trans <= '+DateToStrSQL(EndOfTheMonth(dTglSystem))+
      ' and no_rekening='+QuotedStr(cNoRekening));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nSaldoBunga := StrToFloat(cTempSQL);
    if (cFlagNew='3') and (nSaldoBunga < 0) and (nSaldoPokok = 0) then
      nSaldoBunga := 0;

    MyExecuteSQL('update '+cDb2+
      '.deposito set saldo_akhir_pajak='+FloatToStr(nSaldoBunga)+
      ' where no_rekening='+QuotedStr(cNoRekening));

  //update saldo titipan deposito
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,ifnull(titipan_trans,0),0)) - '+
      ' sum(if(floor(my_kode_trans/100)=2,titipan_trans,0)) as hasil from '+
      cDb2+'.deptrans where no_rekening='+
      QuotedStr(cNoRekening));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nSaldoPokok := StrToFloat(cTempSQL);
    MyExecuteSQL('update '+cDb2+
      '.deposito set saldo_akhir_titipan='+FloatToStr(nSaldoPokok)+
      ' where no_rekening='+QuotedStr(cNoRekening));

  //update saldo titipan pokok deposito
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,ifnull(titipan_pokok_trans,0),0)) - '+
      ' sum(if(floor(my_kode_trans/100)=2,titipan_pokok_trans,0)) as hasil from '+
      cDb2+'.deptrans where no_rekening='+
      QuotedStr(cNoRekening));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nSaldoPokok := StrToFloat(cTempSQL);
    MyExecuteSQL('update '+cDb2+
      '.deposito set saldo_akhir_titipan_pokok='+FloatToStr(nSaldoPokok)+
      ' where no_rekening='+QuotedStr(cNoRekening));

  //update saldo titipan pajak deposito
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,ifnull(titipan_pajak_trans,0),0)) - '+
      ' sum(if(floor(my_kode_trans/100)=2,titipan_pajak_trans,0)) as hasil from '+
      cDb2+'.deptrans where no_rekening='+
      QuotedStr(cNoRekening));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nSaldoPokok := StrToFloat(cTempSQL);
    MyExecuteSQL('update '+cDb2+
      '.deposito set saldo_akhir_titipan_pajak='+FloatToStr(nSaldoPokok)+
      ' where no_rekening='+QuotedStr(cNoRekening));

//  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=4,bunga_trans,0)) - '+
//    ' sum(if(floor(my_kode_trans/100)=5,bunga_trans,0)) as hasil from '+
//    cDb2+'.deptrans where no_rekening='+
//    QuotedStr(cNoRekening));
//  if Empty(cTempSQL) then
//    cTempSQL := '0';
//  nSaldoPokok := StrToFloat(cTempSQL);
//  MyExecuteSQL('UPDATE '+cDb2+'.deposito SET '+
//    ' saldo_bunga_yad='+FloatToStr(nSaldoPokok)+' WHERE no_rekening='+
//    QuotedStr(cNoRekening));

  //update saldo BMHD deposito
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,bunga_trans_bmhd,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=2,bunga_trans_bmhd,0)) as hasil from '+
    cDb2+'.deptrans where tgl_trans >= '+DateToStrSQL(StartOfTheMonth(dTglSystem))+
      ' and tgl_trans <= '+DateToStrSQL(EndOfTheMonth(dTglSystem))+
      ' and no_rekening='+QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('UPDATE '+cDb2+'.deposito SET '+
    ' saldo_akhir_bunga_bmhd='+FloatToStr(nSaldoPokok)+' WHERE no_rekening='+
    QuotedStr(cNoRekening));

  Result := True;
end;

Function ResetJadwal(jml_pinjaman, jml_suku_bunga, jml_markup: Extended; jml_angsuran, tgl_tagih, grace_periode: Byte;
  type_kredit, satuan_waktu: string; tgl_cair: TDate; IsAdvance: Boolean = False;
  jml_adm: Extended = 0; IsTgl25: Boolean = False; freq_tagihan: Byte = 0): string;
var
  nAngsuranBunga, OSPokok: Extended;
  nBungaTahun, nSelisih: Extended;
  nAngsuranPerBulan,nBungaAnnuitas,ntot_pokok,ntot_bunga,nAngsuranPerHari: Extended;
  ctype: TPaymentTime;
  i,nLibur: Byte;
  nBungaAdjust,nBungaPerBulan: Double;
  nPembulatanDesimal: Byte;
  nNextID,nAll_ID,cTemp,cTempTglCair,cHintResult, cHariKu: string;
  dTglBefore, dTgl25, dTglFirst, dTglWeekly: TDate;
  nPembulatan: Word;
  nBagiMod, nMod, nBagiMod710, nMod710, nHariBunga: Integer;
  IsNewTgl02: Boolean;
begin
  if IsAdvance then
    ctype := ptStartOfPeriod
  else
    ctype := ptEndOfPeriod;

  cTemp := GetMySysID('KRE','KRE_PEMBULATAN_PERHITUNGAN','0');
  if Empty(cTemp) then
    cTemp := '0';
  nPembulatan := StrToInt(cTemp);

  cTemp := GetMySysID('KRE','KRE_PEMBULATAN_PERHITUNGAN_DESIMAL','0');
  if Empty(cTemp) then
    cTemp := '0';
  nPembulatanDesimal := StrToInt(cTemp);

  IsNewTgl02 := GetMyParameter('SETTING_REPLACE_ALL_PER02','TIDAK')='YA';

  //akan merubah tgl jt tempo di tiap angsuran
  //tgl 25 jika dibulan yg sama, dan tgl 25 di bulan depan untuk transaksi diatas >= 25
  dTgl25 := tgl_cair;  //default = tgl cair
  if IsTgl25 then
    begin
      if (DayOf(tgl_cair) >= 25) then //otomatis arrier jika >= 25
        cTemp := StrZero(MonthOf(IncMonth(tgl_cair)),2)+'/'+GetMyParameter('TGL_REPLACE_PER25','25')+'/'+StrZero(YearOf(IncMonth(tgl_cair)),4)
      else
        cTemp := StrZero(MonthOf(tgl_cair),2)+'/'+GetMyParameter('TGL_REPLACE_PER25','25')+'/'+StrZero(YearOf(tgl_cair),4);
      dTgl25 := StrToDate(cTemp);

      //turn off IsNewTgl02
      IsNewTgl02 := False;
    end
  else if IsNewTgl02 then
    begin
      if (DayOf(tgl_cair) >= (StrToInt(GetMyParameter('TGL_MAX_PER25','25')))) then //otomatis arrier jika >= 25
        cTemp := StrZero(MonthOf(IncMonth(tgl_cair)),2)+'/'+GetMyParameter('TGL_REPLACE_ALL_PER25','25')+'/'+StrZero(YearOf(IncMonth(tgl_cair)),4)
      else
        begin
          cTemp := StrZero(MonthOf(IncMonth(tgl_cair)),2)+'/'+StrZero(DayOf(tgl_cair),2)+'/'+StrZero(YearOf(IncMonth(tgl_cair)),4);
          //turn off IsNewTgl02 jika < 25
          IsNewTgl02 := False;
        end;
      dTgl25 := StrToDate(cTemp);
    end;

//  if (cProduk='004') then  //khusus fim
//    begin
//      if not Empty(GetMySysID('KRE','KRE_PEMBULATAN_PERHITUNGAN_FIM')) then
//        begin
//          cTemp := GetMySysID('KRE','KRE_PEMBULATAN_PERHITUNGAN_FIM','0');
//          if Empty(cTemp) then
//            cTemp := '0';
//          nPembulatan := StrToFloat(cTemp);
//        end;
//    end;

  nBungaAdjust := 0;  
  nBungaTahun := 0;
  nAll_ID := '(';

  //rumus 100 (flat)
  if (type_kredit='100') then
    begin
      if jml_suku_bunga > 0 then
        nBungaTahun := (jml_pinjaman) * (((jml_suku_bunga/12) * jml_angsuran) / 100)
      else
        nBungaTahun := 0;
      nAngsuranPerBulan := RoundTo(((jml_pinjaman) + nBungaTahun) / jml_angsuran, nPembulatanDesimal);

      if (nPembulatan > 0) then
        begin
          //nMod := StrToInt(FloatToStr(nAngsuranPerBulan)) mod StrToInt(FloatToStr(nPembulatan));
          //DivMod(StrToInt(FloatToStr(Floor(nAngsuranPerBulan))), nPembulatan, nBagiMod, nMod);
          nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
          nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);

          if (nMod > 0) then
              nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
          else
              nAngsuranPerBulan:= nBagiMod*nPembulatan;
        end;

      //ke 1
      OSPokok := jml_pinjaman;
      nLibur  := 0;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
          if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(tgl_cair);
            end;
        end;

      for i := 1 to jml_angsuran do
        begin
          nAngsuranBunga := RoundTo(nBungaTahun/jml_angsuran,nPembulatanDesimal);
          //if (i=1) then
            //jml_nominal_angsuran.Value := nAngsuranPerBulan;

          OSPokok := OSPokok - (nAngsuranPerBulan - nAngsuranBunga);

          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
              if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(tgl_cair);
                end;
//              if (tgl_tagih > DayOf(tgl_cair)) then
//                cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//              else
//                cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
            end;

          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<jml_angsuran,',',')');

//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
//            FloatToStr(nAngsuranBunga)+')');
          if (satuan_waktu='B') then
            MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
              ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
              ' values ( '+
              QuotedStr(nNextID)+','+
              IfThen(IsTgl25,
                DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
                DateToStrSQL(IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)))+','
              )+
              IntToStr(i)+','+
              FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
              FloatToStr(nAngsuranBunga)+','+
              FloatToStr(jml_adm)+','+
              FloatToStr(nAngsuranPerBulan)+','+
              FloatToStr(OSPokok)+')')
          else if (satuan_waktu='M') then
            MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
              ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
              ' values ( '+
              QuotedStr(nNextID)+','+
              DateToStrSQL(IncWeek(tgl_cair,freq_tagihan*(IfThen(IsAdvance,i-1,i))))+','+
              IntToStr(i)+','+
              FloatToStr(RoundTo(jml_pinjaman/jml_angsuran,nPembulatanDesimal))+','+
              FloatToStr(RoundTo(nAngsuranBunga/4,nPembulatanDesimal))+','+
              FloatToStr(jml_adm)+','+
              FloatToStr(RoundTo(jml_pinjaman/jml_angsuran,2)+RoundTo(nAngsuranBunga/4,nPembulatanDesimal))+','+
              FloatToStr(OSPokok)+')')
          else if (satuan_waktu='H') then
            begin
              if DayOfWeek(IncDay(tgl_cair,grace_periode+i-1+nLibur))=1 then
                nLibur := nLibur + 1;

              MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
                ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
                ' values ( '+
                QuotedStr(nNextID)+','+
                DateToStrSQL(IncDay(IncDay(tgl_cair,grace_periode),i+nLibur-1))+','+
                IntToStr(i)+','+
                FloatToStr(RoundTo(jml_pinjaman/jml_angsuran,nPembulatanDesimal))+','+
                FloatToStr(RoundTo(nAngsuranBunga/25,nPembulatanDesimal))+','+
                FloatToStr(jml_adm)+','+
                FloatToStr(RoundTo(jml_pinjaman/jml_angsuran,2)+RoundTo(nAngsuranBunga/25,nPembulatanDesimal))+','+
                FloatToStr(OSPokok)+')');
            end;
        end;
    end;

  //rumus 200 (angsuran bunga efektif)
  if (type_kredit='200') then
    begin
      //ke 1
      OSPokok := jml_pinjaman;
      nBungaTahun := 0;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
          if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(tgl_cair);
            end;
//          if (tgl_tagih > DayOf(tgl_cair)) then
//            cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//          else
//            cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
        end;

      for i := 1 to jml_angsuran do
        begin
          if jml_suku_bunga > 0 then
            nAngsuranPerBulan := RoundTo(jml_pinjaman/jml_angsuran,2) + RoundTo(OSPokok * ((jml_suku_bunga/12) / 100),nPembulatanDesimal)
          else
            nAngsuranPerBulan := RoundTo(jml_pinjaman/jml_angsuran,2);

          if (nPembulatan > 0) then
            begin
              //nMod := StrToInt(FloatToStr(nAngsuranPerBulan)) mod StrToInt(FloatToStr(nPembulatan));
              //DivMod(StrToInt(FloatToStr(Floor(nAngsuranPerBulan))), nPembulatan, nBagiMod, nMod);
              nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
              nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);

              //if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
              if (nMod > 0) then
                  nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
              else
                  nAngsuranPerBulan:= nBagiMod*nPembulatan;
//              if (nMod > 0) then
//                  nAngsuranPerBulan:= (Ceil(nAngsuranPerBulan/nPembulatan)+1)*nPembulatan
//              else
//                  nAngsuranPerBulan:= Ceil(nAngsuranPerBulan/nPembulatan)*nPembulatan;
            end;

          if jml_suku_bunga > 0 then
            nAngsuranBunga := RoundTo(OSPokok * ((jml_suku_bunga/12) / 100),nPembulatanDesimal)
          else
            nAngsuranBunga := 0;
          nBungaTahun := nBungaTahun + nAngsuranBunga;

          OSPokok := OSPokok - (nAngsuranPerBulan - nAngsuranBunga);

          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
              if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(tgl_cair);
                end;
//              if (tgl_tagih > DayOf(tgl_cair)) then
//                cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//              else
//                cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
            end;

          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<jml_angsuran,',',')');

          MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
            ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
            ' values ( '+
            QuotedStr(nNextID)+','+
            IfThen(IsTgl25,
              DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
              DateToStrSQL(IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)))+','
            )+
            IntToStr(i)+','+
            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
            FloatToStr(nAngsuranBunga)+','+
            FloatToStr(jml_adm)+','+
            FloatToStr(nAngsuranPerBulan)+','+
            FloatToStr(OSPokok)+')');
//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
//            FloatToStr(nAngsuranBunga)+')');
        end;
    end;

  //rumus 300 ptab)
  if (type_kredit='300') then
    begin
      if jml_suku_bunga > 0 then
        nBungaTahun := (jml_pinjaman) * (((jml_suku_bunga/12) * jml_angsuran) / 100)
      else
        nBungaTahun := 0;
      nAngsuranPerBulan := RoundTo(nBungaTahun / jml_angsuran, nPembulatanDesimal); //RoundTo(((jml_pinjaman.Value) + nBungaTahun) / jml_angsuran.Value, 2);

      if (nPembulatan > 0) then
        begin
          //nMod := StrToInt(FloatToStr(nAngsuranPerBulan)) mod StrToInt(FloatToStr(nPembulatan));
          //DivMod(StrToInt(FloatToStr(Floor(nAngsuranPerBulan))), nPembulatan, nBagiMod, nMod);
          nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
          nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);

          //if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
          if (nMod > 0) then
              nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
          else
              nAngsuranPerBulan:= nBagiMod*nPembulatan;
//          if (nMod > 0) then
//              nAngsuranPerBulan:= (Ceil(nAngsuranPerBulan/nPembulatan)+1)*nPembulatan
//          else
//              nAngsuranPerBulan:= Ceil(nAngsuranPerBulan/nPembulatan)*nPembulatan;
        end;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
          if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(tgl_cair);
            end;
//          if (tgl_tagih > DayOf(tgl_cair)) then
//            cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//          else
//            cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
        end;

      for i := 1 to jml_angsuran do    //jml_angsuran+1
        begin
          nAngsuranBunga := nAngsuranPerBulan; //RoundTo(nBungaTahun/jml_angsuran.Value,nPembulatanDesimal);

          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
              if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(tgl_cair);
                end;
//              if (tgl_tagih > DayOf(tgl_cair)) then
//                cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//              else
//                cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
            end;

          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<jml_angsuran,',',')');    //jml_angsuran+1

          MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
            ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
            ' values ( '+
            QuotedStr(nNextID)+','+
            IfThen(IsTgl25,
              DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
              DateToStrSQL(IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)))+','
            )+
            IntToStr(i)+','+
            FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman,0))+','+  //jml_angsuran+1
            FloatToStr(IfThen(i=jml_angsuran,nAngsuranBunga,nAngsuranBunga))+','+  //jml_angsuran+1
            FloatToStr(jml_adm)+','+
            FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman+nAngsuranBunga,nAngsuranBunga))+','+  //jml_angsuran+1
            FloatToStr(IfThen(i=jml_angsuran,0,jml_pinjaman))+')');           //+1
//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(IfThen(i=jml_angsuran+1,jml_pinjaman,0))+','+
//            FloatToStr(IfThen(i=jml_angsuran+1,0,nAngsuranBunga))+')');
        end;
    end;
    
  //rumus 400 (Mark Up -> angsuran, margin)
  if (type_kredit='400') then
    begin
      nBungaTahun := jml_markup;
      nAngsuranPerBulan := RoundTo(((jml_pinjaman) + nBungaTahun) / jml_angsuran, nPembulatanDesimal);

      if (nPembulatan > 0) then
        begin
          //nMod := StrToInt(FloatToStr(nAngsuranPerBulan)) mod StrToInt(FloatToStr(nPembulatan));
          //DivMod(StrToInt(FloatToStr(Floor(nAngsuranPerBulan))), nPembulatan, nBagiMod, nMod);
          nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
          nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);

          //if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
          if (nMod > 0) then
              nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
          else
              nAngsuranPerBulan:= nBagiMod*nPembulatan;
//          if (nMod > 0) then
//              nAngsuranPerBulan:= (Ceil(nAngsuranPerBulan/nPembulatan)+1)*nPembulatan
//          else
//              nAngsuranPerBulan:= Ceil(nAngsuranPerBulan/nPembulatan)*nPembulatan;
        end;

      //ke 1
      OSPokok := jml_pinjaman;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
          if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(tgl_cair);
            end;
//          if (tgl_tagih > DayOf(tgl_cair)) then
//            cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//          else
//            cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
        end;

      for i := 1 to jml_angsuran do
        begin

          nAngsuranBunga := RoundTo(jml_markup/jml_angsuran,nPembulatanDesimal);

          OSPokok := OSPokok - (nAngsuranPerBulan - nAngsuranBunga);

          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
              if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(tgl_cair);
                end;
//              if (tgl_tagih > DayOf(tgl_cair)) then
//                cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//              else
//                cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
            end;

          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<jml_angsuran,',',')');

          MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
            ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
            ' values ( '+
            QuotedStr(nNextID)+','+
            IfThen(IsTgl25,
              DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
              DateToStrSQL(IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)))+','
            )+
            IntToStr(i)+','+
            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
            FloatToStr(nAngsuranBunga)+','+
            FloatToStr(jml_adm)+','+
            FloatToStr(nAngsuranPerBulan)+','+
            FloatToStr(OSPokok)+')');
//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
//            FloatToStr(nAngsuranBunga)+')');
        end;
    end;

  //rumus 500 rekening koran, tanpa angsuran)
  if (type_kredit='500') then
    begin
      cHintResult := '';
      //nBungaTahun := (jml_pinjaman) * (((jml_suku_bunga/12) * jml_angsuran) / 100);
      //nAngsuranPerBulan := RoundTo(nBungaTahun / jml_angsuran, nPembulatanDesimal);
      if jml_suku_bunga > 0 then
        nBungaTahun := jml_pinjaman * (jml_suku_bunga/100)
      else
        nBungaTahun := 0;
//      nAngsuranPerBulan := RoundTo(nBungaTahun / jml_angsuran, nPembulatanDesimal);
//
//      if (nPembulatan > 0) then
//        begin
//          nMod := StrToInt(FloatToStr(nAngsuranPerBulan)) mod StrToInt(FloatToStr(nPembulatan));
//
//          if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
//              nAngsuranPerBulan:= (round(nAngsuranPerBulan/nPembulatan)+1)*nPembulatan
//          else
//              nAngsuranPerBulan:= round(nAngsuranPerBulan/nPembulatan)*nPembulatan;
//        end;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair)));
          if not IsValidDate(YearOf(IncMonth(tgl_cair)),MonthOf(IncMonth(tgl_cair)),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(IncMonth(tgl_cair));
            end;
//          if (tgl_tagih > DayOf(tgl_cair)) then
//            cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//          else
//            cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
        end;

      dTglBefore := tgl_cair;
      for i := 1 to jml_angsuran do
        begin
          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair)));
              if not IsValidDate(YearOf(IncMonth(tgl_cair)),MonthOf(IncMonth(tgl_cair)),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(IncMonth(tgl_cair));
                end;
//              if (tgl_tagih > DayOf(tgl_cair)) then
//                cTempTglCair := IntToStr(MonthOf(IncMonth(tgl_cair,1)))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(IncMonth(tgl_cair,1)))
//              else
//                cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
            end;

          //bunga
//          if not IsAdvance or (i=1)then
//            nAngsuranPerBulan := jml_pinjaman * ((jml_suku_bunga/100)/360) *
//              Floor(Round(DaySpan(IfThen(i=1,IncDay(tgl_cair,-1),
//                    //IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i))
//                    IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-3,i-2))
//                  ),
//                    IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-(3-IfThen(i=1,2,0)),i-1))
//                  ) + IfThen(i=1,1,0))
//                )
//          else
//            nAngsuranPerBulan := jml_pinjaman * ((jml_suku_bunga/100)/360) *
//              Floor(Round(DaySpan(IfThen(i=2,IncDay(tgl_cair,-1),
//                    IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1))
//                  ),
//                    IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-(1+IfThen(i=2,1,0)),i))
//                  ) + IfThen(2=1,1,0))
//                );
          if jml_suku_bunga > 0 then
            nAngsuranPerBulan := jml_pinjaman * ((jml_suku_bunga/100)/360) *
              Floor(Round(DaySpan(dTglBefore,
                    IfThen(IsAdvance and (i=1),tgl_cair,
                      IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1)))
                  ) + IfThen(i=1,1+IfThen(not IsAdvance,1,0),0) + IfThen(i=2,1-IfThen(not IsAdvance,1,0),0))
                )
          else
            nAngsuranPerBulan := 0;
          cHintResult := cHintResult + 'Hari : '+IntToStr(Floor(Round(DaySpan(dTglBefore,
                  IfThen(IsAdvance and (i=1),tgl_cair,
                    IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1)))
                ) + IfThen(i=1,1+IfThen(not IsAdvance,1,0),0) + IfThen(i=2,1-IfThen(not IsAdvance,1,0),0))
              ))+' '+
            'Tanggal : '+DateIndo(dTglBefore)+' s/d '+
                DateIndo(IfThen(IsAdvance and (i=1),tgl_cair,
                    IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1))))+' '+
            ' = '+FormatFloat('#,#0.00',nAngsuranPerBulan)
            +#13+#10;

          if (nPembulatan > 0) then
            begin
              //nMod := StrToInt(FloatToStr(Floor(Round(nAngsuranPerBulan)))) mod StrToInt(FloatToStr(nPembulatan));
              //DivMod(StrToInt(FloatToStr(Floor(nAngsuranPerBulan))), nPembulatan, nBagiMod, nMod);
              nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
              nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);

              //if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
              if (nMod > 0) then
                  nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
              else
                  nAngsuranPerBulan:= nBagiMod*nPembulatan;
//              if (nMod > 0) then
//                  nAngsuranPerBulan:= (Ceil(nAngsuranPerBulan/nPembulatan)+1)*nPembulatan
//              else
//                  nAngsuranPerBulan:= Ceil(nAngsuranPerBulan/nPembulatan)*nPembulatan;
            end;
          nAngsuranBunga := nAngsuranPerBulan; //RoundTo(nBungaTahun/jml_angsuran.Value,nPembulatanDesimal);
          //end bunga

          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<jml_angsuran,',',')');

          //28 juni 2014  bunga di jadwal harus nol karena belum ada pengambilan
          if GetMyParameter('SETTING_BUNGA_NOL_500','TIDAK')='YA' then
            begin
              MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
                ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
                ' values ( '+
                QuotedStr(nNextID)+','+
                IfThen(IsTgl25,
                  DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
                  DateToStrSQL(IfThen(IsAdvance and (i=1),tgl_cair,
                      IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1)))
                      )+','
                )+
                IntToStr(i)+','+
                FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman,0))+','+
                FloatToStr(0.00)+','+   //nAngsuranBunga
                FloatToStr(jml_adm)+','+
                FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman,0)+0.00)+','+    //+nAngsuranBunga
                FloatToStr(IfThen(i=jml_angsuran,0,jml_pinjaman))+')');
            end
          else
            begin
              MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
                ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
                ' values ( '+
                QuotedStr(nNextID)+','+
                IfThen(IsTgl25,
                  DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
                  DateToStrSQL(IfThen(IsAdvance and (i=1),tgl_cair,
                      IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1)))
                      )+','
                )+
                IntToStr(i)+','+
                FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman,0))+','+
                FloatToStr(nAngsuranBunga)+','+
                FloatToStr(jml_adm)+','+
                FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman,0)+nAngsuranBunga)+','+
                FloatToStr(IfThen(i=jml_angsuran,0,jml_pinjaman))+')');
            end;
//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(IfThen(i=jml_angsuran,jml_pinjaman,0))+','+
//            FloatToStr(nAngsuranBunga)+')');

          dTglBefore := IfThen(IsAdvance and (i=1),tgl_cair,
              IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-2,i-1)));
        end;
      //Pesan(1,cHintResult);
    end;

  //rumus 700 (annuitas)
  if (type_kredit='700') then
    begin
      if IsAdvance then
        ctype := ptStartOfPeriod
      else
        ctype := ptEndOfPeriod;

      nAngsuranPerBulan := 0;
      if (satuan_waktu='B') then
        begin
          if jml_suku_bunga > 0 then
            nBungaTahun := (jml_pinjaman) * (((jml_suku_bunga/12) * jml_angsuran) / 100)
          else
            nBungaTahun := 0;
          nAngsuranPerBulan := RoundTo(((jml_pinjaman) + nBungaTahun) / jml_angsuran, nPembulatanDesimal);
        end
      else if (satuan_waktu='M') then
        begin
          if jml_suku_bunga > 0 then
            nBungaTahun := (jml_pinjaman) * (jml_suku_bunga/100)
          else
            nBungaTahun := 0;
          nAngsuranPerBulan := RoundTo(((jml_pinjaman) + nBungaTahun) / jml_angsuran, nPembulatanDesimal);
        end
      else if (satuan_waktu='H') then
        begin
          if jml_suku_bunga > 0 then
            nBungaTahun := (jml_pinjaman) * (jml_suku_bunga/100)
          else
            nBungaTahun := 0;
          nAngsuranPerBulan := RoundTo(((jml_pinjaman) + nBungaTahun) / jml_angsuran, nPembulatanDesimal);
        end;

      //nAngsuranPerHari := 0;

      if (satuan_waktu='B') then
        begin
          if (nPembulatan > 0) then
            begin
              nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
              nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);

              //if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
              if (nMod > 0) then
                  nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
              else
                  nAngsuranPerBulan:= nBagiMod*nPembulatan;
            end;
        end;

      nBungaAnnuitas := 0;
      if (nAngsuranPerBulan > 0) and (jml_suku_bunga > 0) then
        begin
//          if IsAdvance then
//            nBungaAnnuitas:=InterestRate(jml_angsuran-1,nAngsuranPerBulan,-(jml_pinjaman-nAngsuranPerBulan),0,ptEndOfPeriod) * 100
//          else
          nBungaAnnuitas:=InterestRate(jml_angsuran,nAngsuranPerBulan,-(jml_pinjaman),0,ctype) * 100;
        end;

      //ke 1
      OSPokok := jml_pinjaman;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
          if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(tgl_cair);
            end;
        end;

      for i := 1 to jml_angsuran do
        begin
            nAngsuranBunga := RoundTo(OSPokok * (nBungaAnnuitas/100),nPembulatanDesimal);
            OSPokok := OSPokok - (nAngsuranPerBulan - nAngsuranBunga);

          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
              if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(tgl_cair);
                end;
            end;

          if (i=1) and IsNewTgl02 then
            begin
              dTglFirst := dTgl25;
              nHariBunga := DaysBetween(tgl_cair, dTglFirst) + 1;
              nAngsuranPerHari :=  RoundTo((nAngsuranBunga/DaysInMonth(tgl_cair))*nHariBunga,nPembulatanDesimal);

              if (nPembulatan > 0) then
                begin
                  nMod := StrToInt(FloatToStr(Floor(nAngsuranPerHari))) mod nPembulatan;
                  nBagiMod := Floor(nAngsuranPerHari / nPembulatan);
                  if (nMod > 0) then
                      nAngsuranPerHari:= (nBagiMod+1)*nPembulatan
                  else
                      nAngsuranPerHari:= nBagiMod*nPembulatan;
                end;

              nBungaTahun := nBungaTahun + nAngsuranPerHari;  //angsuran beberapa hari didepan

              nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
                QuotedStr('kre_jadwal_angsuran')+') as hasil');
              nAll_ID := nAll_ID+nNextID+IfThen(i<(jml_angsuran+IfThen(IsNewTgl02,1,0)),',',')');

              MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
                ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
                ' values ( '+
                QuotedStr(nNextID)+','+
                  DateToStrSQL(dTglFirst)+','+
                IntToStr(i)+','+
                  FloatToStr(0)+','+  //dikurangi 1 karena loop mulai dari 1
                  FloatToStr(nAngsuranPerHari)+','+  //dikurangi 1 karena loop mulai dari 1
                FloatToStr(jml_adm)+','+
                  FloatToStr(nAngsuranPerHari)+','+  //dikurangi 1 karena loop mulai dari 1
                FloatToStr(OSPokok)+')');
            end;

          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<jml_angsuran,',',')');

          if (satuan_waktu='B') then
            MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
              ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
              ' values ( '+
              QuotedStr(nNextID)+','+
              IfThen(IsTgl25,
                DateToStrSQL(IncMonth(dTgl25,i-1+IfThen(IsNewTgl02,1,0)))+',',  //dikurangi 1 karena loop mulai dari 1
                DateToStrSQL(IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)+IfThen(IsNewTgl02,1,0)))+','
              )+
              IntToStr(i+IfThen(IsNewTgl02,1,0))+','+
              FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
              FloatToStr(nAngsuranBunga)+','+
              FloatToStr(jml_adm)+','+
              FloatToStr(nAngsuranPerBulan)+','+
              FloatToStr(OSPokok)+')')
          else if (satuan_waktu='M') then
            begin
              //cek hari libur
              dTglWeekly := StrToDate(cTempTglCair);
              if (i=1) then
                begin
//                  if IsTgl25 then
//                    dTglWeekly := IncWeek(dTgl25,freq_tagihan*(i-1+IfThen(IsNewTgl02,1,0)))
//                  else
                    dTglWeekly := IncWeek(StrToDate(cTempTglCair),freq_tagihan*(grace_periode+IfThen(IsAdvance,i-1,i)+IfThen(IsNewTgl02,1,0)));
                end
              else
                dTglWeekly := IncWeek(dTglWeekly, freq_tagihan*1);

              cHariKu := DateIndo(dTglWeekly);
              while IsHariLibur(dTglWeekly) do
                begin
                  dTglWeekly := IncWeek(dTglWeekly, freq_tagihan*1);
                end;
              cHariKu := DateIndo(dTglWeekly);

              MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
                ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
                ' values ( '+
                QuotedStr(nNextID)+','+
                DateToStrSQL(IncWeek(tgl_cair,freq_tagihan*(IfThen(IsAdvance,i-1,i))))+','+
                IntToStr(i+IfThen(IsNewTgl02,1,0))+','+
                FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
                FloatToStr(nAngsuranBunga)+','+
                FloatToStr(jml_adm)+','+
                FloatToStr(nAngsuranPerBulan)+','+
                FloatToStr(OSPokok)+')');
            end
          else if (satuan_waktu='H') then
            MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
              ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
              ' values ( '+
              QuotedStr(nNextID)+','+
              IfThen(IsTgl25,
                DateToStrSQL(IncDay(dTgl25,i-1+IfThen(IsNewTgl02,1,0)))+',',  //dikurangi 1 karena loop mulai dari 1
                DateToStrSQL(IncDay(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)+IfThen(IsNewTgl02,1,0)))+','
              )+
              IntToStr(i+IfThen(IsNewTgl02,1,0))+','+
              FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
              FloatToStr(nAngsuranBunga)+','+
              FloatToStr(jml_adm)+','+
              FloatToStr(nAngsuranPerBulan)+','+
              FloatToStr(OSPokok)+')');

//          if (not IsAdvanceBunga and (i=2)) then
//            nBungaAdjust := (nAngsuranBunga/30)*(DaySpan(tgl_ang1,tgl_ang2));

//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
//            FloatToStr(nAngsuranBunga)+')');
        end;
    end;

  //rumus 710 (annuitas) bunga 2 bulan pertama selanjutnya
  if (type_kredit='710') then
    begin
      if IsAdvance then
        ctype := ptStartOfPeriod
      else
        ctype := ptEndOfPeriod;

      if jml_suku_bunga > 0 then
        nBungaTahun := (jml_pinjaman) * (((jml_suku_bunga/12) * (jml_angsuran + 0)) / 100)
      else
        nBungaTahun := 0;

      //khusus buat 710 2 bulan pertama suku bunga per bulannya di roundup
      if jml_suku_bunga > 0 then
        nBungaPerBulan := (jml_pinjaman) * (RoundTo(jml_suku_bunga/12,-2) / 100)
      else
        nBungaPerBulan := 0;
      //dikurangi 2 karena 2 bulan pertama tanpa pokok
      nAngsuranPerBulan := RoundTo((jml_pinjaman / (jml_angsuran - 2)) + (nBungaTahun / (jml_angsuran + 0)), nPembulatanDesimal);

      if (nPembulatan > 0) then
        begin
          //nMod := StrToInt(FloatToStr(nAngsuranPerBulan)) mod StrToInt(FloatToStr(nPembulatan));
          //DivMod(StrToInt(FloatToStr(Floor(nAngsuranPerBulan))), nPembulatan, nBagiMod, nMod);
          nMod := StrToInt(FloatToStr(Floor(nAngsuranPerBulan))) mod nPembulatan;
          nBagiMod := Floor(nAngsuranPerBulan / nPembulatan);
          //DivMod(StrToInt(FloatToStr(Floor(nBungaPerBulan))), nPembulatan, nBagiMod710, nMod710);
          nMod710 := StrToInt(FloatToStr(Floor(nBungaPerBulan))) mod nPembulatan;
          nBagiMod710 := Floor(nBungaPerBulan / nPembulatan);

          //if ((nMod > 0) and (nMod <= (nPembulatan/2))) then
          if (nMod > 0) then
              nAngsuranPerBulan:= (nBagiMod+1)*nPembulatan
          else
              nAngsuranPerBulan:= nBagiMod*nPembulatan;
          if (nMod710 > 0) then
              nBungaPerBulan:= (nBagiMod710+1)*nPembulatan
          else
              nBungaPerBulan:= nBagiMod710*nPembulatan;
//          if (nMod > 0) then
//              nAngsuranPerBulan:= (Ceil(nAngsuranPerBulan/nPembulatan)+1)*nPembulatan
//          else
//              nAngsuranPerBulan:= Ceil(nAngsuranPerBulan/nPembulatan)*nPembulatan;
        end;

      nBungaAnnuitas := 0;
      if (nAngsuranPerBulan > 0) and (jml_suku_bunga > 0) then
        begin
//          if IsAdvance then
//            nBungaAnnuitas:=InterestRate(jml_angsuran-1,nAngsuranPerBulan,-(jml_pinjaman-nAngsuranPerBulan),0,ptEndOfPeriod) * 100
//          else
            nBungaAnnuitas:=InterestRate(jml_angsuran - 2,nAngsuranPerBulan,-(jml_pinjaman),0,ctype) * 100;
        end;

      //ke 1
      OSPokok := jml_pinjaman;

      cTempTglCair := DateToStr(tgl_cair);
      if not IsAdvance then
        begin
          cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
          if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
            begin
              //Pesan(2,'Tanggal Tidak Valid');
              cTempTglCair := DateToStr(tgl_cair);
            end;
        end;

      for i := 1 to (jml_angsuran + 0) do
        begin
//          if IsAdvance then
//            begin
//              if (i=1) then
//                nAngsuranBunga := 0
//              else
//                nAngsuranBunga := RoundTo(OSPokok * (nBungaAnnuitas/100),nPembulatanDesimal);
//
//            end
//          else
//            begin
//            if IsAdvance then
//              begin
//                if IsAdvanceBunga then
//                  nAngsuranBunga := RoundTo((OSPokok-nAngsuranPerBulan) * (nBungaAnnuitas/100),nPembulatanDesimal)
//                else
//                  begin
//                    if (i=1) then
//                      nAngsuranBunga := 0
//                    else
//                      nAngsuranBunga := RoundTo((OSPokok-nAngsuranPerBulan) * (nBungaAnnuitas/100),nPembulatanDesimal);
//                  end;
//              end
//            else
              nAngsuranBunga := RoundTo(OSPokok * (nBungaAnnuitas/100),nPembulatanDesimal);
//            end;

//          if (not IsAdvanceBunga and (i=1)) then
//            OSPokok := OSPokok - 0
//          else
            if (i > 2) then
              OSPokok := OSPokok - (nAngsuranPerBulan - nAngsuranBunga);

          if IsAdvance and (i<>1) then
            begin
              cTempTglCair := IntToStr(MonthOf(tgl_cair))+'/'+StrZero(tgl_tagih,2)+'/'+IntToStr(YearOf(tgl_cair));
              if not IsValidDate(YearOf(tgl_cair),MonthOf(tgl_cair),tgl_tagih) then
                begin
                  //Pesan(2,'Tanggal Tidak Valid');
                  cTempTglCair := DateToStr(tgl_cair);
                end;
            end;
            
          nNextID := SelectRow('select get_auto_next_id('+QuotedStr(cDb2)+','+
            QuotedStr('kre_jadwal_angsuran')+') as hasil');
          nAll_ID := nAll_ID+nNextID+IfThen(i<(jml_angsuran+0),',',')');

          MyExecuteSQL('INSERT into '+cDb2+'.kre_jadwal_angsuran '+
            ' (trans_id, tgl_trans, angsuran_ke, angsuran_pokok, angsuran_bunga, adm, jumlah, os_pokok) '+
            ' values ( '+
            QuotedStr(nNextID)+','+
            IfThen(IsTgl25,
              DateToStrSQL(IncMonth(dTgl25,i-1))+',',  //dikurangi 1 karena loop mulai dari 1
              DateToStrSQL(IncMonth(StrToDate(cTempTglCair),grace_periode+IfThen(IsAdvance,i-1,i)))+','
            )+
            IntToStr(i)+','+
            FloatToStr(IfThen( i > 2, nAngsuranPerBulan - nAngsuranBunga,0))+','+
            FloatToStr(IfThen( i > 2, nAngsuranBunga, nBungaPerBulan))+','+
            FloatToStr(jml_adm)+','+
            FloatToStr(IfThen( i > 2, nAngsuranPerBulan, nBungaPerBulan))+','+
            FloatToStr(OSPokok)+')');

//          if (not IsAdvanceBunga and (i=2)) then
//            nBungaAdjust := (nAngsuranBunga/30)*(DaySpan(tgl_ang1,tgl_ang2));

//          MyExecuteSQL('replace into '+cDb2+'.test (no_rekening, angke, tgl_jt_tempo, pokok, bunga) '+
//            ' values ( '+
//            QuotedStr(cConnectionID)+','+IntToStr(i)+','+DateToStrSQL(IncMonth(tgl_cair,IfThen(IsAdvance,i-1,i)))+','+
//            FloatToStr(nAngsuranPerBulan - nAngsuranBunga)+','+
//            FloatToStr(nAngsuranBunga)+')');
        end;
    end;

//    if (not IsAdvanceBunga) then
//      MyExecuteSQL('UPDATE '+cDb2+'.kre_jadwal_angsuran '+
//      ' SET angsuran_bunga='+FloatToStr(nBungaAdjust)+
//      ', jumlah=angsuran_pokok+'+FloatToStr(nBungaAdjust)+
//      ' WHERE angsuran_ke=2 and trans_id in '+nAll_ID);

    cTemp := SelectRow('select sum(angsuran_pokok) as hasil from '+cDb2+
          '.kre_jadwal_angsuran where trans_id in '+nAll_ID);
    if Empty(cTemp) then
      cTemp := '0';
    ntot_pokok := StrToFloat(cTemp);
    cTemp := SelectRow('select sum(angsuran_bunga) as hasil from '+cDb2+
          '.kre_jadwal_angsuran where trans_id in '+nAll_ID);
    if Empty(cTemp) then
      cTemp := '0';
    ntot_bunga := StrToFloat(cTemp);

    if (satuan_waktu='M') then
      nBungaTahun := nBungaTahun / 4;
    if (satuan_waktu='H') then
      nBungaTahun := nBungaTahun / 25;

    if (ntot_pokok <> jml_pinjaman) or (ntot_bunga <> nBungaTahun) then
    begin
      nSelisih := jml_pinjaman - ntot_pokok;

//      if (type_kredit='300') then
//        MyExecuteSQL('update '+cDb2+
//          '.kre_jadwal_angsuran set angsuran_pokok='+FloatToStr(jml_pinjaman)+
//          ', angsuran_bunga=0'+
//          ' where trans_id in '+nAll_ID+
//          ' and angsuran_ke='+IntToStr(jml_angsuran))      //+'+1'
//      else if (type_kredit<>'500') then        //if (type_kredit<>'200') and
      if (type_kredit='710') then
        begin
          if GetMySysID('KRE','KRE_SETTING_ANGSURAN_TETAP','YA')='YA' then
            begin
              MyExecuteSQL('update '+cDb2+
                '.kre_jadwal_angsuran set angsuran_pokok=angsuran_pokok+'+FloatToStr(nSelisih)+
                ', os_pokok=os_pokok-'+FloatToStr(nSelisih)+
                ' where trans_id in '+nAll_ID+
                ' and angsuran_ke='+IntToStr(jml_angsuran+0));
              if (jml_suku_bunga > 0) then
                begin
                  MyExecuteSQL('update '+cDb2+
                    '.kre_jadwal_angsuran set angsuran_bunga=angsuran_bunga-'+FloatToStr(nSelisih)+
                    ' where trans_id in '+nAll_ID+
                    ' and angsuran_bunga-'+FloatToStr(nSelisih)+' > 0'+
                    ' and angsuran_ke='+IntToStr(jml_angsuran+0));
                end
              else
                begin
                  if (nSelisih <> 0) then
                    MyExecuteSQL('update '+cDb2+
                      '.kre_jadwal_angsuran set jumlah=jumlah+'+FloatToStr(nSelisih)+
                      ' where trans_id in '+nAll_ID+
                      ' and angsuran_ke='+IntToStr(jml_angsuran+0));
                end;
            end
          else
            begin
              if (jml_suku_bunga > 0) then
                MyExecuteSQL('update '+cDb2+
                  '.kre_jadwal_angsuran set angsuran_pokok=angsuran_pokok+'+FloatToStr(nSelisih)+
                  ', angsuran_bunga=angsuran_bunga-'+FloatToStr(nBungaTahun-ntot_bunga)+
                  ', jumlah=jumlah+'+FloatToStr(nSelisih-nBungaTahun-ntot_bunga)+
                  ', os_pokok=os_pokok-'+FloatToStr(nSelisih)+
                  ' where trans_id in '+nAll_ID+
                  ' and angsuran_ke='+IntToStr(jml_angsuran+0))
              else
                MyExecuteSQL('update '+cDb2+
                  '.kre_jadwal_angsuran set angsuran_pokok=angsuran_pokok+'+FloatToStr(nSelisih)+
                  //', angsuran_bunga=angsuran_bunga-'+FloatToStr(nBungaTahun-ntot_bunga)+
                  ', jumlah=jumlah+'+FloatToStr(nSelisih-nBungaTahun-ntot_bunga)+
                  ', os_pokok=os_pokok-'+FloatToStr(nSelisih)+
                  ' where trans_id in '+nAll_ID+
                  ' and angsuran_ke='+IntToStr(jml_angsuran+0));
            end;
        end
      else if (type_kredit<>'500') and (type_kredit<>'300') then        //if (type_kredit<>'200') and
        begin
          if GetMySysID('KRE','KRE_SETTING_ANGSURAN_TETAP','YA')='YA' then
            begin
              MyExecuteSQL('update '+cDb2+
                '.kre_jadwal_angsuran set angsuran_pokok=angsuran_pokok+'+FloatToStr(nSelisih)+
                ', os_pokok=os_pokok-'+FloatToStr(nSelisih)+
                ' where trans_id in '+nAll_ID+
                ' and angsuran_ke='+IntToStr(jml_angsuran));
              if (jml_suku_bunga > 0) then
                begin
                  MyExecuteSQL('update '+cDb2+
                    '.kre_jadwal_angsuran set angsuran_bunga=angsuran_bunga-'+FloatToStr(nSelisih)+
                    ' where trans_id in '+nAll_ID+
                    ' and angsuran_bunga-'+FloatToStr(nSelisih)+' > 0'+
                    ' and angsuran_ke='+IntToStr(jml_angsuran));
                end
              else
                begin
                  if (nSelisih <> 0) then
                    MyExecuteSQL('update '+cDb2+
                      '.kre_jadwal_angsuran set jumlah=jumlah+'+FloatToStr(nSelisih)+
                      ' where trans_id in '+nAll_ID+
                      ' and angsuran_ke='+IntToStr(jml_angsuran));
                end;
            end
          else
            begin
              if (jml_suku_bunga > 0) then
                MyExecuteSQL('update '+cDb2+
                  '.kre_jadwal_angsuran set angsuran_pokok=angsuran_pokok+'+FloatToStr(nSelisih)+
                  ', angsuran_bunga=angsuran_bunga-'+FloatToStr(nBungaTahun-ntot_bunga)+
                  ', jumlah=jumlah+'+FloatToStr(nSelisih-nBungaTahun-ntot_bunga)+
                  ', os_pokok=os_pokok-'+FloatToStr(nSelisih)+
                  ' where trans_id in '+nAll_ID+
                  ' and angsuran_ke='+IntToStr(jml_angsuran))
              else
                MyExecuteSQL('update '+cDb2+
                  '.kre_jadwal_angsuran set angsuran_pokok=angsuran_pokok+'+FloatToStr(nSelisih)+
                  //', angsuran_bunga=angsuran_bunga-'+FloatToStr(nBungaTahun-ntot_bunga)+
                  ', jumlah=jumlah+'+FloatToStr(nSelisih-nBungaTahun-ntot_bunga)+
                  ', os_pokok=os_pokok-'+FloatToStr(nSelisih)+
                  ' where trans_id in '+nAll_ID+
                  ' and angsuran_ke='+IntToStr(jml_angsuran));
            end;
        end;
    end;

  Result := nAll_ID+';'+cHintResult;
end;

function AccGetSaldoCLSHariIni(cKodePerk,cKantor:string;dTgl:TDate):double;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

  MySQLQuery1.SQL.Text := 'select sum(debet) as debet, sum(kredit) as kredit, type_perk from transaksi_master, transaksi_detail, perkiraan where '+
     'transaksi_master.trans_id=transaksi_detail.master_id and transaksi_detail.kode_perk=perkiraan.kode_perk '+
     'and kode_jurnal="CLS" and tgl_trans='+DateToStrSQL(dTgl)+' and perkiraan.kode_perk='+QuotedStr(cKodePerk)+' ';
  if (cKantor<>'') then
    MySQLQuery1.SQL.Text := MySQLQuery1.SQL.Text+'and '+QuotedStr(cKantor)+' like concat(concat("%",kode_kantor),"%") ';
  MySQLQuery1.SQL.Text:=MySQLQuery1.SQL.Text+'group by perkiraan.kode_perk ';

  MySQLQuery1.Open;
  if trim(MySQLQuery1.FieldByName('type_perk').AsString)='PENDAPATAN' then
    Result:=MySQLQuery1.FieldByName('debet').AsFloat
  else
    Result:=MySQLQuery1.FieldByName('kredit').AsFloat; //BIAYA DAN PAJAK
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function DepGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,IFNULL(pokok_trans,0),0)) - '+
    'sum(if(floor(my_kode_trans/100)=2,IFNULL(pokok_trans,0),0)) as hasil '+
    'from '+cDb2+'.deptrans '+
    'where no_rekening='+QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function TabGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok,0)) - '+
    'sum(if(floor(my_kode_trans/100)=2,pokok,0)) as hasil '+
    'from '+cDb2+'.tabtrans '+
    'where no_rekening='+QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

Function TabSetSaldoAkhir(cNoRekening: string): Boolean;
var
  cTempSQL,cFlagNew: string;
  nSaldoPokok: Double;
begin
  //Update saldo tabungan
  cFlagNew := SelectRow('select count(*) as hasil from '+
    cDb2+'.tabtrans where my_kode_trans=200 and no_rekening='+QuotedStr(cNoRekening));
  if (StrToInt(cFlagNew) > 0) then
    cFlagNew := '2'  //non aktif
  else
    cFlagNew := '1';

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=2,pokok,0)) as hasil from '+
    cDb2+'.tabtrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+
    '.tabung set saldo_akhir='+FloatToStr(nSaldoPokok)+
    ', status='+IfThen(nSaldoPokok=0,cFlagNew,'1')+
    ' where no_rekening='+QuotedStr(cNoRekening));

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=3,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=4,pokok,0)) as hasil from '+
    cDb2+'.tabtrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+
    '.tabung set saldo_akhir_titipan_bunga='+FloatToStr(nSaldoPokok)+
    ' where no_rekening='+QuotedStr(cNoRekening));

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=5,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=6,pokok,0)) as hasil from '+
    cDb2+'.tabtrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+
    '.tabung set saldo_titipan_pokok='+FloatToStr(nSaldoPokok)+
    ' where no_rekening='+QuotedStr(cNoRekening));

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=5,titipan_bunga,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=6,titipan_bunga,0)) as hasil from '+
    cDb2+'.tabtrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+
  '.tabung set saldo_titipan_bunga_ks='+FloatToStr(nSaldoPokok)+
    ' where no_rekening='+QuotedStr(cNoRekening));
    
  Result := True;
end;

function KreGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok,0)) - '+
    'sum(if(floor(my_kode_trans/100)=3,pokok,0)) as hasil '+
    'from '+cDb2+'.kretrans '+
    'where no_rekening='+QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

Function IsValidKodePerkDetail(cKodePerk, cKetPerk: string): Boolean;
begin
  Result := True;

  if Empty(GetFValueByFKeyValue('perkiraan','kode_perk',cKodePerk,'kode_perk')) then
    begin
      Pesan(2,'Kode Perkiraan '+cKetPerk+' tidak ada di Master Perkiraan !');
      Result := False;
    end;

  if (Trim(GetFValueByFKeyValue('perkiraan','kode_perk',cKodePerk,'g_or_d'))<>'D') then
    begin
      Pesan(2,'Definisi Kode Perkiraan '+cKetPerk+' ada di Level general !');
      Result := False;
    end;
end;

Function IsHariLibur(dTgl: TDate): Boolean;
var
  cTemp: string;
begin
  if (DayOfWeek(dTgl)=1) and (GetMySysID('SYS','SYS_TRANSAKSI_MINGGU','YA')='TIDAK') then  //sabtu tidak ada transaksi/libur
    cTemp := '1'
  else if (DayOfWeek(dTgl)=7) and (GetMySysID('SYS','SYS_TRANSAKSI_SABTU','YA')='TIDAK') then  //sabtu tidak ada transaksi/libur
    cTemp := '1'
  else
    cTemp := SelectRow('SELECT COUNT(*) AS hasil FROM '+cDb2+'.hari_libur '+
      'WHERE tgl='+DateToStrSQL(dTgl));

  if (StrToInt(cTemp) > 0) then
    Result := True
  else
    Result := False;
end;

function IsDbLock(cKey: String): Boolean;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := '#'+cNamaUser+#13#10+' '+'SELECT COUNT(*) AS hasil '+
    'FROM '+cDb2+'.daftar_dblock '+
    'WHERE key_name='+QuotedStr(cKey)+
    ' AND DATE(waktu)='+DateToStrSQL(dTglSystem)+
    ' AND status="Y" '+
    ' AND user_id<>'+QuotedStr(cUserID);
  MySQLQuery1.Open;
    Result := Trim(MySQLQuery1.FieldByName('hasil').AsString)='0';
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function GetDbLock(cKey: String; nTimeOut: Byte = 10): Boolean;
var
  MySQLQuery1: TMyQuery;
  nWaktu: Byte;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := '#'+cNamaUser+#13#10+' '+'SELECT COUNT(*) AS hasil '+
    'FROM '+cDb2+'.daftar_dblock '+
    'WHERE key_name='+QuotedStr(cKey)+
    ' AND status="Y" '+
    ' AND DATE(waktu)='+DateToStrSQL(dTglSystem)+
    ' AND user_id<>'+QuotedStr(cUserID);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;
  Result := False;
  for nWaktu := 1 to nTimeOut do
    begin
      if (Trim(MySQLQuery1.FieldByName('hasil').AsString)='0') then
        begin
          MyExecuteSQL('DELETE FROM '+cDb2+'.`daftar_dblock` '+
            'WHERE `key_name`='+QuotedStr(cKey)+
            ' AND `status`="Y" '+
            ' AND `user_id`='+QuotedStr(cUserID)+
            ' AND DATE(waktu)='+DateToStrSQL(dTglSystem));
          Result := MyExecuteSQL('INSERT INTO '+cDb2+'.`daftar_dblock` '+
            '(`id`,`key_name`,`status`,`user_id`,`waktu`) VALUES ( NULL, '+
            QuotedStr(cKey)+','+QuotedStr('Y')+','+QuotedStr(cUserID)+','+DateTimeToStrSQL(Now)+')');
          Break;
        end
      else
        Result := False;
      Sleep(1000);
      if MySQLQuery1.Active then
        MySQLQuery1.Refresh
      else
        MySQLQuery1.Open;
    end;
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function ReleaseDbLock(cKey: String): Boolean;
var
  MySQLQuery1: TMyQuery;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  //delete only
  if (GetMyParameter('DEL_GETLOCK','TIDAK')='YA') then
    Result := MyExecuteSQL('DELETE FROM '+cDb2+'.`daftar_dblock` '+
      'WHERE key_name='+QuotedStr(cKey)+' AND user_id='+QuotedStr(cUserID))
  else  //update only
    Result := MyExecuteSQL('UPDATE '+cDb2+'.`daftar_dblock` '+
      ' SET status="N" '+
      'WHERE key_name='+QuotedStr(cKey)+' AND status="Y" AND user_id='+QuotedStr(cUserID));
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function GetNamaUser(UserID: String): String;
begin
  Result := SelectRow('select nama from '+cDb2+'.`user` where user_id='+QuotedStr(UserID));
end;

function GetKodeCabang(kantorID: String): String;
begin
  Result := SelectRow('SELECT kode_cabang FROM '+cDb2+
      '.app_kode_kantor WHERE kode_kantor='+QuotedStr(kantorID));
end;

function GetKodePusat(): String;
begin
  Result := SelectRow('SELECT kode_cabang FROM '+cDb2+
      '.app_kode_kantor WHERE sandi_cabang='+QuotedStr('001'));
end;

function GetTglEOD(CabangID: String): TDate;
var
  cTemp: string;     //cTmpKodeCabang,
  dTglTemp: TDate;
begin
  //cTmpKodeCabang := GetKodeCabang(kantorID);
  cTemp := GetMySysID('SYS','SYS_TANGGAL_TUTUP_TRANSAKSI'+CabangID,'30/09/2013');
  dTglTemp := DateOf(EncodeDateTime(StrToInt(SubStr(cTemp,7,4)),
          StrToInt(SubStr(cTemp,4,2)),
          StrToInt(LeftStr(cTemp,2)),0,0,0,0));
  //  StrToDate(SubStr(cTemp,4,2)+'/'+LeftStr(cTemp,2)+'/'+SubStr(cTemp,7,4));

  Result := dTglTemp;
end;

function GetTglEOM(CabangID: String): TDate;
var
  cTemp: string;  //cTmpKodeCabang,
  dTglTemp: TDate;
begin
  //cTmpKodeCabang := GetKodeCabang(kantorID);
  cTemp := GetMySysID('SYS','SYS_TANGGAL_TUTUP_TRANSAKSI_BULANAN'+CabangID,'30/09/2013');
  dTglTemp := DateOf(EncodeDateTime(StrToInt(SubStr(cTemp,7,4)),
          StrToInt(SubStr(cTemp,4,2)),
          StrToInt(LeftStr(cTemp,2)),0,0,0,0));
  //  StrToDate(SubStr(cTemp,4,2)+'/'+LeftStr(cTemp,2)+'/'+SubStr(cTemp,7,4));

  Result := dTglTemp;
end;

function GetNextRekID(cTable, cNamaField, cIdFormat: String; dTanggal: TDateTime; cKodeCabang: String = ''; cKodeProduk: String = ''): String;
var
  cTemp, cTemp2: string;
  nPos1, nPos2: Smallint;
begin
    cTemp := GetMySysID('',cIdFormat,'###.[999999]');  //parameter 1 sudah digunakan lagi
    if Empty(cTemp) then
      cTemp := '###.[999999]';

    if (Pos('###',cTemp) > 0) then
      cTemp := Replace(cTemp,'###',cKodeCabang);
    if (Pos('!!!',cTemp) > 0) then
      cTemp := Replace(cTemp,'!!!',BulanRomawi(MonthOf(dTanggal)));
    if (Pos('MMM',cTemp) > 0) then
      cTemp := Replace(cTemp,'MMM',StrZero(MonthOf(dTanggal),2));
    if (Pos('***',cTemp) > 0) then
      cTemp := Replace(cTemp,'***',IntToStr(YearOf(dTanggal)));
    if (Pos('XXX',cTemp) > 0) then
      cTemp := Replace(cTemp,'XXX',cKodeProduk);
    if (Pos('YYY',cTemp) > 0) then
      cTemp := Replace(cTemp,'YYY',RightStr(IntToStr(YearOf(dTanggal)),2));
    if (Pos('OOO',cTemp) > 0) then
      cTemp := Replace(cTemp,'OOO',RightStr(IntToStr(YearOf(dTanggal)),4));

    nPos1 := At('[',cTemp);
    nPos2 := At(']',cTemp)-nPos1-1;

    cTemp2 := SelectRow('SELECT SUBSTR('+cNamaField+','+IntToStr(nPos1)+','+IntToStr(nPos2)+') AS hasil FROM '+
      cTable+
      ' WHERE '+cNamaField+' LIKE '+QuotedStr(LeftStr(cTemp,nPos1-1)+'%'+SubStr(cTemp,nPos1+nPos2+2,50))+
       ' ORDER BY hasil DESC LIMIT 1');

    if Empty(cTemp2) then
      cTemp2 := '0';

    if not IsStrANumber(cTemp2) then
      cTemp2 := '0';

    Result := Replace(cTemp,'['+Replicate('9',nPos2) +']',StrZero(StrToInt(cTemp2)+1,nPos2));
end;

function ABASetSaldoAkhir(cNoRekening: string): Boolean;
var
  cTempSQL,cFlagNew,cJenis: string;
  nSaldoPokok: Double;
begin
  //cari jenis aba?
  cJenis := SelectRow('select jenis from '+
    cDb2+'.aba where no_rekening='+QuotedStr(cNoRekening));
  //Update saldo aba
//  cFlagNew := SelectRow('select count(*) as hasil from '+
//    cDb2+'.abatrans where my_kode_trans=200 and no_rekening='+QuotedStr(cNoRekening));
//  if (StrToInt(cFlagNew) > 0) then
//    cFlagNew := '2'  //non aktif
//  else
    cFlagNew := '1';

  if (cJenis='10') then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,giro_pokok,0)) - '+
        ' sum(if(floor(my_kode_trans/100)=2,giro_pokok,0)) as hasil from '+
        cDb2+'.abatrans where no_rekening='+
        QuotedStr(cNoRekening));
    end
  else if (cJenis='20') or (cJenis='25') then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,tab_pokok,0)) - '+
        ' sum(if(floor(my_kode_trans/100)=2,tab_pokok,0)) as hasil from '+
        cDb2+'.abatrans where no_rekening='+
        QuotedStr(cNoRekening));
    end
  else if (cJenis='30') or (cJenis='35') then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,dep_pokok,0)) - '+
        ' sum(if(floor(my_kode_trans/100)=2,dep_pokok,0)) as hasil from '+
        cDb2+'.abatrans where no_rekening='+
        QuotedStr(cNoRekening));
    end;

  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+
    '.aba set saldo_akhir_pokok='+FloatToStr(nSaldoPokok)+
    ', status='+IfThen(nSaldoPokok=0,cFlagNew,'1')+
    ' where no_rekening='+QuotedStr(cNoRekening));

  Result := True;
end;

function ABAGetSaldoAkhir(cNoRekening: string; dTgl: TDate): Double;
var
  cTempSQL,cJenis: string;
begin
  //cari jenis aba?
  cJenis := SelectRow('select jenis from '+
    cDb2+'.aba where no_rekening='+QuotedStr(cNoRekening));

  if (cJenis='10') then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,giro_pokok,0)) - '+
        'sum(if(floor(my_kode_trans/100)=2,giro_pokok,0)) as hasil '+
        'from '+cDb2+'.abatrans '+
        'where no_rekening='+QuotedStr(cNoRekening)+
        ' and tgl_trans <= '+DateToStrSQL(dTgl));
    end
  else if (cJenis='20') or (cJenis='25') then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,tab_pokok,0)) - '+
        'sum(if(floor(my_kode_trans/100)=2,tab_pokok,0)) as hasil '+
        'from '+cDb2+'.abatrans '+
        'where no_rekening='+QuotedStr(cNoRekening)+
        ' and tgl_trans <= '+DateToStrSQL(dTgl));
    end
  else if (cJenis='30') or (cJenis='35') then
    begin
      cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,dep_pokok,0)) - '+
        'sum(if(floor(my_kode_trans/100)=2,dep_pokok,0)) as hasil '+
        'from '+cDb2+'.abatrans '+
        'where no_rekening='+QuotedStr(cNoRekening)+
        ' and tgl_trans <= '+DateToStrSQL(dTgl));
    end;
    
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function KirimNotifikasiAndroid(Pesan: TStrings; UserID: string): Boolean;
var
  cTempRegIDGCM, cDomain, cSound: String;       //, cLinkPhpAndroid
begin
  cTempRegIDGCM := GetFValueByFKeyValue('user','user_id',UserID,'reg_id_gcm');
  cSound := GetFValueByFKeyValue('user','user_id',UserID,'sound');
  cDomain := GetMyParameter('WEB_ANDROID','103.234.254.186');
//  cLinkPhpAndroid := 'http://'+cDomain+
//    GetMyParameter('PHP_ANDROID','/bpr_service_android/test_kirim_notification_single-1.php');

  Result := True;
  if not Empty(cTempRegIDGCM) then
    begin
      try
        if _IsConnectedToInternet then
          begin
            Pesan.Add('reg_fcm_id='+cTempRegIDGCM);
            dm_bpr1.IdHTTP1.Post('http://'+cDomain+
              GetMyParameter('PHP_ANDROID_NEW','/bpr_service_android/config/test_kirim_notification_single.php')
              ,Pesan); //tanpa isi data
              //'/bprkmj_service_android/config/test_kirim_notification_single.php',Pesan); //tanpa isi data
            //Pesan.Add('sound='+cSound);
            //dm_bpr1.IdHTTP1.Post(cLinkPhpAndroid,Pesan); //tanpa isi data
          end;
      except
        on E: EIdException do
          begin
            Result := False;
          end;
      end;
    end;
end;

function GetPPAPWD(cNoRekening: String; dTgl: TDate; lNoMinusAgunanDiperhitungkan: Boolean = False): Double;
var
  MySQLQuery1: TMyQuery;
  cGetPTAB, cNextAngsuran,
  cTgl1, cTgl2,
  cJenisAgunan, cField_nilai_acuan,
  cNo_RekLama, cKolek_RekLama, cStatusKreditOld, cTemp: string;
  dTgl1, dTglLastMacet: TDate;
  nPersenPPAP,
  nPersenIkatan, nDiperhitungkan, nPPAPWD: Double;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  Result := 0;

  MySQLQuery1.SQL.Text := 'SELECT kr.no_rekening, kr.tgl_realisasi, kr.tgl_jatuh_tempo, '+
      ' kr.no_rekening_old, kr.no_rekening_old_kolek, kr.status_kredit, kr.ikatan_agunan, '+
      '	kr.nilai_taksasi_agunan, kr.harga_pasar, kr.nilai_njop_agunan, kr.nilai_apht_agunan, '+
      ' kr.type_kredit, '+
      '	sum(if(kt.my_kode_trans=100 AND kt.tgl_trans <= '+DateToStrSQL(EndOfTheMonth(IncMonth(dTgl,-1)))+',kt.pokok,0)) - '+
      '	sum(if(kt.my_kode_trans=300 AND kt.tgl_trans <= '+DateToStrSQL(EndOfTheMonth(IncMonth(dTgl,-1)))+',kt.pokok,0)) as baki_debet2, '+
      '	sum(if(kt.my_kode_trans=100,kt.pokok,0)) - '+
      '	sum(if(kt.my_kode_trans=300,kt.pokok,0)) as baki_debet, '+
      ' '+cDb2+'.get_kolek_bi(kr.no_rekening, '+DateToStrSQL(EndOfTheMonth(IncMonth(dTgl,-1)))+') as kolek2, '+
      ' '+cDb2+'.get_kolek_bi(kr.no_rekening, '+DateToStrSQL(EndOfTheMonth(dTgl))+') as kolek '+
      'from '+cDb2+'.kredit kr '+
      '  left join '+cDb2+'.kretrans kt on kt.no_rekening=kr.no_rekening '+
      'where kt.my_kode_trans in (100,300) and kt.tgl_trans <= '+DateToStrSQL(EndOfTheMonth(dTgl))+
      '   and kr.no_rekening='+QuotedStr(cNoRekening)+' '+
      'group by kr.no_rekening ';
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  cGetPTAB := '';
  //nJmlPokokPTAB := 0;
  //nJmlBungaPTAB := 0;
  //nAngsuranPerBulan := 0;
  dTgl1 := MySQLQuery1.FieldByName('tgl_realisasi').AsDateTime;
  //dTgl2 := MySQLQuery1.FieldByName('tgl_jatuh_tempo').AsDateTime;

  //restruktur
  cNo_RekLama := MySQLQuery1.FieldByName('no_rekening_old').AsString;
  cKolek_RekLama := MySQLQuery1.FieldByName('no_rekening_old_kolek').AsString;
  cStatusKreditOld := MySQLQuery1.FieldByName('status_kredit').AsString;

  if (MySQLQuery1.FieldByName('type_kredit').AsString='300') then
    begin
      cGetPTAB := SelectRow('select '+cDb2+'.get_ptab('+
        QuotedStr(cNoRekening)+','+DateToStrSQL(dTgl)+')');
      cTgl1 := GetArg(cGetPTAB,2,';');
      cTgl2 := GetArg(cGetPTAB,4,';');
      dTgl1 := StrToDate(SubStr(cTgl1,6,2)+'/'+SubStr(cTgl1,9,2)+'/'+LeftStr(cTgl1,4));
      //dTgl2 := StrToDate(SubStr(cTgl2,6,2)+'/'+SubStr(cTgl2,9,2)+'/'+LeftStr(cTgl2,4));

      //nJmlPokokPTAB := StrToFloat(GetArg(cGetPTAB,7,';'))-StrToFloat(GetArg(cGetPTAB,8,';'));
      //if (nJmlPokokPTAB < 0) then
      //  nJmlPokokPTAB := 0;

      //nJmlBungaPTAB := StrToFloat(GetArg(cGetPTAB,9,';'))-StrToFloat(GetArg(cGetPTAB,10,';'));
      //if (nJmlBungaPTAB < 0) then
      //  nJmlBungaPTAB := 0;

      //nAngsuranPerBulan :=  Round((StrToFloat(GetArg(cGetPTAB,5,';'))*(StrToFloat(GetArg(cGetPTAB,6,';'))/100)) / 12);
    end;

  if (MySQLQuery1.RecordCount > 0) then
    begin
      //field acuan persentasi ikatan agunan
      cField_nilai_acuan := GetFValueByFKeyValue('kre_kode_ikatan_hukum_agunan','kode_ikatan_hukum',MySQLQuery1.FieldByName('ikatan_agunan').AsString,'nilai_acuan');
      if Empty(cField_nilai_acuan) then
        cField_nilai_acuan := 'nilai_taksasi_agunan';                  
      nPersenIkatan := GetFloatFValueByFKeyValue('kre_kode_ikatan_hukum_agunan','kode_ikatan_hukum',MySQLQuery1.FieldByName('ikatan_agunan').AsString,'persen_default');

      nDiperhitungkan := (nPersenIkatan/100)*MySQLQuery1.FieldByName(cField_nilai_acuan).AsFloat;
      cNextAngsuran := SelectRow('select '+cDb2+'.`get_next_angsuran`('+
        QuotedStr(cNoRekening)+','+
        DateToStrSQL(dTgl)+')');

      if (MySQLQuery1.FieldByName('kolek').AsInteger > 3) or (StrToInt(cKolek_RekLama) > 3) then
        begin
          cTemp := SelectRow('SELECT `get_tgl_macet`('+
            QuotedStr(MySQLQuery1.FieldByName('no_rekening').AsString)+','+DateToStrSQL(dTgl)+') AS tgl_macet');
          if not Empty(cTemp) then
            begin
              dTglLastMacet := StrToDate(cTemp);
              //dTglLastMacet := IncYear(dTglLastMacet, 2);
            end
          else
            dTglLastMacet := dTgl;

          //jika macet 2 s/d 3 tahun, pengurang dikali 50%
          if (DateOf(dTgl) > DateOf(IncYear(dTglLastMacet, 2))) and (DateOf(dTgl) <= DateOf(IncYear(dTglLastMacet, 3))) then
            nDiperhitungkan := nDiperhitungkan * (50/100);

          //jika macet > 3 tahun, pengurang = 0
          if (DateOf(dTgl) > DateOf(IncYear(dTglLastMacet, 3))) then
            nDiperhitungkan := 0;
        end;

      if not Empty(cNo_RekLama) and (DateOf(dTgl1) >= DateOf(StrToDate('03/31/2015')))
          and (StrToInt(cNextAngsuran) <= 3)
          and (cStatusKreditOld='RESCHEDULE') then      //(DateOf(IncMonth(dTgl1,3)) >= DateOf(tgl2.Date))
        begin
          if StrToInt(cKolek_RekLama)=1 then
            nPersenPPAP := 0.5
          else if StrToInt(cKolek_RekLama)=2 then
            nPersenPPAP := 10
          else if StrToInt(cKolek_RekLama)=3 then
            nPersenPPAP := 50
          else
            nPersenPPAP := 100;

          if (StrToInt(cKolek_RekLama)=1) then
            begin
              if (cJenisAgunan='4') then   //logam mulia ppap = 0
                nPPAPWD := 0
              else
                begin
                  nPPAPWD := MySQLQuery1.FieldByName('baki_debet').AsFloat * (nPersenPPAP/100);
                  //nPPAPLancar := nPPAPLancar + nPPAPdibentuk;
                end;
            end
          else if (StrToInt(cKolek_RekLama)=2) then
            begin
              if (MySQLQuery1.FieldByName('baki_debet').AsFloat > nDiperhitungkan) then
                begin
                  nPPAPWD := (MySQLQuery1.FieldByName('baki_debet').AsFloat - nDiperhitungkan) * (nPersenPPAP/100);
                  //nPPAPKL := nPPAPKL + nPPAPdibentuk;
                end
              else
                nPPAPWD := 0;
            end
          else if (StrToInt(cKolek_RekLama)=3) then
            begin
              if (MySQLQuery1.FieldByName('baki_debet').AsFloat > nDiperhitungkan) then
                begin
                  nPPAPWD := (MySQLQuery1.FieldByName('baki_debet').AsFloat - nDiperhitungkan) * (nPersenPPAP/100);
                  //nPPAPDiragukan := nPPAPDiragukan + nPPAPdibentuk;
                end
              else
                nPPAPWD := 0;
            end
          else  //if (StrToInt(cKolek_RekLama)=4) then
            begin
              if lNoMinusAgunanDiperhitungkan then
                begin
                  //nDiperhitungkan := 0;
                  nPPAPWD := MySQLQuery1.FieldByName('baki_debet').AsFloat;
                end
              else
                begin
                  if (MySQLQuery1.FieldByName('baki_debet').AsFloat > nDiperhitungkan) then
                    nPPAPWD := (MySQLQuery1.FieldByName('baki_debet').AsFloat - nDiperhitungkan)
                  else
                    nPPAPWD := 0;
                end;
            end;
        end
      else
        begin
          if MySQLQuery1.FieldByName('kolek').AsInteger=1 then
            nPersenPPAP := 0.5
          else if MySQLQuery1.FieldByName('kolek').AsInteger=2 then
            nPersenPPAP := 10
          else if MySQLQuery1.FieldByName('kolek').AsInteger=3 then
            nPersenPPAP := 50
          else
            nPersenPPAP := 100;

          if (MySQLQuery1.FieldByName('kolek').AsInteger=1) then
            begin
              if (cJenisAgunan='4') then   //logam mulia ppap = 0
                nPPAPWD := 0
              else
                begin
                  nPPAPWD := MySQLQuery1.FieldByName('baki_debet').AsFloat * (nPersenPPAP/100);
                  //nPPAPLancar := nPPAPLancar + nPPAPdibentuk;
                end;
            end
          else if (MySQLQuery1.FieldByName('kolek').AsInteger=2) then
            begin
              if (MySQLQuery1.FieldByName('baki_debet').AsFloat > nDiperhitungkan) then
                begin
                  nPPAPWD := (MySQLQuery1.FieldByName('baki_debet').AsFloat - nDiperhitungkan) * (nPersenPPAP/100);
                  //nPPAPKL := nPPAPKL + nPPAPdibentuk;
                end
              else
                nPPAPWD := 0;
            end
          else if (MySQLQuery1.FieldByName('kolek').AsInteger=3) then
            begin
              if (MySQLQuery1.FieldByName('baki_debet').AsFloat > nDiperhitungkan) then
                begin
                  nPPAPWD := (MySQLQuery1.FieldByName('baki_debet').AsFloat - nDiperhitungkan) * (nPersenPPAP/100);
                  //nPPAPDiragukan := nPPAPDiragukan + nPPAPdibentuk;
                end
              else
                nPPAPWD := 0;
            end
          else  //if (MySQLQuery1.FieldByName('kolek').AsInteger=4) then
            begin
              if lNoMinusAgunanDiperhitungkan then
                begin
                  //nDiperhitungkan := 0;
                  nPPAPWD := MySQLQuery1.FieldByName('baki_debet').AsFloat;
                end
              else
                begin
                  if (MySQLQuery1.FieldByName('baki_debet').AsFloat > nDiperhitungkan) then
                    nPPAPWD := (MySQLQuery1.FieldByName('baki_debet').AsFloat - nDiperhitungkan)
                  else
                    nPPAPWD := 0;
                end;
            end;
        end;

      Result := nPPAPWD;
    end;
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

Function TabGetSaldoBlokir(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('SELECT SUM(IF(`tgl_masuk` <= '+DateToStrSQL(dTgl1)+',`jumlah`,0)) - '+
    'SUM(IF(`tgl_penarikan` <= '+DateToStrSQL(dTgl1)+',`jumlah_penarikan`,0)) AS hasil '+
    'FROM '+cDb2+'.`tab_blokir_titipan` '+
    'WHERE `no_rekening`='+QuotedStr(cNoRekening)+
    ' AND `tgl_masuk` <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function InvGetSaldoAkhir(cNoInventaris: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=2,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=3,pokok,0)) as hasil from '+
    cDb2+'.invtrans where inventaris_id='+QuotedStr(cNoInventaris)+
    ' and kode_trans not in ("105","305") '+
    ' and tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function InvSetSaldoAkhir(cNoInventaris: string): Boolean;
var
  cTempSQL,cTglValuta: string;  //,cFlagNew
  nSaldoPokok: Double;
//  dTglValuta: TDate;
begin
  //Update saldo inventaris
//  cFlagNew := SelectRow('select count(*) as hasil from '+
//    cDb2+'.invtrans where inventaris_id='+QuotedStr(cNoInventaris));
//  if (StrToInt(cFlagNew) > 0) then
//    cFlagNew := '2'  //non aktif
//  else
//    cFlagNew := '1';

  cTglValuta := SelectRow('SELECT tgl_trans FROM '+cDb2+'.invtrans '+
      ' WHERE inventaris_id='+QuotedStr(cNoInventaris)+
      ' ORDER BY tgl_trans LIMIT 1');

//  if not Empty(cTglValuta) then
//    dTglValuta := StrToDate(cTglValuta);

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=2,pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=3,pokok,0)) as hasil from '+
    cDb2+'.invtrans '+
    'where inventaris_id='+QuotedStr(cNoInventaris)+
    ' and kode_trans not in ("105","305") ');
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+'.inventaris set nilai_buku='+
    FloatToStr(nSaldoPokok)+
    //', status='+IfThen(nSaldoPokok=0,cFlagNew,'1')+
    //IfThen(Empty(cTglValuta),', tanggal_valuta=null ',', tanggal_valuta='+DateToStrSQL(StrToDate(cTglValuta)))+
    ' where inventaris_id='+QuotedStr(cNoInventaris));

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=2,pokok,0)) + '+
    ' sum(if(kode_trans="109" and floor(my_kode_trans/100)=3,pokok,0)) as hasil from '+
    cDb2+'.invtrans where inventaris_id='+QuotedStr(cNoInventaris)+
    ' and kode_trans not in ("105","305") ');
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+'.inventaris set akumulasi_penyusutan='+
    FloatToStr(nSaldoPokok)+' where inventaris_id='+QuotedStr(cNoInventaris));

  Result := True;
end;

function IsValidJamTransaksi(cCabangID: string; dTgl: TDate; cJamTransaksi: TTime): Boolean;
var
  JamParam, JamSabtu, FlagLock, FlagLockSabtu: string;
begin
  JamParam := GetMyParameter('LOCK_JAM_MULAI'+cCabangID,'18:00');
  JamSabtu := GetMyParameter('LOCK_JAM_MULAI_SABTU'+cCabangID,'18:00');
  FlagLock := GetMyParameter('LOCK_JAM_TRANSAKSI'+cCabangID,'Y');
  FlagLockSabtu := GetMyParameter('LOCK_JAM_TRANSAKSI_SABTU'+cCabangID,'Y');
  if (GetMyParameter('UNLOCK_JAM_TRANSAKSI'+cCabangID,'Y')='Y') then
    begin
      if StrToTime(GetMyParameter('UNLOCK_JAM_MULAI'+cCabangID,'08:00')) > TimeOf(cJamTransaksi) then
        begin
          Result := False;
          Pesan(2,'Maaf, Anda belum memasuki waktu mulai transaksi, Transaksi tidak dapat dilanjutkan...!');
        end
      else
        begin
          if DayOfWeek(dTgl)=7 then  //sabtu
            begin
              if (FlagLockSabtu='Y') then
                begin
                  if StrToTime(JamSabtu) <= TimeOf(cJamTransaksi) then
                    begin
                      Result := False;
                      Pesan(2,'Maaf, Anda telah melewati batas waktu transaksi harian, Transaksi tidak dapat dilanjutkan...!');
                    end
                  else
                    Result := True;
                end
              else
                Result := True;
            end
          else
            begin
              if (FlagLock='Y') then
                begin
                  if StrToTime(JamParam) <= TimeOf(cJamTransaksi) then
                    begin
                      Result := False;
                      Pesan(2,'Maaf, Anda telah melewati batas waktu transaksi harian, Transaksi tidak dapat dilanjutkan...!');
                    end
                  else
                    Result := True;
                end
              else
                Result := True;
            end;
        end;
    end
  else
    begin
      if DayOfWeek(dTgl)=7 then  //sabtu
        begin
          if (FlagLockSabtu='Y') then
            begin
              if StrToTime(JamSabtu) <= TimeOf(cJamTransaksi) then
                begin
                  Result := False;
                  Pesan(2,'Maaf, Anda telah melewati batas waktu transaksi harian, Transaksi tidak dapat dilanjutkan...!');
                end
              else
                Result := True;
            end
          else
            Result := True;
        end
      else
        begin
          if (FlagLock='Y') then
            begin
              if StrToTime(JamParam) <= TimeOf(cJamTransaksi) then
                begin
                  Result := False;
                  Pesan(2,'Maaf, Anda telah melewati batas waktu transaksi harian, Transaksi tidak dapat dilanjutkan...!');
                end
              else
                Result := True;
            end
          else
            Result := True;
        end;
    end;
end;

function GetValidRekSLIK(cNoRekening: String): String;
var
  cTemp: string;
begin
  cTemp := cNoRekening;
  cTemp := StringReplace(cTemp,' ','', [rfReplaceAll]);  //buang spasi
  cTemp := StringReplace(cTemp,'.','', [rfReplaceAll]);  //buang titik
  cTemp := StringReplace(cTemp,',','', [rfReplaceAll]);  //buang koma
  cTemp := StringReplace(cTemp,'-','', [rfReplaceAll]);  //buang minus
  cTemp := StringReplace(cTemp,'/','', [rfReplaceAll]);  //buang slash
  cTemp := StringReplace(cTemp,#13,'', [rfReplaceAll]);  //buang enter
  cTemp := StringReplace(cTemp,#10,'', [rfReplaceAll]);  //buang enter
  Result := cTemp;
end;

function IsScanKTPKCTT(cNasabahID: String): Boolean;
var
  flg_ktp, flg_kctt: string;
begin
//  flg_ktp := SelectRow('SELECT 1 FROM '+cDb2+'.nasabah WHERE nasabah_id='+QuotedStr(cNasabahID)+
//    ' AND foto_ktp IS NOT NULL');
//  flg_kctt := SelectRow('SELECT 1 FROM '+cDb2+'.nasabah WHERE nasabah_id='+QuotedStr(cNasabahID)+
//    ' AND tandatangan1 IS NOT NULL');
  flg_ktp := SelectRow('SELECT 1 FROM '+cDb2+'.nasabah_image WHERE nasabah_id='+QuotedStr(cNasabahID)+
    ' AND scan_ktp IS NOT NULL');
  flg_kctt := SelectRow('SELECT 1 FROM '+cDb2+'.nasabah_image WHERE nasabah_id='+QuotedStr(cNasabahID)+
    ' AND scan_tanda_tangan IS NOT NULL');
  Result := True;

  if (flg_ktp<>'1') then
    begin
      Result := False;
      Pesan(2,'Maaf, Nasabah tersebut belum memiliki scan KTP, harap lengkapi terlebih dahulu...!');
    end;

  if (flg_kctt<>'1') then
    begin
      Result := False;
      Pesan(2,'Maaf, Nasabah tersebut belum memiliki scan KCTT, harap lengkapi terlebih dahulu...!');
    end;
end;

function KreGetSaldoAkhirDebius(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=8,pokok,0)) - '+
    'sum(if(floor(my_kode_trans/100)=9,pokok,0)) as hasil '+
    'from '+cDb2+'.kretrans '+
    'where no_rekening='+QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function KreSetSaldoAkhirDebius(cNoRekening: string): Boolean;
var
  cTempSQL, cTempSQLDebius: string;
  nDebius, nSaldoPokok: Double;
  dTglLunas: TDate;   //dTglDebius, 
begin
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=8,pokok,0)) as hasil from '+
      cDb2+'.kretrans where '+
      ' (floor(my_kode_trans/100)=8) and no_rekening='+QuotedStr(cNoRekening)+
      ' group by no_rekening');
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nDebius := StrToFloat(cTempSQL);  //debius

    if (nDebius>0) then
      begin
        dm_bpr1.MyQuery3.SQL.Text := 'SELECT MIN(tgl_trans) as tgl_debius FROM '+cDb2+'.kretrans '+
          'WHERE (FLOOR(my_kode_trans/100)=8) AND no_rekening='+QuotedStr(cNoRekening);
        if dm_bpr1.MyQuery3.Active then
          dm_bpr1.MyQuery3.Refresh
        else
          dm_bpr1.MyQuery3.Open;
        cTempSQLDebius := '';
        if (dm_bpr1.MyQuery3.RecordCount > 0) then
          begin
            //dTglDebius := dm_bpr1.MyQuery3.FieldByName('tgl_debius').AsDateTime;
            cTempSQLDebius := ', tgl_debius='+DateToStrSQL(dm_bpr1.MyQuery3.FieldByName('tgl_debius').AsDateTime);
          end;

        cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=8,pokok,0)) - '+
          ' sum(if(floor(my_kode_trans/100)=9,pokok,0)) as hasil from '+
          cDb2+'.kretrans where no_rekening='+
          QuotedStr(cNoRekening));
        if Empty(cTempSQL) then
          cTempSQL := '0';
        nSaldoPokok := StrToFloat(cTempSQL);

        dm_bpr1.MyQuery3.SQL.Text := 'SELECT MAX(tgl_trans) as tgl_lunas FROM '+cDb2+'.kretrans '+
          'WHERE (FLOOR(my_kode_trans/100)=9) AND no_rekening='+QuotedStr(cNoRekening);
        if dm_bpr1.MyQuery3.Active then
          dm_bpr1.MyQuery3.Refresh
        else
          dm_bpr1.MyQuery3.Open;

        if (dm_bpr1.MyQuery3.RecordCount > 0) then
          begin
            dTglLunas := dm_bpr1.MyQuery3.FieldByName('tgl_lunas').AsDateTime;
            if (nSaldoPokok>0) then
              MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
                ' saldo_debius='+FloatToStr(nDebius)+
                cTempSQLDebius+
                ', debius=1'+
                ', kolektibilitas=4'+
                ', tgl_lunas=null'+
                ', saldo_akhir_debius='+FloatToStr(nSaldoPokok)+
                ' WHERE no_rekening='+QuotedStr(cNoRekening))
            else if (nSaldoPokok<=0) then
              MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
                ' saldo_debius='+FloatToStr(nDebius)+
                cTempSQLDebius+
                ', debius=1'+
                ', kolektibilitas=1'+
                ', tgl_lunas='+DateToStrSQL(dTglLunas)+
                ', saldo_akhir_debius='+FloatToStr(nSaldoPokok)+
                ' WHERE no_rekening='+QuotedStr(cNoRekening));
          end
        else
          begin
            MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
              ' saldo_debius='+FloatToStr(nDebius)+
              cTempSQLDebius+
              ', debius=1'+
              ', kolektibilitas=4'+
              ', tgl_lunas=null'+
              ', saldo_akhir_debius='+FloatToStr(nSaldoPokok)+
              ' WHERE no_rekening='+QuotedStr(cNoRekening))
          end;
      end;

  Result := True;
end;

function KreGetSaldoAkhirAyda(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=7 and kode_trans="385",pokok,0)) - '+
    'sum(if(floor(my_kode_trans/100)=7 and kode_trans="710",pokok,0)) - '+
    'sum(if(floor(my_kode_trans/100)=7 and kode_trans="711",pokok,0)) as hasil '+
    'from '+cDb2+'.kretrans '+
    'where no_rekening='+QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function KreSetSaldoAkhirAyda(cNoRekening: string): Boolean;
var
  cTempSQL, cTempSQLAyda: string;
  nAyda, nSaldoPokok, nSaldoBunga: Double;
  dTglLunas: TDate;   //dTglDebius, 
begin
    cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=7 and kode_trans="385",pokok,0)) as hasil from '+
      cDb2+'.kretrans where '+
      ' (floor(my_kode_trans/100)=7) and kode_trans="385" and no_rekening='+QuotedStr(cNoRekening)+
      ' group by no_rekening');
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nAyda := StrToFloat(cTempSQL);  //debius

    if (nAyda>0) then
      begin
        dm_bpr1.MyQuery3.SQL.Text := 'SELECT MIN(tgl_trans) as tgl_ayda FROM '+cDb2+'.kretrans '+
          'WHERE (FLOOR(my_kode_trans/100)=7)  and kode_trans="385" AND no_rekening='+QuotedStr(cNoRekening);
        if dm_bpr1.MyQuery3.Active then
          dm_bpr1.MyQuery3.Refresh
        else
          dm_bpr1.MyQuery3.Open;
        cTempSQLAyda := '';
        if (dm_bpr1.MyQuery3.RecordCount > 0) then
          begin
            //dTglDebius := dm_bpr1.MyQuery3.FieldByName('tgl_debius').AsDateTime;
            cTempSQLAyda := ', tgl_ayda='+DateToStrSQL(dm_bpr1.MyQuery3.FieldByName('tgl_ayda').AsDateTime);
          end;

        cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=7 and kode_trans="385",pokok,0)) - '+
          'sum(if(floor(my_kode_trans/100)=7 and kode_trans="710",pokok,0)) - '+
          'sum(if(floor(my_kode_trans/100)=7 and kode_trans="711",pokok,0)) as hasil '+
          'from '+cDb2+'.kretrans '+
          'where no_rekening='+
          QuotedStr(cNoRekening));
        if Empty(cTempSQL) then
          cTempSQL := '0';
        nSaldoPokok := StrToFloat(cTempSQL);

        cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=7 and kode_trans="385",bunga,0)) - '+
          'sum(if(floor(my_kode_trans/100)=7 and kode_trans="710",bunga,0)) - '+
          'sum(if(floor(my_kode_trans/100)=7 and kode_trans="711",bunga,0)) as hasil '+
          'from '+cDb2+'.kretrans '+
          'where no_rekening='+
          QuotedStr(cNoRekening));
        if Empty(cTempSQL) then
          cTempSQL := '0';
        nSaldoBunga := StrToFloat(cTempSQL);

        dm_bpr1.MyQuery3.SQL.Text := 'SELECT MAX(tgl_trans) as tgl_lunas FROM '+cDb2+'.kretrans '+
          'WHERE (FLOOR(my_kode_trans/100)=7) and kode_trans IN ("710","711") AND no_rekening='+QuotedStr(cNoRekening);
        if dm_bpr1.MyQuery3.Active then
          dm_bpr1.MyQuery3.Refresh
        else
          dm_bpr1.MyQuery3.Open;

        if (dm_bpr1.MyQuery3.RecordCount > 0) then
          begin
            dTglLunas := dm_bpr1.MyQuery3.FieldByName('tgl_lunas').AsDateTime;
            if (nSaldoPokok>0) then
              MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
                ' saldo_ayda_pokok='+FloatToStr(nAyda)+
                cTempSQLAyda+
                ', ayda=1'+
                ', kolektibilitas=4'+
                ', tgl_lunas=null'+
                ', saldo_akhir_ayda_pokok='+FloatToStr(nSaldoPokok)+
                ', saldo_akhir_ayda_bunga='+FloatToStr(nSaldoBunga)+
                ' WHERE no_rekening='+QuotedStr(cNoRekening))
            else if (nSaldoPokok<=0) then
              MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
                ' saldo_ayda_pokok='+FloatToStr(nAyda)+
                cTempSQLAyda+
                ', ayda=1'+
                ', kolektibilitas=1'+
                ', tgl_lunas='+DateToStrSQL(dTglLunas)+
                ', saldo_akhir_ayda_pokok='+FloatToStr(nSaldoPokok)+
                ', saldo_akhir_ayda_bunga='+FloatToStr(nSaldoBunga)+
                ' WHERE no_rekening='+QuotedStr(cNoRekening));
          end
        else
          begin
            MyExecuteSQL('UPDATE '+cDb2+'.kredit SET '+
              ' saldo_ayda_pokok='+FloatToStr(nAyda)+
              cTempSQLAyda+
              ', ayda=1'+
              ', kolektibilitas=4'+
              ', tgl_lunas=null'+
              ', saldo_akhir_ayda_pokok='+FloatToStr(nSaldoPokok)+
              ', saldo_akhir_ayda_bunga='+FloatToStr(nSaldoBunga)+
              ' WHERE no_rekening='+QuotedStr(cNoRekening))
          end;
      end;

  Result := True;
end;

function LimitUser(cKey: String): Boolean;
var
  MySQLQuery1: TMyQuery;
  cJmlLimit: string;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  MySQLQuery1.SQL.Text := 'SELECT COUNT(*) AS hasil '+
    'FROM '+cDb2+'.daftar_dblock '+
    'WHERE key_name='+QuotedStr(cKey)+
  //  '  AND computer_name='+QuotedStr(GetComputerNetName)+
  //  '  AND computer_ip='+QuotedStr(GetLocalIP)+
    '  AND computer_user='+QuotedStr(Trim(UpperCase(GetUserFromWindows)))+
    '  AND DATE(waktu)='+DateToStrSQL(dTglSystem);
  if MySQLQuery1.Active then
    MySQLQuery1.Refresh
  else
    MySQLQuery1.Open;

  if (cUserInitial='HO') then
     cJmlLimit := GetMyParameter('MAX_LIMIT_PC_HO','5')
  else
     cJmlLimit := GetMyParameter('MAX_LIMIT_PC','2');

  if Empty(cJmlLimit) then
    cJmlLimit := '1';

  if (MySQLQuery1.FieldByName('hasil').AsInteger >= StrToInt(cJmlLimit)) then
    Result := True
  else
    begin
      MyExecuteSQL('INSERT INTO '+cDb2+'.`daftar_dblock` '+
        '(`id`,`key_name`,`status`,`user_id`,`waktu`, '+
        '   `computer_name`, `computer_ip`, `computer_user`) VALUES ( NULL, '+
        QuotedStr(cKey)+','+QuotedStr('Y')+','+QuotedStr(cUserID)+','+
        DateTimeToStrSQL(Now)+','+QuotedStr(GetComputerNetName)+','+
        QuotedStr(GetLocalIP)+','+QuotedStr(Trim(UpperCase(GetUserFromWindows)))+')');
      Result := False;
    end;

  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function ReleaseLimitUser(cKey: String): Boolean;
var
  MySQLQuery1: TMyQuery;
  cTmp: string;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;
  cTmp := SelectRow('SELECT id FROM '+cDb2+'.`daftar_dblock` '+
    'WHERE key_name='+QuotedStr(cKey)+
    '  AND computer_name='+QuotedStr(GetComputerNetName)+
    '  AND computer_ip='+QuotedStr(GetLocalIP)+
    '  AND computer_user='+QuotedStr(Trim(UpperCase(GetUserFromWindows)))
    );
  //delete only
  Result := MyExecuteSQL('DELETE FROM '+cDb2+'.`daftar_dblock` '+
    'WHERE id='+QuotedStr(cTmp));
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function CekNasabahBlokir(cNamaNasabah: String): Boolean;
var
  flg_dttot, flg_negatif, flg_blacklist: string;
begin
  if Empty(cNamaNasabah) then
    begin
      Result := False;
      Exit;
    end;

  flg_dttot := SelectRow('SELECT 1 FROM '+cDb2+'.dttot_individu WHERE nama LIKE '+QuotedStr('%'+Trim(cNamaNasabah)+'%'));
  flg_negatif := SelectRow('SELECT 1 FROM '+cDb2+'.daftar_negatiflist WHERE ktp_nama_nasabah LIKE '+QuotedStr('%'+Trim(cNamaNasabah)+'%'));
  flg_blacklist := SelectRow('SELECT 1 FROM '+cDb2+'.daftar_blacklist WHERE nama_nasabah LIKE '+QuotedStr('%'+Trim(cNamaNasabah)+'%'));
  Result := False;

  if (flg_dttot='1') then
    begin
      Result := True;
      Pesan(2,'Maaf, Nasabah tersebut masuk dalam Daftar Terduga Teroris dan Organisasi Terlarang (DTTOT)...!');
    end
  else if (flg_negatif='1') then
    begin
      Result := True;
      Pesan(2,'Maaf, Nasabah tersebut masuk dalam Daftar Negatif List Nasabah...!');
    end
  else if (flg_blacklist='1') then
    begin
      Result := True;
      Pesan(2,'Maaf, Nasabah tersebut masuk dalam Daftar Black List Nasabah...!');
    end;
end;

function ABPPinjamanSetSaldoAkhir(cNoRekening: string): Boolean;
var
  cTempSQL,cFlagNew: string;
  nSaldoPokok: Double;
begin
  //Update saldo abp
  cFlagNew := SelectRow('SELECT COUNT(*) AS hasil FROM '+
    cDb2+'.abptrans WHERE my_kode_trans=100 AND no_rekening='+QuotedStr(cNoRekening));
  if (StrToInt(cFlagNew) > 0) then
    cFlagNew := '2'  //non aktif
  else
    cFlagNew := '1';

  cTempSQL := SelectRow('SELECT SUM(IF(FLOOR(my_kode_trans/100)=1,kre_pokok,0)) - '+
    ' SUM(IF(FLOOR(my_kode_trans/100)=3,kre_pokok,0)) AS hasil FROM '+
    cDb2+'.abptrans WHERE no_rekening='+QuotedStr(cNoRekening));

  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);
  MyExecuteSQL('update '+cDb2+
    '.abp SET saldo_akhir_pokok='+FloatToStr(nSaldoPokok)+
    ', status='+IfThen(nSaldoPokok=0,cFlagNew,'1')+
    ' WHERE no_rekening='+QuotedStr(cNoRekening));

  Result := True;
end;

function simpan_nasabah_anak(cNasabahID, cNamaTableAnakTemp: String): Boolean;
var
  MySQLQuery1: TMyQuery;
  nRec: Integer;
  cTempSQL: string;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

   MyExecuteSQL('DELETE FROM '+cDb2+
      '.`nasabah_anak` WHERE `nasabah_id`='+QuotedStr(cNasabahID));

   MySQLQuery1.SQL.Text :=
      'SELECT `nasabah_id`, `nama_anak`, `tgl_lahir_anak` '+
      'FROM '+cNamaTableAnakTemp+
      ' WHERE `nasabah_id`='+QuotedStr(cNasabahID);
   if MySQLQuery1.Active then
      MySQLQuery1.Refresh
   else
      MySQLQuery1.Open;

   cTempSQL := '';
   nRec := 0;

   MySQLQuery1.First;
   while not MySQLQuery1.Eof do
     begin
        nRec := nRec + 1;
        cTempSQL := cTempSQL + IfThen(Empty(cTempSQL),'',', ') + '('+
          QuotedStr(MySQLQuery1.FieldByName('nasabah_id').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('nama_anak').AsString)+', '+
          DateToStrSQL(MySQLQuery1.FieldByName('tgl_lahir_anak').AsDateTime)+')';
       MySQLQuery1.Next;
      //jalankam jika sudah 5 row
       if not Empty(cTempSQL) and (nRec = 5) then
         begin
            MyExecuteSQL('INSERT INTO '+cDb2+
              '.`nasabah_anak` (`nasabah_id`, `nama_anak`, `tgl_lahir_anak`) VALUES '+
              cTempSQL);
           cTempSQL := '';
           nRec := 0;
         end;
     end;

   //jalankam sisanya
   if not Empty(cTempSQL) then
     MyExecuteSQL('INSERT INTO '+cDb2+
        '.`nasabah_anak` (`nasabah_id`, `nama_anak`, `tgl_lahir_anak`) VALUES '+
        cTempSQL);

  Result := True;
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function simpan_nasabah_waris(cNasabahID, cNamaTableWarisTemp: String): Boolean;
var
  MySQLQuery1: TMyQuery;
  nRec: Integer;
  cTempSQL: string;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

   MyExecuteSQL('DELETE FROM '+cDb2+
      '.`nasabah_waris` WHERE `nasabah_id`='+QuotedStr(cNasabahID));

   MySQLQuery1.SQL.Text :=
      'SELECT `nasabah_id`, `waris_nama`, `waris_sex`, '+
          '`waris_tgl_lahir`, `waris_hub`, `waris_alamat` '+
      'FROM '+cNamaTableWarisTemp+
      ' WHERE `nasabah_id`='+QuotedStr(cNasabahID);
   if MySQLQuery1.Active then
      MySQLQuery1.Refresh
   else
      MySQLQuery1.Open;

   cTempSQL := '';
   nRec := 0;

   MySQLQuery1.First;
   while not MySQLQuery1.Eof do
     begin
        nRec := nRec + 1;
        cTempSQL := cTempSQL + IfThen(Empty(cTempSQL),'',', ') + '('+
          QuotedStr(MySQLQuery1.FieldByName('nasabah_id').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('waris_nama').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('waris_sex').AsString)+', '+
          DateToStrSQL(MySQLQuery1.FieldByName('waris_tgl_lahir').AsDateTime)+', '+
          QuotedStr(MySQLQuery1.FieldByName('waris_hub').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('waris_alamat').AsString)+')';
        MySQLQuery1.Next;
      //jalankam jika sudah 5 row
       if not Empty(cTempSQL) and (nRec = 5) then
         begin
           MyExecuteSQL('INSERT INTO '+cDb2+
              '.`nasabah_waris` (`nasabah_id`, `waris_nama`, `waris_sex`, '+
              '`waris_tgl_lahir`, `waris_hub`, `waris_alamat`) VALUES '+
              cTempSQL);
           cTempSQL := '';
           nRec := 0;
         end;
     end;

   //jalankam sisanya
   if not Empty(cTempSQL) then
     MyExecuteSQL('INSERT INTO '+cDb2+
        '.`nasabah_waris` (`nasabah_id`, `waris_nama`, `waris_sex`, '+
        '`waris_tgl_lahir`, `waris_hub`, `waris_alamat`) VALUES '+
        cTempSQL);

  Result := True;
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function get_nasabah_pengurus(cNasabahID, cTablePengurusTemp: String): Boolean;
begin
  MyExecuteSQL('INSERT INTO '+cTablePengurusTemp+
    '    (`nomor_identitas`, `nasabah_id`, `jenis_identitas`, `nama_pengurus`, `jenis_kelamin`, '+
    '    `alamat`, `kelurahan`, `kecamatan`, `kode_sandi_kab`, `kode_sandi_prov`, '+
    '    `kode_sandi_jabatan`, `pangsa_kepemilikan`, `status_pengurus`, `kode_kantor`, '+
    '    `telpon`, `hp`, `email`, `kode_pos`) '+
    'SELECT `nomor_identitas`, `nasabah_id`, `jenis_identitas`, `nama_pengurus`, `jenis_kelamin`, '+
    '    `alamat`, `kelurahan`, `kecamatan`, `kode_sandi_kab`, `kode_sandi_prov`, '+
    '    `kode_sandi_jabatan`, `pangsa_kepemilikan`, `status_pengurus`, `kode_kantor`, '+
    '    `telpon`, `hp`, `email`, `kode_pos` '+
    'FROM '+cDb2+'.`nasabah_pengurus_pemilik` '+
    'WHERE nasabah_id='+QuotedStr(cNasabahID));

  Result := True;
end;

function simpan_nasabah_pengurus(cNasabahID, cTablePengurusTemp: String): Boolean;
var
  MySQLQuery1: TMyQuery;
  nRec: Integer;
  cTempSQL: string;
begin
  MySQLQuery1 := TMyQuery.Create(nil);
  MySQLQuery1.Connection := dm_bpr1.MyCon2;

   MyExecuteSQL('DELETE FROM '+cDb2+
      '.`nasabah_pengurus_pemilik` WHERE `nasabah_id`='+QuotedStr(cNasabahID));

   MySQLQuery1.SQL.Text :=
      'SELECT `nomor_identitas`, `nasabah_id`, `jenis_identitas`, `nama_pengurus`, `jenis_kelamin`, '+
      '    `alamat`, `kelurahan`, `kecamatan`, `kode_sandi_kab`, `kode_sandi_prov`, '+
      '    `kode_sandi_jabatan`, `pangsa_kepemilikan`, `status_pengurus`, `kode_kantor`, '+
      '    `telpon`, `hp`, `email`, `kode_pos` '+
      'FROM '+cTablePengurusTemp+
      ' WHERE `nasabah_id`='+QuotedStr(cNasabahID);
   if MySQLQuery1.Active then
      MySQLQuery1.Refresh
   else
      MySQLQuery1.Open;

   cTempSQL := '';
   nRec := 0;

   MySQLQuery1.First;
   while not MySQLQuery1.Eof do
     begin
        nRec := nRec + 1;
        cTempSQL := cTempSQL + IfThen(Empty(cTempSQL),'',', ') + '('+
          QuotedStr(MySQLQuery1.FieldByName('nomor_identitas').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('nasabah_id').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('jenis_identitas').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('nama_pengurus').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('jenis_kelamin').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('alamat').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kelurahan').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kecamatan').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kode_sandi_kab').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kode_sandi_prov').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kode_sandi_jabatan').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('pangsa_kepemilikan').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('status_pengurus').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kode_kantor').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('telpon').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('hp').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('email').AsString)+', '+
          QuotedStr(MySQLQuery1.FieldByName('kode_pos').AsString)+')';
        MySQLQuery1.Next;
      //jalankam jika sudah 5 row
       if not Empty(cTempSQL) and (nRec = 5) then
         begin
           MyExecuteSQL('INSERT INTO '+cDb2+
              '.`nasabah_pengurus_pemilik` (`nomor_identitas`, `nasabah_id`, `jenis_identitas`, `nama_pengurus`, `jenis_kelamin`, '+
              '    `alamat`, `kelurahan`, `kecamatan`, `kode_sandi_kab`, `kode_sandi_prov`, '+
              '    `kode_sandi_jabatan`, `pangsa_kepemilikan`, `status_pengurus`, `kode_kantor`, '+
              '    `telpon`, `hp`, `email`, `kode_pos`) VALUES '+
              cTempSQL);
           cTempSQL := '';
           nRec := 0;
         end;
     end;

   //jalankam sisanya
   if not Empty(cTempSQL) then
     MyExecuteSQL('INSERT INTO '+cDb2+
        '.`nasabah_pengurus_pemilik` (`nomor_identitas`, `nasabah_id`, `jenis_identitas`, `nama_pengurus`, `jenis_kelamin`, '+
        '    `alamat`, `kelurahan`, `kecamatan`, `kode_sandi_kab`, `kode_sandi_prov`, '+
        '    `kode_sandi_jabatan`, `pangsa_kepemilikan`, `status_pengurus`, `kode_kantor`, '+
        '    `telpon`, `hp`, `email`, `kode_pos`) VALUES '+
        cTempSQL);

  Result := True;
  MySQLQuery1.Close;
  MySQLQuery1.Free;
end;

function AbpGetSaldoAkhir(cNoRekening: string; dTgl1: TDate): Double;
var
  cTempSQL: string;
begin
  cTempSQL := SelectRow('SELECT SUM(IF(FLOOR(my_kode_trans/100)=1,kre_pokok,0)) - '+
    'SUM(IF(FLOOR(my_kode_trans/100)=3,kre_pokok,0)) AS hasil '+
    'FROM '+cDb2+'.abptrans '+
    'WHERE no_rekening='+QuotedStr(cNoRekening)+
    ' AND tgl_trans <= '+DateToStrSQL(dTgl1));
  if Empty(cTempSQL) then
    cTempSQL := '0';

  Result := StrToFloat(cTempSQL);
end;

function AbpSetSaldoAkhir(cNoRekening: string): Boolean;
var
  cTempSQL, cVerifikasi: string;
  nJml, nJml2, nSaldoPokok: Double;    //, nSaldoBunga
  dTglLunas: TDate;
begin
  //update saldo kredit
  cTempSQL := SelectRow('select count(*) as hasil from '+
    cDb2+'.abptrans where '+
    ' (floor(my_kode_trans/100)=1) and no_rekening='+QuotedStr(cNoRekening)+
    ' group by no_rekening');
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nJml := StrToFloat(cTempSQL);

  cTempSQL := SelectRow('select count(*) as hasil from '+
    cDb2+'.abptrans where '+
    ' (floor(my_kode_trans/100)=3) and no_rekening='+QuotedStr(cNoRekening)+
    ' group by no_rekening');
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nJml2 := StrToFloat(cTempSQL);

  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,kre_pokok,0)) - '+
    ' sum(if(floor(my_kode_trans/100)=3,kre_pokok,0)) as hasil from '+
    cDb2+'.abptrans where no_rekening='+
    QuotedStr(cNoRekening));
  if Empty(cTempSQL) then
    cTempSQL := '0';
  nSaldoPokok := StrToFloat(cTempSQL);

  cVerifikasi := SelectRow('select verifikasi as hasil from '+
    cDb2+'.abp where no_rekening='+
    QuotedStr(cNoRekening));

  if (nJml2 > 0) then
    begin
      dm_bpr1.MyQuery3.SQL.Text := 'SELECT MAX(tgl_trans) as tgl_lunas FROM '+cDb2+'.abptrans '+
        'WHERE (FLOOR(my_kode_trans/100)=3) AND no_rekening='+QuotedStr(cNoRekening);
      if dm_bpr1.MyQuery3.Active then
        dm_bpr1.MyQuery3.Refresh
      else
        dm_bpr1.MyQuery3.Open;

      if (dm_bpr1.MyQuery3.RecordCount > 0) then
        begin
          dTglLunas := dm_bpr1.MyQuery3.FieldByName('tgl_lunas').AsDateTime;
          if (nSaldoPokok = 0) and (cVerifikasi='1') and (nJml>0) and (nJml2>0) then
            MyExecuteSQL('UPDATE '+cDb2+'.abp SET '+
              ' tgl_lunas='+DateToStrSQL(dTglLunas)+' WHERE no_rekening='+QuotedStr(cNoRekening));
        end;
    end;
  
//  cTempSQL := SelectRow('select sum(if(floor(my_kode_trans/100)=1,kre_bunga,0)) - '+
//    ' sum(if(floor(my_kode_trans/100)=3,kre_bunga,0)) as hasil from '+
//    cDb2+'.abptrans where no_rekening='+
//    QuotedStr(cNoRekening));
//  if Empty(cTempSQL) then
//    cTempSQL := '0';
//  nSaldoBunga := StrToFloat(cTempSQL);

  MyExecuteSQL('UPDATE '+cDb2+'.abp SET '+
    ' saldo_akhir_pokok='+FloatToStr(nSaldoPokok)+
    //',  bunga_saldo_akhir='+FloatToStr(IfThen(GetMySysID('KRE','KRE_SETTING_MUNCUL_SALDO_AKHIR_BUNGA')='YA',nSaldoBunga,0))+
    ',  status='+IfThen(nSaldoPokok=0,IfThen(cVerifikasi='1','2','0'),'1')+' WHERE no_rekening='+
    QuotedStr(cNoRekening));

  if (nSaldoPokok > 0) and (cVerifikasi='1') and (nJml>0) then
    MyExecuteSQL('UPDATE '+cDb2+'.abp SET '+
      ' tgl_lunas=null WHERE no_rekening='+QuotedStr(cNoRekening));

  Result := True;
end;

function GetAccrualBMHDHarian(cNoRekening: string; dTglTransaksi:TDate; lFlag: Boolean = False): Double;
var
  cTempSQL, cTempSQL2: string;
  dTglCair: TDate;
  nTglTagih: Word;
begin
  dTglCair := DateOf(GetDateFValueByFKeyValue('abp','no_rekening',cNoRekening,'tgl_mulai'));
  cTempSQL := GetFValueByFKeyValue('abp','no_rekening',cNoRekening,'tgl_tagihan');
  if Empty(cTempSQL) then
    cTempSQL := IntToStr(DayOf(dTglCair));

  nTglTagih := StrToInt(cTempSQL);
  if (nTglTagih > DayOf(dTglTransaksi)) then
    nTglTagih := DayOf(dTglTransaksi);
    
  Result := 0;

  cTempSQL := SelectRow('SELECT bunga as hasil from '+
    cDb2+'.kretrans WHERE no_rekening='+
    QuotedStr(cNoRekening)+
    ' and tgl_trans <= '+DateToStrSQL(EndOfTheMonth(IncMonth(dTglTransaksi,1)))+
    ' and my_kode_trans=200 '+
    ' order by tgl_trans desc '+
    ' limit 1');
  if Empty(cTempSQL) then
    cTempSQL := '0';

  if (StrToFloat(cTempSQL) > 0) then
    begin
      if (DateOf(StartOfTheMonth(dTglTransaksi)) <= DateOf(dTglCair)) then
        begin
          if lFlag then
            Result := 0
          else
            Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr((DayOf(dTglTransaksi)-nTglTagih)+1)+') as hasil'));
            //Result := StrToFloat(SelectRow('select ('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr(DaysBetween(dTglTransaksi,dTglCair)+1)+' as hasil'));
        end
      else
        begin
          cTempSQL2 := SelectRow('SELECT sum(if(my_kode_trans=200,bunga,0))-sum(if(my_kode_trans=300,bunga,0)) as hasil from '+
            cDb2+'.kretrans WHERE no_rekening='+
            QuotedStr(cNoRekening)+
            ' and tgl_trans <= '+DateToStrSQL(dTglTransaksi)+
            ' and my_kode_trans in (200,300) ');
            //' order by tgl_trans desc '+
            //' limit 1');
          if Empty(cTempSQL2) then
            cTempSQL2 := '0';
          if (StrToFloat(cTempSQL2) <=0) then
            cTempSQL2 := '0';

          if (StrToFloat(cTempSQL) > 0) then
            begin
              if lFlag then
                begin
                  //Result := StrToFloat(SelectRow('select (('+cTempSQL2+'/'+IntToStr(DaysInMonth(IncMonth(dTglTransaksi,-1)))+')*'+IntToStr(1+DayOf(dTglCair)-DayOf(StartOfTheMonth(dTglTransaksi)))+') as hasil'))
                  if (StrToFloat(cTempSQL2) > 0) then
                    Result := StrToFloat(cTempSQL2)
                  else
                    Result := 0;
                end
              else
                Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr((DayOf(dTglTransaksi)-nTglTagih)+1)+') as hasil'));
                //Result := StrToFloat(SelectRow('select (('+cTempSQL+'/'+IntToStr(DaysInMonth(dTglTransaksi))+')*'+IntToStr((DayOf(dTglTransaksi)-DayOf(dTglCair))+1)+') as hasil'));
            end;
        end;
    end;
end;

function KirimSMS(cPesan, cNoTujuan: string): Boolean;
var
  cLink: String;
  Pesan: TStrings;
begin
  cLink := GetMyParameter('LINK_WEB_SMS','http://103.16.199.187/masking/send_post.php');

  Result := True;
  Pesan := TStringList.Create;
  if not Empty(cPesan) then
    begin
      try
        Pesan.Add('username='+'bprkmi');
        Pesan.Add('password='+'123456789');
        Pesan.Add('hp='+cNoTujuan);
        Pesan.Add('message='+cPesan);
        try
          if _IsConnectedToInternet then
              dm_bpr1.IdHTTP1.Post(cLink, Pesan); //tanpa isi data
        except
          on E: EIdException do
            begin
              Result := False;
            end;
        end;
      finally
        Pesan.Free;
      end;
    end;
end;

function UpdateJumlaPosKonsol(cTablePos, cUraian: string): Boolean;
var
  cTempSQL: string;
  nTempJumlah: Double;
begin
  Result := True;
  try
    cTempSQL := SelectRow('SELECT SUM(`jumlah`) AS total '+
      'FROM '+cTablePos+' '+
      'WHERE `sandi_kantor`<>'+QuotedStr('000')+
      '  AND `uraian`='+QuotedStr(cUraian));
    if Empty(cTempSQL) then
      cTempSQL := '0';
    nTempJumlah := StrToFloat(cTempSQL);

    MyExecuteSQL('UPDATE '+cTablePos+' '+
      'SET `jumlah`='+FloatToStr(nTempJumlah)+' '+
      'WHERE `sandi_kantor`='+QuotedStr('000')+
      ' AND `uraian`='+QuotedStr(cUraian));
  except
    on E: Exception do     //    on E: EIdException do
      begin
        Result := False;
      end;
  end;
end;

function ImportTXT2SQL(cFileName, cTableTarget: String; lAppend: Boolean = False): Boolean;
var
  MyQuery1: TMyQuery;
  cContentLine, cScriptSQL, cColValue: string;
  cContent: TStrings;
  nPosCol, nRow, nJmlMark: Integer;
begin
  Result := False;
  if not Empty(cFileName) then
    begin

      cContent := TStringList.Create;
      MyQuery1 := TMyQuery.Create(nil);
      try
        cContent.LoadFromFile(cFileName);

        MyQuery1.Connection := dm_bpr1.MyCon2;
        if not lAppend then
          MyExecuteSQL('TRUNCATE TABLE '+cTableTarget);

        //line 1 adalah header
        for nRow := 1 to cContent.Count - 1 do
          begin
            cContentLine := cContent.Strings[nRow];
            //Pesan(1, cContentLine);
            if not Empty(cContentLine) then
              begin
                //hanya untuk cek struktur
                MyQuery1.SQL.Text := 'SELECT * FROM '+cTableTarget+' LIMIT 1';

                if MyQuery1.Active then
                  MyQuery1.Refresh
                else
                  MyQuery1.Open;

                cScriptSQL := '';
                nJmlMark := GetArgCount(cContentLine, '|');
                for nPosCol := 1 to nJmlMark do
                  begin
                    cColValue := GetArg(cContentLine, nPosCol, '|');
                    if Empty(cColValue) and (MyQuery1.Fields.Fields[nPosCol-1].DataType in [ftInteger, ftFloat]) then
                      cColValue := '0';
                    if Empty(cColValue) and (MyQuery1.Fields.Fields[nPosCol-1].DataType in [ftDate]) then
                      cColValue := '1899-12-30';
                    cScriptSQL := cScriptSQL + IfThen(Empty(cScriptSQL), '', ',') + QuotedStr(cColValue);
                  end;
                MyExecuteSQL('INSERT INTO '+cTableTarget+' SELECT '+cScriptSQL);
              end;
          end;
        Result := True;
      finally
        cContent.Free;
        MyQuery1.Free;
      end;

    end;
///
end;

end.
