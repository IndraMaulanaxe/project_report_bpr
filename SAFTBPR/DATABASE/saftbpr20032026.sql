/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - saftbpr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`saftbpr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `saftbpr`;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `daftar_dblock` */

insert  into `daftar_dblock`(`id`,`key_name`,`status`,`user_id`,`waktu`,`computer_name`,`computer_ip`,`computer_user`,`connection_id`) values 
(1,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-14 23:46:10','IT','192.168.1.7','DH-IT INDRA',NULL),
(2,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-17 05:06:29','IT','192.168.1.6','DH-IT INDRA',NULL),
(3,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-17 05:08:30','IT','192.168.1.6','DH-IT INDRA',NULL),
(4,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-17 15:52:44','IT','11.11.11.42','DH-IT INDRA',NULL),
(5,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-17 15:59:13','IT','11.11.11.42','DH-IT INDRA',NULL),
(6,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-17 16:10:16','IT','11.11.11.42','DH-IT INDRA',NULL),
(7,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-17 16:14:33','IT','11.11.11.42','DH-IT INDRA',NULL),
(8,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 04:15:32','IT','192.168.0.116','DH-IT INDRA',NULL),
(9,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 04:50:12','IT','192.168.0.116','DH-IT INDRA',NULL),
(10,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 04:57:02','IT','192.168.0.116','DH-IT INDRA',NULL),
(11,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 05:03:53','IT','192.168.0.116','DH-IT INDRA',NULL),
(12,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 05:08:58','IT','192.168.0.116','DH-IT INDRA',NULL),
(13,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 05:15:37','IT','192.168.0.116','DH-IT INDRA',NULL),
(14,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 05:43:21','IT','192.168.0.116','DH-IT INDRA',NULL),
(15,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 05:45:42','IT','192.168.0.116','DH-IT INDRA',NULL),
(16,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-19 05:47:05','IT','192.168.0.116','DH-IT INDRA',NULL),
(17,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-20 15:22:14','IT','192.168.0.116','DH-IT INDRA',NULL),
(18,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-20 15:23:48','IT','192.168.0.116','DH-IT INDRA',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `my_logbin` */

insert  into `my_logbin`(`id`,`waktu`,`source_bin`,`error_msg`,`flg_transfer`,`waktu_transfer`,`AppVer`,`is_done`,`last_execute`) values 
(1,'2026-03-17 05:10:13','TRUNCATE TABLE saftbpr.SAFTBPR01A','#42S02Table \'saftbpr.saftbpr01a\' doesn\'t exist',0,NULL,'1.0.0.0',0,'2026-03-17 05:10:13'),
(2,'2026-03-17 05:13:58','INSERT INTO saftbpr.saftbpr_01b SELECT \'D01\',\'0201000000\',\'AS\',\'AS12024000011\',\'701\',\'Keterangan Jenis Fraud\',\'303\',\'modus xxx\',\'04\',\'0191\',\'divisi xxx\',\'20240601\',\'20240630\',\'20240707\',\'001\',\'10000000\',\'Tindak Lanjut LJK\',\'001\',\'Nama Pelaku 1\',\'009\',\'\',\'L\',\'Cikini\',\'Cikini\',\'Jakarta\',\'19800101\',\'001\',\'001\',\'Keterangan Jabatan\',\'001\',\'Keterangan Jabatan\',\'\',\'Diberhentikan\',\'003\'','#23000Duplicate entry \'AS12024000011-\' for key \'PRIMARY\'',0,NULL,'1.0.0.0',0,'2026-03-17 05:13:58');

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
('CEK_LAST_VERSION_PROFIL_RISIKO','YA',NULL),
('CEK_LAST_VERSION_SAFTBPR','YA',NULL),
('LAST_VERSION_SAFTBPR','1.0.0.0',NULL),
('LOCK_SYSTEM','TIDAK',NULL),
('MAX_LIMIT_PC_HO','5',NULL),
('MAX_LIMIT_ROW','25',NULL),
('OTORISASI_ANDROID','TIDAK',NULL),
('SAFTBPR_JUMLAH_REC_PERFILE','1000',NULL),
('SAFTBPR_KODE_LJK','996',NULL),
('SAFTBPR_KODE_SEKTOR_LJK','010201',NULL),
('SYS_AKTIF_EOM_OTOMATIS','TIDAK',NULL),
('SYS_AKTIF_TUTUP_TRANSAKSI','',NULL),
('SYS_TANGGAL_TUTUP_TRANSAKSI_BULANAN00','30/09/2013',NULL),
('SYS_TANGGAL_TUTUP_TRANSAKSI00','30/09/2013',NULL),
('SYS_TRANSAKSI_MINGGU','TIDAK',NULL),
('SYS_TRANSAKSI_SABTU','YA',NULL);

/*Table structure for table `ref_kode_form` */

DROP TABLE IF EXISTS `ref_kode_form`;

CREATE TABLE `ref_kode_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_form` varchar(10) NOT NULL,
  `nama_form` varchar(250) NOT NULL,
  `nama_table` varchar(250) DEFAULT NULL,
  `is_footer` smallint(2) DEFAULT 0,
  `is_file` smallint(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_form` (`kode_form`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ref_kode_form` */

insert  into `ref_kode_form`(`id`,`kode_form`,`nama_form`,`nama_table`,`is_footer`,`is_file`) values 
(81,'01A','SAFTBPR01A','saftbpr_01a',0,0),
(82,'01B','SAFTBPR01B','saftbpr_01b',0,0),
(83,'00A','SAFTBPR00A','SAFTBPR00A',0,1),
(84,'02A','SAFTBPR02A','SAFTBPR02A',0,1),
(85,'02B','SAFTBPR02B','SAFTBPR02B',0,1);

/*Table structure for table `saftbpr_01a` */

DROP TABLE IF EXISTS `saftbpr_01a`;

CREATE TABLE `saftbpr_01a` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `kode_komponen` char(10) NOT NULL DEFAULT '0201000000',
  `kejadian_fraud_menurut_pelaku` char(2) NOT NULL,
  `id_kejadian_fraud` varchar(13) NOT NULL,
  `jenis_fraud` char(3) NOT NULL,
  `ket_jenis_fraud` varchar(500) DEFAULT NULL,
  `aktivitas_terkait_fraud` int(3) DEFAULT NULL,
  `deskripsi_fraud` varchar(4000) DEFAULT NULL,
  `lokasi_fraud` char(2) DEFAULT NULL,
  `ket_lokasi_fraud` char(4) DEFAULT NULL,
  `divisi_unit_kerja` varchar(250) DEFAULT NULL,
  `pihak_yang_dirugikan` char(3) NOT NULL,
  `waktu_terjadi_awal` date DEFAULT NULL,
  `waktu_terjadi_akhir` date DEFAULT NULL,
  `fraud_diketahui` date DEFAULT NULL,
  `ljk_riil` decimal(16,0) DEFAULT NULL,
  `ljk_potensial` decimal(16,0) DEFAULT NULL,
  `ljk_recovery` decimal(16,0) DEFAULT NULL,
  `konsumen_riil` decimal(16,0) DEFAULT NULL,
  `konsumen_potensial` decimal(16,0) DEFAULT NULL,
  `konsumen_recovery` decimal(16,0) DEFAULT NULL,
  `pihak_lain_riil` decimal(16,0) DEFAULT NULL,
  `pihak_lain_potensial` decimal(16,0) DEFAULT NULL,
  `pihak_lain_recovery` decimal(16,0) DEFAULT NULL,
  `kelemahan_penyebab_fraud` char(3) NOT NULL,
  `ket_kelemahan_fraud` varchar(1000) DEFAULT NULL,
  `tindakan_penanganan_fraud` char(2) NOT NULL,
  `ket_tindakan_penanganan` varchar(1000) DEFAULT NULL,
  `tindakan_pencegahan_fraud` char(3) NOT NULL,
  `ket_tindakan_pencegahan` varchar(1000) NOT NULL,
  `target_waktu_pelaksanaan` varchar(100) NOT NULL,
  `realisasi_pelaksanaan` varchar(100) NOT NULL,
  `intern_ekstern` char(3) NOT NULL,
  `nama_pelaku` varchar(50) NOT NULL,
  `jenis_identitas` char(3) NOT NULL,
  `nomor_identitas` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat_identitas` varchar(500) DEFAULT NULL,
  `alamat_domisili` varchar(500) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `status_pelaku` char(3) DEFAULT NULL,
  `jabatan_saat_fraud` char(3) DEFAULT NULL,
  `ket_jabatan_saat_fraud` varchar(100) DEFAULT NULL,
  `jabatan_saat_diketahui` char(3) DEFAULT NULL,
  `ket_jabatan_saat_diketahui` varchar(100) DEFAULT NULL,
  `keterangan_pelaku` char(3) DEFAULT NULL,
  `pengenaan_sanksi` varchar(200) DEFAULT NULL,
  `status_penanganan` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_kejadian_fraud`,`nomor_identitas`,`jenis_fraud`,`jenis_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saftbpr_01a` */

insert  into `saftbpr_01a`(`flag_detail`,`kode_komponen`,`kejadian_fraud_menurut_pelaku`,`id_kejadian_fraud`,`jenis_fraud`,`ket_jenis_fraud`,`aktivitas_terkait_fraud`,`deskripsi_fraud`,`lokasi_fraud`,`ket_lokasi_fraud`,`divisi_unit_kerja`,`pihak_yang_dirugikan`,`waktu_terjadi_awal`,`waktu_terjadi_akhir`,`fraud_diketahui`,`ljk_riil`,`ljk_potensial`,`ljk_recovery`,`konsumen_riil`,`konsumen_potensial`,`konsumen_recovery`,`pihak_lain_riil`,`pihak_lain_potensial`,`pihak_lain_recovery`,`kelemahan_penyebab_fraud`,`ket_kelemahan_fraud`,`tindakan_penanganan_fraud`,`ket_tindakan_penanganan`,`tindakan_pencegahan_fraud`,`ket_tindakan_pencegahan`,`target_waktu_pelaksanaan`,`realisasi_pelaksanaan`,`intern_ekstern`,`nama_pelaku`,`jenis_identitas`,`nomor_identitas`,`jenis_kelamin`,`alamat_identitas`,`alamat_domisili`,`tempat_lahir`,`tanggal_lahir`,`status_pelaku`,`jabatan_saat_fraud`,`ket_jabatan_saat_fraud`,`jabatan_saat_diketahui`,`ket_jabatan_saat_diketahui`,`keterangan_pelaku`,`pengenaan_sanksi`,`status_penanganan`) values 
('D01','0101000000','A','A12024000001','701','Keterangan Jenis Fraud',399,'kasus xxx','01','0391','kredit','001','2024-05-01','2024-05-30','2024-06-07',1000000,1000000,1000000,0,0,0,0,0,0,'901','das','19','das','900','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001');

/*Table structure for table `saftbpr_01a_arsip` */

DROP TABLE IF EXISTS `saftbpr_01a_arsip`;

CREATE TABLE `saftbpr_01a_arsip` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `kode_komponen` char(10) NOT NULL DEFAULT '0201000000',
  `kejadian_fraud_menurut_pelaku` char(2) NOT NULL,
  `id_kejadian_fraud` varchar(13) NOT NULL,
  `jenis_fraud` char(3) NOT NULL,
  `ket_jenis_fraud` varchar(500) DEFAULT NULL,
  `aktivitas_terkait_fraud` int(3) DEFAULT NULL,
  `deskripsi_fraud` varchar(4000) DEFAULT NULL,
  `lokasi_fraud` char(2) DEFAULT NULL,
  `ket_lokasi_fraud` char(4) DEFAULT NULL,
  `divisi_unit_kerja` varchar(250) DEFAULT NULL,
  `pihak_yang_dirugikan` char(3) NOT NULL,
  `waktu_terjadi_awal` date DEFAULT NULL,
  `waktu_terjadi_akhir` date DEFAULT NULL,
  `fraud_diketahui` date DEFAULT NULL,
  `ljk_riil` decimal(16,0) DEFAULT NULL,
  `ljk_potensial` decimal(16,0) DEFAULT NULL,
  `ljk_recovery` decimal(16,0) DEFAULT NULL,
  `konsumen_riil` decimal(16,0) DEFAULT NULL,
  `konsumen_potensial` decimal(16,0) DEFAULT NULL,
  `konsumen_recovery` decimal(16,0) DEFAULT NULL,
  `pihak_lain_riil` decimal(16,0) DEFAULT NULL,
  `pihak_lain_potensial` decimal(16,0) DEFAULT NULL,
  `pihak_lain_recovery` decimal(16,0) DEFAULT NULL,
  `kelemahan_penyebab_fraud` char(3) NOT NULL,
  `ket_kelemahan_fraud` varchar(1000) DEFAULT NULL,
  `tindakan_penanganan_fraud` char(2) NOT NULL,
  `ket_tindakan_penanganan` varchar(1000) DEFAULT NULL,
  `tindakan_pencegahan_fraud` char(3) NOT NULL,
  `ket_tindakan_pencegahan` varchar(1000) NOT NULL,
  `target_waktu_pelaksanaan` varchar(100) NOT NULL,
  `realisasi_pelaksanaan` varchar(100) NOT NULL,
  `intern_ekstern` char(3) NOT NULL,
  `nama_pelaku` varchar(50) NOT NULL,
  `jenis_identitas` char(3) NOT NULL,
  `nomor_identitas` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat_identitas` varchar(500) DEFAULT NULL,
  `alamat_domisili` varchar(500) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `status_pelaku` char(3) DEFAULT NULL,
  `jabatan_saat_fraud` char(3) DEFAULT NULL,
  `ket_jabatan_saat_fraud` varchar(100) DEFAULT NULL,
  `jabatan_saat_diketahui` char(3) DEFAULT NULL,
  `ket_jabatan_saat_diketahui` varchar(100) DEFAULT NULL,
  `keterangan_pelaku` char(3) DEFAULT NULL,
  `pengenaan_sanksi` varchar(200) DEFAULT NULL,
  `status_penanganan` char(3) DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`id_kejadian_fraud`,`nomor_identitas`,`kode_arsip`,`jenis_fraud`,`jenis_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saftbpr_01a_arsip` */

insert  into `saftbpr_01a_arsip`(`flag_detail`,`kode_komponen`,`kejadian_fraud_menurut_pelaku`,`id_kejadian_fraud`,`jenis_fraud`,`ket_jenis_fraud`,`aktivitas_terkait_fraud`,`deskripsi_fraud`,`lokasi_fraud`,`ket_lokasi_fraud`,`divisi_unit_kerja`,`pihak_yang_dirugikan`,`waktu_terjadi_awal`,`waktu_terjadi_akhir`,`fraud_diketahui`,`ljk_riil`,`ljk_potensial`,`ljk_recovery`,`konsumen_riil`,`konsumen_potensial`,`konsumen_recovery`,`pihak_lain_riil`,`pihak_lain_potensial`,`pihak_lain_recovery`,`kelemahan_penyebab_fraud`,`ket_kelemahan_fraud`,`tindakan_penanganan_fraud`,`ket_tindakan_penanganan`,`tindakan_pencegahan_fraud`,`ket_tindakan_pencegahan`,`target_waktu_pelaksanaan`,`realisasi_pelaksanaan`,`intern_ekstern`,`nama_pelaku`,`jenis_identitas`,`nomor_identitas`,`jenis_kelamin`,`alamat_identitas`,`alamat_domisili`,`tempat_lahir`,`tanggal_lahir`,`status_pelaku`,`jabatan_saat_fraud`,`ket_jabatan_saat_fraud`,`jabatan_saat_diketahui`,`ket_jabatan_saat_diketahui`,`keterangan_pelaku`,`pengenaan_sanksi`,`status_penanganan`,`kode_arsip`) values 
('D01','0101000000','A','A12024000001','701','Keterangan Jenis Fraud',399,'kasus xxx','01','0391','kredit','001','2024-05-01','2024-05-30','2024-06-07',1000000,1000000,1000000,0,0,0,0,0,0,'901','das','19','das','900','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTA_1_102024'),
('D01','0101000000','A','A12024000001','701','Keterangan Jenis Fraud',399,'kasus xxx','01','0391','kredit','001','2024-05-01','2024-05-30','2024-06-07',1000000,1000000,1000000,0,0,0,0,0,0,'901','das','19','das','900','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTA_1_31102024'),
('D01','0101000000','A','A12024000001','701','Keterangan Jenis Fraud',399,'kasus xxx','01','0391','kredit','001','2024-05-01','2024-05-30','2024-06-07',1000000,1000000,1000000,0,0,0,0,0,0,'901','das','19','das','900','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTS_1_102024'),
('D01','0101000000','A','A12024000001','701','Keterangan Jenis Fraud',399,'kasus xxx','01','0391','kredit','001','2024-05-01','2024-05-30','2024-06-07',1000000,1000000,1000000,0,0,0,0,0,0,'901','das','19','das','900','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTS_1_31102024'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTA_1_102024'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTA_1_31102024'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTS_1_102024'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTS_1_31102024');

/*Table structure for table `saftbpr_01b` */

DROP TABLE IF EXISTS `saftbpr_01b`;

CREATE TABLE `saftbpr_01b` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `kode_komponen` char(10) NOT NULL DEFAULT '0201000000',
  `kejadian_fraud_menurut_pelaku` char(2) NOT NULL,
  `id_kejadian_fraud` char(13) NOT NULL,
  `jenis_fraud` char(3) NOT NULL,
  `keterangan_jenis_fraud` varchar(500) DEFAULT NULL,
  `aktivitas_terkait_fraud` char(3) NOT NULL,
  `deskripsi_fraud` varchar(4000) NOT NULL,
  `lokasi_fraud` char(2) NOT NULL,
  `keterangan_lokasi_fraud` char(4) NOT NULL,
  `divisi_unit_kerja` varchar(250) NOT NULL,
  `waktu_terjadi_awal` date NOT NULL,
  `waktu_terjadi_akhir` date NOT NULL,
  `fraud_diketahui` date NOT NULL,
  `pihak_dirugikan` char(3) NOT NULL,
  `jumlah_kerugian_potensial` decimal(16,0) NOT NULL,
  `tindak_lanjut_ljk` varchar(4000) NOT NULL,
  `intern_ekstern` char(3) NOT NULL,
  `nama_pelaku` varchar(50) NOT NULL,
  `jenis_identitas` char(3) NOT NULL,
  `nomor_identitas` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat_identitas` varchar(500) DEFAULT NULL,
  `alamat_domisili` varchar(500) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `status_pelaku` char(3) DEFAULT NULL,
  `jabatan_saat_fraud` char(3) DEFAULT NULL,
  `ket_jabatan_saat_fraud` varchar(100) DEFAULT NULL,
  `jabatan_saat_diketahui` char(3) DEFAULT NULL,
  `ket_jabatan_saat_diketahui` varchar(100) DEFAULT NULL,
  `keterangan_pelaku` char(3) DEFAULT NULL,
  `pengenaan_sanksi` varchar(200) NOT NULL,
  `status_penanganan` char(3) NOT NULL,
  PRIMARY KEY (`id_kejadian_fraud`,`nomor_identitas`,`jenis_fraud`,`jenis_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saftbpr_01b` */

insert  into `saftbpr_01b`(`flag_detail`,`kode_komponen`,`kejadian_fraud_menurut_pelaku`,`id_kejadian_fraud`,`jenis_fraud`,`keterangan_jenis_fraud`,`aktivitas_terkait_fraud`,`deskripsi_fraud`,`lokasi_fraud`,`keterangan_lokasi_fraud`,`divisi_unit_kerja`,`waktu_terjadi_awal`,`waktu_terjadi_akhir`,`fraud_diketahui`,`pihak_dirugikan`,`jumlah_kerugian_potensial`,`tindak_lanjut_ljk`,`intern_ekstern`,`nama_pelaku`,`jenis_identitas`,`nomor_identitas`,`jenis_kelamin`,`alamat_identitas`,`alamat_domisili`,`tempat_lahir`,`tanggal_lahir`,`status_pelaku`,`jabatan_saat_fraud`,`ket_jabatan_saat_fraud`,`jabatan_saat_diketahui`,`ket_jabatan_saat_diketahui`,`keterangan_pelaku`,`pengenaan_sanksi`,`status_penanganan`) values 
('D01','0201000000','AS','AS12024000011','303','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003'),
('D01','0201000000','AS','AS12024000011','701','Keterangan Jenis Fraud','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003');

/*Table structure for table `saftbpr_01b_arsip` */

DROP TABLE IF EXISTS `saftbpr_01b_arsip`;

CREATE TABLE `saftbpr_01b_arsip` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `kode_komponen` char(10) NOT NULL DEFAULT '0201000000',
  `kejadian_fraud_menurut_pelaku` char(2) NOT NULL,
  `id_kejadian_fraud` char(13) NOT NULL,
  `jenis_fraud` char(3) NOT NULL,
  `keterangan_jenis_fraud` varchar(500) DEFAULT NULL,
  `aktivitas_terkait_fraud` char(3) NOT NULL,
  `deskripsi_fraud` varchar(4000) NOT NULL,
  `lokasi_fraud` char(2) NOT NULL,
  `keterangan_lokasi_fraud` char(4) NOT NULL,
  `divisi_unit_kerja` varchar(250) NOT NULL,
  `waktu_terjadi_awal` date NOT NULL,
  `waktu_terjadi_akhir` date NOT NULL,
  `fraud_diketahui` date NOT NULL,
  `pihak_dirugikan` char(3) NOT NULL,
  `jumlah_kerugian_potensial` decimal(16,0) NOT NULL,
  `tindak_lanjut_ljk` varchar(4000) NOT NULL,
  `intern_ekstern` char(3) NOT NULL,
  `nama_pelaku` varchar(50) NOT NULL,
  `jenis_identitas` char(3) NOT NULL,
  `nomor_identitas` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat_identitas` varchar(500) DEFAULT NULL,
  `alamat_domisili` varchar(500) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `status_pelaku` char(3) DEFAULT NULL,
  `jabatan_saat_fraud` char(3) DEFAULT NULL,
  `ket_jabatan_saat_fraud` varchar(100) DEFAULT NULL,
  `jabatan_saat_diketahui` char(3) DEFAULT NULL,
  `ket_jabatan_saat_diketahui` varchar(100) DEFAULT NULL,
  `keterangan_pelaku` char(3) DEFAULT NULL,
  `pengenaan_sanksi` varchar(200) NOT NULL,
  `status_penanganan` char(3) NOT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`id_kejadian_fraud`,`nomor_identitas`,`kode_arsip`,`jenis_fraud`,`jenis_identitas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saftbpr_01b_arsip` */

insert  into `saftbpr_01b_arsip`(`flag_detail`,`kode_komponen`,`kejadian_fraud_menurut_pelaku`,`id_kejadian_fraud`,`jenis_fraud`,`keterangan_jenis_fraud`,`aktivitas_terkait_fraud`,`deskripsi_fraud`,`lokasi_fraud`,`keterangan_lokasi_fraud`,`divisi_unit_kerja`,`waktu_terjadi_awal`,`waktu_terjadi_akhir`,`fraud_diketahui`,`pihak_dirugikan`,`jumlah_kerugian_potensial`,`tindak_lanjut_ljk`,`intern_ekstern`,`nama_pelaku`,`jenis_identitas`,`nomor_identitas`,`jenis_kelamin`,`alamat_identitas`,`alamat_domisili`,`tempat_lahir`,`tanggal_lahir`,`status_pelaku`,`jabatan_saat_fraud`,`ket_jabatan_saat_fraud`,`jabatan_saat_diketahui`,`ket_jabatan_saat_diketahui`,`keterangan_pelaku`,`pengenaan_sanksi`,`status_penanganan`,`kode_arsip`) values 
('D01','0201000000','AS','AS12024000011','303','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','AS','AS12024000011','701','Keterangan Jenis Fraud','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','AS','AS12024000011','303','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_31102024'),
('D01','0201000000','AS','AS12024000011','701','Keterangan Jenis Fraud','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_31102024'),
('D01','0201000000','AS','AS12024000011','303','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','701','Keterangan Jenis Fraud','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','303','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_31102024'),
('D01','0201000000','AS','AS12024000011','701','Keterangan Jenis Fraud','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_31102024'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_31102024'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_31102024'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_31102024'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_31102024'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003','SAFTI3_1_31102024'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003','SAFTI6_1_31102024'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_31102024'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_31102024');

/*Table structure for table `saftbpr_backup_log` */

DROP TABLE IF EXISTS `saftbpr_backup_log`;

CREATE TABLE `saftbpr_backup_log` (
  `kode_arsip` varchar(25) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `created_by` int(11) DEFAULT 0,
  `last_created` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `saftbpr_backup_log` */

insert  into `saftbpr_backup_log`(`kode_arsip`,`tgl_laporan`,`created_by`,`last_created`,`last_updated`) values 
('SAFTA_1_102024','2024-10-31',855,'2026-03-19 05:10:38','2026-03-19 05:10:38'),
('SAFTA_1_31102024','2024-10-31',855,'2026-03-20 15:30:29','2026-03-20 15:30:29'),
('SAFTI3_1_102024','2024-10-31',855,'2026-03-19 05:16:36','2026-03-19 05:16:36'),
('SAFTI3_1_31102024','2024-10-31',855,'2026-03-20 15:31:10','2026-03-20 15:31:10'),
('SAFTI6_1_102024','2024-10-31',855,'2026-03-19 05:17:07','2026-03-19 05:17:07'),
('SAFTI6_1_31102024','2024-10-31',855,'2026-03-20 15:31:59','2026-03-20 15:31:59'),
('SAFTS_1_102024','2024-10-31',855,'2026-03-19 05:09:38','2026-03-19 05:09:38'),
('SAFTS_1_31102024','2024-10-31',855,'2026-03-20 15:28:51','2026-03-20 15:28:51');

/*Table structure for table `saftbpr_header` */

DROP TABLE IF EXISTS `saftbpr_header`;

CREATE TABLE `saftbpr_header` (
  `flag_header` varchar(3) NOT NULL DEFAULT 'H01' COMMENT 'Diisi dengan "H01"',
  `kode_sektor` varchar(6) NOT NULL DEFAULT '010201' COMMENT 'Diisi dengan "010201" (BPR Konvensional)',
  `sandi_bpr` varchar(6) NOT NULL COMMENT 'Diisi dengan Sandi BPR',
  `periode_data` date NOT NULL COMMENT 'Format: YYYY-MM-DD dan menggunakan tanggal',
  `kode_jenis_pelaporan` varchar(6) NOT NULL DEFAULT 'SAFTA' COMMENT 'Diisi dengan kode jenis laporan: "SAFTA" (Laporan Berkala Tahunan), "SAFTS" (Laporan Berkala Semesteran), "SAFTI3" (Laporan Insidental 3HK), "SAFTI6" (Laporan Insidental 6HK)',
  `kode_form_laporan` varchar(6) NOT NULL COMMENT 'Diisi dengan Kode Form Laporan',
  `kode_periode_data` varchar(1) NOT NULL DEFAULT 'A',
  `kode_status_koreksi` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Diisi "0" untuk pelaporan rutin',
  `jenis_usaha` varchar(2) DEFAULT '01',
  PRIMARY KEY (`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_periode_data`,`kode_status_koreksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saftbpr_header` */

insert  into `saftbpr_header`(`flag_header`,`kode_sektor`,`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_periode_data`,`kode_status_koreksi`,`jenis_usaha`) values 
('H01','010201','996','2024-10-31','SAFTA','01A','A','0','01'),
('H01','010201','996','2024-10-31','SAFTI3','01B','I','0','01'),
('H01','010201','996','2024-10-31','SAFTI6','01B','I','0','01'),
('H01','010201','996','2024-10-31','SAFTS','01A','S','0','01');

/*Table structure for table `saftbpr_header_arsip` */

DROP TABLE IF EXISTS `saftbpr_header_arsip`;

CREATE TABLE `saftbpr_header_arsip` (
  `flag_header` varchar(3) NOT NULL DEFAULT 'H01' COMMENT 'Diisi dengan "H01"',
  `kode_sektor` varchar(6) NOT NULL DEFAULT '010201' COMMENT 'Diisi dengan "010201" (BPR Konvensional)',
  `sandi_bpr` varchar(6) NOT NULL COMMENT 'Diisi dengan Sandi BPR',
  `periode_data` date NOT NULL COMMENT 'Format: YYYY-MM-DD dan menggunakan tanggal',
  `kode_jenis_pelaporan` varchar(6) NOT NULL DEFAULT 'SAFTA' COMMENT 'Diisi dengan kode jenis laporan: "SAFTA" (Laporan Berkala Tahunan), "SAFTS" (Laporan Berkala Semesteran), "SAFTI3" (Laporan Insidental 3HK), "SAFTI6" (Laporan Insidental 6HK)',
  `kode_form_laporan` varchar(6) NOT NULL COMMENT 'Diisi dengan Kode Form Laporan',
  `kode_periode_data` varchar(1) NOT NULL DEFAULT 'A',
  `kode_status_koreksi` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Diisi "0" untuk pelaporan rutin',
  `jenis_usaha` varchar(2) DEFAULT '01',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_periode_data`,`kode_status_koreksi`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `saftbpr_header_arsip` */

insert  into `saftbpr_header_arsip`(`flag_header`,`kode_sektor`,`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_periode_data`,`kode_status_koreksi`,`jenis_usaha`,`kode_arsip`) values 
('H01','010201','996','2024-10-31','SAFTA','01A','A','0','01','SAFTA_1_102024'),
('H01','010201','996','2024-10-31','SAFTA','01A','A','0','01','SAFTA_1_31102024'),
('H01','010201','996','2024-10-31','SAFTI3','01B','I','0','01','SAFTI3_1_102024'),
('H01','010201','996','2024-10-31','SAFTI3','01B','I','0','01','SAFTI3_1_31102024'),
('H01','010201','996','2024-10-31','SAFTI6','01B','I','0','01','SAFTI6_1_102024'),
('H01','010201','996','2024-10-31','SAFTI6','01B','I','0','01','SAFTI6_1_31102024'),
('H01','010201','996','2024-10-31','SAFTS','01A','S','0','01','SAFTS_1_102024'),
('H01','010201','996','2024-10-31','SAFTS','01A','S','0','01','SAFTS_1_31102024');

/*Table structure for table `sistem` */

DROP TABLE IF EXISTS `sistem`;

CREATE TABLE `sistem` (
  `jenis` varchar(100) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='system control';

/*Data for the table `sistem` */

insert  into `sistem`(`jenis`,`tanggal`) values 
('TGL_SAFTBPR','2026-03-20');

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
('indra_maulana','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,855,706,'3','192.168.0.116',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2026-03-19 04:15:34',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log user yang mengakses program';

/*Data for the table `user_log` */

insert  into `user_log`(`id`,`user`,`kd_menu`,`waktu`,`ket`,`ip`,`AppVer`) values 
(1,'indra_maulana','fr_GetSystemDate','2026-03-14 23:46:12','Login Tgl System Sukses : indra_maulana Tgl System : 14 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(2,'indra_maulana','fr_LoginBPR','2026-03-14 23:46:13','Login Sukses : indra_maulana Tanggal System : 14 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(3,'indra_maulana','fr_GetSystemDate','2026-03-17 05:06:34','Login Tgl System Sukses : indra_maulana Tgl System : 17 Maret 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(4,'indra_maulana','fr_LoginBPR','2026-03-17 05:06:35','Login Sukses : indra_maulana Tanggal System : 17 Maret 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(5,'indra_maulana','fr_GetSystemDate','2026-03-17 05:08:32','Login Tgl System Sukses : indra_maulana Tgl System : 17 Maret 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(6,'indra_maulana','fr_LoginBPR','2026-03-17 05:08:32','Login Sukses : indra_maulana Tanggal System : 17 Maret 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(7,'indra_maulana','fr_GetSystemDate','2026-03-17 15:52:48','Login Tgl System Sukses : indra_maulana Tgl System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(8,'indra_maulana','fr_LoginBPR','2026-03-17 15:52:49','Login Sukses : indra_maulana Tanggal System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(9,'indra_maulana','fr_GetSystemDate','2026-03-17 15:59:15','Login Tgl System Sukses : indra_maulana Tgl System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(10,'indra_maulana','fr_LoginBPR','2026-03-17 15:59:16','Login Sukses : indra_maulana Tanggal System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(11,'indra_maulana','fr_GetSystemDate','2026-03-17 16:10:20','Login Tgl System Sukses : indra_maulana Tgl System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(12,'indra_maulana','fr_LoginBPR','2026-03-17 16:10:20','Login Sukses : indra_maulana Tanggal System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(13,'indra_maulana','fr_GetSystemDate','2026-03-17 16:14:35','Login Tgl System Sukses : indra_maulana Tgl System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(14,'indra_maulana','fr_LoginBPR','2026-03-17 16:14:35','Login Sukses : indra_maulana Tanggal System : 17 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(15,'indra_maulana','fr_GetSystemDate','2026-03-19 04:15:34','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(16,'indra_maulana','fr_LoginBPR','2026-03-19 04:15:35','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(17,'indra_maulana','fr_GetSystemDate','2026-03-19 04:50:14','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(18,'indra_maulana','fr_LoginBPR','2026-03-19 04:50:15','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(19,'indra_maulana','fr_GetSystemDate','2026-03-19 04:57:04','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(20,'indra_maulana','fr_LoginBPR','2026-03-19 04:57:05','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(21,'indra_maulana','fr_GetSystemDate','2026-03-19 05:03:54','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(22,'indra_maulana','fr_LoginBPR','2026-03-19 05:03:55','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(23,'indra_maulana','fr_GetSystemDate','2026-03-19 05:09:00','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(24,'indra_maulana','fr_LoginBPR','2026-03-19 05:09:01','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(25,'indra_maulana','fr_GetSystemDate','2026-03-19 05:15:46','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(26,'indra_maulana','fr_LoginBPR','2026-03-19 05:15:46','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(27,'indra_maulana','fr_GetSystemDate','2026-03-19 05:43:23','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(28,'indra_maulana','fr_LoginBPR','2026-03-19 05:43:24','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(29,'indra_maulana','fr_GetSystemDate','2026-03-19 05:45:44','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(30,'indra_maulana','fr_LoginBPR','2026-03-19 05:45:45','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(31,'indra_maulana','fr_GetSystemDate','2026-03-19 05:47:07','Login Tgl System Sukses : indra_maulana Tgl System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(32,'indra_maulana','fr_LoginBPR','2026-03-19 05:47:08','Login Sukses : indra_maulana Tanggal System : 19 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(33,'indra_maulana','fr_GetSystemDate','2026-03-20 15:22:16','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(34,'indra_maulana','fr_LoginBPR','2026-03-20 15:22:16','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(35,'indra_maulana','fr_GetSystemDate','2026-03-20 15:23:50','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(36,'indra_maulana','fr_LoginBPR','2026-03-20 15:23:51','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0');

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
