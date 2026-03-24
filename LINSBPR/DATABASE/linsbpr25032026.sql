/*
SQLyog Community v13.3.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - linsbpr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`linsbpr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `linsbpr`;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `daftar_dblock` */

insert  into `daftar_dblock`(`id`,`key_name`,`status`,`user_id`,`waktu`,`computer_name`,`computer_ip`,`computer_user`,`connection_id`) values 
(3,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 04:56:53','IT','192.168.0.116','DH-IT INDRA',NULL),
(4,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:01:20','IT','192.168.0.116','DH-IT INDRA',NULL),
(5,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:11:18','IT','192.168.0.116','DH-IT INDRA',NULL),
(6,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:16:32','IT','192.168.0.116','DH-IT INDRA',NULL),
(7,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:44:27','IT','192.168.0.116','DH-IT INDRA',NULL),
(8,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:48:57','IT','192.168.0.116','DH-IT INDRA',NULL),
(9,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:55:08','IT','192.168.0.116','DH-IT INDRA',NULL),
(10,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 05:56:36','IT','192.168.0.116','DH-IT INDRA',NULL),
(11,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:00:28','IT','192.168.0.116','DH-IT INDRA',NULL),
(12,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:01:33','IT','192.168.0.116','DH-IT INDRA',NULL),
(13,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:07:56','IT','192.168.0.116','DH-IT INDRA',NULL),
(14,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:13:22','IT','192.168.0.116','DH-IT INDRA',NULL),
(15,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:15:35','IT','192.168.0.116','DH-IT INDRA',NULL),
(16,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:21:09','IT','192.168.0.116','DH-IT INDRA',NULL),
(17,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:22:28','IT','192.168.0.116','DH-IT INDRA',NULL),
(18,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:23:32','IT','192.168.0.116','DH-IT INDRA',NULL),
(19,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:28:11','IT','192.168.0.116','DH-IT INDRA',NULL),
(20,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:30:42','IT','192.168.0.116','DH-IT INDRA',NULL),
(21,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:34:13','IT','192.168.0.116','DH-IT INDRA',NULL),
(22,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:38:03','IT','192.168.0.116','DH-IT INDRA',NULL),
(23,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:40:04','IT','192.168.0.116','DH-IT INDRA',NULL),
(24,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 06:49:47','IT','192.168.0.116','DH-IT INDRA',NULL),
(25,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:00:57','IT','192.168.0.116','DH-IT INDRA',NULL),
(26,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:04:25','IT','192.168.0.116','DH-IT INDRA',NULL),
(27,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:06:41','IT','192.168.0.116','DH-IT INDRA',NULL),
(28,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:18:28','IT','192.168.0.116','DH-IT INDRA',NULL),
(29,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:34:54','IT','192.168.0.116','DH-IT INDRA',NULL),
(30,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:56:51','IT','192.168.0.116','DH-IT INDRA',NULL),
(31,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:57:02','IT','192.168.0.116','DH-IT INDRA',NULL),
(32,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 07:59:55','IT','192.168.0.116','DH-IT INDRA',NULL),
(33,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 08:03:14','IT','192.168.0.116','DH-IT INDRA',NULL),
(34,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-20 08:04:28','IT','192.168.0.116','DH-IT INDRA',NULL),
(35,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-24 23:49:40','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(36,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-24 23:50:23','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(37,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-24 23:51:26','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(38,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-24 23:52:26','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(39,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-25 00:11:42','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(40,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-25 01:10:22','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(41,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-25 01:13:34','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(42,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-25 01:17:15','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(43,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-25 01:19:51','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL),
(44,'LOGIN_LINSBPR_INDRA_MAULANA','Y','855','2026-03-25 01:21:34','DESKTOP-QEQVPKN','192.168.1.55','USER',NULL);

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

/*Table structure for table `linsbpr_0100` */

DROP TABLE IF EXISTS `linsbpr_0100`;

CREATE TABLE `linsbpr_0100` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `sandi_laporan` char(10) NOT NULL,
  `tanggal_kejadian` date NOT NULL,
  `nomor_sk_ojk` varchar(50) NOT NULL,
  `tanggal_sk_ojk` date DEFAULT NULL,
  `nomor_akta` varchar(50) DEFAULT NULL,
  `tanggal_akta` date DEFAULT NULL,
  `nomor_persetujuan` varchar(50) DEFAULT NULL,
  `tanggal_persetujuan` date DEFAULT NULL,
  `tanggal_efektif` date DEFAULT NULL,
  `nama_pihak` varchar(2000) DEFAULT NULL,
  `nik_npwp` varchar(25) DEFAULT NULL,
  `jabatan` char(1) DEFAULT NULL,
  `jenis_produk` char(2) DEFAULT NULL,
  `nama_produk` varchar(2000) DEFAULT NULL,
  `jenis_kantor` char(2) DEFAULT NULL,
  `alamat` varchar(2000) DEFAULT NULL,
  `alamat_baru` varchar(2000) DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `pelanggaran` char(1) DEFAULT NULL,
  `alasan` varchar(2000) DEFAULT NULL,
  `nama_pjti` varchar(2000) DEFAULT NULL,
  `register_ref` varchar(50) DEFAULT NULL,
  `langkah_perbaikan` varchar(2000) DEFAULT NULL,
  `target_waktu` date DEFAULT NULL,
  `realisasi` varchar(2000) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `status_dokumen` char(1) NOT NULL,
  PRIMARY KEY (`flag_detail`,`sandi_laporan`,`tanggal_kejadian`,`nomor_sk_ojk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `linsbpr_0100` */

insert  into `linsbpr_0100`(`flag_detail`,`sandi_laporan`,`tanggal_kejadian`,`nomor_sk_ojk`,`tanggal_sk_ojk`,`nomor_akta`,`tanggal_akta`,`nomor_persetujuan`,`tanggal_persetujuan`,`tanggal_efektif`,`nama_pihak`,`nik_npwp`,`jabatan`,`jenis_produk`,`nama_produk`,`jenis_kantor`,`alamat`,`alamat_baru`,`tanggal_selesai`,`pelanggaran`,`alasan`,`nama_pjti`,`register_ref`,`langkah_perbaikan`,`target_waktu`,`realisasi`,`status`,`status_dokumen`) values 
('D01','BP004','2026-03-25','123','2026-03-26','456','2026-03-27','789','2026-03-28','2026-03-29','nama','098','1','1','produk','1','alamat','alamat baru','2026-03-30','1','alasan','nama pjt','regris','langkah','2026-03-31','realisasi','1','1'),
('D01','KL001','2024-09-24','SK-1/2024 Koreksi','2024-08-22','NomorAkta1Koreksi','2024-09-21','NomorSetuju1Koreksi','2024-09-18','2024-09-23','','','','','','','','',NULL,'','Alasan 1 Koreksi','','','',NULL,'','','1'),
('D01','KL001','2024-09-24','SK-2/2024 Koreksi','2024-08-23','NomorAkta2Koreksi','2024-09-22','NomorSetuju2Koreksi','2024-09-19','2024-09-24','','','','','','','','',NULL,'','Alasan 2 Koreksi','','','',NULL,'','','2');

/*Table structure for table `linsbpr_0100_arsip` */

DROP TABLE IF EXISTS `linsbpr_0100_arsip`;

CREATE TABLE `linsbpr_0100_arsip` (
  `flag_detail` char(3) NOT NULL DEFAULT 'D01',
  `sandi_laporan` char(10) NOT NULL,
  `tanggal_kejadian` date NOT NULL,
  `nomor_sk_ojk` varchar(50) NOT NULL,
  `tanggal_sk_ojk` date DEFAULT NULL,
  `nomor_akta` varchar(50) DEFAULT NULL,
  `tanggal_akta` date DEFAULT NULL,
  `nomor_persetujuan` varchar(50) DEFAULT NULL,
  `tanggal_persetujuan` date DEFAULT NULL,
  `tanggal_efektif` date DEFAULT NULL,
  `nama_pihak` varchar(2000) DEFAULT NULL,
  `nik_npwp` varchar(25) DEFAULT NULL,
  `jabatan` char(1) DEFAULT NULL,
  `jenis_produk` char(2) DEFAULT NULL,
  `nama_produk` varchar(2000) DEFAULT NULL,
  `jenis_kantor` char(2) DEFAULT NULL,
  `alamat` varchar(2000) DEFAULT NULL,
  `alamat_baru` varchar(2000) DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `pelanggaran` char(1) DEFAULT NULL,
  `alasan` varchar(2000) DEFAULT NULL,
  `nama_pjti` varchar(2000) DEFAULT NULL,
  `register_ref` varchar(50) DEFAULT NULL,
  `langkah_perbaikan` varchar(2000) DEFAULT NULL,
  `target_waktu` date DEFAULT NULL,
  `realisasi` varchar(2000) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `status_dokumen` char(1) NOT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`flag_detail`,`sandi_laporan`,`tanggal_kejadian`,`nomor_sk_ojk`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `linsbpr_0100_arsip` */

insert  into `linsbpr_0100_arsip`(`flag_detail`,`sandi_laporan`,`tanggal_kejadian`,`nomor_sk_ojk`,`tanggal_sk_ojk`,`nomor_akta`,`tanggal_akta`,`nomor_persetujuan`,`tanggal_persetujuan`,`tanggal_efektif`,`nama_pihak`,`nik_npwp`,`jabatan`,`jenis_produk`,`nama_produk`,`jenis_kantor`,`alamat`,`alamat_baru`,`tanggal_selesai`,`pelanggaran`,`alasan`,`nama_pjti`,`register_ref`,`langkah_perbaikan`,`target_waktu`,`realisasi`,`status`,`status_dokumen`,`kode_arsip`) values 
('D01','KL001','2024-09-24','SK-1/2024 Koreksi','2024-08-22','NomorAkta1Koreksi','2024-09-21','NomorSetuju1Koreksi','2024-09-18','2024-09-23','','','','','','','','',NULL,'','Alasan 1 Koreksi','','','',NULL,'','','1','1_092024'),
('D01','KL001','2024-09-24','SK-1/2024 Koreksi','2024-08-22','NomorAkta1Koreksi','2024-09-21','NomorSetuju1Koreksi','2024-09-18','2024-09-23','','','','','','','','',NULL,'','Alasan 1 Koreksi','','','',NULL,'','','1','1_26092024'),
('D01','KL001','2024-09-24','SK-2/2024 Koreksi','2024-08-23','NomorAkta2Koreksi','2024-09-22','NomorSetuju2Koreksi','2024-09-19','2024-09-24','','','','','','','','',NULL,'','Alasan 2 Koreksi','','','',NULL,'','','2','1_092024'),
('D01','KL001','2024-09-24','SK-2/2024 Koreksi','2024-08-23','NomorAkta2Koreksi','2024-09-22','NomorSetuju2Koreksi','2024-09-19','2024-09-24','','','','','','','','',NULL,'','Alasan 2 Koreksi','','','',NULL,'','','2','1_26092024');

/*Table structure for table `linsbpr_backup_log` */

DROP TABLE IF EXISTS `linsbpr_backup_log`;

CREATE TABLE `linsbpr_backup_log` (
  `kode_arsip` varchar(25) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `created_by` int(11) DEFAULT 0,
  `last_created` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `linsbpr_backup_log` */

insert  into `linsbpr_backup_log`(`kode_arsip`,`tgl_laporan`,`created_by`,`last_created`,`last_updated`) values 
('1_092024','2024-09-26',855,'2026-03-20 05:18:15','2026-03-20 05:18:15'),
('1_26092024','2024-09-26',855,'2026-03-20 05:50:02','2026-03-20 05:50:02');

/*Table structure for table `linsbpr_header` */

DROP TABLE IF EXISTS `linsbpr_header`;

CREATE TABLE `linsbpr_header` (
  `flag_header` varchar(3) NOT NULL DEFAULT 'H01' COMMENT 'Diisi dengan "H01"',
  `kode_sektor` varchar(6) NOT NULL DEFAULT '010201' COMMENT 'Diisi dengan "010201" (BPR Konvensional)',
  `sandi_bpr` varchar(6) NOT NULL COMMENT 'Diisi dengan Sandi BPR',
  `periode_data` date NOT NULL COMMENT 'Format: YYYY-MM-DD dan menggunakan tanggal',
  `kode_jenis_pelaporan` varchar(6) NOT NULL DEFAULT 'LINS' COMMENT 'Diisi dengan "LINS"',
  `kode_form_laporan` varchar(6) NOT NULL COMMENT 'Diisi dengan Kode Form Laporan',
  `kode_status_koreksi` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Diisi "0" untuk pelaporan rutin',
  `nomor_surat` varchar(25) DEFAULT NULL COMMENT 'Diisi jika kolom "kode_status_koreksi" adalah "2"',
  PRIMARY KEY (`sandi_bpr`,`periode_data`,`kode_form_laporan`,`kode_jenis_pelaporan`,`kode_status_koreksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `linsbpr_header` */

insert  into `linsbpr_header`(`flag_header`,`kode_sektor`,`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_status_koreksi`,`nomor_surat`) values 
('H01','010201','609999','2024-09-26','LINS','0100','0',''),
('H01','010201','609999','2026-03-20','LINS','0100','0','');

/*Table structure for table `linsbpr_header_arsip` */

DROP TABLE IF EXISTS `linsbpr_header_arsip`;

CREATE TABLE `linsbpr_header_arsip` (
  `flag_header` varchar(3) NOT NULL DEFAULT 'H01' COMMENT 'Diisi dengan "H01"',
  `kode_sektor` varchar(6) NOT NULL DEFAULT '010201' COMMENT 'Diisi dengan "010201" (BPR Konvensional)',
  `sandi_bpr` varchar(6) NOT NULL COMMENT 'Diisi dengan Sandi BPR',
  `periode_data` date NOT NULL COMMENT 'Format: YYYY-MM-DD dan menggunakan tanggal',
  `kode_jenis_pelaporan` varchar(6) NOT NULL DEFAULT 'LINS' COMMENT 'Diisi dengan "LINS"',
  `kode_form_laporan` varchar(6) NOT NULL COMMENT 'Diisi dengan Kode Form Laporan',
  `kode_status_koreksi` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Diisi "0" untuk pelaporan rutin',
  `nomor_surat` varchar(25) DEFAULT NULL COMMENT 'Diisi jika kolom "kode_status_koreksi" adalah "2"',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`sandi_bpr`,`periode_data`,`kode_form_laporan`,`kode_jenis_pelaporan`,`kode_status_koreksi`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `linsbpr_header_arsip` */

insert  into `linsbpr_header_arsip`(`flag_header`,`kode_sektor`,`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_status_koreksi`,`nomor_surat`,`kode_arsip`) values 
('H01','010201','609999','2024-09-26','LINS','0100','0','','1_092024'),
('H01','010201','609999','2024-09-26','LINS','0100','0','','1_26092024');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `my_logbin` */

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
('CEK_LAST_VERSION_LINSBPR','YA',NULL),
('LAST_VERSION_LINSBPR','1.0.0.0',NULL),
('LINSBPR_JUMLAH_REC_PERFILE','1000',NULL),
('LINSBPR_KODE_JENIS_LAPORAN','LINS',NULL),
('LINSBPR_KODE_LJK','609999',NULL),
('LINSBPR_KODE_SEKTOR_LJK','010201',NULL),
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

/*Table structure for table `ref_dokumen_pendukung` */

DROP TABLE IF EXISTS `ref_dokumen_pendukung`;

CREATE TABLE `ref_dokumen_pendukung` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_dokumen_pendukung` */

insert  into `ref_dokumen_pendukung`(`code`,`deskripsi`) values 
('1','Terdapat informasi yang dibutuhkan di dokumen pendukung'),
('2','Tidak terdapat informasi yang dibutuhkan di dokumen pendukung');

/*Table structure for table `ref_jabatan` */

DROP TABLE IF EXISTS `ref_jabatan`;

CREATE TABLE `ref_jabatan` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jabatan` */

insert  into `ref_jabatan`(`code`,`deskripsi`) values 
('1','Direktur Utama'),
('2','Direksi'),
('3','Komisaris Utama'),
('4','Komisaris'),
('5','Komisaris Independen'),
('6','Pemegang Saham Pengendali'),
('7','Pemegang Saham'),
('8','Dewan Pengawas Syariah'),
('9','Pihak Utama Jabat');

/*Table structure for table `ref_jenis_kantor` */

DROP TABLE IF EXISTS `ref_jenis_kantor`;

CREATE TABLE `ref_jenis_kantor` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_kantor` */

insert  into `ref_jenis_kantor`(`code`,`deskripsi`) values 
('1','Kantor Pusat'),
('2','Kantor Wilayah'),
('3','Kantor Cabang'),
('4','Kantor Cabang Pembantu'),
('5','Kantor Fungsional'),
('6','Sentra Keuangan Khusus'),
('7','Kantor Perwakilan dari Bank yang Berkedudukan di Luar Negeri'),
('99','Lainnya');

/*Table structure for table `ref_jenis_produk` */

DROP TABLE IF EXISTS `ref_jenis_produk`;

CREATE TABLE `ref_jenis_produk` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_produk` */

insert  into `ref_jenis_produk`(`code`,`deskripsi`) values 
('1','Produk Dasar'),
('2','Produk Dasar Lainnnya'),
('3','Produk Lanjutan Berbasis TI'),
('4','Produk Lanjutan Berkaitan dengan Penyelenggaran Kegiatan atau produk lembaga jasa keuangan nonbank atau memengaruhi penilaian profil risiko BU/BUS/UUS/BPR/BPRS'),
('5','Produk Lanjutan memerlukan izin dan/atau persetujuan dari otoritas lain'),
('6','Kegiatan Laku Pandai'),
('99','Lainnya');

/*Table structure for table `ref_jenis_usaha` */

DROP TABLE IF EXISTS `ref_jenis_usaha`;

CREATE TABLE `ref_jenis_usaha` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_usaha` */

insert  into `ref_jenis_usaha`(`code`,`deskripsi`) values 
('1','Konvensional'),
('2','Syariah'),
('3','Unit Usaha Syariah');

/*Table structure for table `ref_kategori_lap` */

DROP TABLE IF EXISTS `ref_kategori_lap`;

CREATE TABLE `ref_kategori_lap` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kategori_lap` */

insert  into `ref_kategori_lap`(`code`,`deskripsi`) values 
('BP','Laporan terkait Bukti Pengumuman'),
('JK','Laporan terkait Jaringan Kantor'),
('KL','Laporan terkait Kelembagaan'),
('KM','Laporan terkait Kepemilikan'),
('KP','Kepengurusan'),
('KU','Laporan terkait Kegiatan Usaha'),
('LL','Lainnya'),
('OP','Laporan terkait Operasional'),
('PG','Laporan terkait Penyimpangan, Pelanggaran, atau Kondisi yang Membahayakan'),
('PL','Laporan terkait Produk dan Layanan yang Membutuhkan Izin OJK'),
('PS','Laporan terkait Produk, Layanan dan Kerja Sama tanpa Perizinan/Perintah OJK'),
('PT','Laporan terkait Produk dan Layanan yang Tidak Membutuhkan Izin OJK'),
('RL','Laporan terkait Realisasi Rencana Tindak/Komitmen'),
('RT','Laporan terkait Rencana Tindak');

/*Table structure for table `ref_kelompok_berlaku` */

DROP TABLE IF EXISTS `ref_kelompok_berlaku`;

CREATE TABLE `ref_kelompok_berlaku` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kelompok_berlaku` */

insert  into `ref_kelompok_berlaku`(`code`,`deskripsi`) values 
('1','BPR dan BPRS'),
('10','UUS'),
('2','BPR'),
('3','BPRS'),
('4','BUK, BUS, UUS'),
('5','BUK dan BUS'),
('6','BUS dan UUS'),
('7','BUK dan UUS'),
('8','BUK'),
('9','BUS');

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
(81,'0100','Form 01.00 - Informasi Utama','linsbpr_0100',0,0),
(83,'0200','Form 02.00 - Dokumen Pendukung','0200',0,1);

/*Table structure for table `ref_kode_sektor` */

DROP TABLE IF EXISTS `ref_kode_sektor`;

CREATE TABLE `ref_kode_sektor` (
  `code` varchar(5) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kode_sektor` */

insert  into `ref_kode_sektor`(`code`,`deskripsi`) values 
('10101','Bank Umum Konvensional / Unit Usaha Syariah'),
('10102','Bank Umum Syariah'),
('10201','BPR Konvensional'),
('10202','BPR Syariah');

/*Table structure for table `ref_kolom_form` */

DROP TABLE IF EXISTS `ref_kolom_form`;

CREATE TABLE `ref_kolom_form` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kolom_form` */

insert  into `ref_kolom_form`(`code`,`deskripsi`) values 
('1','Flag Detail'),
('10','Tanggal Efektif/ Mulai'),
('11','Nama Pihak Utama/Pemegang Saham'),
('12','NIK/ NPWP'),
('13','Jabatan'),
('14','Jenis Produk dan/atau aktivitas'),
('15','Nama Produk/aktivitas'),
('16','Jenis Kantor'),
('17','Alamat'),
('18','Alamat Baru/ Sementara'),
('19','Tanggal Selesai'),
('2','Sandi Laporan'),
('20','Pelanggaran/Keadaan Membahayakan/ Kondisi Tertentu'),
('21','Alasan/ Uraian'),
('22','Nama PJTI/ Pihak yang Bersinergi'),
('23','Register/ Referensi'),
('24','Langkah Perbaikan'),
('25','Target Waktu Penyelesaian'),
('26','Realisasi'),
('27','Status'),
('28','Dokumen pendukung (.pdf)'),
('3','Tanggal Kejadian'),
('4','Nomor SK OJK'),
('5','Tanggal SK OJK'),
('6','Nomor Akta Notaris/Pemda'),
('7','Tanggal Akta Notaris/Pemda'),
('8','Nomor Persetujuan Instansi Berwenang'),
('9','Tanggal Persetujuan Instansi Berwenang');

/*Table structure for table `ref_pelanggaran` */

DROP TABLE IF EXISTS `ref_pelanggaran`;

CREATE TABLE `ref_pelanggaran` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_pelanggaran` */

insert  into `ref_pelanggaran`(`code`,`deskripsi`) values 
('1','Pelanggaran, apabila terdapat pelanggaran peraturan perundang-undangan'),
('2','Keadaan Membahayakan, apabila terdapat kondisi/keadaan yang dapat membahayakan kelangsungan usaha BPR'),
('3','Apabila memenuhi angka 1 dan 2');

/*Table structure for table `ref_sandi_laporan` */

DROP TABLE IF EXISTS `ref_sandi_laporan`;

CREATE TABLE `ref_sandi_laporan` (
  `code` varchar(5) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_sandi_laporan` */

insert  into `ref_sandi_laporan`(`code`,`deskripsi`) values 
('BP','Bukti pengumuman larangan penghimpunan dan penyaluran dana'),
('BP001','Bukti pengumuman larangan penghimpunan dan penyaluran dana'),
('BP002','Bukti pengumuman mengenai perubahan izin usaha BPR/BPRS dari BUK/BUS (inisiatif BUK/BUS dan keputusan OJK)'),
('BP003','Bukti pengumuman perubahan nama kepada masyarakat'),
('BP004','Bukti pengumuman perubahan bentuk badan hukum'),
('BP005','Bukti pengumuman transformasi kegiatan usaha LKMK menjadi BPR atau LKMS menjadi BPRS'),
('BP006','Bukti pembubaran badan hukum lama'),
('JK','Laporan pelaksanaan pemindahan sementara alamat Kantor'),
('JK001','Laporan pelaksanaan pemindahan sementara alamat Kantor'),
('JK002','Laporan pemindahan kembali jaringan kantor ke lokasi semula'),
('KG','Laporan RUPS pembatalan pengangkatan calon anggota direksi dan/atau calon anggota dewan komisaris'),
('KG001','Laporan RUPS pembatalan pengangkatan calon anggota direksi dan/atau calon anggota dewan komisaris'),
('KG002','Laporan pengkinian data dan informasi domisili dari pihak utama dan/atau pihak yang dapat dihubungi'),
('KG003','Laporan tindak lanjut pemberhentian pihak utama yang dilarang menjadi pihak utama pengurus dan/atau pihak utama pejabat'),
('KL','Laporan pelaksanaan penggabungan, peleburan, dan pengambilalihan'),
('KL001','Laporan pelaksanaan penggabungan, peleburan, dan pengambilalihan'),
('KL002','Laporan hasil perubahan izin usaha dari BUK/BUS menjadi BPR/BPRS'),
('KM','Laporan perubahan pemilik, anggota direksi, anggota dewan komisaris, atau pengurus dari PSP berbentuk badan hukum'),
('KM001','Laporan perubahan pemilik, anggota direksi, anggota dewan komisaris, atau pengurus dari PSP berbentuk badan hukum'),
('KM002','Laporan penambahan modal disetor dan/atau perubahan kepemilikan saham yang tidak mengakibatkan perubahan PSP'),
('KM003','Laporan rencana perubahan struktur kelompok usaha yang terkait dengan BPR/BPRS termasuk badan hukum pemilik BPR/BPRS sampai dengan ultimate shareholders'),
('KM004','Laporan pelaksanaan perubahan kepemilikan saham yang mengakibatkan perubahan PSP'),
('KM005','Laporan pelaksanaan penambahan modal disetor yang mengakibatkan perubahan PSP'),
('KM006','Laporan perubahan modal dasar'),
('KM007','Laporan pengalihan kepemilikan saham bagi pihak utama yang dilarang menjadi pihak utama pengendali atau memiliki saham'),
('KM008','Laporan pengalihan kepemilikan saham bagi calon PSP yang tidak disetujui oleh OJK namun telah memiliki saham LJK'),
('KU','Laporan pelaksanaan kegiatan usaha (BPR/BPRS baru berdiri)'),
('KU001','Laporan pelaksanaan kegiatan usaha (BPR/BPRS baru berdiri)'),
('KU002','Laporan pelaksanaan kegiatan usaha berdasarkan prinsip syariah'),
('KU003','Laporan pelaksanaan kegiatan usaha sebagai BPR atau BPRS (BPR/BPRS hasil transformasi LKM)'),
('LL','Laporan hasil kaji ulang oleh pihak ekstern yang memuat pendapat tentang hasil kerja satuan kerja audit intern dan kepatuhannya terhadap standar pelaksanaan fungsi audit intern bagi BPR dan BPR Syaria'),
('LL001','Laporan hasil kaji ulang oleh pihak ekstern yang memuat pendapat tentang hasil kerja satuan kerja audit intern dan kepatuhannya terhadap standar pelaksanaan fungsi audit intern bagi BPR dan BPR Syaria'),
('LL002','Laporan kondisi terkini penyelenggaraan teknologi informasi BPR/BPRS'),
('LL003','Rencana pelaksanaan kegiatan usaha berdasarkan prinsip syariah'),
('LL004','Kebijakan dan prosedur penerapan program APU PPT dan PPSPM serta perubahannya'),
('LL999','Lainnya'),
('OP','Laporan rencana BPR/BPRS untuk melakukan kegiatan operasional di luar hari kerja operasional dan/atau pada hari libur'),
('OP001','Laporan rencana BPR/BPRS untuk melakukan kegiatan operasional di luar hari kerja operasional dan/atau pada hari libur'),
('OP002','Laporan rencana penutupan sementara kantor BPR/BPRS'),
('OP003','Laporan penutupan sementara kantor karena keadaan kahar'),
('PG','Laporan pelanggaran peraturan perundang-undangan di bidang keuangan dan perbankan dan/atau keadaan yang membahayakan kelangsungan usaha BPR/BPRS'),
('PG001','Laporan pelanggaran peraturan perundang-undangan di bidang keuangan dan perbankan dan/atau keadaan yang membahayakan kelangsungan usaha BPR/BPRS'),
('PG002','Laporan khusus mengenai kebijakan dan/atau keputusan direksi yang menurut pendapat anggota direksi yang membawahkan fungsi kepatuhan telah menyimpang dari peraturan OJK dan/atau peraturan perundang-un'),
('PG003','Laporan khusus mengenai setiap temuan audit intern yang diperkirakan dapat mengganggu kelangsungan usaha BPR/BPRS'),
('PG004','Laporan kejadian kritis, penyalahgunaan, dan/atau kejahatan dalam penyelenggaraan teknologi informasi yang dapat atau telah mengakibatkan kerugian keuangan yang signifikan dan/atau mengganggu kelancar'),
('PG005','Laporan tindakan tertentu dalam hal memenuhi kondisi sesuai POJK SPTI'),
('PL','Laporan realisasi penyelenggaraan produk lanjutan baru'),
('PL001','Laporan realisasi penyelenggaraan produk lanjutan baru'),
('PL002','Laporan realisasi penyelenggaraan laku pandai'),
('PL003','Laporan realisasi penghentian produk atas perintah OJK'),
('PS','Laporan realisasi kerja sama dengan penyedia jasa teknologi informasi'),
('PS001','Laporan realisasi kerja sama dengan penyedia jasa teknologi informasi'),
('PS002','Laporan perubahan perjanjian kerja sama BPR/BPRS yang melakukan sinergi'),
('PS003','Laporan pelaksanaan sinergi perbankan BPR/BPRS'),
('PS004','Laporan penghentian kerja sama BPR/ BPRS yang melakukan sinergi'),
('PS005','Laporan penghentian kerja sama dengan penyedia jasa teknologi informasi'),
('PT','Laporan rencana pelaksanaan proyek uji coba terbatas'),
('PT001','Laporan rencana pelaksanaan proyek uji coba terbatas'),
('PT002','Laporan realisasi penyelenggaraan produk dasar baru'),
('RL','Laporan pelaksanaan rencana tindak BMPK/BMPD'),
('RL001','Laporan pelaksanaan rencana tindak BMPK/BMPD'),
('RL002','Laporan realisasi pelaksanaan rencana tindak BUK/BUS menjadi BPR/BPRS'),
('RL003','Laporan seluruh realisasi pelaksanaan rencana tindak BUK/BUS menjadi BPR/BPRS'),
('RL004','Laporan realisasi rencana tindak BPR/BPRS yang dalam pengawasan normal yang mengalami kesulitan yang membahayakan kelangsungan usahanya'),
('RL005','Laporan realisasi rencana tindak BPR/BPRS dalam penyehatan'),
('RL006','Laporan realisasi rencana tindak tingkat kesehatan'),
('RL007','Laporan tindak lanjut yang telah dan/atau akan diambil setelah penyampaian laporan rencana tindak tindakan tertentu terkait kerja sama dengan penyedia teknologi informasi'),
('RL008','Tindak lanjut pengawasan'),
('RL009','Laporan realisasi penghentian produk atas inisiatif BPR/BPRS'),
('RL010','Laporan realisasi penyertaan modal'),
('RL011','Laporan realisasi divestasi'),
('RL012','Laporan perkembangan pelaksanaan rencana tindak atas perintah tertulis'),
('RL013','Laporan pemenuhan perintah tertulis'),
('RT','Laporan rencana tindak untuk penyelesaian pelanggaran BMPK/BMPD'),
('RT001','Laporan rencana tindak untuk penyelesaian pelanggaran BMPK/BMPD'),
('RT002','Laporan rencana tindak untuk penyelesaian pelampauan BMPK/BMPD'),
('RT003','Laporan rencana tindak BPR/BPRS yang dalam pengawasan normal yang mengalami kesulitan yang membahayakan kelangsungan usaha'),
('RT004','Laporan rencana tindak BPR/BPRS dalam penyehatan'),
('RT005','Laporan rencana tindak tingkat kesehatan'),
('RT006','Laporan rencana tindak dalam rangka upaya perbaikan kerja sama dengan penyedia jasa teknologi informasi'),
('RT007','Laporan rencana tindak penghentian produk atas perintah OJK'),
('RT008','Laporan rencana tindak atas pelampauan batasan penyertaan modal'),
('RT009','Laporan rencana pelaksanaan divestasi'),
('RT010','Laporan rencana tindak atas perintah tertulis');

/*Table structure for table `ref_status` */

DROP TABLE IF EXISTS `ref_status`;

CREATE TABLE `ref_status` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_status` */

insert  into `ref_status`(`code`,`deskripsi`) values 
('1','Selesai'),
('2','Belum Selesai');

/*Table structure for table `ref_status_koreksi` */

DROP TABLE IF EXISTS `ref_status_koreksi`;

CREATE TABLE `ref_status_koreksi` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_status_koreksi` */

insert  into `ref_status_koreksi`(`code`,`deskripsi`) values 
('0','Pelaporan Inisiasi'),
('1','Koreksi atas Permintaan OJK');

/*Table structure for table `ref_status_tindakan` */

DROP TABLE IF EXISTS `ref_status_tindakan`;

CREATE TABLE `ref_status_tindakan` (
  `code` varchar(2) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_status_tindakan` */

insert  into `ref_status_tindakan`(`code`,`deskripsi`) values 
('1','Rencana tindak atau tindak lanjut pengawasan telah diselesaikan'),
('2','Rencana tindak atau tindak lanjut pengawasan belum diselesaikan');

/*Table structure for table `sistem` */

DROP TABLE IF EXISTS `sistem`;

CREATE TABLE `sistem` (
  `jenis` varchar(100) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='system control';

/*Data for the table `sistem` */

insert  into `sistem`(`jenis`,`tanggal`) values 
('TGL_LINSBPR','2026-03-20');

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
('indra_maulana','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,855,706,'3','192.168.1.55',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2026-03-24 23:49:41',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log user yang mengakses program';

/*Data for the table `user_log` */

insert  into `user_log`(`id`,`user`,`kd_menu`,`waktu`,`ket`,`ip`,`AppVer`) values 
(1,'indra_maulana','fr_GetSystemDate','2026-03-20 04:51:36','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(2,'indra_maulana','fr_LoginBPR','2026-03-20 04:51:37','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(3,'indra_maulana','fr_GetSystemDate','2026-03-20 04:56:56','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(4,'indra_maulana','fr_LoginBPR','2026-03-20 04:56:57','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(5,'indra_maulana','fr_GetSystemDate','2026-03-20 05:01:23','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(6,'indra_maulana','fr_LoginBPR','2026-03-20 05:01:23','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(7,'indra_maulana','fr_GetSystemDate','2026-03-20 05:11:21','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(8,'indra_maulana','fr_LoginBPR','2026-03-20 05:11:22','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(9,'indra_maulana','fr_GetSystemDate','2026-03-20 05:16:34','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(10,'indra_maulana','fr_LoginBPR','2026-03-20 05:16:35','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(11,'indra_maulana','fr_GetSystemDate','2026-03-20 05:44:29','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(12,'indra_maulana','fr_LoginBPR','2026-03-20 05:44:30','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(13,'indra_maulana','fr_GetSystemDate','2026-03-20 05:48:59','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(14,'indra_maulana','fr_LoginBPR','2026-03-20 05:48:59','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(15,'indra_maulana','fr_GetSystemDate','2026-03-20 05:52:45','Login Tgl System Sukses : indra_maulana Tgl System : 21 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(16,'indra_maulana','fr_GetSystemDate','2026-03-20 05:53:23','Login Tgl System Sukses : indra_maulana Tgl System : 21 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(17,'indra_maulana','fr_GetSystemDate','2026-03-20 05:55:10','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(18,'indra_maulana','fr_LoginBPR','2026-03-20 05:55:10','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(19,'indra_maulana','fr_GetSystemDate','2026-03-20 05:56:37','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(20,'indra_maulana','fr_LoginBPR','2026-03-20 05:56:38','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(21,'indra_maulana','fr_GetSystemDate','2026-03-20 06:00:30','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(22,'indra_maulana','fr_LoginBPR','2026-03-20 06:00:30','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(23,'indra_maulana','fr_GetSystemDate','2026-03-20 06:01:39','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(24,'indra_maulana','fr_LoginBPR','2026-03-20 06:01:40','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(25,'indra_maulana','fr_GetSystemDate','2026-03-20 06:07:58','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(26,'indra_maulana','fr_LoginBPR','2026-03-20 06:07:58','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(27,'indra_maulana','fr_GetSystemDate','2026-03-20 06:13:42','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(28,'indra_maulana','fr_LoginBPR','2026-03-20 06:13:43','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(29,'indra_maulana','fr_GetSystemDate','2026-03-20 06:15:37','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(30,'indra_maulana','fr_LoginBPR','2026-03-20 06:15:38','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(31,'indra_maulana','fr_GetSystemDate','2026-03-20 06:21:17','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(32,'indra_maulana','fr_LoginBPR','2026-03-20 06:21:18','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(33,'indra_maulana','fr_GetSystemDate','2026-03-20 06:22:30','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(34,'indra_maulana','fr_LoginBPR','2026-03-20 06:22:30','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(35,'indra_maulana','fr_GetSystemDate','2026-03-20 06:23:33','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(36,'indra_maulana','fr_LoginBPR','2026-03-20 06:23:34','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(37,'indra_maulana','fr_GetSystemDate','2026-03-20 06:28:13','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(38,'indra_maulana','fr_LoginBPR','2026-03-20 06:28:13','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(39,'indra_maulana','fr_GetSystemDate','2026-03-20 06:30:45','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(40,'indra_maulana','fr_LoginBPR','2026-03-20 06:30:45','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(41,'indra_maulana','fr_GetSystemDate','2026-03-20 06:34:15','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(42,'indra_maulana','fr_LoginBPR','2026-03-20 06:34:16','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(43,'indra_maulana','fr_GetSystemDate','2026-03-20 06:38:06','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(44,'indra_maulana','fr_LoginBPR','2026-03-20 06:38:06','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(45,'indra_maulana','fr_GetSystemDate','2026-03-20 06:40:07','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(46,'indra_maulana','fr_LoginBPR','2026-03-20 06:40:08','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(47,'indra_maulana','fr_GetSystemDate','2026-03-20 06:49:50','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(48,'indra_maulana','fr_LoginBPR','2026-03-20 06:49:51','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(49,'indra_maulana','fr_GetSystemDate','2026-03-20 07:00:59','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(50,'indra_maulana','fr_LoginBPR','2026-03-20 07:01:00','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(51,'indra_maulana','fr_GetSystemDate','2026-03-20 07:04:28','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(52,'indra_maulana','fr_LoginBPR','2026-03-20 07:04:29','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(53,'indra_maulana','fr_GetSystemDate','2026-03-20 07:06:47','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(54,'indra_maulana','fr_LoginBPR','2026-03-20 07:06:47','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(55,'indra_maulana','fr_GetSystemDate','2026-03-20 07:18:30','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(56,'indra_maulana','fr_LoginBPR','2026-03-20 07:18:30','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(57,'indra_maulana','fr_GetSystemDate','2026-03-20 07:35:14','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(58,'indra_maulana','fr_LoginBPR','2026-03-20 07:35:15','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(59,'indra_maulana','fr_LoginBPR','2026-03-20 07:56:52','Login Failed, ke : 1 : indra_maulana Tanggal System : 01 Oktober 2013 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(60,'indra_maulana','fr_GetSystemDate','2026-03-20 07:57:05','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(61,'indra_maulana','fr_LoginBPR','2026-03-20 07:57:06','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(62,'indra_maulana','fr_GetSystemDate','2026-03-20 08:00:00','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(63,'indra_maulana','fr_LoginBPR','2026-03-20 08:00:01','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(64,'indra_maulana','fr_GetSystemDate','2026-03-20 08:03:18','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(65,'indra_maulana','fr_LoginBPR','2026-03-20 08:03:18','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(66,'indra_maulana','fr_GetSystemDate','2026-03-20 08:04:31','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(67,'indra_maulana','fr_LoginBPR','2026-03-20 08:04:31','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(68,'indra_maulana','fr_GetSystemDate','2026-03-24 23:49:41','Login Tgl System Sukses : indra_maulana Tgl System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(69,'indra_maulana','fr_LoginBPR','2026-03-24 23:49:41','Login Sukses : indra_maulana Tanggal System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(70,'indra_maulana','fr_GetSystemDate','2026-03-24 23:50:24','Login Tgl System Sukses : indra_maulana Tgl System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(71,'indra_maulana','fr_LoginBPR','2026-03-24 23:50:25','Login Sukses : indra_maulana Tanggal System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(72,'indra_maulana','fr_GetSystemDate','2026-03-24 23:51:28','Login Tgl System Sukses : indra_maulana Tgl System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(73,'indra_maulana','fr_LoginBPR','2026-03-24 23:51:28','Login Sukses : indra_maulana Tanggal System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(74,'indra_maulana','fr_GetSystemDate','2026-03-24 23:52:27','Login Tgl System Sukses : indra_maulana Tgl System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(75,'indra_maulana','fr_LoginBPR','2026-03-24 23:52:27','Login Sukses : indra_maulana Tanggal System : 24 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(76,'indra_maulana','fr_GetSystemDate','2026-03-25 00:11:43','Login Tgl System Sukses : indra_maulana Tgl System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(77,'indra_maulana','fr_LoginBPR','2026-03-25 00:11:43','Login Sukses : indra_maulana Tanggal System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(78,'indra_maulana','fr_GetSystemDate','2026-03-25 01:10:23','Login Tgl System Sukses : indra_maulana Tgl System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(79,'indra_maulana','fr_LoginBPR','2026-03-25 01:10:23','Login Sukses : indra_maulana Tanggal System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(80,'indra_maulana','fr_GetSystemDate','2026-03-25 01:13:44','Login Tgl System Sukses : indra_maulana Tgl System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(81,'indra_maulana','fr_LoginBPR','2026-03-25 01:13:44','Login Sukses : indra_maulana Tanggal System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(82,'indra_maulana','fr_GetSystemDate','2026-03-25 01:17:17','Login Tgl System Sukses : indra_maulana Tgl System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(83,'indra_maulana','fr_LoginBPR','2026-03-25 01:17:17','Login Sukses : indra_maulana Tanggal System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(84,'indra_maulana','fr_GetSystemDate','2026-03-25 01:19:52','Login Tgl System Sukses : indra_maulana Tgl System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(85,'indra_maulana','fr_LoginBPR','2026-03-25 01:19:53','Login Sukses : indra_maulana Tanggal System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(86,'indra_maulana','fr_GetSystemDate','2026-03-25 01:21:37','Login Tgl System Sukses : indra_maulana Tgl System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0'),
(87,'indra_maulana','fr_LoginBPR','2026-03-25 01:21:37','Login Sukses : indra_maulana Tanggal System : 25 Maret 2026 IP : 192.168.1.55 OS User : USER',NULL,'1.0.0.0');

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
