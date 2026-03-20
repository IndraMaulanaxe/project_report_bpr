unit GetSystemDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NewTemplate, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGroupBox, Vcl.ExtCtrls, Vcl.ComCtrls, cxLabel;

type
  Tfr_GetSystemDate = class(Tfr_new_template)
    tgl: TDateTimePicker;
    ket_tgl: TcxLabel;
    cxLabel1: TcxLabel;
    procedure tglChange(Sender: TObject);
    procedure btlb_SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_GetSystemDate: Tfr_GetSystemDate;
  cOtorisator, cNamaOtorisator : string;
  dTglChange : Tdate;
  ITglChange : Boolean;

implementation

uses MyLib, MyVAR, DateUtils;

{$R *.dfm}

procedure Tfr_GetSystemDate.btlb_SaveClick(Sender: TObject);
var
  cTemp, cCekTglServer: string;
  dTglTemp, dTglEOM, dTglServer: TDate;
  //lOtorisasi: Boolean;
begin
  inherited;
  btlb_Save.SetFocus; // agar berubah dulu tglnya

  if ITglChange then
  begin
    if not Pesan(3, 'Jalankan Proses Ganti Tanggal Data manjadi '+DateIndo(tgl.Date)+' ?') then
    Exit;
    dTglChange := tgl.Date
  end
  else
  begin
  if (GetMySysID('SYS','SYS_TRANSAKSI_SABTU','YA')='TIDAK') then
    begin
      if DayOfWeek(tgl.Date)=7 then  //sabtu
        begin
          Pesan(2,'Tanggal '+DateIndo(tgl.Date)+' merupakan hari sabtu...!');
          Exit;
        end;
    end;

  if (GetMySysID('SYS','SYS_TRANSAKSI_MINGGU','TIDAK')='TIDAK') then
    begin
      if DayOfWeek(tgl.Date)=1 then  //minggu
        begin
          Pesan(2,'Tanggal '+DateIndo(tgl.Date)+' merupakan hari minggu...!');
          Exit;
        end;
    end;

  if IsHariLibur(tgl.Date) then
    begin
      cTemp := SelectRow('SELECT keterangan FROM '+cDb2+'.hari_libur '+
        'WHERE tgl='+DateToStrSQL(tgl.Date));
      Pesan(2,'Tanggal '+DateIndo(tgl.Date)+' merupakan hari libur '+cTemp+'...!');
      Exit;
    end;

//  cXKodeCabang := SelectRow('SELECT kode_cabang '+
//    'FROM '+cDb2+'.app_kode_kantor '+
//    'WHERE kode_kantor='+QuotedStr(cCabangID));
  cCekTglServer := SelectRow('SELECT CONCAT('+cDb2+'.`get_tgl`(),"")');
  dTglServer := StrToDate(SubStr(cCekTglServer,6,2)+'/'+SubStr(cCekTglServer,9,2)+'/'+LeftStr(cCekTglServer,4));

//  cTemp := GetMySysID('SYS','SYS_TANGGAL_TUTUP_TRANSAKSI'+cKodeCabang,'30/09/2013');
//  dTglTemp := StrToDate(SubStr(cTemp,4,2)+'/'+LeftStr(cTemp,2)+'/'+SubStr(cTemp,7,4));
  dTglTemp := GetTglEOD(cKodeCabang);
  dTglEOM := GetTglEOM(cKodeCabang);
  cTemp := GetMySysID('SYS','SYS_AKTIF_EOM_OTOMATIS','TIDAK');
  lBackDate := False;

  if (DateOf(EndOfTheMonth(IncMonth(tgl.Date,-1))) > DateOf(dTglEOM)) and (Trim(cTemp)='YA') then
      begin
        Pesan(2,'Maaf, System belum melakukan Proses EOM Periode : '+
          MonthIndo(EndOfTheMonth(IncMonth(tgl.Date,-1)))+'-'+IntToStr(YearOf(EndOfTheMonth(IncMonth(tgl.Date,-1))))+'...!'+#13#10+
          'HARAP tunggu notifikasi selanjutnya...!');
        UpdateUserLog(Self.Name ,True, 'Login Before EOM '+
          DateIndo(DateOf(EndOfTheMonth(IncMonth(tgl.Date,-1))))+
          ' Tanggal Server '+DateIndo(dTglServer));
        lBackDate := True;
        Exit;
      end;

  cTemp := GetMySysID('SYS','SYS_AKTIF_TUTUP_TRANSAKSI');
  if (DateOf(tgl.Date) < DateOf(dTglServer)) and (DateOf(tgl.Date) = DateOf(IncDay(dTglTemp))) and (Trim(cTemp)='YA') then
      begin
        Pesan(2,'Tanggal berbeda dengan Tanggal SERVER ('+DateIndo(dTglServer)+')...!'+#13#10+
          'Jika anda User TELLER, HARAP tidak melakukan transaksi sebelum proses EOD selesai...!');
        UpdateUserLog(Self.Name ,True, 'Login Before EOD '+DateIndo(tgl.Date)+
        ' Tanggal Server '+DateIndo(dTglServer));
      end;

  if (DateToStrSQL(tgl.Date) <> DateToStrSQL(IncDay(dTglTemp))) and (Trim(cTemp)='YA') then
      begin
        if (DateToStrSQL(tgl.Date) > DateToStrSQL(IncDay(dTglTemp))) then
          begin
            Pesan(2,'Tanggal melebihi periode akuntansi...!'+#13#10+
              'Tanggal EOD Terakhir Tanggal '+DateIndo(dTglTemp)+#13#10+
              'Tanggal EOM Terakhir Tanggal '+DateIndo(dTglEOM));
            Exit;
          end;

        Pesan(2,'Tanggal diluar periode akuntansi...!'+#13#10+
          'Tanggal EOD Terakhir Tanggal '+DateIndo(dTglTemp)+#13#10+
          'Tanggal EOM Terakhir Tanggal '+DateIndo(dTglEOM));

        lBackDate := True;
        UpdateUserLog(Self.Name ,True, 'Login Otorisasi Backdate '+
          'Tgl System '+DateIndo(tgl.Date)+
          'User ID Otorisator '+cOtorisator);
      end
  else
    UpdateUserLog(Self.Name ,True, 'Login Tgl System Sukses : '+cNamaUser+
      ' Tgl System : '+DateIndo(tgl.Date)+
      ' IP : '+GetLocalIP+
      ' OS User : '+UpperCase(GetLoginName));
    dTglSystem := tgl.Date;
  end;

  Tag := 2;
  Close;

end;

procedure Tfr_GetSystemDate.FormCreate(Sender: TObject);
begin
  inherited;
  tgl.Date := Date;
  //StrToDate(SelectRow('select DATE_FORMAT(get_tgl(), "%m/%d/%Y") as hasil'));
  tglChange(Sender);
end;

procedure Tfr_GetSystemDate.tglChange(Sender: TObject);
var
  cTemp: string;
begin
  inherited;
  ket_tgl.Caption := HariIndo(tgl.Date)+#13#10+DateIndo(tgl.Date);

  cTemp := '';
  if (GetMyParameter('SYS_TRANSAKSI_SABTU','YA')='TIDAK') then
    begin
      if DayOfWeek(tgl.Date)=7 then  //sabtu
        cTemp := 'HARI SABTU LIBUR KERJA';
      if not Empty(cTemp) then
        ket_tgl.Caption := ket_tgl.Caption+#13#10+UpperCase(cTemp);
    end;

  cTemp := '';
  if (GetMyParameter('SYS_TRANSAKSI_MINGGU','TIDAK')='TIDAK') then
    begin
      if DayOfWeek(tgl.Date)=1 then  //minggu
        cTemp := 'HARI MINGGU LIBUR KERJA';
      if not Empty(cTemp) then
        ket_tgl.Caption := ket_tgl.Caption+#13#10+UpperCase(cTemp);
    end;

  if (SelectRow('select count(*) as hasil from information_schema.tables where '+
      ' table_schema='+QuotedStr(cDb2)+
      ' and table_name='+QuotedStr('hari_libur')) <> '0') then
    begin
      cTemp := SelectRow('SELECT keterangan FROM '+cDb2+'.hari_libur '+
        'WHERE tgl='+DateToStrSQL(tgl.Date));
      if not Empty(cTemp) then
        ket_tgl.Caption := ket_tgl.Caption+#13#10+UpperCase(cTemp);
    end;
end;

end.
