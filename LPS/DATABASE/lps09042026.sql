/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - lps
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lps` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `lps`;

/*Table structure for table `app_kode_kantor` */

DROP TABLE IF EXISTS `app_kode_kantor`;

CREATE TABLE `app_kode_kantor` (
  `kode_kantor` char(4) NOT NULL,
  `kode_cabang` char(4) DEFAULT NULL,
  `kode_cabang_bisnis` char(4) DEFAULT NULL,
  `nama_kantor` char(50) DEFAULT NULL,
  `nama_area_kerja` char(50) DEFAULT NULL,
  `domisili_hukum` char(50) DEFAULT NULL,
  `initial` varchar(10) DEFAULT NULL COMMENT 'untuk penamaan NOLPDK DAN MEMO AO/CA',
  `alamat_kantor` char(100) DEFAULT NULL,
  `kota_kantor` char(30) DEFAULT NULL,
  `kode_internal` char(4) NOT NULL,
  `nama_internal` char(50) DEFAULT NULL,
  `userid` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `ip_address` char(20) DEFAULT NULL,
  `kode_perk_kas_teller` char(20) DEFAULT '10102',
  `KODE_PERK_RAK` char(20) DEFAULT NULL,
  `kode_perk_giro` char(20) DEFAULT NULL,
  `keterangan` char(30) DEFAULT NULL,
  `nama_database` char(20) DEFAULT NULL,
  `nama_password_database` char(20) DEFAULT NULL,
  `nama_user_database` char(20) DEFAULT NULL,
  `nama_pimpinan` char(50) DEFAULT '',
  `jabatan_pimpinan` char(100) DEFAULT NULL,
  `nik_pc` varchar(16) DEFAULT NULL,
  `lahir_pc` date DEFAULT NULL,
  `PORT` int(11) DEFAULT 9000,
  `USER_SYNC` char(20) DEFAULT '',
  `PASSWORD_SYNC` char(25) DEFAULT '',
  `DIRECTORY_SYNC` char(25) DEFAULT '',
  `USER_ID_TRANS` int(11) DEFAULT NULL,
  `KODE_PERK_RAK_RAB` char(20) DEFAULT NULL,
  `SHADOW` char(1) DEFAULT 'T',
  `STATUS_ONLINE` char(3) DEFAULT 'OFF',
  `tgl_tutup_transaksi` date DEFAULT NULL,
  `user_ftp_report` char(50) DEFAULT NULL,
  `password_ftp_report` char(50) DEFAULT NULL,
  `folder_ftp_report` char(50) DEFAULT NULL,
  `nama_pimpinan1` char(50) DEFAULT NULL,
  `nama_pimpinan2` char(50) DEFAULT NULL,
  `IP_ADDRESS_REPORT` char(20) DEFAULT '127.0.0.1',
  `sandi_bank` char(6) DEFAULT NULL,
  `sandi_cabang` char(3) DEFAULT NULL,
  `sandi_kota_kab` char(4) DEFAULT NULL,
  `kasi_pelayanan` char(50) DEFAULT NULL,
  `kode_area` varchar(10) DEFAULT NULL,
  `kode_region` varchar(15) DEFAULT NULL,
  `ip_address_fp` char(20) DEFAULT '192.168.1.201',
  `port_fp` char(4) DEFAULT '4370',
  `kode_litigasi` char(30) DEFAULT NULL,
  `tlp` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `latitude` decimal(20,8) DEFAULT NULL,
  `longitude` decimal(20,8) DEFAULT NULL,
  `radius` decimal(10,4) DEFAULT NULL,
  `path_img` varchar(100) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `flg_eom` smallint(1) DEFAULT 0,
  `flg_aktif` smallint(1) DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_kantor`),
  KEY `kode_area` (`kode_area`),
  KEY `kode_cabang` (`kode_cabang`),
  KEY `kode_cabang_bisnis` (`kode_cabang_bisnis`),
  KEY `kode_region` (`kode_region`),
  KEY `nama_kantor` (`nama_kantor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `app_kode_kantor` */

insert  into `app_kode_kantor`(`kode_kantor`,`kode_cabang`,`kode_cabang_bisnis`,`nama_kantor`,`nama_area_kerja`,`domisili_hukum`,`initial`,`alamat_kantor`,`kota_kantor`,`kode_internal`,`nama_internal`,`userid`,`password`,`ip_address`,`kode_perk_kas_teller`,`KODE_PERK_RAK`,`kode_perk_giro`,`keterangan`,`nama_database`,`nama_password_database`,`nama_user_database`,`nama_pimpinan`,`jabatan_pimpinan`,`nik_pc`,`lahir_pc`,`PORT`,`USER_SYNC`,`PASSWORD_SYNC`,`DIRECTORY_SYNC`,`USER_ID_TRANS`,`KODE_PERK_RAK_RAB`,`SHADOW`,`STATUS_ONLINE`,`tgl_tutup_transaksi`,`user_ftp_report`,`password_ftp_report`,`folder_ftp_report`,`nama_pimpinan1`,`nama_pimpinan2`,`IP_ADDRESS_REPORT`,`sandi_bank`,`sandi_cabang`,`sandi_kota_kab`,`kasi_pelayanan`,`kode_area`,`kode_region`,`ip_address_fp`,`port_fp`,`kode_litigasi`,`tlp`,`fax`,`latitude`,`longitude`,`radius`,`path_img`,`tgl_mulai`,`flg_eom`,`flg_aktif`,`updated_at`) values 
('00','00',NULL,'PT. TOP','TANGERANG','TANGERANG','HO','Jl. -','TANGERANG','HO','Tangerang','0',NULL,NULL,'10102',NULL,NULL,NULL,NULL,NULL,'cbs','-','Direktur Utama','-','1900-01-01',9000,'','','',NULL,NULL,'T','OFF',NULL,NULL,NULL,NULL,NULL,NULL,'127.0.0.1','601911','001','6191',NULL,'TANGERANG',NULL,'192.168.1.201','4370',NULL,'0',NULL,0.00000000,0.00000000,0.0000,NULL,'2025-11-01',1,1,'2025-11-14 22:44:55');

/*Table structure for table `app_kode_perk_limit` */

DROP TABLE IF EXISTS `app_kode_perk_limit`;

CREATE TABLE `app_kode_perk_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modul` char(3) NOT NULL,
  `kode_perk` char(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `modul` (`modul`,`kode_perk`),
  KEY `modul_2` (`modul`,`kode_perk`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `app_kode_perk_limit` */

/*Table structure for table `backup_list_table` */

DROP TABLE IF EXISTS `backup_list_table`;

CREATE TABLE `backup_list_table` (
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `BACKUP_LEVEL` smallint(1) DEFAULT 1,
  PRIMARY KEY (`TABLE_NAME`,`TABLE_SCHEMA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `backup_list_table` */

/*Table structure for table `daftar_dblock` */

DROP TABLE IF EXISTS `daftar_dblock`;

CREATE TABLE `daftar_dblock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_name` varchar(50) NOT NULL DEFAULT '',
  `status` enum('N','Y') NOT NULL DEFAULT 'N',
  `user_id` varchar(30) NOT NULL DEFAULT '',
  `waktu` datetime NOT NULL,
  `computer_name` varchar(250) DEFAULT NULL,
  `computer_ip` varchar(50) DEFAULT NULL,
  `computer_user` varchar(250) DEFAULT NULL,
  `connection_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `waktu` (`waktu`),
  KEY `key_name` (`key_name`)
) ENGINE=InnoDB AUTO_INCREMENT=77296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `daftar_dblock` */

insert  into `daftar_dblock`(`id`,`key_name`,`status`,`user_id`,`waktu`,`computer_name`,`computer_ip`,`computer_user`,`connection_id`) values 
(77295,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-09 20:25:14','IT','40.40.40.122','DH-IT INDRA',NULL);

/*Table structure for table `debug_log` */

DROP TABLE IF EXISTS `debug_log`;

CREATE TABLE `debug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debug_info` longtext DEFAULT NULL,
  `last_executed` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `debug_log` */

/*Table structure for table `hari_libur` */

DROP TABLE IF EXISTS `hari_libur`;

CREATE TABLE `hari_libur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `potong_cuti_massal` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='master hari libur';

/*Data for the table `hari_libur` */

/*Table structure for table `label_form` */

DROP TABLE IF EXISTS `label_form`;

CREATE TABLE `label_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_form` varchar(200) NOT NULL,
  `file_label` mediumtext DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `loaded` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_form` (`nama_form`)
) ENGINE=InnoDB AUTO_INCREMENT=2010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `label_form` */

/*Table structure for table `lps_backup_log` */

DROP TABLE IF EXISTS `lps_backup_log`;

CREATE TABLE `lps_backup_log` (
  `kode_arsip` varchar(25) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `created_by` int(11) DEFAULT 0,
  `last_created` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_backup_log` */

/*Table structure for table `lps_dk_f0003` */

DROP TABLE IF EXISTS `lps_dk_f0003`;

CREATE TABLE `lps_dk_f0003` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `jenis` varchar(3) DEFAULT NULL,
  `kolektibilitas` varchar(1) DEFAULT NULL,
  `jml_pinjaman` decimal(22,0) DEFAULT NULL,
  `baki_debet` decimal(22,0) DEFAULT NULL,
  `jumlah_tunggakan_pokok` decimal(22,0) DEFAULT NULL,
  `jumlah_tunggakan_bunga` decimal(22,0) DEFAULT NULL,
  `jenis_agunan` varchar(10) DEFAULT NULL,
  `tgl_realisasi` date DEFAULT NULL,
  `tgl_jatuh_tempo` date DEFAULT NULL,
  `kategori_usaha` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0003` */

/*Table structure for table `lps_dk_f0003_arsip` */

DROP TABLE IF EXISTS `lps_dk_f0003_arsip`;

CREATE TABLE `lps_dk_f0003_arsip` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `jenis` varchar(3) DEFAULT NULL,
  `kolektibilitas` varchar(1) DEFAULT NULL,
  `jml_pinjaman` decimal(22,0) DEFAULT NULL,
  `baki_debet` decimal(22,0) DEFAULT NULL,
  `jumlah_tunggakan_pokok` decimal(22,0) DEFAULT NULL,
  `jumlah_tunggakan_bunga` decimal(22,0) DEFAULT NULL,
  `jenis_agunan` varchar(10) DEFAULT NULL,
  `tgl_realisasi` date DEFAULT NULL,
  `tgl_jatuh_tempo` date DEFAULT NULL,
  `kategori_usaha` varchar(2) DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0003_arsip` */

/*Table structure for table `lps_dk_f0004` */

DROP TABLE IF EXISTS `lps_dk_f0004`;

CREATE TABLE `lps_dk_f0004` (
  `flag_detail` varchar(1) DEFAULT 'D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `persentase_kepemilikan` decimal(6,2) NOT NULL COMMENT '100% / total per kombinasi nasabah_id + rekening',
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0004` */

/*Table structure for table `lps_dk_f0004_arsip` */

DROP TABLE IF EXISTS `lps_dk_f0004_arsip`;

CREATE TABLE `lps_dk_f0004_arsip` (
  `flag_detail` varchar(1) DEFAULT 'D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `persentase_kepemilikan` decimal(6,2) NOT NULL COMMENT '100% / total per kombinasi nasabah_id + rekening',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0004_arsip` */

/*Table structure for table `lps_dn_f0001` */

DROP TABLE IF EXISTS `lps_dn_f0001`;

CREATE TABLE `lps_dn_f0001` (
  `flag_detail` varchar(1) DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `nama_nasabah` varchar(150) DEFAULT NULL,
  `jenis_id` varchar(3) DEFAULT NULL,
  `no_id` varchar(25) DEFAULT NULL,
  `nama_ibu_kandung` varchar(150) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL COMMENT 'YYYYMMDD',
  `no_id2` varchar(35) DEFAULT NULL,
  `nama_pengurus` varchar(150) DEFAULT NULL,
  `jenis_identitas` varchar(3) DEFAULT NULL,
  `nomor_identitas` varchar(25) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `kota_kab` varchar(4) DEFAULT NULL,
  `wni` varchar(3) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `flag_fraud` varchar(3) DEFAULT NULL,
  `hub_dgn_bank` varchar(2) DEFAULT NULL,
  `slik_kode_hub_ljk` varchar(2) DEFAULT NULL,
  `slik_kode_gol_debitur` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dn_f0001` */

/*Table structure for table `lps_dn_f0001_arsip` */

DROP TABLE IF EXISTS `lps_dn_f0001_arsip`;

CREATE TABLE `lps_dn_f0001_arsip` (
  `flag_detail` varchar(1) DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `nama_nasabah` varchar(150) DEFAULT NULL,
  `jenis_id` varchar(3) DEFAULT NULL,
  `no_id` varchar(25) DEFAULT NULL,
  `nama_ibu_kandung` varchar(150) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL COMMENT 'YYYYMMDD',
  `no_id2` varchar(35) DEFAULT NULL,
  `nama_pengurus` varchar(150) DEFAULT NULL,
  `jenis_identitas` varchar(3) DEFAULT NULL,
  `nomor_identitas` varchar(25) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `kota_kab` varchar(4) DEFAULT NULL,
  `wni` varchar(3) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `flag_fraud` varchar(3) DEFAULT NULL,
  `hub_dgn_bank` varchar(2) DEFAULT NULL,
  `slik_kode_hub_ljk` varchar(2) DEFAULT NULL,
  `slik_kode_gol_debitur` varchar(11) DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`nasabah_id`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dn_f0001_arsip` */

/*Table structure for table `lps_dsn_f0002` */

DROP TABLE IF EXISTS `lps_dsn_f0002`;

CREATE TABLE `lps_dsn_f0002` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `type_join` varchar(1) NOT NULL DEFAULT 'R' COMMENT 'Diisi dengan R',
  `jumlah_pemilik_rekening` int(11) DEFAULT NULL,
  `nasabah_id` varchar(20) DEFAULT NULL,
  `kode_integrasi` varchar(4) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `status_dana` varchar(1) DEFAULT NULL,
  `tgl_mulai_atau_tgl_aro_terakhir` date DEFAULT NULL,
  `suku_bunga` varchar(1) DEFAULT NULL,
  `suku_bunga_val` decimal(6,2) DEFAULT NULL,
  `biaya_cashback` decimal(6,2) DEFAULT NULL,
  `tingkat_bunga_penjaminan_lps` decimal(6,2) DEFAULT NULL,
  `kategori_tingkat_bunga_simpanan` varchar(3) DEFAULT NULL,
  `saldo_akhir` decimal(22,0) DEFAULT NULL,
  `nominal_blokir` decimal(22,0) DEFAULT NULL,
  `alasan_blokir` varchar(2) DEFAULT NULL,
  `saldo_akhir_bunga_bmhd` decimal(22,0) DEFAULT NULL,
  `tgl_akru_terakhir` date DEFAULT NULL,
  `tanggal_jt` date DEFAULT NULL,
  PRIMARY KEY (`flag_detail`,`type_join`,`no_rekening`,`kode_integrasi`),
  UNIQUE KEY `kode_integrasi` (`kode_integrasi`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dsn_f0002` */

/*Table structure for table `lps_dsn_f0002_arsip` */

DROP TABLE IF EXISTS `lps_dsn_f0002_arsip`;

CREATE TABLE `lps_dsn_f0002_arsip` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `type_join` varchar(1) NOT NULL DEFAULT 'R' COMMENT 'Diisi dengan R',
  `jumlah_pemilik_rekening` int(11) DEFAULT NULL,
  `nasabah_id` varchar(20) DEFAULT NULL,
  `kode_integrasi` varchar(4) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `status_dana` varchar(1) DEFAULT NULL,
  `tgl_mulai_atau_tgl_aro_terakhir` date DEFAULT NULL,
  `suku_bunga` varchar(1) DEFAULT NULL,
  `suku_bunga_val` decimal(6,2) DEFAULT NULL,
  `biaya_cashback` decimal(6,2) DEFAULT NULL,
  `tingkat_bunga_penjaminan_lps` decimal(6,2) DEFAULT NULL,
  `kategori_tingkat_bunga_simpanan` varchar(3) DEFAULT NULL,
  `saldo_akhir` decimal(22,0) DEFAULT NULL,
  `nominal_blokir` decimal(22,0) DEFAULT NULL,
  `alasan_blokir` varchar(2) DEFAULT NULL,
  `saldo_akhir_bunga_bmhd` decimal(22,0) DEFAULT NULL,
  `tgl_akru_terakhir` date DEFAULT NULL,
  `tanggal_jt` date DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`flag_detail`,`type_join`,`no_rekening`,`kode_arsip`,`kode_integrasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dsn_f0002_arsip` */

/*Table structure for table `lps_f0004` */

DROP TABLE IF EXISTS `lps_f0004`;

CREATE TABLE `lps_f0004` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `sandi_kantor` varchar(3) NOT NULL,
  `nama_kantor` varchar(50) NOT NULL,
  `koordinat_kantor` varchar(50) NOT NULL,
  `alamat_kantor` varchar(50) NOT NULL,
  `alamat_kecamatan` varchar(50) NOT NULL,
  `alamat_kota` char(4) NOT NULL COMMENT '#ref Kabupaten/Kota',
  `alamat_kode_pos` char(5) NOT NULL,
  `nama_pimpinan` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `jml_tetap_s3` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tetap_s2` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tetap_s1` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tetap_d3` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tetap_slta` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tetap_lainnya` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tidaktetap_s3` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tidaktetap_s2` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tidaktetap_s1` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tidaktetap_d3` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tidaktetap_slta` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_tidaktetap_lainnya` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_kantor_kas` decimal(2,0) NOT NULL DEFAULT 0,
  `status_kepemilikan_gedung` char(2) NOT NULL COMMENT '#ref Status Kepemilikan Gedung',
  `jml_kas_mobil_terapung` decimal(2,0) NOT NULL DEFAULT 0,
  `jml_edc_sendiri` decimal(4,0) NOT NULL DEFAULT 0,
  `jml_edc_bu` decimal(4,0) NOT NULL DEFAULT 0,
  `jml_edc_lain` decimal(4,0) NOT NULL DEFAULT 0,
  `jml_atm_sendiri` decimal(3,0) NOT NULL DEFAULT 0,
  `jml_atm_lain` decimal(3,0) NOT NULL DEFAULT 0,
  `nama_pihak_kerjasama_atm` varchar(50) DEFAULT NULL,
  `ket_data_kantor` char(1) DEFAULT NULL COMMENT '#ref apolo_ref_ket_data_kantor',
  `no_persetujuan_ojk` varchar(30) DEFAULT NULL,
  `tgl_persetujuan_ojk` date DEFAULT NULL,
  `alamat_sebelumnya` varchar(50) DEFAULT NULL,
  `tgl_pelaksanaan` date DEFAULT NULL,
  `jml_tetap_pemasaran` decimal(3,0) DEFAULT 0,
  `jml_tetap_pelayanan` decimal(3,0) DEFAULT 0,
  `jml_tetap_pplainnya` decimal(3,0) DEFAULT 0,
  `jml_tidaktetap_pemasaran` decimal(3,0) DEFAULT 0,
  `jml_tidaktetap_pelayanan` decimal(3,0) DEFAULT 0,
  `jml_tidaktetap_pplainnya` decimal(3,0) DEFAULT 0,
  `jml_jk_pria` decimal(3,0) DEFAULT 0,
  `jml_jk_wanita` decimal(3,0) DEFAULT 0,
  `jml_usia_kurang_25` decimal(3,0) DEFAULT 0,
  `jml_usia_lebih_25` decimal(3,0) DEFAULT 0,
  `jml_usia_lebih_35` decimal(3,0) DEFAULT 0,
  `jml_usia_lebih_45` decimal(3,0) DEFAULT 0,
  `jml_usia_lebih_55` decimal(3,0) DEFAULT 0,
  `jml_skk` decimal(3,0) DEFAULT 0,
  PRIMARY KEY (`sandi_kantor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lps_f0004` */

/*Table structure for table `lps_header` */

DROP TABLE IF EXISTS `lps_header`;

CREATE TABLE `lps_header` (
  `flag_header` char(3) NOT NULL DEFAULT 'H',
  `kode_kepesertaan` char(11) NOT NULL DEFAULT '31300083' COMMENT 'Kode kepesertaan LPS',
  `periode_data` date NOT NULL COMMENT 'Format tanggal = YYYYMMDD',
  `kode_jenis_pelaporan` char(6) DEFAULT NULL,
  `kode_form_laporan` char(4) DEFAULT NULL,
  `kode_status_koreksi` char(1) NOT NULL DEFAULT '0' COMMENT 'R = Reguler, K1 = Koreksi ke-1, K2 = Koreksi ke-2, dst',
  `nomor_surat` varchar(50) DEFAULT NULL,
  `periode_pengiriman` char(1) NOT NULL DEFAULT 'M' COMMENT 'D = Daily, M = Monthly, S = Semester',
  `kode_status_pengiriman` char(2) DEFAULT 'R',
  PRIMARY KEY (`periode_data`,`periode_pengiriman`,`kode_status_koreksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_header` */

/*Table structure for table `lps_header_arsip` */

DROP TABLE IF EXISTS `lps_header_arsip`;

CREATE TABLE `lps_header_arsip` (
  `flag_header` char(3) NOT NULL DEFAULT 'H',
  `kode_kepesertaan` char(11) NOT NULL DEFAULT '31300083' COMMENT 'Kode kepesertaan LPS',
  `periode_data` date NOT NULL COMMENT 'Format tanggal = YYYYMMDD',
  `kode_jenis_pelaporan` char(6) DEFAULT NULL,
  `kode_form_laporan` char(4) DEFAULT NULL,
  `kode_status_koreksi` char(1) NOT NULL DEFAULT '0' COMMENT 'R = Reguler, K1 = Koreksi ke-1, K2 = Koreksi ke-2, dst',
  `nomor_surat` varchar(50) DEFAULT NULL,
  `periode_pengiriman` char(1) NOT NULL DEFAULT 'M' COMMENT 'D = Daily, M = Monthly, S = Semester',
  `kode_status_pengiriman` char(2) DEFAULT 'R',
  `kode_arsip` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`periode_data`,`periode_pengiriman`,`kode_status_koreksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_header_arsip` */

/*Table structure for table `lps_ref` */

DROP TABLE IF EXISTS `lps_ref`;

CREATE TABLE `lps_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_ref` varchar(5) NOT NULL,
  `nama_referensi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref` */

insert  into `lps_ref`(`id`,`kode_ref`,`nama_referensi`,`created_at`,`updated_at`) values 
(1,'A','Referensi Periode Laporan','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(2,'B','Referensi Versi Laporan','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(3,'1','Referensi Jenis Identitas','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(4,'2','Referensi Kab\\Kota \\Datill','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(5,'3','Referensi Kewarganegaraan','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(6,'4','Referensi FlagFraud','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(7,'5','Referensi Hub dgn Bank','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(8,'6','Referensi Hubungan Pihak Terkait','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(9,'7','Referensi Golongan Nasabah','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(10,'8','Referensi Klasifikasi Rekening','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(11,'9','Referensi Jenis Simpanan','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(12,'10','Referensi Status Dana','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(13,'11','Referensi Jenis Tingkat Bunga','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(14,'12','Referensi Kategori Tingkat Bunga Simpanan','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(15,'13','Referensi Alasan Blokir','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(16,'14','Referensi Jenis Kewajiban','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(17,'15','Referensi Kolektibilitas','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(18,'16','Referensi Jenis Agunan','2025-10-01 11:06:31','2025-10-01 11:06:31'),
(19,'17','Referensi Kategori Usaha','2025-10-01 11:06:31','2025-10-01 11:06:31');

/*Table structure for table `lps_ref_alasan_blokir` */

DROP TABLE IF EXISTS `lps_ref_alasan_blokir`;

CREATE TABLE `lps_ref_alasan_blokir` (
  `id` int(10) DEFAULT NULL,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_alasan_blokir` */

insert  into `lps_ref_alasan_blokir`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(NULL,'01','Dalam Rangka Escrow Account',1),
(NULL,'02','Dalam Rangka Agunan Tunai (Cash Collateral)',1),
(NULL,'99','Alasan Diblokir Lainnya',1);

/*Table structure for table `lps_ref_flag_fraud` */

DROP TABLE IF EXISTS `lps_ref_flag_fraud`;

CREATE TABLE `lps_ref_flag_fraud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` text NOT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_flag_fraud` */

insert  into `lps_ref_flag_fraud`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'1','Lainnya',1),
(2,'2.F','Nasabah yang diketahui oleh bank terindikasi atau diduga oleh, OJK, LPS dan/atau penegak hukum (dalam laporan tertulis seperti laporan hasil pemeriksaan atau berita acara pemeriksaan) melakukan perbuatan melanggar hukum yang mengakibatkan kerugian atau membahayakan kelangsungan Usaha bank dan/atau Nasabah yang berdasarkan putusan pengadilan yang berkekuatan hukum tetap dinyatakan sebagai pihak yang melakukan perbuatan melanggar hukum yang mengakibatkan kerugian atau membahayakan kelangsungan usaha bank.',1);

/*Table structure for table `lps_ref_gol_nasabah` */

DROP TABLE IF EXISTS `lps_ref_gol_nasabah`;

CREATE TABLE `lps_ref_gol_nasabah` (
  `id` int(4) DEFAULT NULL,
  `sandi` varchar(4) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `lps_ref_gol_nasabah` */

insert  into `lps_ref_gol_nasabah`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(NULL,'0000','A. Penduduk',1),
(NULL,'1000','I. Pemerintah Pusat',1),
(NULL,'1010','1. Lembaga Tinggi Negara',1),
(NULL,'1011','a. Majelis Permusyawaratan Rakyat (MPR)',1),
(NULL,'1012','b. Dewan Perwakilan Rakyat (DPR)',1),
(NULL,'1013','c. Dewan Perwakilan Daerah (DPD)',1),
(NULL,'1014','d. Presiden dan Wakil Presiden',1),
(NULL,'1015','e. Mahkamah Agung (MA)',1),
(NULL,'1016','f. Mahkamah Konstitusi (MK)',1),
(NULL,'1017','g. Badan Pemeriksa Keuangan (BPK)',1),
(NULL,'1020','2. Kementerian dan Lembaga setingkat kementerian',1),
(NULL,'1021','a. Kementerian Keuangan',1),
(NULL,'1022','b. Kementerian Koordinator Bidang Perekonomian',1),
(NULL,'1023','c. Kementerian Energi dan Sumber Daya Mineral (ESDM)',1),
(NULL,'1024','d. Kementerian Perdagangan',1),
(NULL,'1025','e. Kementerian Pertanian',1),
(NULL,'1026','f. Kementerian Kehutanan',1),
(NULL,'1027','g. Kementerian Kelautan dan Perikanan',1),
(NULL,'1028','h. Kementerian Perindustrian',1),
(NULL,'1029','i. Kementerian Koperasi dan Usaha Kecil Menengah',1),
(NULL,'1030','j. Kementerian Badan Usaha Milik Negara (BUMN)',1),
(NULL,'1031','k. Kementerian Lainnya',1),
(NULL,'1040','3. Lembaga Pemerintah Non Kementerian',1),
(NULL,'1041','a. Badan Pusat Statistik (BPS)',1),
(NULL,'1042','b. Badan Koordinasi Penanaman Modal (BKPM)',1),
(NULL,'1043','c. Lembaga Penjamin Simpanan (LPS)',1),
(NULL,'1049','d. Lainnya',1),
(NULL,'1050','4. Badan Layanan Umum (BLU) pada Pemerintah Campuran',1),
(NULL,'1060','5. POLRI/TNI',1),
(NULL,'1100','II. Bank Indonesia (BI), Otoritas Jasa Keuangan (OJK), Asuransi dan Dana Pensiun',1),
(NULL,'1110','1. Bank Indonesia',1),
(NULL,'1120','2. OJK',1),
(NULL,'1130','3. Asuransi',1),
(NULL,'1131','a. Jiwa',1),
(NULL,'1132','b. Sosial',1),
(NULL,'1133','c. Kerugian',1),
(NULL,'1134','d. Reasuransi',1),
(NULL,'1139','e. Lainnya',1),
(NULL,'1140','4. Dana Pensiun',1),
(NULL,'1150','5. Jasa Penunjang Asuransi',1),
(NULL,'1151','a. Pialang Asuransi',1),
(NULL,'1152','b. Pialang Reasuransi',1),
(NULL,'1153','c. Perusahaan penilai kerugian asuransi',1),
(NULL,'1154','d. Perusahaan konsultan aktuaria',1),
(NULL,'1155','e. Perusahaan agen asuransi yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'1159','f. Jasa Penunjang Asuransi Lainnya',1),
(NULL,'1160','6. Jasa Penunjang Dana Pensiun',1),
(NULL,'1161','a. Perusahaan pengelola dana pensiun yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'1169','b. Jasa Penunjang Dana Pensiun Lainnya',1),
(NULL,'1170','7. Lainnya',1),
(NULL,'1200','III. Lembaga Keuangan Non Bank Lainnya',1),
(NULL,'1210','1. Pegadaian',1),
(NULL,'1220','2. Perusahaan Pembiayaan',1),
(NULL,'1300','IV. BUMN Non Lembaga Keuangan',1),
(NULL,'1310','1. Perusahaan Listrik Negara (PLN)',1),
(NULL,'1320','2. Pertambangan Minyak dan Gas Bumi (MIGAS)',1),
(NULL,'1330','3. Angkutan Sungai, Danau dan Penyeberangan (ASDP)',1),
(NULL,'1340','4. Telekomunikasi',1),
(NULL,'1350','5. Kereta Api',1),
(NULL,'1360','6. Perusahaan Penerbitan Udara',1),
(NULL,'1370','7. Percetakan Uang RI (PERURI)',1),
(NULL,'1380','8. Perusahaan Listrik Negara (PLN)',1),
(NULL,'1390','9. Pelabuhan Laut',1),
(NULL,'1400','10. Pos',1),
(NULL,'1410','11. Pergudangan',1),
(NULL,'1420','12. Jalan Tol',1),
(NULL,'1430','13. Jasa Konstruksi',1),
(NULL,'1499','14. Lainnya',1),
(NULL,'2000','B. Pemerintah Daerah',1),
(NULL,'2100','I. Badan Usaha Milik Daerah (BUMD)',1),
(NULL,'2110','1. Lembaga Keuangan',1),
(NULL,'2120','2. Asuransi dan Dana Pensiun',1),
(NULL,'2121','a. Perusahaan Asuransi',1),
(NULL,'2122','b. Dana Pensiun',1),
(NULL,'2123','c. Jasa Penunjang',1),
(NULL,'2124','i. Perusahaan pengelola dana pensiun yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'2125','ii. Perusahaan penilai kerugian asuransi yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'2129','iii. Lainnya',1),
(NULL,'2130','3. Lembaga Pembiayaan',1),
(NULL,'2199','4. Lainnya',1),
(NULL,'2200','II. Bukan Lembaga Keuangan',1),
(NULL,'2210','1. Perusahaan Daerah Air Minum (PDAM)',1),
(NULL,'2220','2. Perusahaan Daerah Pasar (PD Pasar)',1),
(NULL,'2299','3. Lainnya',1),
(NULL,'3000','II. Sektor Swasta',1),
(NULL,'7000','A. Lembaga Keuangan Non Bank',1),
(NULL,'7100','I. Perusahaan Pembiayaan',1),
(NULL,'7110','1. Perusahaan Asuransi & Dana pensiun',1),
(NULL,'7111','a. Perusahaan Asuransi',1),
(NULL,'7112','b. Dana Pensiun',1),
(NULL,'7119','c. Jasa Penunjang',1),
(NULL,'7120','ii. Perusahaan sekuritas dan Rekasadana',1),
(NULL,'7121','a. Perusahaan sekuritas yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'7122','b. Perusahaan Reksa Dana (termasuk Kontrak Investasi Kolektif)',1),
(NULL,'7123','c. Manajer Investasi',1),
(NULL,'7124','d. Lainnya',1),
(NULL,'7130','v. Lembaga Keuangan Non Bank Lainnya',1),
(NULL,'7131','a. Modal Ventura',1),
(NULL,'7132','b. Koperasi Simpan Pinjam',1),
(NULL,'7133','c. Pembiayaan Ekspor',1),
(NULL,'7134','d. Pembiayaan Perumahan Primer',1),
(NULL,'7135','e. Pegadaian',1),
(NULL,'7139','f. Lainnya',1),
(NULL,'7200','B. Campuran',1),
(NULL,'7210','1. Perusahaan Asuransi dan Dana Pensiun',1),
(NULL,'7211','a. Perusahaan Asuransi',1),
(NULL,'7212','b. Dana Pensiun',1),
(NULL,'7219','c. Jasa Penunjang',1),
(NULL,'7220','2. Perusahaan Sekuritas dan Rekasadana',1),
(NULL,'7221','a. Perusahaan sekuritas yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'7222','b. Perusahaan Reksa Dana (termasuk Kontrak Investasi Kolektif)',1),
(NULL,'7223','c. Manajer Investasi',1),
(NULL,'7229','d. Lainnya',1),
(NULL,'7230','v. Lembaga Keuangan Non Bank Lainnya',1),
(NULL,'7231','a. Modal Ventura',1),
(NULL,'7232','b. Koperasi Simpan Pinjam',1),
(NULL,'7233','c. Kantor Perwakilan Lembaga Milik Asing di Indonesia lainnya',1),
(NULL,'7290','C. Asing',1),
(NULL,'7310','1. Perusahaan Asuransi & Dana pensiun',1),
(NULL,'7311','a. Perusahaan Asuransi',1),
(NULL,'7312','b. Dana Pensiun',1),
(NULL,'7319','c. Jasa Penunjang',1),
(NULL,'7320','ii. Perusahaan sekuritas dan Rekasadana',1),
(NULL,'7321','a. Perusahaan sekuritas yang melakukan kegiatan usaha Rekasadana',1),
(NULL,'7322','b. Perusahaan Reksa Dana (termasuk Kontrak Investasi Kolektif)',1),
(NULL,'7323','c. Manajer Investasi',1),
(NULL,'7329','d. Lainnya',1),
(NULL,'7330','v. Lembaga Keuangan non Bank Lainnya',1),
(NULL,'7331','a. Modal Ventura',1),
(NULL,'7332','b. Kantor Perwakilan Lembaga Milik Asing di Indonesia lainnya',1),
(NULL,'7390','3. Lainnya',1),
(NULL,'8000','2. Bukan Lembaga Keuangan',1),
(NULL,'8100','I. Perusahaan',1),
(NULL,'8110','1. Perusahaan Perseorangan',1),
(NULL,'8111','a. Perusahaan Dagang (PD)',1),
(NULL,'8112','b. Perusahaan Jasa',1),
(NULL,'8113','c. Perusahaan Industri',1),
(NULL,'8120','2. Firma',1),
(NULL,'8130','3. Persekutuan Komanditer (CV)',1),
(NULL,'8140','4. Koperasi Non Simpan Pinjam',1),
(NULL,'8150','5. Perseroan Terbatas (PT)',1),
(NULL,'8151','a. Yayasan/Badan Sosial dan Organisasi Kemasyarakatan',1),
(NULL,'8152','b. Yayasan Amal, Sosial dan Keagamaan (BAZIS)',1),
(NULL,'8153','c. Lembaga Pendidikan',1),
(NULL,'8159','d. Lainnya',1),
(NULL,'8160','II. Campuran',1),
(NULL,'8161','1. Perusahaan Perseorangan',1),
(NULL,'8162','2. Firma',1),
(NULL,'8163','3. Persekutuan Komanditer (CV)',1),
(NULL,'8164','4. Perseroan Terbatas (PT)',1),
(NULL,'8165','5. Koperasi non Simpan Pinjam',1),
(NULL,'8166','6. Yayasan/Badan Sosial dan Organisasi Kemasyarakatan',1),
(NULL,'8167','7. Yayasan Amal, Sosial dan Keagamaan (BAZIS)',1),
(NULL,'8168','8. Lembaga Pendidikan',1),
(NULL,'8169','9. Lainnya',1),
(NULL,'8170','iii. Kantor Perwakilan Lembaga Milik Asing di Indonesia',1),
(NULL,'8171','1. Lainnya',1),
(NULL,'8600','C. Asing',1),
(NULL,'8610','1. Perusahaan Perseorangan',1),
(NULL,'8611','a. Perusahaan Dagang (PD)',1),
(NULL,'8612','b. Perusahaan Jasa',1),
(NULL,'8613','c. Perusahaan Industri',1),
(NULL,'8620','2. Firma',1),
(NULL,'8630','3. Persekutuan Komanditer (CV)',1),
(NULL,'8640','4. Koperasi non Simpan Pinjam',1),
(NULL,'8650','5. Perseroan Terbatas (PT)',1),
(NULL,'8651','a. Yayasan/Badan Sosial dan Organisasi Kemasyarakatan',1),
(NULL,'8652','b. Yayasan Amal, Sosial dan Keagamaan (BAZIS)',1),
(NULL,'8653','c. Lembaga Pendidikan',1),
(NULL,'8659','d. Lainnya',1),
(NULL,'9000','3. Bank',1),
(NULL,'9100','I. Bank Umum Milik Negara/Pemerintah (Pemerintah/POLRI/Lembaga Negara dan BUMS/BUMD)',1),
(NULL,'9110','a. BUMN',1),
(NULL,'9120','b. BUMD',1),
(NULL,'9190','c. Lainnya',1),
(NULL,'9200','II. BPR',1),
(NULL,'9300','III. Bank Umum Konvensional',1),
(NULL,'9400','IV. Bank Umum Syariah',1),
(NULL,'9410','a. Unit Usaha Syariah (UUS) Syariah Bank Umum Konvensional',1),
(NULL,'9500','B. Bukan penduduk',1),
(NULL,'9510','V. Perwakilan negara asing dan lembaga internasional',1),
(NULL,'9511','1. Kedutaan Besar',1),
(NULL,'9512','2. Kantor perwakilan bank bukan bank yang beroperasi di luar Indonesia',1),
(NULL,'9590','3. Lainnya',1),
(NULL,'9600','VI. Bank yang Berkedudukan di Luar Negeri (LN)',1),
(NULL,'9610','VII. Lembaga Keuangan Internasional',1),
(NULL,'9611','1. International Monetary Fund (IMF)',1),
(NULL,'9612','2. Asian Development Bank (ADB)',1),
(NULL,'9613','3. World Bank',1),
(NULL,'9619','4. Lainnya',1),
(NULL,'9700','VIII.Lainnya',1);

/*Table structure for table `lps_ref_hub_bank` */

DROP TABLE IF EXISTS `lps_ref_hub_bank`;

CREATE TABLE `lps_ref_hub_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(100) NOT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_hub_bank` */

insert  into `lps_ref_hub_bank`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'T1','Perusahaan Induk',1),
(2,'T2','Perusahaan Anak',1),
(3,'T3','Perusahaan Asosiasi',1),
(4,'T4','Sister Company',1),
(5,'T5','Pengurus',1),
(6,'T6','Pegawai',1),
(7,'T7','Pemegang Saham',1),
(8,'N','Tidak Terkait',1);

/*Table structure for table `lps_ref_hub_pihak_terkait` */

DROP TABLE IF EXISTS `lps_ref_hub_pihak_terkait`;

CREATE TABLE `lps_ref_hub_pihak_terkait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` text NOT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_hub_pihak_terkait` */

insert  into `lps_ref_hub_pihak_terkait`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'01','Hubungan Keluarga dengan Anggota Direksi, Anggota Dewan Komisaris dan Pemegang saham',1),
(2,'02','Perusahaan bukan bank yang dimiliki oleh Anggota Direksi, Anggota Dewan Komisaris, pemegang saham, pejabat eksekutif, dan pihak nomor 1 diatas',1),
(3,'03','BPR lain yang dimiliki oleh Anggota Direksi, Anggota Dewan Komisaris, pemegang saham, pejabat eksekutif, dan pihak nomor 1 diatas',1),
(4,'04','BPR lain yang anggota Dewan Komisarisnya merangkap sebagai anggota Dewan Komisaris BPR dengan jumlah paling sedikit 50% dari keseluruhan anggota Direksi dan anggota Dewan Komisaris pada BPR lain',1),
(5,'05','Perusahaan yang paling sedikit 50% (lima puluh persen) dari jumlah keseluruhan anggota Direksi dan anggota Dewan Komisaris merupakan anggota Dewan Komisaris BPR',1),
(6,'06','Peminjam yang diberikan jaminan oleh Anggota Direksi, Anggota Dewan Komisaris, pemegang saham, pejabat eksekutif, dan pihak 1 s.d 5 diatas',1),
(7,'20','Tidak Terkait',1);

/*Table structure for table `lps_ref_jenis_agunan` */

DROP TABLE IF EXISTS `lps_ref_jenis_agunan`;

CREATE TABLE `lps_ref_jenis_agunan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_jenis_agunan` */

insert  into `lps_ref_jenis_agunan`(`id`,`sandi`,`deskripsi_sandi`,`created_at`,`selectable`) values 
(1,'100','Agunan Likuid (misalnya: SBI, Surat Utang Pemerintah, Tabungan, Deposito, Logam Mulia)','2025-10-06 10:31:55',1),
(2,'200','Agunan Non-Likuid (misalnya: emas perhiasan, tanah, bangunan, rumah, resi gudang, tempat usaha, kendaraan bermotor, lainnya)','2025-10-06 10:31:55',1),
(3,'300','Kredit/Pembiayaan Tanpa Agunan','2025-10-06 10:31:55',1);

/*Table structure for table `lps_ref_jenis_identitas` */

DROP TABLE IF EXISTS `lps_ref_jenis_identitas`;

CREATE TABLE `lps_ref_jenis_identitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` char(1) NOT NULL,
  `jenis_identitas` varchar(250) NOT NULL,
  `selectable` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lps_ref_jenis_identitas` */

insert  into `lps_ref_jenis_identitas`(`id`,`sandi`,`jenis_identitas`,`selectable`) values 
(1,'1','Kartu Tanda Penduduk',1),
(2,'2','Paspor',1),
(3,'3','KITAS/KITAP',1),
(4,'4','Kartu Keluarga',1);

/*Table structure for table `lps_ref_jenis_kewajiban` */

DROP TABLE IF EXISTS `lps_ref_jenis_kewajiban`;

CREATE TABLE `lps_ref_jenis_kewajiban` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selecttable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_jenis_kewajiban` */

insert  into `lps_ref_jenis_kewajiban`(`id`,`sandi`,`deskripsi_sandi`,`selecttable`) values 
(1,'01','Dalam rangka pembiayaan bersama (sindikasi)',1),
(2,'02','DDisalurkan melalui bank/lembaga keuangan lain)',1),
(3,'03','Langsung kepada debitur BPR yang bersangkutan',1),
(4,'04','Dalam rangka kerjasama dengan lembaga keuangan bukan bank untuk disalurkan kembali kepada UMKM',1),
(5,'30','Pembiayaan Proyek',1),
(6,'99','Jenis Kredit/Pembiayaan Lainnya',1);

/*Table structure for table `lps_ref_jenis_simpanan` */

DROP TABLE IF EXISTS `lps_ref_jenis_simpanan`;

CREATE TABLE `lps_ref_jenis_simpanan` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `sandi` char(3) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_jenis_simpanan` */

insert  into `lps_ref_jenis_simpanan`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'DEP','Deposito',1),
(2,'TAB','Tabungan',1);

/*Table structure for table `lps_ref_jenis_tingkat_bunga` */

DROP TABLE IF EXISTS `lps_ref_jenis_tingkat_bunga`;

CREATE TABLE `lps_ref_jenis_tingkat_bunga` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sandi` tinyint(4) NOT NULL,
  `deskripsi_sandi` varchar(50) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_jenis_tingkat_bunga` */

insert  into `lps_ref_jenis_tingkat_bunga`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,0,'Tidak Ada',1),
(2,1,'Fixed',1),
(3,2,'Floating',1);

/*Table structure for table `lps_ref_kab_kota` */

DROP TABLE IF EXISTS `lps_ref_kab_kota`;

CREATE TABLE `lps_ref_kab_kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kotakab` varchar(250) NOT NULL,
  `sandi` char(4) NOT NULL,
  `selectable` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lps_ref_kab_kota` */

insert  into `lps_ref_kab_kota`(`id`,`nama_kotakab`,`sandi`,`selectable`) values 
(1,'Lainnya Tidak terdefinisi','0000',0),
(2,'Provinsi Jawa Barat','0100',0),
(3,'Kab. Bekasi ','0102',1),
(4,'Kab. Purwakarta ','0103',1),
(5,'Kab. Karawang','0106',1),
(6,'Kab. Bogor ','0108',1),
(7,'Kab. Sukabumi ','0109',1),
(8,'Kab. Cianjur ','0110',1),
(9,'Kab. Bandung ','0111',1),
(10,'Kab. Sumedang','0112',1),
(11,'Kab. Tasikmalaya','0113',1),
(12,'Kab. Garut ','0114',1),
(13,'Kab. Ciamis ','0115',1),
(14,'Kab. Cirebon ','0116',1),
(15,'Kab. Kuningan ','0117',1),
(16,'Kab. Indramayu ','0118',1),
(17,'Kab. Majalengka ','0119',1),
(18,'Kab. Subang ','0121',1),
(19,'Kab. Bandung Barat','0122',1),
(20,'Kab. Pangandaran','0123',1),
(21,'Kota Banjar','0180',1),
(22,'Kota Bandung ','0191',1),
(23,'Kota Bogor ','0192',1),
(24,'Kota Sukabumi ','0193',1),
(25,'Kota Cirebon ','0194',1),
(26,'Kota Tasikmalaya ','0195',1),
(27,'Kota Cimahi ','0196',1),
(28,'Kota Depok ','0197',1),
(29,'Kota Bekasi ','0198',1),
(30,'Provinsi Banten','0200',0),
(31,'Kab. Lebak ','0201',1),
(32,'Kab. Pandeglang ','0202',1),
(33,'Kab. Serang   ','0203',1),
(34,'Kab. Tangerang ','0204',1),
(35,'Kota Cilegon','0291',1),
(36,'Kota Tangerang ','0292',1),
(37,'Kota Serang','0293',1),
(38,'Kota Tangerang Selatan','0294',1),
(39,'Provinsi DKI Jakarta Raya','0300',0),
(40,'Wil. Kota Jakarta Pusat ','0391',1),
(41,'Wil. Kota Jakarta Utara ','0392',1),
(42,'Wil. Kota Jakarta Barat ','0393',1),
(43,'Wil. Kota Jakarta Selatan','0394',1),
(44,'Wil. Kota Jakarta Timur ','0395',1),
(45,'Wil. Kab. Administrasi Kepulauan Seribu','0396',1),
(46,'Daerah Istimewa Yogyakarta','0500',1),
(47,'Kab. Bantul','0501',1),
(48,'Kab. Sleman ','0502',1),
(49,'Kab. Gunung Kidul ','0503',1),
(50,'Kab. Kulon Progo ','0504',1),
(51,'Kota Yogyakarta','0591',1),
(52,'Provinsi Jawa Tengah','0900',0),
(53,'Kab. Semarang','0901',1),
(54,'Kab. Kendal ','0902',1),
(55,'Kab. Demak ','0903',1),
(56,'Kab. Grobogan ','0904',1),
(57,'Kab. Pekalongan ','0905',1),
(58,'Kab. Tegal ','0906',1),
(59,'Kab. Brebes ','0907',1),
(60,'Kab. Pati ','0908',1),
(61,'Kab. Kudus ','0909',1),
(62,'Kab. Pemalang ','0910',1),
(63,'Kab. Jepara ','0911',1),
(64,'Kab. Rembang ','0912',1),
(65,'Kab. Blora ','0913',1),
(66,'Kab. Banyumas ','0914',1),
(67,'Kab. Cilacap ','0915',1),
(68,'Kab. Purbalingga ','0916',1),
(69,'Kab. Banjarnegara ','0917',1),
(70,'Kab. Magelang ','0918',1),
(71,'Kab. Temanggung ','0919',1),
(72,'Kab. Wonosobo ','0920',1),
(73,'Kab. Purworejo ','0921',1),
(74,'Kab. Kebumen ','0922',1),
(75,'Kab. Klaten ','0923',1),
(76,'Kab. Boyolali ','0924',1),
(77,'Kab. Sragen ','0925',1),
(78,'Kab. Sukoharjo ','0926',1),
(79,'Kab. Karanganyar ','0927',1),
(80,'Kab. Wonogiri ','0928',1),
(81,'Kab. Batang ','0929',1),
(82,'Kota Semarang ','0991',1),
(83,'Kota Salatiga ','0992',1),
(84,'Kota Pekalongan ','0993',1),
(85,'Kota Tegal ','0994',1),
(86,'Kota Magelang ','0995',1),
(87,'Kota Surakarta/Solo ','0996',1),
(88,'Provinsi Jawa Timur','1200',0),
(89,'Kab. Gresik','1201',1),
(90,'Kab. Sidoarjo ','1202',1),
(91,'Kab. Mojokerto ','1203',1),
(92,'Kab. Jombang ','1204',1),
(93,'Kab. Sampang ','1205',1),
(94,'Kab. Pamekasan ','1206',1),
(95,'Kab. Sumenep ','1207',1),
(96,'Kab. Bangkalan ','1208',1),
(97,'Kab. Bondowoso ','1209',1),
(98,'Kab. Banyuwangi ','1211',1),
(99,'Kab. Jember','1212',1),
(100,'Kab. Malang ','1213',1),
(101,'Kab. Pasuruan ','1214',1),
(102,'Kab. Probolinggo ','1215',1),
(103,'Kab. Lumajang ','1216',1),
(104,'Kab. Kediri ','1217',1),
(105,'Kab. Nganjuk ','1218',1),
(106,'Kab. Tulungagung ','1219',1),
(107,'Kab. Trenggalek ','1220',1),
(108,'Kab. Blitar ','1221',1),
(109,'Kab. Madiun ','1222',1),
(110,'Kab. Ngawi ','1223',1),
(111,'Kab. Magetan ','1224',1),
(112,'Kab. Ponorogo ','1225',1),
(113,'Kab. Pacitan ','1226',1),
(114,'Kab. Bojonegoro ','1227',1),
(115,'Kab. Tuban ','1228',1),
(116,'Kab. Lamongan ','1229',1),
(117,'Kab. Situbondo ','1230',1),
(118,'Kota Batu','1271',1),
(119,'Kota Surabaya ','1291',1),
(120,'Kota Mojokerto ','1292',1),
(121,'Kota Malang ','1293',1),
(122,'Kota Pasuruan ','1294',1),
(123,'Kota Probolinggo ','1295',1),
(124,'Kota Blitar ','1296',1),
(125,'Kota Kediri ','1297',1),
(126,'Kota Madiun ','1298',1),
(127,'Provinsi Bengkulu','2300',0),
(128,'Kab. Bengkulu Selatan','2301',1),
(129,'Kab. Bengkulu Utara ','2302',1),
(130,'Kab. Rejang Lebong ','2303',1),
(131,'Kab. Lebong','2304',1),
(132,'Kab. Kepahiang','2305',1),
(133,'Kab. Mukomuko','2306',1),
(134,'Kab. Seluma','2307',1),
(135,'Kab. Kaur','2308',1),
(136,'Kab. Bengkulu Tengah','2309',1),
(137,'Kota Bengkulu ','2391',1),
(138,'Provinsi Jambi','3100',0),
(139,'Kab. Batanghari ','3101',1),
(140,'Kab. Sarolangun','3104',1),
(141,'Kab. Kerinci ','3105',1),
(142,'Kab. Muaro Jambi   ','3106',1),
(143,'Kab. Tanjung Jabung Barat      ','3107',1),
(144,'Kab. Tanjung Jabung Timur     ','3108',1),
(145,'Kab. Tebo  ','3109',1),
(146,'Kab. Merangin   ','3111',1),
(147,'Kab. Bungo','3112',1),
(148,'Kota Jambi ','3191',1),
(149,'Kota Sungai Penuh','3192',1),
(150,'Provinsi Nanggroe Aceh Darussalam','3200',0),
(151,'Kab. Aceh Besar ','3201',1),
(152,'Kab. Pidie ','3202',1),
(153,'Kab. Aceh Utara ','3203',1),
(154,'Kab. Aceh Timur ','3204',1),
(155,'Kab. Aceh Selatan ','3205',1),
(156,'Kab. Aceh Barat ','3206',1),
(157,'Kab. Aceh Tengah ','3207',1),
(158,'Kab. Aceh Tenggara ','3208',1),
(159,'Kab. Aceh Singkil     ','3209',1),
(160,'Kab. Aceh Jeumpa /Bireuen','3210',1),
(161,'Kab. Aceh Tamiang','3211',1),
(162,'Kab. Gayo Luwes','3212',1),
(163,'Kab. Aceh Barat Daya','3213',1),
(164,'Kab. Aceh Jaya','3214',1),
(165,'Kab. Nagan Raya','3215',1),
(166,'Kab. Simeuleu','3216',1),
(167,'Kab. Bener Meriah','3217',1),
(168,'Kab. Pidie Jaya','3218',1),
(169,'Kab. Subulussalam','3219',1),
(170,'Kota Banda Aceh ','3291',1),
(171,'Kota Sabang','3292',1),
(172,'Kota Lhokseumawe ','3293',1),
(173,'Kota Langsa   ','3294',1),
(174,'Provinsi Sumatera Utara','3300',0),
(175,'Kab. Deli Serdang ','3301',1),
(176,'Kab. Langkat ','3302',1),
(177,'Kab. Karo ','3303',1),
(178,'Kab. Simalungun','3304',1),
(179,'Kab. Labuhan Batu ','3305',1),
(180,'Kab. Asahan ','3306',1),
(181,'Kab. Dairi ','3307',1),
(182,'Kab. Tapanuli Utara ','3308',1),
(183,'Kab. Tapanuli Tengah ','3309',1),
(184,'Kab. Tapanuli Selatan ','3310',1),
(185,'Kab. Nias ','3311',1),
(186,'Kab. Toba Samosir    ','3313',1),
(187,'Kab. Mandailing Natal  ','3314',1),
(188,'Kab. Nias Selatan','3315',1),
(189,'Kab. Humbang Hasundutan','3316',1),
(190,'Kab. Pakpak Bharat','3317',1),
(191,'Kab. Samosir','3318',1),
(192,'Kab. Serdang Bedagai','3319',1),
(193,'Kab. Batu Bara','3321',1),
(194,'Kab. Padang Lawas','3322',1),
(195,'Kab. Padang Lawas Utara','3323',1),
(196,'Kab. Labuanbatu Selatan ','3324',1),
(197,'Kab. Labuanbatu Utara','3325',1),
(198,'Kab. Nias Barat','3326',1),
(199,'Kab. Nias Utara','3327',1),
(200,'Kota Tebing Tinggi ','3391',1),
(201,'Kota Binjai ','3392',1),
(202,'Kota Pematang Siantar ','3393',1),
(203,'Kota Tanjung Balai ','3394',1),
(204,'Kota Sibolga','3395',1),
(205,'Kota Medan ','3396',1),
(206,'Kota Gunung Sitoli','3397',1),
(207,'Kota Padang Sidempuan ','3399',1),
(208,'Provinsi Sumatera Barat','3400',0),
(209,'Kab. Agam ','3401',1),
(210,'Kab. Pasaman ','3402',1),
(211,'Kab. Limapuluh Kota','3403',1),
(212,'Kab. Solok Selatan','3404',1),
(213,'Kab. Padang Pariaman ','3405',1),
(214,'Kab. Pesisir Selatan ','3406',1),
(215,'Kab. Tanah Datar ','3407',1),
(216,'Kab. Sawah Lunto/Sijunjung','3408',1),
(217,'Kab. Kepulauan Mentawai   ','3409',1),
(218,'Kab. Pasaman Barat','3410',1),
(219,'Kab. Dharmasraya','3411',1),
(220,'Kab. Solok','3412',1),
(221,'Kota Bukittinggi ','3491',1),
(222,'Kota Padang','3492',1),
(223,'Kota Sawahlunto','3493',1),
(224,'Kota Padang Panjang ','3494',1),
(225,'Kota Solok ','3495',1),
(226,'Kota Payakumbuh ','3496',1),
(227,'Kota Pariaman ','3497',1),
(228,'Provinsi Riau','3500',0),
(229,'Kab. Kampar','3501',1),
(230,'Kab. Bengkalis ','3502',1),
(231,'Kab. Indragiri Hulu ','3504',1),
(232,'Kab. Indragiri Hilir','3505',1),
(233,'Kab. Rokan Hulu','3508',1),
(234,'Kab. Rokan Hilir   ','3509',1),
(235,'Kab. Pelalawan  ','3510',1),
(236,'Kab. Siak ','3511',1),
(237,'Kab. Kuantan Singingi   ','3512',1),
(238,'Kab. Kepulauan Meranti','3513',1),
(239,'Kota Pekanbaru ','3591',1),
(240,'Kota Dumai ','3592',1),
(241,'Provinsi Sumatera Selatan','3600',0),
(242,'Kab. Musi Banyuasin ','3606',1),
(243,'Kab. Ogan Komering Ulu ','3607',1),
(244,'Kab. Lematang Ilir Ogan Tengah (Muara Enim) ','3608',1),
(245,'Kab. Lahat','3609',1),
(246,'Kab. Musi Rawas ','3610',1),
(247,'Kab. Ogan Komering Ilir ','3611',1),
(248,'Kab. Banyuasin','3613',1),
(249,'Kab. Ogan Komering Ulu Selatan','3614',1),
(250,'Kab. Ogan Komering Ulu Timur','3615',1),
(251,'Kab. Ogan Ilir','3616',1),
(252,'Kab. Empat Lawang','3617',1),
(253,'Kab. Musi Rawas Utara','3618',1),
(254,'Kab. Penukal Abab Lematang Ilir','3619',1),
(255,'Kota Palembang ','3691',1),
(256,'Kota Lubuklinggau ','3693',1),
(257,'Kota Prabumulih ','3694',1),
(258,'Kota Pagar Alam   ','3697',1),
(259,'Provinsi Kep. Bangka Belitung','3700',0),
(260,'Kab. Bangka ','3701',1),
(261,'Kab. Belitung','3702',1),
(262,'Kab. Bangka Barat','3703',1),
(263,'Kab. Bangka Selatan','3704',1),
(264,'Kab. Bangka Tengah','3705',1),
(265,'Kab. Belitung Timur ','3706',1),
(266,'Kota Pangkal Pinang','3707',1),
(267,'Kota Pangkal Pinang ','3791',1),
(268,'Provinsi Kep. Riau','3800',0),
(269,'Kab. Karimun','3801',1),
(270,'Kab. Lingga','3802',1),
(271,'Kab. Natuna','3803',1),
(272,'Kab. Bintan (d/h Kabupaten Kepulauan Riau)','3804',1),
(273,'Kab. Kepulauan Anambas','3805',1),
(274,'Kota Tanjung Pinang ','3891',1),
(275,'Kota Batam','3892',1),
(276,'Provinsi Lampung','3900',0),
(277,'Kab. Lampung Selatan ','3901',1),
(278,'Kab. Lampung Tengah ','3902',1),
(279,'Kab. Lampung Utara ','3903',1),
(280,'Kab. Lampung Barat ','3904',1),
(281,'Kab. Tulang Bawang ','3905',1),
(282,'Kab. Tanggamus ','3906',1),
(283,'Kab. Lampung Timur','3907',1),
(284,'Kab. Way Kanan','3908',1),
(285,'Kab. Pesawaran','3909',1),
(286,'Kab. Pringsewu','3910',1),
(287,'Kab. Tulang Bawang Barat','3911',1),
(288,'Kab. Mesuji','3912',1),
(289,'Kab. Pesisir Barat','3913',1),
(290,'Kota Bandar Lampung ','3991',1),
(291,'Kota  Metro ','3992',1),
(292,'Provinsi Kalimantan Selatan','5100',0),
(293,'Kab. Banjar ','5101',1),
(294,'Kab. Tanah Laut ','5102',1),
(295,'Kab. Tapin ','5103',1),
(296,'Kab. Hulu Sungai Selatan','5104',1),
(297,'Kab. Hulu Sungai Tengah ','5105',1),
(298,'Kab. Hulu Sungai Utara ','5106',1),
(299,'Kab. Barito Kuala ','5107',1),
(300,'Kab. Kota Baru ','5108',1),
(301,'Kab. Tabalong','5109',1),
(302,'Kab. Tanah Bumbu','5110',1),
(303,'Kab. Balangan','5111',1),
(304,'Kota Banjarmasin ','5191',1),
(305,'Kota Banjarbaru ','5192',1),
(306,'Provinsi Kalimantan Barat','5300',0),
(307,'Kab. Pontianak ','5301',1),
(308,'Kab. Sambas ','5302',1),
(309,'Kab. Ketapang ','5303',1),
(310,'Kab. Sanggau ','5304',1),
(311,'Kab. Sintang ','5305',1),
(312,'Kab. Kapuas Hulu ','5306',1),
(313,'Kab. Bengkayang    ','5307',1),
(314,'Kab. Landak   ','5308',1),
(315,'Kab. Sekadau','5309',1),
(316,'Kab. Melawi','5310',1),
(317,'Kab. Kayong Utara','5311',1),
(318,'Kab. Kubu Raya','5312',1),
(319,'Kota Pontianak ','5391',1),
(320,'Kota Singkawang ','5392',1),
(321,'Provinsi Kalimantan Timur','5400',0),
(322,'Kab. Kutai Kartanegara','5401',1),
(323,'Kab. Berau ','5402',1),
(324,'Kab. Paser','5403',1),
(325,'Kab. Bulungan ','5404',1),
(326,'Kab. Kutai Barat   ','5405',1),
(327,'Kab. Kutai Timur ','5406',1),
(328,'Kab. Nunukan','5409',1),
(329,'Kab. Malinau','5410',1),
(330,'Kab. Penajam Paser Utara','5411',1),
(331,'Kab. Tana Tidung','5412',1),
(332,'kab. Mahakam Ulu','5413',1),
(333,'Kota Samarinda ','5491',1),
(334,'Kota Balikpapan ','5492',1),
(335,'Kota Tarakan ','5493',1),
(336,'Kota Bontang ','5494',1),
(337,'Provinsi Kalimantan Utara','5500',0),
(338,'Provinsi Kalimantan Tengah','5800',0),
(339,'Kab. Kapuas ','5801',1),
(340,'Kab. Kotawaringin Barat ','5802',1),
(341,'Kab. Kotawaringin Timur','5803',1),
(342,'Kab. Murung Raya','5804',1),
(343,'Kab. Barito Timur','5805',1),
(344,'Kab. Barito Selatan ','5806',1),
(345,'Kab. Gunung Mas','5807',1),
(346,'Kab. Barito Utara','5808',1),
(347,'Kab. Pulang Pisau','5809',1),
(348,'Kab. Seruyan','5810',1),
(349,'Kab. Katingan','5811',1),
(350,'Kab. Sukamara','5812',1),
(351,'Kab. Lamandau','5813',1),
(352,'Kota Palangkaraya ','5892',1),
(353,'Provinsi Sulawesi Tengah','6000',0),
(354,'Kab. Donggala ','6001',1),
(355,'Kab. Poso ','6002',1),
(356,'Kab. Banggai ','6003',1),
(357,'Kab. Toli-Toli','6004',1),
(358,'Kab. Banggai Kepulauan   ','6005',1),
(359,'Kab. Morowali  ','6006',1),
(360,'Kab. Buol    ','6007',1),
(361,'Kab. Tojo Una-Una','6008',1),
(362,'Kab. Parigi Moutong','6009',1),
(363,'Kab. Sigi ','6010',1),
(364,'Kab. Banggai Laut','6011',1),
(365,'Kab. Morowali Utara','6012',1),
(366,'Kota Palu ','6091',1),
(367,'Provinsi Sulawesi Selatan','6100',0),
(368,'Kab. Pinrang ','6101',1),
(369,'Kab. Gowa ','6102',1),
(370,'Kab. Wajo ','6103',1),
(371,'Kab. Bone ','6105',1),
(372,'Kab. Tana Toraja ','6106',1),
(373,'Kab. Maros ','6107',1),
(374,'Kab. Luwu','6109',1),
(375,'Kab. Sinjai ','6110',1),
(376,'Kab. Bulukumba ','6111',1),
(377,'Kab. Bantaeng ','6112',1),
(378,'Kab. Jeneponto ','6113',1),
(379,'Kab. Kepulauan Selayar ','6114',1),
(380,'Kab. Takalar ','6115',1),
(381,'Kab. Barru ','6116',1),
(382,'Kab. Sidenreng Rappang ','6117',1),
(383,'Kab. Pangkajene Kepulauan ','6118',1),
(384,'Kab. Soppeng (d/h Watansoppeng) ','6119',1),
(385,'Kab. Enrekang ','6121',1),
(386,'Kab. Luwu Timur (d/h Luwu Selatan)','6122',1),
(387,'Kab. Luwu Utara  ','6124',1),
(388,'Kab. Toraja Utara','6125',1),
(389,'Kota Makassar','6191',1),
(390,'Kota Pare-Pare ','6192',1),
(391,'Kota Palopo','6193',1),
(392,'Provinsi Sulawesi Utara','6200',0),
(393,'Kab. Minahasa ','6202',1),
(394,'Kab. Bolaang Mongondow ','6203',1),
(395,'Kab. Kepulauan Sangihe ','6204',1),
(396,'Kab. kepulauan Talaud ','6205',1),
(397,'Kab. Minahasa Selatan ','6206',1),
(398,'Kab. Minahasa Utara','6207',1),
(399,'Kab. Minahasa Tenggara','6209',1),
(400,'Kab. Bolaang Mongondow Utara','6210',1),
(401,'Kab. Kepulauan Sitaro','6211',1),
(402,'Kab. Bolaang Mongondow Selatan','6212',1),
(403,'Kab. Bolaang Mongondow Timur','6213',1),
(404,'Kota Manado ','6291',1),
(405,'Kota Kotamobagu','6292',1),
(406,'Kota Bitung ','6293',1),
(407,'Kota Tomohon','6294',1),
(408,'Provinsi Gorontalo','6300',0),
(409,'Kab. Gorontalo ','6301',1),
(410,'Kab. Bualemo   ','6302',1),
(411,'Kab. Bonebolango','6303',1),
(412,'Kab. Pohuwato','6304',1),
(413,'Kab. Gorontalo Utara','6305',1),
(414,'Kota Gorontalo ','6391',1),
(415,'Provinsi Sulawesi Barat','6400',0),
(416,'Kab. Polewali Mandar','6401',1),
(417,'Kab. Majene ','6402',1),
(418,'Kab. Mamasa ','6403',1),
(419,'Kab. Mamuju Utara','6404',1),
(420,'Kab. Mamuju Tengah','6405',1),
(421,'Kab. Mamuju','6406',1),
(422,'Kab Mamuju','6491',1),
(423,'Provinsi Sulawesi Tenggara','6900',0),
(424,'Kab. Buton ','6901',1),
(425,'Kab. Muna ','6903',1),
(426,'Kab. Kolaka ','6904',1),
(427,'Kab. Wakatobi','6905',1),
(428,'Kab. Konawe','6906',1),
(429,'Kab. Konawe Selatan ','6907',1),
(430,'Kab. Bombana','6908',1),
(431,'Kab. Kolaka Utara','6909',1),
(432,'Kab. Buton Utara','6910',1),
(433,'Kab. Konawe Utara','6911',1),
(434,'Kab. Kaloka Timur','6912',1),
(435,'Kab. Konawe Kepulauan','6913',1),
(436,'Kab. Buton Selatan','6914',1),
(437,'Kab. Buton Tengah','6915',1),
(438,'Kab. Muna Barat','6916',1),
(439,'Kota Bau-Bau ','6990',1),
(440,'Kota Kendari ','6991',1),
(441,'Provinsi Nusa Tenggara Barat','7100',0),
(442,'Kab. Lombok Barat ','7101',1),
(443,'Kab. Lombok Tengah ','7102',1),
(444,'Kab. Lombok Timur ','7103',1),
(445,'Kab. Sumbawa ','7104',1),
(446,'Kab. Bima ','7105',1),
(447,'Kab. Dompu ','7106',1),
(448,'Kab. Sumbawa Barat','7107',1),
(449,'Kab. Lombok Utara','7108',1),
(450,'Kota Mataram ','7191',1),
(451,'Kota Bima','7192',1),
(452,'Provinsi Bali','7200',0),
(453,'Kab. Buleleng ','7201',1),
(454,'Kab. Jembrana ','7202',1),
(455,'Kab. Tabanan ','7203',1),
(456,'Kab. Badung','7204',1),
(457,'Kab. Gianyar ','7205',1),
(458,'Kab. Klungkung ','7206',1),
(459,'Kab. Bangli ','7207',1),
(460,'Kab. Karangasem ','7208',1),
(461,'Kota Denpasar ','7291',1),
(462,'Provinsi Nusa Tenggara Timur','7400',0),
(463,'Kab. Kupang ','7401',1),
(464,'Kab. Timor-Tengah Selatan ','7402',1),
(465,'Kab. Timor-Tengah Utara ','7403',1),
(466,'Kab. Belu ','7404',1),
(467,'Kab. Alor ','7405',1),
(468,'Kab. Flores Timur ','7406',1),
(469,'Kab. Sikka ','7407',1),
(470,'Kab. Ende ','7408',1),
(471,'Kab. Ngada ','7409',1),
(472,'Kab. Manggarai ','7410',1),
(473,'Kab. Sumba Timur','7411',1),
(474,'Kab. Sumba Barat ','7412',1),
(475,'Kab. Lembata','7413',1),
(476,'Kab. Rote Ndao','7414',1),
(477,'Kab. Manggarai Barat','7415',1),
(478,'Kab. Sumba Tengah','7416',1),
(479,'Kab. Sumba Barat Daya','7417',1),
(480,'Kab. Manggarai Timur','7418',1),
(481,'Kab. Nagekeo','7419',1),
(482,'Kab. Sabu Raijua','7420',1),
(483,'Kab. Malaka','7421',1),
(484,'Kota Kupang ','7491',1),
(485,'Provinsi Maluku','8100',0),
(486,'Kab. Maluku Tengah ','8101',1),
(487,'Kab. Maluku Tenggara ','8102',1),
(488,'Kab. Maluku Tenggara Barat','8103',1),
(489,'Kab. Buru','8104',1),
(490,'Kab. Seram Bagian Barat','8105',1),
(491,'Kab. Seram Bagian Timur','8106',1),
(492,'Kab. Kepulauan Aru','8107',1),
(493,'Kab. Maluku Barat Daya ','8108',1),
(494,'Kab. Buru Selatan','8109',1),
(495,'Kota Ambon ','8191',1),
(496,'Kota Tual','8192',1),
(497,'Provinsi Papua','8200',0),
(498,'Kab. Jayapura ','8201',1),
(499,'Kab. Biak Numfor ','8202',1),
(500,'Kab. Kepulauan Yapen-Waropen ','8210',1),
(501,'Kab. Merauke ','8211',1),
(502,'Kab. Paniai ','8212',1),
(503,'Kab. Jayawijaya ','8213',1),
(504,'Kab. Nabire','8214',1),
(505,'Kab. Mimika','8215',1),
(506,'Kab. Puncak Jaya','8216',1),
(507,'Kab. Sarmi','8217',1),
(508,'Kab. Keerom','8218',1),
(509,'Kab. Pegunungan Bintang','8221',1),
(510,'Kab. Yahukimo','8222',1),
(511,'Kab. Tolikara','8223',1),
(512,'Kab. Waropen','8224',1),
(513,'Kab. Boven Digoel','8226',1),
(514,'Kab. Mappi','8227',1),
(515,'Kab. Asmat','8228',1),
(516,'Kab. Supiori','8231',1),
(517,'Kab. Mamberamo Raya','8232',1),
(518,'Kab. Dogiyai','8233',1),
(519,'Kab. Lanny Jaya','8234',1),
(520,'Kab. Mamberamo Tengah','8235',1),
(521,'Kab. Nduga','8236',1),
(522,'Kab. Yalimo','8237',1),
(523,'Kab. Puncak ','8238',1),
(524,'Kab. Intan Jaya','8239',1),
(525,'Kab. Deiya','8240',1),
(526,'Kota Jayapura ','8291',1),
(527,'Provinsi Maluku Utara','8300',0),
(528,'Kab. Halmahera Tengah  ','8302',1),
(529,'Kab. Halmahera Utara','8303',1),
(530,'Kab. Halmahera Timur','8304',1),
(531,'Kab. Halmahera Barat','8305',1),
(532,'Kab. Halmahera Selatan','8306',1),
(533,'Kab. Kepulauan Sula','8307',1),
(534,'Kab. Pulau Morotai','8308',1),
(535,'Kab. Pulau Taliabu','8309',1),
(536,'Kota Ternate   ','8390',1),
(537,'Kota Tidore Kepulauan','8391',1),
(538,'Provinsi Papua Barat','8400',0),
(539,'Kab. Sorong ','8401',1),
(540,'Kab. Fak-Fak ','8402',1),
(541,'Kab. Manokwari ','8403',1),
(542,'Kab. Sorong Selatan','8404',1),
(543,'Kab. Raja Ampat','8405',1),
(544,'Kab. Kaimana','8406',1),
(545,'Kab. Teluk Bintuni','8407',1),
(546,'Kab. Teluk Wondama','8408',1),
(547,'Kab. Tembrauw','8409',1),
(548,'Kab. Maybrat','8410',1),
(549,'Kab. Pegunungan Arfak','8411',1),
(550,'Kab. Manokwari Selatan','8412',1),
(551,'Kota Sorong','8491',1),
(552,'Di Luar Indonesia','9999',1);

/*Table structure for table `lps_ref_kategori_tingkat_bunga_simpanan` */

DROP TABLE IF EXISTS `lps_ref_kategori_tingkat_bunga_simpanan`;

CREATE TABLE `lps_ref_kategori_tingkat_bunga_simpanan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_kategori_tingkat_bunga_simpanan` */

insert  into `lps_ref_kategori_tingkat_bunga_simpanan`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'1','Tingkat bunga simpanan setelah memperhitungkan cashback tidak melebihi tingkat bunga penjaminan',1),
(2,'2.B','Tingkat bunga simpanan setelah memperhitungkan cashback melebihi tingkat bunga penjaminan',1);

/*Table structure for table `lps_ref_kategori_usaha` */

DROP TABLE IF EXISTS `lps_ref_kategori_usaha`;

CREATE TABLE `lps_ref_kategori_usaha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(5) NOT NULL,
  `deskripsi_sandi` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_kategori_usaha` */

insert  into `lps_ref_kategori_usaha`(`id`,`sandi`,`deskripsi_sandi`,`created_at`,`selectable`) values 
(1,'1','UMKM - Mikro','2025-10-06 10:33:11',1),
(2,'2','UMKM - Kecil','2025-10-06 10:33:11',1),
(3,'3','UMKM - Menengah','2025-10-06 10:33:11',1),
(4,'4','Lainnya','2025-10-06 10:33:11',1);

/*Table structure for table `lps_ref_kepemilikan_gedung` */

DROP TABLE IF EXISTS `lps_ref_kepemilikan_gedung`;

CREATE TABLE `lps_ref_kepemilikan_gedung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` char(2) NOT NULL,
  `kepemilikan_gedung` varchar(250) NOT NULL,
  `selectable` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lps_ref_kepemilikan_gedung` */

insert  into `lps_ref_kepemilikan_gedung`(`id`,`sandi`,`kepemilikan_gedung`,`selectable`) values 
(1,'01','Sewa',1),
(2,'02','Milik Sendiri',1),
(3,'99','Lainnya',1);

/*Table structure for table `lps_ref_ket_data_kantor` */

DROP TABLE IF EXISTS `lps_ref_ket_data_kantor`;

CREATE TABLE `lps_ref_ket_data_kantor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` char(1) NOT NULL,
  `nama_ket_data_kantor` varchar(250) NOT NULL,
  `selectable` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lps_ref_ket_data_kantor` */

insert  into `lps_ref_ket_data_kantor`(`id`,`sandi`,`nama_ket_data_kantor`,`selectable`) values 
(1,'1','Pembukaan kantor cabang',1),
(2,'2','Pembukaan kantor cabang yg berasal dari peningkatan status kantor kas',1),
(3,'3','Pemindahan alamat',1),
(4,'4','Tidak berubah',1),
(5,'5','Pembukaan KC yg berasal dari peningkatan status sentra keuangan khusus',1);

/*Table structure for table `lps_ref_kewarganegaraan` */

DROP TABLE IF EXISTS `lps_ref_kewarganegaraan`;

CREATE TABLE `lps_ref_kewarganegaraan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(255) NOT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_kewarganegaraan` */

insert  into `lps_ref_kewarganegaraan`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'WNI','Warga Negara Indonesia',1),
(2,'WNA','Warga Negara Asing',1);

/*Table structure for table `lps_ref_klasifikasi_rekening` */

DROP TABLE IF EXISTS `lps_ref_klasifikasi_rekening`;

CREATE TABLE `lps_ref_klasifikasi_rekening` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` char(1) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_klasifikasi_rekening` */

insert  into `lps_ref_klasifikasi_rekening`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'B','Beneficiary Account',1),
(2,'J','Joint Account',1),
(3,'R','Rekening Tunggal',1);

/*Table structure for table `lps_ref_kode_form` */

DROP TABLE IF EXISTS `lps_ref_kode_form`;

CREATE TABLE `lps_ref_kode_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_form` char(4) NOT NULL,
  `nama_form` varchar(250) NOT NULL,
  `nama_table` varchar(250) DEFAULT NULL,
  `kode_laporan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_form` (`kode_form`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_kode_form` */

insert  into `lps_ref_kode_form`(`id`,`kode_form`,`nama_form`,`nama_table`,`kode_laporan`) values 
(1,'0001','DAFTAR DATA NASABAH','lps_dn_f0001','DN'),
(2,'0002','DAFTAR DATA SIMPANAN NASABAH','lps_dsn_f0002','DSN'),
(3,'0003','DAFTAR DATA KEWAJIBAN NASABAH/KREDIT','lps_dk_f0003','DK'),
(4,'0004','DAFTAR DATA PERSEN KEPEMILIKAN','lps_dk_f0004','DSJ');

/*Table structure for table `lps_ref_kode_laporan` */

DROP TABLE IF EXISTS `lps_ref_kode_laporan`;

CREATE TABLE `lps_ref_kode_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` int(11) DEFAULT NULL,
  `kode_laporan` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `selectable` int(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_kode_laporan` */

insert  into `lps_ref_kode_laporan`(`id`,`sandi`,`kode_laporan`,`deskripsi_sandi`,`created_at`,`updated_at`,`selectable`) values 
(1,1,'DN','Informasi nasabah penyimpan pada data detail SCV per Nasabah','2025-10-01 10:23:21','2025-10-17 10:25:15',1),
(2,2,'DSN','Informasi simpanan nasabah pada data detail SCV per Nasabah','2025-10-01 10:23:21','2025-10-17 10:25:16',1),
(3,3,'DSJ','Informasi simpanan joint account pada data detail SCV per Nasabah','2025-10-01 10:23:21','2025-10-17 10:25:17',1),
(4,4,'DK','Informasi kewajiban nasabah pada data detail SCV per Nasabah','2025-10-01 10:23:21','2025-10-17 10:25:25',1);

/*Table structure for table `lps_ref_kolektibilitas` */

DROP TABLE IF EXISTS `lps_ref_kolektibilitas`;

CREATE TABLE `lps_ref_kolektibilitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(5) NOT NULL,
  `deskripsi_sandi` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_kolektibilitas` */

insert  into `lps_ref_kolektibilitas`(`id`,`sandi`,`deskripsi_sandi`,`created_at`,`selectable`) values 
(1,'1','Lancar','2025-10-06 10:30:15',1),
(2,'2','Dalam Perhatian Khusus','2025-10-06 10:30:15',1),
(3,'3','Kurang Lancar','2025-10-06 10:30:15',1),
(4,'4','Diragukan','2025-10-06 10:30:15',1),
(5,'5','Macet','2025-10-06 10:30:15',1),
(6,'H','Hapus Buku','2025-10-06 10:30:15',1);

/*Table structure for table `lps_ref_periode_laporan` */

DROP TABLE IF EXISTS `lps_ref_periode_laporan`;

CREATE TABLE `lps_ref_periode_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_periode` varchar(5) NOT NULL,
  `deskripsi_sandi` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_periode_laporan` */

insert  into `lps_ref_periode_laporan`(`id`,`kode_periode`,`deskripsi_sandi`,`created_at`,`updated_at`) values 
(1,'M','Periode Bulanan','2025-10-01 10:25:18','2025-10-01 10:25:18'),
(2,'S','Periode Semesteran','2025-10-01 10:25:18','2025-10-01 10:25:18'),
(3,'D','Sewaktu-waktu','2025-10-01 10:25:18','2025-10-01 10:25:18');

/*Table structure for table `lps_ref_status_dana` */

DROP TABLE IF EXISTS `lps_ref_status_dana`;

CREATE TABLE `lps_ref_status_dana` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sandi` char(1) NOT NULL,
  `deskripsi_sandi` varchar(255) DEFAULT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_status_dana` */

insert  into `lps_ref_status_dana`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'B','Berjangka',1),
(2,'C','Deposit on Call',1),
(3,'D','Sertifikat Deposito',1),
(4,'K','Dalam rangka kustodian',1),
(5,'S','Dapat ditarik sewaktu-waktu',1),
(6,'X','Lainnya',1);

/*Table structure for table `lps_ref_versi_laporan` */

DROP TABLE IF EXISTS `lps_ref_versi_laporan`;

CREATE TABLE `lps_ref_versi_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(10) NOT NULL,
  `deskripsi_sandi` varchar(255) NOT NULL,
  `selectable` smallint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_ref_versi_laporan` */

insert  into `lps_ref_versi_laporan`(`id`,`sandi`,`deskripsi_sandi`,`selectable`) values 
(1,'R','Laporan Rutin (penyampaian pertama kali)',1),
(2,'K1','Laporan Koreksi Pertama',1),
(3,'K2','Laporan Koreksi Kedua',1),
(4,'K..','Laporan Koreksi Ke..',1);

/*Table structure for table `my_logbin` */

DROP TABLE IF EXISTS `my_logbin`;

CREATE TABLE `my_logbin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime NOT NULL,
  `source_bin` mediumtext NOT NULL,
  `error_msg` mediumtext DEFAULT NULL,
  `flg_transfer` tinyint(1) NOT NULL DEFAULT 0,
  `waktu_transfer` datetime DEFAULT NULL,
  `AppVer` varchar(100) NOT NULL,
  `is_done` smallint(1) DEFAULT 0,
  `last_execute` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `waktu` (`waktu`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `my_logbin` */

/*Table structure for table `ogie_logbin` */

DROP TABLE IF EXISTS `ogie_logbin`;

CREATE TABLE `ogie_logbin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime NOT NULL,
  `source_bin` longtext NOT NULL,
  `error_msg` longtext DEFAULT NULL,
  `flg_transfer` tinyint(1) NOT NULL DEFAULT 0,
  `waktu_transfer` datetime DEFAULT NULL,
  `AppVer` varchar(100) NOT NULL,
  `is_done` smallint(1) DEFAULT 0,
  `last_execute` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ogie_logbin` */

/*Table structure for table `parameter` */

DROP TABLE IF EXISTS `parameter`;

CREATE TABLE `parameter` (
  `id` varchar(60) NOT NULL,
  `value` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='setting parameter';

/*Data for the table `parameter` */

insert  into `parameter`(`id`,`value`,`keterangan`) values 
('CEK_LAST_VERSION_LPSBPR','YA',NULL),
('LAST_VERSION_LPSBPR','1.0.0.0',NULL),
('LOCK_SYSTEM','TIDAK',NULL),
('MAX_LIMIT_PC_HO','5',NULL),
('MAX_LIMIT_ROW','25',NULL),
('OTORISASI_ANDROID','TIDAK',NULL),
('SYS_AKTIF_EOM_OTOMATIS','TIDAK',NULL),
('SYS_AKTIF_TUTUP_TRANSAKSI','',NULL),
('SYS_TANGGAL_TUTUP_TRANSAKSI_BULANAN00','30/09/2013',NULL),
('SYS_TANGGAL_TUTUP_TRANSAKSI00','30/09/2013',NULL),
('SYS_TRANSAKSI_MINGGU','TIDAK',NULL),
('SYS_TRANSAKSI_SABTU','YA',NULL);

/*Table structure for table `perkiraan` */

DROP TABLE IF EXISTS `perkiraan`;

CREATE TABLE `perkiraan` (
  `KODE_PERK` char(20) NOT NULL DEFAULT '',
  `NAMA_PERK` char(70) DEFAULT NULL,
  `KODE_INDUK` char(20) DEFAULT NULL,
  `LEVEL_PERK` int(11) DEFAULT 0,
  `G_OR_D` char(1) DEFAULT 'D',
  `SALDO_AWAL` decimal(20,2) DEFAULT 0.00,
  `SALDO_DEBET` decimal(20,2) DEFAULT 0.00,
  `SALDO_KREDIT` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR` decimal(20,2) DEFAULT 0.00,
  `IS_BANK` char(1) DEFAULT 'F',
  `D_OR_K` char(1) DEFAULT NULL,
  `JUST_A_TRIGGER` char(1) DEFAULT '0',
  `TYPE_PERK` char(15) DEFAULT NULL,
  `SALDO_AWAL_TEMP` decimal(20,2) DEFAULT 0.00,
  `SALDO_DEBET_TEMP` decimal(20,2) DEFAULT 0.00,
  `SALDO_KREDIT_TEMP` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP` decimal(20,2) DEFAULT 0.00,
  `TANGGAL_TEMP` date DEFAULT NULL,
  `SALDO_AKHIR_TEMP1` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP2` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP3` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP4` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP5` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP6` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP7` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP8` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP9` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP10` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP11` decimal(20,2) DEFAULT 0.00,
  `SALDO_AKHIR_TEMP12` decimal(20,2) DEFAULT 0.00,
  `TANGGAL_TEMP1` date DEFAULT NULL,
  `TANGGAL_TEMP2` date DEFAULT NULL,
  `rencana` decimal(20,2) DEFAULT NULL,
  `KODE_ALTERNATIF` char(20) DEFAULT NULL,
  `KODE_KONSOLIDASI` char(20) DEFAULT NULL,
  `SALDO_AWAL1` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL2` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL3` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL4` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL5` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL6` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL7` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL8` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL9` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL10` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL11` decimal(20,2) DEFAULT NULL,
  `SALDO_AWAL12` decimal(20,2) DEFAULT NULL,
  `saldo_001` decimal(20,2) DEFAULT NULL,
  `saldo_002` decimal(20,2) DEFAULT NULL,
  `saldo_003` decimal(20,2) DEFAULT NULL,
  `saldo_004` decimal(20,2) DEFAULT NULL,
  `saldo_005` decimal(20,2) DEFAULT NULL,
  `saldo_006` decimal(20,2) DEFAULT NULL,
  `saldo_007` decimal(20,2) DEFAULT NULL,
  `saldo_008` decimal(20,2) DEFAULT NULL,
  `saldo_009` decimal(20,2) DEFAULT NULL,
  `saldo_010` decimal(20,2) DEFAULT NULL,
  `saldo_011` decimal(20,2) DEFAULT NULL,
  `saldo_012` decimal(20,2) DEFAULT NULL,
  `saldo_013` decimal(20,2) DEFAULT NULL,
  `saldo_kons` decimal(20,2) DEFAULT NULL,
  `ID_PERK` int(11) NOT NULL,
  `ID_INDUK` int(11) NOT NULL,
  `rencana_01` decimal(20,2) DEFAULT NULL,
  `rencana_02` decimal(20,2) DEFAULT NULL,
  `rencana_03` decimal(20,2) DEFAULT NULL,
  `rencana_04` decimal(20,2) DEFAULT NULL,
  `rencana_05` decimal(20,2) DEFAULT NULL,
  `rencana_06` decimal(20,2) DEFAULT NULL,
  `rencana_07` decimal(20,2) DEFAULT NULL,
  `rencana_08` decimal(20,2) DEFAULT NULL,
  `rencana_09` decimal(20,2) DEFAULT NULL,
  `rencana_10` decimal(20,2) DEFAULT NULL,
  `rencana_11` decimal(20,2) DEFAULT NULL,
  `rencana_12` decimal(20,2) DEFAULT NULL,
  `realisasi_bulanan` decimal(20,2) DEFAULT NULL,
  `saldo_tahun_lalu` decimal(20,2) DEFAULT NULL,
  `kode_kantor_perk` char(3) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `BARIS_KARTU` int(11) DEFAULT NULL,
  `tgl_realisasi_perk` date DEFAULT NULL,
  `jkw_perk` int(11) DEFAULT NULL,
  `suku_bunga_perk` decimal(5,2) DEFAULT NULL,
  `sandi_bi` char(10) DEFAULT NULL,
  `flag_blokir` int(1) DEFAULT 0,
  `ket_blokir` char(100) DEFAULT NULL,
  `flag_posting` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`KODE_PERK`),
  UNIQUE KEY `ID_PERK` (`ID_PERK`),
  KEY `NAMA_PERK` (`NAMA_PERK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `perkiraan` */

/*Table structure for table `setup` */

DROP TABLE IF EXISTS `setup`;

CREATE TABLE `setup` (
  `cabang_id` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(60) NOT NULL DEFAULT '',
  `alamat` mediumtext NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `propinsi` varchar(50) NOT NULL,
  `negara` varchar(50) NOT NULL,
  `kd_pos` int(5) NOT NULL DEFAULT 0,
  `telp` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `npwp` varchar(30) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `tgl_aktif` date DEFAULT NULL,
  `tgl_pkp` date DEFAULT NULL,
  `kode_pajak` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cabang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='setup perusahaan';

/*Data for the table `setup` */

/*Table structure for table `sistem` */

DROP TABLE IF EXISTS `sistem`;

CREATE TABLE `sistem` (
  `jenis` varchar(100) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='system control';

/*Data for the table `sistem` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user` varchar(30) NOT NULL DEFAULT '',
  `nik` varchar(10) DEFAULT NULL,
  `password` varchar(64) NOT NULL DEFAULT '',
  `level` char(1) NOT NULL DEFAULT '',
  `kd_cabang` char(4) NOT NULL DEFAULT '01',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `divisi_id` varchar(12) NOT NULL DEFAULT '',
  `kode_jabatan` char(10) DEFAULT '',
  `jabatan` varchar(100) DEFAULT '',
  `tgl_register` date DEFAULT NULL,
  `tgl_expired` date DEFAULT NULL,
  `flg_block` enum('N','Y') NOT NULL DEFAULT 'N',
  `session` varchar(100) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_id_induk` int(11) DEFAULT 0,
  `user_code` char(1) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `flag` int(11) NOT NULL DEFAULT 0,
  `kode_perk_kas` char(20) NOT NULL DEFAULT '',
  `kode_perk_kas_utama` char(20) DEFAULT '',
  `penerimaan` decimal(18,2) NOT NULL DEFAULT 0.00,
  `pengeluaran` decimal(18,2) NOT NULL DEFAULT 0.00,
  `penerimaan_ob` decimal(18,2) NOT NULL DEFAULT 0.00,
  `pengeluaran_ob` decimal(18,2) NOT NULL DEFAULT 0.00,
  `plafon_caa` decimal(18,2) DEFAULT 0.00,
  `group_menu` varchar(50) NOT NULL DEFAULT '',
  `group_menu_webtool` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `imei` varchar(16) DEFAULT NULL,
  `reg_id_gcm` varchar(200) DEFAULT NULL,
  `fcm_token` varchar(200) DEFAULT NULL,
  `flg_busy` int(1) NOT NULL DEFAULT 0,
  `sound` varchar(50) DEFAULT 'beep',
  `kode_group3` char(5) DEFAULT '0',
  `kode_area` varchar(50) DEFAULT NULL,
  `kode_region` varchar(15) DEFAULT NULL,
  `id_lokasi` char(50) DEFAULT NULL,
  `ip_public` varchar(50) DEFAULT NULL,
  `flg_survey` smallint(1) DEFAULT 0,
  `min_survey` decimal(18,2) DEFAULT 0.00,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `initial` char(10) DEFAULT NULL,
  `is_login` smallint(1) DEFAULT 0 COMMENT '#untuk login fic',
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `access_menu_asuransi` char(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `tgl_resign` date DEFAULT NULL,
  PRIMARY KEY (`user`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user` (`user`),
  KEY `kd_cabang` (`kd_cabang`),
  KEY `nama` (`nama`),
  KEY `tgl_resign` (`tgl_resign`),
  KEY `nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='master user dan password untuk mengakses program';

/*Data for the table `user` */

insert  into `user`(`user`,`nik`,`password`,`level`,`kd_cabang`,`nama`,`divisi_id`,`kode_jabatan`,`jabatan`,`tgl_register`,`tgl_expired`,`flg_block`,`session`,`session_date`,`user_id`,`user_id_induk`,`user_code`,`ip_address`,`flag`,`kode_perk_kas`,`kode_perk_kas_utama`,`penerimaan`,`pengeluaran`,`penerimaan_ob`,`pengeluaran_ob`,`plafon_caa`,`group_menu`,`group_menu_webtool`,`email`,`no_hp`,`imei`,`reg_id_gcm`,`fcm_token`,`flg_busy`,`sound`,`kode_group3`,`kode_area`,`kode_region`,`id_lokasi`,`ip_public`,`flg_survey`,`min_survey`,`jam_masuk`,`jam_keluar`,`initial`,`is_login`,`last_update`,`access_menu_asuransi`,`photo`,`tgl_resign`) values 
('indra_maulana','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,855,706,'3','40.40.40.122',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2026-04-09 20:26:00',NULL,NULL,NULL);

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL DEFAULT '',
  `kd_menu` varchar(50) NOT NULL DEFAULT '',
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `ket` mediumtext DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `AppVer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kd_menu` (`kd_menu`),
  KEY `waktu` (`waktu`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log user yang mengakses program';

/*Data for the table `user_log` */

insert  into `user_log`(`id`,`user`,`kd_menu`,`waktu`,`ket`,`ip`,`AppVer`) values 
(370,'indra_maulana','fr_GetSystemDate','2026-04-09 20:26:00','Login Tgl System Sukses : indra_maulana Tgl System : 09 April 2026 IP : 40.40.40.122 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(371,'indra_maulana','fr_LoginBPR','2026-04-09 20:26:01','Login Sukses : indra_maulana Tanggal System : 09 April 2026 IP : 40.40.40.122 OS User : DH-IT INDRA',NULL,'1.0.0.0');

/*Table structure for table `user_password` */

DROP TABLE IF EXISTS `user_password`;

CREATE TABLE `user_password` (
  `user` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `tgl_expired` date NOT NULL,
  PRIMARY KEY (`user`,`password`,`tgl_expired`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='log_password';

/*Data for the table `user_password` */

insert  into `user_password`(`user`,`password`,`tgl_expired`) values 
('indra_maulana','202cb962ac59075b964b07152d234b70','2026-12-31');

/* Function  structure for function  `get_jam` */

/*!50003 DROP FUNCTION IF EXISTS `get_jam` */;
DELIMITER $$

/*!50003 CREATE FUNCTION `get_jam`() RETURNS time
BEGIN
  RETURN CURTIME();
END */$$
DELIMITER ;

/* Function  structure for function  `get_tgl` */

/*!50003 DROP FUNCTION IF EXISTS `get_tgl` */;
DELIMITER $$

/*!50003 CREATE FUNCTION `get_tgl`() RETURNS date
BEGIN
  RETURN CURDATE();
END */$$
DELIMITER ;

/*Table structure for table `view_nasabah_id` */

DROP TABLE IF EXISTS `view_nasabah_id`;

/*!50001 DROP VIEW IF EXISTS `view_nasabah_id` */;
/*!50001 DROP TABLE IF EXISTS `view_nasabah_id` */;

/*!50001 CREATE TABLE  `view_nasabah_id`(
 `nasabah_id` varchar(20) 
)*/;

/*View structure for view view_nasabah_id */

/*!50001 DROP TABLE IF EXISTS `view_nasabah_id` */;
/*!50001 DROP VIEW IF EXISTS `view_nasabah_id` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_nasabah_id` AS (select `xx`.`nasabah_id` AS `nasabah_id` from (select `lps_dsn_f0002`.`nasabah_id` AS `nasabah_id` from `lps_dsn_f0002` where `lps_dsn_f0002`.`saldo_akhir` > 0 union all select `lps_dk_f0003`.`nasabah_id` AS `nasabah_id` from `lps_dk_f0003` where `lps_dk_f0003`.`baki_debet` > 0 union all select `lps_dk_f0004`.`nasabah_id` AS `nasabah_id` from `lps_dk_f0004` where `lps_dk_f0004`.`no_rekening` in (select `lps_dsn_f0002`.`no_rekening` from `lps_dsn_f0002` where `lps_dsn_f0002`.`saldo_akhir` > 0)) `xx` group by `xx`.`nasabah_id`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
