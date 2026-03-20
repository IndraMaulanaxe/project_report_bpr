/*
SQLyog Community v13.3.1 (64 bit)
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(17,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-20 03:30:28','DESKTOP-QEQVPKN','192.168.1.34','USER',NULL),
(18,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-20 03:34:11','DESKTOP-QEQVPKN','192.168.1.34','USER',NULL),
(19,'LOGIN_SAFTBPR_INDRA_MAULANA','Y','855','2026-03-20 03:35:42','DESKTOP-QEQVPKN','192.168.1.34','USER',NULL);

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

/*Table structure for table `ref_aktivitas_terkait_fraud` */

DROP TABLE IF EXISTS `ref_aktivitas_terkait_fraud`;

CREATE TABLE `ref_aktivitas_terkait_fraud` (
  `code` varchar(3) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_aktivitas_terkait_fraud` */

insert  into `ref_aktivitas_terkait_fraud`(`code`,`deskripsi`) values 
('301','Pendanaan'),
('302','Perkreditan/pembiayaan'),
('303','Penggunaan identitas dan data orang, pihak lain, atau konsumen'),
('304','Pengelolaan aset /investasi'),
('305','Penggunaan siber'),
('306','Pembukuan dan penyajian laporan keuangan'),
('307','Anti pencucian uang (APU), pencegahan pendanaan terorisme (PPT) dan pencegahan pendanaan proliferasi senjata pemusnah massal (PPPSPM)'),
('308','Transaksi efek'),
('309','Pemasaran'),
('310','Kustodian'),
('311','Penjatahan efek'),
('312','Due diligence penjaminan emisi efek'),
('313','Riset investasi'),
('314','Proses underwriting'),
('315','Pengelolaan iuran/premi/kontribusi/imbalan jasa penjaminan/kafalah'),
('316','Pengurusan klaim/manfaat pensiun'),
('317','Penilaian kerugian asuransi'),
('318','Proses pemilihan asuransi/reasuransi'),
('319','Pengelolaan surplus underwriting'),
('320','Pengelolaan data kepesertaan'),
('321','Proses subrogasi'),
('322','Pemberian jasa manajemen'),
('323','Layanan pendanaan bersama berbasis teknologi informasi'),
('324','Bullion'),
('325','Sekuritisasi'),
('326','Pendukung Pasar'),
('327','Aktivitas terkait Aset Keuangan Digital, termasuk Aset Kripto'),
('399','Aktivitas lain');

/*Table structure for table `ref_fraud_pelaku` */

DROP TABLE IF EXISTS `ref_fraud_pelaku`;

CREATE TABLE `ref_fraud_pelaku` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_fraud_pelaku` */

insert  into `ref_fraud_pelaku`(`code`,`deskripsi`) values 
('A','internal'),
('B','eksternal'),
('C','internal dan eksternal');

/*Table structure for table `ref_fraud_pelaku_join` */

DROP TABLE IF EXISTS `ref_fraud_pelaku_join`;

CREATE TABLE `ref_fraud_pelaku_join` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_fraud_pelaku_join` */

insert  into `ref_fraud_pelaku_join`(`code`,`deskripsi`) values 
('A','internal'),
('AS','internal (Berdampak Signifikan)'),
('B','eksternal'),
('BS','eksternal (Berdampak Signifikan)'),
('C','internal dan eksternal'),
('CS','internal dan eksternal (Berdampak Signifikan)');

/*Table structure for table `ref_fraud_pelaku_signifikan` */

DROP TABLE IF EXISTS `ref_fraud_pelaku_signifikan`;

CREATE TABLE `ref_fraud_pelaku_signifikan` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_fraud_pelaku_signifikan` */

insert  into `ref_fraud_pelaku_signifikan`(`code`,`deskripsi`) values 
('AS','internal'),
('BS','eksternal'),
('CS','internal dan eksternal');

/*Table structure for table `ref_jabatan_pelaku_saat_fraud_diketahui` */

DROP TABLE IF EXISTS `ref_jabatan_pelaku_saat_fraud_diketahui`;

CREATE TABLE `ref_jabatan_pelaku_saat_fraud_diketahui` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jabatan_pelaku_saat_fraud_diketahui` */

insert  into `ref_jabatan_pelaku_saat_fraud_diketahui`(`code`,`deskripsi`) values 
('1','Direktur Utama/Ketua Pengurus'),
('10','Tenaga Ahli dan Konsultan'),
('11','Komisaris Independen/Dewan Pengawas Independen'),
('18','Pejabat non Pejabat Eksekutif'),
('19','Pegawai non Pejabat'),
('2','Direktur/Pengurus'),
('3','Direktur Kepatuhan/Pengurus bidang Kepatuhan'),
('4','Komisaris Utama/Ketua Dewan Pengawas'),
('41','Pensiun Karir'),
('42','Pensiun Dini/Disabilitas'),
('43','Diberhentikan atas keinginan sendiri'),
('44','Berakhir masa kontrak/penugasan'),
('45','Meninggal dunia'),
('5','Komisaris/Dewan Pengawas'),
('6','Dewan Pengawas Syariah'),
('7','Pejabat Eksekutif'),
('8','Pemegang Saham Pengendali'),
('9','Pemegang Saham');

/*Table structure for table `ref_jabatan_pelaku_saat_fraud_terjadi` */

DROP TABLE IF EXISTS `ref_jabatan_pelaku_saat_fraud_terjadi`;

CREATE TABLE `ref_jabatan_pelaku_saat_fraud_terjadi` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jabatan_pelaku_saat_fraud_terjadi` */

insert  into `ref_jabatan_pelaku_saat_fraud_terjadi`(`code`,`deskripsi`) values 
('1','Direktur Utama/Ketua Pengurus'),
('10','Tenaga Ahli dan Konsultan'),
('11','Komisaris Independen/Dewan Pengawas Independen'),
('18','Pejabat non Pejabat Eksekutif'),
('19','Pegawai non Pejabat'),
('2','Direktur / Pengurus'),
('3','Direktur Kepatuhan/Pengurus bidang Kepatuhan'),
('4','Komisaris Utama/Ketua Dewan Pengawas'),
('5','Komisaris/Dewan Pengawas'),
('6','Dewan Pengawas Syariah'),
('7','Pejabat Eksekutif'),
('8','Pemegang Saham Pengendali'),
('9','Pemegang Saham');

/*Table structure for table `ref_jenis_fraud` */

DROP TABLE IF EXISTS `ref_jenis_fraud`;

CREATE TABLE `ref_jenis_fraud` (
  `code` varchar(3) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_fraud` */

insert  into `ref_jenis_fraud`(`code`,`deskripsi`) values 
('201','Korupsi (Pemerasan)'),
('202','Korupsi (Benturan kepentingan…)'),
('203','Korupsi (Penyuapan)'),
('204','Korupsi (Penerimaan tidak sah)'),
('301','Penyalahgunaan aset (uang tunai)'),
('302','Penyalahgunaan aset (persediaan)'),
('303','Penyalahgunaan aset (lainnya)'),
('401','Kecurangan laporan keuangan'),
('501','Penipuan'),
('601','Pembocoran informasi rahasia'),
('701','Tindakan lain yang dapat dipersamakan dengan fraud');

/*Table structure for table `ref_jenis_identitas` */

DROP TABLE IF EXISTS `ref_jenis_identitas`;

CREATE TABLE `ref_jenis_identitas` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_identitas` */

insert  into `ref_jenis_identitas`(`code`,`deskripsi`) values 
('1','KTP (Nomor Induk Kependudukan)'),
('2','Paspor (Nomor Paspor)'),
('3','NPWP (Nomor Pokok Wajib Pajak)'),
('9','Tidak Diketahui');

/*Table structure for table `ref_jenis_kelamin` */

DROP TABLE IF EXISTS `ref_jenis_kelamin`;

CREATE TABLE `ref_jenis_kelamin` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_kelamin` */

insert  into `ref_jenis_kelamin`(`code`,`deskripsi`) values 
('L','Laki-Laki'),
('P','Perempuan');

/*Table structure for table `ref_kelemahan_sebab_fraud` */

DROP TABLE IF EXISTS `ref_kelemahan_sebab_fraud`;

CREATE TABLE `ref_kelemahan_sebab_fraud` (
  `code` varchar(3) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kelemahan_sebab_fraud` */

insert  into `ref_kelemahan_sebab_fraud`(`code`,`deskripsi`) values 
('101','Sumber Daya Manusia – Integritas'),
('102','Sumber Daya Manusia – Kompetensi'),
('201','Sistem Pengendalian internal – Pengendalian internal Pimpinan'),
('202','Sistem Pengendalian internal - Pada Kebijakan internal LJK'),
('203','Sistem Pengendalian internal - Ketidaksesuaian atas Tingkat dan Toleransi Risiko'),
('204','Sistem Pengendalian internal - Pelanggaran Standar dan Prosedur LJK'),
('205','Sistem Pengendalian internal - Tidak Berjalannya Pemisahan Fungsi (Four Eyes Principle)'),
('206','Sistem Pengendalian internal - Pelaporan Keuangan dan Kegiatan Operasional yang Tidak Akurat dan Tidak Tepat Waktu'),
('207','Sistem Pengendalian internal - Struktur Organisasi yang Belum Berjalan Efektif'),
('301','Teknologi Informasi'),
('401','Penerapan Strategi Anti Fraud Belum Berjalan Efektif'),
('501','Eksternal – Kelalaian Konsumen'),
('502','Eksternal – Pemahaman Konsumen menjaga Kerahasiaan Data Pribadi'),
('503','Eksternal – Kecurangan Konsumen'),
('504','Eksternal – Kecurangan Pihak Lain'),
('901','Kelemahan Lain');

/*Table structure for table `ref_keterangan_pelaku` */

DROP TABLE IF EXISTS `ref_keterangan_pelaku`;

CREATE TABLE `ref_keterangan_pelaku` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_keterangan_pelaku` */

insert  into `ref_keterangan_pelaku`(`code`,`deskripsi`) values 
('1','Konsumen'),
('2','Pihak yang bekerjasama dengan LJK (antara lain vendor, investor, supplier, pejabat negara, atau rekanan)'),
('3','Pihak yang tidak berhubungan langsung dengan LJK');

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

/*Table structure for table `ref_kode_sektor` */

DROP TABLE IF EXISTS `ref_kode_sektor`;

CREATE TABLE `ref_kode_sektor` (
  `code` varchar(5) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kode_sektor` */

insert  into `ref_kode_sektor`(`code`,`deskripsi`) values 
('10101','Bank Umum Konvensional'),
('10102','Bank Umum Syariah'),
('10201','BPR Konvensional'),
('10202','BPR Syariah'),
('20101','Manajer Investasi'),
('20102','Manajer Investasi Syariah'),
('20103','Agen Penjual Efek Reksa Dana'),
('20201','Bursa Efek'),
('20202','Lembaga Kliring dan Penjaminan'),
('20203','Lembaga Penyimpanan dan Penyelesaian'),
('20204','Penyelenggara Perdagangan Surat Utang Negara di Luar Bursa Efek'),
('20205','Penyelenggara Program Perlindungan Investor Efek Indonesia'),
('20301','Perantara Pedagang Efek yang Mengadministrasikan Rekening Efek Nasabah'),
('20302','Perantara Pedagang Efek yang Tidak Mengadministrasikan Rekening Efek Nasabah'),
('20303','Penjamin Emisi Efek'),
('20304','Perantara Pedagang Efek EBUS'),
('20401','Perusahaan Perbankan'),
('20402','Perusahaan Asuransi'),
('20403','Perusahaan Pembiayaan'),
('20404','Perusahaan Sekuritas'),
('20405','Perusahaan Investasi'),
('20406','Perusahaan Perdagangan'),
('20407','Perusahaan Perhubungan'),
('20408','Perusahaan Telekomunikasi'),
('20409','Perusahaan Media Massa'),
('20410','Perusahaan Teknologi Informasi'),
('20411','Perusahaan Pariwisata'),
('20412','Perusahaan Jasa Lainnya'),
('20413','Perusahaan Properti'),
('20414','Perusahaan Perhotelan'),
('20415','Perusahaan Real Estat'),
('20416','Perusahaan Konstruksi'),
('20417','Perusahaan Tekstil'),
('20418','Perusahaan Garmen'),
('20419','Perusahaan Alas Kaki'),
('20420','Perusahaan Barang Konsumsi'),
('20421','Perusahaan Aneka Industri Lainnya'),
('20422','Perusahaan Industri Dasar'),
('20423','Perusahaan Industri Logam'),
('20424','Perusahaan Industri Kimia'),
('20425','Perusahaan Pertambangan'),
('20426','Perusahaan Kehutanan'),
('20427','Perusahaan Agrobisnis'),
('20476','Pemerintah Daerah'),
('20501','Perusahaan Perbankan'),
('20502','Perusahaan Asuransi'),
('20503','Perusahaan Pembiayaan'),
('20504','Perusahaan Sekuritas'),
('20505','Perusahaan Investasi'),
('20506','Perusahaan Perdagangan'),
('20507','Perusahaan Perhubungan'),
('20508','Perusahaan Telekomunikasi'),
('20509','Perusahaan Media Massa'),
('20510','Perusahaan Teknologi Informasi'),
('20511','Perusahaan Pariwisata'),
('20512','Perusahaan Jasa Lainnya'),
('20513','Perusahaan Properti'),
('20514','Perusahaan Perhotelan'),
('20515','Perusahaan Real Estat'),
('20516','Perusahaan Konstruksi'),
('20517','Perusahaan Tekstil'),
('20518','Perusahaan Garmen'),
('20519','Perusahaan Alas Kaki'),
('20520','Perusahaan Barang Konsumsi'),
('20521','Perusahaan Aneka Industri Lainnya'),
('20522','Perusahaan Industri Dasar'),
('20523','Perusahaan Industri Logam'),
('20524','Perusahaan Industri Kimia'),
('20525','Perusahaan Pertambangan'),
('20526','Perusahaan Kehutanan'),
('20527','Perusahaan Agrobisnis'),
('20607','Kantor Akuntan Publik'),
('20702','Konsultan Hukum'),
('20703','Penilai'),
('20704','Notaris'),
('20705','Ahli Syariah Pasar Modal'),
('21001','Bank Kustodian'),
('21002','Perusahaan Pemeringkat Efek'),
('21003','Biro Administrasi Efek'),
('21004','Wali Amanat'),
('21101','Lembaga'),
('30401','Perusahaan Pergadaian Konvensional'),
('30402','Perusahaan Pergadaian Syariah'),
('30403','Perusahaan Penjaminan Konvensional'),
('30404','Perusahaan Penjaminan Syariah'),
('30416','Perusahaan Penyelenggara Layanan Pinjam Meminjam Uang Berbasis Teknologi'),
('30417','Perusahaan Penyelenggara Layanan Pinjam Meminjam Uang Berbasis Teknologi Syariah'),
('30421','IKD-Klaster Aggregator'),
('30423','IKD-Klaster Blockchain-Based'),
('30425','IKD-Klaster Claim Service Handling'),
('30427','IKD-Klaster Credit Scoring'),
('30429','IKD-Klaster E-KYC'),
('30431','IKD-Klaster Financial Planner'),
('30433','IKD-Klaster Financing Agent'),
('30435','IKD-Klaster Funding Agent'),
('30437','IKD-Klaster Insurance Broker Marketplace'),
('30439','IKD-Klaster InsurTech'),
('30441','IKD-Klaster Online Distress Solution'),
('30443','IKD-Klaster Property Investment Management'),
('30445','IKD-Klaster RegTech'),
('30447','IKD-Klaster Tax & Accounting'),
('30449','IKD-Klaster Verification Non-CDD'),
('30451','IKD-Klaster Wealthtech'),
('30485','Lembaga Keuangan Mikro Konvensional'),
('30486','Lembaga Keuangan Mikro Syariah'),
('30488','Bank Wakaf Mikro'),
('30491','Lembaga Keuangan Khusus'),
('30492','Lembaga Keuangan Khusus'),
('30493','Lembaga Keuangan Khusus'),
('30494','Lembaga Keuangan Khusus'),
('30495','Lembaga Keuangan Khusus'),
('30497','Badan Penyelenggara Jaminan Sosial Ketenagakerjaan'),
('30499','Badan Penyelenggara Jaminan Sosial Kesehatan'),
('31201','Asuransi Jiwa'),
('31202','Asuransi Umum'),
('31203','Reasuransi Konvensional'),
('31204','Asuransi Jiwa Syariah'),
('31205','Asuransi Umum Syariah'),
('31206','Reasuransi Syariah'),
('31207','Pialang Asuransi'),
('31209','Pialang Reasuransi'),
('31210','Penilai Kerugian Asuransi'),
('31211','Asuransi Wajib'),
('31301','Dana Pensiun Pemberi Kerja Konvensional'),
('31302','Dana Pensiun Lembaga Keuangan Konvensional'),
('31303','Dana Pensiun Pemberi Kerja Syariah'),
('31304','Dana Pensiun Lembaga Keuangan Syariah'),
('31401','Perusahaan Pembiayaan Konvensional'),
('31402','Perusahaan Pembiayaan Syariah'),
('31403','Modal Ventura Konvensional'),
('31404','Modal Ventura Syariah'),
('31405','Perusahaan Pembiayaan Infrastruktur'),
('31406','Perusahaan Pembiayaan Infrastruktur'),
('31407','Perusahaan Pembiayaan Infrastruktur Syariah');

/*Table structure for table `ref_lokasi_fraud` */

DROP TABLE IF EXISTS `ref_lokasi_fraud`;

CREATE TABLE `ref_lokasi_fraud` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_lokasi_fraud` */

insert  into `ref_lokasi_fraud`(`code`,`deskripsi`) values 
('1','Kantor Pusat Operasional'),
('10','Kantor Kas'),
('11','Kantor Fungsional/ Kantor Selain Kantor Cabang/ Kantor Pemasaran Reksadana/Gerai/Unit Layanan (Outlet)'),
('12','Payment Point'),
('13','Kas Keliling/Kas Mobil/Kas Terapung'),
('14','Kantor Perwakilan LJK yang berkedudukan di Luar Negeri'),
('15','Automatic Teller Machine/Cash Deposit Machine/Cash Recycling Machine'),
('2','Kantor Pusat Non Operasional'),
('3','Kantor Cabang LJK yang berkedudukan di Luar Negeri'),
('4','Kantor Wilayah'),
('5','Kantor Cabang (Dalam Negeri)'),
('6','Kantor cabang dari bank yang berada di Luar Negeri'),
('7','Kantor Cabang Pembantu LJK yang berkedudukan di Luar Negeri'),
('8','Kantor Cabang Pembantu (Dalam Negeri)'),
('9','Kantor Cabang Pembantu (Luar Negeri)');

/*Table structure for table `ref_pelaku_fraud` */

DROP TABLE IF EXISTS `ref_pelaku_fraud`;

CREATE TABLE `ref_pelaku_fraud` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_pelaku_fraud` */

insert  into `ref_pelaku_fraud`(`code`,`deskripsi`) values 
('1','Internal'),
('2','Eksternal');

/*Table structure for table `ref_perbaikan_cegah_fraud` */

DROP TABLE IF EXISTS `ref_perbaikan_cegah_fraud`;

CREATE TABLE `ref_perbaikan_cegah_fraud` (
  `code` varchar(3) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_perbaikan_cegah_fraud` */

insert  into `ref_perbaikan_cegah_fraud`(`code`,`deskripsi`) values 
('100','Sumber daya manusia'),
('200','Sistem pengendalian internal'),
('300','Teknologi informasi'),
('400','Penerapan Strategi Anti Fraud'),
('500','Koordinasi dengan asosiasi/regulator/instansi'),
('900','Tindakan lain');

/*Table structure for table `ref_pihak_rugi` */

DROP TABLE IF EXISTS `ref_pihak_rugi`;

CREATE TABLE `ref_pihak_rugi` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_pihak_rugi` */

insert  into `ref_pihak_rugi`(`code`,`deskripsi`) values 
('1','LJK'),
('2','Konsumen'),
('3','Pihak Lain');

/*Table structure for table `ref_sandi_kab_kota` */

DROP TABLE IF EXISTS `ref_sandi_kab_kota`;

CREATE TABLE `ref_sandi_kab_kota` (
  `code` varchar(4) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_sandi_kab_kota` */

insert  into `ref_sandi_kab_kota`(`code`,`deskripsi`) values 
('102','Kab. Bekasi'),
('103','Kab. Purwakarta'),
('106','Kab. Karawang'),
('108','Kab. Bogor'),
('109','Kab. Sukabumi'),
('110','Kab. Cianjur'),
('111','Kab. Bandung'),
('112','Kab. Sumedang'),
('113','Kab. Tasikmalaya'),
('114','Kab. Garut'),
('115','Kab. Ciamis'),
('116','Kab. Cirebon'),
('117','Kab. Kuningan'),
('118','Kab. Indramayu'),
('119','Kab. Majalengka'),
('1201','Kab. Gresik'),
('1202','Kab. Sidoarjo'),
('1203','Kab. Mojokerto'),
('1204','Kab. Jombang'),
('1205','Kab. Sampang'),
('1206','Kab. Pamekasan'),
('1207','Kab. Sumenep'),
('1208','Kab. Bangkalan'),
('1209','Kab. Bondowoso'),
('121','Kab. Subang'),
('1211','Kab. Banyuwangi'),
('1212','Kab. Jember'),
('1213','Kab. Malang'),
('1214','Kab. Pasuruan'),
('1215','Kab. Probolinggo'),
('1216','Kab. Lumajang'),
('1217','Kab. Kediri'),
('1218','Kab. Nganjuk'),
('1219','Kab. Tulungagung'),
('122','Kab. Bandung Barat'),
('1220','Kab. Trenggalek'),
('1221','Kab. Blitar'),
('1222','Kab. Madiun'),
('1223','Kab. Ngawi'),
('1224','Kab. Magetan'),
('1225','Kab. Ponorogo'),
('1226','Kab. Pacitan'),
('1227','Kab. Bojonegoro'),
('1228','Kab. Tuban'),
('1229','Kab. Lamongan'),
('123','Kab. Pangandaran'),
('1230','Kab. Situbondo'),
('1271','Kota Batu'),
('1291','Kota Surabaya'),
('1292','Kota Mojokerto'),
('1293','Kota Malang'),
('1294','Kota Pasuruan'),
('1295','Kota Probolinggo'),
('1296','Kota Blitar'),
('1297','Kota Kediri'),
('1298','Kota Madiun'),
('180','Kota Banjar'),
('191','Kota Bandung'),
('192','Kota Bogor'),
('193','Kota Sukabumi'),
('194','Kota Cirebon'),
('195','Kota Tasikmalaya'),
('196','Kota Cimahi'),
('197','Kota Depok'),
('198','Kota Bekasi'),
('201','Kab. Lebak'),
('202','Kab. Pandeglang'),
('203','Kab. Serang'),
('204','Kab. Tangerang'),
('2301','Kab. Bengkulu Selatan'),
('2302','Kab. Bengkulu Utara'),
('2303','Kab. Rejang Lebong'),
('2304','Kab. Lebong'),
('2305','Kab. Kepahiang'),
('2306','Kab. Mukomuko'),
('2307','Kab. Seluma'),
('2308','Kab. Kaur'),
('2309','Kab. Bengkulu Tengah'),
('2391','Kota Bengkulu'),
('291','Kota Cilegon'),
('292','Kota Tangerang'),
('293','Kota Serang'),
('294','Kota Tangerang Selatan'),
('3101','Kab. Batanghari'),
('3104','Kab. Sarolangun'),
('3105','Kab. Kerinci'),
('3106','Kab. Muaro Jambi'),
('3107','Kab. Tanjung Jabung Barat'),
('3108','Kab. Tanjung Jabung Timur'),
('3109','Kab. Tebo'),
('3111','Kab. Merangin'),
('3112','Kab. Bungo'),
('3191','Kota Jambi'),
('3192','Kota Sungai Penuh'),
('3201','Kab. Aceh Besar'),
('3202','Kab. Pidie'),
('3203','Kab. Aceh Utara'),
('3204','Kab. Aceh Timur'),
('3205','Kab. Aceh Selatan'),
('3206','Kab. Aceh Barat'),
('3207','Kab. Aceh Tengah'),
('3208','Kab. Aceh Tenggara'),
('3209','Kab. Aceh Singkil'),
('3210','Kab. Aceh Jeumpa /Bireuen'),
('3211','Kab. Aceh Tamiang'),
('3212','Kab. Gayo Luwes'),
('3213','Kab. Aceh Barat Daya'),
('3214','Kab. Aceh Jaya'),
('3215','Kab. Nagan Raya'),
('3216','Kab. Simeuleu'),
('3217','Kab. Bener Meriah'),
('3218','Kab. Pidie Jaya'),
('3219','Kab. Subulussalam'),
('3291','Kota Banda Aceh'),
('3292','Kota Sabang'),
('3293','Kota Lhokseumawe'),
('3294','Kota Langsa'),
('3301','Kab. Deli Serdang'),
('3302','Kab. Langkat'),
('3303','Kab. Karo'),
('3304','Kab. Simalungun'),
('3305','Kab. Labuhan Batu'),
('3306','Kab. Asahan'),
('3307','Kab. Dairi'),
('3308','Kab. Tapanuli Utara'),
('3309','Kab. Tapanuli Tengah'),
('3310','Kab. Tapanuli Selatan'),
('3311','Kab. Nias'),
('3313','Kab. Toba Samosir'),
('3314','Kab. Mandailing Natal'),
('3315','Kab. Nias Selatan'),
('3316','Kab. Humbang Hasundutan'),
('3317','Kab. Pakpak Bharat'),
('3318','Kab. Samosir'),
('3319','Kab. Serdang Bedagai'),
('3321','Kab. Batu Bara'),
('3322','Kab. Padang Lawas'),
('3323','Kab. Padang Lawas Utara'),
('3324','Kab. Labuanbatu Selatan'),
('3325','Kab. Labuanbatu Utara'),
('3326','Kab. Nias Barat'),
('3327','Kab. Nias Utara'),
('3391','Kota Tebing Tinggi'),
('3392','Kota Binjai'),
('3393','Kota Pematang Siantar'),
('3394','Kota Tanjung Balai'),
('3395','Kota Sibolga'),
('3396','Kota Medan'),
('3397','Kota Gunung Sitoli'),
('3399','Kota Padang Sidempuan'),
('3401','Kab. Agam'),
('3402','Kab. Pasaman'),
('3403','Kab. Limapuluh Kota'),
('3404','Kab. Solok Selatan'),
('3405','Kab. Padang Pariaman'),
('3406','Kab. Pesisir Selatan'),
('3407','Kab. Tanah Datar'),
('3408','Kab. Sawah Lunto/Sijunjung'),
('3409','Kab. Kepulauan Mentawai'),
('3410','Kab. Pasaman Barat'),
('3411','Kab. Dharmasraya'),
('3412','Kab. Solok'),
('3491','Kota Bukittinggi'),
('3492','Kota Padang'),
('3493','Kota Sawahlunto'),
('3494','Kota Padang Panjang'),
('3495','Kota Solok'),
('3496','Kota Payakumbuh'),
('3497','Kota Pariaman'),
('3501','Kab. Kampar'),
('3502','Kab. Bengkalis'),
('3504','Kab. Indragiri Hulu'),
('3505','Kab. Indragiri Hilir'),
('3508','Kab. Rokan Hulu'),
('3509','Kab. Rokan Hilir'),
('3510','Kab. Pelalawan'),
('3511','Kab. Siak'),
('3512','Kab. Kuantan Singingi'),
('3513','Kab. Kepulauan Meranti'),
('3591','Kota Pekanbaru'),
('3592','Kota Dumai'),
('3606','Kab. Musi Banyuasin'),
('3607','Kab. Ogan Komering Ulu'),
('3608','Kab. Lematang Ilir Ogan Tengah (Muara Enim)'),
('3609','Kab. Lahat'),
('3610','Kab. Musi Rawas'),
('3611','Kab. Ogan Komering Ilir'),
('3613','Kab. Banyuasin'),
('3614','Kab. Ogan Komering Ulu Selatan'),
('3615','Kab. Ogan Komering Ulu Timur'),
('3616','Kab. Ogan Ilir'),
('3617','Kab. Empat Lawang'),
('3618','Kab. Musi Rawas Utara'),
('3619','Kab. Penukal Abab Lematang Ilir'),
('3691','Kota Palembang'),
('3693','Kota Lubuklinggau'),
('3694','Kota Prabumulih'),
('3697','Kota Pagar Alam'),
('3701','Kab. Bangka'),
('3702','Kab. Belitung'),
('3703','Kab. Bangka Barat'),
('3704','Kab. Bangka Selatan'),
('3705','Kab. Bangka Tengah'),
('3706','Kab. Belitung Timur'),
('3707','Kota Pangkal Pinang'),
('3801','Kab. Karimun'),
('3802','Kab. Lingga'),
('3803','Kab. Natuna'),
('3804','Kab. Bintan (d/h Kabupaten Kepulauan Riau)'),
('3805','Kab. Kepulauan Anambas'),
('3891','Kota Tanjung Pinang'),
('3892','Kota Batam'),
('3901','Kab. Lampung Selatan'),
('3902','Kab. Lampung Tengah'),
('3903','Kab. Lampung Utara'),
('3904','Kab. Lampung Barat'),
('3905','Kab. Tulang Bawang'),
('3906','Kab. Tanggamus'),
('3907','Kab. Lampung Timur'),
('3908','Kab. Way Kanan'),
('3909','Kab. Pesawaran'),
('391','Wil. Kota Jakarta Pusat'),
('3910','Kab. Pringsewu'),
('3911','Kab. Tulang Bawang Barat'),
('3912','Kab. Mesuji'),
('3913','Kab. Pesisir Barat'),
('392','Wil. Kota Jakarta Utara'),
('393','Wil. Kota Jakarta Barat'),
('394','Wil. Kota Jakarta Selatan'),
('395','Wil. Kota Jakarta Timur'),
('396','Wil. Kepulauan Seribu'),
('3991','Kota Bandar Lampung'),
('3992','Kota Metro'),
('501','Kab. Bantul'),
('502','Kab. Sleman'),
('503','Kab. Gunung Kidul'),
('504','Kab. Kulon Progo'),
('5101','Kab. Banjar'),
('5102','Kab. Tanah Laut'),
('5103','Kab. Tapin'),
('5104','Kab. Hulu Sungai Selatan'),
('5105','Kab. Hulu Sungai Tengah'),
('5106','Kab. Hulu Sungai Utara'),
('5107','Kab. Barito Kuala'),
('5108','Kab. Kota Baru'),
('5109','Kab. Tabalong'),
('5110','Kab. Tanah Bumbu'),
('5111','Kab. Balangan'),
('5191','Kota Banjarmasin'),
('5192','Kota Banjarbaru'),
('5301','Kab. Pontianak'),
('5302','Kab. Sambas'),
('5303','Kab. Ketapang'),
('5304','Kab. Sanggau'),
('5305','Kab. Sintang'),
('5306','Kab. Kapuas Hulu'),
('5307','Kab. Bengkayang'),
('5308','Kab. Landak'),
('5309','Kab. Sekadau'),
('5310','Kab. Melawi'),
('5311','Kab. Kayong Utara'),
('5312','Kab. Kubu Raya'),
('5391','Kota Pontianak'),
('5392','Kota Singkawang'),
('5401','Kab. Kutai Kartanegara'),
('5402','Kab. Berau'),
('5403','Kab. Paser'),
('5404','Kab. Bulungan'),
('5405','Kab. Kutai Barat'),
('5406','Kab. Kutai Timur'),
('5409','Kab. Nunukan'),
('5410','Kab. Malinau'),
('5411','Kab. Penajam Paser Utara'),
('5412','Kab. Tana Tidung'),
('5413','Kab. Mahakam Ulu'),
('5491','Kota Samarinda'),
('5492','Kota Balikpapan'),
('5493','Kota Tarakan'),
('5494','Kota Bontang'),
('5801','Kab. Kapuas'),
('5802','Kab. Kotawaringin Barat'),
('5803','Kab. Kotawaringin Timur'),
('5804','Kab. Murung Raya'),
('5805','Kab. Barito Timur'),
('5806','Kab. Barito Selatan'),
('5807','Kab. Gunung Mas'),
('5808','Kab. Barito Utara'),
('5809','Kab. Pulang Pisau'),
('5810','Kab. Seruyan'),
('5811','Kab. Katingan'),
('5812','Kab. Sukamara'),
('5813','Kab. Lamandau'),
('5892','Kota Palangkaraya'),
('591','Kota Yogyakarta'),
('6001','Kab. Donggala'),
('6002','Kab. Poso'),
('6003','Kab. Banggai'),
('6004','Kab. Toli-Toli'),
('6005','Kab. Banggai Kepulauan'),
('6006','Kab. Morowali'),
('6007','Kab. Buol'),
('6008','Kab. Tojo Una-Una'),
('6009','Kab. Parigi Moutong'),
('6010','Kab. Sigi'),
('6011','Kab. Banggai Laut'),
('6012','Kab. Morowali Utara'),
('6091','Kota Palu'),
('6101','Kab. Pinrang'),
('6102','Kab. Gowa'),
('6103','Kab. Wajo'),
('6105','Kab. Bone'),
('6106','Kab. Tana Toraja'),
('6107','Kab. Maros'),
('6109','Kab. Luwu'),
('6110','Kab. Sinjai'),
('6111','Kab. Bulukumba'),
('6112','Kab. Bantaeng'),
('6113','Kab. Jeneponto'),
('6114','Kab. Kepulauan Selayar'),
('6115','Kab. Takalar'),
('6116','Kab. Barru'),
('6117','Kab. Sidenreng Rappang'),
('6118','Kab. Pangkajene Kepulauan'),
('6119','Kab. Soppeng (d/h Watansoppeng)'),
('6121','Kab. Enrekang'),
('6122','Kab. Luwu Timur (d/h Luwu Selatan)'),
('6124','Kab. Luwu Utara'),
('6125','Kab. Toraja Utara'),
('6191','Kota Makassar'),
('6192','Kota Pare-Pare'),
('6193','Kota Palopo'),
('6202','Kab. Minahasa'),
('6203','Kab. Bolaang Mongondow'),
('6204','Kab. Kepulauan Sangihe'),
('6205','Kab. kepulauan Talaud'),
('6206','Kab. Minahasa Selatan'),
('6207','Kab. Minahasa Utara'),
('6209','Kab. Minahasa Tenggara'),
('6210','Kab. Bolaang Mongondow Utara'),
('6211','Kab. Kepulauan Sitaro'),
('6212','Kab. Bolaang Mongondow Selatan'),
('6213','Kab. Bolaang Mongondow Timur'),
('6291','Kota Manado'),
('6292','Kota Kotamobagu'),
('6293','Kota Bitung'),
('6294','Kota Tomohon'),
('6301','Kab. Gorontalo'),
('6302','Kab. Bualemo'),
('6303','Kab. Bonebolango'),
('6304','Kab. Pohuwato'),
('6305','Kab. Gorontalo Utara'),
('6391','Kota Gorontalo'),
('6401','Kab. Polewali Mandar'),
('6402','Kab. Majene'),
('6403','Kab. Mamasa'),
('6404','Kab. Mamuju Utara'),
('6405','Kab. Mamuju Tengah'),
('6406','Kab. Mamuju'),
('6901','Kab. Buton'),
('6903','Kab. Muna'),
('6904','Kab. Kolaka'),
('6905','Kab. Wakatobi'),
('6906','Kab. Konawe'),
('6907','Kab. Konawe Selatan'),
('6908','Kab. Bombana'),
('6909','Kab. Kolaka Utara'),
('6910','Kab. Buton Utara'),
('6911','Kab. Konawe Utara'),
('6912','Kab. Kaloka Timur'),
('6913','Kab. Konawe Kepulauan'),
('6914','Kab. Buton Selatan'),
('6915','Kab. Buton Tengah'),
('6916','Kab. Muna Barat'),
('6990','Kota Bau-Bau'),
('6991','Kota Kendari'),
('7101','Kab. Lombok Barat'),
('7102','Kab. Lombok Tengah'),
('7103','Kab. Lombok Timur'),
('7104','Kab. Sumbawa'),
('7105','Kab. Bima'),
('7106','Kab. Dompu'),
('7107','Kab. Sumbawa Barat'),
('7108','Kab. Lombok Utara'),
('7191','Kota Mataram'),
('7192','Kota. Bima'),
('7201','Kab. Buleleng'),
('7202','Kab. Jembrana'),
('7203','Kab. Tabanan'),
('7204','Kab. Badung'),
('7205','Kab. Gianyar'),
('7206','Kab. Klungkung'),
('7207','Kab. Bangli'),
('7208','Kab. Karangasem'),
('7291','Kota Denpasar'),
('7401','Kab. Kupang'),
('7402','Kab. Timor-Tengah Selatan'),
('7403','Kab. Timor-Tengah Utara'),
('7404','Kab. Belu'),
('7405','Kab. Alor'),
('7406','Kab. Flores Timur'),
('7407','Kab. Sikka'),
('7408','Kab. Ende'),
('7409','Kab. Ngada'),
('7410','Kab. Manggarai'),
('7411','Kab. Sumba Timur'),
('7412','Kab. Sumba Barat'),
('7413','Kab. Lembata'),
('7414','Kab. Rote Ndao'),
('7415','Kab. Manggarai Barat'),
('7416','Kab. Sumba Tengah'),
('7417','Kab. Sumba Barat Daya'),
('7418','Kab. Manggarai Timur'),
('7419','Kab. Nagekeo'),
('7420','Kab. Sabu Raijua'),
('7421','Kab. Malaka'),
('7491','Kota Kupang'),
('8101','Kab. Maluku Tengah'),
('8102','Kab. Maluku Tenggara'),
('8103','Kab. Maluku Tenggara Barat'),
('8104','Kab. Buru'),
('8105','Kab. Seram Bagian Barat'),
('8106','Kab. Seram Bagian Timur'),
('8107','Kab. Kepulauan Aru'),
('8108','Kab. Maluku Barat Daya'),
('8109','Kab. Buru Selatan'),
('8191','Kota Ambon'),
('8192','Kota Tual'),
('8201','Kab. Jayapura'),
('8202','Kab. Biak Numfor'),
('8210','Kab. Kepulauan Yapen-Waropen'),
('8211','Kab. Merauke'),
('8212','Kab. Paniai'),
('8213','Kab. Jayawijaya'),
('8214','Kab. Nabire'),
('8215','Kab. Mimika'),
('8216','Kab. Puncak Jaya'),
('8217','Kab. Sarmi'),
('8218','Kab. Keerom'),
('8221','Kab. Pegunungan Bintang'),
('8222','Kab. Yahukimo'),
('8223','Kab. Tolikara'),
('8224','Kab. Waropen'),
('8226','Kab. Boven Digoel'),
('8227','Kab. Mappi'),
('8228','Kab. Asmat'),
('8231','Kab. Supiori'),
('8232','Kab. Mamberamo Raya'),
('8233','Kab. Dogiyai'),
('8234','Kab. Lanny Jaya'),
('8235','Kab. Mamberamo Tengah'),
('8236','Kab. Nduga'),
('8237','Kab. Yalimo'),
('8238','Kab. Puncak'),
('8239','Kab. Intan Jaya'),
('8240','Kab. Deiya'),
('8291','Kota Jayapura'),
('8302','Kab. Halmahera Tengah'),
('8303','Kab. Halmahera Utara'),
('8304','Kab. Halmahera Timur'),
('8305','Kab. Halmahera Barat'),
('8306','Kab. Halmahera Selatan'),
('8307','Kab. Kepulauan Sula'),
('8308','Kab. Pulau Morotai'),
('8309','Kab. Pulau Taliabu'),
('8390','Kota Ternate'),
('8391','Kota Tidore Kepulauan'),
('8401','Kab. Sorong'),
('8402','Kab. Fak-Fak'),
('8403','Kab. Manokwari'),
('8404','Kab. Sorong Selatan'),
('8405','Kab. Raja Ampat'),
('8406','Kab. Kaimana'),
('8407','Kab. Teluk Bintuni'),
('8408','Kab. Teluk Wondama'),
('8409','Kab. Tembrauw'),
('8410','Kab. Maybrat'),
('8411','Kab. Pegunungan Arfak'),
('8412','Kab. Manokwari Selatan'),
('8491','Kota Sorong'),
('901','Kab. Semarang'),
('902','Kab. Kendal'),
('903','Kab. Demak'),
('904','Kab. Grobogan'),
('905','Kab. Pekalongan'),
('906','Kab. Tegal'),
('907','Kab. Brebes'),
('908','Kab. Pati'),
('909','Kab. Kudus'),
('910','Kab. Pemalang'),
('911','Kab. Jepara'),
('912','Kab. Rembang'),
('913','Kab. Blora'),
('914','Kab. Banyumas'),
('915','Kab. Cilacap'),
('916','Kab. Purbalingga'),
('917','Kab. Banjarnegara'),
('918','Kab. Magelang'),
('919','Kab. Temanggung'),
('920','Kab. Wonosobo'),
('921','Kab. Purworejo'),
('922','Kab. Kebumen'),
('923','Kab. Klaten'),
('924','Kab. Boyolali'),
('925','Kab. Sragen'),
('926','Kab. Sukoharjo'),
('927','Kab. Karanganyar'),
('928','Kab. Wonogiri'),
('929','Kab. Batang'),
('991','Kota Semarang'),
('992','Kota Salatiga'),
('993','Kota Pekalongan'),
('994','Kota Tegal'),
('995','Kota Magelang'),
('996','Kota Surakarta/Solo'),
('9999','Di Luar Indonesia');

/*Table structure for table `ref_status` */

DROP TABLE IF EXISTS `ref_status`;

CREATE TABLE `ref_status` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_status` */

insert  into `ref_status`(`code`,`deskripsi`) values 
('1','Proses internal LJK'),
('2','Selesai diproses internal LJK'),
('3','Dalam proses penanganan aparat penegak hukum'),
('4','Berkekuatan hukum tetap (Inkracht)');

/*Table structure for table `ref_status_pelaku` */

DROP TABLE IF EXISTS `ref_status_pelaku`;

CREATE TABLE `ref_status_pelaku` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_status_pelaku` */

insert  into `ref_status_pelaku`(`code`,`deskripsi`) values 
('1','Pelaku Utama'),
('2','Pihak Terlibat');

/*Table structure for table `ref_tindakan_penanganan_fraud` */

DROP TABLE IF EXISTS `ref_tindakan_penanganan_fraud`;

CREATE TABLE `ref_tindakan_penanganan_fraud` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_tindakan_penanganan_fraud` */

insert  into `ref_tindakan_penanganan_fraud`(`code`,`deskripsi`) values 
('1','Pemberian surat peringatan'),
('10','Ganti rugi'),
('11','Pembatalan polis/kontrak'),
('12','Pencatatan dalam track record'),
('13','Pelaporan kepada asosiasi/regulator/instansi'),
('19','Tindakan lain'),
('2','Rotasi atau mutasi'),
('3','Penurunan jabatan'),
('4','Pengunduran diri sukarela'),
('5','Pemutusan hubungan kerja'),
('6','Pemblokiran kartu debit/kartu kredit'),
('7','Pemblokiran rekening'),
('8','Penggantian kartu debit/kartu kredit'),
('9','Pelaporan kepolisian atau tindakan hukum');

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
('D01','0101000000','A','A12024000001','701','Keterangan Jenis Fraud',399,'kasus xxx','01','0391','kredit','001','2024-05-01','2024-05-30','2024-06-07',1000000,1000000,1000000,0,0,0,0,0,0,'901','das','19','das','900','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTS_1_102024'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTA_1_102024'),
('D01','0101000000','A','A12024000002','202','',302,'kasus xxx','03','0391','kredit','002','2024-05-01','2024-05-30','2024-06-07',0,0,0,1000000,1000000,1000000,0,0,0,'102','','02','','200','keterangan perbaikan','20240701','20240630','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','001','SAFTS_1_102024');

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
('D01','0201000000','AS','AS12024000011','303','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','701','Keterangan Jenis Fraud','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','009','','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','AS','AS12024000011','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','AS','AS12024000011','201','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011124','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','BS','BS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','002','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','','','','','002','Diberhentikan','003','SAFTI6_1_102024'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI3_1_102024'),
('D01','0201000000','CS','CS12024000041','301','','303','modus xxx','04','0191','divisi xxx','2024-06-01','2024-06-30','2024-07-07','001',10000000,'Tindak Lanjut LJK','001','Nama Pelaku 1','001','1234567891011123','L','Cikini','Cikini','Jakarta','1980-01-01','001','001','Keterangan Jabatan','001','Keterangan Jabatan','','Diberhentikan','003','SAFTI6_1_102024');

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
('SAFTI3_1_102024','2024-10-31',855,'2026-03-19 05:16:36','2026-03-19 05:16:36'),
('SAFTI6_1_102024','2024-10-31',855,'2026-03-19 05:17:07','2026-03-19 05:17:07'),
('SAFTS_1_102024','2024-10-31',855,'2026-03-19 05:09:38','2026-03-19 05:09:38');

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
('H01','010201','996','2024-10-31','SAFTI3','01B','I','0','01','SAFTI3_1_102024'),
('H01','010201','996','2024-10-31','SAFTI6','01B','I','0','01','SAFTI6_1_102024'),
('H01','010201','996','2024-10-31','SAFTS','01A','S','0','01','SAFTS_1_102024');

/*Table structure for table `sistem` */

DROP TABLE IF EXISTS `sistem`;

CREATE TABLE `sistem` (
  `jenis` varchar(100) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='system control';

/*Data for the table `sistem` */

insert  into `sistem`(`jenis`,`tanggal`) values 
('TGL_SAFTBPR','2024-10-31');

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
('indra_maulana','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,855,706,'3','192.168.1.34',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2026-03-20 03:30:29',NULL,NULL,NULL),
('rudy','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,1,706,'3','192.168.1.6',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2025-11-15 21:37:53',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log user yang mengakses program';

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
(33,'indra_maulana','fr_GetSystemDate','2026-03-20 03:30:29','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.1.34 OS User : USER',NULL,'1.0.0.0'),
(34,'indra_maulana','fr_LoginBPR','2026-03-20 03:30:29','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.1.34 OS User : USER',NULL,'1.0.0.0'),
(35,'indra_maulana','fr_GetSystemDate','2026-03-20 03:34:14','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.1.34 OS User : USER',NULL,'1.0.0.0'),
(36,'indra_maulana','fr_LoginBPR','2026-03-20 03:34:15','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.1.34 OS User : USER',NULL,'1.0.0.0'),
(37,'indra_maulana','fr_GetSystemDate','2026-03-20 03:35:44','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.1.34 OS User : USER',NULL,'1.0.0.0'),
(38,'indra_maulana','fr_LoginBPR','2026-03-20 03:35:44','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.1.34 OS User : USER',NULL,'1.0.0.0');

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

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `get_jam`() RETURNS time
BEGIN
  RETURN CURTIME();
END */$$
DELIMITER ;

/* Function  structure for function  `get_tgl` */

/*!50003 DROP FUNCTION IF EXISTS `get_tgl` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `get_tgl`() RETURNS date
BEGIN
  RETURN CURDATE();
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
