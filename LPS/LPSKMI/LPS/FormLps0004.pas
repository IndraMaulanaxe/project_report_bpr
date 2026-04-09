unit FormLps0004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Template, sSkinProvider, StdCtrls, Buttons, ExtCtrls, sPanel,
  sBitBtn, 
  DB, MemDS, DBAccess, MyAccess, Grids, DBGrids, StrUtils;

type
  Tfr_FormLps0004 = class(Tfr_template)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    MyQDaftarKantor: TMyQuery;
    DBGrid1: TDBGrid;
    dsMyQOrgan: TMyDataSource;
    bt_tambah: TsBitBtn;
    bt_edit: TsBitBtn;
    bt_delete: TsBitBtn;
    bt_close: TsBitBtn;
    bt_import: TsBitBtn;
    MyQDaftarKantorflag_detail: TStringField;
    MyQDaftarKantorsandi_kantor: TStringField;
    MyQDaftarKantornama_kantor: TStringField;
    MyQDaftarKantorkoordinat_kantor: TStringField;
    MyQDaftarKantoralamat_kantor: TStringField;
    MyQDaftarKantoralamat_kecamatan: TStringField;
    MyQDaftarKantoralamat_kota: TStringField;
    MyQDaftarKantoralamat_kode_pos: TStringField;
    MyQDaftarKantornama_pimpinan: TStringField;
    MyQDaftarKantorno_telp: TStringField;
    MyQDaftarKantorjml_tetap_s3: TFloatField;
    MyQDaftarKantorjml_tetap_s2: TFloatField;
    MyQDaftarKantorjml_tetap_s1: TFloatField;
    MyQDaftarKantorjml_tetap_d3: TFloatField;
    MyQDaftarKantorjml_tetap_slta: TFloatField;
    MyQDaftarKantorjml_tetap_lainnya: TFloatField;
    MyQDaftarKantorjml_tidaktetap_s3: TFloatField;
    MyQDaftarKantorjml_tidaktetap_s2: TFloatField;
    MyQDaftarKantorjml_tidaktetap_s1: TFloatField;
    MyQDaftarKantorjml_tidaktetap_d3: TFloatField;
    MyQDaftarKantorjml_tidaktetap_slta: TFloatField;
    MyQDaftarKantorjml_tidaktetap_lainnya: TFloatField;
    MyQDaftarKantorjml_kantor_kas: TFloatField;
    MyQDaftarKantorstatus_kepemilikan_gedung: TStringField;
    MyQDaftarKantorjml_kas_mobil_terapung: TFloatField;
    MyQDaftarKantorjml_edc_sendiri: TFloatField;
    MyQDaftarKantorjml_edc_bu: TFloatField;
    MyQDaftarKantorjml_edc_lain: TFloatField;
    MyQDaftarKantorjml_atm_sendiri: TFloatField;
    MyQDaftarKantorjml_atm_lain: TFloatField;
    MyQImport: TMyQuery;
    MyQImportkode_kantor: TStringField;
    MyQImportkode_cabang: TStringField;
    MyQImportnama_kantor: TStringField;
    MyQImportnama_area_kerja: TStringField;
    MyQImportalamat_kantor: TStringField;
    MyQImportkota_kantor: TStringField;
    MyQImportnama_pimpinan: TStringField;
    MyQImportjabatan_pimpinan: TStringField;
    MyQImportsandi_bank: TStringField;
    MyQImportsandi_cabang: TStringField;
    MyQImporttlp: TStringField;
    MyQImportfax: TStringField;
    MyQImportlatitude: TFloatField;
    MyQImportlongitude: TFloatField;
    MyQImportsandi_kota_kab: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_deleteClick(Sender: TObject);
    procedure bt_closeClick(Sender: TObject);
    procedure bt_editClick(Sender: TObject);
    procedure bt_tambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bt_importClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_FormLps0004: Tfr_FormLps0004;
  dTglProses0004: TDate;

implementation

uses OgiesoftVAR, MyOgiLib, dm_bpr, EntryFormLps0004;

{$R *.dfm}

procedure Tfr_FormLps0004.bt_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure Tfr_FormLps0004.bt_deleteClick(Sender: TObject);
begin
  inherited;
  if (MyQDaftarKantor.RecordCount=0) or (not MyQDaftarKantor.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

  if Pesan(3,'Anda sudah yakin menghapus data ini ?') then
    begin

      UpdateUserLog(Self.Name ,True, 'Hapus Sandi Kantor='+MyQDaftarKantorsandi_kantor.Text+
      ' Nama Kantor='+MyQDaftarKantornama_kantor.Text);
      try
        MyExecuteSQL('DELETE FROM '+cDb2+'.lps_f0004 WHERE sandi_kantor='+
          QuotedStr(MyQDaftarKantorsandi_kantor.Text));
      except
        on E: EDatabaseError do
          begin
            //Pesan(2,SubStr(E.Message,At());
          end;
      end;

      if MyQDaftarKantor.Active then
        MyQDaftarKantor.Refresh
      else
        MyQDaftarKantor.Open;
    end;
end;

procedure Tfr_FormLps0004.bt_editClick(Sender: TObject);
begin
  inherited;
  if (MyQDaftarKantor.RecordCount=0) or (not MyQDaftarKantor.Active) then
    begin
      Pesan(2,'Maaf, Tdak ada data...!');
      Exit;
    end;

  if Application.FindComponent('fr_EntryFormLps0004') = nil then
    Application.CreateForm(Tfr_EntryFormLps0004, fr_EntryFormLps0004);
  fr_EntryFormLps0004.MyQTemp.MacroByName('WHERE').Value := 'WHERE sandi_kantor='+QuotedStr(MyQDaftarKantorsandi_kantor.Text);
  if fr_EntryFormLps0004.MyQTemp.Active then
    fr_EntryFormLps0004.MyQTemp.Refresh
  else
    fr_EntryFormLps0004.MyQTemp.Open;

  with fr_EntryFormLps0004 do
    begin
      JenisTrans004 := '2';
      //size
      sandi_kantor.MaxLength := MyQTempsandi_kantor.Size;
      nama_kantor.MaxLength := MyQTempnama_kantor.Size;
      koordinat_kantor.MaxLength := MyQTempkoordinat_kantor.Size;
      alamat_kantor.MaxLength := MyQTempalamat_kantor.Size;
      desa_kecamatan.MaxLength := MyQTempalamat_kecamatan.Size;
      sandi_kota_kab.MaxLength := MyQTempalamat_kota.Size;
      kode_pos.MaxLength := MyQTempalamat_kode_pos.Size;
      nama_pimpinan.MaxLength := MyQTempnama_pimpinan.Size;
      no_telp.MaxLength := MyQTempno_telp.Size;
      sandi_kepemilikan_gedung.MaxLength := MyQTempstatus_kepemilikan_gedung.Size;

      nama_pihak_bekerjasama.MaxLength := MyQTempnama_pihak_kerjasama_atm.Size;
      sandi_ket_data_kantor.MaxLength := MyQTempket_data_kantor.Size;
      no_surat_persetujuan.MaxLength := MyQTempno_persetujuan_ojk.Size;
      alamat_sebelumnya.MaxLength := MyQTempalamat_sebelumnya.Size;

      //assignment
      sandi_kantor.Text := MyQTempsandi_kantor.AsString;
      nama_kantor.Text := MyQTempnama_kantor.AsString;
      koordinat_kantor.Text := MyQTempkoordinat_kantor.AsString;
      alamat_kantor.Text := MyQTempalamat_kantor.AsString;
      desa_kecamatan.Text := MyQTempalamat_kecamatan.AsString;
      sandi_kota_kab.Text := MyQTempalamat_kota.AsString;
      sandi_kota_kabExit(Sender);
      kode_pos.Text := MyQTempalamat_kode_pos.AsString;
      nama_pimpinan.Text := MyQTempnama_pimpinan.AsString;
      no_telp.Text := MyQTempno_telp.AsString;

      jml_karyawan_tetap_s3.Value := MyQTempjml_tetap_s3.Value;
      jml_karyawan_tetap_s2.Value := MyQTempjml_tetap_s2.Value;
      jml_karyawan_tetap_s1.Value := MyQTempjml_tetap_s1.Value;
      jml_karyawan_tetap_d3.Value := MyQTempjml_tetap_d3.Value;
      jml_karyawan_tetap_slta.Value := MyQTempjml_tetap_slta.Value;
      jml_karyawan_tetap_lainnya.Value := MyQTempjml_tetap_lainnya.Value;

      jml_karyawan_tidak_tetap_s3.Value := MyQTempjml_tidaktetap_s3.Value;
      jml_karyawan_tidak_tetap_s2.Value := MyQTempjml_tidaktetap_s2.Value;
      jml_karyawan_tidak_tetap_s1.Value := MyQTempjml_tidaktetap_s1.Value;
      jml_karyawan_tidak_tetap_d3.Value := MyQTempjml_tidaktetap_d3.Value;
      jml_karyawan_tidak_tetap_slta.Value := MyQTempjml_tidaktetap_slta.Value;
      jml_karyawan_tidak_tetap_lainnya.Value := MyQTempjml_tidaktetap_lainnya.Value;

      jml_kantor_kas.Value := MyQTempjml_kantor_kas.Value;
      jml_kantor_kas_mobil_apung.Value := MyQTempjml_kas_mobil_terapung.Value;
      jml_edc_sendiri.Value := MyQTempjml_edc_sendiri.Value;
      jml_edc_bu.Value := MyQTempjml_edc_bu.Value;
      jml_edc_lain.Value := MyQTempjml_edc_lain.Value;
      sandi_kepemilikan_gedung.Text := MyQTempstatus_kepemilikan_gedung.AsString;
      sandi_kepemilikan_gedungExit(Sender);
      jml_atm_sendiri.Value := MyQTempjml_atm_sendiri.Value;

      if (sandi_kantor.Text='001') then
        begin
          jml_atm_kerjasama.ReadOnly := False;
          nama_pihak_bekerjasama.ReadOnly := False;
          jml_atm_kerjasama.Value := MyQTempjml_atm_lain.Value;
          nama_pihak_bekerjasama.Text := MyQTempnama_pihak_kerjasama_atm.AsString;
          jml_atm_kerjasamaExit(Sender);
        end
      else
        begin
          jml_atm_kerjasama.ReadOnly := True;
          nama_pihak_bekerjasama.ReadOnly := True;
          jml_atm_kerjasama.Value := 0;
          nama_pihak_bekerjasama.Text := '';
          jml_atm_kerjasamaExit(Sender);
        end;

      sandi_ket_data_kantor.Text := MyQTempket_data_kantor.AsString;
      sandi_ket_data_kantorExit(Sender);
      no_surat_persetujuan.Text := MyQTempno_persetujuan_ojk.AsString;
      if Empty(no_surat_persetujuan.Text) then
        tgl_surat_persetujuan.Date := dTglSystem
      else
        tgl_surat_persetujuan.Date := MyQTemptgl_persetujuan_ojk.Value;
      alamat_sebelumnya.Text := MyQTempalamat_sebelumnya.AsString;
     // if Empty(alamat_sebelumnya.Text) then
      //  tgl_pelaksanaan.Date := dTglSystem
     // else
        tgl_pelaksanaan.Date := MyQTemptgl_pelaksanaan.Value;

      jml_tetap_pemasaran.Value :=  MyQTempjml_tetap_pemasaran.Value;
      jml_tetap_pelayanan.Value := MyQTempjml_tetap_pelayanan.Value;
      jml_tetap_pplainnya.Value := MyQTempjml_tetap_pplainnya.Value;
      jml_tidaktetap_pemasaran.Value := MyQTempjml_tidaktetap_pemasaran.Value;
      jml_tidaktetap_pelayanan.Value := MyQTempjml_tidaktetap_pelayanan.Value;
      jml_tidaktetap_pplainnya.Value := MyQTempjml_tidaktetap_pplainnya.Value;
      jml_jk_pria.Value := MyQTempjml_jk_pria.Value;
      jml_jk_wanita.Value :=  MyQTempjml_jk_wanita.Value;
      jml_usia_kurang_25.Value := MyQTempjml_usia_kurang_25.Value;
      jml_usia_lebih_25.Value :=  MyQTempjml_usia_lebih_25.Value;
      jml_usia_lebih_35.Value :=  MyQTempjml_usia_lebih_35.Value;
      jml_usia_lebih_45.Value :=  MyQTempjml_usia_lebih_45.Value;
      jml_usia_lebih_55.Value :=  MyQTempjml_usia_lebih_55.Value;
      jml_skk.Value :=  MyQTempjml_skk.Value;
    end;
  fr_EntryFormLps0004.Tag := 0;
  fr_EntryFormLps0004.ShowModal;
  if fr_EntryFormLps0004.Tag=2 then
    begin
      with fr_EntryFormLps0004 do
        begin
          MyExecuteSQL('UPDATE '+cDb2+'.lps_f0004 '+
            'SET `flag_detail`='+QuotedStr('D01')+
            ', `sandi_kantor`='+QuotedStr(sandi_kantor.Text)+
            ', `nama_kantor`='+QuotedStr(nama_kantor.Text)+
            ', `koordinat_kantor`='+QuotedStr(koordinat_kantor.Text)+
            ', `alamat_kantor`='+QuotedStr(alamat_kantor.Text)+
            ', `alamat_kecamatan`='+QuotedStr(desa_kecamatan.Text)+
            ', `alamat_kota`='+QuotedStr(sandi_kota_kab.Text)+
            ', `alamat_kode_pos`='+QuotedStr(kode_pos.Text)+
            ', `nama_pimpinan`='+QuotedStr(nama_pimpinan.Text)+
            ', `no_telp`='+QuotedStr(no_telp.Text)+
            ', `jml_tetap_s3`='+FloatToStr(jml_karyawan_tetap_s3.Value)+
            ', `jml_tetap_s2`='+FloatToStr(jml_karyawan_tetap_s2.Value)+
            ', `jml_tetap_s1`='+FloatToStr(jml_karyawan_tetap_s1.Value)+
            ', `jml_tetap_d3`='+FloatToStr(jml_karyawan_tetap_d3.Value)+
            ', `jml_tetap_slta`='+FloatToStr(jml_karyawan_tetap_slta.Value)+
            ', `jml_tetap_lainnya`='+FloatToStr(jml_karyawan_tetap_lainnya.Value)+
            ', `jml_tidaktetap_s3`='+FloatToStr(jml_karyawan_tidak_tetap_s3.Value)+
            ', `jml_tidaktetap_s2`='+FloatToStr(jml_karyawan_tidak_tetap_s2.Value)+
            ', `jml_tidaktetap_s1`='+FloatToStr(jml_karyawan_tidak_tetap_s1.Value)+
            ', `jml_tidaktetap_d3`='+FloatToStr(jml_karyawan_tidak_tetap_d3.Value)+
            ', `jml_tidaktetap_slta`='+FloatToStr(jml_karyawan_tidak_tetap_slta.Value)+
            ', `jml_tidaktetap_lainnya`='+FloatToStr(jml_karyawan_tidak_tetap_lainnya.Value)+
            ', `jml_kantor_kas`='+FloatToStr(jml_kantor_kas.Value)+
            ', `status_kepemilikan_gedung`='+QuotedStr(sandi_kepemilikan_gedung.Text)+
            ', `jml_kas_mobil_terapung`='+FloatToStr(jml_kantor_kas_mobil_apung.Value)+
            ', `jml_edc_sendiri`='+FloatToStr(jml_edc_sendiri.Value)+
            ', `jml_edc_bu`='+FloatToStr(jml_edc_bu.Value)+
            ', `jml_edc_lain`='+FloatToStr(jml_edc_lain.Value)+
            ', `jml_atm_sendiri`='+FloatToStr(jml_atm_sendiri.Value)+
            ', `jml_atm_lain`='+FloatToStr(jml_atm_kerjasama.Value)+
            ', `nama_pihak_kerjasama_atm`='+QuotedStr(nama_pihak_bekerjasama.Text)+
            ', `ket_data_kantor`='+QuotedStr(sandi_ket_data_kantor.Text)+
            ', `no_persetujuan_ojk`='+QuotedStr(no_surat_persetujuan.Text)+
            ', `tgl_persetujuan_ojk`='+DateToStrSQL(tgl_surat_persetujuan.Date)+
            ', `alamat_sebelumnya`='+QuotedStr(alamat_sebelumnya.Text)+
            ', `tgl_pelaksanaan`='+DateToStrSQL(tgl_pelaksanaan.Date)+
            ', jml_tetap_pemasaran='+FloatToStr(jml_tetap_pemasaran.Value)+
            ', jml_tetap_pelayanan='+FloatToStr(jml_tetap_pelayanan.Value)+
            ', jml_tetap_pplainnya='+FloatToStr(jml_tetap_pplainnya.Value)+
            ', jml_tidaktetap_pemasaran='+FloatToStr(jml_tidaktetap_pemasaran.Value)+
            ', jml_tidaktetap_pelayanan='+FloatToStr(jml_tidaktetap_pelayanan.Value)+
            ', jml_tidaktetap_pplainnya='+FloatToStr(jml_tidaktetap_pplainnya.Value)+
            ', jml_jk_pria='+FloatToStr(jml_jk_pria.Value)+
            ', jml_jk_wanita='+FloatToStr(jml_jk_wanita.Value)+
            ', jml_usia_kurang_25='+FloatToStr(jml_usia_kurang_25.Value)+
            ', jml_usia_lebih_25='+FloatToStr(jml_usia_lebih_25.Value)+
            ', jml_usia_lebih_35='+FloatToStr(jml_usia_lebih_35.Value)+
            ', jml_usia_lebih_45='+FloatToStr(jml_usia_lebih_45.Value)+
            ', jml_usia_lebih_55='+FloatToStr(jml_usia_lebih_55.Value)+
            ', jml_skk='+FloatToStr(jml_skk.Value)+
            ' WHERE `sandi_kantor`='+QuotedStr(MyQTempsandi_kantor.Text));
        end;
      if MyQDaftarKantor.Active then
        MyQDaftarKantor.Refresh
      else
        MyQDaftarKantor.Open;
    end;

  fr_EntryFormLps0004.Free;
  fr_EntryFormLps0004 := nil;
end;

procedure Tfr_FormLps0004.bt_importClick(Sender: TObject);
var
  cJmlKas: string;
begin
  inherited;
  if Pesan(3, 'Proses Import Data dari Database Core ?') then
    begin
      fr_FormLps0004.MyQImport.MacroByName('WHERE').Value := 'WHERE kode_kantor=kode_cabang '+
        ' AND (tgl_mulai IS NULL OR tgl_mulai <= '+DateToStrSQL(dTglProses0004)+')';

      if MyQImport.Active then
        MyQImport.Refresh
      else
        MyQImport.Open;

      while not MyQImport.Eof do
        begin
          cJmlKas := SelectRow('SELECT COUNT(*)-1 AS jml FROM '+
          cDb2+'.app_kode_kantor WHERE kode_cabang='+QuotedStr(MyQImportkode_cabang.Text));

          MyExecuteSQL('INSERT INTO '+cDb2+'.lps_f0004 '+
            '(`flag_detail`, `sandi_kantor`, `nama_kantor`, `koordinat_kantor`, '+
            '`alamat_kantor`, `alamat_kecamatan`, `alamat_kota`, `alamat_kode_pos`, '+
            '`nama_pimpinan`, `no_telp`, `jml_kantor_kas`, `status_kepemilikan_gedung`) VALUES ('+
            QuotedStr('D01')+','+
            QuotedStr(MyQImportsandi_cabang.Text)+','+
            QuotedStr(LeftStr(MyQImportnama_kantor.Text, MyQDaftarKantornama_kantor.Size))+', '+
            QuotedStr('')+', '+
            QuotedStr(LeftStr(MyQImportalamat_kantor.Text, MyQDaftarKantoralamat_kantor.Size))+', '+
            QuotedStr('')+', '+
            QuotedStr(MyQImportsandi_kota_kab.Text)+', '+
            QuotedStr('')+', '+
            QuotedStr(LeftStr(MyQImportnama_pimpinan.Text, MyQDaftarKantornama_pimpinan.Size))+', '+
            QuotedStr(LeftStr(MyQImporttlp.Text, MyQDaftarKantorno_telp.Size))+', '+
            cJmlKas+', '+
            QuotedStr('')+
            ') ON DUPLICATE KEY UPDATE `nama_kantor`='+QuotedStr(LeftStr(MyQImportnama_kantor.Text, MyQDaftarKantornama_kantor.Size))+
            ', `alamat_kantor`='+QuotedStr(LeftStr(MyQImportalamat_kantor.Text, MyQDaftarKantoralamat_kantor.Size))+
            ', `alamat_kota`='+QuotedStr(MyQImportsandi_kota_kab.Text)+
            ', `nama_pimpinan`='+QuotedStr(LeftStr(MyQImportnama_pimpinan.Text, MyQDaftarKantornama_pimpinan.Size))+
            ', `no_telp`='+QuotedStr(LeftStr(MyQImporttlp.Text, MyQDaftarKantorno_telp.Size))+
            ', `jml_kantor_kas`='+cJmlKas);
          MyQImport.Next;
          Application.ProcessMessages;
        end;
    end;

  if MyQDaftarKantor.Active then
    MyQDaftarKantor.Refresh
  else
    MyQDaftarKantor.Open;
end;

procedure Tfr_FormLps0004.bt_tambahClick(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('fr_EntryFormLps0004') = nil then
    Application.CreateForm(Tfr_EntryFormLps0004, fr_EntryFormLps0004);
  fr_EntryFormLps0004.MyQTemp.MacroByName('WHERE').Value := 'WHERE sandi_kantor='+QuotedStr(MyQDaftarKantorsandi_kantor.Text);
  if fr_EntryFormLps0004.MyQTemp.Active then
    fr_EntryFormLps0004.MyQTemp.Refresh
  else
    fr_EntryFormLps0004.MyQTemp.Open;

  with fr_EntryFormLps0004 do
    begin
      JenisTrans004 := '1';
      //size
      sandi_kantor.MaxLength := MyQTempsandi_kantor.Size;
      nama_kantor.MaxLength := MyQTempnama_kantor.Size;
      koordinat_kantor.MaxLength := MyQTempkoordinat_kantor.Size;
      alamat_kantor.MaxLength := MyQTempalamat_kantor.Size;
      desa_kecamatan.MaxLength := MyQTempalamat_kecamatan.Size;
      sandi_kota_kab.MaxLength := MyQTempalamat_kota.Size;
      kode_pos.MaxLength := MyQTempalamat_kode_pos.Size;
      nama_pimpinan.MaxLength := MyQTempnama_pimpinan.Size;
      no_telp.MaxLength := MyQTempno_telp.Size;
      sandi_kepemilikan_gedung.MaxLength := MyQTempstatus_kepemilikan_gedung.Size;

      nama_pihak_bekerjasama.MaxLength := MyQTempnama_pihak_kerjasama_atm.Size;
      sandi_ket_data_kantor.MaxLength := MyQTempket_data_kantor.Size;
      no_surat_persetujuan.MaxLength := MyQTempno_persetujuan_ojk.Size;
      alamat_sebelumnya.MaxLength := MyQTempalamat_sebelumnya.Size;

      //assignment
      sandi_kantor.Text := '';
      nama_kantor.Text := '';
      koordinat_kantor.Text := '';
      alamat_kantor.Text := '';
      desa_kecamatan.Text := '';
      sandi_kota_kab.Text := '';
      nm_sandi_kota_kab.Text := '';
      kode_pos.Text := '';
      nama_pimpinan.Text := '';
      no_telp.Text := '';

      jml_karyawan_tetap_s3.Value := 0;
      jml_karyawan_tetap_s2.Value := 0;
      jml_karyawan_tetap_s1.Value := 0;
      jml_karyawan_tetap_d3.Value := 0;
      jml_karyawan_tetap_slta.Value := 0;
      jml_karyawan_tetap_lainnya.Value := 0;

      jml_karyawan_tidak_tetap_s3.Value := 0;
      jml_karyawan_tidak_tetap_s2.Value := 0;
      jml_karyawan_tidak_tetap_s1.Value := 0;
      jml_karyawan_tidak_tetap_d3.Value := 0;
      jml_karyawan_tidak_tetap_slta.Value := 0;
      jml_karyawan_tidak_tetap_lainnya.Value := 0;

      jml_kantor_kas.Value := 0;
      jml_kantor_kas_mobil_apung.Value := 0;
      jml_edc_sendiri.Value := 0;
      jml_edc_bu.Value := 0;
      jml_edc_lain.Value := 0;
      sandi_kepemilikan_gedung.Text := '';
      nm_sandi_kepemilikan_gedung.Text := '';
      jml_atm_sendiri.Value := 0;
      jml_atm_kerjasama.Value := 0;
      nama_pihak_bekerjasama.Text := '';

      if (sandi_kantor.Text='001') then
        begin
          jml_atm_kerjasama.ReadOnly := False;
          nama_pihak_bekerjasama.ReadOnly := False;
        end
      else
        begin
          jml_atm_kerjasama.ReadOnly := True;
          nama_pihak_bekerjasama.ReadOnly := True;
        end;

      sandi_ket_data_kantor.Text := '1';
      sandi_ket_data_kantorExit(Sender);
      no_surat_persetujuan.Text := '';
      tgl_surat_persetujuan.Date := dTglSystem;
      alamat_sebelumnya.Text := '';
      tgl_pelaksanaan.Date := dTglSystem;

      jml_tetap_pemasaran.Value := 0;
      jml_tetap_pelayanan.Value := 0;
      jml_tetap_pplainnya.Value := 0;
      jml_tidaktetap_pemasaran.Value := 0;
      jml_tidaktetap_pelayanan.Value := 0;
      jml_tidaktetap_pplainnya.Value := 0;
      jml_jk_pria.Value := 0;
      jml_jk_wanita.Value := 0;
      jml_usia_kurang_25.Value := 0;
      jml_usia_lebih_25.Value := 0;
      jml_usia_lebih_35.Value := 0;
      jml_usia_lebih_45.Value := 0;
      jml_usia_lebih_55.Value := 0;
      jml_skk.Value := 0;

    end;
  fr_EntryFormLps0004.Tag := 0;
  fr_EntryFormLps0004.ShowModal;
  if fr_EntryFormLps0004.Tag=2 then
    begin
      with fr_EntryFormLps0004 do
        begin
          MyExecuteSQL('INSERT INTO '+cDb2+'.lps_f0004 '+
            '(`flag_detail`, `sandi_kantor`, `nama_kantor`, `koordinat_kantor`, '+
            '`alamat_kantor`, `alamat_kecamatan`, `alamat_kota`, `alamat_kode_pos`, '+
            '`nama_pimpinan`, `no_telp`, `jml_tetap_s3`, `jml_tetap_s2`, '+
            '`jml_tetap_s1`, `jml_tetap_d3`, `jml_tetap_slta`, `jml_tetap_lainnya`, '+
            '`jml_tidaktetap_s3`, `jml_tidaktetap_s2`, `jml_tidaktetap_s1`, '+
            '`jml_tidaktetap_d3`, `jml_tidaktetap_slta`, `jml_tidaktetap_lainnya`, '+
            '`jml_kantor_kas`, `status_kepemilikan_gedung`, `jml_kas_mobil_terapung`, '+
            '`jml_edc_sendiri`, `jml_edc_bu`, `jml_edc_lain`, `jml_atm_sendiri`, `jml_atm_lain`, '+
            '`nama_pihak_kerjasama_atm`, `ket_data_kantor`, `no_persetujuan_ojk`, '+
            '`tgl_persetujuan_ojk`, `alamat_sebelumnya`, `tgl_pelaksanaan`, '+
            '`jml_tetap_pemasaran`, `jml_tetap_pelayanan`, `jml_tetap_pplainnya`, '+
            '`jml_tidaktetap_pemasaran`, `jml_tidaktetap_pelayanan`, `jml_tidaktetap_pplainnya`, '+
            '`jml_jk_pria`, `jml_jk_wanita`, `jml_usia_kurang_25`, `jml_usia_lebih_25`, '+
            '`jml_usia_lebih_35`, `jml_usia_lebih_45`, `jml_usia_lebih_55`, `jml_skk` ) VALUES ('+
            QuotedStr('D01')+','+
            QuotedStr(sandi_kantor.Text)+','+
            QuotedStr(nama_kantor.Text)+', '+
            QuotedStr(koordinat_kantor.Text)+', '+
            QuotedStr(alamat_kantor.Text)+', '+
            QuotedStr(desa_kecamatan.Text)+', '+
            QuotedStr(sandi_kota_kab.Text)+', '+
            QuotedStr(kode_pos.Text)+', '+
            QuotedStr(nama_pimpinan.Text)+', '+
            QuotedStr(no_telp.Text)+', '+
            FloatToStr(jml_karyawan_tetap_s3.Value)+', '+
            FloatToStr(jml_karyawan_tetap_s2.Value)+', '+
            FloatToStr(jml_karyawan_tetap_s1.Value)+', '+
            FloatToStr(jml_karyawan_tetap_d3.Value)+', '+
            FloatToStr(jml_karyawan_tetap_slta.Value)+', '+
            FloatToStr(jml_karyawan_tetap_lainnya.Value)+', '+
            FloatToStr(jml_karyawan_tidak_tetap_s3.Value)+', '+
            FloatToStr(jml_karyawan_tidak_tetap_s2.Value)+', '+
            FloatToStr(jml_karyawan_tidak_tetap_s1.Value)+', '+
            FloatToStr(jml_karyawan_tidak_tetap_d3.Value)+', '+
            FloatToStr(jml_karyawan_tidak_tetap_slta.Value)+', '+
            FloatToStr(jml_karyawan_tidak_tetap_lainnya.Value)+', '+
            FloatToStr(jml_kantor_kas.Value)+', '+
            QuotedStr(sandi_kepemilikan_gedung.Text)+', '+
            FloatToStr(jml_kantor_kas_mobil_apung.Value)+', '+
            FloatToStr(jml_edc_sendiri.Value)+', '+
            FloatToStr(jml_edc_bu.Value)+', '+
            FloatToStr(jml_edc_lain.Value)+', '+
            FloatToStr(jml_atm_sendiri.Value)+', '+
            FloatToStr(jml_atm_kerjasama.Value)+', '+
            QuotedStr(nama_pihak_bekerjasama.Text)+', '+
            QuotedStr(sandi_ket_data_kantor.Text)+', '+
            QuotedStr(no_surat_persetujuan.Text)+', '+
            DateToStrSQL(tgl_surat_persetujuan.Date)+', '+
            QuotedStr(alamat_sebelumnya.Text)+', '+
            DateToStrSQL(tgl_pelaksanaan.Date)+', '+
            FloatToStr(jml_tetap_pemasaran.Value)+', '+
            FloatToStr(jml_tetap_pelayanan.Value)+', '+
            FloatToStr(jml_tetap_pplainnya.Value)+', '+
            FloatToStr(jml_tidaktetap_pemasaran.Value)+', '+
            FloatToStr(jml_tidaktetap_pelayanan.Value)+', '+
            FloatToStr(jml_tidaktetap_pplainnya.Value)+', '+
            FloatToStr(jml_jk_pria.Value)+', '+
            FloatToStr(jml_jk_wanita.Value)+', '+
            FloatToStr(jml_usia_kurang_25.Value)+', '+
            FloatToStr(jml_usia_lebih_25.Value)+', '+
            FloatToStr(jml_usia_lebih_35.Value)+', '+
            FloatToStr(jml_usia_lebih_45.Value)+', '+
            FloatToStr(jml_usia_lebih_55.Value)+', '+
            FloatToStr(jml_skk.Value)+
            ') ON DUPLICATE KEY UPDATE `nama_kantor`='+QuotedStr(nama_kantor.Text)+
            ', `koordinat_kantor`='+QuotedStr(koordinat_kantor.Text)+
            ', `alamat_kantor`='+QuotedStr(alamat_kantor.Text)+
            ', `alamat_kecamatan`='+QuotedStr(desa_kecamatan.Text)+
            ', `alamat_kota`='+QuotedStr(sandi_kota_kab.Text)+
            ', `alamat_kode_pos`='+QuotedStr(kode_pos.Text)+
            ', `nama_pimpinan`='+QuotedStr(nama_pimpinan.Text)+
            ', `no_telp`='+QuotedStr(no_telp.Text)+
            ', `jml_tetap_s3`='+FloatToStr(jml_karyawan_tetap_s3.Value)+
            ', `jml_tetap_s2`='+FloatToStr(jml_karyawan_tetap_s2.Value)+
            ', `jml_tetap_s1`='+FloatToStr(jml_karyawan_tetap_s1.Value)+
            ', `jml_tetap_d3`='+FloatToStr(jml_karyawan_tetap_d3.Value)+
            ', `jml_tetap_slta`='+FloatToStr(jml_karyawan_tetap_slta.Value)+
            ', `jml_tetap_lainnya`='+FloatToStr(jml_karyawan_tetap_lainnya.Value)+
            ', `jml_tidaktetap_s3`='+FloatToStr(jml_karyawan_tidak_tetap_s3.Value)+
            ', `jml_tidaktetap_s2`='+FloatToStr(jml_karyawan_tidak_tetap_s2.Value)+
            ', `jml_tidaktetap_s1`='+FloatToStr(jml_karyawan_tidak_tetap_s1.Value)+
            ', `jml_tidaktetap_d3`='+FloatToStr(jml_karyawan_tidak_tetap_d3.Value)+
            ', `jml_tidaktetap_slta`='+FloatToStr(jml_karyawan_tidak_tetap_slta.Value)+
            ', `jml_tidaktetap_lainnya`='+FloatToStr(jml_karyawan_tidak_tetap_lainnya.Value)+
            ', `jml_kantor_kas`='+FloatToStr(jml_kantor_kas.Value)+
            ', `status_kepemilikan_gedung`='+QuotedStr(sandi_kepemilikan_gedung.Text)+
            ', `jml_kas_mobil_terapung`='+FloatToStr(jml_kantor_kas_mobil_apung.Value)+
            ', `jml_edc_sendiri`='+FloatToStr(jml_edc_sendiri.Value)+
            ', `jml_edc_bu`='+FloatToStr(jml_edc_bu.Value)+
            ', `jml_edc_lain`='+FloatToStr(jml_edc_lain.Value)+
            ', `jml_atm_sendiri`='+FloatToStr(jml_atm_sendiri.Value)+
            ', `jml_atm_lain`='+FloatToStr(jml_atm_kerjasama.Value)+
            ', `nama_pihak_kerjasama_atm`='+QuotedStr(nama_pihak_bekerjasama.Text)+
            ', `ket_data_kantor`='+QuotedStr(sandi_ket_data_kantor.Text)+
            ', `no_persetujuan_ojk`='+QuotedStr(no_surat_persetujuan.Text)+
            ', `tgl_persetujuan_ojk`='+DateToStrSQL(tgl_surat_persetujuan.Date)+
            ', `alamat_sebelumnya`='+QuotedStr(alamat_sebelumnya.Text)+
            ', `tgl_pelaksanaan`='+DateToStrSQL(tgl_pelaksanaan.Date)+
            ', jml_tetap_pemasaran='+FloatToStr(jml_tetap_pemasaran.Value)+
            ', jml_tetap_pelayanan='+FloatToStr(jml_tetap_pelayanan.Value)+
            ', jml_tetap_pplainnya='+FloatToStr(jml_tetap_pplainnya.Value)+
            ', jml_tidaktetap_pemasaran='+FloatToStr(jml_tidaktetap_pemasaran.Value)+
            ', jml_tidaktetap_pelayanan='+FloatToStr(jml_tidaktetap_pelayanan.Value)+
            ', jml_tidaktetap_pplainnya='+FloatToStr(jml_tidaktetap_pplainnya.Value)+
            ', jml_jk_pria='+FloatToStr(jml_jk_pria.Value)+
            ', jml_jk_wanita='+FloatToStr(jml_jk_wanita.Value)+
            ', jml_usia_kurang_25='+FloatToStr(jml_usia_kurang_25.Value)+
            ', jml_usia_lebih_25='+FloatToStr(jml_usia_lebih_25.Value)+
            ', jml_usia_lebih_35='+FloatToStr(jml_usia_lebih_35.Value)+
            ', jml_usia_lebih_45='+FloatToStr(jml_usia_lebih_45.Value)+
            ', jml_usia_lebih_55='+FloatToStr(jml_usia_lebih_55.Value)+
            ', jml_skk='+FloatToStr(jml_skk.Value));
        end;
      if MyQDaftarKantor.Active then
        MyQDaftarKantor.Refresh
      else
        MyQDaftarKantor.Open;
    end;

  fr_EntryFormLps0004.Free;
  fr_EntryFormLps0004 := nil;
end;

procedure Tfr_FormLps0004.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if bt_edit.Enabled then
    bt_editClick(Sender);
end;

procedure Tfr_FormLps0004.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DBGrid1.DataSource.DataSet.RecNo mod StrToInt(cColorGridRow) = 0 then
  begin
     DBGrid1.Canvas.Font.Color:=StrToInt(cColorGridOddFront);
     DBGrid1.Canvas.Brush.Color:=StrToInt(cColorGridOddBg);
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  If (gdSelected in State) then
    begin
     DBGrid1.Canvas.Font.Color:=StrToInt(cColorGridSelectedFront);
     DBGrid1.Canvas.Brush.Color:=StrToInt(cColorGridSelectedBg);
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure Tfr_FormLps0004.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (Tag=1) then
    begin
      if not Pesan(3,'Batalkan perubahan data ?') then
        CanClose := False;
    end;
end;

procedure Tfr_FormLps0004.FormCreate(Sender: TObject);
begin
  inherited;
  if MyQDaftarKantor.Active then
    MyQDaftarKantor.Refresh
  else
    MyQDaftarKantor.Open;
end;

end.
