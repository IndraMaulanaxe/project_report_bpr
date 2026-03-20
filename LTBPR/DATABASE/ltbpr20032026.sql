/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - ltbpr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ltbpr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `ltbpr`;

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
) ENGINE=InnoDB AUTO_INCREMENT=77293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `daftar_dblock` */

insert  into `daftar_dblock`(`id`,`key_name`,`status`,`user_id`,`waktu`,`computer_name`,`computer_ip`,`computer_user`,`connection_id`) values 
(77123,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 18:42:34','IT','192.168.1.6','DH-IT INDRA',NULL),
(77124,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 18:44:35','IT','192.168.1.6','DH-IT INDRA',NULL),
(77125,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 18:48:07','IT','192.168.1.6','DH-IT INDRA',NULL),
(77126,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 18:49:37','IT','192.168.1.6','DH-IT INDRA',NULL),
(77127,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 18:55:36','IT','192.168.1.6','DH-IT INDRA',NULL),
(77128,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 18:58:35','IT','192.168.1.6','DH-IT INDRA',NULL),
(77129,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 19:02:20','IT','192.168.1.6','DH-IT INDRA',NULL),
(77130,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 19:02:52','IT','192.168.1.6','DH-IT INDRA',NULL),
(77131,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 19:32:43','IT','192.168.1.6','DH-IT INDRA',NULL),
(77132,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 19:34:29','IT','192.168.1.6','DH-IT INDRA',NULL),
(77133,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 19:36:59','IT','192.168.1.6','DH-IT INDRA',NULL),
(77134,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 19:39:56','IT','192.168.1.6','DH-IT INDRA',NULL),
(77135,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 20:03:56','IT','192.168.1.6','DH-IT INDRA',NULL),
(77136,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2025-11-16 20:10:24','IT','192.168.1.6','DH-IT INDRA',NULL),
(77192,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 19:26:28','IT','192.168.1.7','DH-IT INDRA',NULL),
(77193,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 19:26:35','IT','192.168.1.7','DH-IT INDRA',NULL),
(77194,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 19:27:00','IT','192.168.1.7','DH-IT INDRA',NULL),
(77195,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 20:15:40','IT','192.168.1.7','DH-IT INDRA',NULL),
(77196,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 20:18:39','IT','192.168.1.7','DH-IT INDRA',NULL),
(77197,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 21:42:10','IT','192.168.1.7','DH-IT INDRA',NULL),
(77198,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-10 21:43:21','IT','192.168.1.7','DH-IT INDRA',NULL),
(77199,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 09:54:20','IT','192.168.1.6','DH-IT INDRA',NULL),
(77200,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 09:58:35','IT','192.168.1.6','DH-IT INDRA',NULL),
(77201,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 09:59:26','IT','192.168.1.6','DH-IT INDRA',NULL),
(77202,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:10:18','IT','192.168.1.6','DH-IT INDRA',NULL),
(77203,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:10:23','IT','192.168.1.6','DH-IT INDRA',NULL),
(77204,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:10:26','IT','192.168.1.6','DH-IT INDRA',NULL),
(77205,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:10:30','IT','192.168.1.6','DH-IT INDRA',NULL),
(77206,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:10:36','IT','192.168.1.6','DH-IT INDRA',NULL),
(77207,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:12:55','IT','192.168.1.6','DH-IT INDRA',NULL),
(77208,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:12:58','IT','192.168.1.6','DH-IT INDRA',NULL),
(77209,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:22:20','IT','192.168.1.6','DH-IT INDRA',NULL),
(77210,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-02-14 10:25:12','IT','192.168.1.6','DH-IT INDRA',NULL),
(77212,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-15 21:39:28','IT','192.168.1.4','DH-IT INDRA',NULL),
(77213,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-15 21:44:21','IT','192.168.1.4','DH-IT INDRA',NULL),
(77214,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-18 20:53:29','IT','192.168.1.4','DH-IT INDRA',NULL),
(77215,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-18 20:56:41','IT','192.168.1.4','DH-IT INDRA',NULL),
(77216,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-21 10:55:30','IT','40.40.40.51','DH-IT INDRA',NULL),
(77217,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-24 05:12:11','IT','192.168.1.4','DH-IT INDRA',NULL),
(77221,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-24 20:08:12','IT','192.168.1.4','DH-IT INDRA',NULL),
(77222,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-02-24 20:20:34','IT','192.168.1.4','DH-IT INDRA',NULL),
(77223,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 11:22:52','IT','11.11.11.42','DH-IT INDRA',NULL),
(77224,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 11:23:43','IT','11.11.11.42','DH-IT INDRA',NULL),
(77225,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 11:27:49','IT','11.11.11.42','DH-IT INDRA',NULL),
(77226,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 11:44:05','IT','11.11.11.42','DH-IT INDRA',NULL),
(77227,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 11:45:22','IT','11.11.11.42','DH-IT INDRA',NULL),
(77228,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 12:06:41','IT','11.11.11.42','DH-IT INDRA',NULL),
(77229,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 12:14:10','IT','11.11.11.42','DH-IT INDRA',NULL),
(77230,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 12:18:03','IT','11.11.11.42','DH-IT INDRA',NULL),
(77231,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 12:30:16','IT','11.11.11.42','DH-IT INDRA',NULL),
(77232,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-02 12:54:35','IT','11.11.11.42','DH-IT INDRA',NULL),
(77233,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:23:23','IT','11.11.11.42','DH-IT INDRA',NULL),
(77234,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:29:04','IT','11.11.11.42','DH-IT INDRA',NULL),
(77235,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:35:41','IT','11.11.11.42','DH-IT INDRA',NULL),
(77236,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:35:50','IT','11.11.11.42','DH-IT INDRA',NULL),
(77237,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:48:40','IT','11.11.11.42','DH-IT INDRA',NULL),
(77238,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:52:28','IT','11.11.11.42','DH-IT INDRA',NULL),
(77239,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 14:59:19','IT','11.11.11.42','DH-IT INDRA',NULL),
(77240,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 15:01:44','IT','11.11.11.42','DH-IT INDRA',NULL),
(77241,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 15:07:21','IT','11.11.11.42','DH-IT INDRA',NULL),
(77242,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 15:11:31','IT','11.11.11.42','DH-IT INDRA',NULL),
(77243,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 15:53:20','IT','11.11.11.42','DH-IT INDRA',NULL),
(77244,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 16:03:12','IT','11.11.11.42','DH-IT INDRA',NULL),
(77245,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 16:03:21','IT','11.11.11.42','DH-IT INDRA',NULL),
(77246,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-06 16:13:44','IT','11.11.11.42','DH-IT INDRA',NULL),
(77247,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:01:58','IT','192.168.1.10','DH-IT INDRA',NULL),
(77248,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:12:15','IT','192.168.1.10','DH-IT INDRA',NULL),
(77249,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:16:01','IT','192.168.1.10','DH-IT INDRA',NULL),
(77250,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:32:54','IT','192.168.1.10','DH-IT INDRA',NULL),
(77251,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:39:02','IT','192.168.1.10','DH-IT INDRA',NULL),
(77252,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:48:36','IT','192.168.1.10','DH-IT INDRA',NULL),
(77253,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 15:57:31','IT','192.168.1.10','DH-IT INDRA',NULL),
(77254,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 16:07:19','IT','192.168.1.10','DH-IT INDRA',NULL),
(77255,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-07 16:09:23','IT','192.168.1.10','DH-IT INDRA',NULL),
(77256,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 07:35:59','IT','192.168.1.10','DH-IT INDRA',NULL),
(77257,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 07:39:59','IT','192.168.1.10','DH-IT INDRA',NULL),
(77258,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 07:46:21','IT','192.168.1.10','DH-IT INDRA',NULL),
(77259,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 08:24:18','IT','192.168.1.10','DH-IT INDRA',NULL),
(77260,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 08:57:13','IT','192.168.1.10','DH-IT INDRA',NULL),
(77261,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 08:59:47','IT','192.168.1.10','DH-IT INDRA',NULL),
(77262,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 09:03:18','IT','192.168.1.10','DH-IT INDRA',NULL),
(77263,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-08 09:06:28','IT','192.168.1.10','DH-IT INDRA',NULL),
(77265,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:03:32','IT','192.168.1.7','DH-IT INDRA',NULL),
(77266,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:04:13','IT','192.168.1.7','DH-IT INDRA',NULL),
(77267,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:04:49','IT','192.168.1.7','DH-IT INDRA',NULL),
(77268,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:05:00','IT','192.168.1.7','DH-IT INDRA',NULL),
(77269,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:06:08','IT','192.168.1.7','DH-IT INDRA',NULL),
(77270,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:10:06','IT','192.168.1.7','DH-IT INDRA',NULL),
(77271,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:15:27','IT','192.168.1.7','DH-IT INDRA',NULL),
(77272,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:21:16','IT','192.168.1.7','DH-IT INDRA',NULL),
(77273,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:22:30','IT','192.168.1.7','DH-IT INDRA',NULL),
(77274,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:52:06','IT','192.168.1.7','DH-IT INDRA',NULL),
(77275,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:56:41','IT','192.168.1.7','DH-IT INDRA',NULL),
(77276,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 04:57:56','IT','192.168.1.7','DH-IT INDRA',NULL),
(77277,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 05:12:39','IT','192.168.1.7','DH-IT INDRA',NULL),
(77278,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 05:17:15','IT','192.168.1.7','DH-IT INDRA',NULL),
(77279,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 05:19:20','IT','192.168.1.7','DH-IT INDRA',NULL),
(77280,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-10 05:27:26','IT','192.168.1.7','DH-IT INDRA',NULL),
(77281,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 09:45:01','IT','11.11.11.42','DH-IT INDRA',NULL),
(77282,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:16:28','IT','11.11.11.42','DH-IT INDRA',NULL),
(77283,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:18:57','IT','11.11.11.42','DH-IT INDRA',NULL),
(77284,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:20:19','IT','11.11.11.42','DH-IT INDRA',NULL),
(77285,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:22:17','IT','11.11.11.42','DH-IT INDRA',NULL),
(77286,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:23:45','IT','11.11.11.42','DH-IT INDRA',NULL),
(77287,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:30:41','IT','11.11.11.42','DH-IT INDRA',NULL),
(77288,'LOGIN_PROFIL_RISIKO_INDRA_MAULANA','Y','855','2026-03-12 10:41:33','IT','11.11.11.42','DH-IT INDRA',NULL),
(77289,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-03-20 14:47:22','IT','192.168.0.116','DH-IT INDRA',NULL),
(77290,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-03-20 14:52:45','IT','192.168.0.116','DH-IT INDRA',NULL),
(77291,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-03-20 14:57:55','IT','192.168.0.116','DH-IT INDRA',NULL),
(77292,'LOGIN_LTBPR_INDRA_MAULANA','Y','855','2026-03-20 14:58:57','IT','192.168.0.116','DH-IT INDRA',NULL);

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

/*Table structure for table `ltbprk_a0301_riwayat_pendirian_bpr` */

DROP TABLE IF EXISTS `ltbprk_a0301_riwayat_pendirian_bpr`;

CREATE TABLE `ltbprk_a0301_riwayat_pendirian_bpr` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'D01' COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL DEFAULT '03001' COMMENT 'Diisi dengan "03001"',
  `nomor_akta_pendirian` varchar(50) NOT NULL COMMENT 'Diisi dengan Nomor Akta Pendirian',
  `tanggal_akta_pendirian` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `nomor_perubahan_anggaran_dasar` varchar(50) NOT NULL COMMENT 'Diisi dengan Nomor perubahan anggaran dasar terakhir',
  `tanggal_perubahan_anggaran_dasar` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `nomor_pengesahan_dari_instansi` varchar(50) NOT NULL COMMENT 'Diisi dengan Nomor pengesahan dari instansi yang berwenang',
  `tanggal_pengesahan_dari_instansi` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `tanggal_mulai_beroperasi` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `bidang_usaha_sesuai_anggaran_dasar` varchar(2000) NOT NULL COMMENT 'Diisi dengan Bidang usaha sesuai anggaran dasar',
  `tempat_kedudukan` varchar(2000) NOT NULL COMMENT 'Diisi dengan Tempat kedudukan',
  `opini_akuntan_publik` varchar(2) DEFAULT NULL COMMENT '- Diisi dengan:',
  `nama_akuntan_publik` varchar(2000) DEFAULT NULL COMMENT 'Diisi dengan Nama Akuntan Publik',
  PRIMARY KEY (`nomor_perubahan_anggaran_dasar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0301_riwayat_pendirian_bpr` */

insert  into `ltbprk_a0301_riwayat_pendirian_bpr`(`flag_detail`,`kode_komponen`,`nomor_akta_pendirian`,`tanggal_akta_pendirian`,`nomor_perubahan_anggaran_dasar`,`tanggal_perubahan_anggaran_dasar`,`nomor_pengesahan_dari_instansi`,`tanggal_pengesahan_dari_instansi`,`tanggal_mulai_beroperasi`,`bidang_usaha_sesuai_anggaran_dasar`,`tempat_kedudukan`,`opini_akuntan_publik`,`nama_akuntan_publik`) values 
('D01','03001','adad@#$%%!dfADFD21313','2024-01-01','adad@#$%%!dfADFD21313','2024-05-01','adad@#$%%!dfADFD21313','2024-05-01','2024-05-01','aa','asf','01','asf');

/*Table structure for table `ltbprk_a0301_riwayat_pendirian_bpr_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0301_riwayat_pendirian_bpr_arsip`;

CREATE TABLE `ltbprk_a0301_riwayat_pendirian_bpr_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'D01' COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL DEFAULT '03001' COMMENT 'Diisi dengan "03001"',
  `nomor_akta_pendirian` varchar(50) NOT NULL COMMENT 'Diisi dengan Nomor Akta Pendirian',
  `tanggal_akta_pendirian` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `nomor_perubahan_anggaran_dasar` varchar(50) NOT NULL COMMENT 'Diisi dengan Nomor perubahan anggaran dasar terakhir',
  `tanggal_perubahan_anggaran_dasar` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `nomor_pengesahan_dari_instansi` varchar(50) NOT NULL COMMENT 'Diisi dengan Nomor pengesahan dari instansi yang berwenang',
  `tanggal_pengesahan_dari_instansi` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `tanggal_mulai_beroperasi` date NOT NULL COMMENT 'Format: YYYYMMDD',
  `bidang_usaha_sesuai_anggaran_dasar` varchar(2000) NOT NULL COMMENT 'Diisi dengan Bidang usaha sesuai anggaran dasar',
  `tempat_kedudukan` varchar(2000) NOT NULL COMMENT 'Diisi dengan Tempat kedudukan',
  `opini_akuntan_publik` varchar(2) DEFAULT NULL COMMENT '- Diisi dengan:',
  `nama_akuntan_publik` varchar(2000) DEFAULT NULL COMMENT 'Diisi dengan Nama Akuntan Publik',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`nomor_perubahan_anggaran_dasar`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0301_riwayat_pendirian_bpr_arsip` */

insert  into `ltbprk_a0301_riwayat_pendirian_bpr_arsip`(`flag_detail`,`kode_komponen`,`nomor_akta_pendirian`,`tanggal_akta_pendirian`,`nomor_perubahan_anggaran_dasar`,`tanggal_perubahan_anggaran_dasar`,`nomor_pengesahan_dari_instansi`,`tanggal_pengesahan_dari_instansi`,`tanggal_mulai_beroperasi`,`bidang_usaha_sesuai_anggaran_dasar`,`tempat_kedudukan`,`opini_akuntan_publik`,`nama_akuntan_publik`,`kode_arsip`) values 
('D01','03001','adad@#$%%!dfADFD21313','2024-01-01','adad@#$%%!dfADFD21313','2024-05-01','adad@#$%%!dfADFD21313','2024-05-01','2024-05-01','aa','asf','01','asf','1_122024');

/*Table structure for table `ltbprk_a0301_riwayat_pendirian_bpr_footer` */

DROP TABLE IF EXISTS `ltbprk_a0301_riwayat_pendirian_bpr_footer`;

CREATE TABLE `ltbprk_a0301_riwayat_pendirian_bpr_footer` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'D01' COMMENT 'Diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0301_riwayat_pendirian_bpr_footer` */

insert  into `ltbprk_a0301_riwayat_pendirian_bpr_footer`(`flag_detail`,`keterangan`) values 
('F01','asafsafa');

/*Table structure for table `ltbprk_a0301_riwayat_pendirian_bpr_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0301_riwayat_pendirian_bpr_footer_arsip`;

CREATE TABLE `ltbprk_a0301_riwayat_pendirian_bpr_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  UNIQUE KEY `kode_arsip` (`kode_arsip`,`flag_detail`,`keterangan`) USING HASH,
  KEY `kode_arsip_2` (`kode_arsip`,`flag_detail`),
  KEY `keterangan` (`keterangan`(768))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0301_riwayat_pendirian_bpr_footer_arsip` */

insert  into `ltbprk_a0301_riwayat_pendirian_bpr_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','asafsafa','1_122024');

/*Table structure for table `ltbprk_a0304_penjelasan_npl` */

DROP TABLE IF EXISTS `ltbprk_a0304_penjelasan_npl`;

CREATE TABLE `ltbprk_a0304_penjelasan_npl` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Angka, diisi dengan "03002"',
  `uraian` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  PRIMARY KEY (`kode_komponen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0304_penjelasan_npl` */

insert  into `ltbprk_a0304_penjelasan_npl`(`flag_detail`,`kode_komponen`,`uraian`) values 
('D01','03002','a'),
('D01','03003','b');

/*Table structure for table `ltbprk_a0304_penjelasan_npl_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0304_penjelasan_npl_arsip`;

CREATE TABLE `ltbprk_a0304_penjelasan_npl_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Angka, diisi dengan "03002"',
  `uraian` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0304_penjelasan_npl_arsip` */

insert  into `ltbprk_a0304_penjelasan_npl_arsip`(`flag_detail`,`kode_komponen`,`uraian`,`kode_arsip`) values 
('D01','03002','a','1_122024'),
('D01','03003','b','1_122024');

/*Table structure for table `ltbprk_a0304_penjelasan_npl_footer` */

DROP TABLE IF EXISTS `ltbprk_a0304_penjelasan_npl_footer`;

CREATE TABLE `ltbprk_a0304_penjelasan_npl_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0304_penjelasan_npl_footer` */

insert  into `ltbprk_a0304_penjelasan_npl_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer penjelasan NPL');

/*Table structure for table `ltbprk_a0304_penjelasan_npl_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0304_penjelasan_npl_footer_arsip`;

CREATE TABLE `ltbprk_a0304_penjelasan_npl_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0304_penjelasan_npl_footer_arsip` */

insert  into `ltbprk_a0304_penjelasan_npl_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer penjelasan NPL','1_122024');

/*Table structure for table `ltbprk_a0502_bidang_usaha` */

DROP TABLE IF EXISTS `ltbprk_a0502_bidang_usaha`;

CREATE TABLE `ltbprk_a0502_bidang_usaha` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Angka, diisi dengan "05001"',
  `kategori_kegiatan_usaha` varchar(2) NOT NULL COMMENT 'Angka, diisi dengan: 01=Produk dasar, 02=Produk dasar lainnya, 03=Produk lanjutan berbasis teknologi informasi, 04=Produk lanjutan berkaitan dengan kegiatan atau produk lembaga jasa keuangan nonbank atau mempengaruhi penilaian profil risiko, 05=Produk lanjutan memerlukan izin dan/atau persetujuan dari otoritas lain, 06=Kegiatan Laku Pandai',
  `jenis_produk` varchar(2) NOT NULL COMMENT 'Angka, diisi dengan kode produk (lihat referensi jenis produk)',
  `nama_produk` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `uraian` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  PRIMARY KEY (`kode_komponen`,`kategori_kegiatan_usaha`,`jenis_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0502_bidang_usaha` */

insert  into `ltbprk_a0502_bidang_usaha`(`flag_detail`,`kode_komponen`,`kategori_kegiatan_usaha`,`jenis_produk`,`nama_produk`,`uraian`) values 
('D01','05001','01','01','c','d'),
('D01','05001','02','01','c','d'),
('D01','05001','99','04','c','d');

/*Table structure for table `ltbprk_a0502_bidang_usaha_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0502_bidang_usaha_arsip`;

CREATE TABLE `ltbprk_a0502_bidang_usaha_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Angka, diisi dengan "05001"',
  `kategori_kegiatan_usaha` varchar(2) NOT NULL COMMENT 'Angka, diisi dengan: 01=Produk dasar, 02=Produk dasar lainnya, 03=Produk lanjutan berbasis teknologi informasi, 04=Produk lanjutan berkaitan dengan kegiatan atau produk lembaga jasa keuangan nonbank atau mempengaruhi penilaian profil risiko, 05=Produk lanjutan memerlukan izin dan/atau persetujuan dari otoritas lain, 06=Kegiatan Laku Pandai',
  `jenis_produk` varchar(2) NOT NULL COMMENT 'Angka, diisi dengan kode produk (lihat referensi jenis produk)',
  `nama_produk` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `uraian` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`kategori_kegiatan_usaha`,`jenis_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0502_bidang_usaha_arsip` */

insert  into `ltbprk_a0502_bidang_usaha_arsip`(`flag_detail`,`kode_komponen`,`kategori_kegiatan_usaha`,`jenis_produk`,`nama_produk`,`uraian`,`kode_arsip`) values 
('D01','05001','01','01','c','d','1_122024'),
('D01','05001','02','01','c','d','1_122024'),
('D01','05001','99','04','c','d','1_122024');

/*Table structure for table `ltbprk_a0502_bidang_usaha_footer` */

DROP TABLE IF EXISTS `ltbprk_a0502_bidang_usaha_footer`;

CREATE TABLE `ltbprk_a0502_bidang_usaha_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0502_bidang_usaha_footer` */

insert  into `ltbprk_a0502_bidang_usaha_footer`(`flag_detail`,`keterangan`) values 
('F01','Keterangan Footer 0502');

/*Table structure for table `ltbprk_a0502_bidang_usaha_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0502_bidang_usaha_footer_arsip`;

CREATE TABLE `ltbprk_a0502_bidang_usaha_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0502_bidang_usaha_footer_arsip` */

insert  into `ltbprk_a0502_bidang_usaha_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Keterangan Footer 0502','1_122024');

/*Table structure for table `ltbprk_a0506_kerja_sama_lembaga` */

DROP TABLE IF EXISTS `ltbprk_a0506_kerja_sama_lembaga`;

CREATE TABLE `ltbprk_a0506_kerja_sama_lembaga` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Angka, diisi dengan "05002"',
  `referensi_lembaga` varchar(1) NOT NULL COMMENT 'Angka, diisi dengan kode referensi lembaga',
  `nama_bank_lembaga_lain` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `sandi_bank` varchar(50) NOT NULL COMMENT 'Angka, diisi jika referensi_lembaga = 3 (Apabila Bank)',
  `npwp` varchar(25) NOT NULL COMMENT 'Angka dan tanda titik atau strip, diisi jika referensi_lembaga = 3 (Lembaga Lain)',
  `jenis_kerja_sama` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `uraian_kerja_sama` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `tanggal_mulai_kerja_sama` date NOT NULL COMMENT 'Format tanggal YYYYMMDD',
  PRIMARY KEY (`kode_komponen`,`referensi_lembaga`,`sandi_bank`,`npwp`,`tanggal_mulai_kerja_sama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0506_kerja_sama_lembaga` */

insert  into `ltbprk_a0506_kerja_sama_lembaga`(`flag_detail`,`kode_komponen`,`referensi_lembaga`,`nama_bank_lembaga_lain`,`sandi_bank`,`npwp`,`jenis_kerja_sama`,`uraian_kerja_sama`,`tanggal_mulai_kerja_sama`) values 
('D01','05002','1','Lembaga A','011','','a','a','2024-06-01'),
('D01','05002','1','Lembaga C','011','','c','c','2024-07-30'),
('D01','05002','2','Lembaga B','','1235','b','b','2024-06-25');

/*Table structure for table `ltbprk_a0506_kerja_sama_lembaga_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0506_kerja_sama_lembaga_arsip`;

CREATE TABLE `ltbprk_a0506_kerja_sama_lembaga_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Angka, diisi dengan "05002"',
  `referensi_lembaga` varchar(1) NOT NULL COMMENT 'Angka, diisi dengan kode referensi lembaga',
  `nama_bank_lembaga_lain` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `sandi_bank` varchar(50) NOT NULL COMMENT 'Angka, diisi jika referensi_lembaga = 3 (Apabila Bank)',
  `npwp` varchar(25) NOT NULL COMMENT 'Angka dan tanda titik atau strip, diisi jika referensi_lembaga = 3 (Lembaga Lain)',
  `jenis_kerja_sama` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `uraian_kerja_sama` varchar(2000) NOT NULL COMMENT 'Huruf, angka, spasi, dan karakter, diisi dengan free text',
  `tanggal_mulai_kerja_sama` date NOT NULL COMMENT 'Format tanggal YYYYMMDD',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`referensi_lembaga`,`sandi_bank`,`npwp`,`tanggal_mulai_kerja_sama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0506_kerja_sama_lembaga_arsip` */

insert  into `ltbprk_a0506_kerja_sama_lembaga_arsip`(`flag_detail`,`kode_komponen`,`referensi_lembaga`,`nama_bank_lembaga_lain`,`sandi_bank`,`npwp`,`jenis_kerja_sama`,`uraian_kerja_sama`,`tanggal_mulai_kerja_sama`,`kode_arsip`) values 
('D01','05002','1','Lembaga A','011','','a','a','2024-06-01','1_122024'),
('D01','05002','1','Lembaga C','011','','c','c','2024-07-30','1_122024'),
('D01','05002','2','Lembaga B','','1235','b','b','2024-06-25','1_122024');

/*Table structure for table `ltbprk_a0506_kerja_sama_lembaga_footer` */

DROP TABLE IF EXISTS `ltbprk_a0506_kerja_sama_lembaga_footer`;

CREATE TABLE `ltbprk_a0506_kerja_sama_lembaga_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0506_kerja_sama_lembaga_footer` */

insert  into `ltbprk_a0506_kerja_sama_lembaga_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer');

/*Table structure for table `ltbprk_a0506_kerja_sama_lembaga_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_a0506_kerja_sama_lembaga_footer_arsip`;

CREATE TABLE `ltbprk_a0506_kerja_sama_lembaga_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_a0506_kerja_sama_lembaga_footer_arsip` */

insert  into `ltbprk_a0506_kerja_sama_lembaga_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer','1_122024');

/*Table structure for table `ltbprk_a05072_kegiatan_pengembangan` */

DROP TABLE IF EXISTS `ltbprk_a05072_kegiatan_pengembangan`;

CREATE TABLE `ltbprk_a05072_kegiatan_pengembangan` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Diisi dengan GSO26',
  `kegiatan_pengembangan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, dan karakter',
  `tanggal_pelaksanaan` date NOT NULL COMMENT 'Format YYYY-MM-DD',
  `pihak_pelaksana` varchar(2) NOT NULL COMMENT 'Referensi tabel lain - diisi dengan kode pihak',
  `kategori_peserta` varchar(2) NOT NULL COMMENT 'Referensi tabel lain - diisi dengan kode kategori',
  `jumlah_peserta` int(11) NOT NULL COMMENT 'Diisi dengan angka',
  `uraian_kegiatan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, dan karakter',
  PRIMARY KEY (`kode_komponen`,`pihak_pelaksana`,`kategori_peserta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kegiatan pengembangan';

/*Data for the table `ltbprk_a05072_kegiatan_pengembangan` */

insert  into `ltbprk_a05072_kegiatan_pengembangan`(`flag_detail`,`kode_komponen`,`kegiatan_pengembangan`,`tanggal_pelaksanaan`,`pihak_pelaksana`,`kategori_peserta`,`jumlah_peserta`,`uraian_kegiatan`) values 
('D01','05026','Bounding Team','2024-05-25','01','01',250,'Acara tahunan untuk dekat dengan masing-masing team'),
('D01','05026','Kegiatan Training','2024-03-01','02','02',5,'Materi kegiatan training terkait abc'),
('D01','05026','Training AWS','2024-04-05','03','03',3,'Pendidikan basic training in general terkait AWS');

/*Table structure for table `ltbprk_a05072_kegiatan_pengembangan_arsip` */

DROP TABLE IF EXISTS `ltbprk_a05072_kegiatan_pengembangan_arsip`;

CREATE TABLE `ltbprk_a05072_kegiatan_pengembangan_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(5) NOT NULL COMMENT 'Diisi dengan GSO26',
  `kegiatan_pengembangan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, dan karakter',
  `tanggal_pelaksanaan` date NOT NULL COMMENT 'Format YYYY-MM-DD',
  `pihak_pelaksana` varchar(2) NOT NULL COMMENT 'Referensi tabel lain - diisi dengan kode pihak',
  `kategori_peserta` varchar(2) NOT NULL COMMENT 'Referensi tabel lain - diisi dengan kode kategori',
  `jumlah_peserta` int(11) NOT NULL COMMENT 'Diisi dengan angka',
  `uraian_kegiatan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, dan karakter',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`pihak_pelaksana`,`kategori_peserta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kegiatan pengembangan';

/*Data for the table `ltbprk_a05072_kegiatan_pengembangan_arsip` */

insert  into `ltbprk_a05072_kegiatan_pengembangan_arsip`(`flag_detail`,`kode_komponen`,`kegiatan_pengembangan`,`tanggal_pelaksanaan`,`pihak_pelaksana`,`kategori_peserta`,`jumlah_peserta`,`uraian_kegiatan`,`kode_arsip`) values 
('D01','05026','Bounding Team','2024-05-25','01','01',250,'Acara tahunan untuk dekat dengan masing-masing team','1_122024'),
('D01','05026','Kegiatan Training','2024-03-01','02','02',5,'Materi kegiatan training terkait abc','1_122024'),
('D01','05026','Training AWS','2024-04-05','03','03',3,'Pendidikan basic training in general terkait AWS','1_122024');

/*Table structure for table `ltbprk_a05072_kegiatan_pengembangan_footer` */

DROP TABLE IF EXISTS `ltbprk_a05072_kegiatan_pengembangan_footer`;

CREATE TABLE `ltbprk_a05072_kegiatan_pengembangan_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Free text - opsional'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kegiatan pengembangan';

/*Data for the table `ltbprk_a05072_kegiatan_pengembangan_footer` */

insert  into `ltbprk_a05072_kegiatan_pengembangan_footer`(`flag_detail`,`keterangan`) values 
('F01','SDM Keterangan');

/*Table structure for table `ltbprk_a05072_kegiatan_pengembangan_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_a05072_kegiatan_pengembangan_footer_arsip`;

CREATE TABLE `ltbprk_a05072_kegiatan_pengembangan_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Free text - opsional',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kegiatan pengembangan';

/*Data for the table `ltbprk_a05072_kegiatan_pengembangan_footer_arsip` */

insert  into `ltbprk_a05072_kegiatan_pengembangan_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','SDM Keterangan','1_122024');

/*Table structure for table `ltbprk_backup_log` */

DROP TABLE IF EXISTS `ltbprk_backup_log`;

CREATE TABLE `ltbprk_backup_log` (
  `kode_arsip` varchar(25) NOT NULL,
  `tgl_laporan` date NOT NULL,
  `created_by` int(11) DEFAULT 0,
  `last_created` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ltbprk_backup_log` */

insert  into `ltbprk_backup_log`(`kode_arsip`,`tgl_laporan`,`created_by`,`last_created`,`last_updated`) values 
('1_102025','2025-10-31',855,'2025-11-24 21:49:43','2025-11-24 21:49:43'),
('1_1020251','2025-10-31',855,'2025-11-21 16:10:27','2025-11-24 14:09:54'),
('1_112025','2025-11-30',855,'2025-11-21 16:34:38','2025-11-21 16:34:38'),
('1_122024','2024-12-31',855,'2026-03-20 14:56:10','2026-03-20 14:56:10'),
('1_122025','2025-12-31',855,'2025-11-21 16:36:28','2025-11-21 16:36:28');

/*Table structure for table `ltbprk_e0100_transparansi_tata_kelola` */

DROP TABLE IF EXISTS `ltbprk_e0100_transparansi_tata_kelola`;

CREATE TABLE `ltbprk_e0100_transparansi_tata_kelola` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "000100000000"',
  `alamat` varchar(150) NOT NULL COMMENT 'Diisi dengan alamat - huruf, angka, spasi, karakter',
  `nomor_telepon` varchar(15) NOT NULL COMMENT 'Diisi dengan nomor telepon - angka, spasi, karakter -, (, )',
  `penjelasan_umum` varchar(2000) NOT NULL COMMENT 'Berisi penjelasan umum transparansi penerapan Tata Kelola BPR atau hal lainnya - huruf, angka, spasi, karakter',
  `peringkat_komposit_hasil_penilaian` varchar(1) NOT NULL COMMENT '1 = Sangat Baik, 2 = Baik, 3 = Cukup, 4 = Kurang (referensi tabel)',
  `penilaian_sendiri_self_assessment` varchar(2000) NOT NULL COMMENT 'Berisi penjelasan singkat peringkat komposit hasil penilaian sendiri tata kelola - selain enter dan |',
  PRIMARY KEY (`kode_komponen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data transparansi dan tata kelola BPR';

/*Data for the table `ltbprk_e0100_transparansi_tata_kelola` */

insert  into `ltbprk_e0100_transparansi_tata_kelola`(`flag_detail`,`kode_komponen`,`alamat`,`nomor_telepon`,`penjelasan_umum`,`peringkat_komposit_hasil_penilaian`,`penilaian_sendiri_self_assessment`) values 
('D01','000100000000','cilandak No.17A','0812123456','Berisi penjelasan umum transparansi penerapan Tata Kelola BPR atau hal lain yang dinilai signifikan dan tidak termasuk dalam cakupan pada form lainnya','1','Berisi penjelasan singkat peringkat komposit hasil penilaian sendiri tata kelola');

/*Table structure for table `ltbprk_e0100_transparansi_tata_kelola_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0100_transparansi_tata_kelola_arsip`;

CREATE TABLE `ltbprk_e0100_transparansi_tata_kelola_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "000100000000"',
  `alamat` varchar(150) NOT NULL COMMENT 'Diisi dengan alamat - huruf, angka, spasi, karakter',
  `nomor_telepon` varchar(15) NOT NULL COMMENT 'Diisi dengan nomor telepon - angka, spasi, karakter -, (, )',
  `penjelasan_umum` varchar(2000) NOT NULL COMMENT 'Berisi penjelasan umum transparansi penerapan Tata Kelola BPR atau hal lainnya - huruf, angka, spasi, karakter',
  `peringkat_komposit_hasil_penilaian` varchar(1) NOT NULL COMMENT '1 = Sangat Baik, 2 = Baik, 3 = Cukup, 4 = Kurang (referensi tabel)',
  `penilaian_sendiri_self_assessment` varchar(2000) NOT NULL COMMENT 'Berisi penjelasan singkat peringkat komposit hasil penilaian sendiri tata kelola - selain enter dan |',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data transparansi dan tata kelola BPR';

/*Data for the table `ltbprk_e0100_transparansi_tata_kelola_arsip` */

insert  into `ltbprk_e0100_transparansi_tata_kelola_arsip`(`flag_detail`,`kode_komponen`,`alamat`,`nomor_telepon`,`penjelasan_umum`,`peringkat_komposit_hasil_penilaian`,`penilaian_sendiri_self_assessment`,`kode_arsip`) values 
('D01','000100000000','cilandak No.17A','0812123456','Berisi penjelasan umum transparansi penerapan Tata Kelola BPR atau hal lain yang dinilai signifikan dan tidak termasuk dalam cakupan pada form lainnya','1','Berisi penjelasan singkat peringkat komposit hasil penilaian sendiri tata kelola','1_122024');

/*Table structure for table `ltbprk_e0201_tugas_tanggung_jawab_direksi` */

DROP TABLE IF EXISTS `ltbprk_e0201_tugas_tanggung_jawab_direksi`;

CREATE TABLE `ltbprk_e0201_tugas_tanggung_jawab_direksi` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "011000000000"',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `tugas_dan_tanggung_jawab` varchar(2000) NOT NULL COMMENT 'Penjelasan tugas dan tanggung jawab - huruf, angka, spasi, karakter selain enter',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data tugas dan tanggung jawab berdasarkan NIK';

/*Data for the table `ltbprk_e0201_tugas_tanggung_jawab_direksi` */

insert  into `ltbprk_e0201_tugas_tanggung_jawab_direksi`(`flag_detail`,`kode_komponen`,`nik`,`tugas_dan_tanggung_jawab`) values 
('D01','011000000000','12345670','sbg Direktur Utama'),
('D01','011000000000','12345678','Jabatan Direktur Utama yang menjalankan fungsi kepatuhan'),
('D01','011000000000','12345679','jabatan Direktur');

/*Table structure for table `ltbprk_e0201_tugas_tanggung_jawab_direksi_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0201_tugas_tanggung_jawab_direksi_arsip`;

CREATE TABLE `ltbprk_e0201_tugas_tanggung_jawab_direksi_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01"',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "011000000000"',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `tugas_dan_tanggung_jawab` varchar(2000) NOT NULL COMMENT 'Penjelasan tugas dan tanggung jawab - huruf, angka, spasi, karakter selain enter',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data tugas dan tanggung jawab berdasarkan NIK';

/*Data for the table `ltbprk_e0201_tugas_tanggung_jawab_direksi_arsip` */

insert  into `ltbprk_e0201_tugas_tanggung_jawab_direksi_arsip`(`flag_detail`,`kode_komponen`,`nik`,`tugas_dan_tanggung_jawab`,`kode_arsip`) values 
('D01','011000000000','12345670','sbg Direktur Utama','1_122024'),
('D01','011000000000','12345678','Jabatan Direktur Utama yang menjalankan fungsi kepatuhan','1_122024'),
('D01','011000000000','12345679','jabatan Direktur','1_122024');

/*Table structure for table `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer` */

DROP TABLE IF EXISTS `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer`;

CREATE TABLE `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer` */

insert  into `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Dewan Direksi)'),
('F02','Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)');

/*Table structure for table `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer_arsip`;

CREATE TABLE `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL DEFAULT 'F01' COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer_arsip` */

insert  into `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Dewan Direksi)','1_122024'),
('F02','Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)','1_122024');

/*Table structure for table `ltbprk_e0202_tugas_tanggung_jawab_komisaris` */

DROP TABLE IF EXISTS `ltbprk_e0202_tugas_tanggung_jawab_komisaris`;

CREATE TABLE `ltbprk_e0202_tugas_tanggung_jawab_komisaris` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "012010000000" - angka (referensi tabel)',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka - Tidak muncul di output APOLO',
  `tugas_dan_tanggung_jawab` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data tugas dan tanggung jawab komisaris berdasarkan NIK';

/*Data for the table `ltbprk_e0202_tugas_tanggung_jawab_komisaris` */

insert  into `ltbprk_e0202_tugas_tanggung_jawab_komisaris`(`flag_detail`,`kode_komponen`,`nik`,`tugas_dan_tanggung_jawab`) values 
('D01','012010000000','12345670','sbg komisaris utama'),
('D01','012010000000','12345678',' jabatan komisaris utama dan independen'),
('D01','012010000000','12345679','jabatan komisaris');

/*Table structure for table `ltbprk_e0202_tugas_tanggung_jawab_komisaris_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0202_tugas_tanggung_jawab_komisaris_arsip`;

CREATE TABLE `ltbprk_e0202_tugas_tanggung_jawab_komisaris_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "012010000000" - angka (referensi tabel)',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka - Tidak muncul di output APOLO',
  `tugas_dan_tanggung_jawab` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data tugas dan tanggung jawab komisaris berdasarkan NIK';

/*Data for the table `ltbprk_e0202_tugas_tanggung_jawab_komisaris_arsip` */

insert  into `ltbprk_e0202_tugas_tanggung_jawab_komisaris_arsip`(`flag_detail`,`kode_komponen`,`nik`,`tugas_dan_tanggung_jawab`,`kode_arsip`) values 
('D01','012010000000','12345670','sbg komisaris utama','1_122024'),
('D01','012010000000','12345678',' jabatan komisaris utama dan independen','1_122024'),
('D01','012010000000','12345679','jabatan komisaris','1_122024');

/*Table structure for table `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer` */

DROP TABLE IF EXISTS `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer`;

CREATE TABLE `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer` */

insert  into `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Dewan Komisaris)'),
('F02','Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)');

/*Table structure for table `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer_arsip`;

CREATE TABLE `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer_arsip` */

insert  into `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Dewan Komisaris)','1_122024'),
('F02','Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)','1_122024');

/*Table structure for table `ltbprk_e0203_tugas_tanggung_jawab_komite` */

DROP TABLE IF EXISTS `ltbprk_e0203_tugas_tanggung_jawab_komite`;

CREATE TABLE `ltbprk_e0203_tugas_tanggung_jawab_komite` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "013301000000" - angka',
  `komite` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `tugas_dan_tanggung_jawab` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter',
  `program` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter',
  `realisasi` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter',
  `jumlah` int(11) NOT NULL COMMENT 'Angka'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data tugas dan tanggung jawab komite';

/*Data for the table `ltbprk_e0203_tugas_tanggung_jawab_komite` */

insert  into `ltbprk_e0203_tugas_tanggung_jawab_komite`(`flag_detail`,`kode_komponen`,`komite`,`tugas_dan_tanggung_jawab`,`program`,`realisasi`,`jumlah`) values 
('D01','013301000000','01','melakukan rencana Program kerja 1 tahun kedepan','Program Kerja Komite 1','Realisasi 1',10),
('D01','013301000000','01','melakukan rencana Program kerja 2tahun kedepan','Program Kerja Komite 2','Realisasi 2',10),
('D01','013301000000','01','melakukan rencana Program kerja 2tahun kedepan','Program Kerja Komite 3','Realisasi 3',10);

/*Table structure for table `ltbprk_e0203_tugas_tanggung_jawab_komite_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0203_tugas_tanggung_jawab_komite_arsip`;

CREATE TABLE `ltbprk_e0203_tugas_tanggung_jawab_komite_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "013301000000" - angka',
  `komite` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `tugas_dan_tanggung_jawab` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter',
  `program` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter',
  `realisasi` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter',
  `jumlah` int(11) NOT NULL COMMENT 'Angka',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data tugas dan tanggung jawab komite';

/*Data for the table `ltbprk_e0203_tugas_tanggung_jawab_komite_arsip` */

insert  into `ltbprk_e0203_tugas_tanggung_jawab_komite_arsip`(`flag_detail`,`kode_komponen`,`komite`,`tugas_dan_tanggung_jawab`,`program`,`realisasi`,`jumlah`,`kode_arsip`) values 
('D01','013301000000','01','melakukan rencana Program kerja 1 tahun kedepan','Program Kerja Komite 1','Realisasi 1',10,'1_122024'),
('D01','013301000000','01','melakukan rencana Program kerja 2tahun kedepan','Program Kerja Komite 2','Realisasi 2',10,'1_122024'),
('D01','013301000000','01','melakukan rencana Program kerja 2tahun kedepan','Program Kerja Komite 3','Realisasi 3',10,'1_122024');

/*Table structure for table `ltbprk_e0203_tugas_tanggung_jawab_komite_footer` */

DROP TABLE IF EXISTS `ltbprk_e0203_tugas_tanggung_jawab_komite_footer`;

CREATE TABLE `ltbprk_e0203_tugas_tanggung_jawab_komite_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0203_tugas_tanggung_jawab_komite_footer` */

insert  into `ltbprk_e0203_tugas_tanggung_jawab_komite_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Program Kerja dan Realisasi Program Kerja Komite)');

/*Table structure for table `ltbprk_e0203_tugas_tanggung_jawab_komite_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0203_tugas_tanggung_jawab_komite_footer_arsip`;

CREATE TABLE `ltbprk_e0203_tugas_tanggung_jawab_komite_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "D01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0203_tugas_tanggung_jawab_komite_footer_arsip` */

insert  into `ltbprk_e0203_tugas_tanggung_jawab_komite_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Program Kerja dan Realisasi Program Kerja Komite)','1_122024');

/*Table structure for table `ltbprk_e0204_struktur_independensi_anggota_komite` */

DROP TABLE IF EXISTS `ltbprk_e0204_struktur_independensi_anggota_komite`;

CREATE TABLE `ltbprk_e0204_struktur_independensi_anggota_komite` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "001" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "013201000000" - angka',
  `nama_anggota_komite` varchar(50) NOT NULL COMMENT 'Diisi dengan Nama Anggota Komite - huruf, angka, spasi, karakter selain enter',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `keahlian` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter - Diisi dengan kompetensi dan/atau pengalaman masing-masing',
  `komite_audit` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_pemantau_risiko` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_remunerasi_dan_nominasi` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_management_risiko` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_lainnya` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `pihak_independent` varchar(1) NOT NULL COMMENT 'Diisi dengan 1 (Ya) atau 2 (Tidak) - angka (referensi tabel)',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data struktur independensi anggota komite';

/*Data for the table `ltbprk_e0204_struktur_independensi_anggota_komite` */

insert  into `ltbprk_e0204_struktur_independensi_anggota_komite`(`flag_detail`,`kode_komponen`,`nama_anggota_komite`,`nik`,`keahlian`,`komite_audit`,`komite_pemantau_risiko`,`komite_remunerasi_dan_nominasi`,`komite_management_risiko`,`komite_lainnya`,`pihak_independent`) values 
('D01','013201000000','Komite ABC','1234567','kompetensi dan/atau pengalaman masing masing anggota komite sesuai dengan tugas dan tanggung jawab Komite','02','00','00','00','00','1'),
('D01','013201000000','Komite BCA','1234568','kompetensi dan/atau pengalaman masing masing anggota komite sesuai dengan tugas dan tanggung jawab Komite','00','00','01','02','00','1'),
('D01','013201000000','Komite ACB','1234569','kompetensi dan/atau pengalaman masing masing anggota komite sesuai dengan tugas dan tanggung jawab Komite','01','00','02','00','00','2');

/*Table structure for table `ltbprk_e0204_struktur_independensi_anggota_komite_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0204_struktur_independensi_anggota_komite_arsip`;

CREATE TABLE `ltbprk_e0204_struktur_independensi_anggota_komite_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "001" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "013201000000" - angka',
  `nama_anggota_komite` varchar(50) NOT NULL COMMENT 'Diisi dengan Nama Anggota Komite - huruf, angka, spasi, karakter selain enter',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `keahlian` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter - Diisi dengan kompetensi dan/atau pengalaman masing-masing',
  `komite_audit` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_pemantau_risiko` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_remunerasi_dan_nominasi` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_management_risiko` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `komite_lainnya` varchar(2) NOT NULL COMMENT 'Diisi dengan kode referensi - angka (referensi tabel)',
  `pihak_independent` varchar(1) NOT NULL COMMENT 'Diisi dengan 1 (Ya) atau 2 (Tidak) - angka (referensi tabel)',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data struktur independensi anggota komite';

/*Data for the table `ltbprk_e0204_struktur_independensi_anggota_komite_arsip` */

insert  into `ltbprk_e0204_struktur_independensi_anggota_komite_arsip`(`flag_detail`,`kode_komponen`,`nama_anggota_komite`,`nik`,`keahlian`,`komite_audit`,`komite_pemantau_risiko`,`komite_remunerasi_dan_nominasi`,`komite_management_risiko`,`komite_lainnya`,`pihak_independent`,`kode_arsip`) values 
('D01','013201000000','Komite ABC','1234567','kompetensi dan/atau pengalaman masing masing anggota komite sesuai dengan tugas dan tanggung jawab Komite','02','00','00','00','00','1','1_122024'),
('D01','013201000000','Komite BCA','1234568','kompetensi dan/atau pengalaman masing masing anggota komite sesuai dengan tugas dan tanggung jawab Komite','00','00','01','02','00','1','1_122024'),
('D01','013201000000','Komite ACB','1234569','kompetensi dan/atau pengalaman masing masing anggota komite sesuai dengan tugas dan tanggung jawab Komite','01','00','02','00','00','2','1_122024');

/*Table structure for table `ltbprk_e0204_struktur_independensi_anggota_komite_footer` */

DROP TABLE IF EXISTS `ltbprk_e0204_struktur_independensi_anggota_komite_footer`;

CREATE TABLE `ltbprk_e0204_struktur_independensi_anggota_komite_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0204_struktur_independensi_anggota_komite_footer` */

insert  into `ltbprk_e0204_struktur_independensi_anggota_komite_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Struktur, Keanggotaan, Keahlian, dan Independensi Anggota Komite)');

/*Table structure for table `ltbprk_e0204_struktur_independensi_anggota_komite_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0204_struktur_independensi_anggota_komite_footer_arsip`;

CREATE TABLE `ltbprk_e0204_struktur_independensi_anggota_komite_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0204_struktur_independensi_anggota_komite_footer_arsip` */

insert  into `ltbprk_e0204_struktur_independensi_anggota_komite_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Tindak Lanjut Rekomendasi Struktur, Keanggotaan, Keahlian, dan Independensi Anggota Komite)','1_122024');

/*Table structure for table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */

DROP TABLE IF EXISTS `ltbprk_e0302_kepemilikan_saham_kelompok_usaha`;

CREATE TABLE `ltbprk_e0302_kepemilikan_saham_kelompok_usaha` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "042010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka - Tidak muncul di output APOLO',
  `nama_kelompok_usaha_bpr` varchar(50) NOT NULL COMMENT 'Free text - wajib diisi - huruf, angka, spasi, karakter selain enter',
  `persentase_kepemilikan` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang ".", harus lebih dari nol dan maksimal 100.00 - angka, karakter "."',
  `persentase_kepemilikan_tahun` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang ".", harus lebih dari nol dan maksimal 100.00 - angka, karakter "."',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kepemilikan saham kelompok usaha BPR';

/*Data for the table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */

insert  into `ltbprk_e0302_kepemilikan_saham_kelompok_usaha`(`flag_detail`,`kode_komponen`,`nik`,`nama_kelompok_usaha_bpr`,`persentase_kepemilikan`,`persentase_kepemilikan_tahun`) values 
('D01','042010000000','120','abc',10.00,20.00),
('D01','042010000000','121','def',90.00,80.00),
('D01','042010000000','122','ghi',100.00,80.00),
('D01','042010000000','123','abc',10.00,20.00),
('D01','042010000000','124','def',90.00,80.00),
('D01','042010000000','125','ghi',100.00,100.00),
('D01','042010000000','126','abc',10.00,20.00),
('D01','042010000000','127','def',90.00,80.00),
('D01','042010000000','128','ghi',100.00,100.00);

/*Table structure for table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_arsip`;

CREATE TABLE `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "042010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka - Tidak muncul di output APOLO',
  `nama_kelompok_usaha_bpr` varchar(50) NOT NULL COMMENT 'Free text - wajib diisi - huruf, angka, spasi, karakter selain enter',
  `persentase_kepemilikan` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang ".", harus lebih dari nol dan maksimal 100.00 - angka, karakter "."',
  `persentase_kepemilikan_tahun` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang ".", harus lebih dari nol dan maksimal 100.00 - angka, karakter "."',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kepemilikan saham kelompok usaha BPR';

/*Data for the table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_arsip` */

insert  into `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_arsip`(`flag_detail`,`kode_komponen`,`nik`,`nama_kelompok_usaha_bpr`,`persentase_kepemilikan`,`persentase_kepemilikan_tahun`,`kode_arsip`) values 
('D01','042010000000','120','abc',10.00,20.00,'1_122024'),
('D01','042010000000','121','def',90.00,80.00,'1_122024'),
('D01','042010000000','122','ghi',100.00,80.00,'1_122024'),
('D01','042010000000','123','abc',10.00,20.00,'1_122024'),
('D01','042010000000','124','def',90.00,80.00,'1_122024'),
('D01','042010000000','125','ghi',100.00,100.00,'1_122024'),
('D01','042010000000','126','abc',10.00,20.00,'1_122024'),
('D01','042010000000','127','def',90.00,80.00,'1_122024'),
('D01','042010000000','128','ghi',100.00,100.00,'1_122024');

/*Table structure for table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer` */

DROP TABLE IF EXISTS `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer`;

CREATE TABLE `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer` */

insert  into `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Dewan Komisaris pada Perusahaan Lain)');

/*Table structure for table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer_arsip`;

CREATE TABLE `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer_arsip` */

insert  into `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Dewan Komisaris pada Perusahaan Lain)','1_122024');

/*Table structure for table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */

DROP TABLE IF EXISTS `ltbprk_e0303_kepemilikan_saham_perusahaan_lain`;

CREATE TABLE `ltbprk_e0303_kepemilikan_saham_perusahaan_lain` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "02201000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Tidak muncul di output APOLO - angka',
  `nama` varchar(50) NOT NULL COMMENT 'Huruf, angka, spasi, karakter selain enter',
  `sandi_bank_lain` varchar(6) DEFAULT NULL COMMENT 'Tidak muncul di output APOLO, validasi dengan daftar sandi bank di OJK - angka (referensi tabel)',
  `nama_bank_perusahaan_lain` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  `persentase_kepemilikan` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang ".", harus lebih dari nol dan maksimal 100.00 - angka',
  PRIMARY KEY (`kode_komponen`,`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kepemilikan saham pada perusahaan lain';

/*Data for the table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */

insert  into `ltbprk_e0303_kepemilikan_saham_perusahaan_lain`(`flag_detail`,`kode_komponen`,`nik`,`nama`,`sandi_bank_lain`,`nama_bank_perusahaan_lain`,`persentase_kepemilikan`) values 
('D01','022010000000','123','Andi','009','Bank ABC',10.00),
('D01','022010000000','124','Julian','009','Bank AAA',90.00),
('D01','022010000000','125','Agus','009','Bank BBB',100.00),
('D01','022010000000','126','Stepahine','009','Bank BCI',10.00),
('D01','022010000000','127','Angel','009','Bank ICB',90.00),
('D01','022010000000','128','Indra','009','Bank AJJ',100.00);

/*Table structure for table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_arsip`;

CREATE TABLE `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "02201000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Tidak muncul di output APOLO - angka',
  `nama` varchar(50) NOT NULL COMMENT 'Huruf, angka, spasi, karakter selain enter',
  `sandi_bank_lain` varchar(6) DEFAULT NULL COMMENT 'Tidak muncul di output APOLO, validasi dengan daftar sandi bank di OJK - angka (referensi tabel)',
  `nama_bank_perusahaan_lain` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  `persentase_kepemilikan` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang ".", harus lebih dari nol dan maksimal 100.00 - angka',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kepemilikan saham pada perusahaan lain';

/*Data for the table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_arsip` */

insert  into `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_arsip`(`flag_detail`,`kode_komponen`,`nik`,`nama`,`sandi_bank_lain`,`nama_bank_perusahaan_lain`,`persentase_kepemilikan`,`kode_arsip`) values 
('D01','022010000000','123','Andi','009','Bank ABC',10.00,'1_122024'),
('D01','022010000000','124','Julian','009','Bank AAA',90.00,'1_122024'),
('D01','022010000000','125','Agus','009','Bank BBB',100.00,'1_122024'),
('D01','022010000000','126','Stepahine','009','Bank BCI',10.00,'1_122024'),
('D01','022010000000','127','Angel','009','Bank ICB',90.00,'1_122024'),
('D01','022010000000','128','Indra','009','Bank AJJ',100.00,'1_122024');

/*Table structure for table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer` */

DROP TABLE IF EXISTS `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer`;

CREATE TABLE `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer` */

insert  into `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Direksi pada Perusahaan Lain)');

/*Table structure for table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer_arsip`;

CREATE TABLE `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer_arsip` */

insert  into `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Direksi pada Perusahaan Lain)','1_122024');

/*Table structure for table `ltbprk_e0401_hubungan_keuangan_direksi_ps` */

DROP TABLE IF EXISTS `ltbprk_e0401_hubungan_keuangan_direksi_ps`;

CREATE TABLE `ltbprk_e0401_hubungan_keuangan_direksi_ps` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "031010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `hubungan_keuangan_i_anggota` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan keuangan dan dapat diisi lebih dari satu - huruf, angka, spasi, karakter',
  `hubungan_keuangan_ii_anggota` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan keuangan dan dapat diisi lebih dari satu - huruf, angka, spasi, karakter',
  `hubungan_keuangan_iii_pemegang` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan keuangan dan dapat diisi lebih dari satu - huruf, angka, spasi, karakter',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data hubungan keuangan direksi dan pemegang saham';

/*Data for the table `ltbprk_e0401_hubungan_keuangan_direksi_ps` */

insert  into `ltbprk_e0401_hubungan_keuangan_direksi_ps`(`flag_detail`,`kode_komponen`,`nik`,`hubungan_keuangan_i_anggota`,`hubungan_keuangan_ii_anggota`,`hubungan_keuangan_iii_pemegang`) values 
('D01','031010000000','121','Nama Karyawan 1 - Anggota Direksi Lain','tidak ada','tidak ada'),
('D01','031010000000','122','Nama Karyawan 2 - Anggota Direksi Lain','Nama Karyawan 2 - Anggota Dewan Komisaris','Nama Karyawan  2 - Pemegang Saham'),
('D01','031010000000','123','Nama Karyawan 3 - Anggota Direksi Lain','Nama Karyawan 3 - AnggotaDewan Komisaris','Nama Karyawan 3 - Pemegang Saham'),
('D01','031010000000','124','Nama Karyawan 1 - Anggota Direksi','tidak ada','tidak ada'),
('D01','031010000000','125','Nama Karyawan 2 - Anggota Direksi','Nama Karyawan 2 - Anggota Dewan Komisaris Lain','Nama Karyawan  2 - Pemegang Saham'),
('D01','031010000000','126','Nama Karyawan 3 - Anggota Direksi','Nama Karyawan 3 - AnggotaDewan Komisaris Lain','Nama Karyawan 3 - Pemegang Saham'),
('D01','031010000000','127','Nama Karyawan 1 - Anggota Direksi','tidak ada','tidak ada'),
('D01','031010000000','128','Nama Karyawan 2 - Anggota Direksi','Nama Karyawan 2 - Anggota Dewan Komisaris','Nama Karyawan  2 - Pemegang Saham Lain'),
('D01','031010000000','129','Nama Karyawan 3 - Anggota Direksi','Nama Karyawan 3 - AnggotaDewan Komisaris','Nama Karyawan 3 - Pemegang Saham Lain');

/*Table structure for table `ltbprk_e0401_hubungan_keuangan_direksi_ps_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0401_hubungan_keuangan_direksi_ps_arsip`;

CREATE TABLE `ltbprk_e0401_hubungan_keuangan_direksi_ps_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "031010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `hubungan_keuangan_i_anggota` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan keuangan dan dapat diisi lebih dari satu - huruf, angka, spasi, karakter',
  `hubungan_keuangan_ii_anggota` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan keuangan dan dapat diisi lebih dari satu - huruf, angka, spasi, karakter',
  `hubungan_keuangan_iii_pemegang` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan keuangan dan dapat diisi lebih dari satu - huruf, angka, spasi, karakter',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data hubungan keuangan direksi dan pemegang saham';

/*Data for the table `ltbprk_e0401_hubungan_keuangan_direksi_ps_arsip` */

insert  into `ltbprk_e0401_hubungan_keuangan_direksi_ps_arsip`(`flag_detail`,`kode_komponen`,`nik`,`hubungan_keuangan_i_anggota`,`hubungan_keuangan_ii_anggota`,`hubungan_keuangan_iii_pemegang`,`kode_arsip`) values 
('D01','031010000000','121','Nama Karyawan 1 - Anggota Direksi Lain','tidak ada','tidak ada','1_122024'),
('D01','031010000000','122','Nama Karyawan 2 - Anggota Direksi Lain','Nama Karyawan 2 - Anggota Dewan Komisaris','Nama Karyawan  2 - Pemegang Saham','1_122024'),
('D01','031010000000','123','Nama Karyawan 3 - Anggota Direksi Lain','Nama Karyawan 3 - AnggotaDewan Komisaris','Nama Karyawan 3 - Pemegang Saham','1_122024'),
('D01','031010000000','124','Nama Karyawan 1 - Anggota Direksi','tidak ada','tidak ada','1_122024'),
('D01','031010000000','125','Nama Karyawan 2 - Anggota Direksi','Nama Karyawan 2 - Anggota Dewan Komisaris Lain','Nama Karyawan  2 - Pemegang Saham','1_122024'),
('D01','031010000000','126','Nama Karyawan 3 - Anggota Direksi','Nama Karyawan 3 - AnggotaDewan Komisaris Lain','Nama Karyawan 3 - Pemegang Saham','1_122024'),
('D01','031010000000','127','Nama Karyawan 1 - Anggota Direksi','tidak ada','tidak ada','1_122024'),
('D01','031010000000','128','Nama Karyawan 2 - Anggota Direksi','Nama Karyawan 2 - Anggota Dewan Komisaris','Nama Karyawan  2 - Pemegang Saham Lain','1_122024'),
('D01','031010000000','129','Nama Karyawan 3 - Anggota Direksi','Nama Karyawan 3 - AnggotaDewan Komisaris','Nama Karyawan 3 - Pemegang Saham Lain','1_122024');

/*Table structure for table `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer` */

DROP TABLE IF EXISTS `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer`;

CREATE TABLE `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer` */

insert  into `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Direksi pada Perusahaan Lain)');

/*Table structure for table `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer_arsip`;

CREATE TABLE `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer_arsip` */

insert  into `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Direksi pada Perusahaan Lain)','1_122024');

/*Table structure for table `ltbprk_e0402_hubungan_keluarga_direksi_ps` */

DROP TABLE IF EXISTS `ltbprk_e0402_hubungan_keluarga_direksi_ps`;

CREATE TABLE `ltbprk_e0402_hubungan_keluarga_direksi_ps` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "032010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `hubungan_keluarga_i_anggota_direksi` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan Keluarga dan dapat diisi lebih dari satu hubungan yang dipisahkan dgn tanda koma atau diisi "tidak ada" - huruf, angka, spasi, karakter kecuali enter dan |',
  `hubungan_keluarga_ii_anggota_dewan_komisaris` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan Keluarga dan dapat diisi lebih dari satu hubungan yang dipisahkan dgn tanda koma atau diisi "tidak ada" - huruf, angka, spasi, karakter kecuali enter dan |',
  `hubungan_keluarga_iii_pemegang_saham` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan Keluarga dan dapat diisi lebih dari satu hubungan yang dipisahkan dgn tanda koma atau diisi "tidak ada" - huruf, angka, spasi, karakter kecuali enter dan |',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data hubungan keluarga direksi dan pemegang saham';

/*Data for the table `ltbprk_e0402_hubungan_keluarga_direksi_ps` */

insert  into `ltbprk_e0402_hubungan_keluarga_direksi_ps`(`flag_detail`,`kode_komponen`,`nik`,`hubungan_keluarga_i_anggota_direksi`,`hubungan_keluarga_ii_anggota_dewan_komisaris`,`hubungan_keluarga_iii_pemegang_saham`) values 
('D01','032010000000','1231','tidak ada','tidak ada .','tidak ada'),
('D01','032010000000','1233','tidak ada','tidak ada','tidak ada'),
('D01','032010000000','12341','tidak ada','Nama Karyawan 1 - Saudara Kandung','tidak ada'),
('D01','032010000000','12342','tidak ada','tidak ada','Nama Karyawan 2 - Saudara Kandung'),
('D01','032010000000','12343','tidak ada','tidak ada','Nama Karyawan 1 - Saudara Kandung'),
('D01','032010000000','12344','tidak ada','Nama Karyawan 2 - Saudara Kandung','tidak ada'),
('D01','032010000000','12345','Nama Karyawan 2 - Saudara Kandung','tidak ada ,','tidak ada'),
('D01','032010000000','12346','Nama Karyawan 1 - Saudara Kandung','tidak ada :','tidak ada'),
('D01','032010000000','1254','tidak ada','tidak ada','tidak ada');

/*Table structure for table `ltbprk_e0402_hubungan_keluarga_direksi_ps_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0402_hubungan_keluarga_direksi_ps_arsip`;

CREATE TABLE `ltbprk_e0402_hubungan_keluarga_direksi_ps_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "032010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `hubungan_keluarga_i_anggota_direksi` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan Keluarga dan dapat diisi lebih dari satu hubungan yang dipisahkan dgn tanda koma atau diisi "tidak ada" - huruf, angka, spasi, karakter kecuali enter dan |',
  `hubungan_keluarga_ii_anggota_dewan_komisaris` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan Keluarga dan dapat diisi lebih dari satu hubungan yang dipisahkan dgn tanda koma atau diisi "tidak ada" - huruf, angka, spasi, karakter kecuali enter dan |',
  `hubungan_keluarga_iii_pemegang_saham` varchar(2000) NOT NULL COMMENT 'Diisi dengan format nama - hubungan Keluarga dan dapat diisi lebih dari satu hubungan yang dipisahkan dgn tanda koma atau diisi "tidak ada" - huruf, angka, spasi, karakter kecuali enter dan |',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data hubungan keluarga direksi dan pemegang saham';

/*Data for the table `ltbprk_e0402_hubungan_keluarga_direksi_ps_arsip` */

insert  into `ltbprk_e0402_hubungan_keluarga_direksi_ps_arsip`(`flag_detail`,`kode_komponen`,`nik`,`hubungan_keluarga_i_anggota_direksi`,`hubungan_keluarga_ii_anggota_dewan_komisaris`,`hubungan_keluarga_iii_pemegang_saham`,`kode_arsip`) values 
('D01','032010000000','1231','tidak ada','tidak ada .','tidak ada','1_122024'),
('D01','032010000000','1233','tidak ada','tidak ada','tidak ada','1_122024'),
('D01','032010000000','12341','tidak ada','Nama Karyawan 1 - Saudara Kandung','tidak ada','1_122024'),
('D01','032010000000','12342','tidak ada','tidak ada','Nama Karyawan 2 - Saudara Kandung','1_122024'),
('D01','032010000000','12343','tidak ada','tidak ada','Nama Karyawan 1 - Saudara Kandung','1_122024'),
('D01','032010000000','12344','tidak ada','Nama Karyawan 2 - Saudara Kandung','tidak ada','1_122024'),
('D01','032010000000','12345','Nama Karyawan 2 - Saudara Kandung','tidak ada ,','tidak ada','1_122024'),
('D01','032010000000','12346','Nama Karyawan 1 - Saudara Kandung','tidak ada :','tidak ada','1_122024'),
('D01','032010000000','1254','tidak ada','tidak ada','tidak ada','1_122024');

/*Table structure for table `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer` */

DROP TABLE IF EXISTS `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer`;

CREATE TABLE `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer` */

insert  into `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Direksi pada Perusahaan Lain)');

/*Table structure for table `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer_arsip`;

CREATE TABLE `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer_arsip` */

insert  into `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kepemilikan Saham Anggota Direksi pada Perusahaan Lain)','1_122024');

/*Table structure for table `ltbprk_e0500_kebijakan_berdasarkan_rups` */

DROP TABLE IF EXISTS `ltbprk_e0500_kebijakan_berdasarkan_rups`;

CREATE TABLE `ltbprk_e0500_kebijakan_berdasarkan_rups` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(3) NOT NULL COMMENT 'Sesuai kode komponen Jenis Remunerasi - angka (referensi tabel)',
  `direksi_jumlah_orang` int(11) DEFAULT NULL COMMENT 'Kode komponen G16, G25, dan G30 dikosongkan - angka',
  `direksi_jumlah_keseluruhan` decimal(15,2) NOT NULL COMMENT 'Tidak boleh negatif, output dengan separator ribuan - angka',
  `dewan_komisaris_jumlah_orang` int(11) DEFAULT NULL COMMENT 'Kode komponen G16, G25, dan G30 dikosongkan - angka',
  `dewan_komisaris_jumlah_keseluruhan` decimal(15,2) NOT NULL COMMENT 'Tidak boleh negatif, output dengan separator ribuan - angka',
  PRIMARY KEY (`kode_komponen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kebijakan remunerasi berdasarkan RUPS';

/*Data for the table `ltbprk_e0500_kebijakan_berdasarkan_rups` */

insert  into `ltbprk_e0500_kebijakan_berdasarkan_rups`(`flag_detail`,`kode_komponen`,`direksi_jumlah_orang`,`direksi_jumlah_keseluruhan`,`dewan_komisaris_jumlah_orang`,`dewan_komisaris_jumlah_keseluruhan`) values 
('D01','611',1,15000000.00,1,10500000.00),
('D01','612',1,3750000.00,1,2800000.00),
('D01','613',1,100000.00,1,100000.00),
('D01','614',1,8500000.00,1,6750000.00),
('D01','615',1,100000.00,1,100000.00),
('D01','616',0,27450000.00,0,20250000.00),
('D01','621',10,12000000.00,8,9800000.00),
('D01','622',10,5000000.00,8,3750000.00),
('D01','623',10,15000000.00,8,12500000.00),
('D01','624',10,1500000.00,8,1000000.00),
('D01','625',0,33500000.00,0,27050000.00),
('D01','630',0,60950000.00,0,47300000.00);

/*Table structure for table `ltbprk_e0500_kebijakan_berdasarkan_rups_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0500_kebijakan_berdasarkan_rups_arsip`;

CREATE TABLE `ltbprk_e0500_kebijakan_berdasarkan_rups_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(3) NOT NULL COMMENT 'Sesuai kode komponen Jenis Remunerasi - angka (referensi tabel)',
  `direksi_jumlah_orang` int(11) DEFAULT NULL COMMENT 'Kode komponen G16, G25, dan G30 dikosongkan - angka',
  `direksi_jumlah_keseluruhan` decimal(15,2) NOT NULL COMMENT 'Tidak boleh negatif, output dengan separator ribuan - angka',
  `dewan_komisaris_jumlah_orang` int(11) DEFAULT NULL COMMENT 'Kode komponen G16, G25, dan G30 dikosongkan - angka',
  `dewan_komisaris_jumlah_keseluruhan` decimal(15,2) NOT NULL COMMENT 'Tidak boleh negatif, output dengan separator ribuan - angka',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kebijakan remunerasi berdasarkan RUPS';

/*Data for the table `ltbprk_e0500_kebijakan_berdasarkan_rups_arsip` */

insert  into `ltbprk_e0500_kebijakan_berdasarkan_rups_arsip`(`flag_detail`,`kode_komponen`,`direksi_jumlah_orang`,`direksi_jumlah_keseluruhan`,`dewan_komisaris_jumlah_orang`,`dewan_komisaris_jumlah_keseluruhan`,`kode_arsip`) values 
('D01','611',1,15000000.00,1,10500000.00,'1_122024'),
('D01','612',1,3750000.00,1,2800000.00,'1_122024'),
('D01','613',1,100000.00,1,100000.00,'1_122024'),
('D01','614',1,8500000.00,1,6750000.00,'1_122024'),
('D01','615',1,100000.00,1,100000.00,'1_122024'),
('D01','616',0,27450000.00,0,20250000.00,'1_122024'),
('D01','621',10,12000000.00,8,9800000.00,'1_122024'),
('D01','622',10,5000000.00,8,3750000.00,'1_122024'),
('D01','623',10,15000000.00,8,12500000.00,'1_122024'),
('D01','624',10,1500000.00,8,1000000.00,'1_122024'),
('D01','625',0,33500000.00,0,27050000.00,'1_122024'),
('D01','630',0,60950000.00,0,47300000.00,'1_122024');

/*Table structure for table `ltbprk_e0500_kebijakan_berdasarkan_rups_footer` */

DROP TABLE IF EXISTS `ltbprk_e0500_kebijakan_berdasarkan_rups_footer`;

CREATE TABLE `ltbprk_e0500_kebijakan_berdasarkan_rups_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0500_kebijakan_berdasarkan_rups_footer` */

insert  into `ltbprk_e0500_kebijakan_berdasarkan_rups_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Paket/Kebijakan Remunerasi dan Fasilitas Lain bagi Direksi dan Dewan Komisaris yang Ditetapkan Berdasarkan RUPS )');

/*Table structure for table `ltbprk_e0500_kebijakan_berdasarkan_rups_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0500_kebijakan_berdasarkan_rups_footer_arsip`;

CREATE TABLE `ltbprk_e0500_kebijakan_berdasarkan_rups_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0500_kebijakan_berdasarkan_rups_footer_arsip` */

insert  into `ltbprk_e0500_kebijakan_berdasarkan_rups_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Paket/Kebijakan Remunerasi dan Fasilitas Lain bagi Direksi dan Dewan Komisaris yang Ditetapkan Berdasarkan RUPS )','1_122024');

/*Table structure for table `ltbprk_e0600_rasio_gaji_tinggi_rendah` */

DROP TABLE IF EXISTS `ltbprk_e0600_rasio_gaji_tinggi_rendah`;

CREATE TABLE `ltbprk_e0600_rasio_gaji_tinggi_rendah` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Sesuai referensi Rasio Gaji Perbandingan [a/b] - angka (referensi tabel)',
  `rasio_gaji_perbandingan` decimal(8,4) NOT NULL COMMENT 'Jika pembilang atau penyebut "0" maka perbandingan diisi 0 - angka, karakter "."',
  PRIMARY KEY (`kode_komponen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data rasio gaji tertinggi dan terendah';

/*Data for the table `ltbprk_e0600_rasio_gaji_tinggi_rendah` */

insert  into `ltbprk_e0600_rasio_gaji_tinggi_rendah`(`flag_detail`,`kode_komponen`,`rasio_gaji_perbandingan`) values 
('D01','070100000000',15.3800),
('D01','070200000000',15.3900),
('D01','070300000000',15.4000),
('D01','070400000000',15.4100),
('D01','070500000000',100.0000);

/*Table structure for table `ltbprk_e0600_rasio_gaji_tinggi_rendah_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0600_rasio_gaji_tinggi_rendah_arsip`;

CREATE TABLE `ltbprk_e0600_rasio_gaji_tinggi_rendah_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Sesuai referensi Rasio Gaji Perbandingan [a/b] - angka (referensi tabel)',
  `rasio_gaji_perbandingan` decimal(8,4) NOT NULL COMMENT 'Jika pembilang atau penyebut "0" maka perbandingan diisi 0 - angka, karakter "."',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data rasio gaji tertinggi dan terendah';

/*Data for the table `ltbprk_e0600_rasio_gaji_tinggi_rendah_arsip` */

insert  into `ltbprk_e0600_rasio_gaji_tinggi_rendah_arsip`(`flag_detail`,`kode_komponen`,`rasio_gaji_perbandingan`,`kode_arsip`) values 
('D01','070100000000',15.3800,'1_122024'),
('D01','070200000000',15.3900,'1_122024'),
('D01','070300000000',15.4000,'1_122024'),
('D01','070400000000',15.4100,'1_122024'),
('D01','070500000000',100.0000,'1_122024');

/*Table structure for table `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer` */

DROP TABLE IF EXISTS `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer`;

CREATE TABLE `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer` */

insert  into `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Paket/Kebijakan Remunerasi dan Fasilitas Lain bagi Direksi dan Dewan Komisaris yang Ditetapkan Berdasarkan RUPS )');

/*Table structure for table `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer_arsip`;

CREATE TABLE `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer_arsip` */

insert  into `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Paket/Kebijakan Remunerasi dan Fasilitas Lain bagi Direksi dan Dewan Komisaris yang Ditetapkan Berdasarkan RUPS )','1_122024');

/*Table structure for table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */

DROP TABLE IF EXISTS `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`;

CREATE TABLE `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "08101000000" - angka',
  `tanggal_rapat` date NOT NULL COMMENT 'Format YYYY-MM-DD - angka',
  `jumlah_peserta` int(11) NOT NULL COMMENT 'Harus lebih dari nol - angka',
  `topik_materi_pembahasan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  PRIMARY KEY (`kode_komponen`,`tanggal_rapat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data pelaksanaan rapat dalam satu tahun';

/*Data for the table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */

insert  into `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`(`flag_detail`,`kode_komponen`,`tanggal_rapat`,`jumlah_peserta`,`topik_materi_pembahasan`) values 
('D01','081010000000','2021-05-01',34,'Rapat Kerja Nasional ke-5'),
('D01','081010000000','2021-05-02',50,'Rapat Kerja Nasional ke-6'),
('D01','081010000000','2021-05-03',70,'Rapat Kerja Nasional ke-7');

/*Table structure for table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_arsip`;

CREATE TABLE `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "08101000000" - angka',
  `tanggal_rapat` date NOT NULL COMMENT 'Format YYYY-MM-DD - angka',
  `jumlah_peserta` int(11) NOT NULL COMMENT 'Harus lebih dari nol - angka',
  `topik_materi_pembahasan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`tanggal_rapat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data pelaksanaan rapat dalam satu tahun';

/*Data for the table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_arsip` */

insert  into `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_arsip`(`flag_detail`,`kode_komponen`,`tanggal_rapat`,`jumlah_peserta`,`topik_materi_pembahasan`,`kode_arsip`) values 
('D01','081010000000','2021-05-01',34,'Rapat Kerja Nasional ke-5','1_122024'),
('D01','081010000000','2021-05-02',50,'Rapat Kerja Nasional ke-6','1_122024'),
('D01','081010000000','2021-05-03',70,'Rapat Kerja Nasional ke-7','1_122024');

/*Table structure for table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer` */

DROP TABLE IF EXISTS `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer`;

CREATE TABLE `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer` */

insert  into `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Pelaksanaan Rapat dalam 1 (satu) tahun)');

/*Table structure for table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer_arsip`;

CREATE TABLE `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer_arsip` */

insert  into `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Pelaksanaan Rapat dalam 1 (satu) tahun)','1_122024');

/*Table structure for table `ltbprk_e0702_kehadiran_anggota_komisaris` */

DROP TABLE IF EXISTS `ltbprk_e0702_kehadiran_anggota_komisaris`;

CREATE TABLE `ltbprk_e0702_kehadiran_anggota_komisaris` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "082010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `nama_anggota_dewan_komisaris` varchar(50) NOT NULL COMMENT 'Huruf, angka, spasi, karakter selain enter',
  `frekuensi_kehadiran_fisik` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `frekuensi_kehadiran` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `tingkat_kehadiran` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang koma - angka',
  PRIMARY KEY (`kode_komponen`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kehadiran anggota dewan komisaris';

/*Data for the table `ltbprk_e0702_kehadiran_anggota_komisaris` */

insert  into `ltbprk_e0702_kehadiran_anggota_komisaris`(`flag_detail`,`kode_komponen`,`nik`,`nama_anggota_dewan_komisaris`,`frekuensi_kehadiran_fisik`,`frekuensi_kehadiran`,`tingkat_kehadiran`) values 
('D01','082010000000','1','Nama Karyawan 1',1,2,100.00),
('D01','082010000000','2','Nama Karyawan 2',2,0,66.67),
('D01','082010000000','3','Nama Karyawan 3',1,0,33.33);

/*Table structure for table `ltbprk_e0702_kehadiran_anggota_komisaris_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0702_kehadiran_anggota_komisaris_arsip`;

CREATE TABLE `ltbprk_e0702_kehadiran_anggota_komisaris_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "082010000000" - angka',
  `nik` varchar(25) NOT NULL COMMENT 'Bersifat unik - angka',
  `nama_anggota_dewan_komisaris` varchar(50) NOT NULL COMMENT 'Huruf, angka, spasi, karakter selain enter',
  `frekuensi_kehadiran_fisik` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `frekuensi_kehadiran` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `tingkat_kehadiran` decimal(5,2) NOT NULL COMMENT 'Format desimal, 2 angka dibelakang koma - angka',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`nik`),
  UNIQUE KEY `unique_nik` (`nik`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data kehadiran anggota dewan komisaris';

/*Data for the table `ltbprk_e0702_kehadiran_anggota_komisaris_arsip` */

insert  into `ltbprk_e0702_kehadiran_anggota_komisaris_arsip`(`flag_detail`,`kode_komponen`,`nik`,`nama_anggota_dewan_komisaris`,`frekuensi_kehadiran_fisik`,`frekuensi_kehadiran`,`tingkat_kehadiran`,`kode_arsip`) values 
('D01','082010000000','1','Nama Karyawan 1',1,2,100.00,'1_122024'),
('D01','082010000000','2','Nama Karyawan 2',2,0,66.67,'1_122024'),
('D01','082010000000','3','Nama Karyawan 3',1,0,33.33,'1_122024');

/*Table structure for table `ltbprk_e0702_kehadiran_anggota_komisaris_footer` */

DROP TABLE IF EXISTS `ltbprk_e0702_kehadiran_anggota_komisaris_footer`;

CREATE TABLE `ltbprk_e0702_kehadiran_anggota_komisaris_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0702_kehadiran_anggota_komisaris_footer` */

insert  into `ltbprk_e0702_kehadiran_anggota_komisaris_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kehadiran Anggota Dewan Komisaris)');

/*Table structure for table `ltbprk_e0702_kehadiran_anggota_komisaris_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0702_kehadiran_anggota_komisaris_footer_arsip`;

CREATE TABLE `ltbprk_e0702_kehadiran_anggota_komisaris_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0702_kehadiran_anggota_komisaris_footer_arsip` */

insert  into `ltbprk_e0702_kehadiran_anggota_komisaris_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Kehadiran Anggota Dewan Komisaris)','1_122024');

/*Table structure for table `ltbprk_e0800_penyimpangan_internal` */

DROP TABLE IF EXISTS `ltbprk_e0800_penyimpangan_internal`;

CREATE TABLE `ltbprk_e0800_penyimpangan_internal` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(3) NOT NULL COMMENT 'Sesuai referensi Jumlah Penyimpangan - angka (referensi tabel)',
  `anggota_direksi_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `anggota_direksi_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `anggota_dewan_komisaris_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `anggota_dewan_komisaris_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `pegawai_tetap_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `pegawai_tetap_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `pegawai_tidak_tetap_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `pegawai_tidak_tetap_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  PRIMARY KEY (`kode_komponen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data jumlah penyimpangan internal (internal fraud)';

/*Data for the table `ltbprk_e0800_penyimpangan_internal` */

insert  into `ltbprk_e0800_penyimpangan_internal`(`flag_detail`,`kode_komponen`,`anggota_direksi_tahun_sebelumnya`,`anggota_direksi_tahun_laporan`,`anggota_dewan_komisaris_tahun_sebelumnya`,`anggota_dewan_komisaris_tahun_laporan`,`pegawai_tetap_tahun_sebelumnya`,`pegawai_tetap_tahun_laporan`,`pegawai_tidak_tetap_tahun_sebelumnya`,`pegawai_tidak_tetap_tahun_laporan`) values 
('D01','910',10,11,12,13,14,15,16,17),
('D01','911',0,10,0,10,0,10,0,10),
('D01','912',10,11,12,13,14,15,16,17),
('D01','913',10,11,12,13,14,15,16,17),
('D01','920',0,10,0,10,0,10,0,10);

/*Table structure for table `ltbprk_e0800_penyimpangan_internal_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0800_penyimpangan_internal_arsip`;

CREATE TABLE `ltbprk_e0800_penyimpangan_internal_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(3) NOT NULL COMMENT 'Sesuai referensi Jumlah Penyimpangan - angka (referensi tabel)',
  `anggota_direksi_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `anggota_direksi_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `anggota_dewan_komisaris_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `anggota_dewan_komisaris_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `pegawai_tetap_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `pegawai_tetap_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `pegawai_tidak_tetap_tahun_sebelumnya` int(11) DEFAULT NULL COMMENT 'Tidak boleh negatif, pada Kode Komponen 911 dan 920 wajib kosong - angka',
  `pegawai_tidak_tetap_tahun_laporan` int(11) NOT NULL COMMENT 'Tidak boleh negatif - angka',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data jumlah penyimpangan internal (internal fraud)';

/*Data for the table `ltbprk_e0800_penyimpangan_internal_arsip` */

insert  into `ltbprk_e0800_penyimpangan_internal_arsip`(`flag_detail`,`kode_komponen`,`anggota_direksi_tahun_sebelumnya`,`anggota_direksi_tahun_laporan`,`anggota_dewan_komisaris_tahun_sebelumnya`,`anggota_dewan_komisaris_tahun_laporan`,`pegawai_tetap_tahun_sebelumnya`,`pegawai_tetap_tahun_laporan`,`pegawai_tidak_tetap_tahun_sebelumnya`,`pegawai_tidak_tetap_tahun_laporan`,`kode_arsip`) values 
('D01','910',10,11,12,13,14,15,16,17,'1_122024'),
('D01','911',0,10,0,10,0,10,0,10,'1_122024'),
('D01','912',10,11,12,13,14,15,16,17,'1_122024'),
('D01','913',10,11,12,13,14,15,16,17,'1_122024'),
('D01','920',0,10,0,10,0,10,0,10,'1_122024');

/*Table structure for table `ltbprk_e0800_penyimpangan_internal_footer` */

DROP TABLE IF EXISTS `ltbprk_e0800_penyimpangan_internal_footer`;

CREATE TABLE `ltbprk_e0800_penyimpangan_internal_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0800_penyimpangan_internal_footer` */

insert  into `ltbprk_e0800_penyimpangan_internal_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Jumlah Penyimpangan Internal (Internal Fraud))');

/*Table structure for table `ltbprk_e0800_penyimpangan_internal_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0800_penyimpangan_internal_footer_arsip`;

CREATE TABLE `ltbprk_e0800_penyimpangan_internal_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0800_penyimpangan_internal_footer_arsip` */

insert  into `ltbprk_e0800_penyimpangan_internal_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Jumlah Penyimpangan Internal (Internal Fraud))','1_122024');

/*Table structure for table `ltbprk_e0900_permasalahan_hukum` */

DROP TABLE IF EXISTS `ltbprk_e0900_permasalahan_hukum`;

CREATE TABLE `ltbprk_e0900_permasalahan_hukum` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(4) NOT NULL COMMENT 'Sesuai referensi Permasalahan Hukum - angka (referensi tabel)',
  `jumlah_perdata` int(11) NOT NULL COMMENT 'Nilai tidak boleh negatif - angka',
  `jumlah_pidana` int(11) NOT NULL COMMENT 'Nilai tidak boleh negatif - angka',
  PRIMARY KEY (`kode_komponen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data permasalahan hukum yang dihadapi';

/*Data for the table `ltbprk_e0900_permasalahan_hukum` */

insert  into `ltbprk_e0900_permasalahan_hukum`(`flag_detail`,`kode_komponen`,`jumlah_perdata`,`jumlah_pidana`) values 
('D01','1001',25,40),
('D01','1002',50,23),
('D01','1003',75,63);

/*Table structure for table `ltbprk_e0900_permasalahan_hukum_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0900_permasalahan_hukum_arsip`;

CREATE TABLE `ltbprk_e0900_permasalahan_hukum_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(4) NOT NULL COMMENT 'Sesuai referensi Permasalahan Hukum - angka (referensi tabel)',
  `jumlah_perdata` int(11) NOT NULL COMMENT 'Nilai tidak boleh negatif - angka',
  `jumlah_pidana` int(11) NOT NULL COMMENT 'Nilai tidak boleh negatif - angka',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data permasalahan hukum yang dihadapi';

/*Data for the table `ltbprk_e0900_permasalahan_hukum_arsip` */

insert  into `ltbprk_e0900_permasalahan_hukum_arsip`(`flag_detail`,`kode_komponen`,`jumlah_perdata`,`jumlah_pidana`,`kode_arsip`) values 
('D01','1001',25,40,'1_122024'),
('D01','1002',50,23,'1_122024'),
('D01','1003',75,63,'1_122024');

/*Table structure for table `ltbprk_e0900_permasalahan_hukum_footer` */

DROP TABLE IF EXISTS `ltbprk_e0900_permasalahan_hukum_footer`;

CREATE TABLE `ltbprk_e0900_permasalahan_hukum_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0900_permasalahan_hukum_footer` */

insert  into `ltbprk_e0900_permasalahan_hukum_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Permasalahan Hukum yang Dihadapi)');

/*Table structure for table `ltbprk_e0900_permasalahan_hukum_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e0900_permasalahan_hukum_footer_arsip`;

CREATE TABLE `ltbprk_e0900_permasalahan_hukum_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e0900_permasalahan_hukum_footer_arsip` */

insert  into `ltbprk_e0900_permasalahan_hukum_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Permasalahan Hukum yang Dihadapi)','1_122024');

/*Table structure for table `ltbprk_e1000_transaksi_benturan_kepentingan` */

DROP TABLE IF EXISTS `ltbprk_e1000_transaksi_benturan_kepentingan`;

CREATE TABLE `ltbprk_e1000_transaksi_benturan_kepentingan` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "11010000000" - angka (referensi tabel)',
  `pihak_yang_memiliki_nama` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pihak_yang_memiliki_jabatan` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pihak_yang_memiliki_nik` varchar(25) NOT NULL COMMENT 'Boleh berulang jika terdapat beberapa transaksi, hanya ditarik ke SJP, tidak muncul di output APOLO - angka, karakter spesifik /',
  `pengambil_keputusan_nama` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pengambil_keputusan_jabatan` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pengambil_keputusan_nik` varchar(25) NOT NULL COMMENT 'Boleh berulang jika terdapat beberapa transaksi, hanya ditarik ke SJP, tidak muncul di output APOLO - angka, karakter spesifik /',
  `jenis_transaksi` varchar(100) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  `nilai_transaksi` decimal(15,2) NOT NULL COMMENT 'Nilai tidak boleh negatif - dalam jutaan Rupiah - angka',
  `keterangan` varchar(200) DEFAULT NULL COMMENT 'Free text - opsional - huruf, angka, spasi, karakter selain enter',
  PRIMARY KEY (`kode_komponen`,`pihak_yang_memiliki_nama`,`pihak_yang_memiliki_jabatan`,`pihak_yang_memiliki_nik`,`pengambil_keputusan_nama`,`pengambil_keputusan_jabatan`,`pengambil_keputusan_nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data transaksi yang mengandung benturan kepentingan';

/*Data for the table `ltbprk_e1000_transaksi_benturan_kepentingan` */

insert  into `ltbprk_e1000_transaksi_benturan_kepentingan`(`flag_detail`,`kode_komponen`,`pihak_yang_memiliki_nama`,`pihak_yang_memiliki_jabatan`,`pihak_yang_memiliki_nik`,`pengambil_keputusan_nama`,`pengambil_keputusan_jabatan`,`pengambil_keputusan_nik`,`jenis_transaksi`,`nilai_transaksi`,`keterangan`) values 
('D01','110100000000','Anda','Direksi','123456','Anda','Direksi','123456','Kliring',1250.00,'keterangan bebas'),
('D01','110100000000','Ande','Komisaris','123458','Ande','Komisaris','123458','Debit',1000.00,'BPR'),
('D01','110100000000','Andi','Komisaris','123457','Andi','Komisaris','123457','Tarik Tunai',325.00,'bebas');

/*Table structure for table `ltbprk_e1000_transaksi_benturan_kepentingan_arsip` */

DROP TABLE IF EXISTS `ltbprk_e1000_transaksi_benturan_kepentingan_arsip`;

CREATE TABLE `ltbprk_e1000_transaksi_benturan_kepentingan_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "11010000000" - angka (referensi tabel)',
  `pihak_yang_memiliki_nama` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pihak_yang_memiliki_jabatan` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pihak_yang_memiliki_nik` varchar(25) NOT NULL COMMENT 'Boleh berulang jika terdapat beberapa transaksi, hanya ditarik ke SJP, tidak muncul di output APOLO - angka, karakter spesifik /',
  `pengambil_keputusan_nama` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pengambil_keputusan_jabatan` varchar(50) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter kecuali enter',
  `pengambil_keputusan_nik` varchar(25) NOT NULL COMMENT 'Boleh berulang jika terdapat beberapa transaksi, hanya ditarik ke SJP, tidak muncul di output APOLO - angka, karakter spesifik /',
  `jenis_transaksi` varchar(100) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter',
  `nilai_transaksi` decimal(15,2) NOT NULL COMMENT 'Nilai tidak boleh negatif - dalam jutaan Rupiah - angka',
  `keterangan` varchar(200) DEFAULT NULL COMMENT 'Free text - opsional - huruf, angka, spasi, karakter selain enter',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`pihak_yang_memiliki_nama`,`pihak_yang_memiliki_jabatan`,`pihak_yang_memiliki_nik`,`pengambil_keputusan_nama`,`pengambil_keputusan_jabatan`,`pengambil_keputusan_nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data transaksi yang mengandung benturan kepentingan';

/*Data for the table `ltbprk_e1000_transaksi_benturan_kepentingan_arsip` */

insert  into `ltbprk_e1000_transaksi_benturan_kepentingan_arsip`(`flag_detail`,`kode_komponen`,`pihak_yang_memiliki_nama`,`pihak_yang_memiliki_jabatan`,`pihak_yang_memiliki_nik`,`pengambil_keputusan_nama`,`pengambil_keputusan_jabatan`,`pengambil_keputusan_nik`,`jenis_transaksi`,`nilai_transaksi`,`keterangan`,`kode_arsip`) values 
('D01','110100000000','Anda','Direksi','123456','Anda','Direksi','123456','Kliring',1250.00,'keterangan bebas','1_122024'),
('D01','110100000000','Ande','Komisaris','123458','Ande','Komisaris','123458','Debit',1000.00,'BPR','1_122024'),
('D01','110100000000','Andi','Komisaris','123457','Andi','Komisaris','123457','Tarik Tunai',325.00,'bebas','1_122024');

/*Table structure for table `ltbprk_e1000_transaksi_benturan_kepentingan_footer` */

DROP TABLE IF EXISTS `ltbprk_e1000_transaksi_benturan_kepentingan_footer`;

CREATE TABLE `ltbprk_e1000_transaksi_benturan_kepentingan_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e1000_transaksi_benturan_kepentingan_footer` */

insert  into `ltbprk_e1000_transaksi_benturan_kepentingan_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Transaksi yang Mengandung Benturan Kepentingan)');

/*Table structure for table `ltbprk_e1000_transaksi_benturan_kepentingan_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e1000_transaksi_benturan_kepentingan_footer_arsip`;

CREATE TABLE `ltbprk_e1000_transaksi_benturan_kepentingan_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e1000_transaksi_benturan_kepentingan_footer_arsip` */

insert  into `ltbprk_e1000_transaksi_benturan_kepentingan_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Transaksi yang Mengandung Benturan Kepentingan)','1_122024');

/*Table structure for table `ltbprk_e1100_pemberian_dana_sosial_politik` */

DROP TABLE IF EXISTS `ltbprk_e1100_pemberian_dana_sosial_politik`;

CREATE TABLE `ltbprk_e1100_pemberian_dana_sosial_politik` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "12010000000" - angka (referensi tabel)',
  `tanggal_pelaksanaan` date NOT NULL COMMENT 'Format YYYY-MM-DD - angka',
  `jenis_kegiatan_sosial_politik` varchar(2) NOT NULL COMMENT 'Diisi dengan: sandi 01 jika Kegiatan Sosial, sandi 02 jika Kegiatan Politik - angka (referensi tabel)',
  `penjelasan_kegiatan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter dan |',
  `penerima_dana` varchar(100) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter dan |',
  `jumlah_rp` decimal(15,2) NOT NULL COMMENT 'Harus lebih dari nol - dalam Rupiah - angka',
  PRIMARY KEY (`kode_komponen`,`tanggal_pelaksanaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data pemberian dana untuk kegiatan sosial dan politik';

/*Data for the table `ltbprk_e1100_pemberian_dana_sosial_politik` */

insert  into `ltbprk_e1100_pemberian_dana_sosial_politik`(`flag_detail`,`kode_komponen`,`tanggal_pelaksanaan`,`jenis_kegiatan_sosial_politik`,`penjelasan_kegiatan`,`penerima_dana`,`jumlah_rp`) values 
('D01','120100000000','2021-05-03','01','Kegiatan CSR TA. 2021','Yayasan Yatim dan Duafa',1000000.00),
('D01','120100000000','2021-05-04','02','Kunjungan Politik TA. 2021','HimaPol',1250000.00);

/*Table structure for table `ltbprk_e1100_pemberian_dana_sosial_politik_arsip` */

DROP TABLE IF EXISTS `ltbprk_e1100_pemberian_dana_sosial_politik_arsip`;

CREATE TABLE `ltbprk_e1100_pemberian_dana_sosial_politik_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Diisi dengan "D01" - huruf dan angka',
  `kode_komponen` varchar(12) NOT NULL COMMENT 'Diisi dengan "12010000000" - angka (referensi tabel)',
  `tanggal_pelaksanaan` date NOT NULL COMMENT 'Format YYYY-MM-DD - angka',
  `jenis_kegiatan_sosial_politik` varchar(2) NOT NULL COMMENT 'Diisi dengan: sandi 01 jika Kegiatan Sosial, sandi 02 jika Kegiatan Politik - angka (referensi tabel)',
  `penjelasan_kegiatan` varchar(2000) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter dan |',
  `penerima_dana` varchar(100) NOT NULL COMMENT 'Free text - huruf, angka, spasi, karakter selain enter dan |',
  `jumlah_rp` decimal(15,2) NOT NULL COMMENT 'Harus lebih dari nol - dalam Rupiah - angka',
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`kode_komponen`,`kode_arsip`,`tanggal_pelaksanaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel untuk menyimpan data pemberian dana untuk kegiatan sosial dan politik';

/*Data for the table `ltbprk_e1100_pemberian_dana_sosial_politik_arsip` */

insert  into `ltbprk_e1100_pemberian_dana_sosial_politik_arsip`(`flag_detail`,`kode_komponen`,`tanggal_pelaksanaan`,`jenis_kegiatan_sosial_politik`,`penjelasan_kegiatan`,`penerima_dana`,`jumlah_rp`,`kode_arsip`) values 
('D01','120100000000','2021-05-03','01','Kegiatan CSR TA. 2021','Yayasan Yatim dan Duafa',1000000.00,'1_122024'),
('D01','120100000000','2021-05-04','02','Kunjungan Politik TA. 2021','HimaPol',1250000.00,'1_122024');

/*Table structure for table `ltbprk_e1100_pemberian_dana_sosial_politik_footer` */

DROP TABLE IF EXISTS `ltbprk_e1100_pemberian_dana_sosial_politik_footer`;

CREATE TABLE `ltbprk_e1100_pemberian_dana_sosial_politik_footer` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e1100_pemberian_dana_sosial_politik_footer` */

insert  into `ltbprk_e1100_pemberian_dana_sosial_politik_footer`(`flag_detail`,`keterangan`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Pemberian Dana Untuk Kegiatan Sosial dan Kegiatan Politik)');

/*Table structure for table `ltbprk_e1100_pemberian_dana_sosial_politik_footer_arsip` */

DROP TABLE IF EXISTS `ltbprk_e1100_pemberian_dana_sosial_politik_footer_arsip`;

CREATE TABLE `ltbprk_e1100_pemberian_dana_sosial_politik_footer_arsip` (
  `flag_detail` varchar(3) NOT NULL COMMENT 'Huruf dan angka, diisi dengan "F01"',
  `keterangan` varchar(2000) DEFAULT NULL COMMENT 'Huruf, angka, spasi, dan karakter, free text',
  `kode_arsip` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_e1100_pemberian_dana_sosial_politik_footer_arsip` */

insert  into `ltbprk_e1100_pemberian_dana_sosial_politik_footer_arsip`(`flag_detail`,`keterangan`,`kode_arsip`) values 
('F01','Footer 1 (Penjelasan Lebih Lanjut Pemberian Dana Untuk Kegiatan Sosial dan Kegiatan Politik)','1_122024');

/*Table structure for table `ltbprk_header` */

DROP TABLE IF EXISTS `ltbprk_header`;

CREATE TABLE `ltbprk_header` (
  `flag_header` varchar(3) NOT NULL DEFAULT 'H01' COMMENT 'Diisi dengan "H01"',
  `kode_sektor` varchar(6) NOT NULL DEFAULT '010201' COMMENT 'Diisi dengan "010201" (BPR Konvensional)',
  `sandi_bpr` varchar(6) NOT NULL COMMENT 'Diisi dengan Sandi BPR',
  `periode_data` date NOT NULL COMMENT 'Format: YYYY-MM-DD dan menggunakan tanggal',
  `kode_jenis_pelaporan` varchar(6) NOT NULL DEFAULT 'LTBPRK' COMMENT 'Diisi dengan "LTBPRK"',
  `kode_form_laporan` varchar(6) NOT NULL COMMENT 'Diisi dengan Kode Form Laporan',
  `kode_status_koreksi` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Diisi "0" untuk pelaporan rutin',
  `nomor_surat` varchar(25) DEFAULT NULL COMMENT 'Diisi jika kolom "kode_status_koreksi" adalah "2"',
  PRIMARY KEY (`sandi_bpr`,`periode_data`,`kode_form_laporan`,`kode_jenis_pelaporan`,`kode_status_koreksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_header` */

insert  into `ltbprk_header`(`flag_header`,`kode_sektor`,`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_status_koreksi`,`nomor_surat`) values 
('H01','010201','609999','2024-12-31','LTBPRK','A0301','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','A0304','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','A0502','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','A0506','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','A05072','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0100','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0201','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0202','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0203','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0204','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0302','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0303','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0401','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0402','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0500','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0600','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0701','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0702','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0800','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E0900','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E1000','0',''),
('H01','010201','609999','2024-12-31','LTBPRK','E1100','0','');

/*Table structure for table `ltbprk_header_arsip` */

DROP TABLE IF EXISTS `ltbprk_header_arsip`;

CREATE TABLE `ltbprk_header_arsip` (
  `flag_header` varchar(3) NOT NULL DEFAULT 'H01' COMMENT 'Diisi dengan "H01"',
  `kode_sektor` varchar(6) NOT NULL DEFAULT '010201' COMMENT 'Diisi dengan "010201" (BPR Konvensional)',
  `sandi_bpr` varchar(6) NOT NULL COMMENT 'Diisi dengan Sandi BPR',
  `periode_data` date NOT NULL COMMENT 'Format: YYYY-MM-DD dan menggunakan tanggal',
  `kode_jenis_pelaporan` varchar(6) NOT NULL DEFAULT 'LTBPRK' COMMENT 'Diisi dengan "LTBPRK"',
  `kode_form_laporan` varchar(6) NOT NULL COMMENT 'Diisi dengan Kode Form Laporan',
  `kode_status_koreksi` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Diisi "0" untuk pelaporan rutin',
  `nomor_surat` varchar(25) DEFAULT NULL COMMENT 'Diisi jika kolom "kode_status_koreksi" adalah "2"',
  `kode_arsip` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sandi_bpr`,`periode_data`,`kode_form_laporan`,`kode_jenis_pelaporan`,`kode_status_koreksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `ltbprk_header_arsip` */

insert  into `ltbprk_header_arsip`(`flag_header`,`kode_sektor`,`sandi_bpr`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_status_koreksi`,`nomor_surat`,`kode_arsip`) values 
('H01','010201','609999','2024-12-31','LTBPRK','A0301','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','A0304','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','A0502','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','A0506','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','A05072','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0100','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0201','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0202','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0203','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0204','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0302','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0303','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0401','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0402','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0500','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0600','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0701','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0702','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0800','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E0900','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E1000','0','','1_122024'),
('H01','010201','609999','2024-12-31','LTBPRK','E1100','0','','1_122024');

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

insert  into `my_logbin`(`id`,`waktu`,`source_bin`,`error_msg`,`flg_transfer`,`waktu_transfer`,`AppVer`,`is_done`,`last_execute`) values 
(1,'2025-11-16 18:44:48','INSERT INTO profil_risiko.pr_f0000 SELECT \'F01\',\'Analisa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.0',0,'2025-11-16 18:44:48'),
(2,'2025-11-24 14:11:20','INSERT INTO profil_risiko.pr_f0000 SELECT \'F01\',\'Analisa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.0',0,'2025-11-24 14:11:20'),
(3,'2026-03-02 12:31:20','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'D01\',\'03001\',\'adad@#$%%!dfADFD21313\',\'20240101\',\'adad@#$%%!dfADFD21313\',\'20240501\',\'adad@#$%%!dfADFD21313\',\'20240501\',\'20240501\',\'aa\',\'asf\',\'01\',\'asf\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-02 12:31:20'),
(4,'2026-03-02 12:31:27','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-02 12:31:27'),
(5,'2026-03-02 12:31:33','INSERT INTO ltbpr.ltbprk_a0304_penjelasan_npl SELECT \'D01\',\'03002\',\'a\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-02 12:31:33'),
(6,'2026-03-02 12:31:51','INSERT INTO ltbpr.ltbprk_a0304_penjelasan_npl SELECT \'D01\',\'03003\',\'b\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-02 12:31:51'),
(7,'2026-03-02 12:31:56','INSERT INTO ltbpr.ltbprk_a0304_penjelasan_npl SELECT \'F01\',\'Footer penjelasan NPL\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-02 12:31:56'),
(8,'2026-03-06 14:24:24','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 14:24:24'),
(9,'2026-03-06 14:30:11','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 14:30:11'),
(10,'2026-03-06 14:37:48','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 14:37:48'),
(11,'2026-03-06 14:49:39','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 14:49:39'),
(12,'2026-03-06 15:00:25','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:00:25'),
(13,'2026-03-06 15:03:14','INSERT INTO ltbpr.ltbprk_a0301_riwayat_pendirian_bpr SELECT \'F01\',\'asafsafa\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:03:14'),
(14,'2026-03-06 15:12:27','INSERT INTO ltbpr.ltbprk_a0502_bidang_usaha SELECT \'D01\',\'05001\',\'02\',\'01\',\'c\',\'d\'','#23000Duplicate entry \'05001\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:12:27'),
(15,'2026-03-06 15:12:32','INSERT INTO ltbpr.ltbprk_a0502_bidang_usaha SELECT \'D01\',\'05001\',\'99\',\'04\',\'c\',\'d\'','#23000Duplicate entry \'05001\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:12:32'),
(16,'2026-03-06 15:12:38','INSERT INTO ltbpr.ltbprk_a0506_kerja_sama_lembaga SELECT \'D01\',\'05002\',\'2\',\'Lembaga B\',\'\',\'1235\',\'b\',\'b\',\'20240625\'','#23000Duplicate entry \'05002\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:12:38'),
(17,'2026-03-06 15:12:58','INSERT INTO ltbpr.ltbprk_a0506_kerja_sama_lembaga SELECT \'D01\',\'05002\',\'1\',\'Lembaga C\',\'011\',\'\',\'c\',\'c\',\'20240730\'','#23000Duplicate entry \'05002\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:12:58'),
(18,'2026-03-06 15:13:03','INSERT INTO ltbpr.ltbprk_a05072_kegiatan_pengembangan SELECT \'D01\',\'05026\',\'Bounding Team\',\'20240525\',\'01\',\'01\',\'250\',\'Acara tahunan untuk dekat dengan masing-masing team\'','#23000Duplicate entry \'05026\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:03'),
(19,'2026-03-06 15:13:06','INSERT INTO ltbpr.ltbprk_a05072_kegiatan_pengembangan SELECT \'D01\',\'05026\',\'Training AWS\',\'20240405\',\'03\',\'03\',\'3\',\'Pendidikan basic training in general terkait AWS\'','#23000Duplicate entry \'05026\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:06'),
(20,'2026-03-06 15:13:12','INSERT INTO ltbpr.ltbprk_e0201_tugas_tanggung_jawab_direksi SELECT \'D01\',\'011000000000\',\'12345678\',\'Jabatan Direktur Utama yang menjalankan fungsi kepatuhan\'','#23000Duplicate entry \'011000000000\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:12'),
(21,'2026-03-06 15:13:17','INSERT INTO ltbpr.ltbprk_e0201_tugas_tanggung_jawab_direksi SELECT \'D01\',\'011000000000\',\'12345679\',\'jabatan Direktur\'','#23000Duplicate entry \'011000000000\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:17'),
(22,'2026-03-06 15:13:20','INSERT INTO ltbpr.ltbprk_e0201_tugas_tanggung_jawab_direksi_footer SELECT \'F01\',\'Footer 1 (Tindak Lanjut Rekomendasi Dewan Direksi)\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:20'),
(23,'2026-03-06 15:13:24','INSERT INTO ltbpr.ltbprk_e0201_tugas_tanggung_jawab_direksi SELECT \'F02\',\'Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:24'),
(24,'2026-03-06 15:13:31','INSERT INTO ltbpr.ltbprk_e0202_tugas_tanggung_jawab_komisaris SELECT \'D01\',\'012010000000\',\'12345678\',\' jabatan komisaris utama dan independen\'','#23000Duplicate entry \'012010000000\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:31'),
(25,'2026-03-06 15:13:34','INSERT INTO ltbpr.ltbprk_e0202_tugas_tanggung_jawab_komisaris SELECT \'D01\',\'012010000000\',\'12345679\',\'jabatan komisaris\'','#23000Duplicate entry \'012010000000\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:34'),
(26,'2026-03-06 15:13:38','INSERT INTO ltbpr.ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer SELECT \'F01\',\'Footer 1 (Tindak Lanjut Rekomendasi Dewan Komisaris)\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:38'),
(27,'2026-03-06 15:13:43','INSERT INTO ltbpr.ltbprk_e0202_tugas_tanggung_jawab_komisaris SELECT \'F02\',\'Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:43'),
(28,'2026-03-06 15:13:48','INSERT INTO ltbpr.ltbprk_e0203_tugas_tanggung_jawab_komite SELECT \'D01\',\'013301000000\',\'01\',\'melakukan rencana Program kerja 2tahun kedepan\',\'Program Kerja Komite 2\',\'Realisasi 2\',\'10\'','#23000Duplicate entry \'013301000000\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:13:48'),
(29,'2026-03-06 15:53:54','INSERT INTO ltbpr.ltbprk_a0506_kerja_sama_lembaga SELECT \'D01\',\'05002\',\'1\',\'Lembaga C\',\'011\',\'\',\'c\',\'c\',\'20240730\'','#23000Duplicate entry \'05002-1-011-\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:53:54'),
(30,'2026-03-06 15:53:54','INSERT INTO ltbpr.ltbprk_e0201_tugas_tanggung_jawab_direksi SELECT \'F02\',\'Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:53:54'),
(31,'2026-03-06 15:53:54','INSERT INTO ltbpr.ltbprk_e0202_tugas_tanggung_jawab_komisaris SELECT \'F02\',\'Footer 2 (Penjelasan Lebih Lanjut (Apabila diperlukan)\'','#21S01Column count doesn\'t match value count at row 1',0,NULL,'1.0.0.1',0,'2026-03-06 15:53:54'),
(32,'2026-03-06 15:53:54','INSERT INTO ltbpr.ltbprk_e0203_tugas_tanggung_jawab_komite SELECT \'D01\',\'013301000000\',\'01\',\'melakukan rencana Program kerja 2tahun kedepan\',\'Program Kerja Komite 2\',\'Realisasi 2\',\'10\'','#23000Duplicate entry \'013301000000-01\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:53:54'),
(33,'2026-03-06 15:53:54','INSERT INTO ltbpr.ltbprk_e0203_tugas_tanggung_jawab_komite SELECT \'D01\',\'013301000000\',\'01\',\'melakukan rencana Program kerja 2tahun kedepan\',\'Program Kerja Komite 3\',\'Realisasi 3\',\'10\'','#23000Duplicate entry \'013301000000-01\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 15:53:54'),
(34,'2026-03-06 16:04:14','INSERT INTO ltbpr.ltbprk_e0203_tugas_tanggung_jawab_komite SELECT \'D01\',\'013301000000\',\'01\',\'melakukan rencana Program kerja 2tahun kedepan\',\'Program Kerja Komite 3\',\'Realisasi 3\',\'10\'','#23000Duplicate entry \'013301000000-01-melakukan rencana Program kerja 2tahun kedepan\' for key \'PRIMARY\'',0,NULL,'1.0.0.1',0,'2026-03-06 16:04:14'),
(35,'2026-03-07 16:01:43','INSERT INTO ltbpr.ltbpr_backup_log SET `kode_arsip`=\'1_122024\', `tgl_laporan`=\'2024-12-31\', `created_by`=855, `last_created`=NOW()  on duplicate key update  `created_by`=855, `last_created`=NOW()','#42S02Table \'ltbpr.ltbpr_backup_log\' doesn\'t exist',0,NULL,'1.0.0.1',0,'2026-03-07 16:01:43');

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
('APOLO_JUMLAH_REC_PERFILE','1000',NULL),
('APOLO_KODE_LJK','600432',NULL),
('APOLO_KODE_SEKTOR_LJK','010201',NULL),
('CEK_LAST_VERSION_LTBPR','YA',NULL),
('LAST_VERSION_LTBPR','1.0.0.0',NULL),
('LOCK_SYSTEM','TIDAK',NULL),
('LTBPR_JUMLAH_REC_PERFILE','1000',NULL),
('LTBPR_KODE_JENIS_LAPORAN','LTBPRK',NULL),
('LTBPR_KODE_JENIS_LAPORAN_','PRBPRKS',NULL),
('LTBPR_KODE_LJK','609999',NULL),
('LTBPR_KODE_SEKTOR_LJK','010201',NULL),
('MAX_LIMIT_PC_HO','5',NULL),
('MAX_LIMIT_ROW','25',NULL),
('OTORISASI_ANDROID','TIDAK',NULL),
('SYS_AKTIF_EOM_OTOMATIS','TIDAK',NULL),
('SYS_AKTIF_TUTUP_TRANSAKSI','',NULL),
('SYS_TANGGAL_TUTUP_TRANSAKSI_BULANAN00','30/09/2013',NULL),
('SYS_TANGGAL_TUTUP_TRANSAKSI00','30/09/2013',NULL),
('SYS_TRANSAKSI_MINGGU','TIDAK',NULL),
('SYS_TRANSAKSI_SABTU','YA',NULL);

/*Table structure for table `ref_jenis_produk` */

DROP TABLE IF EXISTS `ref_jenis_produk`;

CREATE TABLE `ref_jenis_produk` (
  `sandi` varchar(2) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jenis_produk` */

insert  into `ref_jenis_produk`(`sandi`,`keterangan`) values 
('01','Produk dasar'),
('02','Produk dasar lainnya'),
('03','Produk lanjutan berbasis teknologi informasi'),
('04','Produk lanjutan berkaitan dengan penyelenggaraan kegiatan atau produk lembaga jasa keuangan nonbank atau memengaruhi penilaian profil risiko'),
('05','Produk lanjutan memerlukan izin dan/atau persetuju'),
('06','Kegiatan Laku Pandai'),
('99','Lainnya');

/*Table structure for table `ref_jumlah_penyimpangan` */

DROP TABLE IF EXISTS `ref_jumlah_penyimpangan`;

CREATE TABLE `ref_jumlah_penyimpangan` (
  `sandi` varchar(3) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_jumlah_penyimpangan` */

insert  into `ref_jumlah_penyimpangan`(`sandi`,`keterangan`) values 
('910','Total Fraud'),
('911','Telah Diselesaikan'),
('912','Dalam Proses Penyelesaian'),
('913','Belum Diupayakan Penyelesaiannya'),
('920','Telah ditindaklanjuti Melalui Proses Hukum');

/*Table structure for table `ref_kategori` */

DROP TABLE IF EXISTS `ref_kategori`;

CREATE TABLE `ref_kategori` (
  `sandi` varchar(1) NOT NULL COMMENT 'Kode referensi kategori',
  `kategori` varchar(50) NOT NULL COMMENT 'Deskripsi kategori',
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel referensi untuk kategori penyebab utama dan langkah penyelesaian';

/*Data for the table `ref_kategori` */

insert  into `ref_kategori`(`sandi`,`kategori`) values 
('1','Penyebab utama'),
('2','Langkah penyelesaian');

/*Table structure for table `ref_kategori_kegiatan_usaha` */

DROP TABLE IF EXISTS `ref_kategori_kegiatan_usaha`;

CREATE TABLE `ref_kategori_kegiatan_usaha` (
  `sandi` varchar(1) NOT NULL COMMENT 'Kode referensi kategori kegiatan usaha',
  `kategori_kegiatan_usaha` varchar(50) NOT NULL COMMENT 'Deskripsi kategori kegiatan usaha',
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel referensi untuk kategori kegiatan usaha BPR';

/*Data for the table `ref_kategori_kegiatan_usaha` */

insert  into `ref_kategori_kegiatan_usaha`(`sandi`,`kategori_kegiatan_usaha`) values 
('1','Penghimpunan Dana'),
('2','Penyaluran Dana'),
('3','Layanan lainnya');

/*Table structure for table `ref_kategori_peserta` */

DROP TABLE IF EXISTS `ref_kategori_peserta`;

CREATE TABLE `ref_kategori_peserta` (
  `sandi` varchar(2) NOT NULL,
  `kategori_peserta` varchar(50) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_kategori_peserta` */

insert  into `ref_kategori_peserta`(`sandi`,`kategori_peserta`) values 
('01','Jika seluruh pegawai'),
('02','Jika Direksi dan/atau Dewan Komisaris'),
('03','Jika Pejabat Eksekutif');

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ref_kode_form` */

insert  into `ref_kode_form`(`id`,`kode_form`,`nama_form`,`nama_table`,`is_footer`,`is_file`) values 
(28,'A0301','ltbprk_a0301_riwayat_pendirian_bpr','ltbprk_a0301_riwayat_pendirian_bpr',0,0),
(29,'A0304','ltbprk_a0304_penjelasan_npl','ltbprk_a0304_penjelasan_npl',0,0),
(30,'A0502','ltbprk_a0502_bidang_usaha','ltbprk_a0502_bidang_usaha',0,0),
(31,'A0506','ltbprk_a0506_kerja_sama_lembaga','ltbprk_a0506_kerja_sama_lembaga',0,0),
(32,'A05072','ltbprk_a05072_kegiatan_pengembangan','ltbprk_a05072_kegiatan_pengembangan',0,0),
(33,'E0100','ltbprk_e0100_transparansi_tata_kelola','ltbprk_e0100_transparansi_tata_kelola',0,0),
(34,'E0201','ltbprk_e0201_tugas_tanggung_jawab_direksi','ltbprk_e0201_tugas_tanggung_jawab_direksi',0,0),
(35,'E0202','ltbprk_e0202_tugas_tanggung_jawab_komisaris','ltbprk_e0202_tugas_tanggung_jawab_komisaris',0,0),
(36,'E0203','ltbprk_e0203_tugas_tanggung_jawab_komite','ltbprk_e0203_tugas_tanggung_jawab_komite',0,0),
(37,'E0204','ltbprk_e0204_struktur_independensi_anggota_komite','ltbprk_e0204_struktur_independensi_anggota_komite',0,0),
(38,'E0302','ltbprk_e0302_kepemilikan_saham_kelompok_usaha','ltbprk_e0302_kepemilikan_saham_kelompok_usaha',0,0),
(39,'E0303','ltbprk_e0303_kepemilikan_saham_perusahaan_lain','ltbprk_e0303_kepemilikan_saham_perusahaan_lain',0,0),
(40,'E0401','ltbprk_e0401_hubungan_keuangan_direksi_ps','ltbprk_e0401_hubungan_keuangan_direksi_ps',0,0),
(41,'E0402','ltbprk_e0402_hubungan_keluarga_direksi_ps','ltbprk_e0402_hubungan_keluarga_direksi_ps',0,0),
(42,'E0500','ltbprk_e0500_kebijakan_berdasarkan_rups','ltbprk_e0500_kebijakan_berdasarkan_rups',0,0),
(43,'E0600','ltbprk_e0600_rasio_gaji_tinggi_rendah','ltbprk_e0600_rasio_gaji_tinggi_rendah',0,0),
(44,'E0701','ltbprk_e0701_pelaksanaan_rapat_dalam_setahun','ltbprk_e0701_pelaksanaan_rapat_dalam_setahun',0,0),
(45,'E0702','ltbprk_e0702_kehadiran_anggota_komisaris','ltbprk_e0702_kehadiran_anggota_komisaris',0,0),
(46,'E0800','ltbprk_e0800_penyimpangan_internal','ltbprk_e0800_penyimpangan_internal',0,0),
(47,'E0900','ltbprk_e0900_permasalahan_hukum','ltbprk_e0900_permasalahan_hukum',0,0),
(48,'E1000','ltbprk_e1000_transaksi_benturan_kepentingan','ltbprk_e1000_transaksi_benturan_kepentingan',0,0),
(49,'E1100','ltbprk_e1100_pemberian_dana_sosial_politik','ltbprk_e1100_pemberian_dana_sosial_politik',0,0),
(50,'E1100F','ltbprk_e1100_pemberian_dana_sosial_politik_footer','ltbprk_e1100_pemberian_dana_sosial_politik_footer',1,0),
(51,'E1000F','ltbprk_e1000_transaksi_benturan_kepentingan_footer','ltbprk_e1000_transaksi_benturan_kepentingan_footer',1,0),
(52,'E0900F','ltbprk_e0900_permasalahan_hukum_footer','ltbprk_e0900_permasalahan_hukum_footer',1,0),
(53,'E0800F','ltbprk_e0800_penyimpangan_internal_footer','ltbprk_e0800_penyimpangan_internal_footer',1,0),
(54,'E0702F','ltbprk_e0702_kehadiran_anggota_komisaris_footer','ltbprk_e0702_kehadiran_anggota_komisaris_footer',1,0),
(55,'E0701F','ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer','ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer',1,0),
(56,'E0600F','ltbprk_e0600_rasio_gaji_tinggi_rendah_footer','ltbprk_e0600_rasio_gaji_tinggi_rendah_footer',1,0),
(57,'E0500F','ltbprk_e0500_kebijakan_berdasarkan_rups_footer','ltbprk_e0500_kebijakan_berdasarkan_rups_footer',1,0),
(58,'E0402F','ltbprk_e0402_hubungan_keluarga_direksi_ps_footer','ltbprk_e0402_hubungan_keluarga_direksi_ps_footer',1,0),
(59,'E0401F','ltbprk_e0401_hubungan_keuangan_direksi_ps_footer','ltbprk_e0401_hubungan_keuangan_direksi_ps_footer',1,0),
(60,'A0301F','ltbprk_a0301_riwayat_pendirian_bpr_footer','ltbprk_a0301_riwayat_pendirian_bpr_footer',1,0),
(61,'A0304F','ltbprk_a0304_penjelasan_npl_footer','ltbprk_a0304_penjelasan_npl_footer',1,0),
(62,'A0502F','ltbprk_a0502_bidang_usaha_footer','ltbprk_a0502_bidang_usaha_footer',1,0),
(63,'A0506F','ltbprk_a0506_kerja_sama_lembaga_footer','ltbprk_a0506_kerja_sama_lembaga_footer',1,0),
(64,'A05072F','ltbprk_a05072_kegiatan_pengembangan_footer','ltbprk_a05072_kegiatan_pengembangan_footer',1,0),
(66,'E0201F','ltbprk_e0201_tugas_tanggung_jawab_direksi_footer','ltbprk_e0201_tugas_tanggung_jawab_direksi_footer',1,0),
(67,'E0202F','ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer','ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer',1,0),
(68,'E0203F','ltbprk_e0203_tugas_tanggung_jawab_komite_footer','ltbprk_e0203_tugas_tanggung_jawab_komite_footer',1,0),
(69,'E0204F','ltbprk_e0204_struktur_independensi_anggota_komite_footer','ltbprk_e0204_struktur_independensi_anggota_komite_footer',1,0),
(70,'E0302F','ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer','ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer',1,0),
(71,'E0303F','ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer','ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer',1,0),
(74,'A0305','A0305','A0305',0,1),
(75,'A0400','A0400','A0400',0,1),
(76,'A0503','A0503','A0503',0,1),
(77,'A0504','A0504','A0504',0,1),
(78,'C0100','C0100','C0100',0,1),
(79,'D0000','D0000','D0000',0,1),
(80,'F0000','F0000','F0000',0,1);

/*Table structure for table `ref_komite` */

DROP TABLE IF EXISTS `ref_komite`;

CREATE TABLE `ref_komite` (
  `sandi` varchar(2) NOT NULL,
  `kategori_komite` varchar(50) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_komite` */

insert  into `ref_komite`(`sandi`,`kategori_komite`) values 
('01','Komite Audit'),
('02','Komite Pemantau Risiko'),
('03','Komite Remunerasi dan Nominasi'),
('04','Komite Manajemen Risiko'),
('05','Komite Lainnya');

/*Table structure for table `ref_komite_jabatan` */

DROP TABLE IF EXISTS `ref_komite_jabatan`;

CREATE TABLE `ref_komite_jabatan` (
  `sandi` varchar(2) NOT NULL,
  `kategori_komite_jabatan` varchar(50) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_komite_jabatan` */

insert  into `ref_komite_jabatan`(`sandi`,`kategori_komite_jabatan`) values 
('00','Jika Tidak Menjabat'),
('01','Jika Menjabat Sebagai Ketua'),
('02','Jika Menjabat Sebagai Anggota');

/*Table structure for table `ref_lembaga` */

DROP TABLE IF EXISTS `ref_lembaga`;

CREATE TABLE `ref_lembaga` (
  `sandi` varchar(1) NOT NULL COMMENT 'Kode referensi kategori lembaga',
  `kategori_lembaga` varchar(50) NOT NULL COMMENT 'Deskripsi kategori lembaga',
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel referensi untuk kategori lembaga';

/*Data for the table `ref_lembaga` */

insert  into `ref_lembaga`(`sandi`,`kategori_lembaga`) values 
('1','Bank'),
('2','Lembaga Lain');

/*Table structure for table `ref_opini_akuntan_publik` */

DROP TABLE IF EXISTS `ref_opini_akuntan_publik`;

CREATE TABLE `ref_opini_akuntan_publik` (
  `sandi` varchar(1) NOT NULL COMMENT 'Kode referensi opini akuntan publik',
  `opini_akuntan_publik` varchar(100) NOT NULL COMMENT 'Deskripsi opini akuntan publik',
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel referensi untuk jenis opini akuntan publik';

/*Data for the table `ref_opini_akuntan_publik` */

insert  into `ref_opini_akuntan_publik`(`sandi`,`opini_akuntan_publik`) values 
('1','wajar tanpa pengecualian'),
('2','wajar dengan pengecualian'),
('3','wajar tanpa pengecualian dengan paragraf penjelasan'),
('4','tidak wajar'),
('5','tidak menyatakan pendapat');

/*Table structure for table `ref_peringkat_komposit` */

DROP TABLE IF EXISTS `ref_peringkat_komposit`;

CREATE TABLE `ref_peringkat_komposit` (
  `sandi` varchar(1) NOT NULL,
  `kategori_peringkat_komposit` varchar(20) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_peringkat_komposit` */

insert  into `ref_peringkat_komposit`(`sandi`,`kategori_peringkat_komposit`) values 
('1','Sangat Baik'),
('2','Baik'),
('3','Cukup Baik'),
('4','Kurang Baik'),
('5','Tidak Baik');

/*Table structure for table `ref_permasalahan_hukum` */

DROP TABLE IF EXISTS `ref_permasalahan_hukum`;

CREATE TABLE `ref_permasalahan_hukum` (
  `sandi` varchar(4) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_permasalahan_hukum` */

insert  into `ref_permasalahan_hukum`(`sandi`,`keterangan`) values 
('1001','Telah Selesai (telah mempunyai kekuatan hukum yang tetap)'),
('1002','Dalam Proses Penyelesaian'),
('1003','Total');

/*Table structure for table `ref_pihak_independen` */

DROP TABLE IF EXISTS `ref_pihak_independen`;

CREATE TABLE `ref_pihak_independen` (
  `sandi` varchar(1) NOT NULL,
  `kategori_independent` varchar(10) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_pihak_independen` */

insert  into `ref_pihak_independen`(`sandi`,`kategori_independent`) values 
('1','Ya'),
('2','Tidak');

/*Table structure for table `ref_pihak_pelaksana` */

DROP TABLE IF EXISTS `ref_pihak_pelaksana`;

CREATE TABLE `ref_pihak_pelaksana` (
  `sandi` varchar(2) NOT NULL,
  `kategori_pihak_pelaksana` varchar(50) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_pihak_pelaksana` */

insert  into `ref_pihak_pelaksana`(`sandi`,`kategori_pihak_pelaksana`) values 
('01','Jika Internal BPR'),
('02','Jika Eksternal BPR'),
('03','Jika Berkolaborasi dengan lembaga lain');

/*Table structure for table `ref_rasio_gaji` */

DROP TABLE IF EXISTS `ref_rasio_gaji`;

CREATE TABLE `ref_rasio_gaji` (
  `sandi` varchar(12) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_rasio_gaji` */

insert  into `ref_rasio_gaji`(`sandi`,`keterangan`) values 
('070100000000','Rasio gaji pegawai yang tertinggi (a) dan gaji pegawai yang terendah (b)'),
('070200000000','Rasio gaji anggota Direksi yang tertinggi (a) dan gaji anggota Direksi yang terendah (b)'),
('070300000000','Rasio gaji anggota Dewan Komisaris yang tertinggi (a) dan gaji anggota Dewan Komisaris yang terendah (b)'),
('070400000000','Rasio gaji anggota Direksi yang tertinggi (a) dan gaji anggota dewan Komisaris yang tertinggi (b)'),
('070500000000','Rasio gaji anggota Direksi yang tertinggi (a) dan gaji pegawai yang tertinggi (b)');

/*Table structure for table `ref_remunerasi` */

DROP TABLE IF EXISTS `ref_remunerasi`;

CREATE TABLE `ref_remunerasi` (
  `sandi` varchar(3) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_remunerasi` */

insert  into `ref_remunerasi`(`sandi`,`keterangan`) values 
('611','Gaji'),
('612','Tunjangan'),
('613','Tantiem'),
('614','Kompensasi berbasis saham'),
('615','Remunerasi lainnya'),
('616','Total Remunerasi'),
('620','Fasilitas Lain'),
('621','Perumahan'),
('622','Transportasi'),
('623','Asuransi Kesehatan'),
('624','Fasilitas Lain-Lainnya'),
('625','Total Fasilitas Lain'),
('630','Total Remunerasi dan Fasilitas Lain');

/*Table structure for table `ref_sandi_bank` */

DROP TABLE IF EXISTS `ref_sandi_bank`;

CREATE TABLE `ref_sandi_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sandi` varchar(6) NOT NULL COMMENT 'Kode referensi sandi bank',
  `nama_bank_ljk` varchar(250) NOT NULL COMMENT 'nama bank ljk',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='Tabel referensi untuk kategori penyebab utama dan langkah penyelesaian';

/*Data for the table `ref_sandi_bank` */

insert  into `ref_sandi_bank`(`id`,`sandi`,`nama_bank_ljk`) values 
(1,'002','BANK RAKYAT INDONESIA'),
(2,'008','BANK MANDIRI'),
(3,'009','BANK BNI 1946'),
(4,'076','BANK BUMI ARTA'),
(5,'095','BANK JTRUST INDONESIA D/H BANK MUTIARA'),
(6,'111','BANK DKI'),
(7,'146','BANK OF INDIA INDONESIA'),
(8,'152','BANK SHINHAN INDONESIA d/h BANK METRO EXPRESS'),
(9,'200','BANK TABUNGAN NEGARA'),
(10,'213','BANK TABUNGAN PENSIUNAN NASIONAL'),
(11,'426','BANK MEGA'),
(12,'441','BANK BUKOPIN'),
(13,'484','BANK KEB HANA MERGER BANK KEB INDONESIA & BANK HANA'),
(14,'490','BANK YUDHA BAKTI'),
(15,'494','BANK BRI AGRONIAGA'),
(16,'503','BANK NATIONALNOBU'),
(17,'513','BANK INA PERDANA'),
(18,'526','BANK DINAR d/h BANK LIMAN INTERNASIONAL'),
(19,'558','PT BPD BANTEN, TBK d/h BANK PUNDI INDONESIA'),
(20,'011','BANK DANAMON'),
(21,'016','BANK MAYBANK INDONESIA d/h BANK INTERNASIONAL INDONESIA'),
(22,'023','BANK UOB INDONESIA'),
(23,'028','BANK OCBC NISP'),
(24,'031','CITIBANK'),
(25,'032','JP MORGAN CHASE BANK N.A'),
(26,'033','BANK OF AMERICA'),
(27,'036','BANK WINDU KENTJANA INTERNASIONAL'),
(28,'040','BANGKOK BANK'),
(29,'041','HSBC'),
(30,'042','THE BANK OF TOKYO MITSUBISHI UFJ'),
(31,'045','BANK SUMITOMO MITSUI INDONESIA'),
(32,'046','BANK DBS INDONESIA'),
(33,'047','BANK RESONA PERDANIA'),
(34,'048','BANK MIZUHO INDONESIA'),
(35,'052','THE ROYAL BANK OF SCOTLAND'),
(36,'057','BANK BNP PARIBAS INDONESIA'),
(37,'067','DEUTSCHE BANK AG'),
(38,'069','BANK OF CHINA'),
(39,'089','RABOBANK INTERNATIONAL INDONESIA'),
(40,'164','BANK ICBC INDONESIA'),
(41,'466','BANK ANDARA'),
(42,'945','BANK AGRIS'),
(43,'949','BANK CTBC INDONESIA d/h BANK CHINATRUST INDONESIA'),
(44,'950','BANK COMMONWEALTH'),
(45,'013','BANK PERMATA'),
(46,'014','BANK CENTRAL ASIA'),
(47,'019','PANIN BANK'),
(48,'022','BANK CIMB NIAGA'),
(49,'037','BANK ARTHA GRAHA INTERNASIONAL'),
(50,'050','STANDART CHARTERED BANK'),
(51,'054','BANK CAPITAL INDONESIA'),
(52,'061','BANK ANZ INDONESIA'),
(53,'087','BANK EKONOMI RAHARJA'),
(54,'097','BANK MAYAPADA'),
(55,'153','BANK SINARMAS'),
(56,'161','BANK GANESHA'),
(57,'167','BANK QNB INDONESIA'),
(58,'472','BANK JASA JAKARTA'),
(59,'485','BANK MNC INTERNASIONAL d/h BANK ICB BUMIPUTERA'),
(60,'491','BANK MITRA NIAGA'),
(61,'498','BANK SBI'),
(62,'501','BANK ROYAL INDONESIA'),
(63,'523','BANK SAHABAT SAMPOERNA d/h BANK DIPO INTERNASIONAL'),
(64,'535','BANK KESEJAHTERAAN'),
(65,'548','BANK MULTIARTA SENTOSA'),
(66,'553','BANK MAYORA'),
(67,'555','INDEX SELINDO'),
(68,'566','BANK VICTORIA INTERNASIONAL'),
(69,'567','BANK HARDA INTERNASIONAL'),
(70,'110','BANK JABAR DAN BANTEN'),
(71,'112','BPD YOGYAKARTA'),
(72,'113','BPD JAWA TENGAH'),
(73,'114','BPD JAWA TIMUR'),
(74,'115','BPD JAMBI'),
(75,'116','BPD ACEH'),
(76,'117','BPD SUMATERA UTARA'),
(77,'118','BPD SUMATERA BARAT'),
(78,'119','BPD RIAU KEPRI'),
(79,'120','BPD SUMATERA SELATAN DAN BANGKA BELITUNG'),
(80,'121','BPD LAMPUNG'),
(81,'122','BPD KALIMANTAN SELATAN'),
(82,'123','BPD KALIMANTAN BARAT'),
(83,'124','BPD KALIMANTAN TIMUR'),
(84,'125','BPD KALIMANTAN TENGAH'),
(85,'126','BPD SULAWESI SELATAN DAN SULAWESI BARAT'),
(86,'127','BPD SULAWESI UTARA GORONTALO'),
(87,'135','BPD SULAWESI TENGGARA'),
(88,'128','BPD NTB'),
(89,'129','BPD BALI'),
(90,'130','BPD NUSA TENGGARA TIMUR'),
(91,'131','BPD MALUKU DAN MALUKU UTARA'),
(92,'132','BPD PAPUA'),
(93,'133','BPD BENGKULU'),
(94,'134','BPD SULAWESI TENGAH'),
(95,'145','BANK NUSANTARA PARAHYANGAN'),
(96,'151','BANK MESTIKA DHARMA'),
(97,'157','BANK MASPION INDONESIA'),
(98,'212','BANK WOORI SAUDARA INDONESIA 1906'),
(99,'459','BANK BISNIS INTERNATIONAL'),
(100,'520','PRIMA MASTER BANK VETERAN'),
(101,'531','BANK AMAR INDONESIA d/h BANK ANGLOMAS INDONESIA'),
(102,'542','BANK ARTOS INDONESIA'),
(103,'559','CENTRATAMA NASIONAL BANK'),
(104,'562','BANK FAMA INTERNASIONAL'),
(105,'564','BANK MANDIRI TASPEN POS d/h BANK SINAR HARAPAN BALI'),
(106,'088','BANK ANTAR DAERAH'),
(107,'147','BANK MUAMALAT INDONESIA'),
(108,'405','BANK VICTORIA SYARIAH'),
(109,'422','BANK SYARIAH BRI'),
(110,'425','BANK JABAR BANTEN SYARIAH'),
(111,'427','BANK BNI SYARIAH'),
(112,'506','BANK MEGA SYARIAH'),
(113,'517','BANK PANIN SYARIAH'),
(114,'521','BANK SYARIAH BUKOPIN'),
(115,'536','BANK BCA SYARIAH'),
(116,'547','BANK TABUNGAN PENSIUNAN NASIONAL SYARIAH'),
(117,'947','BANK MAYBANK SYARIAH INDONESIA'),
(118,'011','BANK DANAMON SYARIAH (UUS)'),
(119,'013','BANK PERMATA SYARIAH (UUS)'),
(120,'022','BANK CIMB NIAGA SYARIAH (UUS)'),
(121,'028','BANK OCBC NISP SYARIAH (UUS)'),
(122,'111','BANK DKI (UUS)'),
(123,'112','BPD YOGYAKARTA (UUS)'),
(124,'113','BPD JAWA TENGAH (UUS)'),
(125,'114','BPD JAWA TIMUR (UUS)'),
(126,'115','BPD JAMBI (UUS)'),
(127,'117','BPD SUMATERA UTARA (UUS)'),
(128,'118','BPD SUMATERA BARAT (UUS)'),
(129,'119','BPD RIAU KEPRI (UUS)'),
(130,'120','BPD SUMATERA SELATAN DAN BANGKA BELITUNG (UUS)'),
(131,'122','BPD KALIMANTAN SELATAN (UUS)'),
(132,'123','BPD KALIMANTAN BARAT (UUS)'),
(133,'124','BPD KALIMANTAN TIMUR (UUS)'),
(134,'126','BPD SULAWESI SELATAN DAN SULAWESI BARAT (UUS)'),
(135,'128','BPD NTB (UUS)'),
(136,'153','BANK SINARMAS (UUS)'),
(137,'200','BANK TABUNGAN NEGARA (UUS)'),
(138,'451','BANK SYARIAH MANDIRI'),
(139,'016','BANK MAYBANK (UUS)'),
(140,'144','BANK ANDROMEDA'),
(141,'310','BANK ANRICO'),
(142,'538','BANK ASTRIA RAYA'),
(143,'563','BANK CITRAHASTA DHANAMANUNGGAL'),
(144,'519','BANK DWIPA SEMESTA'),
(145,'155','BANK GUNA INTERNASIONAL'),
(146,'096','BANK HARAPAN SENTOSA'),
(147,'160','BANK INDUSTRI'),
(148,'332','BANK JAKARTA'),
(149,'534','BANK KOSAGRAHA SEMESTA'),
(150,'545','BANK MATARAM DHANARTA'),
(151,'413','BANK UMUM MAJAPAHIT JAYA'),
(152,'071','SEJAHTERA BANK UMUM'),
(153,'399','SOUTH EAST ASIA BANK'),
(154,'012','BANK DAGANG NASIONAL INDONESIA'),
(155,'528','BANK DEKA'),
(156,'505','BANK HOKINDO'),
(157,'522','BANK KREDIT ASIA (ISTIMARAT)'),
(158,'010','BANK UMUM NASIONAL (BUN)'),
(159,'082','BANK SUBENTRA'),
(160,'029','BANK SURYA'),
(161,'081','BANK PELITA'),
(162,'084','BANK MODERN'),
(163,'551','BANK CENTRIS INTERNASIONAL'),
(164,'476','BANK AKEN'),
(165,'510','BANK ALFA'),
(166,'388','BANK ARYA PANDUARTA'),
(167,'074','BANK ASIA PASIFIC (ASPAC BANK)'),
(168,'078','BANK BAHARI'),
(169,'165','BANK BAJA INTERNASIONAL'),
(170,'550','BANK BEPEDE INDONESIA'),
(171,'561','BANK BUDI INTERNASIONAL'),
(172,'556','BANK BUMI RAYA UTAMA'),
(173,'018','BANK CENTRAL DAGANG'),
(174,'549','BANK CIPUTRA'),
(175,'140','BANK CITRA MAKMUR ASIA (eks. YAMA BANK)'),
(176,'148','BANK DAGANG DAN INDUSTRI'),
(177,'455','BANK DANA ASIA'),
(178,'500','BANK DANA HUTAMA'),
(179,'329','BANK DEWA RUTJI'),
(180,'098','BANK DHARMALA'),
(181,'092','BANK FIRST INDONESIA FINANCE AND INVESTMENT CORPORATION (FICORINVEST)'),
(182,'149','BANK HASTIN INTERNASIONAL'),
(183,'560','BANK INDOMITRA DEVELOPMENT (INDOTRADE BANK)'),
(184,'099','BANK INDONESIA RAYA'),
(185,'066','BANK INVESTMENT INTERNASIONAL (INDOVEST)'),
(186,'367','BANK INTAN'),
(187,'142','BANK KHARISMA'),
(188,'141','BANK LAUTAN BERLIAN'),
(189,'083','BANK MASHILL UTAMA'),
(190,'544','BANK METROPOLITAN RAYA'),
(191,'143','BANK NAMURA INTERNUSA'),
(192,'565','BANK ORIENT'),
(193,'094','BANK PAPAN SEJAHTERA'),
(194,'024','BANK PESONA KRIYADANA'),
(195,'543','BANK PUTERA MULTIKARSA'),
(196,'163','BANK PUTERA SURYA PERKASA'),
(197,'150','BANK SAHID GAJAH PERKASA'),
(198,'557','BANK SEMBADA ARTANUGROHO (SANHO BANK)'),
(199,'514','BANK SEWU INTERNASIONAL'),
(200,'486','BANK SINO'),
(201,'154','BANK TATA INTERNATIONAL'),
(202,'086','BANK UMUM SERVITIA'),
(203,'065','BANK USAHA PEMBIAYAAN PEMBANGUNAN INDONESIA (UPPINDO)'),
(204,'600','BANK PERKREDITAN RAKYAT (BPR)'),
(205,'601','BANK PERKREDITAN RAKYAT SYARIAH (BPRS)'),
(206,'600001','PT. BPR Jawa Timur'),
(207,'600002','PT. BPR Anugrah Swakerta'),
(208,'600003','PT. BPR Shinta Putra Pengasih'),
(209,'600004','PT. BPR Tandu Artha'),
(210,'600005','PT BPR Narwastu Mikro Perkasa'),
(211,'600007','PT. BPR Cikarang Raharja'),
(212,'600008','PT. BPR Pesona Letris Pratama'),
(213,'600009','PT. BPR Citra Ladon Rahardja'),
(214,'600010','PT. BPR Dana Usaha'),
(215,'600011','PT. BPR Bumiasih NBP 22 d/h Muara NBP'),
(216,'600012','PT. BPR Daya Arta'),
(217,'600013','PT. BPR Bumiasih NBP 24 d/h Onang Hasang'),
(218,'600014','PT. BPR Muliatama Dananjaya'),
(219,'600015','PT. BPR Panasayu Arthalayan Sejahtera'),
(220,'600016','PT. BPR Siraya Karya Bakti'),
(221,'600017','PT. BPR Akasia Mas'),
(222,'600018','PT. BPR Nusantara Bona Pasogit 25'),
(223,'600019','PD. BPR BP Kota Bogor'),
(224,'600020','PT. BPR Marcorindo Perdana'),
(225,'600021','PT. BPR Mora'),
(226,'600024','PT. BPR Mulya Arta'),
(227,'600026','PT. BPR Swadaya Tunggal d/h Nusantara'),
(228,'600027','PT BPR Adipura Santosa'),
(229,'600028','PT. BPR Ghadira Danamulia'),
(230,'600029','PT. BPR Pandanaran Jaya'),
(231,'600030','PT. BPR Artha Bersama Sejahtera'),
(232,'600031','PT. BPR Pantura Abadi'),
(233,'600032','PT. BPR Bringin Dana Sejahtera'),
(234,'600033','PT. BPR Polatama Kusuma'),
(235,'600035','PT. BPR Pusaka Dana'),
(236,'600036','PT. BPR Dana Multi Guna'),
(237,'600037','PT BPR Puspitasari'),
(238,'600038','PT. BPR Sanggabuana Agung'),
(239,'600039','PT BPR Kawan'),
(240,'600040','PT. BPR Anugerah Multi Dana'),
(241,'600042','PT. BPR Supradana Mas'),
(242,'600044','PT. BPR Binadana Swadaya'),
(243,'600046','PT. BPR Tjandra Artha Lestari'),
(244,'600047','PT. BPR Ragam Peranmandiri'),
(245,'600048','PT BPR Multi Sembada Dana'),
(246,'600049','PT. BPR Gerbang Masa Depan'),
(247,'600050','PT. BPR Amal Bhakti Sejahtera'),
(248,'600051','PT. BPR Kurnia Sewon'),
(249,'600052','PD BPR Bank Daerah Bojonegoro'),
(250,'600053','PT. BPR Ana Artha'),
(251,'600054','PT. BPR Sum Adiyatra'),
(252,'600056','PT. BPR Universal Sentosa'),
(253,'600057','PT. BPR Bhakti Riyadi Wedi'),
(254,'600058','PT. BPR Artha Selomanik Putra'),
(255,'600059','PT BPR Universal Kalbar'),
(256,'600060','PT BPR Sejahtera Artha Sembada'),
(257,'600061','PT. BPR Balongpanggang Sentosa'),
(258,'600062','PT BPR Universal'),
(259,'600063','PT. BPR Binarta Luhur'),
(260,'600064','PT. BPR Cibitung Permai'),
(261,'600065','PT BPR Artha Daya'),
(262,'600066','PT. BPR Lumbung Mekar Sentosa'),
(263,'600067','PT. BPR Prima Mertoyudan Sejahtera'),
(264,'600068','PT. BPR Metropolitan Putra'),
(265,'600069','PT. BPR Dharma Pejuang Empat Lima'),
(266,'600070','PT. BPR Siwa Rahardja Utama'),
(267,'600071','PT. BPR Artaperdana Delta Sentosa'),
(268,'600072','PT. BPR Karunia Kanaka'),
(269,'600073','PT BPR Mega Karsa Mandiri'),
(270,'600074','PT. BPR Gema Esamas Abadi'),
(271,'600075','PT. BPR Hidup Arthagraha'),
(272,'600076','PT. BPR Multi Tata Perkasa'),
(273,'600077','PT BPR Dana Mandiri Bogor'),
(274,'600078','PT. BPR Klaten Sejahtera'),
(275,'600079','PT BPR Tunas Jaya Global'),
(276,'600080','PT. BPR Tridharma Depok'),
(277,'600081','PT. BPR Phidectama Biak'),
(278,'600082','PT. BPR Aneka Danaraya'),
(279,'600083','PT. BPR Duta Bali d/h Martabat Buana'),
(280,'600084','PT. BPR Langgeng Lestari Bersama'),
(281,'600085','PT. BPR Dana Niaga'),
(282,'600086','PT. BPR Suryamas'),
(283,'600087','PT BPR Central International'),
(284,'600088','PT. BPR Artha Huda Abadi'),
(285,'600089','PT. BPR Hariarta Sedana'),
(286,'600090','PT. BPR Ukabima Nindya Raharja'),
(287,'600091','PT. BPR Menaramas Mitra'),
(288,'600092','PT. BPR Nusantara Bona Pasogit 16'),
(289,'600093','PT. BPR Gita Makmur Utama'),
(290,'600094','PT. BPR Dana Rajabally'),
(291,'600095','PT. BPR Gajah Mungkur d/h Tunggal Dara'),
(292,'600096','PT. BPR Artha Aceh Sejahtera'),
(293,'600097','PT. BPR Gebu Kujang Kinantan'),
(294,'600098','PT. BPR Binadana Makmur'),
(295,'600099','PT. BPR Kedu Arthasetia'),
(296,'600101','PT. BPR Sisibahari Dana'),
(297,'600102','PT. BPR Wirosari Ijo'),
(298,'600103','PT. BPR Ardhie Gede'),
(299,'600104','PT. BPR Pondok Meja Indah'),
(300,'600105','PT. BPR Sowan Utama'),
(301,'600106','PT. BPR Matahari Artadaya'),
(302,'600108','PT. BPR Antar Guna'),
(303,'600109','PT. BPR Tri Harta Indah'),
(304,'600110','PT. BPR Jadi Manunggal Abadi'),
(305,'600111','PT BPR DP Taspen'),
(306,'600112','PT. BPR Dau Lestari'),
(307,'600113','PT. BPR Pulau Intan Sejahtera'),
(308,'600114','PT. BPR Artha Jaya Citeureup'),
(309,'600116','PT. BPR Danamitra Surya'),
(310,'600119','PT. BPR Panca Danarakyat'),
(311,'600120','PT. BPR Dau Anugerah'),
(312,'600122','PT. BPR Artha Moro'),
(313,'600123','PT. BPR Artha Kurnia Raharja'),
(314,'600124','PT. BPR Cipta Dana Mulia'),
(315,'600125','PT. BPR Tulus Puji Rejeki'),
(316,'600126','PT. BPR Indoartha Bintang Mulia'),
(317,'600127','PT. BPR Centra Kreditama'),
(318,'600128','PT. BPR Mandiri Dhanasejahtera'),
(319,'600129','PT BPR Indomitra Artha Pertiwi'),
(320,'600130','PT. BPR Artha Pamenang Wates'),
(321,'600131','PT. BPR Artha Sentana Hardja'),
(322,'600132','PT. BPR Artha Pamenang Warujayeng'),
(323,'600134','PT. BPR Teguh Ayusuastika'),
(324,'600135','PT. BPR Karya Kurnia Utama'),
(325,'600136','PT. BPR Puri Artha Pacitan'),
(326,'600137','PT. BPR Arthaprima Danajasa'),
(327,'600138','PT. BPR Binalanggeng Mulia'),
(328,'600139','PT. BPR Olympindo Primadana'),
(329,'600140','PT. BPR Nusantara Bona Pasogit 34'),
(330,'600143','PD BPR Bank Salatiga'),
(331,'600144','PT BPR Kemuning Mitra Cemerlang'),
(332,'600145','PT. BPR Prima Dadi Arta'),
(333,'600146','PT BPR Ophir'),
(334,'600147','PT. BPR Samarason'),
(335,'600148','PT BPR Nusa Utara'),
(336,'600149','PT BPR Nusantara Bona Pasogit 33'),
(337,'600150','PT BPR Bintang Ekonomi Sejahtera'),
(338,'600151','PT. BPR Klepu Mitra Kencana'),
(339,'600152','PT. BPR Makmur Merata'),
(340,'600153','PT. BPR Universitas Gajah Mada'),
(341,'600154','PT. BPR Sayma Karya'),
(342,'600155','PT. BPR Mitradana Madani'),
(343,'600157','PT. BPR Mitra Telagasari Utama'),
(344,'600159','PT. BPR Nusa Galang Makmur'),
(345,'600160','PD. BPR BKPD Cilamaya'),
(346,'600166','KOP. BPR Artos Parahyangan'),
(347,'600176','PD. BPR Kota Sukabumi'),
(348,'600179','PT BPR Kredit Mandiri Jabar'),
(349,'600180','KOP BPR Tanjung Raya'),
(350,'600181','PT. BPR Nusamba Plered'),
(351,'600182','PT. BPR Nusamba Sukaraja'),
(352,'600183','PT. BPR Nusamba Tanjungsari'),
(353,'600184','KOP. BPR Bara Ujungberung'),
(354,'600185','PT. BPR Trisurya Tata Artha'),
(355,'600186','PT. BPR Artha Margahayu'),
(356,'600188','PT. BPR Nehemia'),
(357,'600189','PT. BPR Sinar Mas Pelita'),
(358,'600190','PT. BPR Bina Sono Artha'),
(359,'600193','PT. BPR Adhierresa'),
(360,'600216','PT. BPR Sindhur Arta Mulia Kencana'),
(361,'600220','PT. BPR Artha Sari Sentosa'),
(362,'600221','PT. BPR Sehat Ekonomi'),
(363,'600223','PD. BPR Amuntai Selatan'),
(364,'600224','PD. BPR Amuntai Tengah'),
(365,'600226','PD. BPR Amuntai Utara'),
(366,'600228','PD. BPR Tapin Selatan'),
(367,'600229','PD. BPR Tapin Tengah'),
(368,'600231','PD. BPR Binuang'),
(369,'600232','PD. BPR Candi Laras Utara'),
(370,'600234','PD. BPR Simpang Empat'),
(371,'600235','PD. BPR Sungai Tabuk'),
(372,'600239','PT. BPR Rizky Barokah'),
(373,'600241','PT. BPR Artha Mekar Sokaraja'),
(374,'600244','PT. BPR Surya Yudha'),
(375,'600245','PT. BPR Pulau Punjung'),
(376,'600247','PT BPR Mutiara Nagari'),
(377,'600249','PT. BPR Gema Pesisir'),
(378,'600250','PT. BPR Gunung Talang'),
(379,'600252','PT. BPR Lengayang'),
(380,'600253','PT. BPR Pariangan'),
(381,'600255','PT. BPR Tilatang Kamang'),
(382,'600256','PT. BPR Suliki Gunung Mas'),
(383,'600258','PT. BPR Harau'),
(384,'600260','PT BPR Cincin Permata Andalas'),
(385,'600261','PT. BPR Tridanasakti'),
(386,'600263','PT. BPR Suryakusuma Kranggan'),
(387,'600265','PT. BPR Multidhana Bersama'),
(388,'600266','PT. BPR Hipmi Jaya'),
(389,'600270','PT. BPR Malifut Danatama'),
(390,'600271','PD. BPR Sukabumi'),
(391,'600272','PT BPR Ukabima BMMS'),
(392,'600273','PT. BPR Labuhan Dana Sentosa'),
(393,'600274','PT. BPR Solider'),
(394,'600278','PT. BPR Sembada'),
(395,'600280','PD. BPR LKK Mustaqim Sukamakmur'),
(396,'600285','PD. BPR Raharja Wanayasa'),
(397,'600290','PD. BPR Martapura'),
(398,'600292','PD. BPR Astambul'),
(399,'600294','PD. BPR Labuan Amas Selatan'),
(400,'600296','PD. BPR Tapin Utara'),
(401,'600298','PD. BPR Kandangan'),
(402,'600301','PT. BPR Nusamba Singaparna'),
(403,'600302','PD. BPR Sungai Pandan'),
(404,'600303','PT. BPR Nusamma Cisalak'),
(405,'600304','PD. BPR Haruai'),
(406,'600305','PT. BPR Nauli Danaraya'),
(407,'600306','PD. BPR Kelua'),
(408,'600307','PT. BPR Panjawan Mitrausaha'),
(409,'600308','PD. BPR Muara Uya'),
(410,'600309','PT. BPR Bumitani Mandiri'),
(411,'600310','PD BPR Bank Jombang'),
(412,'600311','PT. BPR Karyajatnika Sadaya'),
(413,'600312','PD. BPR Bank Jepara Artha'),
(414,'600313','PT. BPR Raga Sakti'),
(415,'600315','PT. BPR Rajadana Menganti'),
(416,'600316','PT. BPR Darbeni Rizki'),
(417,'600318','PD BPR Bank Karanganyar'),
(418,'600319','PD. BPR LPK Cimerak'),
(419,'600320','PD. BPR Rokan Hilir'),
(420,'600324','PT BPR Karya Utama Jabar'),
(421,'600332','PD. BPR BKPD Cijulang'),
(422,'600342','PD. BPR LPK Bekasi'),
(423,'600343','PD. BPR Serang'),
(424,'600351','PD. BPR Gemilang'),
(425,'600356','PD. BPR BKPD Lakbok'),
(426,'600369','PD. BPR BKPD Pangandaran'),
(427,'600374','PD.BPR NTB MATARAM'),
(428,'600392','PD. BPR BP Kota Cirebon'),
(429,'600395','PT. BPR Hisobhan'),
(430,'600398','PT BPR Mitra Harmoni Indramayu'),
(431,'600400','PT. BPR Pura Artha Kencana Jatipuro'),
(432,'600402','PT BPR Muria Harta Nusantara'),
(433,'600406','PT BPR Hayura Artalola'),
(434,'600407','PD. BPR LPK Panyingkiran'),
(435,'600408','PT. BPR Mahkota Artha Sejahtera'),
(436,'600409','PT BPR Cipatujah Jawa Barat'),
(437,'600411','PT. BPR Sebaru Sejahtera Lestari'),
(438,'600412','PT. BPR Eka Prasetya'),
(439,'600414','PT. BPR Kuta Bumi Sidomukti'),
(440,'600416','PD. BPR Arjawinangun'),
(441,'600418','PD. BPR Astanajapura'),
(442,'600419','PD. BPR LPK Cantigi Kulon'),
(443,'600420','PD. BPR Babakan'),
(444,'600421','PD. BPR LPK Arahan Kidul'),
(445,'600423','PD. BPR LPK Kroya'),
(446,'600425','PD. BPR LPK Sukra'),
(447,'600426','PD. BPR Beber'),
(448,'600427','PD. BPR LPK Bongas'),
(449,'600429','PD. BPR LPK Balongan'),
(450,'600430','PD. BPR BP Kab. Blora'),
(451,'600432','PT BPR Kredit Mandiri Indonesia'),
(452,'600435','PT BPR Hambangun Artha Selaras'),
(453,'600437','PT BPR Intan Jabar'),
(454,'600438','PD. BPR Cirebon Barat'),
(455,'600440','PD. BPR Cirebon Selatan'),
(456,'600442','PD. BPR Cirebon Utara'),
(457,'600444','PD. BPR Ciwaringin'),
(458,'600452','PD. BPR Gegesik'),
(459,'600453','PT BPR Cianjur Jabar'),
(460,'600470','PD. BPR Kapetakan'),
(461,'600474','PD. BPR Karangsembung'),
(462,'600479','PT. BPR Nusa Intim Sentani'),
(463,'600480','PD. BPR Klangenan'),
(464,'600483','PD. BPR BKPD Kuningan'),
(465,'600488','PD. BPR Lemahabang'),
(466,'600497','PD BPR BKK Purwokerto'),
(467,'600504','PD. BPR Palimanan'),
(468,'600506','PD. BPR Plumbon'),
(469,'600515','PD BPR Majalengka'),
(470,'600517','PD. BPR Sumber'),
(471,'600520','PD. BPR Susukan'),
(472,'600523','PD. BPR Waled'),
(473,'600525','PD. BPR Weru'),
(474,'600531','PT. BPR Citra Darian'),
(475,'600533','PT. BPR Gunung Kawi'),
(476,'600535','PT. BPR Gunung Kinibalu'),
(477,'600537','PT BPR Araya Arta d/h Gunung Merapi Kebumen'),
(478,'600539','PT. BP Gunung Merbabu'),
(479,'600540','PD. BPR BKK Banjarharjo'),
(480,'600541','PT. BPR Semeru'),
(481,'600543','PD BPR Bank Kebumen'),
(482,'600545','PD BPR Kendali Artha'),
(483,'600547','PD. BPR BP Kab. Kudus'),
(484,'600549','PD. BPR BAPAS 69'),
(485,'600550','PD. BPR BKK Tulung'),
(486,'600551','PD BPR Bank Purworejo'),
(487,'600553','PD. BPR BP Kab. Rembang'),
(488,'600555','PD. BPR BP Kab. Temanggung'),
(489,'600557','PD BPR Bank Wonosobo'),
(490,'600559','PD. BPR BANK PASAR KOTA SEMARANG'),
(491,'600561','PT. BPR Krida Harta Salatiga'),
(492,'600563','PT. BPR Mulyo Lumintu'),
(493,'600565','PT. BPR Pasar Boja'),
(494,'600567','PT. BPR Weleri Makmur'),
(495,'600569','PT. BPR Nusamba Cepiring'),
(496,'600571','PT. BPR Nusamba Pecangaan Jepara'),
(497,'600573','PD BPR Bank Magelang'),
(498,'600575','PT. BPR Weleri Jayapersada'),
(499,'600577','PT. BPR Inti Ambarawa Sejahtera'),
(500,'600579','PT. BPR Ambarawa Persada'),
(501,'600581','PT. BPR Restu Mranggen Makmur'),
(502,'600583','KOP. BPR Wedariyaksa'),
(503,'600585','PT. BPR Tayu Dutapersada'),
(504,'600586','PD. BPR BKK Grogol'),
(505,'600587','PT. BPR Arthanugraha Makmursejahtera'),
(506,'600591','PT. BPR Dutabhakti Insani'),
(507,'600593','PT. BPR Agung Sejahtera'),
(508,'600595','PT. BPR Rudo Indobank'),
(509,'600598','PT. BPR Artha Mertoyudan'),
(510,'600599','PD. BPR LPK Sawangan'),
(511,'600600','PT. BPR Artha Mranggenjaya'),
(512,'600601','PD. BPR LPK Parung Panjang'),
(513,'600602','PD. BPR LPK Pancoran Mas'),
(514,'600603','PT. BPR Dhanatani Cepiring'),
(515,'600604','PD. BPR LPK Leuwiliang'),
(516,'600605','PT. BPR Gunung Rizki Pusaka Utama'),
(517,'600606','PD. BPR LPK Citeureup'),
(518,'600607','PD. BPR LPK Malingping'),
(519,'600608','PT BPR Cepu Nasionalbank'),
(520,'600609','PD. BPR LPK Warunggunung'),
(521,'600610','PT. BPR Kembang Parama'),
(522,'600611','PD. BPR LPK Cipanas'),
(523,'600613','PD BPR PK Saketi'),
(524,'600614','PT. BPR Gunung Slamet'),
(525,'600615','PD. BPR BKK Wonosobo'),
(526,'600619','PT. BPR Gunung Simping Artha'),
(527,'600621','PT. BPR Citanduy Artha'),
(528,'600627','PT. BPR Artha Kaliwungu'),
(529,'600629','PT. BPR Arthama Cerah Weleri'),
(530,'600630','PD. BPR BKK Temanggung'),
(531,'600635','PT. BPR Dana Mitra Sentosa'),
(532,'600636','PT. BPR Artamas'),
(533,'600637','PD. BPR BKK Kota Semarang'),
(534,'600638','PT. BPR Bumi Sediaguna'),
(535,'600639','PD. BPR Puspakencana'),
(536,'600640','PD. BPR Bank Pemalang'),
(537,'600641','PD BPR Bank Tegal Gotong Royong'),
(538,'600643','PD. BPR BP Kota Tegal'),
(539,'600645','PT. BPR Nusamba Adiwerna'),
(540,'600648','PT. BPR Sahabat Tata'),
(541,'600649','PD. BPR BKK Purworejo'),
(542,'600650','PT. BPR Nusumma Jateng'),
(543,'600658','PT. BPR Bina Sejahtera Insani'),
(544,'600660','PT. BPR Bank Desa Guna Daya'),
(545,'600664','PT. BP Gunung Lawu'),
(546,'600666','PD BPR Bank Boyolali'),
(547,'600668','PD. BPR Bank Daerah Karanganyar'),
(548,'600670','PD BPR Bank Klaten'),
(549,'600672','PD. BP Kabupaten Dati II Sukoharjo'),
(550,'600674','PD.BPR Bank Solo'),
(551,'600677','KOP. BP Patma'),
(552,'600679','PT. BPR Rejeki Insani'),
(553,'600681','PT. BPR Solobaru Permai'),
(554,'600683','PT. BPR Sukadana'),
(555,'600685','PT. BPR Nusamba Ampel'),
(556,'600686','PD. BPR BKK Kota Magelang'),
(557,'600687','PT. BPR Delanggu Raya'),
(558,'600689','PT BPR Ceper'),
(559,'600691','PT. BPR Cita Dewi'),
(560,'600693','PT. BPR Restu Artha Abadi'),
(561,'600695','PT. BPR Dana Mitra Sakti'),
(562,'600697','PT. BPR Danamas Pratama'),
(563,'600699','PT BPR Arta Utama'),
(564,'600701','PT. BPR Kusuma Sumbing'),
(565,'600703','PT. BPR Mertoyudan Makmur'),
(566,'600705','PT. BPR Ulima Djumpa Marom'),
(567,'600706','PD. BPR BKK Kebumen'),
(568,'600707','PT. BPR Lugano'),
(569,'600709','PT. BPR Sumber Ekonomi'),
(570,'600712','PT. BPR Kedung Arto'),
(571,'600715','PT. BPR Bhakti Daya Ekonomi'),
(572,'600717','PT BPR Madani Sejahtera Abadi'),
(573,'600719','PD. BPR Bank Bantul'),
(574,'600721','PD BPR Bank Daerah Gunungkidul'),
(575,'600723','PD. BPR BP Kulon Progo'),
(576,'600725','PD. BPR Bank Sleman'),
(577,'600727','PD. BPR Bank Jogja Kota Yogyakarta'),
(578,'600729','PT BPR Lestari Darmo Mulyo'),
(579,'600731','PT. BPR Shinta Daya'),
(580,'600734','PT. BPR Nusamba Banguntapan'),
(581,'600736','PT. BPR Nusamba Temon'),
(582,'600737','PT BPR Natasha Bintang Anugrah'),
(583,'600738','PT. BPR Profidana Paramitra'),
(584,'600739','PT. BPR Danagung Bakti'),
(585,'600740','PT BPR Nusumma Jogja'),
(586,'600742','PT. BPR Arga Tata'),
(587,'600743','PT. BPR Wahana Sentra Artha'),
(588,'600744','PT. BPR Wijayamulya Santosa'),
(589,'600745','PT BPR Arthaguna Mandiri'),
(590,'600746','PT. BPR Bhumikarya Pala'),
(591,'600747','PT. BPR Citrahalim Persada'),
(592,'600748','PT. BPR Danagung Ramulti'),
(593,'600749','PT. BPR Citrahalim Raharja'),
(594,'600750','PT. BPR Restu Mandiri Makmur'),
(595,'600752','KOP. BPR Jetis'),
(596,'600754','KOP. BPR Cahaya Bumi Artha'),
(597,'600756','PT BPR Arta Nawa'),
(598,'600759','PT. BPR Prima Kredit Utama'),
(599,'600761','PT. BP Bhakti'),
(600,'600762','PT. BPR Mega Artha Mustika'),
(601,'600763','PT. BPR Danamas'),
(602,'600764','PT. BP Guna Yatra'),
(603,'600765','PT. BPR Bina Maju Usaha'),
(604,'600766','PD BPR Bangkalan'),
(605,'600767','PD. BPR Kabupaten Dati II Gresik'),
(606,'600768','PT. BPR Mitra Dana Utama'),
(607,'600769','PD BPR Bank Daerah Lamongan'),
(608,'600770','PT. BPR Aswaja'),
(609,'600771','PT BPR Majatama'),
(610,'600772','PT. BPR Trisurya Bumindo'),
(611,'600773','PT. BP Kosanda'),
(612,'600774','PT. BPR Krian Nusantara'),
(613,'600776','PD. BPR Kota Kediri'),
(614,'600777','PT. BP Kurnia Dadi Arta'),
(615,'600778','PT. BPR Mitra Mulia Persada'),
(616,'600779','PT. BPR Argo Dana Ungaran'),
(617,'600780','PT.BPR SRIEKAYA'),
(618,'600781','PT. BPR Pitih Gumarang'),
(619,'600782','PT BPR Artha Buana'),
(620,'600783','PT. BPR Restu Artha Makmur'),
(621,'600784','PD. BPR Karimun'),
(622,'600785','PT. BPR Dana Utama'),
(623,'600786','PT BPR Wijaya Prima'),
(624,'600787','PT. BPR Mandiri Artha Abadi'),
(625,'600788','PT. BPR Bintang Mitra'),
(626,'600789','PT. BPR Anugerah Harta Kaliwungu'),
(627,'600790','PT. BPR Nusamba Brondong'),
(628,'600791','PT. BPR Paro Tua'),
(629,'600792','PT BPR Sejahtera Kendari'),
(630,'600793','PT. BPR Danakerja Putra'),
(631,'600794','PT BPR Sejahtera Baubau'),
(632,'600795','PT. BPR Arta Swasembada Mojokerto'),
(633,'600798','PT. BPR Benta Tesa'),
(634,'600799','PT. BPR Ukabima Lestari'),
(635,'600800','PT. BPR Sumber Usahawan Bersama'),
(636,'600801','PT. BPR Ronabasa'),
(637,'600802','PT. BPR Taman Dhana'),
(638,'600803','PT. BPR Paro Laba'),
(639,'600804','PT. BPR Ganda Lata'),
(640,'600805','PT. BPR Surabaya Lestari'),
(641,'600806','PT. BPR Ratna Artha Pusaka'),
(642,'600807','PT. BPR Danamas Makmur'),
(643,'600809','PT. BPR Perdana Lintas Khatulistiwa'),
(644,'600810','PT. BPR Arta Waru Surya'),
(645,'600811','PT BPR Barelang Mandiri'),
(646,'600813','PT. BPR Danaputra Sakti'),
(647,'600814','PT. BPR Semarang Margatama Gunadana'),
(648,'600815','PT. BPR Pandaan Arta Jaya'),
(649,'600816','PT. BPR Olympindo Sejahtera'),
(650,'600817','PD. BPR Tanggo Rajo'),
(651,'600819','PT. BPR Adil Jaya Artha'),
(652,'600820','PT. BPR Surya Dana Karya'),
(653,'600821','PT. BPR Hara Lata Kolaka'),
(654,'600822','PT. BPR Sepanjang Sumber Dharma Artha'),
(655,'600823','PT. BPR Sulawesi Mandiri'),
(656,'600824','PT. BPR Taman Adimakmur'),
(657,'600825','PT. BPR Danagung Abadi'),
(658,'600826','PT BPR Satyadhana Artha'),
(659,'600827','PT. BPR Pemberdayaan Ekonomi Rakyat'),
(660,'600828','PT. BPR Buana Dana Makmur'),
(661,'600829','PT. BPR Pundi Masyarakat'),
(662,'600830','PT. BPR Sinardana Buana'),
(663,'600831','PT. BPR Suar Data'),
(664,'600832','PT. BPR Bumi Sanggabuana'),
(665,'600833','PT. BPR Pataru Laba'),
(666,'600834','PT. BPR Bandataman'),
(667,'600835','PT. BPR Citra Dana Mandiri'),
(668,'600836','PT. BPR Sumber Arthawaru Agung'),
(669,'600837','PT. BPR Nusumma Jatim'),
(670,'600838','PT BPR Utama Kita Mandiri'),
(671,'600839','PT. BPR Central Niaga'),
(672,'600840','PT. BPR Artha Senapati'),
(673,'600841','PT. BPR Paro Dana'),
(674,'600842','PT. BPR Surasari Hutama'),
(675,'600843','PT. BPR Banksar Dana Loka'),
(676,'600844','PT. BPR G e n t e n g'),
(677,'600845','PT. BPR Intidana Sukses Makmur'),
(678,'600846','PT. BPR Inti Danita'),
(679,'600847','PT. BPR Restu Klaten Makmur'),
(680,'600848','PT. BPR Saranasukses Gemah Ripah'),
(681,'600849','PT. BPR Payung Negeri Bestari'),
(682,'600850','PT BPR Dhasatra Artha Sempurna'),
(683,'600851','PT. BPR Artha Tual'),
(684,'600852','PT. BPR Bintang Mas Maesan'),
(685,'600853','PT. BPR Sumber Arta'),
(686,'600854','PT. BPR Artha Mukti Santosa'),
(687,'600855','PT. BPR Jwalita'),
(688,'600856','PT. BPR Porong Lestari'),
(689,'600857','PT. BPR Artha Tanah Mas'),
(690,'600858','PT. BPR Mitra Arta Mulia'),
(691,'600859','PT. BPR Mitra Niaga Banggai'),
(692,'600860','PT. BPR Danumas Binadhana'),
(693,'600861','PT. BPR Nova Trijaya'),
(694,'600862','PT. BPR Intan Kita'),
(695,'600863','PT. BPR Mitra Central Dana'),
(696,'600864','PT. BPR Parlaungan'),
(697,'600865','PT. BPR Artha Karya Perdana'),
(698,'600866','PT. BPR Kota Pasuruan'),
(699,'600867','PT. BPR Putera Dana'),
(700,'600868','PT. BPR Bumi Masyarakat Sejahtera'),
(701,'600869','PT. BPR Multi Artha Mas Sejahtera'),
(702,'600871','PT. BPR Central Pitoby'),
(703,'600872','PT. BPR Pamekasan Purapersada'),
(704,'600873','PT. BPR Dinamika Bangun Arta'),
(705,'600874','PT. BPR Artha Swasembada Mojosari'),
(706,'600875','PT. BPR Catur Artha Jaya'),
(707,'600876','PT BPR Artha Anugrah Kencana'),
(708,'600878','PT. BPR Arta Muktigraha'),
(709,'600879','PT. BPR Abrin Centra Artha'),
(710,'600880','PT. BPR Damata Arthanugraha'),
(711,'600881','PT. BPR Intan Surya'),
(712,'600882','PT BPR Armindo Kencana'),
(713,'600883','PT. BPR Kencana Graha'),
(714,'600884','PT. BPR Sumber Dhana Makmur'),
(715,'600885','PT. BPR Mitra Lestari'),
(716,'600886','PT. BPR Dharma Indra'),
(717,'600887','PT. BPR Buana Agribisnis'),
(718,'600888','PT. BPR Arta Taman Dayu'),
(719,'600889','PT. BPR Duta Kepulauan Riau'),
(720,'600890','PT. BPR Harapan Sejahtera Malili'),
(721,'600891','PT. BPR Bhaskara Pakto'),
(722,'600892','PT. BPR Dana Sanggau Mandiri'),
(723,'600893','PT. BPR Eka Dana Utama'),
(724,'600894','PT. BPR Bromo Mandiri'),
(725,'600895','PT. BPR Estetika Artha Guna'),
(726,'600897','PT. BPR Duta Adiarta'),
(727,'600898','PT. BPR Dampit'),
(728,'600899','PT. BPR Eka Dana Mandiri'),
(729,'600900','PT. BPR Gunung Arjuna'),
(730,'600901','PT. BPR Tresna Niaga'),
(731,'600902','PT BPR Lestari Jatim'),
(732,'600903','PT. BPR Haneda Mitra Usaha'),
(733,'600904','PT. BPR Gunung Ringgit'),
(734,'600905','PT. BPR Artha Kanjuruan Pemkab Malang'),
(735,'600906','PT. BPR Mandiri Artha Niaga Prima'),
(736,'600907','PD. BPR BP Kab. Dati II Lumajang'),
(737,'600908','PT. BPR Sejahtera Batam'),
(738,'600909','PT. BPR Kerta Arthamandiri'),
(739,'600910','PD. BPR Tugu Artha Malang'),
(740,'600911','PT. BPR Inti Dana Sentosa'),
(741,'600912','PT. BPR Sumber Arto'),
(742,'600913','PT. BPR Artha Prima Perkasa'),
(743,'600914','PT. BPR Trikarya Waranugraha'),
(744,'600915','PT. BPR Tumpang Arthasarana'),
(745,'600916','PT. BPR Batara Wajo'),
(746,'600917','PT. BPR Dhana Lestari'),
(747,'600918','PT. BPR Surungan Nauli'),
(748,'600919','PT. BPR Centraldjaja Pratama'),
(749,'600920','KBPR Pancadana'),
(750,'600921','PT. BPR Semeru Swasti'),
(751,'600922','PT. BPR Dwi Cahaya Nusaperkasa'),
(752,'600924','PT. BPR Antar Parama'),
(753,'600925','PT. BPR Wisman Perkasa'),
(754,'600926','PT. BPR Depo Mitra Mandiri'),
(755,'600927','PT. BPR Sentral Arta Jaya'),
(756,'600929','PT. BPR Yuka Jaya'),
(757,'600930','PT. BPR Benua Kraksaan'),
(758,'600931','PT. BPR Angga Perkasa'),
(759,'600932','PT. BPR Arta Haksaprima'),
(760,'600933','PT. BPR Purwosari Anugerah'),
(761,'600934','PT. BPR Charis Utama'),
(762,'600935','PT. BPR Megakerta Swadiri'),
(763,'600936','PT. BPR Dinar Pusaka'),
(764,'600937','PT. BPR Masyarakat Mandiri'),
(765,'600938','PT. BPR Gema Nusa'),
(766,'600939','PT. BPR Sentral Arta Asia'),
(767,'600940','PT. BPR Sedulur Arthamakmur'),
(768,'600941','PT. BPR Sadhya Muktiparama'),
(769,'600942','KBPR Kalimasada'),
(770,'600943','PT BPR Utomo Widodo'),
(771,'600944','PT. BPR Anugerah Paktomas'),
(772,'600945','PT. BPR Bina Reksa Karyaartha'),
(773,'600946','PT. BD Dhaha Ekonomi'),
(774,'600947','PT. BP Dharma Raga'),
(775,'600948','PD. BPR Kabupaten Dati II Madiun'),
(776,'600949','PD BPR Bank Daerah Kab. Kediri'),
(777,'600950','PD. BP Pemda Kota Madiun'),
(778,'600951','KOP. BP Tunas Artha'),
(779,'600952','KOP. BP Wijaya Kusuma'),
(780,'600953','PT. BPR Artha Pamenang'),
(781,'600954','PT. BPR Nusamba Ngunut'),
(782,'600955','PT. BPR Nusamba Wlingi'),
(783,'600956','PT. BPR Sumberdhana Anda'),
(784,'600957','PT. BPR Artha Panggung Perkasa'),
(785,'600958','PT. BPR Ngunut Arta'),
(786,'600959','PT. BPR Bintang Tulungagung'),
(787,'600961','PT. BPR Ekadharma Bhina Raharja'),
(788,'600963','PT BPR Artha Samudera Indonesia'),
(789,'600964','KOP. BPR Babadan'),
(790,'600965','KOP. BPR Arta Kencana'),
(791,'600966','PT BPR Artha Nugraha'),
(792,'600967','PT. BPR Ambulu Dhanaartha'),
(793,'600968','PT. BPR Blambangan Makmur'),
(794,'600969','PT. BPR Cinde Wilis'),
(795,'600970','PT. BPR Jember Lestari'),
(796,'600971','PT. BPR Karunia Pakto'),
(797,'600972','PT. BPR Mahkota Reksaguna Artha'),
(798,'600973','PT. BPR Bappuri'),
(799,'600974','PT. BPR Rogojampi Artha Niaga'),
(800,'600975','PT. BPR Swadhanamas Pakto'),
(801,'600976','PT. BPR Wilis Putra Utama'),
(802,'600977','PT. BPR Nusamba Genteng'),
(803,'600978','PT. BPR Nusamba Rambipuji'),
(804,'600979','PT. BPR Rambi Artha Putra'),
(805,'600980','PT. BPR Tridana Kencana'),
(806,'600981','PT. BPR Tanggul Arto'),
(807,'600983','PT. BPR Gunung Modal Usaha'),
(808,'600984','PT. BPR Balung Artha Guna'),
(809,'600985','PT. BPR Bima Hayu Pratama'),
(810,'600986','PT. BPR Bintang Niaga'),
(811,'600987','PT. BPR Rini Bhaktinusa'),
(812,'600988','PT BPR Anugerahdharma Yuwana Jember'),
(813,'600989','PT. BPR Cahaya Artha Bali'),
(814,'600990','PT. BPR Wahyu Niramala d/h Candi Amertha'),
(815,'600991','KOP. BPR Surya Kencana'),
(816,'600992','KOP. BPR Eka Usaha'),
(817,'600993','KOP. BPR Tanggul Makmur'),
(818,'600994','PT. BPR Bukit Tanjung'),
(819,'600995','PT. BPR Dalung'),
(820,'600996','PT. BPR Sari Dananiaga'),
(821,'600997','PD. BPR Bank Buleleng Empat Lima'),
(822,'600998','PT. BPR Indra Candra d/h MAI BP Indra'),
(823,'600999','PD. BPR BP Kabupaten Bangli'),
(824,'601000','PT BPR Karya Artha Sejahtera Indonesia'),
(825,'601001','PT. BPR Kusuma Mandala'),
(826,'601002','PT. BPR Kertha Warga'),
(827,'601003','PT. BPR Amerta Sari'),
(828,'601004','PT. BPR Parasari'),
(829,'601005','PT. BPR Pasar Raya Kuta'),
(830,'601006','PT. BPR Pedungan'),
(831,'601007','PT. BPR Penebel'),
(832,'601008','PT. BPR Sangeh'),
(833,'601009','PT. BPR Bank Desa Sanur'),
(834,'601010','PT. BPR HARDYS MITRA INDONESIA'),
(835,'601011','PT. BPR Sari Sedana'),
(836,'601012','PT. BPR Sedana Murni'),
(837,'601013','PT. BPR Sedana Yasa'),
(838,'601014','PT. BPR Legian'),
(839,'601015','PT. BPR Tri Dharma Putri'),
(840,'601016','PT. BPR Merta Amarta d/h BP Trinadi'),
(841,'601017','PT. BPR Pasar Umum'),
(842,'601018','PT. BPR Pande Artha Dewata'),
(843,'601019','PD. BPR Werdhi Sedana'),
(844,'601020','PT. BPR Nusamba Kubutambahan'),
(845,'601021','PT. BPR Nusamba Manggis'),
(846,'601022','PT. BPR Nusamba Mengwi'),
(847,'601023','PT. BPR Nusamba Tegalalang'),
(848,'601024','PT. BPR Krisna Yuna Dana'),
(849,'601025','PT. BPR Pusaka'),
(850,'601026','PT. BPR Sadhu Artha'),
(851,'601028','PT. BPR Puskusa Balidwipa d/h Giri A'),
(852,'601029','PT. BPR Ayunulus'),
(853,'601030','PT. BPR Tata Anjungsari'),
(854,'601031','PT. BPR Widhi Prima Asih'),
(855,'601032','PT BPR Bunga Sutra Mas'),
(856,'601033','PT. BPR Tapa'),
(857,'601036','PT BPR Sandi Raya Utama'),
(858,'601037','PT. BPR Luhur Pucaksari'),
(859,'601038','PT. BPR Karya Sari Sedana'),
(860,'601039','PT. BPR Sari Werdhi Sedana'),
(861,'601040','PT. BPR Sari Wira Tama'),
(862,'601041','PT. BPR Sukawati Pancakanti'),
(863,'601042','PT. BPR Suadana'),
(864,'601043','PT. BPR Nur Abadi'),
(865,'601044','PT. BPR Sri Artha Lestari'),
(866,'601045','PT. BPR Maha Bhoga Marga'),
(867,'601046','PT BPR Sri Partha Bali'),
(868,'601047','PT. BPR Artha Bali Jaya'),
(869,'601048','PT. BPR Antenk'),
(870,'601049','PT. BPR Tish'),
(871,'601050','PT. BPR Ashi'),
(872,'601051','PT. BPR Sinar Kuta'),
(873,'601052','PT. BPR Jaya Kerti'),
(874,'601053','PT. BPR Bali Sinar Menara'),
(875,'601054','PT. BPR Bali Dewata d/h Trilaksana Dharm'),
(876,'601055','PT. BPR Mambal'),
(877,'601056','PT. BPR Saraswati Ekabumi'),
(878,'601057','PT. BPR Artha Adyamurthi'),
(879,'601058','PT. BPR Sewu Bali'),
(880,'601060','PT. BPR Restu Dewata'),
(881,'601061','PT. BPR Adi Sedana Ayu'),
(882,'601062','PT. BPR Prima Dewata'),
(883,'601063','PT. BPR Prisma Bali d/h Dhanijaya Bumiar'),
(884,'601064','PT. BPR Bumi Prima Dana'),
(885,'601065','PT. BPR Artha Rengganis'),
(886,'601066','PT. BPR Kintamani Perdana'),
(887,'601067','PT. BPR Sinar Kuta Mulia'),
(888,'601068','PT. BPR Dharmawarga Utama'),
(889,'601069','PT BPR Calliste Bestari'),
(890,'601070','PT. BPR Jero Anom'),
(891,'601071','PT. BPR Cahaya Bina Putra'),
(892,'601072','PT. BPR Kita Centradana'),
(893,'601073','PT. BPR Sinar Puteramas'),
(894,'601074','PT. BPR Siwi Sedana'),
(895,'601075','PT. BPR Segara Anak Kencana'),
(896,'601076','PT. BPR Samas'),
(897,'601077','PT. BPR Sari Dinarkencana'),
(898,'601078','PT. BPR Ramot Ganda'),
(899,'601079','PT. BPR Wiranadi'),
(900,'601080','PT. BPR Danayasa'),
(901,'601081','PT. BPR Tanjung Abdi Swadaya'),
(902,'601082','PT. BPR Luhur Damai'),
(903,'601083','PT. BPR Porsea Jaya'),
(904,'601085','PT. BPR Dana Ganda'),
(905,'601086','PT. BPR Toelangan Dasa Nusantara'),
(906,'601087','PT BPR Surya Arthaguna Abadi'),
(907,'601088','PT BPR Surya Artha Guna Mandiri'),
(908,'601089','PT. BPR Wlingi Pahala Pakto'),
(909,'601091','KOP. BPR Sejahtera'),
(910,'601093','PT. BPR Sabee Meusampee'),
(911,'601094','PT. BPR Karya Parhuta'),
(912,'601095','KOP. BPR Hasta Krida Jaya'),
(913,'601096','PT BPR Mulyo Raharjo'),
(914,'601097','PT BPR Tunas Artha Jaya Abadi'),
(915,'601098','PT. BPR Kertosono Saranaartha'),
(916,'601099','PT. BPR Arindomegah Abadi'),
(917,'601100','PT. BPR Sukasada'),
(918,'601101','PT BPR Rukun Karya Sari'),
(919,'601102','KOP. BPR Bumi Arta'),
(920,'601103','PT BPR Bumi Jaya'),
(921,'601104','PT. BPR Vita Jasaguna'),
(922,'601105','PT. BPR Mojosari Pahalapakto'),
(923,'601106','PT. BPR Multi Arthanusa'),
(924,'601107','PT. BPR Tjoekir Dasa Nusantara'),
(925,'601108','PT. BPR Aji Caka'),
(926,'601109','PT. BPR Eka Bumi Artha'),
(927,'601110','PD BPR BP Kota Bandar Lampung'),
(928,'601111','PT. BPR Swadaya Anugerah Utama'),
(929,'601112','PT. BPR Dana Master Bahtera'),
(930,'601114','PT. BPR Bungamayang Agroloka'),
(931,'601115','PT BPR Dwiartha Sagriya'),
(932,'601116','PT. BPR Cinta Manis Agroloka'),
(933,'601117','PT. BPR Agritans Batumarta'),
(934,'601118','PT. BPR Dana Nusantara'),
(935,'601119','PT. BPR Batanghari'),
(936,'601120','PT. BPR Tulus Dadi'),
(937,'601121','PD. BP Kota Pontianak'),
(938,'601122','PT. BPR Lokadana Sentosa'),
(939,'601123','PT. BPR Mitratama Arthabuana'),
(940,'601124','PT. BPR Ingertad'),
(941,'601125','PT. BPR Dhanarta Dwiprima'),
(942,'601126','PT. BPR Centradana Kapuas'),
(943,'601127','PT. BPR Bayudhana'),
(944,'601128','PT. BPR Parasari Sibang'),
(945,'601129','PT. BPR Saudara Kita d/h Pantura Jawa Ba'),
(946,'601130','PT. BP Ronggolawe'),
(947,'601131','PT. BPR Mangatur Ganda'),
(948,'601132','PT. BPR Toeloengredjo Dasa Nusantara'),
(949,'601133','PT. BPR Artatama Sejahtera'),
(950,'601134','PT. BPR Tanah Bandar'),
(951,'601135','PT. BPR Bumi Hayu'),
(952,'601136','PT. BPR Bhapertim Persada'),
(953,'601137','PT. BPR Taman Artha Kencana'),
(954,'601139','KOP Bank Pegawai Pensiunan Indonesia'),
(955,'601140','PT. BPR Maesa Waya'),
(956,'601141','PT. BPR Amurang Utama'),
(957,'601142','PT BPR Millenia'),
(958,'601143','PT. BPR Mitrabina Arthamakmur'),
(959,'601144','PT. BPR Pinang Artha'),
(960,'601145','PT. BPR Ciledug Dhana Semesta'),
(961,'601146','KOP. BP Abang Pasar'),
(962,'601147','PT. BPR Agrimakmur Lestari'),
(963,'601148','PD. BP Kota Tk. II Ujung Pandang'),
(964,'601149','PT. BPR Taruna Jujur Sakti'),
(965,'601151','PT BPR LPN Taeh Baruh'),
(966,'601152','PT BPR LPN Padang Kuning'),
(967,'601153','PT BPR Labuh Gunung'),
(968,'601154','PT BPR Central Micro'),
(969,'601155','PT BPR MITRA USAHA MUARO PAITI'),
(970,'601157','PT. BPR Rangkiang Denai'),
(971,'601158','PT. BPR Modern Express'),
(972,'601159','BPR LPN Batang Palangki'),
(973,'601161','BPR LPN Pasar Baru Durian'),
(974,'601162','BPR LPN Kubang'),
(975,'601163','PT BPR LPN Talawi Sakato'),
(976,'601164','PT BPR LPN Sungai Rumbai'),
(977,'601165','PT BPR LPN Tarantang'),
(978,'601166','BPR LPN Kampung Dalam'),
(979,'601167','PT. BPR Dharma Nagari'),
(980,'601168','PT. BPR Sungai Puar'),
(981,'601169','PT BPR LPN Panampung'),
(982,'601170','PT. BPR Padang Tarab'),
(983,'601171','PT. BPR Rangkiang Aur (Kamang Mudik)'),
(984,'601172','BPR LPN Magek'),
(985,'601173','PT BPR Raga Dana Sejahtera'),
(986,'601174','PT BPR Mutiara Pesisir'),
(987,'601175','PT. BPR Gebu Harapan (Bayur)'),
(988,'601176','PT. BPR Pembangunan Nagari (Manggopoh)'),
(989,'601177','PT. BPR Cempaka Wadah Sejahtera'),
(990,'601178','PT. BPR Mandar'),
(991,'601180','PT. BPR Surya Katialo'),
(992,'601181','PT. BPR Piala Makmur'),
(993,'601183','PT. BPR Rangkiang Nagari'),
(994,'601185','PT BPR Solok Sakato'),
(995,'601186','PT BPR Lugas Dana Mandiri'),
(996,'601187','BPR LPN Saning Bakar'),
(997,'601188','PT BPR Solok Selatan'),
(998,'601189','PT BPR Sarantau Sasurambi'),
(999,'601190','BPR LPN Pekan Rabaa'),
(1000,'601191','PT BPR Gonjong Limo'),
(1001,'601192','PT BPR X Koto Singkarak'),
(1002,'601193','PT BPR Prima Mulia Anugrah'),
(1003,'601194','PT. BPR Lubuk Raya Mandiri'),
(1004,'601197','PT BPR Gudam'),
(1005,'601198','PT BPR Batang Selo'),
(1006,'601199','BPR LPN Balerong Bunta'),
(1007,'601200','BPR LPN Pandai Sikek'),
(1008,'601201','PT BPR Luhak Nan Tuo'),
(1009,'601202','PT. BPR Batipuh'),
(1010,'601203','PT BPR Malibu'),
(1011,'601204','PT BPR Cahaya Intan Mandiri'),
(1012,'601205','PT BPR LPN Padang Magek'),
(1013,'601206','BPR LPN Andalas Baruh Bukit'),
(1014,'601207','PT BPR Pagaruyung'),
(1015,'601208','PT BPR Swadaya Anak Nagari'),
(1016,'601210','PT BPR Sembilan Mutiara'),
(1017,'601211','PT. BPR Khatulistiwa Bonjol'),
(1018,'601212','BPR LPN Kampung Manggis'),
(1019,'601213','PT BPR Baringin Padang Panjang Sakato'),
(1020,'601217','PT. BPR Koto Dalam'),
(1021,'601218','PT BPR Jorong Kampung Tangah'),
(1022,'601219','PT BPR LA Mangau Sejahtera'),
(1023,'601220','PT. BPR Ganto Nagari 1954'),
(1024,'601221','PT BPR Nagari Kasang'),
(1025,'601222','PT BPR Cempaka Mitra Nagari'),
(1026,'601223','BPR LPN Tapan'),
(1027,'601224','PT BPR LPN Batang Tarusan'),
(1028,'601225','PT. BPR Batang Kapas'),
(1029,'601226','PT BPR Guguk Mas Makmur'),
(1030,'601228','PT BPR Muaro Bodi'),
(1031,'601229','PT. BPR Bukit Cati Pematang Panjang'),
(1032,'601230','PT BPR Sijunjung'),
(1033,'601231','PT. BPR Jayamora Krida'),
(1034,'601232','PT. BPR Setia Natapala'),
(1035,'601233','PT. BPR Naribi Perkasa'),
(1036,'601234','PT. BPR Artha Makmur Lestari'),
(1037,'601235','PT. BPR Talabumi Ekapersada'),
(1038,'601237','PT. BPR Pinasungkulan'),
(1039,'601238','PT. BPR Cileungsi Krida Sejahtera'),
(1040,'601239','PT BPR Nasional Nusantara'),
(1041,'601240','PT. BPR Nusantara Bona Pasogit 2'),
(1042,'601241','PT. BPR Danaberkah Lestari'),
(1043,'601243','PT. BPR Niaga Mandiri'),
(1044,'601244','PT. BPR Polin Jaya'),
(1045,'601245','PT. BPR Artha Bersama'),
(1046,'601246','PT. BPR Karunia'),
(1047,'601247','PT. BPR Swadana Tridharma'),
(1048,'601248','PT. BPR Tutur Ganda'),
(1049,'601249','PT. BPR Sukma Kemang Agung'),
(1050,'601252','PT. BPR Citra Bersada Abadi'),
(1051,'601254','PT. BPR Gede Artaguna'),
(1052,'601255','PT. BPR Genades Putranindo'),
(1053,'601256','PT. BPR Bantoru Perintis'),
(1054,'601257','PT. BPR Prabu Mitra'),
(1055,'601258','PT. BPR Difobutama'),
(1056,'601259','PT BPR Fidusia Civitas'),
(1057,'601260','PT. BPR Sarana Utama Multidana'),
(1058,'601261','PT. BPR Pularta Mandiri'),
(1059,'601262','PT. BPR Dana Lestari'),
(1060,'601263','PT. BPR Danasari Persada'),
(1061,'601264','PT. BPR Arthamutiara Permai'),
(1062,'601265','PT. BPR Cahaya Arthasejati'),
(1063,'601266','PT. BPR Mutiara Jaya Sukses'),
(1064,'601267','PT. BPR Markoni Saranajaya'),
(1065,'601268','PT. BPR Tata Asia'),
(1066,'601269','PT. BPR Mitra Karya'),
(1067,'601270','PT. BPR Artharindo'),
(1068,'601271','PT. BPR Karinamas Permai'),
(1069,'601272','PT. BPR Aditama Arta'),
(1070,'601274','PT. BPR Usaha Rakyat'),
(1071,'601275','PT. BPR Kranji Krida Sejahtera'),
(1072,'601276','PT. BPR Bangun Mitra Wadas'),
(1073,'601277','PT. BPR Timika Dinamika Sarana'),
(1074,'601278','PT. BPR Sekar'),
(1075,'601279','PT. BPR Darmawan Adhiguna Lestari'),
(1076,'601280','PT BPR Nusantara Bona Pasogit 12'),
(1077,'601281','PT. BPR Alsaba Prima'),
(1078,'601283','PT. BPR Cakra Danarta'),
(1079,'601284','PT BPR Artha Mitra Kencana'),
(1080,'601285','PT. BPR Central Artha Rezeki'),
(1081,'601286','PT. BPR Datagita Mustika'),
(1082,'601287','PT. BPR Tricipta Mandiri'),
(1083,'601288','PT. BPR Sumber Pangasean'),
(1084,'601289','PT BPR Bahtera Masyarakat Papua'),
(1085,'601290','PT BPR Mitra Sejahtera Lestari'),
(1086,'601291','PT. BPR Arta Jakarta'),
(1087,'601292','PT. BPR Hosing Jaya'),
(1088,'601293','PT. BPR Kreo Lestari'),
(1089,'601294','PT. BPR Trisurya Binaartha'),
(1090,'601295','PT BPR Vinski Mukti Arta'),
(1091,'601296','PT BPR Mitra Daya Mandiri'),
(1092,'601298','PT. BPR Bina Dian Citra'),
(1093,'601299','PT. BPR Artadamas Mandiri'),
(1094,'601300','PT. BPR Rifi Maligi'),
(1095,'601301','PT. BPR Sehat Sejahtera'),
(1096,'601302','PT BPR Gamon'),
(1097,'601303','PT BPR Surya Kencana'),
(1098,'601305','PT. BPR Berfasi Raharja'),
(1099,'601306','PT. BPR Bekasi Binatanjung Makmur'),
(1100,'601307','PT. BPR Cibitung Tanjungraya'),
(1101,'601308','PT. BPR Varia Central Artha'),
(1102,'601309','PT. BPR Arta Pundi Mekar'),
(1103,'601310','PT. BPR Duta Pakuan Mandiri'),
(1104,'601311','PT. BPR Sumber Lumbanmual'),
(1105,'601312','PT. BPR Bumidhana Adigraha'),
(1106,'601314','PT. BPR Arthakelola Cahayatama'),
(1107,'601315','PT. BPR Prismaberlian Danarta'),
(1108,'601316','PT. BPR Dian Faraqo Gemilang'),
(1109,'601317','PT. BPR Bintara Pratama Sejahtera'),
(1110,'601319','PT. BPR Gracia Mandiri'),
(1111,'601320','PT. BPR Sinar Mitra Sejahtera'),
(1112,'601321','PT. BPR Sumber Artha Rahayu'),
(1113,'601322','PT. BPR Laksana Binacilegon'),
(1114,'601323','PT. BPR Laksana Binacimanggis'),
(1115,'601325','PT. BPR Laksana Lestari Serpong'),
(1116,'601326','PT. BPR Artha Niaga Finatama'),
(1117,'601328','PT. BPR Bumi Pendawa Raharja'),
(1118,'601329','PT. BPR Nata Citraperdana'),
(1119,'601330','PT. BPR Universal Karya Mandiri Puncak'),
(1120,'601331','PT. BPR Pamanukan Bangunarta'),
(1121,'601332','PT. BPR Artha Gandita'),
(1122,'601333','PT. BPR Kertamulia'),
(1123,'601335','PT. BPR Bumi Bandung Kencana'),
(1124,'601336','PT. BPR Pangandaran'),
(1125,'601337','PT. BPR Pola Dana'),
(1126,'601338','PT. BPR Dipon Sejahtera'),
(1127,'601339','PT. BPR Mustika Permai'),
(1128,'601340','PT. BPR Permata Dhanawira'),
(1129,'601341','PT. BPR Dhanagung Karang Ampel'),
(1130,'601342','PT BPR Nusantara Bona Pasogit 11'),
(1131,'601343','PT. BPR Mangun Pundiyasa'),
(1132,'601345','PT. BPR Bahtera Masyarakat Jabar'),
(1133,'601346','PT. BPR Emasnusantara Sentosa'),
(1134,'601347','PT. BPR Lexi Pratama Mandiri d/h Pradipt'),
(1135,'601348','PT BPR Sahabat Sejati'),
(1136,'601349','PT. BPR Sahat Sentosa'),
(1137,'601350','PT BPR Mitra Parahyangan'),
(1138,'601351','PT BPR Mulia Yuganta Indonesia'),
(1139,'601352','PT. BPR Banjar Arthasariguna'),
(1140,'601353','PT. BPR Mekar Adidana'),
(1141,'601354','PT. BPR Sarikusuma Surya'),
(1142,'601356','PT. BPR Mitra Kanaka Santosa'),
(1143,'601357','PT BPR Nusa'),
(1144,'601358','PT. BPR Jujur Arghadana'),
(1145,'601359','PT. BPR Supra Artapersada'),
(1146,'601360','PT. BPR Arthia Sere'),
(1147,'601361','PT. BPR Duta Pasundan'),
(1148,'601362','PT. BPR Lambang Ganda'),
(1149,'601363','PT. BPR Pundi Kencana Makmur'),
(1150,'601364','PT BPR Mitra Kopjaya Mandiri'),
(1151,'601365','PT. BPR Sumber Sibapudung'),
(1152,'601366','PT. BPR Bandung Kidul'),
(1153,'601367','PT. BPR Mranggen Mitrapersada'),
(1154,'601368','PT. BPR Setia Karib Abadi'),
(1155,'601371','PT. BPR Buana Artha Lestari'),
(1156,'601372','PT. BPR Kartasura Makmur'),
(1157,'601373','PT. BPR Artajaya Bhaktimulia'),
(1158,'601374','PT. BPR Surya Y.kencana'),
(1159,'601375','PD. BPR Artha Perwira'),
(1160,'601376','PT. BPR Delta Sidoarjo'),
(1161,'601378','PT. BPR Sabar Artha Prima'),
(1162,'601380','PT. BPR Berlian Bumi Arta'),
(1163,'601383','PT. BPR Arta Agung'),
(1164,'601384','PT. BPR Hidup Artha Putra'),
(1165,'601385','PT. BPR Mekar Nugraha Klepu'),
(1166,'601386','PT. BPR Artha Parama'),
(1167,'601387','PT BPR Dana Berkah Pusakatama'),
(1168,'601388','PT. BPR Artha Kramat'),
(1169,'601389','PT. BPR Lawu Artha'),
(1170,'601390','PT. BPR Kartadhani Mulya'),
(1171,'601396','PT BPR Satya Artha'),
(1172,'601397','PT. BPR Jateng'),
(1173,'601399','PT. BPR Danamitra Sejahtera'),
(1174,'601400','PT. BPR Tirta Danarta'),
(1175,'601401','PT. BPR Bumiayu Bangun Citra'),
(1176,'601404','PT. BPR Kartasura Saribumi'),
(1177,'601408','PT. BPR Sindu Adi'),
(1178,'601410','PD BPR Bank Purwa Artha'),
(1179,'601411','PT. BPR Dananta'),
(1180,'601412','PT. BPR Arthayasa Ageng'),
(1181,'601414','PT. BPR Gondangrejo'),
(1182,'601415','PT. BPR Bina Arta Swadaya Yogyakarta'),
(1183,'601416','PT. BPR Tawangmangu Jaya'),
(1184,'601417','PT. BPR Danarakyat Sentosa'),
(1185,'601418','PT BPR Mitra Pandanaran Mandiri'),
(1186,'601419','PT. BPR Gamping Artha Raya'),
(1187,'601420','PT BPR Mitra Budikusuma Mandiri'),
(1188,'601421','PT BPR Hartasarana'),
(1189,'601423','PT. BPR Karticentra Artha'),
(1190,'601424','PT. BPR Grogol Joyo'),
(1191,'601425','PD. BPR Giri Suka Dana'),
(1192,'601426','PT. BPR Mlati Pundi Artha'),
(1193,'601427','PT. BPR Sinar Garuda'),
(1194,'601429','PT. BPR Mitra'),
(1195,'601430','PT. BPR Yekti Insan Sembada'),
(1196,'601431','PT BPR ALTO MAKMUR'),
(1197,'601432','PT. BPR Eleska Artha'),
(1198,'601433','PT. BPR Arta Yogyakarta'),
(1199,'601435','PT. BPR Artha Mlatiindah'),
(1200,'601436','PT. BPR Danamas Prima'),
(1201,'601439','PT. BPR Antar Rumeksa Arta'),
(1202,'601440','PD. BPR Djoko Tingkir'),
(1203,'601441','PT BPR Mitra Pati Mandiri'),
(1204,'601442','PT. BPR Arismentari Ayu'),
(1205,'601444','PT. BPR Jatibarang Sediaguna'),
(1206,'601445','PT. BPR Artha Mutiara'),
(1207,'601446','PT. BPR Dhana Adiwerna'),
(1208,'601447','PT. BPR Ambarketawang Persada'),
(1209,'601449','PT. BPR Mitra Gema Mandiri'),
(1210,'601450','PT. BPR Trihasta Prasodjo'),
(1211,'601451','PT. BPR Artha Sambhara'),
(1212,'601452','PT. BPR Kartikaartha Kencanajaya'),
(1213,'601454','PT. BPR Taruna Adidaya Santosa'),
(1214,'601455','PT. BPR Hartha Muriatama'),
(1215,'601456','PT BPR Mitra Banaran Mandiri'),
(1216,'601457','PT. BPR Sukadyarindang'),
(1217,'601458','PT. BPR Asabahana Sejahtera'),
(1218,'601459','PT. BPR Restu Klepu Makmur'),
(1219,'601460','PT. BPR Juwana Arthasurya'),
(1220,'601461','PT. BPR Kandimadu Arta'),
(1221,'601462','PT. BPR Shinta Bhakti Wedi'),
(1222,'601463','PT. BPR Kroya Bangunartha'),
(1223,'601464','PT. BPR Wira Ardana Sejahtera'),
(1224,'601465','PT. BPR Citra Artha Sedana'),
(1225,'601466','PT. BPR Arthaguna Sejahtera'),
(1226,'601467','PT. BPR Daya Perdana Nusantara'),
(1227,'601468','PT. BPR Hitamajaya Argamandiri'),
(1228,'601469','PT. BPR Soka Panca Artha'),
(1229,'601470','PT. BPR Sinararta Sejahtera'),
(1230,'601471','PT. BPR Dhana Mitratama'),
(1231,'601472','PT BPR Arthapuspa Mega'),
(1232,'601473','PT BPR Sinar Baru Perkasa'),
(1233,'601474','PT. BPR Gunung Mas'),
(1234,'601478','PD. BPR BKK Muntilan'),
(1235,'601479','PD. BPR BKK Blora'),
(1236,'601481','PD. BPR BKK Jepara Kota'),
(1237,'601497','PD. BPR BKK Lasem'),
(1238,'601505','PD. BPR BKK Kudus'),
(1239,'601507','PD. BPR BKK Pati'),
(1240,'601519','PD. BPR BKK Purwodadi'),
(1241,'601533','PD. BPR BKK Kendal'),
(1242,'601534','PD. BPR BKK Ungaran'),
(1243,'601541','PD. BPR BKK Demak'),
(1244,'601542','PT. BPR Persada Ganda'),
(1245,'601543','PT. BPR Enggal Makmur Adi Santoso'),
(1246,'601544','PT. BPR Sinarguna Sejahtera'),
(1247,'601545','PT. BPR Sami Makmur d/h Pajang Raya'),
(1248,'601546','PT. BPR Padat Ganda'),
(1249,'601547','PT. BPR Sahabat Sedati'),
(1250,'601548','PD. BPR BKK Kota Pekalongan'),
(1251,'601552','PD. BPR BKK Kabupaten Pekalongan'),
(1252,'601562','PD. BPR BKK Batang'),
(1253,'601563','PD BPR BKK Kota Tegal'),
(1254,'601564','PD BPR BKK Kab. Tegal'),
(1255,'601570','PD. BPR BKK Taman'),
(1256,'601576','PD. BPR BKK Wonogiri'),
(1257,'601578','PD. BPR BKK Karangmalang'),
(1258,'601591','PD. BPR BKK Tasikmadu'),
(1259,'601595','PD BPR BKK Boyolali'),
(1260,'601610','PD. BPR BKK Mandiraja'),
(1261,'601627','PD. BPR BKK Purbalingga'),
(1262,'601628','PD BPR BKK Cilacap'),
(1263,'601666','PT. BPR Panji Aronta'),
(1264,'601667','PT. BPR Mojoagung Pahalapakto'),
(1265,'601668','PT. BPR Manuk Ayu'),
(1266,'601669','PT. BPR Anglomas Indah'),
(1267,'601670','PT. BPR Babat Lestari'),
(1268,'601671','PT BPR Dana Raya Jawa Timur'),
(1269,'601672','PT. BPR Ragasurya Nuansa'),
(1270,'601673','PT. BPR Mentari Terang'),
(1271,'601674','PT. BPR Sinar Wuluhan Artha'),
(1272,'601675','PT. BPR Tanggul Mitra Karya'),
(1273,'601676','PT. BPR Kalisat Arthawira'),
(1274,'601677','PT. BPR Bangil Adyatama'),
(1275,'601678','PT. BPR Dirgadhana Arthamas'),
(1276,'601679','PT. BPR Aneka Dana Sejahtera'),
(1277,'601680','PT. BPR Porong Idaman'),
(1278,'601682','PT. BPR Restudhana Citrasejahtera'),
(1279,'601683','PT. BPR Lumbung Artha Muntilanindo'),
(1280,'601685','PT. BPR Sungkunandhana'),
(1281,'601686','PT. BPR Ihuthan Ganda'),
(1282,'601687','PT. BPR Rejeki Datang'),
(1283,'601688','PT. BPR Ulintha Ganda'),
(1284,'601689','PT. BPR Artha Asri Mulia'),
(1285,'601690','PT. BPR Bagong Inti Marga'),
(1286,'601691','PT. BPR Krian Wijaya'),
(1287,'601692','PT. BPR Arthatama Caruban'),
(1288,'601693','PT. BPR Sapadhana'),
(1289,'601694','PT. BPR Hartaraya Ciptamulia'),
(1290,'601695','PT. BPR Arta Seruni Surabaya'),
(1291,'601696','PT BPR Harta Swadiri'),
(1292,'601697','PT. BPR Rajekwesi'),
(1293,'601698','PT. BPR Nagajayaraya Sentra Sentosa'),
(1294,'601699','PT. BPR Nur Semesta Indah'),
(1295,'601700','PT. BPR Surya Abadi Bersaudara'),
(1296,'601701','PT. BPR Delta Bojonegoro'),
(1297,'601702','PT. BPR Delta Gresik'),
(1298,'601703','PT. BPR Artha Tuban Kencana'),
(1299,'601704','PT. BPR Kridadhana Citranusa'),
(1300,'601705','KBPR Amanah'),
(1301,'601706','PT. BPR Kharisma Kusuma Lawang'),
(1302,'601707','PT. BPR Kraton Suropati'),
(1303,'601708','PT. BPR Wutama Artha Sejahtera'),
(1304,'601709','PT. BPR Delta Singosari'),
(1305,'601710','PT. BPR Delta Artha Kencana'),
(1306,'601711','PT. BPR Delta Malang'),
(1307,'601712','PT BPR Anugerahdharma Yuwana Bondowoso'),
(1308,'601713','PT. BPR Delta Artha Panggung Situbondo'),
(1309,'601714','PT. BPR Delta Artha Panggung Banyuwangi'),
(1310,'601716','PT. BPR Delta Lamongan'),
(1311,'601717','PT. BPR Agro Cipta Adiguna'),
(1312,'601718','PT. BPR Kebomas'),
(1313,'601719','PT. BPR Intan Nasional'),
(1314,'601720','PT. BPR Sentra Dana Makmur'),
(1315,'601721','PT BPR Anugerahdharma Yuwana Banyuwangi'),
(1316,'601722','PT. BPR Mandiri Adiatra'),
(1317,'601723','PT. BPR Terusan Jaya'),
(1318,'601724','PT. BPR Arta Bangsal Utama'),
(1319,'601725','PT. BPR Mitra Dhanaceswara'),
(1320,'601726','PT. BPR Nusapanida Pandaan'),
(1321,'601727','PT. BPR Bangil Idaman'),
(1322,'601728','PT. BPR Artha Rahayu'),
(1323,'601731','PT. BPR Djojo Mandiri Raya'),
(1324,'601732','PT. BPR Karya Perdana Sejahtera'),
(1325,'601733','PT. BPR Puridana Artamas'),
(1326,'601734','PT. BPR Dharmasurya Aditika'),
(1327,'601735','PT. BPR Caruban Indah'),
(1328,'601736','KOP. BPR Semanding'),
(1329,'601737','PT. BPR Permata Arta Surya'),
(1330,'601738','PT BPR Buana Citra Sejahtera'),
(1331,'601739','PT. BPR Bandung Adiartha'),
(1332,'601740','PT. BPR Insumo Sumberarto'),
(1333,'601741','PT. BPR Artha Dharma'),
(1334,'601742','KOP. BPR Takeran'),
(1335,'601743','PT. BPR Tanjung Tani'),
(1336,'601744','PT. BPR Artha Wiwaha Arjuna'),
(1337,'601745','PT. BPR Mahkota Mitrausaha'),
(1338,'601746','PT. BPR Tanah Kondang'),
(1339,'601747','PT BPR Artha Mandiri Sejahtera'),
(1340,'601748','PT. BPR Tripakarti Dhanatama'),
(1341,'601749','KOP. BPR Tawang Alun'),
(1342,'601750','PT BPR Andalan Daerah'),
(1343,'601751','PT. BPR Wahana Dhana Batu'),
(1344,'601752','PT. BPR Candisaka Arta'),
(1345,'601754','PT. BPR Mitra Majujaya Mandiri'),
(1346,'601755','PT. BPR Mitra Cemawis Mandiri'),
(1347,'601756','PT. BPR Puspa Kencana'),
(1348,'601757','PT. BPR Arthamulya Bumimukti'),
(1349,'601758','PT. BPR Buduran Delta Purnama'),
(1350,'601759','PT. BPR Bumi Gora Jaya'),
(1351,'601760','PT. BPR Puriseger Sentosa'),
(1352,'601761','PT. BPR Delta Artha'),
(1353,'601762','PT. BPR Sedayadhana Makmur'),
(1354,'601763','PT. BPR Citra Halim Perdana'),
(1355,'601764','PT. BPR Mitra Agung Mandiri'),
(1356,'601765','PT. BPR Bumidinar Kencana'),
(1357,'601766','PD. BPR BANK DAERAH TULUNGAGUNG'),
(1358,'601767','PT BPR Mitra Catur Mandiri'),
(1359,'601769','PT. BPR Anugerah Kusuma Singosari'),
(1360,'601771','PT. BPR Indodana Hargotama'),
(1361,'601772','PT. BPR Kimisanda'),
(1362,'601773','PT. BPR Manuk Wari'),
(1363,'601774','PT. BPR Manuk Walet'),
(1364,'601775','PT. BPR Pujon Jayamakmur'),
(1365,'601776','PT. BPR Kratonprima Abadi'),
(1366,'601777','PT. BPR Bekonang Sukoharjo'),
(1367,'601778','PT BPR Bangkit Prima Sejahtera'),
(1368,'601779','PT. BPR Adiartha Reksacitra'),
(1369,'601780','PT. BPR Sukorejo Makmur'),
(1370,'601781','PT. BPR Mulya Sri Rejeki'),
(1371,'601782','PT. BPR Purwoharjo Lestari'),
(1372,'601783','PT. BPR Mitra Jaya Mandiri'),
(1373,'601784','PT. BPR Sukowono Arthajaya'),
(1374,'601785','PT. BPR Pareartorejo'),
(1375,'601786','PT. BPR Batuartorejo'),
(1376,'601787','PT. BPR Artha Ponorogo'),
(1377,'601788','PT. BPR Wiradhana Putramas'),
(1378,'601789','PT. BPR Artha Mitra Usaha'),
(1379,'601791','PT. BPR Sentral Investasi d/h Gerbang Pr'),
(1380,'601792','PT. BPR Anugerah Artasentosa Prima'),
(1381,'601793','PT. BPR Harapan Saudara'),
(1382,'601794','PT. BPR Mitra Ekonomi Andalas'),
(1383,'601795','PT. BPR Bina Usaha dana'),
(1384,'601796','PT. BPR Karpana Tasia'),
(1385,'601797','PT. BPR Harapganda'),
(1386,'601798','PT BPR Nusantara Bona Pasogit 26'),
(1387,'601800','PT. BPR Rama Ganda'),
(1388,'601803','PT. BPR Makmur Artha Sedaya'),
(1389,'601805','PT. BPR Danatama Indonesia'),
(1390,'601806','PT BPR Nusantara Bona Pasogit 14'),
(1391,'601807','PT BPR Nature Primadana Capital'),
(1392,'601808','PT BPR Kencana'),
(1393,'601809','PT. BPR Efita Dana Sejahtera'),
(1394,'601810','PT. BPR Nusumma Singaparna'),
(1395,'601812','PT. BPR Dewangga Bali Artha'),
(1396,'601813','PT. BPR Bank Kertiawan d/h Ubudmas Dharm'),
(1397,'601814','PT. BPR Sentral Ekonomi Nusantara'),
(1398,'601815','PT. BPR Santi Pala'),
(1399,'601816','PT. BPR Mayun Utama Perdana'),
(1400,'601817','PT. BPR Suryajaya Ubud'),
(1401,'601818','PT. BPR Picu Manunggal Sejahtera'),
(1402,'601819','PT. BPR Dinar Jagad'),
(1403,'601820','PT. BPR Ulatidana Rahayu'),
(1404,'601821','PT. BPR Mertha Sedana'),
(1405,'601822','PT. BPR Padma'),
(1406,'601823','PT. BPR Gisawa'),
(1407,'601825','PT. BPR Suryajaya Kubutambahan'),
(1408,'601826','PT. BPR Permata Sedana'),
(1409,'601827','PT. BPR Urip Kalantas'),
(1410,'601828','PT. BPR Cahaya Binawerdi'),
(1411,'601829','PT. BPR Saptacristy Utama'),
(1412,'601830','PT BPR Naga'),
(1413,'601831','PT. BPR Danamaster Dewata'),
(1414,'601832','PT. BPR Baskara Dewata'),
(1415,'601833','PT. BPR Dana Master Surya'),
(1416,'601834','PT. BPR Suar Artha Dharma d/h Campuan'),
(1417,'601835','PT. BPR Mas Giri Wangi d/h Budidaya Seda'),
(1418,'601836','PT BPR KS Bali Agung Sedana'),
(1419,'601837','PT. BPR Adiartha Udiana'),
(1420,'601838','PT. BPR Siaga Dana Kuta'),
(1421,'601839','PT. BPR Dewata Indobank'),
(1422,'601840','PT. BPR Nusapanida Kuta'),
(1423,'601841','PT. BPR Hari Depan'),
(1424,'601842','PT. BPR Bali Artha Anugrah'),
(1425,'601843','PT. BPR Khrisna Darma Adipala'),
(1426,'601844','PT. BPR Bali Dananiaga'),
(1427,'601845','PT. BPR Aruna Nirmaladuta'),
(1428,'601846','PT. BPR Varis Mandiri'),
(1429,'601847','PT. BPR Artha Budaya'),
(1430,'601848','PT. BPR Partha Kencana Tohpati'),
(1431,'601849','PT. BPR Gianyar Parthasedana'),
(1432,'601850','PT. BPR Hoki'),
(1433,'601851','PT BPR Mitra Bali Srisedana Mandiri'),
(1434,'601852','PT. BPR Mitra Bali Artha Mandiri'),
(1435,'601853','PT. BPR Mitra Bali Jaya Mandiri'),
(1436,'601854','PT. BPR Mitra Bali Mandiri'),
(1437,'601855','PT. BPR Kusemas Dana Mandiri'),
(1438,'601856','PT. BPR Angsa Sedanayoga'),
(1439,'601857','PT. BPR Kanaya'),
(1440,'601858','PT BPR Mitra Bali Muktijaya Mandiri'),
(1441,'601859','PT. BPR Kita'),
(1442,'601860','PT. BPR Balaguna Perasta'),
(1443,'601861','PT. BPR Mulia Wacana'),
(1444,'601862','PT. BD Sarpana Dhana'),
(1445,'601863','PT. BPR Raga Jayatama'),
(1446,'601864','PT. BPR Dewata Candradana'),
(1447,'601865','PT. BPR Eka Ayu Artha Bhuwana'),
(1448,'601866','PT. BPR Sari Jaya Sedana d/h Acuta Jaya'),
(1449,'601867','PT. BPR Narpada Nusa'),
(1450,'601868','PT. BPR Abdi Warga Mulia'),
(1451,'601869','PT. BPR Phidectama Sentani'),
(1452,'601870','PT. BPR Terabina Seraya Mulia'),
(1453,'601871','PT. BPR Jati Lestari'),
(1454,'601872','PT BPR Nusantara Bona Pasogit 20'),
(1455,'601873','PT.BPR Nusantara Bona Pasogit 18'),
(1456,'601874','PT. BPR Nusantara Bona Pasogit 15'),
(1457,'601875','PT. BPR Nusantara Bona Pasogit 17'),
(1458,'601876','PT. BPR Bumiasih NBP 21'),
(1459,'601877','PT. BPR Bandar Jaya d/h Perdagangan NBP'),
(1460,'601878','PT. BPR Banyu Arthacitra'),
(1461,'601879','PD BPR Bank Daerah Pati'),
(1462,'601881','PT BPR Sentral Mitra Sejahtera'),
(1463,'601882','PT. BPR Palu Lokadana Utama'),
(1464,'601883','PT. BPR Pondasi Niaga Perdana'),
(1465,'601884','PD. BPR BP Kota Pekalongan'),
(1466,'601885','PT. BPR Danamasa Cimahi'),
(1467,'601886','PT. BPR Irian Sentosa'),
(1468,'601887','PT. BPR Asri Cikupa Karya'),
(1469,'601888','PT. BPR Parasahabat Bekasi'),
(1470,'601889','PT BPR Dana Pos'),
(1471,'601890','PT BPR Ukabima Lumbung Sejahtera'),
(1472,'601891','PT BPR Karya Guna Mandiri'),
(1473,'601895','PT BPR Swadharma Artha Nusa'),
(1474,'601896','PT. BPR Swadharma Bangun Artha'),
(1475,'601898','PT. BPR Karangwaru Pratama'),
(1476,'601899','PT. BPR Muara Sumber Dana'),
(1477,'601901','PT. BPR Brata Nusantara'),
(1478,'601902','PT. BPR Prima Kredit Mandiri'),
(1479,'601903','PT. BPR Raksa Wacana Agri Purnama'),
(1480,'601904','PT. BPR Sulawesi Danajaya'),
(1481,'601905','PT. BPR BUMIBEKASI ARTHA'),
(1482,'601906','PT. BPR Lopok Ganda'),
(1483,'601907','PT. BPR Kabalong Abdi Swadaya'),
(1484,'601908','PT. BPR Bima Abdi Swadaya'),
(1485,'601909','PT. BPR Primanadi'),
(1486,'601911','PT. BPR Daramandiri'),
(1487,'601912','PT. BPR Tritama Abadi Mengkendek'),
(1488,'601913','PT. BPR Yustima'),
(1489,'601914','PT. BPR Lugas Ganda'),
(1490,'601915','PT. BPR Samawa Kencana'),
(1491,'601916','PT. BPR Citra Dumoga'),
(1492,'601917','PT. BPR Capta Sakti Sejahtera'),
(1493,'601918','PT. BPR Capta Mulia Abadi'),
(1494,'601919','PT. BPR Mega Zanur'),
(1495,'601920','PT. BPR Akarumi'),
(1496,'601922','PT BPR Pembangunan Kab Padang Pariaman'),
(1497,'601924','PT. BPR Prisma Dana'),
(1498,'601926','PT. BPR Dumai Kapital Lestari'),
(1499,'601927','PT. BPR Karyabhakti Ugahari'),
(1500,'601928','PT. BPR Pinasungkulan Indah'),
(1501,'601929','KOP. BPR VII Koto'),
(1502,'601930','PT. BPR Pijer Podi Kekelengen'),
(1503,'601931','PT. BPR Perbaungan Hombar Makmur'),
(1504,'601932','PT. BPR Mapalus Tumetenden'),
(1505,'601937','PT. BPR Maroba Ite'),
(1506,'601938','KOP. BPR Ingin Jaya'),
(1507,'601939','PT. BPR Mindosari'),
(1508,'601942','PT. BPR Asparaga Adiguna Bersama'),
(1509,'601943','PT. BPR Puangrimanggalatung'),
(1510,'601944','PT. BPR Tabungan Rakyat'),
(1511,'601945','PT. BPR Kartika Matuari'),
(1512,'601946','PT. BPR Phidectama Abepura'),
(1513,'601947','PT. BPR Tebas Lokarizki'),
(1514,'601948','PT. BPR Dian Binarta'),
(1515,'601949','PT. BPR Rarat Ganda'),
(1516,'601950','PT. BPR Musi Artha Lestari'),
(1517,'601951','PT. BPR Tri Gunung Selatan'),
(1518,'601952','PT. BPR Multidana Mandiri'),
(1519,'601953','PT. BPR Tiur Ganda'),
(1520,'601954','PT. BPR Tahap Ganda'),
(1521,'601955','PT. BPR Prabumegah Kencana'),
(1522,'601956','PT. BPR Nusantara Bona Pasogit 8'),
(1523,'601957','PT BPR Nusantara Bona Pasogit 6'),
(1524,'601958','PT. BPR Bumiasih NBP 7 d/h Raya NBP'),
(1525,'601959','PT BPR Nusantara Bona Pasogit 4'),
(1526,'601960','PT. BPR Nusantara Bona Pasogit 5'),
(1527,'601961','PT. BPR Nusantara Bona Pasogit 10'),
(1528,'601962','PT. BPR Nusantara Bona Pasogit 9'),
(1529,'601963','PT. BPR Nusantara Bona Pasogit 1'),
(1530,'601964','PT. BPR Nusantara Bona Pasogit 3'),
(1531,'601965','PT. BPR Disky Suryajaya'),
(1532,'601966','PT. BPR Milala'),
(1533,'601967','PT BPR Nusantara Bona Pasogit 13'),
(1534,'601968','PT. BPR Prima Tata Patumbak'),
(1535,'601969','PT. BPR Tridana Percut'),
(1536,'601970','PT. BPR Diori Ganda'),
(1537,'601971','PT. BPR Bina Barumun'),
(1538,'601972','PT. BPR Nusantara Sunggal'),
(1539,'601974','PT. BPR Sumber Tiopan Raya'),
(1540,'601975','PT. BPR Logo Karo Asli'),
(1541,'601976','PT. BPR Gunung Adidana'),
(1542,'601977','PT. BPR Tapeuna Dana'),
(1543,'601978','PT. BPR Prima Nusatama'),
(1544,'601979','PT. BPR Panca Arta Monjali'),
(1545,'601981','PT. BPR Arum Mandiri Kenanga'),
(1546,'601982','PT. BPR Arum Mandiri Melati'),
(1547,'601983','PT. BPR Artha Sumber Arum'),
(1548,'601984','PT. BPR Gawi Sabumi Mandarsari'),
(1549,'601985','PT. BPR Pancur Banua Khatulistiwa'),
(1550,'601986','PT. BPR Cahaya Wiraputra'),
(1551,'601987','PT. BPR Dana Permata Lestari'),
(1552,'601988','PT. BPR Dana Tirtaraya'),
(1553,'601989','PT. BPR Sambas Arta'),
(1554,'601990','PT. BPR Lingga Sejahtera'),
(1555,'601991','PT. BPR Laksana Abadi Sunggal'),
(1556,'601992','PT. BPR Laksana Guna Percut'),
(1557,'601993','PT. BPR Talabumi Sunggal'),
(1558,'601994','PT. BPR Duta Paramarta'),
(1559,'601995','PT. BPR Telaga Sinar Cahaya'),
(1560,'601996','PT BPR Fajar Artha Makmur'),
(1561,'601997','PT. BPR Baleendah Rahayu'),
(1562,'601998','PT. BPR Sindang Binaharta'),
(1563,'601999','PT. BPR Bahtera Masyarakat'),
(1564,'602000','PT. BPR Citradana Rahayu'),
(1565,'602001','PT. BPR Harta Tanamas'),
(1566,'602003','PT. BPR Apta Sejahtera'),
(1567,'602004','PT. BPR Brata Bhakti Sejahtera'),
(1568,'602006','PT. BPR Citra Halim Dhanatama'),
(1569,'602007','PT. BPR Ploso Saranaartha'),
(1570,'602008','PT. BPR Artha Waringin Jaya'),
(1571,'602009','PT BPR Arta Mas Surakarta'),
(1572,'602010','PT. BPR Handalan Danagraha'),
(1573,'602011','PD. BPR Indra Arta'),
(1574,'602012','PT. BPR Jelita Artha'),
(1575,'602014','PT. BPR Mos Muara Panas'),
(1576,'602015','PT. BPR Sungai Rumbai'),
(1577,'602016','PT. BPR Sago Luhak Limapuluh'),
(1578,'602017','PT. BPR Rap Ganda'),
(1579,'602018','PT. BPR Gema Ampekkoto Sejahtera'),
(1580,'602019','PT. BPR Nurul Barokah'),
(1581,'602021','PT. BPR Lipat Ganda'),
(1582,'602022','PT. BPR Fajar Warapastika'),
(1583,'602023','PT. BPR Dhana Sewu'),
(1584,'602025','PT. BPR Tahuan Ganda'),
(1585,'602026','PT. BPR Lampung Bina Sejahtera'),
(1586,'602027','PT. BPR Arta Kedaton Makmur'),
(1587,'602028','PT. BPR Tataarta Swadaya'),
(1588,'602031','PT. BPR Nusantara Bona Pasogit 19'),
(1589,'602032','PT. BPR Satria Pertiwi Semarang'),
(1590,'602033','PT. BPR Nusantara Bona Pasogit 32'),
(1591,'602035','PT. BPR Wingsati'),
(1592,'602037','PT. BPR Tumpang Prima Artorejo'),
(1593,'602038','PT. BPR Berkah Pakto'),
(1594,'602039','PT. BPR Sari Dinarmas'),
(1595,'602040','PT. BPR Hamindo Natamakmur'),
(1596,'602041','PT. BPR Unisritama'),
(1597,'602042','PD. BPR Sarimadu'),
(1598,'602043','PT. BPR Chandra Muktiartha'),
(1599,'602044','PT BPR Dewa Arthaka Mulya'),
(1600,'602045','PT. BPR Laksana Luhurcilamaya'),
(1601,'602046','PT BPR Mitra Rukun Mandiri'),
(1602,'602047','PT.BPR Nusantara Bona Pasogit 31'),
(1603,'602048','PT BPR Nusantara Bona Pasogit 27'),
(1604,'602049','PT. BPR Ragam Danakencana'),
(1605,'602050','PT. BPR Semesta Megadana'),
(1606,'602051','PT. BPR Gunadhana Mitrasembada'),
(1607,'602052','PT. BPR Baldah Sentosa'),
(1608,'602053','PD. BPR Kota Bandung'),
(1609,'602054','PT. BPR Trisurya Marga Artha'),
(1610,'602055','PT. BPR Daya Lumbung Asia'),
(1611,'602056','PT BPR Nusantara Bona Pasogit 30'),
(1612,'602057','PT BPR Nusantara Bona Pasogit 29'),
(1613,'602058','PT BPR Nusantara Bona Pasogit 28'),
(1614,'602060','PT. BPR Sinarenam Permai Jatiasih'),
(1615,'602062','PT. BPR Artha Jaya Mandiri'),
(1616,'602063','PT BPR Surya Prima Persada'),
(1617,'602065','PT. BPR Mitra Rakyat Riau'),
(1618,'602066','PT. BPR Mitra Prima Lestari'),
(1619,'602067','PD. BPR Kota Samarinda'),
(1620,'602068','PT. BPR Siliwangi Tasikmalaya'),
(1621,'602070','PT. BPR Hasa Mitra'),
(1622,'602071','PT. BPR Kusuma Arta Rini'),
(1623,'602072','PT. BPR Banda Raya'),
(1624,'602073','PT. BPR Artha Karya Sejahtera'),
(1625,'602074','PT. BPR Prima Multi Makmur'),
(1626,'602075','PT. BPR Dana Bintan Sejahtera'),
(1627,'602084','PT. BPR Bumi Riau Insani'),
(1628,'602085','PT. BPR Zebra Surya Prima'),
(1629,'602460','PT BPR Semoga Jaya Artha'),
(1630,'602461','PT. BPR Guna Rakyat'),
(1631,'602462','PT. BPR Artha Berkah Cemerlang'),
(1632,'602463','PT. BPR Ukabima Sejahtera'),
(1633,'602464','PT BPR Cemerlang Kapuas Makmur'),
(1634,'602465','PT. BPR Artha Prima Persada'),
(1635,'602468','PT. BPR Arisma Mandiri'),
(1636,'602469','PT. BPR Magga Jaya Utama'),
(1637,'602470','PT BPR Pundhi'),
(1638,'602471','PT BPR Walet Jaya Abadi'),
(1639,'602472','PT. BPR Surya Artha Utama'),
(1640,'602473','PT. BPR Tambun Ijuk'),
(1641,'602474','PT. BPR Cahaya Fajar'),
(1642,'602538','PT BPR Jam Gadang'),
(1643,'602539','PT BPR Alimo Dana Prima'),
(1644,'602540','PT. BPR Musi Artha Surya'),
(1645,'602541','PT BPR Dana Nagoya'),
(1646,'602542','PT. BPR Palu Anugerah'),
(1647,'602543','PT BPR Sukadana Prima'),
(1648,'602544','PT BPR Talenta Raya'),
(1649,'602545','PT BPR Budisetia'),
(1650,'602546','PT BPR Wuni Artha Utama'),
(1651,'602547','PT BPR Andalan Favorit Perdana'),
(1652,'602548','PD BPR Subang'),
(1653,'602549','PT BPR Pagai Utara Selatan'),
(1654,'602550','PT BPR Kutai Timur'),
(1655,'602551','PT BPR Sipora'),
(1656,'602552','PT BPR Samudera'),
(1657,'602553','PT BPR Mina Mandiri'),
(1658,'602554','PT BPR Tuah Negeri Mandiri'),
(1659,'602555','PT BPR Bepede Kutai Sejahtera'),
(1660,'602556','PT BPR Mataram Mitra Manunggal'),
(1661,'602557','PT BPR Usaha Madani Karya Mulia'),
(1662,'602558','PT BPR LSE Manggala'),
(1663,'602559','PT BPR Pekanbaru'),
(1664,'602560','PT BPR Artha Praja'),
(1665,'602561','PD BPR Rokan Hulu'),
(1666,'602562','PD BPR Citra Mas'),
(1667,'602563','PT BPR Metro Asia Mandiri'),
(1668,'602564','PT BPR Mandiri Jaya Perkasa'),
(1669,'602565','PT BPR Permata Hati jaya'),
(1670,'602566','PT BPR Pesisir Akbar'),
(1671,'602567','PT BPR Duta Artha Sejahtera'),
(1672,'602568','PT BPR Supra Wahana Arta'),
(1673,'602569','PT BPR Pesisir Layar Berkembang'),
(1674,'602570','PT BPR Berlian Global Aceh'),
(1675,'602571','PT BPR Tunas Jaya Graha'),
(1676,'602572','PT BPR Universal Karya Mandiri Riau'),
(1677,'602573','PT BPR Celebes Mitra Perdana'),
(1678,'602574','PT BPR Sumatera Selatan'),
(1679,'602575','PD BPR Bintan'),
(1680,'602576','PT BPR Tata Karya Indonesia'),
(1681,'602577','PD BPR Kerta Raharja'),
(1682,'602578','PT BPR Tanaoba Lais Manekat'),
(1683,'602579','PT BPR Pesisir Tanadoang'),
(1684,'602580','PT BPR Bina Dana Cakrawala'),
(1685,'602581','PD BPR Bestari'),
(1686,'602582','PT BPR Utomo Manunggal Sejahtera Lampung'),
(1687,'602583','PT BPR Harta Mandiri'),
(1688,'602584','PT BPR Papua Mandiri Makmur'),
(1689,'602585','PT BPR Arto Moro'),
(1690,'602586','PT BPR Delta Dana Mandiri'),
(1691,'602587','PT BPR Niji'),
(1692,'602588','PT BPR Panca Arta Graha'),
(1693,'602589','PT BPR Indomitra Mega Kapital'),
(1694,'602590','PT BPR Putra Batam'),
(1695,'602591','PT BPR Karya Bakti Sejahtera'),
(1696,'602592','PT BPR Stigma Andalas'),
(1697,'602593','PT BPR Hardi Mas Mandiri'),
(1698,'602594','PT BPR Timor Raya Makmur'),
(1699,'602595','PT BPR Danamas Simpan Pinjam'),
(1700,'602596','PT BPR Prima Dana Abadi'),
(1701,'602598','PT BPR Kepri Batam'),
(1702,'602599','PT BPR Kepri Bintan'),
(1703,'602600','PT BPR Agra Dhana'),
(1704,'602601','PT BPR Yaspis Dana Prima'),
(1705,'602602','PT BPR Kintamas Mitra Dana'),
(1706,'602604','PT BPR Christa Jaya Perdana'),
(1707,'602605','PT BPR Puskopat'),
(1708,'602606','PT BPR Rasyid'),
(1709,'602607','PT BPR Central Sejahtera'),
(1710,'602608','PT BPR Pembangunan Kerinci'),
(1711,'602609','PT BPR Tunas Mitra Mandiri'),
(1712,'602610','PD BPR Dana Amanah'),
(1713,'602611','PD BPR Marunting Sejahtera'),
(1714,'602612','PT BPR Artha Karya Usaha'),
(1715,'602613','PT BPR Cempaka Mitra Nagori Kuansing'),
(1716,'602614','PT BPR Indobaru Finansia'),
(1717,'602615','PT BPR Surya Utama'),
(1718,'602616','PT BPR Tanjung Pratama'),
(1719,'602617','PT BPR Karimun Sejahtera'),
(1720,'602618','PT BPR Harapan Bunda'),
(1721,'602619','PT BPR Global Mentari'),
(1722,'602620','PT. BPR Dana Fanindo'),
(1723,'602621','PT BPR Ukabima Grazia'),
(1724,'602622','PT BPR Nustria Mitra Abadi'),
(1725,'602623','PT BPR Ukabima Mitra Dana'),
(1726,'602624','PT BPR Bontang Sejahtera'),
(1727,'602625','PT BPR Dana Mitra Sukses'),
(1728,'602626','PT BPR Prima Artha Sejahtera'),
(1729,'602627','PD BPR Sumedang'),
(1730,'602628','PD BPR NTB Lombok Tengah'),
(1731,'602629','PD BPR NTB Lombok Timur'),
(1732,'602630','PT BPR Dana Putra'),
(1733,'602631','PT BPR Dana Makmur'),
(1734,'602632','PT BPR Buana Arta Mulia'),
(1735,'602633','PD BPR NTB Sumbawa'),
(1736,'602635','PT BPR Kencana Mandiri'),
(1737,'602636','PT BPR Central Dana Mandiri'),
(1738,'602637','PT BPR Athena Surya Prima'),
(1739,'602638','PT. BPR Kerta Raharja'),
(1740,'602639','PT BPR Dana Raya'),
(1741,'602640','PD BPR Garut'),
(1742,'602642','PT BPR Cempaka Mitra Usaha'),
(1743,'602643','PT BPR Arfak Indonesia'),
(1744,'602644','PT BPR Central Kepri'),
(1745,'602645','PT BPR Tara Dharma Artha'),
(1746,'602646','PT BPR Dana Central Mulia'),
(1747,'602647','PT BPR Majesty Golden Raya'),
(1748,'602649','PT BPR Bobato Lestari'),
(1749,'602650','PT BPR Central Artha'),
(1750,'602651','PT BPR Duta Perdana'),
(1751,'602652','PT BPR Mitra Harmoni'),
(1752,'602653','PT BPR Sumber Dana Mas'),
(1753,'602654','PD BPR NTB Lombok Barat'),
(1754,'602655','PT BPR Dana Mandiri'),
(1755,'602656','PD BPR NTB Dompu'),
(1756,'602657','PD BPR NTB Bima'),
(1757,'602658','PT BPR Primaesa Sejahtera'),
(1758,'602659','PT. BPR Dana Wira Buana'),
(1759,'602660','PT BPR Cipta Cemerlang Indonesia'),
(1760,'602661','PT.BPR Wahana Bersama KPUM'),
(1761,'602662','PT BPR Putra Niaga Mandiri'),
(1762,'602663','PT.BPR Faiza Pradani Andi'),
(1763,'602664','PT BPR Central Niaga Abadi'),
(1764,'602665','PD BPR Artha Sukapura'),
(1765,'602666','PD BPR Artha Galunggung'),
(1766,'602667','PD BPR Bahteramas Kendari'),
(1767,'602668','PD BPR Bahteramas Bau-Bau'),
(1768,'602669','PD BPR Bahteramas Konawe'),
(1769,'602670','PD BPR Bahteramas Konawe Selatan'),
(1770,'602671','PD BPR Bahteramas Kolaka'),
(1771,'602672','PD BPR Bahteramas Bombana'),
(1772,'602673','PD BPR Bahteramas Wakatobi'),
(1773,'602674','PT BPR Danatama Artha Mandiri'),
(1774,'602675','PT. BPR Dana Mitra Utama'),
(1775,'602676','PT BPR Mega Mas Lestari'),
(1776,'602677','PT. BPR Putra Riau Mandiri'),
(1777,'602678','PT. BPR Anugerah Bintang Sejahtera'),
(1778,'602679','PT. BPR Utomo Manunggal Sejahtera Sumsel'),
(1779,'602680','PT. BPR Danaku Mapan Lestari'),
(1780,'602681','PT. BPR Dana Karunia Sejahtera'),
(1781,'602682','PD.BPR NTB Sumbawa Barat'),
(1782,'602683','PT. BPR Ronatama Mandiri Jambi'),
(1783,'602684','PT BPR Fianka Rezalina Fatma'),
(1784,'602685','PT BPR Asia Sejahtera'),
(1785,'602686','PT BPR Ukabima Khatulistiwa Pontianak'),
(1786,'602687','PT. BPR Graha Lestari'),
(1787,'602688','PT. BPR Cosmic Mitra Andalan'),
(1788,'602689','PT. BPR Prima Jambi Mandiri'),
(1789,'602690','PT BPR Jambi Citra Sahabat'),
(1790,'602691','PD. BPR Artha Sukma Sejahtera'),
(1791,'602692','PT. BPR Pelangi'),
(1792,'602693','PT BPR Catur Mas'),
(1793,'602694','PT BPR Asia Bintang Cemerlang'),
(1794,'602695','PT BPR Arsham Sejahtera'),
(1795,'602696','PT. BPR Natuna'),
(1796,'602697','PD BPR Paringin'),
(1797,'602698','PD BPR Pulau Laut Utara'),
(1798,'602699','PT. BPR Indotama UKM Sulawesi'),
(1799,'602700','PD BPR Kabupaten Bulungan'),
(1800,'602701','PT BPR Pundi Dana Mandiri'),
(1801,'602702','PD BPR Karya Remaja'),
(1802,'602703','PT. BPR Nusantara Abdi Mulia'),
(1803,'602704','PT BPR Pratama Dana Abadi'),
(1804,'602705','PT. BPR Prima Madani'),
(1805,'602706','PT BPR Prima Sejahtera'),
(1806,'602707','PT BPR Tamara Dana Khatulistiwa Pontianak'),
(1807,'602708','PT BPR Danamas Belu'),
(1808,'602709','PD BPR Pelaihari'),
(1809,'602710','PT BPR Kapital Mandiri'),
(1810,'602711','PT BPR Citra Darma Wangsa'),
(1811,'602712','PT BPR Prima Riau Sentosa'),
(1812,'602713','PT BPR Muncul Artha Sejahtera'),
(1813,'602714','PT BPR Buana Mandiri'),
(1814,'602715','PT BPR Mukomuko Makmur'),
(1815,'602716','PT BPR Perdana Cipta Sejahtera'),
(1816,'602717','PT BPR Dana Mitra Indonesia'),
(1817,'602718','PT BPR Mitra Dana Kawanua'),
(1818,'602719','PT BPR Dana Selaras Sentosa'),
(1819,'602720','PT BPR Tritunggal'),
(1820,'602721','PD BPR Bahteramas Raha'),
(1821,'602722','PD BPR Bahteramas Konawe Utara'),
(1822,'602723','PD BPR Bahteramas Kolaka Utara'),
(1823,'602724','PD BPR Bahteramas Buton'),
(1824,'602725','PD BPR Bahteramas Buton Utara'),
(1825,'602726','PT BPR Guru Jateng'),
(1826,'602727','PT BPR Ukabima Permata'),
(1827,'602728','PT BPR Bintang Dana Persada'),
(1828,'602729','PT BPR Mitra Sumber Makmur'),
(1829,'602730','PT BPR Buana Artha Kassiti'),
(1830,'602731','PT BPR Pendanaan Sarana Rakyat'),
(1831,'602732','PT BPR Duta Niaga'),
(1832,'602733','PT BPR Dana Prima Mandiri'),
(1833,'602734','PD BPR Alalak'),
(1834,'602735','PT BPR Putra Mahkota Mandiri'),
(1835,'602736','PT BPR DP Taspen Jateng'),
(1836,'602737','PT BPR Sunni'),
(1837,'620002','PT BPRS Amanah Rabbaniah'),
(1838,'620003','PT BPRS Hareukat'),
(1839,'620004','PT BPRS Amanah Ummah'),
(1840,'620005','PT BPRS Artha Karimah Irsyadi'),
(1841,'620006','PT BPRS Bina Amwalul Hasanah'),
(1842,'620007','PT BPRS Musyarakah Ummat Indonesia'),
(1843,'620008','PT BPRS Mentari'),
(1844,'620009','PT BPRS Tulen Amanah'),
(1845,'620010','PT BPRS Indo Timur'),
(1846,'620011','PT BPRS Baiturridha Pusaka'),
(1847,'620012','PT BPRS Harta Insan Karimah'),
(1848,'620013','PT BPRS Barkah Gemadana'),
(1849,'620014','PT BPRS Ibadurrahman'),
(1850,'620015','PT BPRS Harta Insan Karimah Bekasi'),
(1851,'620017','PT BPRS Margirizki Bahagia'),
(1852,'620018','PT BPRS Bangun Drajat Warga'),
(1853,'620020','PT BPRS Harta Insan Karimah Cibitung'),
(1854,'620021','PT BPRS Patuh Beramal'),
(1855,'620022','PT BPRS Baktimakmur Indah'),
(1856,'620024','PT BPRS Baiturrahman'),
(1857,'620025','PT BPRS Tengku Chiek Dipante'),
(1858,'620026','PT BPRS Syariat Fajar Sejahtera Bali'),
(1859,'620027','PT BPRS Al Ma\'soem Syari\'ah'),
(1860,'620029','PT BPRS Harum Hikmahnugraha'),
(1861,'620030','PT BPRS Dana Moneter'),
(1862,'620031','PT BPRS Surya Sejati'),
(1863,'620032','PT BPRS Amanah Bangsa'),
(1864,'620033','PT BPRS Asri Madani Nusantara'),
(1865,'620034','PT BPRS Muamalah Cilegon'),
(1866,'620035','PT BPRS Ishlalul Ummah'),
(1867,'620036','PT BPRS Al Washliyah'),
(1868,'620037','PT BPRS Al Wadi\'ah'),
(1869,'620038','PT BPRS Attaqwa'),
(1870,'620039','PT BPRS Niaga Madani'),
(1871,'620040','PT BPRS Al Falah'),
(1872,'620041','PT BPRS Hasanah'),
(1873,'620042','PT BPRS Wakalumi'),
(1874,'620043','PT BPRS Artha Fisabilillah'),
(1875,'620044','PT BPRS Al Ihsan'),
(1876,'620045','PT BPRS Nurul Ikhwan'),
(1877,'620046','PT BPRS Hikmah Wakilah'),
(1878,'620047','PT BPRS Ikhsanul Amal'),
(1879,'620048','PT BPRS Bhakti Haji'),
(1880,'620049','PT BPRS Rahman Hijrah Agung'),
(1881,'620050','PT BPRS Amanah Sejahtera'),
(1882,'620051','PT BPRS Bandar Lampung'),
(1883,'620052','PT BPRS Muamalat Harkat'),
(1884,'620053','PT BPRS Al Barokah'),
(1885,'620054','PT BPRS Harta Insan Karimah Parahyangan'),
(1886,'620055','PT BPRS Gebu Prima'),
(1887,'620056','PT BPRS Daya Artha Mentari'),
(1888,'620057','PT BPRS Mulia Berkah Abadi'),
(1889,'620058','PT BPRS Puduarta Insani'),
(1890,'620059','PT BPRS Mentari Pasaman Saiyo'),
(1891,'620060','PT BPRS Berkah Dana Fadhilah'),
(1892,'620061','PT BPRS Bina Rahmah'),
(1893,'620062','PT BPRS Al Hijrah Amanah'),
(1894,'620063','PT BPRS Gala Mitra Abadi'),
(1895,'620064','PT BPRS Carana Kiat Andalas'),
(1896,'620065','PT BPRS Gowata'),
(1897,'620066','PT BPRS Amanah Insani'),
(1898,'620067','PT BPRS Muamalat Yotefa'),
(1899,'620068','PT BPRS Rif’atul Ummah'),
(1900,'620069','PT BPRS Insan Cita Artha Jaya'),
(1901,'620070','PT BPRS Asad Alif'),
(1902,'620071','PT BPRS Ampek Angkek Candung'),
(1903,'620073','PT BPRS Al Mabrur Babadan'),
(1904,'620074','PT BPRS Ummu'),
(1905,'620075','PT BPRS Berkah Ramadhan'),
(1906,'620076','PT BPRS Bangka'),
(1907,'620077','PT BPRS Investama Mega Bakti'),
(1908,'620079','PT BPRS Bumi Rinjani Batu'),
(1909,'620080','PT BPRS Cilegon Mandiri'),
(1910,'620081','PT BPRS Situbondo'),
(1911,'620082','PT BPRS Tanggamus'),
(1912,'620083','PT BPRS Buana Mitra Perwira'),
(1913,'620084','PT BPRS Artha Surya Barokah'),
(1914,'620085','PT BPRS Bhakti Sumekar'),
(1915,'620086','PT BPRS Suriyah'),
(1916,'620087','PT BPRS Bina Amanah Satria'),
(1917,'620088','PT BPRS Artha Madani'),
(1918,'620089','PT BPRS Khasanah Ummat'),
(1919,'620090','PT BPRS Safir'),
(1920,'620091','PT BPRS Metro Madani'),
(1921,'620092','PT BPRS Al-Yaqin'),
(1922,'620098','PT BPRS Lantabur Tebuireng'),
(1923,'620099','PT BPRS Haji Miskin'),
(1924,'620100','PT BPRS Artha Mas Abadi'),
(1925,'620101','PT BPRS Al Salaam Amal Salman'),
(1926,'620102','PT BPRS PNM Binama'),
(1927,'620103','PT BPRS Jabal Tsur'),
(1928,'620104','PT BPRS Dinar Ashri'),
(1929,'620105','PT BPRS Bumi Rinjani Probolinggo'),
(1930,'620106','PT BPRS Bumi Rinjani Kepanjen'),
(1931,'620107','PT BPRS Dana Hidayatullah'),
(1932,'620108','PT BPRS Kota Bekasi'),
(1933,'620110','PT BPRS Arta Leksana'),
(1934,'620111','PT BPRS Sindanglaya Katonapan'),
(1935,'620112','PT BPRS Bumi Artha Sampang'),
(1936,'620113','PT BPRS Karya Mugi Sentosa'),
(1937,'620114','PT BPRS Jabal Nur'),
(1938,'620115','PT BPRS Barokah Dana Sejahtera'),
(1939,'620116','PT BPRS Artha Amanah Ummat'),
(1940,'620117','PT BPRS Mitra Amal Mulia'),
(1941,'620118','PT BPRS Madina Mandiri Sejahtera'),
(1942,'620120','PT BPRS Renggali'),
(1943,'620121','PT BPRS Syarikat Madani'),
(1944,'620122','PT BPRS Dana Mulia'),
(1945,'620123','PT BPRS Barakah Nawaitul Ikhlas'),
(1946,'620124','PT BPRS Sukowati Sragen'),
(1947,'620125','PT BPRS Dana Amanah'),
(1948,'620126','PT BPRS Mandiri Mitra Sukses'),
(1949,'620127','PT BPRS Sarana Prima Mandiri'),
(1950,'620128','PT BPRS Danagung Syariah'),
(1951,'620129','PT BPRS Rajasa'),
(1952,'620130','PT BPRS Tanmiya Artha'),
(1953,'620131','PT BPRS Kotabumi'),
(1954,'620132','PT BPRS Al Makmur'),
(1955,'620133','PT BPRS Mitra Cahaya Indonesia'),
(1956,'620134','PT BPRS Vitka Central'),
(1957,'620135','PT BPRS Annisa Mukti'),
(1958,'620136','PT BPRS FORMES'),
(1959,'620137','PT BPRS Central Syariah Utama'),
(1960,'620138','PT BPRS Cempaka Al Amin'),
(1961,'620139','PT BPRS Madinah'),
(1962,'620140','PT BPRS Lampung Timur'),
(1963,'620141','PT BPRS Adeco'),
(1964,'620142','PT BPRS Al Mabrur'),
(1965,'620143','PT BPRS MERU SANKARA'),
(1966,'620144','PT BPRS Kota Juang'),
(1967,'620145','PT BPRS Amanah Insan Cita'),
(1968,'620146','PT BPRS Gunung Slamet'),
(1969,'620147','PT BPRS Artha Pamenang'),
(1970,'620148','PT BPRS Rahmania Dana Sejahtera'),
(1971,'620149','PT BPRS Mitra Harmoni Yogyakarta'),
(1972,'620150','PT BPRS Rahma Syariah'),
(1973,'620151','PT BPRS Mitra Harmoni Kota Semarang'),
(1974,'620152','PT BPRS SERAMBI MEKAH'),
(1975,'620153','PT BPRS Mitra Harmoni Kota Malang'),
(1976,'620154','PT BPRS Insan Madani'),
(1977,'620155','PT BPRS Unawi Barokah'),
(1978,'620156','PT BPRS Al-Madinah Tasikmalaya'),
(1979,'620157','PT BPRS Way Kanan'),
(1980,'620158','PT BPRS Oloan Ummah Sidempuan'),
(1981,'620159','PT BPRS Dharma Kuwera'),
(1982,'620160','PT BPRS Kota Mojokerto'),
(1983,'620161','PT BPRS Mitra Harmoni Kota Bandung'),
(1984,'620162','PT BPRS Gajah Tongga Kota Piliang'),
(1985,'620163','PT BPRS Cahaya Hidup'),
(1986,'620164','PT BPRS Bahari Berkesan'),
(1987,'620165','PT BPRS Syariah Magetan'),
(1988,'620166','PT BPRS Bakti Artha Sejahtera Sampang'),
(1989,'620167','PT BPRS Saka Dana Mulia'),
(1990,'620168','PT BPRS Harta Insan Karimah Makassar'),
(1991,'620169','PT BPRS Mitra Agro Usaha'),
(1992,'620170','PT BPRS Mitra Amanah'),
(1993,'620171','PT BPRS Harta Insan Karimah Surakarta'),
(1994,'620172','PT BPRS Gotong Royong'),
(1995,'620173','PT BPRS Aman Syariah'),
(1996,'620174','PT BPRS Harta Insan Karimah Kota Tegal'),
(1997,'620175','PT BPRS Lampung Barat'),
(1998,'620176','PT BPRS Tani Tulang Bawang Barat'),
(1999,'620177','PT BPRS Bogor Tegar Beriman'),
(2000,'620178','PT BPRS Unisa Insan Indonesia');

/*Table structure for table `ref_sosial_politik` */

DROP TABLE IF EXISTS `ref_sosial_politik`;

CREATE TABLE `ref_sosial_politik` (
  `sandi` varchar(2) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`sandi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `ref_sosial_politik` */

insert  into `ref_sosial_politik`(`sandi`,`keterangan`) values 
('01','Kegiatan Sosial'),
('02','Kegiatan Politik');

/*Table structure for table `sistem` */

DROP TABLE IF EXISTS `sistem`;

CREATE TABLE `sistem` (
  `jenis` varchar(100) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='system control';

/*Data for the table `sistem` */

insert  into `sistem`(`jenis`,`tanggal`) values 
('TGL_LTBPR','2025-01-31');

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
('indra_maulana','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,855,706,'3','192.168.0.116',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2026-03-20 14:47:24',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log user yang mengakses program';

/*Data for the table `user_log` */

insert  into `user_log`(`id`,`user`,`kd_menu`,`waktu`,`ket`,`ip`,`AppVer`) values 
(1,'indra_maulana','fr_GetSystemDate','2025-11-14 22:50:49','Login Tgl System Sukses : indra_maulana Tgl System : 06 Pebruari 2007 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(2,'indra_maulana','fr_GetSystemDate','2025-11-14 22:53:54','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(3,'indra_maulana','fr_GetSystemDate','2025-11-14 22:55:24','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(4,'indra_maulana','fr_GetSystemDate','2025-11-14 22:58:05','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(5,'indra_maulana','fr_GetSystemDate','2025-11-14 22:58:44','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(6,'indra_maulana','fr_LoginBPR','2025-11-14 22:58:44','Login Sukses : indra_maulana Tanggal System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(7,'indra_maulana','fr_GetSystemDate','2025-11-14 23:00:10','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(8,'indra_maulana','fr_LoginBPR','2025-11-14 23:00:11','Login Sukses : indra_maulana Tanggal System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(9,'indra_maulana','fr_GetSystemDate','2025-11-14 23:14:44','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(10,'indra_maulana','fr_LoginBPR','2025-11-14 23:14:44','Login Sukses : indra_maulana Tanggal System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(11,'indra_maulana','fr_GetSystemDate','2025-11-14 23:38:56','Login Tgl System Sukses : indra_maulana Tgl System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(12,'indra_maulana','fr_LoginBPR','2025-11-14 23:38:56','Login Sukses : indra_maulana Tanggal System : 14 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(13,'indra_maulana','fr_GetSystemDate','2025-11-15 07:50:24','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(14,'indra_maulana','fr_LoginBPR','2025-11-15 07:50:24','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(15,'indra_maulana','fr_GetSystemDate','2025-11-15 08:16:56','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(16,'indra_maulana','fr_LoginBPR','2025-11-15 08:16:56','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(17,'indra_maulana','fr_GetSystemDate','2025-11-15 08:18:23','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(18,'indra_maulana','fr_LoginBPR','2025-11-15 08:18:24','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(19,'indra_maulana','fr_GetSystemDate','2025-11-15 08:18:55','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(20,'indra_maulana','fr_LoginBPR','2025-11-15 08:18:55','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(21,'indra_maulana','fr_GetSystemDate','2025-11-15 08:30:45','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(22,'indra_maulana','fr_LoginBPR','2025-11-15 08:30:46','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(23,'indra_maulana','fr_GetSystemDate','2025-11-15 08:34:39','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(24,'indra_maulana','fr_LoginBPR','2025-11-15 08:34:39','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(25,'indra_maulana','fr_GetSystemDate','2025-11-15 08:55:06','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(26,'indra_maulana','fr_LoginBPR','2025-11-15 08:55:06','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(27,'indra_maulana','fr_GetSystemDate','2025-11-15 11:51:35','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(28,'indra_maulana','fr_LoginBPR','2025-11-15 11:51:35','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(29,'indra_maulana','fr_GetSystemDate','2025-11-15 11:53:08','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(30,'indra_maulana','fr_LoginBPR','2025-11-15 11:53:08','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(31,'indra_maulana','fr_GetSystemDate','2025-11-15 11:57:11','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(32,'indra_maulana','fr_LoginBPR','2025-11-15 11:57:11','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(33,'indra_maulana','fr_GetSystemDate','2025-11-15 11:57:46','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(34,'indra_maulana','fr_LoginBPR','2025-11-15 11:57:47','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(35,'indra_maulana','fr_GetSystemDate','2025-11-15 11:58:59','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(36,'indra_maulana','fr_LoginBPR','2025-11-15 11:59:00','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 10.144.192.161 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(37,'indra_maulana','fr_GetSystemDate','2025-11-15 20:10:05','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(38,'indra_maulana','fr_LoginBPR','2025-11-15 20:10:06','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(39,'indra_maulana','fr_GetSystemDate','2025-11-15 20:13:21','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(40,'indra_maulana','fr_LoginBPR','2025-11-15 20:13:22','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(41,'indra_maulana','fr_GetSystemDate','2025-11-15 20:14:13','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(42,'indra_maulana','fr_LoginBPR','2025-11-15 20:14:13','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(43,'indra_maulana','fr_GetSystemDate','2025-11-15 20:15:55','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(44,'indra_maulana','fr_LoginBPR','2025-11-15 20:15:56','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(45,'indra_maulana','fr_GetSystemDate','2025-11-15 21:33:12','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(46,'indra_maulana','fr_LoginBPR','2025-11-15 21:33:13','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(47,'indra_maulana','fr_GetSystemDate','2025-11-15 21:35:56','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(48,'indra_maulana','fr_LoginBPR','2025-11-15 21:35:57','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(49,'indra_maulana','fr_GetSystemDate','2025-11-15 21:49:49','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(50,'indra_maulana','fr_LoginBPR','2025-11-15 21:49:50','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(51,'indra_maulana','fr_GetSystemDate','2025-11-16 06:31:41','Login Tgl System Sukses : indra_maulana Tgl System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(52,'indra_maulana','fr_LoginBPR','2025-11-16 06:31:42','Login Sukses : indra_maulana Tanggal System : 15 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(53,'indra_maulana','fr_GetSystemDate','2025-11-16 06:32:35','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(54,'indra_maulana','fr_LoginBPR','2025-11-16 06:32:36','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(55,'indra_maulana','fr_GetSystemDate','2025-11-16 18:38:52','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(56,'indra_maulana','fr_LoginBPR','2025-11-16 18:38:52','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(57,'indra_maulana','fr_GetSystemDate','2025-11-16 18:40:28','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(58,'indra_maulana','fr_LoginBPR','2025-11-16 18:40:28','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(59,'indra_maulana','fr_GetSystemDate','2025-11-16 18:42:38','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(60,'indra_maulana','fr_LoginBPR','2025-11-16 18:42:39','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(61,'indra_maulana','fr_GetSystemDate','2025-11-16 18:44:38','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(62,'indra_maulana','fr_LoginBPR','2025-11-16 18:44:39','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(63,'indra_maulana','fr_GetSystemDate','2025-11-16 18:48:11','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(64,'indra_maulana','fr_LoginBPR','2025-11-16 18:48:11','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(65,'indra_maulana','fr_GetSystemDate','2025-11-16 18:49:41','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(66,'indra_maulana','fr_LoginBPR','2025-11-16 18:49:41','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(67,'indra_maulana','fr_GetSystemDate','2025-11-16 18:55:39','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(68,'indra_maulana','fr_LoginBPR','2025-11-16 18:55:40','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(69,'indra_maulana','fr_GetSystemDate','2025-11-16 18:58:38','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(70,'indra_maulana','fr_LoginBPR','2025-11-16 18:58:39','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(71,'indra_maulana','fr_GetSystemDate','2025-11-16 19:02:25','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(72,'indra_maulana','fr_LoginBPR','2025-11-16 19:02:25','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(73,'indra_maulana','fr_GetSystemDate','2025-11-16 19:02:55','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(74,'indra_maulana','fr_LoginBPR','2025-11-16 19:02:56','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(75,'indra_maulana','fr_GetSystemDate','2025-11-16 19:32:47','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(76,'indra_maulana','fr_LoginBPR','2025-11-16 19:32:47','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(77,'indra_maulana','fr_GetSystemDate','2025-11-16 19:34:32','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(78,'indra_maulana','fr_LoginBPR','2025-11-16 19:34:32','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(79,'indra_maulana','fr_GetSystemDate','2025-11-16 19:37:03','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(80,'indra_maulana','fr_LoginBPR','2025-11-16 19:37:03','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(81,'indra_maulana','fr_GetSystemDate','2025-11-16 19:39:59','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(82,'indra_maulana','fr_LoginBPR','2025-11-16 19:39:59','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(83,'indra_maulana','fr_GetSystemDate','2025-11-16 20:03:59','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(84,'indra_maulana','fr_LoginBPR','2025-11-16 20:04:00','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(85,'indra_maulana','fr_GetSystemDate','2025-11-16 20:10:27','Login Tgl System Sukses : indra_maulana Tgl System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(86,'indra_maulana','fr_LoginBPR','2025-11-16 20:10:27','Login Sukses : indra_maulana Tanggal System : 17 November 2025 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(87,'indra_maulana','fr_GetSystemDate','2025-11-21 16:06:04','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(88,'indra_maulana','fr_LoginBPR','2025-11-21 16:06:05','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(89,'indra_maulana','fr_GetSystemDate','2025-11-21 16:12:43','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(90,'indra_maulana','fr_LoginBPR','2025-11-21 16:12:44','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(91,'indra_maulana','fr_GetSystemDate','2025-11-21 16:17:10','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(92,'indra_maulana','fr_LoginBPR','2025-11-21 16:17:11','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(93,'indra_maulana','fr_GetSystemDate','2025-11-21 16:18:12','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(94,'indra_maulana','fr_LoginBPR','2025-11-21 16:18:12','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(95,'indra_maulana','fr_GetSystemDate','2025-11-21 16:22:24','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(96,'indra_maulana','fr_LoginBPR','2025-11-21 16:22:25','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(97,'indra_maulana','fr_GetSystemDate','2025-11-21 16:31:53','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(98,'indra_maulana','fr_LoginBPR','2025-11-21 16:31:54','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(99,'indra_maulana','fr_GetSystemDate','2025-11-21 16:33:44','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(100,'indra_maulana','fr_LoginBPR','2025-11-21 16:33:45','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(101,'indra_maulana','fr_GetSystemDate','2025-11-21 16:35:36','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(102,'indra_maulana','fr_LoginBPR','2025-11-21 16:35:37','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(103,'indra_maulana','fr_GetSystemDate','2025-11-21 19:36:52','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(104,'indra_maulana','fr_LoginBPR','2025-11-21 19:36:53','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(105,'indra_maulana','fr_GetSystemDate','2025-11-21 19:44:48','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(106,'indra_maulana','fr_LoginBPR','2025-11-21 19:44:49','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(107,'indra_maulana','fr_GetSystemDate','2025-11-21 20:31:32','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(108,'indra_maulana','fr_LoginBPR','2025-11-21 20:31:33','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(109,'indra_maulana','fr_GetSystemDate','2025-11-21 20:35:50','Login Tgl System Sukses : indra_maulana Tgl System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(110,'indra_maulana','fr_LoginBPR','2025-11-21 20:35:51','Login Sukses : indra_maulana Tanggal System : 21 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(111,'indra_maulana','fr_GetSystemDate','2025-11-24 11:01:26','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 40.40.40.195 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(112,'indra_maulana','fr_LoginBPR','2025-11-24 11:01:26','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 40.40.40.195 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(113,'indra_maulana','fr_GetSystemDate','2025-11-24 14:07:46','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(114,'indra_maulana','fr_LoginBPR','2025-11-24 14:07:46','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(115,'indra_maulana','fr_GetSystemDate','2025-11-24 14:09:14','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(116,'indra_maulana','fr_LoginBPR','2025-11-24 14:09:14','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(117,'indra_maulana','fr_GetSystemDate','2025-11-24 14:44:26','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(118,'indra_maulana','fr_LoginBPR','2025-11-24 14:44:27','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(119,'indra_maulana','fr_GetSystemDate','2025-11-24 14:48:03','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(120,'indra_maulana','fr_LoginBPR','2025-11-24 14:48:04','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(121,'indra_maulana','fr_GetSystemDate','2025-11-24 14:51:23','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(122,'indra_maulana','fr_LoginBPR','2025-11-24 14:51:24','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(123,'indra_maulana','fr_GetSystemDate','2025-11-24 14:54:25','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(124,'indra_maulana','fr_LoginBPR','2025-11-24 14:54:26','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(125,'indra_maulana','fr_GetSystemDate','2025-11-24 15:05:31','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(126,'indra_maulana','fr_LoginBPR','2025-11-24 15:05:31','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(127,'indra_maulana','fr_GetSystemDate','2025-11-24 15:08:50','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(128,'indra_maulana','fr_LoginBPR','2025-11-24 15:08:50','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(129,'indra_maulana','fr_GetSystemDate','2025-11-24 15:18:58','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(130,'indra_maulana','fr_LoginBPR','2025-11-24 15:18:59','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(131,'indra_maulana','fr_GetSystemDate','2025-11-24 15:21:44','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(132,'indra_maulana','fr_LoginBPR','2025-11-24 15:21:45','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(133,'indra_maulana','fr_GetSystemDate','2025-11-24 15:30:41','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(134,'indra_maulana','fr_LoginBPR','2025-11-24 15:30:42','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(135,'indra_maulana','fr_GetSystemDate','2025-11-24 15:39:05','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(136,'indra_maulana','fr_LoginBPR','2025-11-24 15:39:06','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(137,'indra_maulana','fr_GetSystemDate','2025-11-24 15:43:52','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(138,'indra_maulana','fr_LoginBPR','2025-11-24 15:43:53','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(139,'indra_maulana','fr_GetSystemDate','2025-11-24 15:45:19','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(140,'indra_maulana','fr_LoginBPR','2025-11-24 15:45:19','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(141,'indra_maulana','fr_GetSystemDate','2025-11-24 15:47:25','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(142,'indra_maulana','fr_LoginBPR','2025-11-24 15:47:25','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(143,'indra_maulana','fr_GetSystemDate','2025-11-24 15:55:24','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(144,'indra_maulana','fr_LoginBPR','2025-11-24 15:55:25','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(145,'indra_maulana','fr_GetSystemDate','2025-11-24 15:56:47','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(146,'indra_maulana','fr_LoginBPR','2025-11-24 15:56:48','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(147,'indra_maulana','fr_GetSystemDate','2025-11-24 15:57:13','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(148,'indra_maulana','fr_LoginBPR','2025-11-24 15:57:14','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(149,'indra_maulana','fr_GetSystemDate','2025-11-24 15:57:52','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(150,'indra_maulana','fr_LoginBPR','2025-11-24 15:57:53','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(151,'indra_maulana','fr_GetSystemDate','2025-11-24 21:35:02','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(152,'indra_maulana','fr_LoginBPR','2025-11-24 21:35:03','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(153,'indra_maulana','fr_GetSystemDate','2025-11-24 21:37:00','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(154,'indra_maulana','fr_LoginBPR','2025-11-24 21:37:01','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(155,'indra_maulana','fr_GetSystemDate','2025-11-24 21:40:18','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(156,'indra_maulana','fr_LoginBPR','2025-11-24 21:40:19','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(157,'indra_maulana','fr_GetSystemDate','2025-11-24 21:47:34','Login Tgl System Sukses : indra_maulana Tgl System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(158,'indra_maulana','fr_LoginBPR','2025-11-24 21:47:35','Login Sukses : indra_maulana Tanggal System : 24 November 2025 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(159,'indra_maulana','fr_GetSystemDate','2025-11-29 06:32:25','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(160,'indra_maulana','fr_LoginBPR','2025-11-29 06:32:25','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(161,'indra_maulana','fr_GetSystemDate','2025-11-29 06:39:36','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(162,'indra_maulana','fr_LoginBPR','2025-11-29 06:39:37','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(163,'indra_maulana','fr_GetSystemDate','2025-11-29 06:40:24','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(164,'indra_maulana','fr_LoginBPR','2025-11-29 06:40:25','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(165,'indra_maulana','fr_GetSystemDate','2025-11-29 06:41:54','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(166,'indra_maulana','fr_LoginBPR','2025-11-29 06:41:54','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(167,'indra_maulana','fr_GetSystemDate','2025-11-29 06:43:42','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(168,'indra_maulana','fr_LoginBPR','2025-11-29 06:43:43','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(169,'indra_maulana','fr_GetSystemDate','2025-11-29 06:46:22','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(170,'indra_maulana','fr_LoginBPR','2025-11-29 06:46:22','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(171,'indra_maulana','fr_GetSystemDate','2025-11-29 07:35:02','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(172,'indra_maulana','fr_LoginBPR','2025-11-29 07:35:02','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(173,'indra_maulana','fr_GetSystemDate','2025-11-29 07:36:33','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(174,'indra_maulana','fr_LoginBPR','2025-11-29 07:36:33','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(175,'indra_maulana','fr_GetSystemDate','2025-11-29 07:37:29','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(176,'indra_maulana','fr_LoginBPR','2025-11-29 07:37:30','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(177,'indra_maulana','fr_GetSystemDate','2025-11-29 07:38:44','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(178,'indra_maulana','fr_LoginBPR','2025-11-29 07:38:45','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(179,'indra_maulana','fr_GetSystemDate','2025-11-29 08:46:26','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(180,'indra_maulana','fr_LoginBPR','2025-11-29 08:46:27','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(181,'indra_maulana','fr_GetSystemDate','2025-11-29 08:58:11','Login Tgl System Sukses : indra_maulana Tgl System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(182,'indra_maulana','fr_LoginBPR','2025-11-29 08:58:12','Login Sukses : indra_maulana Tanggal System : 29 November 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(183,'indra_maulana','fr_GetSystemDate','2025-12-02 09:35:09','Login Tgl System Sukses : indra_maulana Tgl System : 02 Desember 2025 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(184,'indra_maulana','fr_LoginBPR','2025-12-02 09:35:10','Login Sukses : indra_maulana Tanggal System : 02 Desember 2025 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(185,'indra_maulana','fr_GetSystemDate','2025-12-14 21:12:46','Login Tgl System Sukses : indra_maulana Tgl System : 15 Desember 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(186,'indra_maulana','fr_LoginBPR','2025-12-14 21:12:47','Login Sukses : indra_maulana Tanggal System : 15 Desember 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(187,'indra_maulana','fr_GetSystemDate','2025-12-14 21:19:24','Login Tgl System Sukses : indra_maulana Tgl System : 15 Desember 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(188,'indra_maulana','fr_LoginBPR','2025-12-14 21:19:24','Login Sukses : indra_maulana Tanggal System : 15 Desember 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(189,'indra_maulana','fr_GetSystemDate','2025-12-14 21:24:40','Login Tgl System Sukses : indra_maulana Tgl System : 15 Desember 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(190,'indra_maulana','fr_LoginBPR','2025-12-14 21:24:41','Login Sukses : indra_maulana Tanggal System : 15 Desember 2025 IP : 192.168.1.9 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(191,'indra_maulana','fr_GetSystemDate','2025-12-30 10:08:00','Login Tgl System Sukses : indra_maulana Tgl System : 30 Desember 2025 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(192,'indra_maulana','fr_LoginBPR','2025-12-30 10:08:00','Login Sukses : indra_maulana Tanggal System : 30 Desember 2025 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(193,'indra_maulana','fr_GetSystemDate','2026-02-10 19:26:30','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(194,'indra_maulana','fr_GetSystemDate','2026-02-10 19:26:37','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(195,'indra_maulana','fr_GetSystemDate','2026-02-10 19:27:01','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(196,'indra_maulana','fr_LoginBPR','2026-02-10 19:27:03','Login Sukses : indra_maulana Tanggal System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(197,'indra_maulana','fr_GetSystemDate','2026-02-10 20:15:42','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(198,'indra_maulana','fr_LoginBPR','2026-02-10 20:15:43','Login Sukses : indra_maulana Tanggal System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(199,'indra_maulana','fr_GetSystemDate','2026-02-10 20:18:41','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(200,'indra_maulana','fr_LoginBPR','2026-02-10 20:18:42','Login Sukses : indra_maulana Tanggal System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(201,'indra_maulana','fr_GetSystemDate','2026-02-10 21:42:12','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(202,'indra_maulana','fr_LoginBPR','2026-02-10 21:42:13','Login Sukses : indra_maulana Tanggal System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(203,'indra_maulana','fr_GetSystemDate','2026-02-10 21:43:22','Login Tgl System Sukses : indra_maulana Tgl System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(204,'indra_maulana','fr_LoginBPR','2026-02-10 21:43:23','Login Sukses : indra_maulana Tanggal System : 10 Pebruari 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(205,'indra_maulana','fr_GetSystemDate','2026-02-14 09:54:22','Login Tgl System Sukses : indra_maulana Tgl System : 14 Pebruari 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(206,'indra_maulana','fr_LoginBPR','2026-02-14 09:54:23','Login Sukses : indra_maulana Tanggal System : 14 Pebruari 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(207,'indra_maulana','fr_GetSystemDate','2026-02-14 09:58:36','Login Tgl System Sukses : indra_maulana Tgl System : 14 Pebruari 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(208,'indra_maulana','fr_LoginBPR','2026-02-14 09:58:37','Login Sukses : indra_maulana Tanggal System : 14 Pebruari 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(209,'indra_maulana','fr_GetSystemDate','2026-02-14 09:59:27','Login Tgl System Sukses : indra_maulana Tgl System : 14 Pebruari 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(210,'indra_maulana','fr_LoginBPR','2026-02-14 09:59:29','Login Sukses : indra_maulana Tanggal System : 14 Pebruari 2026 IP : 192.168.1.6 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(211,'indra_maulana','fr_GetSystemDate','2026-02-15 21:38:07','Login Tgl System Sukses : indra_maulana Tgl System : 16 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(212,'indra_maulana','fr_LoginBPR','2026-02-15 21:38:08','Login Sukses : indra_maulana Tanggal System : 16 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(213,'indra_maulana','fr_GetSystemDate','2026-02-15 21:44:25','Login Tgl System Sukses : indra_maulana Tgl System : 16 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(214,'indra_maulana','fr_LoginBPR','2026-02-15 21:44:26','Login Sukses : indra_maulana Tanggal System : 16 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(215,'indra_maulana','fr_GetSystemDate','2026-02-18 20:53:31','Login Tgl System Sukses : indra_maulana Tgl System : 18 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(216,'indra_maulana','fr_LoginBPR','2026-02-18 20:53:31','Login Sukses : indra_maulana Tanggal System : 18 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(217,'indra_maulana','fr_GetSystemDate','2026-02-18 20:56:43','Login Tgl System Sukses : indra_maulana Tgl System : 18 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(218,'indra_maulana','fr_LoginBPR','2026-02-18 20:56:44','Login Sukses : indra_maulana Tanggal System : 18 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(219,'indra_maulana','fr_GetSystemDate','2026-02-21 10:55:32','Login Tgl System Sukses : indra_maulana Tgl System : 21 Pebruari 2026 IP : 40.40.40.51 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(220,'indra_maulana','fr_LoginBPR','2026-02-21 10:55:33','Login Sukses : indra_maulana Tanggal System : 21 Pebruari 2026 IP : 40.40.40.51 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(221,'indra_maulana','fr_GetSystemDate','2026-02-24 05:12:12','Login Tgl System Sukses : indra_maulana Tgl System : 24 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(222,'indra_maulana','fr_LoginBPR','2026-02-24 05:12:13','Login Sukses : indra_maulana Tanggal System : 24 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(223,'indra_maulana','fr_GetSystemDate','2026-02-24 12:17:01','Login Tgl System Sukses : indra_maulana Tgl System : 24 Pebruari 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(224,'indra_maulana','fr_LoginBPR','2026-02-24 12:17:01','Login Sukses : indra_maulana Tanggal System : 24 Pebruari 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(225,'indra_maulana','fr_GetSystemDate','2026-02-24 12:37:05','Login Tgl System Sukses : indra_maulana Tgl System : 24 Pebruari 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(226,'indra_maulana','fr_LoginBPR','2026-02-24 12:37:06','Login Sukses : indra_maulana Tanggal System : 24 Pebruari 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(227,'indra_maulana','fr_GetSystemDate','2026-02-24 12:38:07','Login Tgl System Sukses : indra_maulana Tgl System : 24 Pebruari 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(228,'indra_maulana','fr_LoginBPR','2026-02-24 12:38:08','Login Sukses : indra_maulana Tanggal System : 24 Pebruari 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(229,'indra_maulana','fr_GetSystemDate','2026-02-24 20:08:14','Login Tgl System Sukses : indra_maulana Tgl System : 24 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(230,'indra_maulana','fr_LoginBPR','2026-02-24 20:08:14','Login Sukses : indra_maulana Tanggal System : 24 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(231,'indra_maulana','fr_GetSystemDate','2026-02-24 20:20:36','Login Tgl System Sukses : indra_maulana Tgl System : 24 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(232,'indra_maulana','fr_LoginBPR','2026-02-24 20:20:36','Login Sukses : indra_maulana Tanggal System : 24 Pebruari 2026 IP : 192.168.1.4 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(233,'indra_maulana','fr_GetSystemDate','2026-03-02 11:22:54','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(234,'indra_maulana','fr_LoginBPR','2026-03-02 11:22:56','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(235,'indra_maulana','fr_GetSystemDate','2026-03-02 11:23:45','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(236,'indra_maulana','fr_LoginBPR','2026-03-02 11:23:46','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(237,'indra_maulana','fr_GetSystemDate','2026-03-02 11:27:51','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(238,'indra_maulana','fr_LoginBPR','2026-03-02 11:27:51','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(239,'indra_maulana','fr_GetSystemDate','2026-03-02 11:44:08','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(240,'indra_maulana','fr_LoginBPR','2026-03-02 11:44:10','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(241,'indra_maulana','fr_GetSystemDate','2026-03-02 11:45:25','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(242,'indra_maulana','fr_LoginBPR','2026-03-02 11:45:26','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(243,'indra_maulana','fr_GetSystemDate','2026-03-02 12:06:45','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(244,'indra_maulana','fr_LoginBPR','2026-03-02 12:06:47','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(245,'indra_maulana','fr_GetSystemDate','2026-03-02 12:14:13','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(246,'indra_maulana','fr_LoginBPR','2026-03-02 12:14:15','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(247,'indra_maulana','fr_GetSystemDate','2026-03-02 12:18:08','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(248,'indra_maulana','fr_LoginBPR','2026-03-02 12:18:09','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(249,'indra_maulana','fr_GetSystemDate','2026-03-02 12:30:20','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(250,'indra_maulana','fr_LoginBPR','2026-03-02 12:30:22','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(251,'indra_maulana','fr_GetSystemDate','2026-03-02 12:54:38','Login Tgl System Sukses : indra_maulana Tgl System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(252,'indra_maulana','fr_LoginBPR','2026-03-02 12:54:40','Login Sukses : indra_maulana Tanggal System : 02 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(253,'indra_maulana','fr_GetSystemDate','2026-03-06 14:23:26','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(254,'indra_maulana','fr_LoginBPR','2026-03-06 14:23:27','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(255,'indra_maulana','fr_GetSystemDate','2026-03-06 14:29:05','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(256,'indra_maulana','fr_LoginBPR','2026-03-06 14:29:07','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(257,'indra_maulana','fr_LoginBPR','2026-03-06 14:35:41','Login Failed, ke : 1 : indra_maulana Tanggal System : 01 Oktober 2013 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(258,'indra_maulana','fr_GetSystemDate','2026-03-06 14:35:52','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(259,'indra_maulana','fr_LoginBPR','2026-03-06 14:35:53','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(260,'indra_maulana','fr_GetSystemDate','2026-03-06 14:48:42','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(261,'indra_maulana','fr_LoginBPR','2026-03-06 14:48:43','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(262,'indra_maulana','fr_GetSystemDate','2026-03-06 14:52:30','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(263,'indra_maulana','fr_LoginBPR','2026-03-06 14:52:31','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(264,'indra_maulana','fr_GetSystemDate','2026-03-06 14:59:21','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(265,'indra_maulana','fr_LoginBPR','2026-03-06 14:59:22','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(266,'indra_maulana','fr_GetSystemDate','2026-03-06 15:01:46','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(267,'indra_maulana','fr_LoginBPR','2026-03-06 15:01:47','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(268,'indra_maulana','fr_GetSystemDate','2026-03-06 15:07:22','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(269,'indra_maulana','fr_LoginBPR','2026-03-06 15:07:23','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(270,'indra_maulana','fr_GetSystemDate','2026-03-06 15:11:34','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(271,'indra_maulana','fr_LoginBPR','2026-03-06 15:11:35','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(272,'indra_maulana','fr_GetSystemDate','2026-03-06 15:53:21','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(273,'indra_maulana','fr_LoginBPR','2026-03-06 15:53:23','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(274,'indra_maulana','fr_LoginBPR','2026-03-06 16:03:12','Login Failed, ke : 1 : indra_maulana Tanggal System : 01 Oktober 2013 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(275,'indra_maulana','fr_GetSystemDate','2026-03-06 16:03:22','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(276,'indra_maulana','fr_LoginBPR','2026-03-06 16:03:23','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(277,'indra_maulana','fr_GetSystemDate','2026-03-06 16:13:46','Login Tgl System Sukses : indra_maulana Tgl System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(278,'indra_maulana','fr_LoginBPR','2026-03-06 16:13:47','Login Sukses : indra_maulana Tanggal System : 06 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(279,'indra_maulana','fr_GetSystemDate','2026-03-07 15:02:00','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(280,'indra_maulana','fr_LoginBPR','2026-03-07 15:02:01','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(281,'indra_maulana','fr_GetSystemDate','2026-03-07 15:12:18','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(282,'indra_maulana','fr_LoginBPR','2026-03-07 15:12:19','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(283,'indra_maulana','fr_GetSystemDate','2026-03-07 15:16:03','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(284,'indra_maulana','fr_LoginBPR','2026-03-07 15:16:04','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(285,'indra_maulana','fr_GetSystemDate','2026-03-07 15:32:55','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(286,'indra_maulana','fr_LoginBPR','2026-03-07 15:32:56','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(287,'indra_maulana','fr_GetSystemDate','2026-03-07 15:39:03','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(288,'indra_maulana','fr_LoginBPR','2026-03-07 15:39:04','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(289,'indra_maulana','fr_GetSystemDate','2026-03-07 15:48:38','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(290,'indra_maulana','fr_LoginBPR','2026-03-07 15:48:38','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(291,'indra_maulana','fr_GetSystemDate','2026-03-07 15:57:33','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(292,'indra_maulana','fr_LoginBPR','2026-03-07 15:57:33','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(293,'indra_maulana','fr_GetSystemDate','2026-03-07 16:07:21','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(294,'indra_maulana','fr_LoginBPR','2026-03-07 16:07:21','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(295,'indra_maulana','fr_GetSystemDate','2026-03-07 16:09:25','Login Tgl System Sukses : indra_maulana Tgl System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(296,'indra_maulana','fr_LoginBPR','2026-03-07 16:09:25','Login Sukses : indra_maulana Tanggal System : 07 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(297,'indra_maulana','fr_GetSystemDate','2026-03-08 07:36:05','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(298,'indra_maulana','fr_LoginBPR','2026-03-08 07:36:07','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(299,'indra_maulana','fr_GetSystemDate','2026-03-08 07:40:03','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(300,'indra_maulana','fr_LoginBPR','2026-03-08 07:40:03','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(301,'indra_maulana','fr_GetSystemDate','2026-03-08 07:46:25','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(302,'indra_maulana','fr_LoginBPR','2026-03-08 07:46:26','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(303,'indra_maulana','fr_GetSystemDate','2026-03-08 08:24:22','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(304,'indra_maulana','fr_LoginBPR','2026-03-08 08:24:23','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(305,'indra_maulana','fr_GetSystemDate','2026-03-08 08:57:17','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(306,'indra_maulana','fr_LoginBPR','2026-03-08 08:57:18','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(307,'indra_maulana','fr_GetSystemDate','2026-03-08 08:59:50','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(308,'indra_maulana','fr_LoginBPR','2026-03-08 08:59:51','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(309,'indra_maulana','fr_GetSystemDate','2026-03-08 09:03:22','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(310,'indra_maulana','fr_LoginBPR','2026-03-08 09:03:22','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(311,'indra_maulana','fr_GetSystemDate','2026-03-08 09:06:32','Login Tgl System Sukses : indra_maulana Tgl System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(312,'indra_maulana','fr_LoginBPR','2026-03-08 09:06:32','Login Sukses : indra_maulana Tanggal System : 09 Maret 2026 IP : 192.168.1.10 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(313,'indra_maulana','fr_GetSystemDate','2026-03-10 04:01:00','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(314,'indra_maulana','fr_LoginBPR','2026-03-10 04:01:01','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(315,'indra_maulana','fr_GetSystemDate','2026-03-10 04:03:34','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(316,'indra_maulana','fr_LoginBPR','2026-03-10 04:03:35','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(317,'indra_maulana','fr_GetSystemDate','2026-03-10 04:04:16','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(318,'indra_maulana','fr_LoginBPR','2026-03-10 04:04:16','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(319,'indra_maulana','fr_LoginBPR','2026-03-10 04:04:50','Login Failed, ke : 1 : indra_maulana Tanggal System : 01 Oktober 2013 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(320,'indra_maulana','fr_GetSystemDate','2026-03-10 04:05:02','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(321,'indra_maulana','fr_LoginBPR','2026-03-10 04:05:03','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(322,'indra_maulana','fr_GetSystemDate','2026-03-10 04:06:10','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(323,'indra_maulana','fr_LoginBPR','2026-03-10 04:06:11','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(324,'indra_maulana','fr_GetSystemDate','2026-03-10 04:10:08','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(325,'indra_maulana','fr_LoginBPR','2026-03-10 04:10:09','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(326,'indra_maulana','fr_GetSystemDate','2026-03-10 04:15:29','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(327,'indra_maulana','fr_LoginBPR','2026-03-10 04:15:30','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(328,'indra_maulana','fr_GetSystemDate','2026-03-10 04:21:18','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(329,'indra_maulana','fr_LoginBPR','2026-03-10 04:21:19','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(330,'indra_maulana','fr_GetSystemDate','2026-03-10 04:22:32','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(331,'indra_maulana','fr_LoginBPR','2026-03-10 04:22:33','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(332,'indra_maulana','fr_GetSystemDate','2026-03-10 04:52:08','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(333,'indra_maulana','fr_LoginBPR','2026-03-10 04:52:09','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(334,'indra_maulana','fr_GetSystemDate','2026-03-10 04:56:43','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(335,'indra_maulana','fr_LoginBPR','2026-03-10 04:56:44','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(336,'indra_maulana','fr_GetSystemDate','2026-03-10 04:57:58','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(337,'indra_maulana','fr_LoginBPR','2026-03-10 04:57:59','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(338,'indra_maulana','fr_GetSystemDate','2026-03-10 05:12:41','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(339,'indra_maulana','fr_LoginBPR','2026-03-10 05:12:42','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(340,'indra_maulana','fr_GetSystemDate','2026-03-10 05:17:17','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(341,'indra_maulana','fr_LoginBPR','2026-03-10 05:17:18','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(342,'indra_maulana','fr_GetSystemDate','2026-03-10 05:19:22','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(343,'indra_maulana','fr_LoginBPR','2026-03-10 05:19:23','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(344,'indra_maulana','fr_GetSystemDate','2026-03-10 05:27:28','Login Tgl System Sukses : indra_maulana Tgl System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(345,'indra_maulana','fr_LoginBPR','2026-03-10 05:27:29','Login Sukses : indra_maulana Tanggal System : 10 Maret 2026 IP : 192.168.1.7 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(346,'indra_maulana','fr_GetSystemDate','2026-03-12 09:45:03','Login Tgl System Sukses : indra_maulana Tgl System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(347,'indra_maulana','fr_LoginBPR','2026-03-12 09:45:04','Login Sukses : indra_maulana Tanggal System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(348,'indra_maulana','fr_GetSystemDate_1','2026-03-12 10:16:36','Login Tgl System Sukses : indra_maulana Tgl System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(349,'indra_maulana','fr_LoginBPR','2026-03-12 10:16:36','Login Sukses : indra_maulana Tanggal System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(350,'indra_maulana','fr_GetSystemDate_1','2026-03-12 10:22:30','Login Tgl System Sukses : indra_maulana Tgl System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(351,'indra_maulana','fr_LoginBPR','2026-03-12 10:22:31','Login Sukses : indra_maulana Tanggal System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(352,'indra_maulana','fr_GetSystemDate_1','2026-03-12 10:23:55','Login Tgl System Sukses : indra_maulana Tgl System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(353,'indra_maulana','fr_LoginBPR','2026-03-12 10:23:56','Login Sukses : indra_maulana Tanggal System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(354,'indra_maulana','fr_GetSystemDate_1','2026-03-12 10:30:43','Login Tgl System Sukses : indra_maulana Tgl System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(355,'indra_maulana','fr_LoginBPR','2026-03-12 10:30:44','Login Sukses : indra_maulana Tanggal System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(356,'indra_maulana','fr_GetSystemDate_1','2026-03-12 10:41:36','Login Tgl System Sukses : indra_maulana Tgl System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(357,'indra_maulana','fr_LoginBPR','2026-03-12 10:41:37','Login Sukses : indra_maulana Tanggal System : 12 Maret 2026 IP : 11.11.11.42 OS User : DH-IT INDRA',NULL,'1.0.0.1'),
(358,'indra_maulana','fr_GetSystemDate','2026-03-20 14:47:24','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(359,'indra_maulana','fr_LoginBPR','2026-03-20 14:47:24','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(360,'indra_maulana','fr_GetSystemDate','2026-03-20 14:52:47','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(361,'indra_maulana','fr_LoginBPR','2026-03-20 14:52:48','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(362,'indra_maulana','fr_GetSystemDate','2026-03-20 14:58:04','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(363,'indra_maulana','fr_LoginBPR','2026-03-20 14:58:05','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(364,'indra_maulana','fr_GetSystemDate','2026-03-20 14:59:01','Login Tgl System Sukses : indra_maulana Tgl System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(365,'indra_maulana','fr_LoginBPR','2026-03-20 14:59:02','Login Sukses : indra_maulana Tanggal System : 20 Maret 2026 IP : 192.168.0.116 OS User : DH-IT INDRA',NULL,'1.0.0.0');

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

/*Table structure for table `view_ltbprk_a0301_riwayat_pendirian_bpr` */

DROP TABLE IF EXISTS `view_ltbprk_a0301_riwayat_pendirian_bpr`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0301_riwayat_pendirian_bpr` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0301_riwayat_pendirian_bpr` */;

/*!50001 CREATE TABLE  `view_ltbprk_a0301_riwayat_pendirian_bpr`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nomor_akta_pendirian` varchar(50) ,
 `tanggal_akta_pendirian` date ,
 `nomor_perubahan_anggaran_dasar` varchar(50) ,
 `tanggal_perubahan_anggaran_dasar` date ,
 `nomor_pengesahan_dari_instansi` varchar(50) ,
 `tanggal_pengesahan_dari_instansi` date ,
 `tanggal_mulai_beroperasi` date ,
 `bidang_usaha_sesuai_anggaran_dasar` varchar(2000) ,
 `tempat_kedudukan` varchar(2000) ,
 `opini_akuntan_publik` varchar(2) ,
 `nama_akuntan_publik` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_a0304_penjelasan_npl` */

DROP TABLE IF EXISTS `view_ltbprk_a0304_penjelasan_npl`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0304_penjelasan_npl` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0304_penjelasan_npl` */;

/*!50001 CREATE TABLE  `view_ltbprk_a0304_penjelasan_npl`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `uraian` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_a0502_bidang_usaha` */

DROP TABLE IF EXISTS `view_ltbprk_a0502_bidang_usaha`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0502_bidang_usaha` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0502_bidang_usaha` */;

/*!50001 CREATE TABLE  `view_ltbprk_a0502_bidang_usaha`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `kategori_kegiatan_usaha` varchar(2) ,
 `jenis_produk` varchar(2) ,
 `nama_produk` varchar(2000) ,
 `uraian` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_a0506_kerja_sama_lembaga` */

DROP TABLE IF EXISTS `view_ltbprk_a0506_kerja_sama_lembaga`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0506_kerja_sama_lembaga` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0506_kerja_sama_lembaga` */;

/*!50001 CREATE TABLE  `view_ltbprk_a0506_kerja_sama_lembaga`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `referensi_lembaga` varchar(1) ,
 `nama_bank_lembaga_lain` varchar(2000) ,
 `sandi_bank` varchar(50) ,
 `npwp` varchar(25) ,
 `jenis_kerja_sama` varchar(2000) ,
 `uraian_kerja_sama` varchar(2000) ,
 `tanggal_mulai_kerja_sama` date 
)*/;

/*Table structure for table `view_ltbprk_a05072_kegiatan_pengembangan` */

DROP TABLE IF EXISTS `view_ltbprk_a05072_kegiatan_pengembangan`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a05072_kegiatan_pengembangan` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a05072_kegiatan_pengembangan` */;

/*!50001 CREATE TABLE  `view_ltbprk_a05072_kegiatan_pengembangan`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `kegiatan_pengembangan` varchar(2000) ,
 `tanggal_pelaksanaan` date ,
 `pihak_pelaksana` varchar(2) ,
 `kategori_peserta` varchar(2) ,
 `jumlah_peserta` int(11) ,
 `uraian_kegiatan` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_e0201_tugas_tanggung_jawab_direksi` */

DROP TABLE IF EXISTS `view_ltbprk_e0201_tugas_tanggung_jawab_direksi`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0201_tugas_tanggung_jawab_direksi` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0201_tugas_tanggung_jawab_direksi` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0201_tugas_tanggung_jawab_direksi`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `tugas_dan_tanggung_jawab` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris` */

DROP TABLE IF EXISTS `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `tugas_dan_tanggung_jawab` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_e0203_tugas_tanggung_jawab_komite` */

DROP TABLE IF EXISTS `view_ltbprk_e0203_tugas_tanggung_jawab_komite`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0203_tugas_tanggung_jawab_komite` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0203_tugas_tanggung_jawab_komite` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0203_tugas_tanggung_jawab_komite`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `komite` varchar(2) ,
 `tugas_dan_tanggung_jawab` varchar(2000) ,
 `program` varchar(2000) ,
 `realisasi` varchar(2000) ,
 `jumlah` int(11) 
)*/;

/*Table structure for table `view_ltbprk_e0204_struktur_independensi_anggota_komite` */

DROP TABLE IF EXISTS `view_ltbprk_e0204_struktur_independensi_anggota_komite`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0204_struktur_independensi_anggota_komite` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0204_struktur_independensi_anggota_komite` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0204_struktur_independensi_anggota_komite`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nama_anggota_komite` varchar(50) ,
 `nik` varchar(25) ,
 `keahlian` varchar(2000) ,
 `komite_audit` varchar(2) ,
 `komite_pemantau_risiko` varchar(2) ,
 `komite_remunerasi_dan_nominasi` varchar(2) ,
 `komite_management_risiko` varchar(2) ,
 `komite_lainnya` varchar(2) ,
 `pihak_independent` varchar(1) 
)*/;

/*Table structure for table `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */

DROP TABLE IF EXISTS `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `nama_kelompok_usaha_bpr` varchar(50) ,
 `persentase_kepemilikan` decimal(5,2) ,
 `persentase_kepemilikan_tahun` decimal(5,2) 
)*/;

/*Table structure for table `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */

DROP TABLE IF EXISTS `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `nama` varchar(50) ,
 `sandi_bank_lain` varchar(6) ,
 `nama_bank_perusahaan_lain` varchar(50) ,
 `persentase_kepemilikan` decimal(5,2) 
)*/;

/*Table structure for table `view_ltbprk_e0401_hubungan_keuangan_direksi_ps` */

DROP TABLE IF EXISTS `view_ltbprk_e0401_hubungan_keuangan_direksi_ps`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0401_hubungan_keuangan_direksi_ps` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0401_hubungan_keuangan_direksi_ps` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0401_hubungan_keuangan_direksi_ps`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `hubungan_keuangan_i_anggota` varchar(2000) ,
 `hubungan_keuangan_ii_anggota` varchar(2000) ,
 `hubungan_keuangan_iii_pemegang` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_e0402_hubungan_keluarga_direksi_ps` */

DROP TABLE IF EXISTS `view_ltbprk_e0402_hubungan_keluarga_direksi_ps`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0402_hubungan_keluarga_direksi_ps` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0402_hubungan_keluarga_direksi_ps` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0402_hubungan_keluarga_direksi_ps`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `hubungan_keluarga_i_anggota_direksi` varchar(2000) ,
 `hubungan_keluarga_ii_anggota_dewan_komisaris` varchar(2000) ,
 `hubungan_keluarga_iii_pemegang_saham` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_e0500_kebijakan_berdasarkan_rups` */

DROP TABLE IF EXISTS `view_ltbprk_e0500_kebijakan_berdasarkan_rups`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0500_kebijakan_berdasarkan_rups` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0500_kebijakan_berdasarkan_rups` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0500_kebijakan_berdasarkan_rups`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `direksi_jumlah_orang` int(11) ,
 `direksi_jumlah_keseluruhan` decimal(15,2) ,
 `dewan_komisaris_jumlah_orang` int(11) ,
 `dewan_komisaris_jumlah_keseluruhan` decimal(15,2) 
)*/;

/*Table structure for table `view_ltbprk_e0600_rasio_gaji_tinggi_rendah` */

DROP TABLE IF EXISTS `view_ltbprk_e0600_rasio_gaji_tinggi_rendah`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0600_rasio_gaji_tinggi_rendah` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0600_rasio_gaji_tinggi_rendah` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0600_rasio_gaji_tinggi_rendah`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `rasio_gaji_perbandingan` decimal(8,4) 
)*/;

/*Table structure for table `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */

DROP TABLE IF EXISTS `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `tanggal_rapat` date ,
 `jumlah_peserta` int(11) ,
 `topik_materi_pembahasan` varchar(2000) 
)*/;

/*Table structure for table `view_ltbprk_e0702_kehadiran_anggota_komisaris` */

DROP TABLE IF EXISTS `view_ltbprk_e0702_kehadiran_anggota_komisaris`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0702_kehadiran_anggota_komisaris` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0702_kehadiran_anggota_komisaris` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0702_kehadiran_anggota_komisaris`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `nik` varchar(25) ,
 `nama_anggota_dewan_komisaris` varchar(50) ,
 `frekuensi_kehadiran_fisik` int(11) ,
 `frekuensi_kehadiran` int(11) ,
 `tingkat_kehadiran` decimal(5,2) 
)*/;

/*Table structure for table `view_ltbprk_e0800_penyimpangan_internal` */

DROP TABLE IF EXISTS `view_ltbprk_e0800_penyimpangan_internal`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0800_penyimpangan_internal` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0800_penyimpangan_internal` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0800_penyimpangan_internal`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `anggota_direksi_tahun_sebelumnya` int(11) ,
 `anggota_direksi_tahun_laporan` int(11) ,
 `anggota_dewan_komisaris_tahun_sebelumnya` int(11) ,
 `anggota_dewan_komisaris_tahun_laporan` int(11) ,
 `pegawai_tetap_tahun_sebelumnya` int(11) ,
 `pegawai_tetap_tahun_laporan` int(11) ,
 `pegawai_tidak_tetap_tahun_sebelumnya` int(11) ,
 `pegawai_tidak_tetap_tahun_laporan` int(11) 
)*/;

/*Table structure for table `view_ltbprk_e0900_permasalahan_hukum` */

DROP TABLE IF EXISTS `view_ltbprk_e0900_permasalahan_hukum`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0900_permasalahan_hukum` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0900_permasalahan_hukum` */;

/*!50001 CREATE TABLE  `view_ltbprk_e0900_permasalahan_hukum`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `jumlah_perdata` int(11) ,
 `jumlah_pidana` int(11) 
)*/;

/*Table structure for table `view_ltbprk_e1000_transaksi_benturan_kepentingan` */

DROP TABLE IF EXISTS `view_ltbprk_e1000_transaksi_benturan_kepentingan`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e1000_transaksi_benturan_kepentingan` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e1000_transaksi_benturan_kepentingan` */;

/*!50001 CREATE TABLE  `view_ltbprk_e1000_transaksi_benturan_kepentingan`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `pihak_yang_memiliki_nama` varchar(50) ,
 `pihak_yang_memiliki_jabatan` varchar(50) ,
 `pihak_yang_memiliki_nik` varchar(25) ,
 `pengambil_keputusan_nama` varchar(50) ,
 `pengambil_keputusan_jabatan` varchar(50) ,
 `pengambil_keputusan_nik` varchar(25) ,
 `jenis_transaksi` varchar(100) ,
 `nilai_transaksi` decimal(15,2) ,
 `keterangan` varchar(200) 
)*/;

/*Table structure for table `view_ltbprk_e1100_pemberian_dana_sosial_politik` */

DROP TABLE IF EXISTS `view_ltbprk_e1100_pemberian_dana_sosial_politik`;

/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e1100_pemberian_dana_sosial_politik` */;
/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e1100_pemberian_dana_sosial_politik` */;

/*!50001 CREATE TABLE  `view_ltbprk_e1100_pemberian_dana_sosial_politik`(
 `flag_detail` varchar(3) ,
 `kode_komponen` varchar(2000) ,
 `tanggal_pelaksanaan` date ,
 `jenis_kegiatan_sosial_politik` varchar(2) ,
 `penjelasan_kegiatan` varchar(2000) ,
 `penerima_dana` varchar(100) ,
 `jumlah_rp` decimal(15,2) 
)*/;

/*View structure for view view_ltbprk_a0301_riwayat_pendirian_bpr */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0301_riwayat_pendirian_bpr` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0301_riwayat_pendirian_bpr` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_a0301_riwayat_pendirian_bpr` AS select `ltbprk_a0301_riwayat_pendirian_bpr`.`flag_detail` AS `flag_detail`,`ltbprk_a0301_riwayat_pendirian_bpr`.`kode_komponen` AS `kode_komponen`,`ltbprk_a0301_riwayat_pendirian_bpr`.`nomor_akta_pendirian` AS `nomor_akta_pendirian`,`ltbprk_a0301_riwayat_pendirian_bpr`.`tanggal_akta_pendirian` AS `tanggal_akta_pendirian`,`ltbprk_a0301_riwayat_pendirian_bpr`.`nomor_perubahan_anggaran_dasar` AS `nomor_perubahan_anggaran_dasar`,`ltbprk_a0301_riwayat_pendirian_bpr`.`tanggal_perubahan_anggaran_dasar` AS `tanggal_perubahan_anggaran_dasar`,`ltbprk_a0301_riwayat_pendirian_bpr`.`nomor_pengesahan_dari_instansi` AS `nomor_pengesahan_dari_instansi`,`ltbprk_a0301_riwayat_pendirian_bpr`.`tanggal_pengesahan_dari_instansi` AS `tanggal_pengesahan_dari_instansi`,`ltbprk_a0301_riwayat_pendirian_bpr`.`tanggal_mulai_beroperasi` AS `tanggal_mulai_beroperasi`,`ltbprk_a0301_riwayat_pendirian_bpr`.`bidang_usaha_sesuai_anggaran_dasar` AS `bidang_usaha_sesuai_anggaran_dasar`,`ltbprk_a0301_riwayat_pendirian_bpr`.`tempat_kedudukan` AS `tempat_kedudukan`,`ltbprk_a0301_riwayat_pendirian_bpr`.`opini_akuntan_publik` AS `opini_akuntan_publik`,`ltbprk_a0301_riwayat_pendirian_bpr`.`nama_akuntan_publik` AS `nama_akuntan_publik` from `ltbprk_a0301_riwayat_pendirian_bpr` union all select `ltbprk_a0301_riwayat_pendirian_bpr_footer`.`flag_detail` AS `flag_detail`,`ltbprk_a0301_riwayat_pendirian_bpr_footer`.`keterangan` AS `kode_komponen`,'' AS `nomor_akta_pendirian`,NULL AS `tanggal_akta_pendirian`,'' AS `nomor_perubahan_anggaran_dasar`,NULL AS `tanggal_perubahan_anggaran_dasar`,'' AS `nomor_pengesahan_dari_instansi`,NULL AS `tanggal_pengesahan_dari_instansi`,NULL AS `tanggal_mulai_beroperasi`,'' AS `bidang_usaha_sesuai_anggaran_dasar`,'' AS `tempat_kedudukan`,'' AS `opini_akuntan_publik`,'' AS `nama_akuntan_publik` from `ltbprk_a0301_riwayat_pendirian_bpr_footer` */;

/*View structure for view view_ltbprk_a0304_penjelasan_npl */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0304_penjelasan_npl` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0304_penjelasan_npl` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_a0304_penjelasan_npl` AS select `ltbprk_a0304_penjelasan_npl`.`flag_detail` AS `flag_detail`,`ltbprk_a0304_penjelasan_npl`.`kode_komponen` AS `kode_komponen`,`ltbprk_a0304_penjelasan_npl`.`uraian` AS `uraian` from `ltbprk_a0304_penjelasan_npl` union all select `ltbprk_a0304_penjelasan_npl_footer`.`flag_detail` AS `flag_detail`,`ltbprk_a0304_penjelasan_npl_footer`.`keterangan` AS `kode_komponen`,'' AS `uraian` from `ltbprk_a0304_penjelasan_npl_footer` */;

/*View structure for view view_ltbprk_a0502_bidang_usaha */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0502_bidang_usaha` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0502_bidang_usaha` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_a0502_bidang_usaha` AS select `ltbprk_a0502_bidang_usaha`.`flag_detail` AS `flag_detail`,`ltbprk_a0502_bidang_usaha`.`kode_komponen` AS `kode_komponen`,`ltbprk_a0502_bidang_usaha`.`kategori_kegiatan_usaha` AS `kategori_kegiatan_usaha`,`ltbprk_a0502_bidang_usaha`.`jenis_produk` AS `jenis_produk`,`ltbprk_a0502_bidang_usaha`.`nama_produk` AS `nama_produk`,`ltbprk_a0502_bidang_usaha`.`uraian` AS `uraian` from `ltbprk_a0502_bidang_usaha` union all select `ltbprk_a0502_bidang_usaha_footer`.`flag_detail` AS `flag_detail`,`ltbprk_a0502_bidang_usaha_footer`.`keterangan` AS `kode_komponen`,'' AS `kategori_kegiatan_usaha`,'' AS `jenis_produk`,'' AS `nama_produk`,'' AS `uraian` from `ltbprk_a0502_bidang_usaha_footer` */;

/*View structure for view view_ltbprk_a0506_kerja_sama_lembaga */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a0506_kerja_sama_lembaga` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a0506_kerja_sama_lembaga` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_a0506_kerja_sama_lembaga` AS select `ltbprk_a0506_kerja_sama_lembaga`.`flag_detail` AS `flag_detail`,`ltbprk_a0506_kerja_sama_lembaga`.`kode_komponen` AS `kode_komponen`,`ltbprk_a0506_kerja_sama_lembaga`.`referensi_lembaga` AS `referensi_lembaga`,`ltbprk_a0506_kerja_sama_lembaga`.`nama_bank_lembaga_lain` AS `nama_bank_lembaga_lain`,`ltbprk_a0506_kerja_sama_lembaga`.`sandi_bank` AS `sandi_bank`,`ltbprk_a0506_kerja_sama_lembaga`.`npwp` AS `npwp`,`ltbprk_a0506_kerja_sama_lembaga`.`jenis_kerja_sama` AS `jenis_kerja_sama`,`ltbprk_a0506_kerja_sama_lembaga`.`uraian_kerja_sama` AS `uraian_kerja_sama`,`ltbprk_a0506_kerja_sama_lembaga`.`tanggal_mulai_kerja_sama` AS `tanggal_mulai_kerja_sama` from `ltbprk_a0506_kerja_sama_lembaga` union all select `ltbprk_a0506_kerja_sama_lembaga_footer`.`flag_detail` AS `flag_detail`,`ltbprk_a0506_kerja_sama_lembaga_footer`.`keterangan` AS `kode_komponen`,'' AS `referensi_lembaga`,'' AS `nama_bank_lembaga_lain`,'' AS `sandi_bank`,'' AS `npwp`,'' AS `jenis_kerja_sama`,'' AS `uraian_kerja_sama`,NULL AS `tanggal_mulai_kerja_sama` from `ltbprk_a0506_kerja_sama_lembaga_footer` */;

/*View structure for view view_ltbprk_a05072_kegiatan_pengembangan */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_a05072_kegiatan_pengembangan` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_a05072_kegiatan_pengembangan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_a05072_kegiatan_pengembangan` AS select `ltbprk_a05072_kegiatan_pengembangan`.`flag_detail` AS `flag_detail`,`ltbprk_a05072_kegiatan_pengembangan`.`kode_komponen` AS `kode_komponen`,`ltbprk_a05072_kegiatan_pengembangan`.`kegiatan_pengembangan` AS `kegiatan_pengembangan`,`ltbprk_a05072_kegiatan_pengembangan`.`tanggal_pelaksanaan` AS `tanggal_pelaksanaan`,`ltbprk_a05072_kegiatan_pengembangan`.`pihak_pelaksana` AS `pihak_pelaksana`,`ltbprk_a05072_kegiatan_pengembangan`.`kategori_peserta` AS `kategori_peserta`,`ltbprk_a05072_kegiatan_pengembangan`.`jumlah_peserta` AS `jumlah_peserta`,`ltbprk_a05072_kegiatan_pengembangan`.`uraian_kegiatan` AS `uraian_kegiatan` from `ltbprk_a05072_kegiatan_pengembangan` union all select `ltbprk_a05072_kegiatan_pengembangan_footer`.`flag_detail` AS `flag_detail`,`ltbprk_a05072_kegiatan_pengembangan_footer`.`keterangan` AS `kode_komponen`,'' AS `kegiatan_pengembangan`,NULL AS `tanggal_pelaksanaan`,'' AS `pihak_pelaksana`,'' AS `kategori_peserta`,0 AS `jumlah_peserta`,'' AS `uraian_kegiatan` from `ltbprk_a05072_kegiatan_pengembangan_footer` */;

/*View structure for view view_ltbprk_e0201_tugas_tanggung_jawab_direksi */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0201_tugas_tanggung_jawab_direksi` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0201_tugas_tanggung_jawab_direksi` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0201_tugas_tanggung_jawab_direksi` AS select `ltbprk_e0201_tugas_tanggung_jawab_direksi`.`flag_detail` AS `flag_detail`,`ltbprk_e0201_tugas_tanggung_jawab_direksi`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0201_tugas_tanggung_jawab_direksi`.`nik` AS `nik`,`ltbprk_e0201_tugas_tanggung_jawab_direksi`.`tugas_dan_tanggung_jawab` AS `tugas_dan_tanggung_jawab` from `ltbprk_e0201_tugas_tanggung_jawab_direksi` union all select `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0201_tugas_tanggung_jawab_direksi_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `tugas_dan_tanggung_jawab` from `ltbprk_e0201_tugas_tanggung_jawab_direksi_footer` */;

/*View structure for view view_ltbprk_e0202_tugas_tanggung_jawab_komisaris */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0202_tugas_tanggung_jawab_komisaris` AS select `ltbprk_e0202_tugas_tanggung_jawab_komisaris`.`flag_detail` AS `flag_detail`,`ltbprk_e0202_tugas_tanggung_jawab_komisaris`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0202_tugas_tanggung_jawab_komisaris`.`nik` AS `nik`,`ltbprk_e0202_tugas_tanggung_jawab_komisaris`.`tugas_dan_tanggung_jawab` AS `tugas_dan_tanggung_jawab` from `ltbprk_e0202_tugas_tanggung_jawab_komisaris` union all select `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `tugas_dan_tanggung_jawab` from `ltbprk_e0202_tugas_tanggung_jawab_komisaris_footer` */;

/*View structure for view view_ltbprk_e0203_tugas_tanggung_jawab_komite */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0203_tugas_tanggung_jawab_komite` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0203_tugas_tanggung_jawab_komite` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0203_tugas_tanggung_jawab_komite` AS select `ltbprk_e0203_tugas_tanggung_jawab_komite`.`flag_detail` AS `flag_detail`,`ltbprk_e0203_tugas_tanggung_jawab_komite`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0203_tugas_tanggung_jawab_komite`.`komite` AS `komite`,`ltbprk_e0203_tugas_tanggung_jawab_komite`.`tugas_dan_tanggung_jawab` AS `tugas_dan_tanggung_jawab`,`ltbprk_e0203_tugas_tanggung_jawab_komite`.`program` AS `program`,`ltbprk_e0203_tugas_tanggung_jawab_komite`.`realisasi` AS `realisasi`,`ltbprk_e0203_tugas_tanggung_jawab_komite`.`jumlah` AS `jumlah` from `ltbprk_e0203_tugas_tanggung_jawab_komite` union all select `ltbprk_e0203_tugas_tanggung_jawab_komite_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0203_tugas_tanggung_jawab_komite_footer`.`keterangan` AS `kode_komponen`,'' AS `komite`,'' AS `tugas_dan_tanggung_jawab`,'' AS `program`,'' AS `realisasi`,0 AS `jumlah` from `ltbprk_e0203_tugas_tanggung_jawab_komite_footer` */;

/*View structure for view view_ltbprk_e0204_struktur_independensi_anggota_komite */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0204_struktur_independensi_anggota_komite` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0204_struktur_independensi_anggota_komite` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0204_struktur_independensi_anggota_komite` AS select `ltbprk_e0204_struktur_independensi_anggota_komite`.`flag_detail` AS `flag_detail`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`nama_anggota_komite` AS `nama_anggota_komite`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`nik` AS `nik`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`keahlian` AS `keahlian`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`komite_audit` AS `komite_audit`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`komite_pemantau_risiko` AS `komite_pemantau_risiko`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`komite_remunerasi_dan_nominasi` AS `komite_remunerasi_dan_nominasi`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`komite_management_risiko` AS `komite_management_risiko`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`komite_lainnya` AS `komite_lainnya`,`ltbprk_e0204_struktur_independensi_anggota_komite`.`pihak_independent` AS `pihak_independent` from `ltbprk_e0204_struktur_independensi_anggota_komite` union all select `ltbprk_e0204_struktur_independensi_anggota_komite_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0204_struktur_independensi_anggota_komite_footer`.`keterangan` AS `kode_komponen`,'' AS `nama_anggota_komite`,'' AS `nik`,'' AS `keahlian`,'' AS `komite_audit`,'' AS `komite_pemantau_risiko`,'' AS `komite_remunerasi_dan_nominasi`,'' AS `komite_management_risiko`,'' AS `komite_lainnya`,'' AS `pihak_independent` from `ltbprk_e0204_struktur_independensi_anggota_komite_footer` */;

/*View structure for view view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0302_kepemilikan_saham_kelompok_usaha` AS select `ltbprk_e0302_kepemilikan_saham_kelompok_usaha`.`flag_detail` AS `flag_detail`,`ltbprk_e0302_kepemilikan_saham_kelompok_usaha`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0302_kepemilikan_saham_kelompok_usaha`.`nik` AS `nik`,`ltbprk_e0302_kepemilikan_saham_kelompok_usaha`.`nama_kelompok_usaha_bpr` AS `nama_kelompok_usaha_bpr`,`ltbprk_e0302_kepemilikan_saham_kelompok_usaha`.`persentase_kepemilikan` AS `persentase_kepemilikan`,`ltbprk_e0302_kepemilikan_saham_kelompok_usaha`.`persentase_kepemilikan_tahun` AS `persentase_kepemilikan_tahun` from `ltbprk_e0302_kepemilikan_saham_kelompok_usaha` union all select `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `nama_kelompok_usaha_bpr`,0.00 AS `persentase_kepemilikan`,0.00 AS `persentase_kepemilikan_tahun` from `ltbprk_e0302_kepemilikan_saham_kelompok_usaha_footer` */;

/*View structure for view view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0303_kepemilikan_saham_perusahaan_lain` AS select `ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`flag_detail` AS `flag_detail`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`nik` AS `nik`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`nama` AS `nama`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`sandi_bank_lain` AS `sandi_bank_lain`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`nama_bank_perusahaan_lain` AS `nama_bank_perusahaan_lain`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain`.`persentase_kepemilikan` AS `persentase_kepemilikan` from `ltbprk_e0303_kepemilikan_saham_perusahaan_lain` union all select `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `nama`,'' AS `sandi_bank_lain`,'' AS `nama_bank_perusahaan_lain`,0.00 AS `persentase_kepemilikan` from `ltbprk_e0303_kepemilikan_saham_perusahaan_lain_footer` */;

/*View structure for view view_ltbprk_e0401_hubungan_keuangan_direksi_ps */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0401_hubungan_keuangan_direksi_ps` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0401_hubungan_keuangan_direksi_ps` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0401_hubungan_keuangan_direksi_ps` AS select `ltbprk_e0401_hubungan_keuangan_direksi_ps`.`flag_detail` AS `flag_detail`,`ltbprk_e0401_hubungan_keuangan_direksi_ps`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0401_hubungan_keuangan_direksi_ps`.`nik` AS `nik`,`ltbprk_e0401_hubungan_keuangan_direksi_ps`.`hubungan_keuangan_i_anggota` AS `hubungan_keuangan_i_anggota`,`ltbprk_e0401_hubungan_keuangan_direksi_ps`.`hubungan_keuangan_ii_anggota` AS `hubungan_keuangan_ii_anggota`,`ltbprk_e0401_hubungan_keuangan_direksi_ps`.`hubungan_keuangan_iii_pemegang` AS `hubungan_keuangan_iii_pemegang` from `ltbprk_e0401_hubungan_keuangan_direksi_ps` union all select `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0401_hubungan_keuangan_direksi_ps_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `hubungan_keuangan_i_anggota`,'' AS `hubungan_keuangan_ii_anggota`,'' AS `hubungan_keuangan_iii_pemegang` from `ltbprk_e0401_hubungan_keuangan_direksi_ps_footer` */;

/*View structure for view view_ltbprk_e0402_hubungan_keluarga_direksi_ps */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0402_hubungan_keluarga_direksi_ps` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0402_hubungan_keluarga_direksi_ps` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0402_hubungan_keluarga_direksi_ps` AS select `ltbprk_e0402_hubungan_keluarga_direksi_ps`.`flag_detail` AS `flag_detail`,`ltbprk_e0402_hubungan_keluarga_direksi_ps`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0402_hubungan_keluarga_direksi_ps`.`nik` AS `nik`,`ltbprk_e0402_hubungan_keluarga_direksi_ps`.`hubungan_keluarga_i_anggota_direksi` AS `hubungan_keluarga_i_anggota_direksi`,`ltbprk_e0402_hubungan_keluarga_direksi_ps`.`hubungan_keluarga_ii_anggota_dewan_komisaris` AS `hubungan_keluarga_ii_anggota_dewan_komisaris`,`ltbprk_e0402_hubungan_keluarga_direksi_ps`.`hubungan_keluarga_iii_pemegang_saham` AS `hubungan_keluarga_iii_pemegang_saham` from `ltbprk_e0402_hubungan_keluarga_direksi_ps` union all select `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0402_hubungan_keluarga_direksi_ps_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `hubungan_keluarga_i_anggota_direksi`,'' AS `hubungan_keluarga_ii_anggota_dewan_komisaris`,'' AS `hubungan_keluarga_iii_pemegang_saham` from `ltbprk_e0402_hubungan_keluarga_direksi_ps_footer` */;

/*View structure for view view_ltbprk_e0500_kebijakan_berdasarkan_rups */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0500_kebijakan_berdasarkan_rups` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0500_kebijakan_berdasarkan_rups` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0500_kebijakan_berdasarkan_rups` AS select `ltbprk_e0500_kebijakan_berdasarkan_rups`.`flag_detail` AS `flag_detail`,`ltbprk_e0500_kebijakan_berdasarkan_rups`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0500_kebijakan_berdasarkan_rups`.`direksi_jumlah_orang` AS `direksi_jumlah_orang`,`ltbprk_e0500_kebijakan_berdasarkan_rups`.`direksi_jumlah_keseluruhan` AS `direksi_jumlah_keseluruhan`,`ltbprk_e0500_kebijakan_berdasarkan_rups`.`dewan_komisaris_jumlah_orang` AS `dewan_komisaris_jumlah_orang`,`ltbprk_e0500_kebijakan_berdasarkan_rups`.`dewan_komisaris_jumlah_keseluruhan` AS `dewan_komisaris_jumlah_keseluruhan` from `ltbprk_e0500_kebijakan_berdasarkan_rups` union all select `ltbprk_e0500_kebijakan_berdasarkan_rups_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0500_kebijakan_berdasarkan_rups_footer`.`keterangan` AS `kode_komponen`,0 AS `direksi_jumlah_orang`,0.00 AS `direksi_jumlah_keseluruhan`,0 AS `dewan_komisaris_jumlah_orang`,0.00 AS `dewan_komisaris_jumlah_keseluruhan` from `ltbprk_e0500_kebijakan_berdasarkan_rups_footer` */;

/*View structure for view view_ltbprk_e0600_rasio_gaji_tinggi_rendah */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0600_rasio_gaji_tinggi_rendah` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0600_rasio_gaji_tinggi_rendah` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0600_rasio_gaji_tinggi_rendah` AS select `ltbprk_e0600_rasio_gaji_tinggi_rendah`.`flag_detail` AS `flag_detail`,`ltbprk_e0600_rasio_gaji_tinggi_rendah`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0600_rasio_gaji_tinggi_rendah`.`rasio_gaji_perbandingan` AS `rasio_gaji_perbandingan` from `ltbprk_e0600_rasio_gaji_tinggi_rendah` union all select `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0600_rasio_gaji_tinggi_rendah_footer`.`keterangan` AS `kode_komponen`,0.00 AS `rasio_gaji_perbandingan` from `ltbprk_e0600_rasio_gaji_tinggi_rendah_footer` */;

/*View structure for view view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` AS select `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`.`flag_detail` AS `flag_detail`,`ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`.`tanggal_rapat` AS `tanggal_rapat`,`ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`.`jumlah_peserta` AS `jumlah_peserta`,`ltbprk_e0701_pelaksanaan_rapat_dalam_setahun`.`topik_materi_pembahasan` AS `topik_materi_pembahasan` from `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun` union all select `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer`.`keterangan` AS `kode_komponen`,NULL AS `tanggal_rapat`,0 AS `jumlah_peserta`,' ' AS `topik_materi_pembahasan` from `ltbprk_e0701_pelaksanaan_rapat_dalam_setahun_footer` */;

/*View structure for view view_ltbprk_e0702_kehadiran_anggota_komisaris */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0702_kehadiran_anggota_komisaris` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0702_kehadiran_anggota_komisaris` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0702_kehadiran_anggota_komisaris` AS select `ltbprk_e0702_kehadiran_anggota_komisaris`.`flag_detail` AS `flag_detail`,`ltbprk_e0702_kehadiran_anggota_komisaris`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0702_kehadiran_anggota_komisaris`.`nik` AS `nik`,`ltbprk_e0702_kehadiran_anggota_komisaris`.`nama_anggota_dewan_komisaris` AS `nama_anggota_dewan_komisaris`,`ltbprk_e0702_kehadiran_anggota_komisaris`.`frekuensi_kehadiran_fisik` AS `frekuensi_kehadiran_fisik`,`ltbprk_e0702_kehadiran_anggota_komisaris`.`frekuensi_kehadiran` AS `frekuensi_kehadiran`,`ltbprk_e0702_kehadiran_anggota_komisaris`.`tingkat_kehadiran` AS `tingkat_kehadiran` from `ltbprk_e0702_kehadiran_anggota_komisaris` union all select `ltbprk_e0702_kehadiran_anggota_komisaris_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0702_kehadiran_anggota_komisaris_footer`.`keterangan` AS `kode_komponen`,'' AS `nik`,'' AS `nama_anggota_dewan_komisaris`,0 AS `frekuensi_kehadiran_fisik`,0 AS `frekuensi_kehadiran`,0 AS `tingkat_kehadiran` from `ltbprk_e0702_kehadiran_anggota_komisaris_footer` */;

/*View structure for view view_ltbprk_e0800_penyimpangan_internal */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0800_penyimpangan_internal` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0800_penyimpangan_internal` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0800_penyimpangan_internal` AS select `ltbprk_e0800_penyimpangan_internal`.`flag_detail` AS `flag_detail`,`ltbprk_e0800_penyimpangan_internal`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0800_penyimpangan_internal`.`anggota_direksi_tahun_sebelumnya` AS `anggota_direksi_tahun_sebelumnya`,`ltbprk_e0800_penyimpangan_internal`.`anggota_direksi_tahun_laporan` AS `anggota_direksi_tahun_laporan`,`ltbprk_e0800_penyimpangan_internal`.`anggota_dewan_komisaris_tahun_sebelumnya` AS `anggota_dewan_komisaris_tahun_sebelumnya`,`ltbprk_e0800_penyimpangan_internal`.`anggota_dewan_komisaris_tahun_laporan` AS `anggota_dewan_komisaris_tahun_laporan`,`ltbprk_e0800_penyimpangan_internal`.`pegawai_tetap_tahun_sebelumnya` AS `pegawai_tetap_tahun_sebelumnya`,`ltbprk_e0800_penyimpangan_internal`.`pegawai_tetap_tahun_laporan` AS `pegawai_tetap_tahun_laporan`,`ltbprk_e0800_penyimpangan_internal`.`pegawai_tidak_tetap_tahun_sebelumnya` AS `pegawai_tidak_tetap_tahun_sebelumnya`,`ltbprk_e0800_penyimpangan_internal`.`pegawai_tidak_tetap_tahun_laporan` AS `pegawai_tidak_tetap_tahun_laporan` from `ltbprk_e0800_penyimpangan_internal` union all select `ltbprk_e0800_penyimpangan_internal_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0800_penyimpangan_internal_footer`.`keterangan` AS `kode_komponen`,0 AS `anggota_direksi_tahun_sebelumnya`,0 AS `anggota_direksi_tahun_laporan`,0 AS `anggota_dewan_komisaris_tahun_sebelumnya`,0 AS `anggota_dewan_komisaris_tahun_laporan`,0 AS `pegawai_tetap_tahun_sebelumnya`,0 AS `pegawai_tetap_tahun_laporan`,0 AS `pegawai_tidak_tetap_tahun_sebelumnya`,0 AS `pegawai_tidak_tetap_tahun_laporan` from `ltbprk_e0800_penyimpangan_internal_footer` */;

/*View structure for view view_ltbprk_e0900_permasalahan_hukum */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e0900_permasalahan_hukum` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e0900_permasalahan_hukum` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e0900_permasalahan_hukum` AS select `ltbprk_e0900_permasalahan_hukum`.`flag_detail` AS `flag_detail`,`ltbprk_e0900_permasalahan_hukum`.`kode_komponen` AS `kode_komponen`,`ltbprk_e0900_permasalahan_hukum`.`jumlah_perdata` AS `jumlah_perdata`,`ltbprk_e0900_permasalahan_hukum`.`jumlah_pidana` AS `jumlah_pidana` from `ltbprk_e0900_permasalahan_hukum` union all select `ltbprk_e0900_permasalahan_hukum_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e0900_permasalahan_hukum_footer`.`keterangan` AS `kode_komponen`,0 AS `jumlah_perdata`,0 AS `jumlah_pidana` from `ltbprk_e0900_permasalahan_hukum_footer` */;

/*View structure for view view_ltbprk_e1000_transaksi_benturan_kepentingan */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e1000_transaksi_benturan_kepentingan` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e1000_transaksi_benturan_kepentingan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e1000_transaksi_benturan_kepentingan` AS select `ltbprk_e1000_transaksi_benturan_kepentingan`.`flag_detail` AS `flag_detail`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`kode_komponen` AS `kode_komponen`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`pihak_yang_memiliki_nama` AS `pihak_yang_memiliki_nama`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`pihak_yang_memiliki_jabatan` AS `pihak_yang_memiliki_jabatan`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`pihak_yang_memiliki_nik` AS `pihak_yang_memiliki_nik`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`pengambil_keputusan_nama` AS `pengambil_keputusan_nama`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`pengambil_keputusan_jabatan` AS `pengambil_keputusan_jabatan`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`pengambil_keputusan_nik` AS `pengambil_keputusan_nik`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`jenis_transaksi` AS `jenis_transaksi`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`nilai_transaksi` AS `nilai_transaksi`,`ltbprk_e1000_transaksi_benturan_kepentingan`.`keterangan` AS `keterangan` from `ltbprk_e1000_transaksi_benturan_kepentingan` union all select `ltbprk_e1000_transaksi_benturan_kepentingan_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e1000_transaksi_benturan_kepentingan_footer`.`keterangan` AS `kode_komponen`,'' AS `pihak_yang_memiliki_nama`,'' AS `pihak_yang_memiliki_jabatan`,'' AS `pihak_yang_memiliki_nik`,'' AS `pengambil_keputusan_nama`,'' AS `pengambil_keputusan_jabatan`,'' AS `pengambil_keputusan_nik`,'' AS `jenis_transaksi`,0.00 AS `nilai_transaksi`,'' AS `keterangan` from `ltbprk_e1000_transaksi_benturan_kepentingan_footer` */;

/*View structure for view view_ltbprk_e1100_pemberian_dana_sosial_politik */

/*!50001 DROP TABLE IF EXISTS `view_ltbprk_e1100_pemberian_dana_sosial_politik` */;
/*!50001 DROP VIEW IF EXISTS `view_ltbprk_e1100_pemberian_dana_sosial_politik` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_ltbprk_e1100_pemberian_dana_sosial_politik` AS select `ltbprk_e1100_pemberian_dana_sosial_politik`.`flag_detail` AS `flag_detail`,`ltbprk_e1100_pemberian_dana_sosial_politik`.`kode_komponen` AS `kode_komponen`,`ltbprk_e1100_pemberian_dana_sosial_politik`.`tanggal_pelaksanaan` AS `tanggal_pelaksanaan`,`ltbprk_e1100_pemberian_dana_sosial_politik`.`jenis_kegiatan_sosial_politik` AS `jenis_kegiatan_sosial_politik`,`ltbprk_e1100_pemberian_dana_sosial_politik`.`penjelasan_kegiatan` AS `penjelasan_kegiatan`,`ltbprk_e1100_pemberian_dana_sosial_politik`.`penerima_dana` AS `penerima_dana`,`ltbprk_e1100_pemberian_dana_sosial_politik`.`jumlah_rp` AS `jumlah_rp` from `ltbprk_e1100_pemberian_dana_sosial_politik` union all select `ltbprk_e1100_pemberian_dana_sosial_politik_footer`.`flag_detail` AS `flag_detail`,`ltbprk_e1100_pemberian_dana_sosial_politik_footer`.`keterangan` AS `kode_komponen`,NULL AS `tanggal_pelaksanaan`,'' AS `jenis_kegiatan_sosial_politik`,'' AS `penjelasan_kegiatan`,'' AS `penerima_dana`,0.00 AS `jumlah_rp` from `ltbprk_e1100_pemberian_dana_sosial_politik_footer` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
