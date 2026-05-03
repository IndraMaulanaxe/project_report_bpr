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

/*Table structure for table `apolo_f0600_kredit` */

DROP TABLE IF EXISTS `apolo_f0600_kredit`;

CREATE TABLE `apolo_f0600_kredit` (
  `sandi_kantor` char(3) NOT NULL,
  `nasabah_id` varchar(20) NOT NULL,
  `no_identitas` varchar(25) NOT NULL,
  `kode_kelompok_kredit` varchar(15) DEFAULT NULL,
  `no_rekening` varchar(25) NOT NULL,
  `jenis` char(2) NOT NULL COMMENT '# ref sandi sifat kredit',
  `status_restrukturisasi` char(2) NOT NULL COMMENT '# ref sandi status restrukturasi',
  `jenis_penggunaan` char(2) NOT NULL COMMENT '# ref sandi jenis penggunaan',
  `hubungan_bank` char(2) NOT NULL COMMENT '# ref sandi hubungan bank kredit',
  `sumber_dana_pelunasan` char(2) NOT NULL COMMENT '# ref sandi sumber dana pelunasan',
  `periode_pembayaran_pokok` char(1) NOT NULL COMMENT '# ref sandi periode pembayaran',
  `periode_pembayaran_bunga` char(1) NOT NULL COMMENT '# ref sandi periode pembayaran',
  `jangka_waktu_mulai` date NOT NULL,
  `jangka_waktu_jatuh_tempo` date NOT NULL,
  `angsuran_pokok_pertama` date DEFAULT NULL,
  `kualitas` char(1) NOT NULL COMMENT '# ref sandi kualitas',
  `tgl_mulai_macet` date DEFAULT NULL,
  `jml_hari_tunggakan_pokok` decimal(4,2) NOT NULL DEFAULT 0.00,
  `jml_hari_tunggakan_bunga` decimal(4,2) NOT NULL DEFAULT 0.00,
  `nominal_tunggakan_pokok` decimal(15,2) NOT NULL DEFAULT 0.00,
  `nominal_tunggakan_bunga` decimal(15,2) NOT NULL DEFAULT 0.00,
  `jenis_debitur` char(3) NOT NULL COMMENT '# ref sandi gol pihak lawan',
  `sandi_bank` varchar(6) DEFAULT NULL COMMENT '# ref sandi bank',
  `sektor_ekonomi` char(6) NOT NULL COMMENT '# ref sandi sektor ekonomi',
  `kategori_usaha` char(1) NOT NULL COMMENT '# ref sandi jenis usaha',
  `lokasi_penggunaan` char(4) NOT NULL COMMENT '# ref sandi kotakab',
  `suku_bunga_persentase` decimal(5,2) NOT NULL DEFAULT 0.00,
  `suku_bunga_cara_hitung` char(2) NOT NULL COMMENT '# ref sandi cara perhitungan bunga',
  `golongan_penjamin` char(3) NOT NULL COMMENT '# ref sandi gol pihak lawan',
  `bagian_dijamin` decimal(6,2) DEFAULT 0.00,
  `agunan_likuid_nilai` decimal(15,2) NOT NULL DEFAULT 0.00,
  `agunan_nonlikuid_nilai_ppap` decimal(15,2) NOT NULL DEFAULT 0.00,
  `kelonggaran_tarik` decimal(15,2) NOT NULL DEFAULT 0.00,
  `plafon_awal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `plafon_efektif` decimal(15,2) NOT NULL DEFAULT 0.00,
  `baki_debet` decimal(15,2) NOT NULL DEFAULT 0.00,
  `provisi_belum_amortisasi` decimal(15,2) NOT NULL DEFAULT 0.00,
  `biaya_transaksi_belum_amortisasi` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pendapatan_bunga_ditangguhkan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `cadangan_kerugian` decimal(15,2) NOT NULL DEFAULT 0.00,
  `baki_debet_neto` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ppap_dibentuk` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ppap_kelebihan` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pyad` decimal(15,2) DEFAULT 0.00,
  `pad` decimal(15,2) DEFAULT 0.00,
  `status_bmpk` char(2) NOT NULL COMMENT '# ref sandi status bmpk',
  `sifat_kredit` char(1) DEFAULT NULL,
  `kredit_program_pemerintah` char(2) DEFAULT NULL,
  `sektor_kur` char(2) DEFAULT NULL,
  `tgl_akad_awal` date DEFAULT NULL,
  `tgl_akad_akhir` date DEFAULT NULL,
  `sandi_lpbbti` char(6) DEFAULT NULL,
  `ckpn_baik` decimal(15,0) DEFAULT 0,
  `ckpn_kurang_baik` decimal(15,0) DEFAULT 0,
  `ckpn_tidak_baik` decimal(15,0) DEFAULT 0,
  `klasifikasi_aset` char(1) DEFAULT NULL,
  `jenis_ckpn` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `apolo_f0600_kredit` */

insert  into `apolo_f0600_kredit`(`sandi_kantor`,`nasabah_id`,`no_identitas`,`kode_kelompok_kredit`,`no_rekening`,`jenis`,`status_restrukturisasi`,`jenis_penggunaan`,`hubungan_bank`,`sumber_dana_pelunasan`,`periode_pembayaran_pokok`,`periode_pembayaran_bunga`,`jangka_waktu_mulai`,`jangka_waktu_jatuh_tempo`,`angsuran_pokok_pertama`,`kualitas`,`tgl_mulai_macet`,`jml_hari_tunggakan_pokok`,`jml_hari_tunggakan_bunga`,`nominal_tunggakan_pokok`,`nominal_tunggakan_bunga`,`jenis_debitur`,`sandi_bank`,`sektor_ekonomi`,`kategori_usaha`,`lokasi_penggunaan`,`suku_bunga_persentase`,`suku_bunga_cara_hitung`,`golongan_penjamin`,`bagian_dijamin`,`agunan_likuid_nilai`,`agunan_nonlikuid_nilai_ppap`,`kelonggaran_tarik`,`plafon_awal`,`plafon_efektif`,`baki_debet`,`provisi_belum_amortisasi`,`biaya_transaksi_belum_amortisasi`,`pendapatan_bunga_ditangguhkan`,`cadangan_kerugian`,`baki_debet_neto`,`ppap_dibentuk`,`ppap_kelebihan`,`pyad`,`pad`,`status_bmpk`,`sifat_kredit`,`kredit_program_pemerintah`,`sektor_kur`,`tgl_akad_awal`,`tgl_akad_akhir`,`sandi_lpbbti`,`ckpn_baik`,`ckpn_kurang_baik`,`ckpn_tidak_baik`,`klasifikasi_aset`,`jenis_ckpn`) values 
('008','0003259','3216070602780012','','07-39-00020-22','03','10','39','20','10','3','3','2022-12-24','2026-12-24','2023-01-24','1','0000-00-00',0.00,0.00,0.00,0.00,'875','','009000','4','0102',20.40,'21','880',100.00,0.00,0.00,0.00,90000000.00,0.00,0.00,1800000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'00','9','10','99','2022-12-24','2026-12-24',NULL,0,0,0,'3','2'),
('011','0029066','3217031006810019','','10-63-00032-25','03','10','10','20','22','3','3','2025-07-04','2028-07-04','2025-08-04','1','1900-01-01',0.00,0.00,0.00,0.00,'875','','472009','1','0122',16.20,'11','880',100.00,0.00,0.00,0.00,70000000.00,0.00,0.00,700000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'00','9','10','99','2025-07-04','2028-07-04','',0,0,0,'3','2'),
('014','0029148','3215055805770007','','13-63-00037-24','03','10','10','20','22','3','3','2024-04-30','2027-05-06','2024-06-06','1','1900-01-01',0.00,0.00,0.00,0.00,'875','','960009','1','0106',17.40,'21','880',100.00,0.00,0.00,0.00,55000000.00,0.00,0.00,1100000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'00','9','10','99','2024-04-30','2027-05-06',NULL,0,0,0,'3','2'),
('002','0029126','3201131001810013','','33-63-00041-25','03','10','10','20','10','3','3','2025-05-16','2028-05-16','2025-06-16','1','1900-01-01',0.00,0.00,0.00,0.00,'875','','960009','4','0108',17.40,'21','880',100.00,0.00,0.00,0.00,45000000.00,0.00,0.00,900000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'00','9','10','99','2025-05-16','2028-05-16','',0,0,0,'3','2'),
('002','0028133','3201151506680008','','33-63-00052-25','03','10','10','20','22','3','3','2025-06-23','2028-06-23','2025-07-23','1','1900-01-01',0.00,0.00,0.00,0.00,'875','','960009','2','0108',17.40,'21','880',100.00,0.00,0.00,0.00,60000000.00,0.00,0.00,1200000.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'00','9','10','99','2025-06-23','2028-06-23','',0,0,0,'3','2');

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
) ENGINE=InnoDB AUTO_INCREMENT=77332 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `daftar_dblock` */

insert  into `daftar_dblock`(`id`,`key_name`,`status`,`user_id`,`waktu`,`computer_name`,`computer_ip`,`computer_user`,`connection_id`) values 
(77295,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-09 20:25:14','IT','40.40.40.122','DH-IT INDRA',NULL),
(77296,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 21:52:30','IT','40.40.40.148','DH-IT INDRA',NULL),
(77297,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 21:53:22','IT','40.40.40.148','DH-IT INDRA',NULL),
(77298,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 21:57:09','IT','40.40.40.148','DH-IT INDRA',NULL),
(77299,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 21:58:21','IT','40.40.40.148','DH-IT INDRA',NULL),
(77300,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:00:05','IT','40.40.40.148','DH-IT INDRA',NULL),
(77301,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:30:19','IT','40.40.40.148','DH-IT INDRA',NULL),
(77302,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:41:12','IT','40.40.40.148','DH-IT INDRA',NULL),
(77303,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:49:44','IT','40.40.40.148','DH-IT INDRA',NULL),
(77304,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:50:11','IT','40.40.40.148','DH-IT INDRA',NULL),
(77305,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:51:41','IT','40.40.40.148','DH-IT INDRA',NULL),
(77306,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 22:57:12','IT','40.40.40.148','DH-IT INDRA',NULL),
(77307,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 23:04:42','IT','40.40.40.148','DH-IT INDRA',NULL),
(77308,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 23:09:25','IT','40.40.40.148','DH-IT INDRA',NULL),
(77309,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 23:16:46','IT','40.40.40.148','DH-IT INDRA',NULL),
(77310,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 23:20:15','IT','40.40.40.148','DH-IT INDRA',NULL),
(77311,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 23:23:19','IT','40.40.40.148','DH-IT INDRA',NULL),
(77312,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-21 23:25:08','IT','40.40.40.148','DH-IT INDRA',NULL),
(77313,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:28:10','IT','192.168.1.5','DH-IT INDRA',NULL),
(77314,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:29:00','IT','40.40.40.165','DH-IT INDRA',NULL),
(77315,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:35:08','IT','40.40.40.165','DH-IT INDRA',NULL),
(77316,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:38:11','IT','40.40.40.165','DH-IT INDRA',NULL),
(77317,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:39:30','IT','40.40.40.165','DH-IT INDRA',NULL),
(77318,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:41:41','IT','40.40.40.165','DH-IT INDRA',NULL),
(77319,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:43:54','IT','40.40.40.165','DH-IT INDRA',NULL),
(77320,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:49:24','IT','40.40.40.165','DH-IT INDRA',NULL),
(77321,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:50:49','IT','40.40.40.165','DH-IT INDRA',NULL),
(77322,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:54:21','IT','40.40.40.165','DH-IT INDRA',NULL),
(77323,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:56:31','IT','40.40.40.165','DH-IT INDRA',NULL),
(77324,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 22:58:30','IT','40.40.40.165','DH-IT INDRA',NULL),
(77325,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 23:04:12','IT','40.40.40.165','DH-IT INDRA',NULL),
(77326,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 23:06:12','IT','40.40.40.165','DH-IT INDRA',NULL),
(77327,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-27 23:07:42','IT','40.40.40.165','DH-IT INDRA',NULL),
(77328,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-28 21:05:12','IT','192.168.1.8','DH-IT INDRA',NULL),
(77329,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-28 21:08:44','IT','192.168.1.8','DH-IT INDRA',NULL),
(77330,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-28 21:11:13','IT','192.168.1.8','DH-IT INDRA',NULL),
(77331,'LOGIN_LPSBPR_INDRA_MAULANA','Y','855','2026-04-28 21:12:42','IT','192.168.1.8','DH-IT INDRA',NULL);

/*Table structure for table `debug_log` */

DROP TABLE IF EXISTS `debug_log`;

CREATE TABLE `debug_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debug_info` longtext DEFAULT NULL,
  `last_executed` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `debug_log` */

/*Table structure for table `dep_nominatif` */

DROP TABLE IF EXISTS `dep_nominatif`;

CREATE TABLE `dep_nominatif` (
  `tgl_laporan` date NOT NULL,
  `no_rekening` char(20) NOT NULL,
  `no_bilyet` char(20) DEFAULT NULL,
  `nasabah_id` char(20) DEFAULT NULL,
  `type_join` enum('AND','OR','QQ') DEFAULT NULL,
  `nasabah_id_join` char(20) DEFAULT NULL,
  `nama_nasabah` varchar(250) DEFAULT NULL,
  `nama_nasabah_join` varchar(100) DEFAULT NULL,
  `alamat` varchar(350) DEFAULT NULL,
  `jenis_kelamin` char(2) DEFAULT NULL,
  `no_alternatif` char(20) DEFAULT NULL,
  `kode_integrasi` char(3) DEFAULT NULL,
  `kode_produk` char(3) DEFAULT NULL,
  `nama_produk` char(100) DEFAULT NULL,
  `kode_group1` char(5) DEFAULT NULL,
  `kode_group2` char(5) DEFAULT NULL,
  `kode_group3` char(5) DEFAULT NULL,
  `nama_group1` varchar(100) DEFAULT NULL,
  `kode_group4` char(10) DEFAULT NULL,
  `kode_group5` char(10) DEFAULT NULL,
  `kode_group6` char(10) DEFAULT NULL,
  `nama_group2` varchar(100) DEFAULT NULL,
  `nama_group3` varchar(100) DEFAULT NULL,
  `kode_kantor` char(4) DEFAULT NULL,
  `nama_group4` varchar(100) DEFAULT NULL,
  `nama_group5` varchar(100) DEFAULT NULL,
  `nama_group6` varchar(100) DEFAULT NULL,
  `nama_kantor` varchar(100) DEFAULT NULL,
  `tgl_registrasi` date DEFAULT NULL,
  `aro` smallint(1) DEFAULT 0,
  `abp` smallint(6) DEFAULT 0,
  `jkw` smallint(6) DEFAULT NULL,
  `tgl_jt` date DEFAULT NULL,
  `saldo_awal` decimal(20,2) DEFAULT 0.00,
  `suku_bunga` decimal(5,2) DEFAULT 0.00,
  `pph` decimal(5,2) DEFAULT 0.00,
  `jml_deposito` decimal(20,2) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `mutasi_bunga` decimal(20,2) DEFAULT 0.00,
  `aro_bunga` decimal(20,2) DEFAULT 0.00,
  `pokok_baru` decimal(20,2) DEFAULT 0.00,
  `cair_pokok` decimal(20,2) DEFAULT 0.00,
  `saldo_akhir` decimal(20,2) DEFAULT 0.00,
  `saldo_akhir_bunga_bmhd` decimal(20,2) DEFAULT 0.00,
  `saldo_bunga_yad` decimal(20,2) DEFAULT 0.00,
  `bunga_bulan_lalu` decimal(20,2) DEFAULT 0.00,
  `no_rek_jam_kredit` char(25) DEFAULT NULL,
  `saldo_jam_kredit` decimal(20,2) DEFAULT 0.00,
  `kode_keterkaitan` char(1) DEFAULT '2',
  `kode_dati2` char(4) DEFAULT NULL,
  `nama_dati2` varchar(255) DEFAULT NULL,
  `jml_bunga` decimal(20,2) DEFAULT 0.00,
  `jml_pajak` decimal(20,2) DEFAULT 0.00,
  `jml_admin` decimal(20,2) DEFAULT 0.00,
  `create_date` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `dep_nominatif` */

insert  into `dep_nominatif`(`tgl_laporan`,`no_rekening`,`no_bilyet`,`nasabah_id`,`type_join`,`nasabah_id_join`,`nama_nasabah`,`nama_nasabah_join`,`alamat`,`jenis_kelamin`,`no_alternatif`,`kode_integrasi`,`kode_produk`,`nama_produk`,`kode_group1`,`kode_group2`,`kode_group3`,`nama_group1`,`kode_group4`,`kode_group5`,`kode_group6`,`nama_group2`,`nama_group3`,`kode_kantor`,`nama_group4`,`nama_group5`,`nama_group6`,`nama_kantor`,`tgl_registrasi`,`aro`,`abp`,`jkw`,`tgl_jt`,`saldo_awal`,`suku_bunga`,`pph`,`jml_deposito`,`tgl_mulai`,`mutasi_bunga`,`aro_bunga`,`pokok_baru`,`cair_pokok`,`saldo_akhir`,`saldo_akhir_bunga_bmhd`,`saldo_bunga_yad`,`bunga_bulan_lalu`,`no_rek_jam_kredit`,`saldo_jam_kredit`,`kode_keterkaitan`,`kode_dati2`,`nama_dati2`,`jml_bunga`,`jml_pajak`,`jml_admin`,`create_date`,`create_by`,`last_update`,`update_by`) values 
('2026-03-31','00-01-00239',NULL,'0005658',NULL,NULL,'SHERLY KUNAWAN NAHAWI','','JL PELEPAH HIJAU I TA 1/20 KELAPA GADING TIMUR KELAPA GADING 14240','P','00049','01','01','Deposito 1 Bulan','001','001','000','COKRO',NULL,NULL,NULL,'PUJI LENGKONG','????','00',NULL,NULL,NULL,'Kantor Pusat','2014-01-07',0,0,1,'2026-04-07',4300450722.00,9.50,20.00,1702500000.00,'2026-03-07',0.00,25072217.00,0.00,0.00,4325522939.00,24624499.00,0.00,31340271.00,NULL,0.00,'2','0392','KOTA JAKARTA UTARA',0.00,0.00,0.00,NULL,NULL,'2026-03-31 00:01:02',NULL),
('2026-03-31','00-01-00276',NULL,'0008035',NULL,NULL,'GUNAWAN TRISNO','','JL GARDEN I NO 2 RT 014/RW 005 RT.014 RW.005 KEDOYA SELATAN KEBON JERUK','L','00093','01','01','Deposito 1 Bulan','001','001','000','COKRO',NULL,NULL,NULL,'PUJI LENGKONG','????','00',NULL,NULL,NULL,'Kantor Pusat','2014-05-05',0,0,1,'2026-04-05',2000000000.00,9.00,20.00,2000000000.00,'2026-03-05',11046576.00,0.00,0.00,0.00,2000000000.00,11835616.00,0.00,13808219.00,NULL,0.00,'2','0393','KOTA JAKARTA BARAT',0.00,0.00,0.00,NULL,NULL,'2026-03-31 00:01:02',NULL),
('2026-03-31','00-01-00464',NULL,'0008035',NULL,NULL,'GUNAWAN TRISNO','','JL GARDEN I NO 2 RT 014/RW 005 RT.014 RW.005 KEDOYA SELATAN KEBON JERUK','L','00501','01','01','Deposito 1 Bulan','001','001','000','COKRO',NULL,NULL,NULL,'PUJI LENGKONG','????','00',NULL,NULL,NULL,'Kantor Pusat','2015-06-08',0,0,1,'2026-04-08',1000449315.00,9.00,20.00,1000449315.00,'2026-03-08',5525770.00,0.00,0.00,0.00,1000449315.00,5180409.00,0.00,6907212.00,NULL,0.00,'2','0393','KOTA JAKARTA BARAT',0.00,0.00,0.00,NULL,NULL,'2026-03-31 00:01:02',NULL),
('2026-03-31','00-01-01135',NULL,'0004939',NULL,NULL,'SHANTY WANGKAR','','LINGKUNGAN 1  WAWONASA SINGKIL 95231','P','KMI-001186','01','01','Deposito 1 Bulan','001','','000','COKRO',NULL,NULL,NULL,NULL,'????','00',NULL,NULL,NULL,'Kantor Pusat','2021-08-13',0,0,1,'2026-04-13',201104658.00,9.50,20.00,201104658.00,'2026-03-13',1172468.00,0.00,0.00,0.00,201104658.00,837477.00,0.00,1465585.00,NULL,0.00,'1','6291','KOTA MANADO',0.00,0.00,0.00,NULL,NULL,'2026-03-31 00:01:09',NULL),
('2026-03-31','00-02-00543',NULL,'0004939',NULL,NULL,'SHANTY WANGKAR','','LINGKUNGAN 1  WAWONASA SINGKIL 95231','P','KMI-001231','02','02','Deposito 3 Bulan','001','','000','COKRO',NULL,NULL,NULL,NULL,'????','00',NULL,NULL,NULL,'Kantor Pusat','2021-09-03',0,0,3,'2026-06-03',100000000.00,9.50,20.00,100000000.00,'2026-03-03',583014.00,0.00,0.00,0.00,100000000.00,676712.00,0.00,728767.00,NULL,0.00,'1','6291','KOTA MANADO',0.00,0.00,0.00,NULL,NULL,'2026-03-31 00:01:45',NULL),
('2026-03-31','00-03-00324',NULL,'0005658',NULL,NULL,'SHERLY KUNAWAN NAHAWI','','JL PELEPAH HIJAU I TA 1/20 KELAPA GADING TIMUR KELAPA GADING 14240','P','KMI-002554','03','03','Deposito 6 Bulan','001','','000','COKRO',NULL,NULL,NULL,NULL,'????','00',NULL,NULL,NULL,'Kantor Pusat','2024-06-04',0,0,6,'2026-06-04',2188443672.00,6.75,20.00,2000000000.00,'2025-12-04',0.00,9065553.00,0.00,0.00,2197509225.00,10117804.00,0.00,11331941.00,NULL,0.00,'2','0392','KOTA JAKARTA UTARA',0.00,0.00,0.00,NULL,NULL,'2026-03-31 00:02:43',NULL);

/*Table structure for table `deposito` */

DROP TABLE IF EXISTS `deposito`;

CREATE TABLE `deposito` (
  `NO_REKENING` char(20) NOT NULL,
  `NO_ALTERNATIF` char(20) DEFAULT NULL,
  `NO_REKENING_OLD` char(41) DEFAULT NULL,
  `NASABAH_ID` char(20) DEFAULT NULL,
  `KODE_INTEGRASI` char(3) DEFAULT NULL,
  `KODE_BI_PEMILIK` char(3) DEFAULT NULL,
  `SUKU_BUNGA` decimal(5,2) DEFAULT NULL,
  `PERSEN_PPH` decimal(5,2) DEFAULT NULL,
  `TGL_REGISTRASI` date DEFAULT NULL,
  `kode_group1` char(5) DEFAULT NULL,
  `kode_group2` char(5) DEFAULT NULL,
  `kode_group3` char(5) DEFAULT NULL,
  `kode_group4` char(10) DEFAULT NULL,
  `kode_group5` char(10) DEFAULT NULL,
  `kode_group6` char(5) DEFAULT NULL,
  `keterangan` char(250) DEFAULT NULL,
  `STATUS_AKTIF` smallint(6) DEFAULT NULL,
  `TGL_JT` date DEFAULT NULL,
  `JKW` int(11) DEFAULT NULL,
  `NAMA_KUASA` char(30) DEFAULT NULL,
  `ALMT_KUASA` char(40) DEFAULT NULL,
  `ABP` smallint(6) DEFAULT NULL,
  `VERIFIKASI` char(1) DEFAULT NULL,
  `ARO` smallint(6) DEFAULT NULL,
  `JML_DEPOSITO` decimal(18,2) DEFAULT NULL,
  `TABUNG_OR_TITIPAN` smallint(6) DEFAULT NULL,
  `NO_REKENING_TABUNGAN` char(20) DEFAULT NULL,
  `MIGRASI_SALDO_AWAL_POKOK` decimal(15,2) DEFAULT NULL,
  `MIGRASI_SALDO_AWAL_TITIPAN` decimal(15,2) DEFAULT NULL,
  `MIGRASI_SALDO_AWAL_BUNGA` decimal(15,2) DEFAULT NULL,
  `MIGRASI_SALDO_AWAL_PAJAK` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_POKOK` decimal(18,2) DEFAULT NULL,
  `SALDO_AKHIR_TITIPAN` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_BUNGA` decimal(18,2) DEFAULT NULL,
  `SALDO_AKHIR_PAJAK` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_POKOK_TEMP1` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_TITIPAN_TEMP1` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_BUNGA_TEMP1` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_PAJAK_TEMP1` decimal(15,2) DEFAULT NULL,
  `SALDO_EFEKTIF_BLN_INI` decimal(15,2) DEFAULT NULL,
  `SUKU_BUNGA_EFEKTIF_BLN_INI` decimal(5,2) DEFAULT NULL,
  `PERSEN_PPH_EFEKTIF_BLN_INI` decimal(5,2) DEFAULT NULL,
  `STATUS_EFEKTIF_BLN_INI` char(1) DEFAULT NULL,
  `HARIAN_OR_BULANAN` char(1) DEFAULT NULL,
  `SALDO_AKHIR_TEMP1` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_TEMP2` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_TEMP3` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_TEMP4` decimal(15,2) DEFAULT NULL,
  `SALDO_AKHIR_TEMP5` decimal(15,2) DEFAULT NULL,
  `TANGGAL_TEMP1` date DEFAULT NULL,
  `TANGGAL_TEMP2` date DEFAULT NULL,
  `TANGGAL_TEMP3` date DEFAULT NULL,
  `TGL_MULAI` date DEFAULT NULL,
  `NO_REK_JAM_KREDIT` char(20) DEFAULT NULL,
  `BUNGA_BDD` decimal(15,2) DEFAULT NULL,
  `PAJAK_BDD` decimal(15,2) DEFAULT NULL,
  `BUNGA_BLN_INI` decimal(18,2) DEFAULT NULL,
  `PAJAK_BLN_INI` decimal(18,2) DEFAULT NULL,
  `SALDO_AKHIR_TITIPAN_PAJAK` decimal(15,2) DEFAULT NULL,
  `KOREKSI_BUNGA_BLN_INI` decimal(18,2) DEFAULT NULL,
  `KOREKSI_PAJAK_BLN_INI` decimal(18,2) DEFAULT NULL,
  `KENA_PAJAK` int(11) DEFAULT NULL,
  `KODE_KANTOR` char(4) DEFAULT NULL,
  `kode_kantor_internal` char(4) DEFAULT NULL,
  `POINT` decimal(12,0) DEFAULT NULL,
  `KODE_PRODUK` char(3) DEFAULT NULL,
  `KODE_BUNGA` char(5) DEFAULT NULL,
  `IS_BUNGA_BDD` int(1) DEFAULT 0,
  `no_rekening_baru` char(20) DEFAULT NULL,
  `no_rekening_tab` char(20) DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL,
  `ROLL_OVER_KE` int(11) DEFAULT NULL,
  `KETERANGAN1` char(250) DEFAULT NULL,
  `SALDO_JAM_KREDIT` decimal(18,2) DEFAULT NULL,
  `ACCRU_BMHD_TEMP` decimal(18,2) DEFAULT NULL,
  `bunga_pyad` decimal(18,2) DEFAULT NULL,
  `kode_bi_lokasi` char(3) DEFAULT NULL,
  `saldo_akhir_titipan_pokok` decimal(18,2) DEFAULT NULL,
  `migrasi_saldo_titipan_pokok` decimal(18,2) DEFAULT NULL,
  `kode_perk_abp` char(20) DEFAULT NULL,
  `sandi_bank` char(3) DEFAULT NULL,
  `nama_perk_abp` char(50) DEFAULT NULL,
  `kode_alternatif_abp` char(20) DEFAULT NULL,
  `BARIS_BUKU` int(11) DEFAULT NULL,
  `NO_ALTERNATIF_REK` char(25) DEFAULT NULL,
  `SALDO_akhir_bunga_bmhd` decimal(18,2) DEFAULT 0.00,
  `transfer` int(1) DEFAULT NULL,
  `FLAG_AMBIL_POKOK` int(1) DEFAULT 0,
  `BUNGA_PYAD_SISANYA` decimal(18,2) DEFAULT NULL,
  `kode_keterkaitan` char(1) DEFAULT NULL,
  `nasabah_id_join` char(20) DEFAULT NULL,
  `type_join` enum('AND','OR','QQ') DEFAULT NULL,
  `saldo_bunga_yad` decimal(18,2) DEFAULT 0.00,
  `rek_fee_marketing` char(30) DEFAULT NULL,
  `fee_marketing` decimal(18,2) DEFAULT NULL,
  `online_kk` char(4) DEFAULT NULL,
  `online_id` char(16) DEFAULT NULL,
  `persen_bonus_bunga_trans` decimal(16,2) DEFAULT NULL,
  `bonus_bunga` decimal(16,2) DEFAULT NULL,
  `migrasi_saldo_awal_bdd` decimal(18,2) DEFAULT 0.00,
  `saldo_akhir_bdd` decimal(18,2) DEFAULT 0.00,
  `insentif_kita` decimal(18,2) DEFAULT 0.00,
  `pajak_insentif_kita` decimal(18,2) DEFAULT 0.00,
  `penyesuaian_bmhd` decimal(18,2) DEFAULT 0.00,
  `no_rekening_aba` char(25) DEFAULT NULL,
  `baris_kartu` int(3) DEFAULT 0,
  `flag_posting` tinyint(4) DEFAULT 0,
  `ALASAN_BLOKIR` char(150) DEFAULT '',
  `biaya_cashback` decimal(18,2) DEFAULT 0.00,
  `biaya_transaksi` decimal(18,2) DEFAULT 0.00,
  `biaya_amr` decimal(18,2) DEFAULT 0.00,
  `saldo_biaya` decimal(18,2) DEFAULT 0.00,
  `perkiraan_bunga` decimal(18,2) DEFAULT 0.00,
  `perlakuan_pencairan` smallint(6) DEFAULT 0 COMMENT '1 = Tabungan, 2 = Bank Lain',
  `metode_pembayaran` varchar(100) DEFAULT NULL,
  `no_rekening_pencairan` varchar(30) DEFAULT NULL,
  `nama_bank_pencairan` varchar(30) DEFAULT NULL,
  `atas_nama_pencairan` varchar(100) DEFAULT NULL,
  `application_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `deposito` */

insert  into `deposito`(`NO_REKENING`,`NO_ALTERNATIF`,`NO_REKENING_OLD`,`NASABAH_ID`,`KODE_INTEGRASI`,`KODE_BI_PEMILIK`,`SUKU_BUNGA`,`PERSEN_PPH`,`TGL_REGISTRASI`,`kode_group1`,`kode_group2`,`kode_group3`,`kode_group4`,`kode_group5`,`kode_group6`,`keterangan`,`STATUS_AKTIF`,`TGL_JT`,`JKW`,`NAMA_KUASA`,`ALMT_KUASA`,`ABP`,`VERIFIKASI`,`ARO`,`JML_DEPOSITO`,`TABUNG_OR_TITIPAN`,`NO_REKENING_TABUNGAN`,`MIGRASI_SALDO_AWAL_POKOK`,`MIGRASI_SALDO_AWAL_TITIPAN`,`MIGRASI_SALDO_AWAL_BUNGA`,`MIGRASI_SALDO_AWAL_PAJAK`,`SALDO_AKHIR_POKOK`,`SALDO_AKHIR_TITIPAN`,`SALDO_AKHIR_BUNGA`,`SALDO_AKHIR_PAJAK`,`SALDO_AKHIR_POKOK_TEMP1`,`SALDO_AKHIR_TITIPAN_TEMP1`,`SALDO_AKHIR_BUNGA_TEMP1`,`SALDO_AKHIR_PAJAK_TEMP1`,`SALDO_EFEKTIF_BLN_INI`,`SUKU_BUNGA_EFEKTIF_BLN_INI`,`PERSEN_PPH_EFEKTIF_BLN_INI`,`STATUS_EFEKTIF_BLN_INI`,`HARIAN_OR_BULANAN`,`SALDO_AKHIR_TEMP1`,`SALDO_AKHIR_TEMP2`,`SALDO_AKHIR_TEMP3`,`SALDO_AKHIR_TEMP4`,`SALDO_AKHIR_TEMP5`,`TANGGAL_TEMP1`,`TANGGAL_TEMP2`,`TANGGAL_TEMP3`,`TGL_MULAI`,`NO_REK_JAM_KREDIT`,`BUNGA_BDD`,`PAJAK_BDD`,`BUNGA_BLN_INI`,`PAJAK_BLN_INI`,`SALDO_AKHIR_TITIPAN_PAJAK`,`KOREKSI_BUNGA_BLN_INI`,`KOREKSI_PAJAK_BLN_INI`,`KENA_PAJAK`,`KODE_KANTOR`,`kode_kantor_internal`,`POINT`,`KODE_PRODUK`,`KODE_BUNGA`,`IS_BUNGA_BDD`,`no_rekening_baru`,`no_rekening_tab`,`USERID`,`ROLL_OVER_KE`,`KETERANGAN1`,`SALDO_JAM_KREDIT`,`ACCRU_BMHD_TEMP`,`bunga_pyad`,`kode_bi_lokasi`,`saldo_akhir_titipan_pokok`,`migrasi_saldo_titipan_pokok`,`kode_perk_abp`,`sandi_bank`,`nama_perk_abp`,`kode_alternatif_abp`,`BARIS_BUKU`,`NO_ALTERNATIF_REK`,`SALDO_akhir_bunga_bmhd`,`transfer`,`FLAG_AMBIL_POKOK`,`BUNGA_PYAD_SISANYA`,`kode_keterkaitan`,`nasabah_id_join`,`type_join`,`saldo_bunga_yad`,`rek_fee_marketing`,`fee_marketing`,`online_kk`,`online_id`,`persen_bonus_bunga_trans`,`bonus_bunga`,`migrasi_saldo_awal_bdd`,`saldo_akhir_bdd`,`insentif_kita`,`pajak_insentif_kita`,`penyesuaian_bmhd`,`no_rekening_aba`,`baris_kartu`,`flag_posting`,`ALASAN_BLOKIR`,`biaya_cashback`,`biaya_transaksi`,`biaya_amr`,`saldo_biaya`,`perkiraan_bunga`,`perlakuan_pencairan`,`metode_pembayaran`,`no_rekening_pencairan`,`nama_bank_pencairan`,`atas_nama_pencairan`,`application_id`,`created_at`,`last_update`) values 
('00-01-00046','000049',NULL,'0004939','01','874',12.00,20.00,'2010-09-23','001','001','000',NULL,NULL,NULL,'BUNGA TUNAI',3,'2013-09-23',1,NULL,NULL,0,'1',1,400000000.00,4,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-08-23',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,0,'00',NULL,35,'01',NULL,0,NULL,NULL,72,35,'',0.00,NULL,739726.00,'1',0.00,NULL,'',NULL,NULL,NULL,NULL,'',0.00,0,0,NULL,'1',NULL,NULL,0.00,'',0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00063','000070',NULL,'0004939','01','874',11.25,20.00,'2011-06-01','001','001','000',NULL,NULL,NULL,'ARO PER TGL 1 AGUSTUS 2011',3,'2012-01-02',1,NULL,NULL,0,'1',1,218000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2011-12-05',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,0,'00',NULL,5,'01',NULL,0,NULL,NULL,72,5,'INFO PA BILY TGL 21 JULI 2011',0.00,NULL,0.00,'1',0.00,NULL,'',NULL,NULL,NULL,NULL,'',0.00,0,0,NULL,'1',NULL,NULL,0.00,'',0.00,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00126','000170',NULL,'0005658','01','874',8.00,20.00,'2012-09-07','001','001','000',NULL,NULL,NULL,NULL,3,'2013-03-07',1,NULL,NULL,0,'1',1,1000000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-02-07',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,6,'01',NULL,0,NULL,NULL,64,6,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00132','000178',NULL,'0005658','01','874',8.00,20.00,'2012-11-02','001','001','000',NULL,NULL,NULL,NULL,3,'2013-03-02',1,NULL,NULL,0,'1',1,1000000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-02-04',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,3,'01',NULL,0,NULL,NULL,64,3,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00151','000201',NULL,'0004939','01','874',12.00,20.00,'2013-03-19','001','001','000',NULL,NULL,NULL,NULL,3,'2013-09-19',1,NULL,NULL,0,'1',1,38000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-08-19',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,5,'01',NULL,0,NULL,NULL,64,5,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00157','000208',NULL,'0005658','01','874',8.00,20.00,'2013-04-12','001','001','000',NULL,NULL,NULL,NULL,3,'2013-07-12',1,NULL,NULL,0,'1',1,2000000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-06-12',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,2,'01',NULL,0,NULL,NULL,64,2,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00198','00005',NULL,'0004939','01','875',12.00,20.00,'2013-09-04','001','001','000',NULL,NULL,NULL,'',3,'2020-04-04',3,NULL,NULL,0,'1',1,400000000.00,4,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,400000000.00,NULL,NULL,NULL,'B',400000000.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14','2020-01-04','2020-01-04',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,0,'00',NULL,48,'01',NULL,0,NULL,NULL,64,48,'Bank BCA No Rek.026-031-7792 a/n Shanty Wangkar',0.00,NULL,NULL,'1',0.00,NULL,'',NULL,NULL,NULL,NULL,'',0.00,0,0,NULL,'1',NULL,NULL,0.00,'',0.00,NULL,NULL,0.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00199','00006',NULL,'0004939','01','874',12.50,20.00,'2013-09-04','001','001','000',NULL,NULL,NULL,NULL,3,'2014-02-04',1,NULL,NULL,0,'1',1,300000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',307541777.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2014-01-04',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,4,'01',NULL,0,NULL,NULL,64,4,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00200','00007',NULL,'0004939','01','874',12.50,20.00,'2013-09-05','001','001','000',NULL,NULL,NULL,NULL,3,'2013-11-05',1,NULL,NULL,0,'1',1,100000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-10-05',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,1,'01',NULL,0,NULL,NULL,64,1,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'00007',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00201','00008',NULL,'0004939','01','874',12.50,20.00,'2013-09-05','001','001','000',NULL,NULL,NULL,NULL,3,'2014-01-05',1,NULL,NULL,0,'1',1,100000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',102513926.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-12-05',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,3,'01',NULL,0,NULL,NULL,64,3,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'00008',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00202','00009',NULL,'0004939','01','874',12.50,20.00,'2013-09-05','001','001','000',NULL,NULL,NULL,NULL,3,'2013-11-05',1,NULL,NULL,0,'1',1,100000000.00,3,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',0.00,0.00,0.00,0.00,NULL,'2013-12-31','2014-05-14',NULL,'2013-10-05',NULL,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,1,'01',NULL,0,NULL,NULL,64,1,NULL,NULL,NULL,NULL,'1',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'00009',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00236','00046',NULL,'0005658','01','800',9.75,20.00,'2013-12-24','001','001','000',NULL,NULL,NULL,'',3,'2014-02-24',1,NULL,NULL,0,'1',1,2000000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-01-24',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,1,'01',NULL,0,NULL,NULL,64,1,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'46',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00238','00048',NULL,'0004939','01','800',12.50,20.00,'2014-01-06','001','001','000',NULL,NULL,NULL,'',3,'2014-03-06',1,NULL,NULL,0,'1',1,250233776.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-02-06',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,1,'01',NULL,0,NULL,NULL,64,1,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'48',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00239','00049',NULL,'0005658','01','800',9.50,20.00,'2014-01-07','001','001','000',NULL,NULL,NULL,'',1,'2026-05-07',1,NULL,NULL,0,'1',1,1702500000.00,3,'',NULL,NULL,NULL,NULL,4353443301.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,2693595235.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-01-07','2026-04-07',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,147,'01',NULL,0,NULL,NULL,64,147,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'49',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2026-04-07 09:16:15'),
('00-01-00255','00066',NULL,'0004939','01','874',12.50,20.00,'2014-03-06','001','001','000',NULL,NULL,NULL,'',3,'2014-04-06',1,NULL,NULL,0,'1',1,204294954.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-03-06',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,NULL,'01',NULL,0,NULL,NULL,64,NULL,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00262','00075',NULL,'0008035','01','875',13.13,20.00,'2014-03-24','001','001','000',NULL,NULL,NULL,'',3,'2015-01-24',1,NULL,NULL,0,'1',3,1000000000.00,4,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-12-24',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,9,'01',NULL,0,NULL,NULL,64,9,'Bank Mandiri No. Rek. 118-00-0771657-3 a/n Gunawan Trisno',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00074',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00266','00079',NULL,'0004939','01','875',12.50,20.00,'2014-04-07','001','001','000',NULL,NULL,NULL,'',3,'2015-04-07',1,NULL,NULL,0,'1',1,106030062.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-03-07',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,11,'01',NULL,0,NULL,NULL,64,11,'Bank BCA No Rek.026-031-7792 a/n Shanty Wangkar',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'79',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00276','00093',NULL,'0008035','01','875',9.00,20.00,'2014-05-05','001','001','000',NULL,NULL,NULL,'',1,'2026-05-05',1,NULL,NULL,0,'1',1,2000000000.00,4,'',NULL,NULL,NULL,NULL,2000000000.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,2000000000.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-01-05','2026-04-05',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,143,'01',NULL,0,NULL,NULL,64,143,'Bank MANDIRI No. Rek. 118-00-0771657-3 a/n Gunawan Trisno - Cab. Puri Kencana Jakarta',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00093',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2026-04-06 17:18:33'),
('00-01-00289','00308',NULL,'0005658','01','875',10.25,20.00,'2014-05-22','001','001','000',NULL,NULL,NULL,'',3,'2014-12-22',1,NULL,NULL,0,'1',1,225000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-11-22',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,6,'01',NULL,0,NULL,NULL,64,6,'Bank BCA No. Rek. 082-309-3737 a/n Minnita Kunawan Nahawi - Cab. Glodok',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00290','00309',NULL,'0008035','01','872',13.13,20.00,'2014-05-23','001','001','000',NULL,NULL,NULL,'',3,'2015-01-23',1,NULL,NULL,0,'1',3,1000000000.00,4,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-12-23',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,7,'01',NULL,0,NULL,NULL,64,7,'Bank Mandiri No. Rek. 118-00-0771657-3 a/n Gunawan Trisno - Cab. Puri Kencana Jakarta',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00429','00463',NULL,'0005658','01','875',9.25,20.00,'2015-03-17','001','001','000',NULL,NULL,NULL,'',3,'2018-01-17',1,NULL,NULL,0,'1',1,2000000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-17',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,33,'01',NULL,0,NULL,NULL,1594434,33,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00463',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00461','00498',NULL,'0005658','01','875',10.25,20.00,'2015-05-29','001','001','000',NULL,NULL,NULL,'',3,'2015-06-29',1,NULL,NULL,0,'1',1,2000000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-05-29',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,NULL,'01',NULL,0,NULL,NULL,64,NULL,'Bank BCA No Rek. 194.600.3850 a/n Sherly Kunawan Nahawi - Cab. Glodok Sejumlah Rp. 1.013.928.768,- Sisa Pencairan Deposito Sejumlah Rp. 1.000.000.000,- akan di depositokan kembali a/n Sherly Kunawan Nahawi',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00498',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00464','00501',NULL,'0008035','01','875',9.00,20.00,'2015-06-08','001','001','000',NULL,NULL,NULL,'',1,'2026-05-08',1,NULL,NULL,0,'1',1,1000449315.00,4,'',NULL,NULL,NULL,NULL,1000449315.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,1000449315.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-01-08','2026-04-08',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,130,'01',NULL,0,NULL,NULL,64,130,'Bank MANDIRI No. Rek. 118-00-0771657-3 a/n Gunawan Trisno - Cab. Puri Kencana Jakarta',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00501',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2026-04-08 08:38:23'),
('00-01-00471','00510',NULL,'0005658','01','875',9.25,20.00,'2015-06-29','001','001','000',NULL,NULL,NULL,'',3,'2018-01-29',1,NULL,NULL,0,'1',1,1000000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-29',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,30,'01',NULL,0,NULL,NULL,64,30,'Didepositokan kembali menjadi a/n Sartono Dharma',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00510',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00475','00518',NULL,'0005658','01','875',9.50,20.00,'2015-07-13','001','007','000',NULL,NULL,NULL,'',3,'2016-10-13',1,NULL,NULL,0,'1',1,1000000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-09-13',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,14,'01',NULL,0,NULL,NULL,64,14,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00518',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00517','00561',NULL,'0005658','01','875',10.00,20.00,'2015-10-02','001','007','000',NULL,NULL,NULL,'',3,'2016-04-02',1,NULL,NULL,0,'1',1,2000000000.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-03-02',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,5,'01',NULL,0,NULL,NULL,64,5,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00561',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00667','00748',NULL,'0005658','01','875',9.25,20.00,'2016-09-15','001','007','000',NULL,NULL,NULL,'',3,'2018-01-15',1,NULL,NULL,0,'1',1,440409732.00,3,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-12-15',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,15,'01',NULL,0,NULL,NULL,64,15,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'00748',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00978','KMI-000616',NULL,'0004939','01','875',8.25,20.00,'2020-03-26','001','007','000',NULL,NULL,NULL,'',3,'2020-04-26',1,NULL,NULL,0,'1',1,400000000.00,4,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-03-26',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,NULL,'01',NULL,0,NULL,NULL,1083,NULL,'Bank BCA No Rek.026-031-7792 a/n Shanty Wangkar',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'KMI-000616',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-00983','KMI-000625',NULL,'0004939','01','875',12.00,20.00,'2020-03-30','001','007','000',NULL,NULL,NULL,'',3,'2021-08-30',1,NULL,NULL,0,'1',1,300000000.00,4,'',NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-07-30',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,16,'01',NULL,0,NULL,NULL,1083,16,'Bank BCA No. Rek. 026-031-7792 a/n Shanty Wangkar',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'KMI-000625',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2024-07-26 14:30:51'),
('00-01-01135','KMI-001186',NULL,'0004939','01','875',9.50,20.00,'2021-08-13','001','','000','001','','001','',1,'2026-05-13',1,NULL,NULL,0,'1',1,201104658.00,4,'',NULL,NULL,NULL,NULL,201104658.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-13',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,56,'01',NULL,0,NULL,NULL,1670,56,'Bank BCA No. Rek.026-031-7792 a/n Shanty Wangkar',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'KMI-001186',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2026-04-13 19:03:14'),
('00-02-00543','KMI-001231',NULL,'0004939','02','875',9.50,20.00,'2021-09-03','001','','000','001','','001','',1,'2026-06-03',3,NULL,NULL,0,'1',1,100000000.00,4,'',NULL,NULL,NULL,NULL,100000000.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-03-03',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,18,'02',NULL,0,NULL,NULL,1670,18,'Bank BCA No Rek. 026-031-7792 a/n Shanty Wangkar',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'KMI-001231',0.00,NULL,0,NULL,'1',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2026-04-06 16:24:50'),
('00-03-00324','KMI-002554',NULL,'0005658','03',NULL,6.75,20.00,'2024-06-04','001','','000','001','','001','',1,'2026-06-04',6,NULL,NULL,0,'1',1,2000000000.00,3,'',NULL,NULL,NULL,NULL,2207587665.00,0.00,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-12-04',NULL,0.00,0.00,NULL,NULL,0.00,NULL,NULL,NULL,'00',NULL,3,'03',NULL,0,NULL,NULL,1759,3,'',NULL,NULL,NULL,NULL,0.00,NULL,'',NULL,NULL,NULL,NULL,'KMI-002554',0.00,NULL,0,NULL,'2',NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0.00,0.00,0.00,0.00,NULL,0,0,'',0.00,0.00,0.00,0.00,0.00,0,NULL,NULL,NULL,NULL,NULL,'2024-07-26 14:30:51','2026-04-06 13:43:07');

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

/*Table structure for table `kre_kode_jenis_agunan` */

DROP TABLE IF EXISTS `kre_kode_jenis_agunan`;

CREATE TABLE `kre_kode_jenis_agunan` (
  `KODE_JENIS_AGUNAN` char(1) NOT NULL,
  `DESKRIPSI_JENIS_AGUNAN` char(50) DEFAULT NULL,
  `PERSEN_DEFAULT` decimal(6,2) DEFAULT NULL,
  `flg_aktif` smallint(1) DEFAULT 1,
  PRIMARY KEY (`KODE_JENIS_AGUNAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kre_kode_jenis_agunan` */

insert  into `kre_kode_jenis_agunan`(`KODE_JENIS_AGUNAN`,`DESKRIPSI_JENIS_AGUNAN`,`PERSEN_DEFAULT`,`flg_aktif`) values 
('1','SBI/Logam Mulia',100.00,1),
('2','Tab & Deposito pd BPR ybs',100.00,1),
('3','Tab & Deposito pd Bank lain',100.00,1),
('4','Perhiasan Emas',NULL,1),
('5','Kend Motor/Mesin/Alat Berat',25.00,1),
('6','Tanah dan Bangunan',NULL,1),
('7','Persediaan Barang',NULL,1),
('8','Tanpa Agunan',0.00,1),
('9','Lainnya',0.00,1);

/*Table structure for table `kre_nominatif` */

DROP TABLE IF EXISTS `kre_nominatif`;

CREATE TABLE `kre_nominatif` (
  `tgl_laporan` date DEFAULT NULL,
  `no_rekening` char(25) NOT NULL,
  `kode_kantor` char(4) NOT NULL,
  `kode_unit` char(4) DEFAULT NULL,
  `nasabah_id` char(20) NOT NULL,
  `nama_nasabah` varchar(100) DEFAULT NULL,
  `alamat` varchar(350) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kota_kab` varchar(20) DEFAULT NULL,
  `kota` varchar(250) DEFAULT NULL,
  `domisili_alamat` varchar(350) DEFAULT NULL,
  `domisili_kecamatan` varchar(100) DEFAULT NULL,
  `domisili_kota_kab` varchar(20) DEFAULT NULL,
  `domisili_kota` varchar(250) DEFAULT NULL,
  `jenis_kelamin` char(2) DEFAULT NULL,
  `bi_gol_penjamin` varchar(3) DEFAULT NULL,
  `bi_sektor_ekonomi` varchar(6) DEFAULT NULL,
  `bi_jenis_penggunaan` varchar(2) DEFAULT NULL,
  `kode_chanelling` char(5) DEFAULT NULL,
  `kode_asuransi` char(3) DEFAULT NULL,
  `kode_integrasi` char(5) DEFAULT NULL,
  `kode_produk` char(5) DEFAULT NULL,
  `kode_keterkaitan` char(1) DEFAULT NULL,
  `kode_group1` char(5) DEFAULT NULL,
  `kode_group2` char(5) DEFAULT NULL,
  `kode_group3` char(5) DEFAULT NULL,
  `kode_group4` char(5) DEFAULT NULL,
  `kode_group5` char(50) DEFAULT NULL,
  `kode_group6` char(5) DEFAULT NULL,
  `kode_group7` char(5) DEFAULT NULL,
  `kode_so` char(10) DEFAULT NULL,
  `rekomendasi_ca` char(1) DEFAULT NULL,
  `jml_rekomendasi` decimal(18,2) DEFAULT NULL,
  `keterangan_ca` varchar(200) DEFAULT NULL,
  `jenis_fasilitas` char(0) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tgl_realisasi` date DEFAULT NULL,
  `jml_angsuran` int(11) DEFAULT NULL,
  `tgl_jatuh_tempo` date DEFAULT NULL,
  `perpanjangan` int(11) DEFAULT NULL,
  `type_kredit` char(3) DEFAULT NULL,
  `suku_bunga_per_tahun` decimal(7,4) DEFAULT NULL,
  `jml_pinjaman` decimal(20,2) NOT NULL DEFAULT 0.00,
  `baki_debet` decimal(18,2) DEFAULT NULL COMMENT 'jumlah baki debet / saldo akhir pokok / outstanding pokok sesuai tanggal current',
  `saldo_provisi` decimal(18,2) DEFAULT NULL COMMENT 'saldo akhir provisi per tanggal current',
  `saldo_adm` decimal(18,2) DEFAULT NULL COMMENT 'saldo akhir adm per tanggal current',
  `saldo_biaya` decimal(18,2) DEFAULT NULL COMMENT 'saldo akhir biaya transaksi per tanggal current',
  `baki_debet_netto` decimal(18,2) DEFAULT NULL COMMENT 'saldo akhir baki debet netto = baki debet - provisi - adm + biaya transkasi per tanggal current',
  `jml_map` smallint(3) DEFAULT NULL COMMENT 'jumlah 1=jika merupakan pencairan bulan ini',
  `jml_realisasi` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pencairan',
  `jml_realisasi_ro` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pencairan seteleah dikurangi baki debet pinjaman sebelumnya',
  `jenis_agunan` char(10) DEFAULT NULL COMMENT 'kode jenis agunan, kode ini sudah mengikuti history perubahan, dan akan berpengaruh ke perhitungan ppap',
  `ikatan_agunan` char(1) DEFAULT NULL COMMENT 'kode ikatan agunan, kode ini sudah mengikuti history perubahan, dan akan berpengaruh ke perhitungan ppap',
  `nilai_taksasi_agunan` decimal(18,2) DEFAULT NULL,
  `kolek_bi` smallint(1) DEFAULT NULL COMMENT 'jumlah kolektibilitas ojk per tanggal current',
  `kolek_bi_eom` smallint(1) DEFAULT NULL COMMENT 'jumlah kolektibilitas ojk per akhir bulan',
  `kolek_internal` smallint(1) DEFAULT NULL,
  `kolek_internal_eom` smallint(1) DEFAULT NULL,
  `ft_hari` int(11) DEFAULT NULL COMMENT 'jumlah tunggakan dalam hari',
  `ft_hari_pokok` int(11) DEFAULT NULL COMMENT 'jumlah tunggakan pokok dalam hari',
  `ft_hari_bunga` int(11) DEFAULT NULL COMMENT 'jumlah tunggakan bunga dalam hari',
  `ft_hari_denda` int(11) DEFAULT NULL,
  `ft_hari_eom` int(11) DEFAULT NULL,
  `tgl_lunas` date DEFAULT NULL COMMENT 'tanggal pelunasan / pembayaran pokok terakhir',
  `debius` smallint(1) DEFAULT NULL COMMENT 'flag 1=debius, 0=non debius',
  `tgl_debius` date DEFAULT NULL COMMENT 'tanggal saat transaksi debius',
  `jumlah_debius` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pokok saat transaksi debius',
  `saldo_debius` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pokok debius per tanggal current',
  `ayda` smallint(1) DEFAULT NULL COMMENT 'flag 1=ayda, 0=non ayda',
  `tgl_ayda` date DEFAULT NULL COMMENT 'tanggal saat transaksi ayda',
  `jumlah_ayda` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pokok saat transaksi ayda',
  `saldo_ayda` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pokok ayda per tanggal current',
  `jml_diperhitungkan` decimal(18,2) DEFAULT NULL,
  `tgl_macet_terakhir` date DEFAULT NULL COMMENT 'tanggal mulai status macet / kol=5',
  `persen_ppapwd` decimal(18,2) DEFAULT NULL,
  `jml_ppapwd` decimal(18,2) DEFAULT NULL COMMENT 'ppapwd sesuai ketentuan ojk',
  `jml_ppapdb` decimal(18,2) DEFAULT NULL COMMENT 'ppap dibentuk sesuai bank',
  `jml_pyad` decimal(18,2) DEFAULT NULL,
  `jml_pad` decimal(18,2) DEFAULT NULL,
  `sisa_bulan_angsuran` int(4) DEFAULT NULL,
  `ft_angsuran` int(4) DEFAULT NULL COMMENT 'jumlah tunggakan dalam bulanan',
  `deskripsi_agunan` varchar(1000) DEFAULT NULL,
  `jumlah_angsuran_pokok` decimal(18,2) DEFAULT NULL COMMENT 'jumlah tagihan anguran pokok bulan ini',
  `jumlah_angsuran_bunga` decimal(18,2) DEFAULT NULL COMMENT 'jumlah tagihan anguran bunga bulan ini',
  `jumlah_angsuran` decimal(18,2) DEFAULT NULL COMMENT 'jumlah tagihan anguran pokok+bunga bulan ini',
  `jumlah_tunggakan_pokok` decimal(18,2) DEFAULT NULL COMMENT 'jumlah akumulasi tagihan pokok yang belum dibayar bulan ini',
  `jumlah_tunggakan_bunga` decimal(18,2) DEFAULT NULL COMMENT 'jumlah akumulasi tagihan bunga yang belum dibayar bulan ini',
  `jumlah_tunggakan` decimal(18,2) DEFAULT NULL COMMENT 'jumlah akumulasi tagihan pokok+bunga yang belum dibayar bulan ini',
  `tunggakan_denda` decimal(18,2) DEFAULT NULL COMMENT 'jumlah akumulasi tagihan denda yang belum dibayar bulan ini',
  `pembayaran` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pembayaran keselurahan',
  `pelunasan` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pembayaran setelah dikurangi kewajiban/tunggakan',
  `pelunasan_pokok` decimal(18,2) DEFAULT NULL COMMENT 'jumlah pembayaran setelah dikurangi kewajiban/tunggakan',
  `no_rektabungan` char(20) DEFAULT NULL,
  `setoran_hari_ini` decimal(18,2) DEFAULT NULL,
  `akumulasi_setoran` decimal(18,2) DEFAULT NULL,
  `tagihan_bulan_ini` decimal(18,2) DEFAULT NULL,
  `last_payment` date DEFAULT NULL COMMENT 'tanggal pembayaran terakhir berupa pokok atau bunga',
  `janji_bayar` varchar(200) DEFAULT NULL,
  `bucket_bln_lalu` decimal(18,2) DEFAULT NULL,
  `bucket` decimal(18,2) DEFAULT NULL,
  `status_roll` varchar(20) DEFAULT NULL,
  `restruktur_ke` smallint(1) DEFAULT NULL,
  `type_produk` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `populasi_fid` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `populasi_kkr` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `deliquency` varchar(20) DEFAULT NULL,
  `status_fid_ever` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ft_hari_fid_ever` int(11) DEFAULT NULL,
  `deliquency_fid_ever` varchar(20) DEFAULT NULL,
  `ft_hari_kkr` int(11) DEFAULT NULL,
  `deliquency_kkr` varchar(10) DEFAULT NULL,
  `norek_deposito` varchar(25) DEFAULT NULL,
  `dep_yg_dijaminkan` decimal(18,2) DEFAULT NULL,
  `norek_deposito2` varchar(25) DEFAULT NULL,
  `dep_yg_dijaminkan2` decimal(18,2) DEFAULT NULL,
  `status_kredit` varchar(30) DEFAULT NULL,
  `jml_blokir_kolek` decimal(18,2) DEFAULT NULL,
  `jml_blokir_angsuran` decimal(18,2) DEFAULT NULL,
  `tgl_buka_blokir` datetime DEFAULT NULL,
  `jml_buka_blokir` decimal(18,2) DEFAULT NULL,
  `tgl_reload_blokir` datetime DEFAULT NULL,
  `jml_reload_blokir` decimal(18,2) DEFAULT NULL,
  `jumlah_angsuran_perbulan` decimal(18,2) DEFAULT NULL,
  `tgl_jt_tempo_bulan_ini` date DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL,
  `tgl_angsuran_1` date DEFAULT NULL,
  `tgl_angsuran_pokok_1` date DEFAULT NULL,
  `jenis_ckpn` smallint(6) DEFAULT NULL,
  `pd` decimal(18,2) DEFAULT NULL,
  `lgd` decimal(18,2) DEFAULT NULL,
  `ckpn` decimal(18,2) DEFAULT NULL,
  `jenis_kredit` char(2) DEFAULT NULL COMMENT '# ref sandi sifat kredit',
  `nm_jenis_kredit` varchar(250) DEFAULT NULL,
  `kode_region` varchar(15) DEFAULT NULL,
  `kode_area` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `kre_nominatif` */

insert  into `kre_nominatif`(`tgl_laporan`,`no_rekening`,`kode_kantor`,`kode_unit`,`nasabah_id`,`nama_nasabah`,`alamat`,`kecamatan`,`kota_kab`,`kota`,`domisili_alamat`,`domisili_kecamatan`,`domisili_kota_kab`,`domisili_kota`,`jenis_kelamin`,`bi_gol_penjamin`,`bi_sektor_ekonomi`,`bi_jenis_penggunaan`,`kode_chanelling`,`kode_asuransi`,`kode_integrasi`,`kode_produk`,`kode_keterkaitan`,`kode_group1`,`kode_group2`,`kode_group3`,`kode_group4`,`kode_group5`,`kode_group6`,`kode_group7`,`kode_so`,`rekomendasi_ca`,`jml_rekomendasi`,`keterangan_ca`,`jenis_fasilitas`,`tgl_realisasi`,`jml_angsuran`,`tgl_jatuh_tempo`,`perpanjangan`,`type_kredit`,`suku_bunga_per_tahun`,`jml_pinjaman`,`baki_debet`,`saldo_provisi`,`saldo_adm`,`saldo_biaya`,`baki_debet_netto`,`jml_map`,`jml_realisasi`,`jml_realisasi_ro`,`jenis_agunan`,`ikatan_agunan`,`nilai_taksasi_agunan`,`kolek_bi`,`kolek_bi_eom`,`kolek_internal`,`kolek_internal_eom`,`ft_hari`,`ft_hari_pokok`,`ft_hari_bunga`,`ft_hari_denda`,`ft_hari_eom`,`tgl_lunas`,`debius`,`tgl_debius`,`jumlah_debius`,`saldo_debius`,`ayda`,`tgl_ayda`,`jumlah_ayda`,`saldo_ayda`,`jml_diperhitungkan`,`tgl_macet_terakhir`,`persen_ppapwd`,`jml_ppapwd`,`jml_ppapdb`,`jml_pyad`,`jml_pad`,`sisa_bulan_angsuran`,`ft_angsuran`,`deskripsi_agunan`,`jumlah_angsuran_pokok`,`jumlah_angsuran_bunga`,`jumlah_angsuran`,`jumlah_tunggakan_pokok`,`jumlah_tunggakan_bunga`,`jumlah_tunggakan`,`tunggakan_denda`,`pembayaran`,`pelunasan`,`pelunasan_pokok`,`no_rektabungan`,`setoran_hari_ini`,`akumulasi_setoran`,`tagihan_bulan_ini`,`last_payment`,`janji_bayar`,`bucket_bln_lalu`,`bucket`,`status_roll`,`restruktur_ke`,`type_produk`,`populasi_fid`,`populasi_kkr`,`deliquency`,`status_fid_ever`,`ft_hari_fid_ever`,`deliquency_fid_ever`,`ft_hari_kkr`,`deliquency_kkr`,`norek_deposito`,`dep_yg_dijaminkan`,`norek_deposito2`,`dep_yg_dijaminkan2`,`status_kredit`,`jml_blokir_kolek`,`jml_blokir_angsuran`,`tgl_buka_blokir`,`jml_buka_blokir`,`tgl_reload_blokir`,`jml_reload_blokir`,`jumlah_angsuran_perbulan`,`tgl_jt_tempo_bulan_ini`,`last_update`,`tgl_angsuran_1`,`tgl_angsuran_pokok_1`,`jenis_ckpn`,`pd`,`lgd`,`ckpn`,`jenis_kredit`,`nm_jenis_kredit`,`kode_region`,`kode_area`) values 
('2026-03-31','10-63-00032-25','10',NULL,'0029066','IYUS RUSWANDI','KP PARATAG RT.004 RW.009 JAMBUDIPA CISARUA','CISARUA','0122','0122 - KABUPATEN BANDUNG BARAT','KP PARATAG RT.004 RW.009 JAMBUDIPA','CISARUA','0122','0122 - KABUPATEN BANDUNG BARAT','L','880','472009','10','000','017','01','63','2','0.001','90291','770','02','RICHARDI GUNAWAN','107','001','012502043','N',0.00,'CA TIDAK MEREKOMENDASIKAN PINJAMAN INI','','2025-07-04',36,'2028-07-04',1,'700',16.2000,70000000.00,59017801.00,479151.90,0.00,0.00,58538649.10,0,0.00,0.00,'6','c',109776000.00,1,1,1,1,0,0,0,0,0,NULL,0,NULL,0.00,0.00,0,NULL,0.00,0.00,84000000.00,NULL,0.50,295089.01,295089.01,1237409.42,0.00,28,0,'No. SHM 10000/CIPAGERAN,Tgl. 2018-12-08 LT. 52.00 m2, A/N : CUCU SUMARNI',1485527.00,1404473.00,2890000.00,0.00,0.00,0.00,0.00,2890000.00,0.00,0.00,'10-05-00034',0.00,2890000.00,2890000.00,'2026-03-04',NULL,0.00,0.00,'UNROLL',0,'Organic','NON FID','NON KKR','0','TIDAK',0,'0-30',0,'0-7','',0.00,'',0.00,'REPEAT ORDER',628000.00,2890000.00,'2024-10-14 00:00:00',2960000.00,'2025-07-04 00:00:00',2890000.00,2890000.00,'2026-03-04','2026-04-02 11:31:38','2025-08-04','2025-08-04',2,0.50,75.66,0.00,'03','3. Langsung kepada Debitur BPR yang Bersangkutan','REGIONAL_2','BANDUNG'),
('2026-03-31','13-63-00037-24','13',NULL,'0029148','ENDAH HALIMAH','DUSUN KRAJAN II RT.019 RW.003 CURUG KLARI','KLARI','0106','KABUPATEN KARAWANG','DUSUN KRAJAN II RT.019 RW.003 CURUG','KLARI','0106','KABUPATEN KARAWANG','P','880','960009','10','000','004','01','63','2','12','90147','721','02','TOMMY FRENGKY M','088','001','','Y',55000000.00,'CA MEREKOMENDASIKAN PINJAMAN INI SEBESAR 55 JT TENOR 36 BLN','','2024-04-30',36,'2027-05-06',1,'700',17.4000,55000000.00,27239204.00,259730.68,283342.57,0.00,26696130.75,0,0.00,0.00,'6','c',187662000.00,1,1,1,1,0,0,0,6,0,NULL,0,NULL,0.00,0.00,0,NULL,0.00,0.00,84000000.00,NULL,0.50,136196.02,136196.02,565554.52,0.00,14,0,'No. SHM 00525 DESA CURUG,Tgl. 2000-01-31 LT. 182.00 m2, A/N : ENDAH HALIMAH BINTI ENUK',1611785.00,714215.00,2326000.00,0.00,0.00,0.00,3209880.00,2326000.00,0.00,0.00,'13-05-00296',0.00,2326000.00,2326000.00,'2026-03-12',NULL,0.00,0.00,'UNROLL',0,'Organic','NON FID','NON KKR','0','TIDAK',6,'0-30',6,'0-7','',0.00,'',0.00,'REPEAT ORDER',2019436.00,0.00,'2025-02-26 00:00:00',2326000.00,NULL,0.00,2326000.00,'2026-03-06','2026-04-02 11:35:58','2024-05-06','2024-06-06',2,0.50,75.66,0.00,'03','3. Langsung kepada Debitur BPR yang Bersangkutan','REGIONAL_3','KARAWANG'),
('2026-03-31','33-63-00041-25','33',NULL,'0029126','RUDI SUJANA','KP SUDIMAMPIR RT.001 RW.001 CIMANGGIS BOJONG GEDE','BOJONG GEDE','0108','KABUPATEN BOGOR','KP SUDIMAMPIR RT.001 RW.001 CIMANGGIS','BOJONG GEDE','0108','KABUPATEN BOGOR','L','880','960009','10','000','019','01','63','2','09','90140','729','02','','114','003','012401022','N',0.00,'CA TIDAK MEREKOMENDASIKAN PINJAMAN INI','','2025-05-16',36,'2028-05-16',1,'700',17.4000,45000000.00,36168898.00,556975.54,742634.05,0.00,34869288.41,0,0.00,0.00,'6','e',205750000.00,1,1,1,1,0,0,0,0,0,NULL,0,NULL,0.00,0.00,0,NULL,0.00,0.00,64500000.00,NULL,0.50,180844.49,180844.49,462070.19,0.00,26,0,'No. SHM 4871/CIMANGGIS,Tgl. 2017-12-02 LT. 175.00 m2, A/N : RUDI SUJANA',983398.00,919602.00,1903000.00,0.00,0.00,0.00,228360.00,1903000.00,0.00,0.00,'33-05-00712',0.00,1903000.00,1903000.00,'2026-03-16',NULL,0.00,0.00,'UNROLL',0,'Organic','NON FID','NON KKR','0','TIDAK',0,'0-30',0,'0-7','',0.00,'',0.00,'REPEAT ORDER',0.00,0.00,'2025-12-30 00:00:00',1903000.00,NULL,0.00,1903000.00,'2026-03-16','2026-04-02 11:49:51','2025-06-16','2025-06-16',2,0.50,75.66,0.00,'03','3. Langsung kepada Debitur BPR yang Bersangkutan','REGIONAL_1','BOGOR'),
('2026-03-31','33-63-00052-25','33',NULL,'0028133','AJUM','KP CINANGNENG RT.003 RW.002 CIHIDEUNG UDIK CIAMPEA','CIAMPEA','0108','KABUPATEN BOGOR','KP CINANGNENG RT.003 RW.002 CIHIDEUNG UDIK','CIAMPEA','0108','KABUPATEN BOGOR','L','880','960009','10','169','017','01','63','2','09','90130','1124','02','','114','007','012401022','Y',50000000.00,'CA MEREKOMENDASIKAN PINJAMAN INI PLARON RP 50.000.000 TENOR 36 BULAN','','2025-06-23',36,'2028-06-23',1,'700',17.4000,60000000.00,49535018.00,785959.39,785959.39,0.00,47963099.22,0,0.00,0.00,'6','c',196979000.00,1,1,1,1,0,0,0,8,0,NULL,0,NULL,0.00,0.00,0,NULL,0.00,0.00,60000000.00,NULL,0.50,247675.09,247675.09,355843.16,0.00,27,0,'No. SHM 0996/CIHIDEUNG UDIK,Tgl. 2020-11-03 LT. 241.00 m2, A/N : AJUM',1279654.00,1257346.00,2537000.00,0.00,0.00,0.00,431290.00,2537000.00,0.00,0.00,'33-05-00354',2537000.00,2537000.00,2537000.00,'2026-03-31',NULL,0.00,0.00,'UNROLL',0,'Organic','NON FID','NON KKR','0','TIDAK',8,'0-30',8,'7+','',0.00,'',0.00,'REPEAT ORDER',0.00,0.00,'2026-03-31 00:00:00',2537000.00,NULL,0.00,2537000.00,'2026-03-23','2026-04-02 11:49:59','2025-07-23','2025-07-23',2,0.50,75.66,0.00,'03','3. Langsung kepada Debitur BPR yang Bersangkutan','REGIONAL_1','BOGOR'),
('2026-03-31','07-39-00020-22','07',NULL,'0003259','DENY FEBRIYANTO','VILLA MUTIARA WANASARI BLOK L 31/14  RT.008 RW.034 WANASARI CIBITUNG','CIBITUNG','0102','KABUPATEN BEKASI','VILLA MUTIARA WANASARI BLOK L 31/14  RT.008 RW.034 WANASARI','CIBITUNG','0102','KABUPATEN BEKASI','L','880','009000','39','090','014','01','39','2','07','90076','32','02','APRINO','091','003','012207068','N',0.00,'','','2022-12-24',48,'2026-12-24',1,'700',20.4000,90000000.00,26812624.00,135673.82,90449.19,0.00,26586500.99,0,0.00,0.00,'6','c',214260000.00,1,1,1,1,0,0,0,0,0,NULL,0,NULL,0.00,0.00,0,NULL,0.00,0.00,84000000.00,NULL,0.50,134063.12,134063.12,190881.03,0.00,9,0,'No. SHM 10295/WANASARI,Tgl. 2005-04-14 LT. 60.00 m2, A/N : DENY FEBRIYANTO',2593783.00,811217.00,3405000.00,0.00,0.00,0.00,1123650.00,3405000.00,0.00,0.00,'07-05-00201',0.00,3405000.00,3405000.00,'2026-03-09',NULL,0.00,0.00,'UNROLL',0,'Organic','NON FID','NON KKR','0','TIDAK',-15,'0-30',0,'0-7','',0.00,'',0.00,'REPEAT ORDER',300000.00,0.00,'2025-01-31 00:00:00',3405000.00,NULL,0.00,3405000.00,'2026-03-24','2026-04-02 11:22:44','2023-01-24','2023-01-24',2,0.26,48.19,0.00,'03','3. Langsung kepada Debitur BPR yang Bersangkutan','REGIONAL_3','BEKASI');

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

insert  into `lps_backup_log`(`kode_arsip`,`tgl_laporan`,`created_by`,`last_created`,`last_updated`) values 
('1_032026','2026-03-31',855,'2026-04-28 21:09:54','2026-04-28 21:09:54');

/*Table structure for table `lps_dk_f0003` */

DROP TABLE IF EXISTS `lps_dk_f0003`;

CREATE TABLE `lps_dk_f0003` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `jenis` varchar(3) DEFAULT NULL,
  `kolektibilitas` varchar(1) DEFAULT NULL,
  `plafon` decimal(22,0) DEFAULT NULL,
  `baki_debet` decimal(22,0) DEFAULT NULL,
  `tunggakan_pokok` decimal(22,0) DEFAULT NULL,
  `tunggakan_bunga` decimal(22,0) DEFAULT NULL,
  `jenis_agunan` varchar(10) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_jatuh_tempo` date DEFAULT NULL,
  `kategori_usaha` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0003` */

insert  into `lps_dk_f0003`(`flag_detail`,`nasabah_id`,`no_rekening`,`jenis`,`kolektibilitas`,`plafon`,`baki_debet`,`tunggakan_pokok`,`tunggakan_bunga`,`jenis_agunan`,`tgl_mulai`,`tgl_jatuh_tempo`,`kategori_usaha`) values 
('D','0003259','07-39-00020-22','03','1',90000000,26812624,0,0,'200','2022-12-24','2026-12-24','4'),
('D','0028133','33-63-00052-25','03','1',60000000,49535018,0,0,'200','2025-06-23','2028-06-23','2'),
('D','0029066','10-63-00032-25','03','1',70000000,59017801,0,0,'200','2025-07-04','2028-07-04','1'),
('D','0029126','33-63-00041-25','03','1',45000000,36168898,0,0,'200','2025-05-16','2028-05-16','4'),
('D','0029148','13-63-00037-24','03','1',55000000,27239204,0,0,'200','2024-04-30','2027-05-06','1');

/*Table structure for table `lps_dk_f0003_032026` */

DROP TABLE IF EXISTS `lps_dk_f0003_032026`;

CREATE TABLE `lps_dk_f0003_032026` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `jenis` varchar(3) DEFAULT NULL,
  `kolektibilitas` varchar(1) DEFAULT NULL,
  `plafon` decimal(22,0) DEFAULT NULL,
  `baki_debet` decimal(22,0) DEFAULT NULL,
  `tunggakan_pokok` decimal(22,0) DEFAULT NULL,
  `tunggakan_bunga` decimal(22,0) DEFAULT NULL,
  `jenis_agunan` varchar(10) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_jatuh_tempo` date DEFAULT NULL,
  `kategori_usaha` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0003_032026` */

insert  into `lps_dk_f0003_032026`(`flag_detail`,`nasabah_id`,`no_rekening`,`jenis`,`kolektibilitas`,`plafon`,`baki_debet`,`tunggakan_pokok`,`tunggakan_bunga`,`jenis_agunan`,`tgl_mulai`,`tgl_jatuh_tempo`,`kategori_usaha`) values 
('D','0003259','07-39-00020-22','03','1',90000000,26812624,0,0,'200','2022-12-24','2026-12-24','4'),
('D','0028133','33-63-00052-25','03','1',60000000,49535018,0,0,'200','2025-06-23','2028-06-23','2'),
('D','0029066','10-63-00032-25','03','1',70000000,59017801,0,0,'200','2025-07-04','2028-07-04','1'),
('D','0029126','33-63-00041-25','03','1',45000000,36168898,0,0,'200','2025-05-16','2028-05-16','4'),
('D','0029148','13-63-00037-24','03','1',55000000,27239204,0,0,'200','2024-04-30','2027-05-06','1');

/*Table structure for table `lps_dk_f0003_arsip` */

DROP TABLE IF EXISTS `lps_dk_f0003_arsip`;

CREATE TABLE `lps_dk_f0003_arsip` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `jenis` varchar(3) DEFAULT NULL,
  `kolektibilitas` varchar(1) DEFAULT NULL,
  `plafon` decimal(22,0) DEFAULT NULL,
  `baki_debet` decimal(22,0) DEFAULT NULL,
  `tunggakan_pokok` decimal(22,0) DEFAULT NULL,
  `tunggakan_bunga` decimal(22,0) DEFAULT NULL,
  `jenis_agunan` varchar(10) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_jatuh_tempo` date DEFAULT NULL,
  `kategori_usaha` varchar(2) DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0003_arsip` */

insert  into `lps_dk_f0003_arsip`(`flag_detail`,`nasabah_id`,`no_rekening`,`jenis`,`kolektibilitas`,`plafon`,`baki_debet`,`tunggakan_pokok`,`tunggakan_bunga`,`jenis_agunan`,`tgl_mulai`,`tgl_jatuh_tempo`,`kategori_usaha`,`kode_arsip`) values 
('D','0003259','07-39-00020-22','03','1',90000000,26812624,0,0,'200','2022-12-24','2026-12-24','4','1_032026'),
('D','0028133','33-63-00052-25','03','1',60000000,49535018,0,0,'200','2025-06-23','2028-06-23','2','1_032026'),
('D','0029066','10-63-00032-25','03','1',70000000,59017801,0,0,'200','2025-07-04','2028-07-04','1','1_032026'),
('D','0029126','33-63-00041-25','03','1',45000000,36168898,0,0,'200','2025-05-16','2028-05-16','4','1_032026'),
('D','0029148','13-63-00037-24','03','1',55000000,27239204,0,0,'200','2024-04-30','2027-05-06','1','1_032026');

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

/*Table structure for table `lps_dk_f0004_032026` */

DROP TABLE IF EXISTS `lps_dk_f0004_032026`;

CREATE TABLE `lps_dk_f0004_032026` (
  `flag_detail` varchar(1) DEFAULT 'D',
  `nasabah_id` varchar(20) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `persentase_kepemilikan` decimal(6,2) NOT NULL COMMENT '100% / total per kombinasi nasabah_id + rekening',
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dk_f0004_032026` */

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
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `flag_fraud` varchar(3) DEFAULT NULL,
  `hub_dgn_bank` varchar(2) DEFAULT NULL,
  `hub_pihak_terkait` varchar(2) DEFAULT NULL,
  `gol_nasabah` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dn_f0001` */

insert  into `lps_dn_f0001`(`flag_detail`,`nasabah_id`,`nama_nasabah`,`jenis_id`,`no_id`,`nama_ibu_kandung`,`tgl_lahir`,`no_id2`,`nama_pengurus`,`jenis_identitas`,`nomor_identitas`,`alamat`,`kota_kab`,`kewarganegaraan`,`telpon`,`flag_fraud`,`hub_dgn_bank`,`hub_pihak_terkait`,`gol_nasabah`) values 
('D','0003259','DENY FEBRIYANTO','KTP','3216070602780012','D ZUBAEDAH',NULL,'','','','','VILLA MUTIARA WANASARI BLOK L 31/14  RT.008 RW.034','0102','WNI','08828945208','1','N','20','9700'),
('D','0004939','SHANTY WANGKAR','KTP','7171036004590001','LENNY WANGKAR',NULL,'','','','','LINGKUNGAN 1  WAWONASA SINGKIL 95231','6291','WNI','000000000000','1','N','20','9700'),
('D','0005658','SHERLY KUNAWAN NAHAWI','KTP','3172064709750004','TJIANG MEGAWATI',NULL,'','','','','JL PELEPAH HIJAU I TA 1/20 KELAPA GADING TIMUR KELAPA GADING 14240','0392','WNI','08569977333','1','N','20','9700'),
('D','0008035','GUNAWAN TRISNO','KTP','3173051812540001','LIM LIAN YO',NULL,'','','','','JL GARDEN I NO 2 RT 014/RW 005 RT.014 RW.005','0393','WNI','08176622731','1','N','20','9700'),
('D','0028133','AJUM','KTP','3201151506680008','RATNAWI',NULL,'','','','','KP CINANGNENG RT.003 RW.002','0108','WNI','085624145534','1','N','20','9700'),
('D','0029066','IYUS RUSWANDI','KTP','3217031006810019','TINI SUHARTINI',NULL,'','','','','KP PARATAG RT.004 RW.009','0122','WNI','088809492710','1','N','20','9700'),
('D','0029126','RUDI SUJANA','KTP','3201131001810013','JUBAIDAH',NULL,'','','','','KP SUDIMAMPIR RT.001 RW.001','0108','WNI','08997061194','1','N','20','9700'),
('D','0029148','ENDAH HALIMAH','KTP','3215055805770007','ONIH',NULL,'','','','','DUSUN KRAJAN II RT.019 RW.003','0106','WNI','089683949030','1','N','20','9700');

/*Table structure for table `lps_dn_f0001_032026` */

DROP TABLE IF EXISTS `lps_dn_f0001_032026`;

CREATE TABLE `lps_dn_f0001_032026` (
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
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `flag_fraud` varchar(3) DEFAULT NULL,
  `hub_dgn_bank` varchar(2) DEFAULT NULL,
  `hub_pihak_terkait` varchar(2) DEFAULT NULL,
  `gol_nasabah` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dn_f0001_032026` */

insert  into `lps_dn_f0001_032026`(`flag_detail`,`nasabah_id`,`nama_nasabah`,`jenis_id`,`no_id`,`nama_ibu_kandung`,`tgl_lahir`,`no_id2`,`nama_pengurus`,`jenis_identitas`,`nomor_identitas`,`alamat`,`kota_kab`,`kewarganegaraan`,`telpon`,`flag_fraud`,`hub_dgn_bank`,`hub_pihak_terkait`,`gol_nasabah`) values 
('D','0003259','DENY FEBRIYANTO','KTP','3216070602780012','D ZUBAEDAH',NULL,'','','','','VILLA MUTIARA WANASARI BLOK L 31/14  RT.008 RW.034','0102','WNI','08828945208','1','N','20','9700'),
('D','0004939','SHANTY WANGKAR','KTP','7171036004590001','LENNY WANGKAR',NULL,'','','','','LINGKUNGAN 1  WAWONASA SINGKIL 95231','6291','WNI','000000000000','1','N','20','9700'),
('D','0005658','SHERLY KUNAWAN NAHAWI','KTP','3172064709750004','TJIANG MEGAWATI',NULL,'','','','','JL PELEPAH HIJAU I TA 1/20 KELAPA GADING TIMUR KELAPA GADING 14240','0392','WNI','08569977333','1','N','20','9700'),
('D','0008035','GUNAWAN TRISNO','KTP','3173051812540001','LIM LIAN YO',NULL,'','','','','JL GARDEN I NO 2 RT 014/RW 005 RT.014 RW.005','0393','WNI','08176622731','1','N','20','9700'),
('D','0028133','AJUM','KTP','3201151506680008','RATNAWI',NULL,'','','','','KP CINANGNENG RT.003 RW.002','0108','WNI','085624145534','1','N','20','9700'),
('D','0029066','IYUS RUSWANDI','KTP','3217031006810019','TINI SUHARTINI',NULL,'','','','','KP PARATAG RT.004 RW.009','0122','WNI','088809492710','1','N','20','9700'),
('D','0029126','RUDI SUJANA','KTP','3201131001810013','JUBAIDAH',NULL,'','','','','KP SUDIMAMPIR RT.001 RW.001','0108','WNI','08997061194','1','N','20','9700'),
('D','0029148','ENDAH HALIMAH','KTP','3215055805770007','ONIH',NULL,'','','','','DUSUN KRAJAN II RT.019 RW.003','0106','WNI','089683949030','1','N','20','9700');

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
  `kewarganegaraan` varchar(3) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `flag_fraud` varchar(3) DEFAULT NULL,
  `hub_dgn_bank` varchar(2) DEFAULT NULL,
  `hub_pihak_terkait` varchar(2) DEFAULT NULL,
  `gol_nasabah` varchar(11) DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`nasabah_id`,`kode_arsip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dn_f0001_arsip` */

insert  into `lps_dn_f0001_arsip`(`flag_detail`,`nasabah_id`,`nama_nasabah`,`jenis_id`,`no_id`,`nama_ibu_kandung`,`tgl_lahir`,`no_id2`,`nama_pengurus`,`jenis_identitas`,`nomor_identitas`,`alamat`,`kota_kab`,`kewarganegaraan`,`telpon`,`flag_fraud`,`hub_dgn_bank`,`hub_pihak_terkait`,`gol_nasabah`,`kode_arsip`) values 
('D','0003259','DENY FEBRIYANTO','KTP','3216070602780012','D ZUBAEDAH',NULL,'','','','','VILLA MUTIARA WANASARI BLOK L 31/14  RT.008 RW.034','0102','WNI','08828945208','1','N','20','9700','1_032026'),
('D','0004939','SHANTY WANGKAR','KTP','7171036004590001','LENNY WANGKAR',NULL,'','','','','LINGKUNGAN 1  WAWONASA SINGKIL 95231','6291','WNI','000000000000','1','N','20','9700','1_032026'),
('D','0005658','SHERLY KUNAWAN NAHAWI','KTP','3172064709750004','TJIANG MEGAWATI',NULL,'','','','','JL PELEPAH HIJAU I TA 1/20 KELAPA GADING TIMUR KELAPA GADING 14240','0392','WNI','08569977333','1','N','20','9700','1_032026'),
('D','0008035','GUNAWAN TRISNO','KTP','3173051812540001','LIM LIAN YO',NULL,'','','','','JL GARDEN I NO 2 RT 014/RW 005 RT.014 RW.005','0393','WNI','08176622731','1','N','20','9700','1_032026'),
('D','0028133','AJUM','KTP','3201151506680008','RATNAWI',NULL,'','','','','KP CINANGNENG RT.003 RW.002','0108','WNI','085624145534','1','N','20','9700','1_032026'),
('D','0029066','IYUS RUSWANDI','KTP','3217031006810019','TINI SUHARTINI',NULL,'','','','','KP PARATAG RT.004 RW.009','0122','WNI','088809492710','1','N','20','9700','1_032026'),
('D','0029126','RUDI SUJANA','KTP','3201131001810013','JUBAIDAH',NULL,'','','','','KP SUDIMAMPIR RT.001 RW.001','0108','WNI','08997061194','1','N','20','9700','1_032026'),
('D','0029148','ENDAH HALIMAH','KTP','3215055805770007','ONIH',NULL,'','','','','DUSUN KRAJAN II RT.019 RW.003','0106','WNI','089683949030','1','N','20','9700','1_032026');

/*Table structure for table `lps_dsn_f0002` */

DROP TABLE IF EXISTS `lps_dsn_f0002`;

CREATE TABLE `lps_dsn_f0002` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `klasifikasi_rekening` varchar(1) NOT NULL DEFAULT 'R' COMMENT 'Diisi dengan R',
  `jumlah_pemilik_rekening` int(11) DEFAULT NULL,
  `nasabah_id` varchar(20) DEFAULT NULL,
  `jenis_simpanan` varchar(4) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `status_dana` varchar(1) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `jenis_tingkat_bunga` varchar(1) DEFAULT NULL,
  `tingkat_bunga` decimal(6,2) DEFAULT NULL,
  `biaya_cashback` decimal(6,2) DEFAULT NULL,
  `tingkat_bunga_penjaminan_lps` decimal(6,2) DEFAULT NULL,
  `kategori_tingkat_bunga_simpanan` varchar(3) DEFAULT NULL,
  `saldo_simpanan` decimal(22,0) DEFAULT NULL,
  `nominal_blokir` decimal(22,0) DEFAULT NULL,
  `alasan_blokir` varchar(2) DEFAULT NULL,
  `bunga_akrual` decimal(22,0) DEFAULT NULL,
  `tgl_akru_terakhir` date DEFAULT NULL,
  `tanggal_jt` date DEFAULT NULL,
  PRIMARY KEY (`flag_detail`,`klasifikasi_rekening`,`no_rekening`,`jenis_simpanan`),
  UNIQUE KEY `kode_integrasi` (`jenis_simpanan`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dsn_f0002` */

insert  into `lps_dsn_f0002`(`flag_detail`,`klasifikasi_rekening`,`jumlah_pemilik_rekening`,`nasabah_id`,`jenis_simpanan`,`no_rekening`,`status_dana`,`tgl_mulai`,`jenis_tingkat_bunga`,`tingkat_bunga`,`biaya_cashback`,`tingkat_bunga_penjaminan_lps`,`kategori_tingkat_bunga_simpanan`,`saldo_simpanan`,`nominal_blokir`,`alasan_blokir`,`bunga_akrual`,`tgl_akru_terakhir`,`tanggal_jt`) values 
('D','R',0,'0005658','DEP','00-01-00239','B','2026-04-07','1',9.50,0.00,6.00,'2.B',4325522939,0,'',24624499,'2026-03-31','2026-04-07'),
('D','R',0,'0008035','DEP','00-01-00276','B','2026-04-05','1',9.00,0.00,6.00,'2.B',2000000000,0,'',11835616,'2026-03-31','2026-04-05'),
('D','R',0,'0004939','DEP','00-01-01135','B','2026-04-13','1',9.50,0.00,6.00,'2.B',201104658,0,'',837477,'2026-03-31','2026-04-13'),
('D','R',0,'0003259','TAB','07-05-00201','S','2018-11-28','1',3.00,0.00,6.00,'1',2817124,300000,'99',0,'2026-03-31','2026-03-31'),
('D','R',0,'0029066','TAB','10-05-00034','S','2021-09-30','1',3.00,0.00,6.00,'1',4347352,3518000,'99',0,'2026-03-31','2026-03-31'),
('D','R',0,'0029148','TAB','13-05-00296','S','2021-10-12','1',3.00,0.00,6.00,'1',3501253,3333096,'99',0,'2026-03-31','2026-03-31'),
('D','R',0,'0028133','TAB','33-05-00354','S','2021-06-24','1',3.00,0.00,6.00,'1',1738680,0,'',0,'2026-03-31','2026-03-31'),
('D','R',0,'0029126','TAB','33-05-00712','S','2024-03-21','1',3.00,0.00,6.00,'1',2168146,0,'',0,'2026-03-31','2026-03-31');

/*Table structure for table `lps_dsn_f0002_032026` */

DROP TABLE IF EXISTS `lps_dsn_f0002_032026`;

CREATE TABLE `lps_dsn_f0002_032026` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `klasifikasi_rekening` varchar(1) NOT NULL DEFAULT 'R' COMMENT 'Diisi dengan R',
  `jumlah_pemilik_rekening` int(11) DEFAULT NULL,
  `nasabah_id` varchar(20) DEFAULT NULL,
  `jenis_simpanan` varchar(4) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `status_dana` varchar(1) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `jenis_tingkat_bunga` varchar(1) DEFAULT NULL,
  `tingkat_bunga` decimal(6,2) DEFAULT NULL,
  `biaya_cashback` decimal(6,2) DEFAULT NULL,
  `tingkat_bunga_penjaminan_lps` decimal(6,2) DEFAULT NULL,
  `kategori_tingkat_bunga_simpanan` varchar(3) DEFAULT NULL,
  `saldo_simpanan` decimal(22,0) DEFAULT NULL,
  `nominal_blokir` decimal(22,0) DEFAULT NULL,
  `alasan_blokir` varchar(2) DEFAULT NULL,
  `bunga_akrual` decimal(22,0) DEFAULT NULL,
  `tgl_akru_terakhir` date DEFAULT NULL,
  `tanggal_jt` date DEFAULT NULL,
  PRIMARY KEY (`flag_detail`,`klasifikasi_rekening`,`no_rekening`,`jenis_simpanan`),
  UNIQUE KEY `kode_integrasi` (`jenis_simpanan`,`no_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dsn_f0002_032026` */

insert  into `lps_dsn_f0002_032026`(`flag_detail`,`klasifikasi_rekening`,`jumlah_pemilik_rekening`,`nasabah_id`,`jenis_simpanan`,`no_rekening`,`status_dana`,`tgl_mulai`,`jenis_tingkat_bunga`,`tingkat_bunga`,`biaya_cashback`,`tingkat_bunga_penjaminan_lps`,`kategori_tingkat_bunga_simpanan`,`saldo_simpanan`,`nominal_blokir`,`alasan_blokir`,`bunga_akrual`,`tgl_akru_terakhir`,`tanggal_jt`) values 
('D','R',0,'0005658','DEP','00-01-00239','B','2026-04-07','1',9.50,0.00,6.00,'2.B',4325522939,0,'',24624499,'2026-03-31','2026-04-07'),
('D','R',0,'0008035','DEP','00-01-00276','B','2026-04-05','1',9.00,0.00,6.00,'2.B',2000000000,0,'',11835616,'2026-03-31','2026-04-05'),
('D','R',0,'0004939','DEP','00-01-01135','B','2026-04-13','1',9.50,0.00,6.00,'2.B',201104658,0,'',837477,'2026-03-31','2026-04-13'),
('D','R',0,'0003259','TAB','07-05-00201','S','2018-11-28','1',3.00,0.00,6.00,'1',2817124,300000,'99',0,'2026-03-31','2026-03-31'),
('D','R',0,'0029066','TAB','10-05-00034','S','2021-09-30','1',3.00,0.00,6.00,'1',4347352,3518000,'99',0,'2026-03-31','2026-03-31'),
('D','R',0,'0029148','TAB','13-05-00296','S','2021-10-12','1',3.00,0.00,6.00,'1',3501253,3333096,'99',0,'2026-03-31','2026-03-31'),
('D','R',0,'0028133','TAB','33-05-00354','S','2021-06-24','1',3.00,0.00,6.00,'1',1738680,0,'',0,'2026-03-31','2026-03-31'),
('D','R',0,'0029126','TAB','33-05-00712','S','2024-03-21','1',3.00,0.00,6.00,'1',2168146,0,'',0,'2026-03-31','2026-03-31');

/*Table structure for table `lps_dsn_f0002_arsip` */

DROP TABLE IF EXISTS `lps_dsn_f0002_arsip`;

CREATE TABLE `lps_dsn_f0002_arsip` (
  `flag_detail` varchar(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `klasifikasi_rekening` varchar(1) NOT NULL DEFAULT 'R' COMMENT 'Diisi dengan R',
  `jumlah_pemilik_rekening` int(11) DEFAULT NULL,
  `nasabah_id` varchar(20) DEFAULT NULL,
  `jenis_simpanan` varchar(4) NOT NULL,
  `no_rekening` varchar(35) NOT NULL,
  `status_dana` varchar(1) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `jenis_tingkat_bunga` varchar(1) DEFAULT NULL,
  `tingkat_bunga` decimal(6,2) DEFAULT NULL,
  `biaya_cashback` decimal(6,2) DEFAULT NULL,
  `tingkat_bunga_penjaminan_lps` decimal(6,2) DEFAULT NULL,
  `kategori_tingkat_bunga_simpanan` varchar(3) DEFAULT NULL,
  `saldo_simpanan` decimal(22,0) DEFAULT NULL,
  `nominal_blokir` decimal(22,0) DEFAULT NULL,
  `alasan_blokir` varchar(2) DEFAULT NULL,
  `bunga_akrual` decimal(22,0) DEFAULT NULL,
  `tgl_akru_terakhir` date DEFAULT NULL,
  `tanggal_jt` date DEFAULT NULL,
  `kode_arsip` varchar(25) NOT NULL,
  PRIMARY KEY (`flag_detail`,`klasifikasi_rekening`,`no_rekening`,`kode_arsip`,`jenis_simpanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `lps_dsn_f0002_arsip` */

insert  into `lps_dsn_f0002_arsip`(`flag_detail`,`klasifikasi_rekening`,`jumlah_pemilik_rekening`,`nasabah_id`,`jenis_simpanan`,`no_rekening`,`status_dana`,`tgl_mulai`,`jenis_tingkat_bunga`,`tingkat_bunga`,`biaya_cashback`,`tingkat_bunga_penjaminan_lps`,`kategori_tingkat_bunga_simpanan`,`saldo_simpanan`,`nominal_blokir`,`alasan_blokir`,`bunga_akrual`,`tgl_akru_terakhir`,`tanggal_jt`,`kode_arsip`) values 
('D','R',0,'0005658','DEP','00-01-00239','B','2026-04-07','1',9.50,0.00,6.00,'2.B',4325522939,0,'',24624499,'2026-03-31','2026-04-07','1_032026'),
('D','R',0,'0008035','DEP','00-01-00276','B','2026-04-05','1',9.00,0.00,6.00,'2.B',2000000000,0,'',11835616,'2026-03-31','2026-04-05','1_032026'),
('D','R',0,'0004939','DEP','00-01-01135','B','2026-04-13','1',9.50,0.00,6.00,'2.B',201104658,0,'',837477,'2026-03-31','2026-04-13','1_032026'),
('D','R',0,'0003259','TAB','07-05-00201','S','2018-11-28','1',3.00,0.00,6.00,'1',2817124,300000,'99',0,'2026-03-31','2026-03-31','1_032026'),
('D','R',0,'0029066','TAB','10-05-00034','S','2021-09-30','1',3.00,0.00,6.00,'1',4347352,3518000,'99',0,'2026-03-31','2026-03-31','1_032026'),
('D','R',0,'0029148','TAB','13-05-00296','S','2021-10-12','1',3.00,0.00,6.00,'1',3501253,3333096,'99',0,'2026-03-31','2026-03-31','1_032026'),
('D','R',0,'0028133','TAB','33-05-00354','S','2021-06-24','1',3.00,0.00,6.00,'1',1738680,0,'',0,'2026-03-31','2026-03-31','1_032026'),
('D','R',0,'0029126','TAB','33-05-00712','S','2024-03-21','1',3.00,0.00,6.00,'1',2168146,0,'',0,'2026-03-31','2026-03-31','1_032026');

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

insert  into `lps_header`(`flag_header`,`kode_kepesertaan`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_status_koreksi`,`nomor_surat`,`periode_pengiriman`,`kode_status_pengiriman`) values 
('H','31300083','2026-03-31','DN','0001','0','','M','R');

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

insert  into `lps_header_arsip`(`flag_header`,`kode_kepesertaan`,`periode_data`,`kode_jenis_pelaporan`,`kode_form_laporan`,`kode_status_koreksi`,`nomor_surat`,`periode_pengiriman`,`kode_status_pengiriman`,`kode_arsip`) values 
('H','31300083','2026-03-31','DN','0001','0','','M','R','1_032026');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `my_logbin` */

insert  into `my_logbin`(`id`,`waktu`,`source_bin`,`error_msg`,`flg_transfer`,`waktu_transfer`,`AppVer`,`is_done`,`last_execute`) values 
(36,'2026-04-21 22:41:21','UPDATE lps.`lps_dsn_f0002` SET saldo_akhir=0 ','#42S22Unknown column \'saldo_akhir\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-21 22:41:21'),
(37,'2026-04-21 22:49:52','UPDATE lps.`lps_dsn_f0002` SET saldo_akhir=0 ','#42S22Unknown column \'saldo_akhir\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-21 22:49:52'),
(38,'2026-04-21 22:49:56','UPDATE lps.`lps_dsn_f0002` SET saldo_akhir=0 ','#42S22Unknown column \'saldo_akhir\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-21 22:49:56'),
(39,'2026-04-21 22:50:19','UPDATE lps.`lps_dsn_f0002` SET saldo_akhir=0 ','#42S22Unknown column \'saldo_akhir\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-21 22:50:19'),
(40,'2026-04-21 22:51:48','UPDATE lps.`lps_dsn_f0002` SET saldo_akhir=0 ','#42S22Unknown column \'saldo_akhir\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(41,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0003259\',\'TAB\',\'07-05-00201\',\'S\',NULL,\'1\',3,0,,\'1\',2817124,300000,\'99\',0,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'1\',2817124,300000,\'99\',0,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(42,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0028133\',\'TAB\',\'33-05-00354\',\'S\',NULL,\'1\',3,0,,\'1\',1738680,0,\'\',0,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'1\',1738680,0,\'\',0,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(43,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0029066\',\'TAB\',\'10-05-00034\',\'S\',NULL,\'1\',3,0,,\'1\',4347352,3518000,\'99\',0,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'1\',4347352,3518000,\'99\',0,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(44,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0029126\',\'TAB\',\'33-05-00712\',\'S\',NULL,\'1\',3,0,,\'1\',2168146,0,\'\',0,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'1\',2168146,0,\'\',0,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(45,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0029148\',\'TAB\',\'13-05-00296\',\'S\',NULL,\'1\',3,0,,\'1\',3501253,3333096,\'99\',0,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'1\',3501253,3333096,\'99\',0,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(46,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0004939\',\'DEP\',\'00-01-01135\',\'B\',NULL,\'1\',9.5,0,,\'2.B\',201104658,0,\'\',837477,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'2.B\',201104658,0,\'\',837477,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(47,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0005658\',\'DEP\',\'00-01-00239\',\'B\',NULL,\'1\',9.5,0,,\'2.B\',4325522939,0,\'\',24624499,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'2.B\',4325522939,0,\'\',24624499,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(48,'2026-04-21 22:51:48','INSERT INTO lps.`lps_dsn_f0002` (klasifikasi_rekening, jumlah_pemilik_rekening, nasabah_id, jenis_simpanan, no_rekening, status_dana, tgl_mulai, jenis_tingkat_bunga, tingkat_bunga, biaya_cashback, tingkat_bunga_penjaminan_lps, kategori_tingkat_bunga_simpanan, saldo_simpanan, nominal_blokir, alasan_blokir, bunga_akrual, tgl_akru_terakhir, tanggal_jt) VALUES (\'R\',\'0\',\'0008035\',\'DEP\',\'00-01-00276\',\'B\',NULL,\'1\',9,0,,\'2.B\',2000000000,0,\'\',11835616,NULL,NULL)','#42000You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'\'2.B\',2000000000,0,\'\',11835616,NULL,NULL)\' at line 2',0,NULL,'1.0.0.0',0,'2026-04-21 22:51:48'),
(49,'2026-04-27 22:35:15','INSERT INTO lps.lps_dk_f0003 (nasabah_id, no_rekening, jenis, kolektibilitas, jml_pinjaman, baki_debet, jumlah_tunggakan_pokok, jumlah_tunggakan_bunga, jenis_agunan, tgl_realisasi, tgl_jatuh_tempo, kategori_usaha) VALUES (\'0003259\',\'07-39-00020-22\',\'03\',\'1\',90000000,26812624,0,0,\'200\',\'2022-12-24\',\'2026-12-24\',\'4\')','#42S22Unknown column \'jml_pinjaman\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-27 22:35:15'),
(50,'2026-04-27 22:35:16','INSERT INTO lps.lps_dk_f0003 (nasabah_id, no_rekening, jenis, kolektibilitas, jml_pinjaman, baki_debet, jumlah_tunggakan_pokok, jumlah_tunggakan_bunga, jenis_agunan, tgl_realisasi, tgl_jatuh_tempo, kategori_usaha) VALUES (\'0029066\',\'10-63-00032-25\',\'03\',\'1\',70000000,59017801,0,0,\'200\',\'2025-07-04\',\'2028-07-04\',\'1\')','#42S22Unknown column \'jml_pinjaman\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-27 22:35:16'),
(51,'2026-04-27 22:35:16','INSERT INTO lps.lps_dk_f0003 (nasabah_id, no_rekening, jenis, kolektibilitas, jml_pinjaman, baki_debet, jumlah_tunggakan_pokok, jumlah_tunggakan_bunga, jenis_agunan, tgl_realisasi, tgl_jatuh_tempo, kategori_usaha) VALUES (\'0029148\',\'13-63-00037-24\',\'03\',\'1\',55000000,27239204,0,0,\'200\',\'2024-04-30\',\'2027-05-06\',\'1\')','#42S22Unknown column \'jml_pinjaman\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-27 22:35:16'),
(52,'2026-04-27 22:35:16','INSERT INTO lps.lps_dk_f0003 (nasabah_id, no_rekening, jenis, kolektibilitas, jml_pinjaman, baki_debet, jumlah_tunggakan_pokok, jumlah_tunggakan_bunga, jenis_agunan, tgl_realisasi, tgl_jatuh_tempo, kategori_usaha) VALUES (\'0029126\',\'33-63-00041-25\',\'03\',\'1\',45000000,36168898,0,0,\'200\',\'2025-05-16\',\'2028-05-16\',\'4\')','#42S22Unknown column \'jml_pinjaman\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-27 22:35:16'),
(53,'2026-04-27 22:35:16','INSERT INTO lps.lps_dk_f0003 (nasabah_id, no_rekening, jenis, kolektibilitas, jml_pinjaman, baki_debet, jumlah_tunggakan_pokok, jumlah_tunggakan_bunga, jenis_agunan, tgl_realisasi, tgl_jatuh_tempo, kategori_usaha) VALUES (\'0028133\',\'33-63-00052-25\',\'03\',\'1\',60000000,49535018,0,0,\'200\',\'2025-06-23\',\'2028-06-23\',\'2\')','#42S22Unknown column \'jml_pinjaman\' in \'field list\'',0,NULL,'1.0.0.0',0,'2026-04-27 22:35:16');

/*Table structure for table `nasabah` */

DROP TABLE IF EXISTS `nasabah`;

CREATE TABLE `nasabah` (
  `NASABAH_ID` varchar(20) NOT NULL,
  `NAMA_NASABAH` char(100) DEFAULT NULL,
  `ALAMAT` char(100) DEFAULT NULL,
  `TELPON` char(50) DEFAULT NULL,
  `JENIS_KELAMIN` char(2) DEFAULT NULL,
  `TEMPATLAHIR` varchar(50) DEFAULT NULL,
  `TGLLAHIR` date DEFAULT NULL,
  `JENIS_ID` char(1) DEFAULT NULL,
  `NO_ID` varchar(30) DEFAULT NULL,
  `KETERANGAN` varchar(200) DEFAULT NULL,
  `kode_group1` char(5) DEFAULT NULL,
  `kode_group2` char(5) DEFAULT NULL,
  `kode_group3` char(5) DEFAULT NULL,
  `KODE_AGAMA` varchar(10) DEFAULT NULL,
  `DESA` varchar(50) DEFAULT NULL,
  `KECAMATAN` varchar(50) DEFAULT NULL,
  `KOTA_KAB` varchar(20) DEFAULT NULL,
  `PROPINSI` varchar(20) DEFAULT NULL,
  `VERIFIKASI` char(1) DEFAULT NULL,
  `HP` char(50) DEFAULT NULL,
  `TGL_REGISTER` date DEFAULT NULL,
  `TANDATANGAN` blob DEFAULT NULL,
  `NAMA_IBU_KANDUNG` varchar(35) DEFAULT NULL,
  `NAMA_ALIAS` char(50) DEFAULT NULL,
  `NPWP` char(20) DEFAULT NULL,
  `STATUS_GELAR` char(4) DEFAULT NULL,
  `KET_STATUS` char(50) DEFAULT NULL,
  `JENIS_DEBITUR` char(1) DEFAULT NULL,
  `TEMPAT_BADAN_USAHA` char(50) DEFAULT NULL,
  `TGL_AKTE_AWAL` date DEFAULT NULL,
  `NO_AKTE_AWAL` char(30) DEFAULT NULL,
  `NO_PASPOR` char(30) DEFAULT NULL,
  `kodepos` char(5) DEFAULT NULL,
  `DIN` varchar(100) DEFAULT NULL,
  `KODE_KANTOR` char(4) DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL,
  `ALAMAT_KTP` char(200) DEFAULT NULL,
  `ALAMAT_SURAT` char(200) DEFAULT NULL,
  `EMAIL` char(50) DEFAULT NULL,
  `ALAMAT_KANTOR` char(200) DEFAULT NULL,
  `NAMA_KANTOR` char(75) DEFAULT NULL,
  `NAMA_INSTANSI` char(75) DEFAULT NULL,
  `TELPON_KANTOR` char(50) DEFAULT NULL,
  `EMAIL_KANTOR` char(50) DEFAULT NULL,
  `kode_area` char(4) DEFAULT NULL,
  `negara_domisili` char(3) DEFAULT NULL,
  `gol_debitur` char(3) DEFAULT NULL,
  `sandi_pekerjaan` char(3) DEFAULT NULL,
  `tempat_bekerja` char(100) DEFAULT NULL,
  `bidang_usaha` char(5) DEFAULT NULL,
  `hub_dgn_bank` char(4) DEFAULT NULL,
  `langgar_bmpk` char(1) DEFAULT NULL,
  `lampaui_bmpk` char(1) DEFAULT NULL,
  `MASA_BERLAKU_KTP` date DEFAULT NULL,
  `nasabah_alternatif` char(20) DEFAULT NULL,
  `NAMA_NASABAH_SID` char(100) DEFAULT NULL,
  `NAMA_SUAMI_ATAU_ISTRI` char(100) DEFAULT NULL,
  `TGL_LAHIR_SUAMI_ATAU_ISTRI` date DEFAULT NULL,
  `TGL_PERNIKAHAN_SUAMI_ATAU_ISTRI` date DEFAULT NULL,
  `HOBI` char(75) DEFAULT NULL,
  `NAMA_ANAK1` char(100) DEFAULT NULL,
  `TGL_LAHIR_ANAK1` date DEFAULT NULL,
  `NAMA_PERUSAHAAN` char(100) DEFAULT NULL,
  `ALAMAT_PERUSAHAAN` char(125) DEFAULT NULL,
  `TELPON_PERUSAHAAN` char(50) DEFAULT NULL,
  `FAX_PERUSAHAAN` char(50) DEFAULT NULL,
  `NAMA_PEJABAT1` char(100) DEFAULT NULL,
  `TEMPAT_LAHIR_PEJABAT1` char(50) DEFAULT NULL,
  `TGL_LAHIR_PEJABAT1` date DEFAULT NULL,
  `ALAMAT_PEJABAT1` char(125) DEFAULT NULL,
  `TELPON_PEJABAT1` char(50) DEFAULT NULL,
  `NAMA_PEJABAT2` char(100) DEFAULT NULL,
  `TEMPAT_LAHIR_PEJABAT2` char(50) DEFAULT NULL,
  `TGL_LAHIR_PEJABAT2` date DEFAULT NULL,
  `ALAMAT_PEJABAT2` char(125) DEFAULT NULL,
  `TELPON_PEJABAT2` char(50) DEFAULT NULL,
  `kode_group4` char(3) DEFAULT NULL,
  `kode_group5` char(3) DEFAULT NULL,
  `ALAMAT2` char(100) DEFAULT NULL,
  `FLAG_SID` char(1) DEFAULT NULL,
  `NO_REK_BANK` char(50) DEFAULT NULL,
  `flag_backlist` smallint(1) DEFAULT NULL,
  `ket_backlist` varchar(200) DEFAULT NULL,
  `NPM` char(7) DEFAULT NULL,
  `KET_WARNING` char(200) DEFAULT NULL,
  `GELAR1` char(20) DEFAULT NULL,
  `GELAR2` char(20) DEFAULT NULL,
  `flag_masa_berlaku` char(1) DEFAULT NULL,
  `STATUS_MARITAL` char(20) DEFAULT NULL,
  `JABATAN_PEKERJAAN` char(50) DEFAULT NULL,
  `nasabah_id_qq` char(25) DEFAULT NULL,
  `transfer` int(1) DEFAULT NULL,
  `gin` char(6) DEFAULT NULL,
  `rating_debitur` char(6) DEFAULT NULL,
  `lembaga_rating` char(3) DEFAULT NULL,
  `go_public` char(1) DEFAULT NULL,
  `id_jabatan` char(2) DEFAULT NULL,
  `pangsa_pemilikan` decimal(18,2) DEFAULT NULL,
  `id_debitur` char(45) DEFAULT '',
  `id_pengurus` char(35) DEFAULT '',
  `flag_koreksi_ktp` int(1) DEFAULT 0,
  `phone_number` char(20) DEFAULT '',
  `phone_pin` char(16) DEFAULT '',
  `kode_tingkat_resiko` char(25) DEFAULT NULL,
  `penjamin_nama` varchar(50) DEFAULT NULL,
  `penjamin_status` varchar(20) DEFAULT NULL,
  `penjamin_kelamin` char(2) DEFAULT NULL,
  `penjamin_alamat` varchar(100) DEFAULT NULL,
  `penjamin_telpon` varchar(15) DEFAULT NULL,
  `penjamin_pekerjaan` varchar(100) DEFAULT NULL,
  `penjamin_deskripsi_pekerjaan` varchar(200) DEFAULT NULL,
  `deskripsi_pekerjaan` varchar(200) DEFAULT NULL,
  `nama_suami_or_istri` varchar(30) DEFAULT NULL,
  `penjamin_alamat_pekerjaan` varchar(100) DEFAULT NULL,
  `NO_KK` char(30) DEFAULT NULL,
  `tgl_lahir_bapak_kandung` date DEFAULT NULL,
  `tgl_lahir_ibu_kandung` date DEFAULT NULL,
  `penjamin_tgllahir` date DEFAULT NULL,
  `BARIS_BUKU` int(11) DEFAULT 0,
  `alamat_legal` enum('KTP','SURAT','KANTOR','LAIN') NOT NULL DEFAULT 'LAIN',
  `alamat_tagih` enum('KTP','SURAT','KANTOR','LAIN') NOT NULL DEFAULT 'LAIN',
  `nasabah_id_old` varchar(20) DEFAULT NULL,
  `no_akte_perubahan_terakhir` varchar(30) DEFAULT NULL,
  `tgl_akte_perubahan_terakhir` date DEFAULT NULL,
  `group_debitur` char(150) DEFAULT NULL,
  `tgl_pemeringkat` date DEFAULT NULL,
  `no_identitas_suami_atau_istri` varchar(25) DEFAULT NULL,
  `jumlah_tanggungan` decimal(2,0) NOT NULL DEFAULT 0,
  `janji_pisah_harta` char(1) DEFAULT NULL,
  `slik_kode_gelar` char(3) DEFAULT NULL,
  `slik_kode_pekerjaan` char(3) DEFAULT NULL,
  `slik_kode_hub_ljk` char(4) DEFAULT NULL,
  `slik_kode_gol_debitur` char(11) DEFAULT NULL,
  `slik_kode_negara` char(2) DEFAULT 'ID',
  `slik_tempat_bekerja` varchar(50) DEFAULT NULL,
  `slik_kode_bidang_usaha` char(6) DEFAULT NULL,
  `slik_melanggar_bmpk` char(1) DEFAULT 'T',
  `slik_melampaui_bmpk` char(1) DEFAULT 'T',
  `flag_aplikasi` int(1) DEFAULT 0,
  `flag_resi_ektp` smallint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `nasabah` */

insert  into `nasabah`(`NASABAH_ID`,`NAMA_NASABAH`,`ALAMAT`,`TELPON`,`JENIS_KELAMIN`,`TEMPATLAHIR`,`TGLLAHIR`,`JENIS_ID`,`NO_ID`,`KETERANGAN`,`kode_group1`,`kode_group2`,`kode_group3`,`KODE_AGAMA`,`DESA`,`KECAMATAN`,`KOTA_KAB`,`PROPINSI`,`VERIFIKASI`,`HP`,`TGL_REGISTER`,`TANDATANGAN`,`NAMA_IBU_KANDUNG`,`NAMA_ALIAS`,`NPWP`,`STATUS_GELAR`,`KET_STATUS`,`JENIS_DEBITUR`,`TEMPAT_BADAN_USAHA`,`TGL_AKTE_AWAL`,`NO_AKTE_AWAL`,`NO_PASPOR`,`kodepos`,`DIN`,`KODE_KANTOR`,`USERID`,`ALAMAT_KTP`,`ALAMAT_SURAT`,`EMAIL`,`ALAMAT_KANTOR`,`NAMA_KANTOR`,`NAMA_INSTANSI`,`TELPON_KANTOR`,`EMAIL_KANTOR`,`kode_area`,`negara_domisili`,`gol_debitur`,`sandi_pekerjaan`,`tempat_bekerja`,`bidang_usaha`,`hub_dgn_bank`,`langgar_bmpk`,`lampaui_bmpk`,`MASA_BERLAKU_KTP`,`nasabah_alternatif`,`NAMA_NASABAH_SID`,`NAMA_SUAMI_ATAU_ISTRI`,`TGL_LAHIR_SUAMI_ATAU_ISTRI`,`TGL_PERNIKAHAN_SUAMI_ATAU_ISTRI`,`HOBI`,`NAMA_ANAK1`,`TGL_LAHIR_ANAK1`,`NAMA_PERUSAHAAN`,`ALAMAT_PERUSAHAAN`,`TELPON_PERUSAHAAN`,`FAX_PERUSAHAAN`,`NAMA_PEJABAT1`,`TEMPAT_LAHIR_PEJABAT1`,`TGL_LAHIR_PEJABAT1`,`ALAMAT_PEJABAT1`,`TELPON_PEJABAT1`,`NAMA_PEJABAT2`,`TEMPAT_LAHIR_PEJABAT2`,`TGL_LAHIR_PEJABAT2`,`ALAMAT_PEJABAT2`,`TELPON_PEJABAT2`,`kode_group4`,`kode_group5`,`ALAMAT2`,`FLAG_SID`,`NO_REK_BANK`,`flag_backlist`,`ket_backlist`,`NPM`,`KET_WARNING`,`GELAR1`,`GELAR2`,`flag_masa_berlaku`,`STATUS_MARITAL`,`JABATAN_PEKERJAAN`,`nasabah_id_qq`,`transfer`,`gin`,`rating_debitur`,`lembaga_rating`,`go_public`,`id_jabatan`,`pangsa_pemilikan`,`id_debitur`,`id_pengurus`,`flag_koreksi_ktp`,`phone_number`,`phone_pin`,`kode_tingkat_resiko`,`penjamin_nama`,`penjamin_status`,`penjamin_kelamin`,`penjamin_alamat`,`penjamin_telpon`,`penjamin_pekerjaan`,`penjamin_deskripsi_pekerjaan`,`deskripsi_pekerjaan`,`nama_suami_or_istri`,`penjamin_alamat_pekerjaan`,`NO_KK`,`tgl_lahir_bapak_kandung`,`tgl_lahir_ibu_kandung`,`penjamin_tgllahir`,`BARIS_BUKU`,`alamat_legal`,`alamat_tagih`,`nasabah_id_old`,`no_akte_perubahan_terakhir`,`tgl_akte_perubahan_terakhir`,`group_debitur`,`tgl_pemeringkat`,`no_identitas_suami_atau_istri`,`jumlah_tanggungan`,`janji_pisah_harta`,`slik_kode_gelar`,`slik_kode_pekerjaan`,`slik_kode_hub_ljk`,`slik_kode_gol_debitur`,`slik_kode_negara`,`slik_tempat_bekerja`,`slik_kode_bidang_usaha`,`slik_melanggar_bmpk`,`slik_melampaui_bmpk`,`flag_aplikasi`,`flag_resi_ektp`) values 
('0003259','DENY FEBRIYANTO','VILLA MUTIARA WANASARI BLOK L 31/14','08828945208','L','JAKARTA','1978-02-06','1','3216070602780012','STAFF OPERASIONAL EKSPEDISI','01','08','000','ISLAM','WANASARI','CIBITUNG','0102','008','1','','2008-09-24',NULL,'D ZUBAEDAH','DENY FEBRIYANTO','','','','0','','1899-12-30','','','17520','','00',NULL,NULL,NULL,'deny.f@gmail.com',NULL,'SAP EXPRESS COURIER','SAP EXPRESS COURIER','02189527481','','','ID','907','099','PT.SAMUDRA NAYAKA GRAHA UNGGUL','9990','9900','T','T','2010-02-06',NULL,'DENY FEBRIYANTO','SUNARTI','1980-01-02','2002-02-24','BEKERJA','','1899-12-30','','','','','','','1899-12-30','','','','','1899-12-30','','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','','1','Menikah','00-','00-03590',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3216070612100505',NULL,NULL,NULL,0,'KTP','KTP','00-03590',NULL,NULL,NULL,NULL,'3216074201800010',0,'T','00','099','N','S14','ID','SAP EXPRESS COURIER','009000','T','T',0,0),
('0004939','SHANTY WANGKAR','LINGKUNGAN 1','000000000000','P','KOTAMOBAGU','1959-04-22','1','7171036004590001','.','05','02','000','KRISTEN','WAWONASA','SINGKIL','6291','019','1','0878-46696884','2010-09-23',NULL,'LENNY WANGKAR','SANTY WANGKAR','.','0100','.','0','.','2014-01-07','.','.','-','','00',72,NULL,NULL,'deposito@kreditmandiri.co.id',NULL,'.','.','.','','','ID','907','099','LAINNYA','9990','9900','T','T','2018-04-22','','SHANTY WANGKAR','.','2014-01-07','2014-01-07','',NULL,NULL,'.','.','.','.','.','.','2014-01-07','.','.','.','.','2014-01-07','.','.','','','','','',0,'','','','','','1','Menikah','',NULL,0,'','','','','',0.00,'','',0,'','','','','','','','','','','','','','.',NULL,NULL,NULL,0,'LAIN','LAIN','00-05357',NULL,NULL,NULL,NULL,'',0,'T','01','099','N','S14','ID','.','009000','T','T',0,0),
('0005658','SHERLY KUNAWAN NAHAWI','JL PELEPAH HIJAU I TA 1/20','08569977333','P','UJUNG PANDANG','1975-09-07','1','3172064709750004','','02','02','000','BUDHA','KELAPA GADING TIMUR','KELAPA GADING','0392','DKI JAKARTA','1','','2012-09-07',NULL,'TJIANG MEGAWATI','SHERLY KUNAWAN NAHAWI','','0100','','0','',NULL,'','','14240','','00',64,NULL,NULL,'MINNITA@GMAIL.COM',NULL,'UD GEMILANG','','','','','ID','907','','UD GEMILANG','','','T','T','2018-09-07','','SHERLY KUNAWAN NAHAWI','','2021-06-08','2021-06-08','','',NULL,'','','','','','',NULL,'','','','',NULL,'','','','','','','',0,'','','','','','1','Menikah','','',0,'','','','','',0.00,'','',0,'','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'LAIN','LAIN','00-06083',NULL,NULL,NULL,NULL,'0',0,'T','01','013','N','S14','ID','UD GEMILANG','009000','T','T',0,0),
('0008035','GUNAWAN TRISNO','JL GARDEN I NO 2 RT 014/RW 005','08176622731','L','TEGAL','1954-12-18','1','3173051812540001','','05','01','000','KATHOLIK','KEDOYA SELATAN','KEBON JERUK','0393','025','1','','2014-03-24',NULL,'LIM LIAN YO','GUNAWAN TRISNO','12.345.678.9.123.456','0100','','0','','2014-03-24','','','17000','','00',64,NULL,NULL,'tgbaren@hotmail.com',NULL,'','','',NULL,'','ID','874','012','PENSIUNAN','9990','9900','T','T','2016-12-18',NULL,'GUNAWAN TRISNO','','2014-03-24','2014-03-24','',NULL,NULL,'','','','','','','2014-03-24','','','','','2014-03-24','','',NULL,NULL,'',NULL,'',0,'',NULL,'','','','','Menikah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0,'KTP','KTP',NULL,NULL,NULL,NULL,NULL,'',0,'T','01','012','N','S14','ID','NA','009000','T','T',0,0),
('0028133','AJUM','KP CINANGNENG','085624145534','L','BOGOR','1968-06-15','1','3201151506680008','','05','06','000','ISLAM','CIHIDEUNG UDIK','CIAMPEA','0108','008','1','085863484356','2021-06-21',NULL,'RATNAWI','AJUM','401315213434000','','','0',NULL,NULL,NULL,'','16620','','32',3463524,NULL,NULL,'ajum@gmail.com',NULL,'BANGUNAN','KONTRUKSI','085691674046','','','ID',NULL,NULL,'KONTRUKSI',NULL,NULL,'T','T','2026-06-21',NULL,'AJUM','ENCIH','1970-01-20','1987-02-13','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',0,'',NULL,'','','','1','Menikah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3201152310080014',NULL,NULL,NULL,0,'KTP','KTP',NULL,NULL,NULL,NULL,NULL,'3201156001700005',0,'T','00','013','N','S14','ID','BANGUNAN','960009','T','T',0,0),
('0029066','IYUS RUSWANDI','KP PARATAG','088809492710','L','BANDUNG','1981-06-10','1','3217031006810019','','05','001','000','ISLAM','JAMBUDIPA','CISARUA','0122','008','1','','2021-09-30',NULL,'TINI SUHARTINI','IYUS RUSWANDI','249470642421000','','','0',NULL,NULL,NULL,'','40551','','10',928,NULL,NULL,'IYUSRUSWANDI558@GMAIL.COM',NULL,'WARUNG NASI','','','iyusrustandi@gmail.com','','ID',NULL,NULL,'WARUNG NASI',NULL,NULL,'T','T','2026-09-30',NULL,'IYUS RUSWANDI','CUCU SUMARNI','1981-03-03','2021-09-30','OLAHRAGA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',0,'',NULL,'','','','1','Menikah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3217030406090006',NULL,NULL,NULL,0,'KTP','KTP',NULL,NULL,NULL,NULL,NULL,'3217034303810017',4,'T','00','013','N','S14','ID','WARUNG NASI','561009','T','T',0,0),
('0029126','RUDI SUJANA','KP SUDIMAMPIR','08997061194','L','BOGOR','1981-01-10','1','3201131001810013','SECURITY','01','06','002','ISLAM','CIMANGGIS','BOJONG GEDE','0108','008','1','','2021-10-08',NULL,'JUBAIDAH','RUDI','731991956403000','','','0',NULL,NULL,NULL,'','16920','','01',658,NULL,NULL,'SUJANARUDI81@GMAIL.COM',NULL,'PT PERKASA ABDI BHUANA','PT PERKASA ABDI BHUANA','02182622071','','','ID',NULL,NULL,'PT PERKASA ABDI BHUANA',NULL,NULL,'T','T','2026-10-08',NULL,'RUDI SUJANA','IIN NURAINI','1990-02-09','2008-11-29','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',0,'',NULL,'','','','1','Menikah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3201131102160006',NULL,NULL,NULL,0,'KTP','KTP',NULL,NULL,NULL,NULL,NULL,'3271014902900017',4,'T','00','099','N','S14','ID','PT PERKASA ABDI BHUANA','009000','T','T',0,0),
('0029148','ENDAH HALIMAH','DUSUN KRAJAN II','089683949030','P','KARAWANG','1977-05-18','1','3215055805770007','IBU RUMAH TANGGA','10','11','000','ISLAM','CURUG','KLARI','0106','008','1','089683949030','2021-10-12',NULL,'ONIH','ENDAH HALIMAH','','','','0',NULL,NULL,NULL,'','41371','','13',3526842,NULL,NULL,'nurilbasra02@gmail.com',NULL,'IBU RUMAH TANGGA','IBU RUMAH TANGGA','','endah@gmail.com','','ID',NULL,NULL,'IBU RUMAH TANGGA',NULL,NULL,'T','T','2026-10-12',NULL,'ENDAH HALIMAH','NURHASAN','1967-11-13','1993-07-15','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',0,'',NULL,'','','','1','Menikah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',0,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3215052507070141',NULL,NULL,NULL,0,'KTP','KTP',NULL,NULL,NULL,NULL,NULL,'3215051311670001',0,'T','00','034','N','S14','ID','IBU RUMAH TANGGA','009000','T','T',0,0);

/*Table structure for table `nasabah_alamat` */

DROP TABLE IF EXISTS `nasabah_alamat`;

CREATE TABLE `nasabah_alamat` (
  `nasabah_id` varchar(20) NOT NULL,
  `ktp_alamat` varchar(200) DEFAULT NULL,
  `ktp_rt` varchar(4) DEFAULT NULL,
  `ktp_rw` varchar(4) DEFAULT NULL,
  `ktp_id_kelurahan` bigint(11) DEFAULT NULL,
  `ktp_desa` varchar(50) DEFAULT NULL,
  `ktp_id_kecamatan` bigint(11) DEFAULT NULL,
  `ktp_kecamatan` varchar(50) DEFAULT NULL,
  `ktp_kota_kab` varchar(20) DEFAULT NULL,
  `ktp_id_kabupaten` bigint(11) DEFAULT NULL,
  `ktp_nama_kabupaten` varchar(50) DEFAULT NULL,
  `ktp_propinsi` varchar(20) DEFAULT NULL,
  `ktp_id_provinsi` bigint(11) DEFAULT NULL,
  `ktp_nama_provinsi` varchar(50) DEFAULT NULL,
  `ktp_telpon` varchar(50) DEFAULT NULL,
  `ktp_hp` varchar(50) DEFAULT NULL,
  `ktp_hp_wa` varchar(50) DEFAULT NULL,
  `ktp_fax` varchar(50) DEFAULT NULL,
  `ktp_kodepos` varchar(5) DEFAULT NULL,
  `surat_alamat` varchar(200) DEFAULT NULL,
  `surat_rt` varchar(4) DEFAULT NULL,
  `surat_rw` varchar(4) DEFAULT NULL,
  `surat_id_kelurahan` bigint(11) DEFAULT NULL,
  `surat_desa` varchar(50) DEFAULT NULL,
  `surat_id_kecamatan` bigint(11) DEFAULT NULL,
  `surat_kecamatan` varchar(50) DEFAULT NULL,
  `surat_kota_kab` varchar(20) DEFAULT NULL,
  `surat_id_kabupaten` bigint(11) DEFAULT NULL,
  `surat_nama_kabupaten` varchar(50) DEFAULT NULL,
  `surat_propinsi` varchar(20) DEFAULT NULL,
  `surat_id_provinsi` bigint(11) DEFAULT NULL,
  `surat_nama_provinsi` varchar(50) DEFAULT NULL,
  `surat_telpon` varchar(50) DEFAULT NULL,
  `surat_hp` varchar(50) DEFAULT NULL,
  `surat_hp_wa` varchar(50) DEFAULT NULL,
  `surat_fax` varchar(50) DEFAULT NULL,
  `surat_kodepos` varchar(5) DEFAULT NULL,
  `kerja_alamat` varchar(200) DEFAULT NULL,
  `kerja_rt` varchar(4) DEFAULT NULL,
  `kerja_rw` varchar(4) DEFAULT NULL,
  `kerja_id_kelurahan` bigint(11) DEFAULT NULL,
  `kerja_desa` varchar(50) DEFAULT NULL,
  `kerja_id_kecamatan` bigint(11) DEFAULT NULL,
  `kerja_kecamatan` varchar(50) DEFAULT NULL,
  `kerja_kota_kab` varchar(20) DEFAULT NULL,
  `kerja_id_kabupaten` bigint(11) DEFAULT NULL,
  `kerja_nama_kabupaten` varchar(50) DEFAULT NULL,
  `kerja_propinsi` varchar(20) DEFAULT NULL,
  `kerja_id_provinsi` bigint(11) DEFAULT NULL,
  `kerja_nama_provinsi` varchar(50) DEFAULT NULL,
  `kerja_telpon` varchar(50) DEFAULT NULL,
  `kerja_hp` varchar(50) DEFAULT NULL,
  `kerja_hp_wa` varchar(50) DEFAULT NULL,
  `kerja_fax` varchar(50) DEFAULT NULL,
  `kerja_kodepos` varchar(5) DEFAULT NULL,
  `lain_alamat` varchar(200) DEFAULT NULL,
  `lain_rt` varchar(4) DEFAULT NULL,
  `lain_rw` varchar(4) DEFAULT NULL,
  `lain_desa` varchar(50) DEFAULT NULL,
  `lain_kecamatan` varchar(50) DEFAULT NULL,
  `lain_kota_kab` varchar(50) DEFAULT NULL,
  `lain_propinsi` varchar(20) DEFAULT NULL,
  `lain_telpon` varchar(50) DEFAULT NULL,
  `lain_hp` varchar(50) DEFAULT NULL,
  `lain_hp_wa` varchar(50) DEFAULT NULL,
  `lain_fax` varchar(50) DEFAULT NULL,
  `lain_kode_pos` varchar(5) DEFAULT NULL,
  `tagih_telpon` varchar(50) DEFAULT NULL,
  `tagih_wa` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `nasabah_alamat` */

insert  into `nasabah_alamat`(`nasabah_id`,`ktp_alamat`,`ktp_rt`,`ktp_rw`,`ktp_id_kelurahan`,`ktp_desa`,`ktp_id_kecamatan`,`ktp_kecamatan`,`ktp_kota_kab`,`ktp_id_kabupaten`,`ktp_nama_kabupaten`,`ktp_propinsi`,`ktp_id_provinsi`,`ktp_nama_provinsi`,`ktp_telpon`,`ktp_hp`,`ktp_hp_wa`,`ktp_fax`,`ktp_kodepos`,`surat_alamat`,`surat_rt`,`surat_rw`,`surat_id_kelurahan`,`surat_desa`,`surat_id_kecamatan`,`surat_kecamatan`,`surat_kota_kab`,`surat_id_kabupaten`,`surat_nama_kabupaten`,`surat_propinsi`,`surat_id_provinsi`,`surat_nama_provinsi`,`surat_telpon`,`surat_hp`,`surat_hp_wa`,`surat_fax`,`surat_kodepos`,`kerja_alamat`,`kerja_rt`,`kerja_rw`,`kerja_id_kelurahan`,`kerja_desa`,`kerja_id_kecamatan`,`kerja_kecamatan`,`kerja_kota_kab`,`kerja_id_kabupaten`,`kerja_nama_kabupaten`,`kerja_propinsi`,`kerja_id_provinsi`,`kerja_nama_provinsi`,`kerja_telpon`,`kerja_hp`,`kerja_hp_wa`,`kerja_fax`,`kerja_kodepos`,`lain_alamat`,`lain_rt`,`lain_rw`,`lain_desa`,`lain_kecamatan`,`lain_kota_kab`,`lain_propinsi`,`lain_telpon`,`lain_hp`,`lain_hp_wa`,`lain_fax`,`lain_kode_pos`,`tagih_telpon`,`tagih_wa`,`latitude`,`longitude`) values 
('0003259','VILLA MUTIARA WANASARI BLOK L 31/14 ','008','034',3216070013,'WANASARI',3216070,'CIBITUNG','0102',3216,'KABUPATEN BEKASI','008',32,'JAWA BARAT','08828945208','',NULL,'','17520','VILLA MUTIARA WANASARI BLOK L 31/14 ','008','034',3216070013,'WANASARI',3216070,'CIBITUNG','0102',3216,'KABUPATEN BEKASI','008',32,'JAWA BARAT','08828945208','',NULL,'','17520','JALAN INPEKSI KALIMALANG ','','',3275060001,'BINTARA JAYA',3275,'BEKASI BARAT','0198',3275,'KOTA BEKASI','008',32,'JAWA BARAT','02189527481','',NULL,'','17136','VILLA MUTIARA WANASARI BLOK L 31/14 ',NULL,NULL,'WANASARI','CIBITUNG','0102','008','08828945208','',NULL,NULL,'17520',NULL,NULL,NULL,NULL),
('0004939','LINGKUNGAN 1 ','-','001',7171051003,'WAWONASA',7171051,'SINGKIL','6291',7171,'KOTA MANADO','019',71,'SULAWESI UTARA','087846696884','087846696884',NULL,'.','95231','LINGKUNGAN 1 ','-','001',7171051003,'WAWONASA',7171051,'SINGKIL','6291',7171,'KOTA MANADO','019',71,'SULAWESI UTARA','087846696884','087846696884',NULL,'','95231','LINGKUNGAN 1 ','-','001',7171051003,'WAWONASA',7171,'SINGKIL','6291',7171,'KOTA MANADO','019',71,'SULAWESI UTARA','087846696884','087846696884',NULL,'','95231','LINGKUNGAN 1 ',NULL,NULL,'WAWONASA','SINGKIL','6291','019','087846696884','087846696884',NULL,NULL,'95231',NULL,NULL,NULL,NULL),
('0005658','JL PELEPAH HIJAU I TA 1/20','008','001',3175050002,'KELAPA GADING TIMUR',3175050,'KELAPA GADING','0392',3175,'KOTA JAKARTA UTARA','025',31,'DKI JAKARTA','08569977333','',NULL,'','14240','JL PELEPAH HIJAU I TA 1/20','008','001',3175050002,'KELAPA GADING TIMUR',3175050,'KELAPA GADING','0392',3175,'KOTA JAKARTA UTARA','025',31,'DKI JAKARTA','08569977333','',NULL,'','14240','JL MADU NO 20A','005','003',3174060005,'MANGGA BESAR',3174,'TAMAN SARI','0393',3174,'KOTA JAKARTA BARAT','025',31,'DKI JAKARTA','08569977333','',NULL,'','11180','JL PELEPAH HIJAU I TA 1/20',NULL,NULL,'KELAPA GADING TIMUR','KELAPA GADING','0392','025','08569977333','',NULL,NULL,'14240',NULL,NULL,NULL,NULL),
('0008035','JL GARDEN I NO 2 RT 014/RW 005','014','005',NULL,'KEDOYA SELATAN',NULL,'KEBON JERUK','0393',NULL,NULL,'025',NULL,NULL,'08176622731','',NULL,'','17000','JL GARDEN I NO 2 RT 014/RW 005','014','005',NULL,'KEDOYA SELATAN',NULL,'KEBON JERUK','0393',NULL,NULL,'025',NULL,NULL,'08176622731','',NULL,'','17000','JL GARDEN I NO 2 RT 014/RW 005','014','005',NULL,'',NULL,'','0393',NULL,NULL,'025',NULL,NULL,'08176622731','',NULL,'','17000','JL GARDEN I NO 2 RT 014/RW 005',NULL,NULL,'KEDOYA SELATAN','KEBON JERUK','0393','025','08176622731','',NULL,NULL,'17000',NULL,NULL,NULL,NULL),
('0028133','KP CINANGNENG','003','002',3201050013,'CIHIDEUNG UDIK',3201050,'CIAMPEA','0108',3201,'KABUPATEN BOGOR','008',32,'JAWA BARAT','085624145534','085863484356',NULL,'','16620','KP CINANGNENG','003','002',3201050013,'CIHIDEUNG UDIK',3201050,'CIAMPEA','0108',3201,'KABUPATEN BOGOR','008',32,'JAWA BARAT','085624145534','085863484356',NULL,'','16620','KP CINANGNENG','002','002',3201050013,'CIHIDEUNG UDIK',3201,'CIAMPEA','0108',3201,'KABUPATEN BOGOR','008',32,'JAWA BARAT','085624145534','',NULL,'','16620','KP CINANGNENG',NULL,NULL,'CIHIDEUNG UDIK','CIAMPEA','0108','008','085624145534','085863484356',NULL,NULL,'16620',NULL,NULL,NULL,NULL),
('0029066','KP PARATAG','004','009',3217130002,'JAMBUDIPA',3217130,'CISARUA','0122',3217,'KABUPATEN BANDUNG BARAT','008',32,'JAWA BARAT','088809492710','',NULL,'','40551','KP PARATAG','004','009',3217130002,'JAMBUDIPA',3217130,'CISARUA','0122',3217,'KABUPATEN BANDUNG BARAT','008',32,'JAWA BARAT','088809492710','',NULL,'','40551','KP PARATAG','004','009',3217130002,'JAMBUDIPA',3217,'CISARUA','0122',3217,'KABUPATEN BANDUNG BARAT','008',32,'JAWA BARAT','085322219113','',NULL,'','40551','KP PARATAG',NULL,NULL,'JAMBUDIPA','CISARUA','0122','008','088809492710','',NULL,NULL,'40551',NULL,NULL,NULL,NULL),
('0029126','KP SUDIMAMPIR','001','001',3201220002,'CIMANGGIS',3201220,'BOJONG GEDE','0108',3201,'KABUPATEN BOGOR','008',32,'JAWA BARAT','08997061194','',NULL,'','16920','KP SUDIMAMPIR','001','001',3201220002,'CIMANGGIS',3201220,'BOJONG GEDE','0108',3201,'KABUPATEN BOGOR','008',32,'JAWA BARAT','08997061194','',NULL,'','16920','RUKO GRAND WISATA BLOK AA NO 7','001','001',3216081003,'LAMBANGJAYA',3216,'TAMBUN SELATAN','0102',3216,'KABUPATEN BEKASI','008',32,'JAWA BARAT','02182622071','082124235149',NULL,'','17510','KP SUDIMAMPIR',NULL,NULL,'CIMANGGIS','BOJONG GEDE','0108','008','08997061194','',NULL,NULL,'16920',NULL,NULL,NULL,NULL),
('0029148','DUSUN KRAJAN II','019','003',3215040017,'CURUG',3215040,'KLARI','0106',3215,'KABUPATEN KARAWANG','008',32,'JAWA BARAT','089683949030','',NULL,'','41371','DUSUN KRAJAN II','019','003',3215040017,'CURUG',3215040,'KLARI','0106',3215,'KABUPATEN KARAWANG','008',32,'JAWA BARAT','089683949030','',NULL,'','41371','DUSUN KRAJAN II','019','003',3215040017,'CURUG',3215040,'KLARI','0106',3215,'KABUPATEN KARAWANG','008',32,'JAWA BARAT','089683949030','',NULL,'','41371','DUSUN KRAJAN II',NULL,NULL,'CURUG','KLARI','0106','008','085697619995','089683949030',NULL,NULL,'41371',NULL,NULL,NULL,NULL);

/*Table structure for table `nasabah_pengurus_pemilik` */

DROP TABLE IF EXISTS `nasabah_pengurus_pemilik`;

CREATE TABLE `nasabah_pengurus_pemilik` (
  `nomor_identitas` varchar(16) NOT NULL,
  `nasabah_id` varchar(20) NOT NULL,
  `jenis_identitas` char(1) NOT NULL,
  `npwp` varchar(30) DEFAULT NULL,
  `nama_pengurus` varchar(150) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `id_kelurahan` bigint(11) DEFAULT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `id_kecamatan` bigint(11) DEFAULT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `id_kabupaten` bigint(11) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `id_provinsi` bigint(11) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kode_sandi_kab` char(4) NOT NULL,
  `kode_sandi_prov` char(4) NOT NULL,
  `rt` char(3) DEFAULT NULL,
  `rw` char(3) DEFAULT NULL,
  `kode_sandi_jabatan` char(2) NOT NULL,
  `pangsa_kepemilikan` char(5) DEFAULT NULL,
  `status_pengurus` char(8) NOT NULL,
  `kode_kantor` char(4) NOT NULL,
  `telpon` char(50) DEFAULT NULL,
  `hp` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `kode_pos` char(5) DEFAULT NULL,
  PRIMARY KEY (`nomor_identitas`,`nasabah_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `nasabah_pengurus_pemilik` */

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
('LPS_JUMLAH_REC_PERFILE','1000',NULL),
('LPS_KODE_KEPERSETAAN','31300083',NULL),
('MAX_LIMIT_PC_HO','5',NULL),
('MAX_LIMIT_ROW','25',NULL),
('OTORISASI_ANDROID','TIDAK',NULL),
('SETTING_SUKU_BUNGA_SESUAI_LPS','6',NULL),
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

insert  into `sistem`(`jenis`,`tanggal`) values 
('TGL_LPS','2026-03-31');

/*Table structure for table `slik_kredit` */

DROP TABLE IF EXISTS `slik_kredit`;

CREATE TABLE `slik_kredit` (
  `flag_detail` char(1) NOT NULL DEFAULT 'D',
  `no_rekening` varchar(25) NOT NULL,
  `cif` varchar(20) NOT NULL,
  `kode_sifat_kredit` char(1) NOT NULL COMMENT 'REF #14',
  `kode_jenis_kredit` char(4) NOT NULL COMMENT 'REF #15',
  `kode_skim` char(3) NOT NULL COMMENT 'REF #16',
  `no_akad_awal` varchar(50) DEFAULT NULL,
  `tanggal_akad_awal` date DEFAULT NULL,
  `no_akad_akhir` varchar(50) DEFAULT NULL,
  `tanggal_akad_akhir` date DEFAULT NULL,
  `baru_perpanjangan` smallint(2) NOT NULL,
  `tanggal_awal_kredit` date NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `kode_kategori_debitur` char(2) NOT NULL COMMENT 'REF #17',
  `kode_jenis_penggunaan` char(1) NOT NULL COMMENT 'REF #18',
  `kode_orientasi_penggunaan` char(1) NOT NULL COMMENT 'REF #19',
  `kode_sektor_ekonomi` char(6) NOT NULL COMMENT 'REf #11',
  `kode_kab_kota` char(4) NOT NULL COMMENT 'REF #5',
  `nilai_proyek` decimal(15,0) DEFAULT NULL,
  `kode_valuta` char(3) NOT NULL COMMENT 'REF #20',
  `prosentase_suku_bunga` decimal(6,2) NOT NULL DEFAULT 0.00,
  `jenis_suku_bunga` char(1) NOT NULL COMMENT 'ammunitas',
  `kredit_program_pemerintah` char(3) NOT NULL COMMENT 'reff',
  `takeover_dari` char(6) DEFAULT NULL COMMENT 'REF #',
  `sumber_dana` char(6) NOT NULL COMMENT 'reff',
  `plafon_awal` decimal(15,0) NOT NULL,
  `plafon` decimal(15,0) NOT NULL,
  `realisasi_atau_pencairan_bulan_berjalan` decimal(15,0) NOT NULL,
  `denda` decimal(15,0) NOT NULL,
  `baki_debet` decimal(15,0) NOT NULL,
  `nilai_dalam_mata_uang_asal` decimal(15,0) DEFAULT NULL,
  `kode_kolektibilitas` char(1) NOT NULL COMMENT 'REF #21',
  `tanggal_macet` date DEFAULT NULL,
  `kode_sebab_macet` char(2) DEFAULT NULL COMMENT 'REf #22',
  `tunggakan_pokok` decimal(15,0) NOT NULL,
  `tunggakan_bunga` decimal(15,0) NOT NULL,
  `jumlah_hari_tunggakan` decimal(5,0) NOT NULL,
  `frekuensi_tunggakan` decimal(3,0) NOT NULL,
  `frekuensi_restrukturisasi` decimal(3,0) NOT NULL,
  `tanggal_restrukturisasi_awal` date DEFAULT NULL,
  `tanggal_restrukturisasi_akhir` date DEFAULT NULL,
  `kode_cara_restrukturisasi_awal` char(2) DEFAULT NULL COMMENT 'REF #23',
  `kode_kondisi` char(2) DEFAULT NULL COMMENT 'REF #24',
  `tanggal_kondisi` date DEFAULT NULL,
  `keterangan` varchar(300) DEFAULT NULL,
  `kode_kantor_cabang` char(3) NOT NULL COMMENT 'REF #3',
  `operasi_data` char(1) NOT NULL COMMENT 'CU',
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `slik_kredit` */

insert  into `slik_kredit`(`flag_detail`,`no_rekening`,`cif`,`kode_sifat_kredit`,`kode_jenis_kredit`,`kode_skim`,`no_akad_awal`,`tanggal_akad_awal`,`no_akad_akhir`,`tanggal_akad_akhir`,`baru_perpanjangan`,`tanggal_awal_kredit`,`tanggal_mulai`,`tanggal_jatuh_tempo`,`kode_kategori_debitur`,`kode_jenis_penggunaan`,`kode_orientasi_penggunaan`,`kode_sektor_ekonomi`,`kode_kab_kota`,`nilai_proyek`,`kode_valuta`,`prosentase_suku_bunga`,`jenis_suku_bunga`,`kredit_program_pemerintah`,`takeover_dari`,`sumber_dana`,`plafon_awal`,`plafon`,`realisasi_atau_pencairan_bulan_berjalan`,`denda`,`baki_debet`,`nilai_dalam_mata_uang_asal`,`kode_kolektibilitas`,`tanggal_macet`,`kode_sebab_macet`,`tunggakan_pokok`,`tunggakan_bunga`,`jumlah_hari_tunggakan`,`frekuensi_tunggakan`,`frekuensi_restrukturisasi`,`tanggal_restrukturisasi_awal`,`tanggal_restrukturisasi_akhir`,`kode_cara_restrukturisasi_awal`,`kode_kondisi`,`tanggal_kondisi`,`keterangan`,`kode_kantor_cabang`,`operasi_data`,`last_update`) values 
('D','07-39-00020-22','0003259','9','P99','000','07-39-00020-22','2022-12-24','07-39-00020-22','2022-12-24',0,'2022-12-24','2022-12-24','2026-12-24','NU','3','3','009000','0102',0,'IDR',20.40,'1','10','','600432',90000000,90000000,0,1123650,26812624,0,'1',NULL,NULL,0,0,0,0,0,'1900-01-01','1900-01-01','','00',NULL,'','008','U','2026-04-05 15:10:34'),
('D','10-63-00032-25','0029066','9','P99','000','10-63-00032-25','2025-07-04','10-63-00032-25','2025-07-04',0,'2025-07-04','2025-07-04','2028-07-04','UM','1','3','472009','0122',70000000,'IDR',16.20,'1','10','','600432',70000000,70000000,0,0,59017801,0,'1',NULL,NULL,0,0,0,0,0,'1900-01-01','1900-01-01','','00',NULL,'','011','U','2026-04-05 17:44:08'),
('D','13-63-00037-24','0029148','9','P99','000','13-63-00037-24','2024-04-30','13-63-00037-24','2024-04-30',0,'2024-04-30','2024-04-30','2027-05-06','UM','1','3','960009','0106',55000000,'IDR',17.40,'1','90','','600432',55000000,55000000,0,3209880,27239204,0,'1',NULL,NULL,0,0,0,0,0,'1900-01-01','1900-01-01','','00',NULL,'','014','U','2026-04-05 20:38:02'),
('D','33-63-00041-25','0029126','9','P99','000','33-63-00041-25','2025-05-16','33-63-00041-25','2025-05-16',0,'2025-05-16','2025-05-16','2028-05-16','NU','1','3','960009','0108',45000000,'IDR',17.40,'1','10','','600432',45000000,45000000,0,228360,36168898,0,'1',NULL,NULL,0,0,0,0,0,'1900-01-01','1900-01-01','','00',NULL,'','002','U','2026-04-05 13:55:30'),
('D','33-63-00052-25','0028133','9','P99','000','33-63-00052-25','2025-06-23','33-63-00052-25','2025-06-23',0,'2025-06-23','2025-06-23','2028-06-23','UK','1','3','960009','0108',60000000,'IDR',17.40,'1','10','','600432',60000000,60000000,0,431290,49535018,0,'1',NULL,NULL,0,0,0,0,0,'1900-01-01','1900-01-01','','00',NULL,'','002','U','2026-04-05 13:57:05');

/*Table structure for table `slik_ref_gol_debitur` */

DROP TABLE IF EXISTS `slik_ref_gol_debitur`;

CREATE TABLE `slik_ref_gol_debitur` (
  `nomor` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(11) NOT NULL DEFAULT '',
  `nama` char(150) DEFAULT NULL,
  `kode_old` char(5) DEFAULT NULL,
  `level_cdd` enum('R','M','T') DEFAULT NULL,
  `flg_aktif` smallint(1) DEFAULT 1,
  PRIMARY KEY (`nomor`,`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `slik_ref_gol_debitur` */

insert  into `slik_ref_gol_debitur`(`nomor`,`kode`,`nama`,`kode_old`,`level_cdd`,`flg_aktif`) values 
(1,'S14','Perorangan (Penduduk)','9000',NULL,1),
(2,'S24BL','Perorangan (Bukan Penduduk)','9700',NULL,1),
(3,'S131101L','Kantor Pelayanan Perbendaharaan Negara',NULL,NULL,1),
(4,'S131102L','Kementerian Keuangan',NULL,NULL,1),
(5,'S131103L','Kementerian Pertahanan',NULL,NULL,1),
(6,'S131104L','Kementerian Lingkungan Hidup dan Kehutanan',NULL,NULL,1),
(7,'S131105L','Kementerian Pertanian',NULL,NULL,1),
(8,'S131106L','Kementerian Energi dan Sumber Daya Mineral',NULL,NULL,1),
(9,'S131107L','Kementerian Agama',NULL,NULL,1),
(10,'S131108L','Kementerian BUMN',NULL,NULL,1),
(11,'S131109L','Kementerian Kebudayaan, Pendidikan Dasar, dan Menengah',NULL,NULL,1),
(12,'S131110L','Kementerian Pekerjaan Umum dan Perumahan Rakyat',NULL,NULL,1),
(13,'S131111L','Kementerian Kesehatan',NULL,NULL,1),
(14,'S131112L','Kementerian Perhubungan',NULL,NULL,1),
(15,'S131199L','Kementerian Lainnya',NULL,NULL,1),
(16,'S131197L','Badan dan Lembaga Pemerintah',NULL,NULL,1),
(17,'S1311981L','Badan Layanan Umum – Kesehatan',NULL,NULL,1),
(18,'S1311982L','Badan Layanan Umum – Pendidikan',NULL,NULL,1),
(19,'S1311989L','Badan Layanan Umum – Lainnya',NULL,NULL,1),
(20,'S131301L','Pemerintah Provinsi',NULL,NULL,1),
(21,'S131302L','Pemerintah Kota',NULL,NULL,1),
(22,'S131303L','Pemerintah Kabupaten',NULL,NULL,1),
(23,'S1313981L','Badan Layanan Umum Daerah – Provinsi',NULL,NULL,1),
(24,'S1313982L','Badan Layanan Umum Daerah – Kota/Kabupaten',NULL,NULL,1),
(25,'S110011L','BUMN',NULL,NULL,1),
(26,'S110012L','BUMD',NULL,NULL,1),
(27,'S110013L','BUM Desa',NULL,NULL,1),
(28,'S1100201L','Perusahaan Otomotif',NULL,NULL,1),
(29,'S1100202L','Perusahaan Perminyakan',NULL,NULL,1),
(30,'S1100203L','Perusahaan Tekstil',NULL,NULL,1),
(31,'S1100204L','Perusahaan Perkayuan',NULL,NULL,1),
(32,'S11002051L','Perusahaan Properti dan Real Estate',NULL,NULL,1),
(33,'S11002059L','Perusahaan Jasa Konstruksi Lainnya',NULL,NULL,1),
(34,'S1100206L','Perusahaan Industri Rokok',NULL,NULL,1),
(35,'S1100207L','Perusahaan Industri Makanan',NULL,NULL,1),
(36,'S1100208L','Perusahaan Agrobisnis',NULL,NULL,1),
(37,'S1100209L','Perusahaan Telekomunikasi',NULL,NULL,1),
(38,'S1100299L','Perusahaan Lainnya',NULL,NULL,1),
(39,'S11002501L','Koperasi Primer',NULL,NULL,1),
(40,'S11002509L','Koperasi Lainnya',NULL,NULL,1),
(41,'S1100301L','Perusahaan Otomotif',NULL,NULL,1),
(42,'S1100302L','Perusahaan Perminyakan',NULL,NULL,1),
(43,'S1100303L','Perusahaan Tekstil',NULL,NULL,1),
(44,'S1100304L','Perusahaan Perkayuan',NULL,NULL,1),
(45,'S11003051L','Perusahaan Properti dan Real Estate',NULL,NULL,1),
(46,'S11003059L','Perusahaan Jasa Konstruksi Lainnya',NULL,NULL,1),
(47,'S1100306L','Perusahaan Industri Rokok',NULL,NULL,1),
(48,'S1100307L','Perusahaan Industri Makanan',NULL,NULL,1),
(49,'S1100308L','Perusahaan Agrobisnis',NULL,NULL,1),
(50,'S1100399L','Perusahaan Lainnya',NULL,NULL,1),
(51,'S1100360L','Kantor Perwakilan Lembaga Milik Asing di Indonesia',NULL,NULL,1),
(52,'S121','Bank Indonesia (Bank Sentral)',NULL,NULL,1),
(53,'S126014L','Otoritas Jasa Keuangan (OJK)',NULL,NULL,1),
(54,'S128014L','Lembaga Penjamin Simpanan (LPS)',NULL,NULL,1),
(55,'S122','Bank',NULL,'M',1),
(56,'S126011L','BUMN',NULL,NULL,1),
(57,'S126012L','BUMD',NULL,NULL,1),
(58,'S126013L','BUM Desa',NULL,NULL,1),
(59,'S1260202L','Penyelenggara Teknologi Finansial',NULL,NULL,1),
(60,'S1260203L','Penerbit Uang Elektronik',NULL,NULL,1),
(61,'S1260299L','Lainnya',NULL,NULL,1),
(62,'S1260302L','Penyelenggara Teknologi Finansial',NULL,NULL,1),
(63,'S1260303L','Penerbit Uang Elektronik',NULL,NULL,1),
(64,'S1260399L','Lainnya',NULL,NULL,1),
(65,'S128011L','BUMN',NULL,NULL,1),
(66,'S128012L','BUMD',NULL,NULL,1),
(67,'S128013L','BUM Desa',NULL,NULL,1),
(68,'S12802','Swasta Nasional Perusahaan asuransi yang dikendalikan oleh institusi domestik atau warga negara indonesia',NULL,NULL,1),
(69,'S12803','Swasta Pengendalian Asing Perusahaan asuransi yang dikendalikan oleh institusi asing atau warga negara asing',NULL,NULL,1),
(70,'S129011L','BUMN',NULL,NULL,1),
(71,'S129012L','BUMD',NULL,NULL,1),
(72,'S129013L','BUM Desa',NULL,NULL,1),
(73,'S12902','Swasta Nasional Perusahaan dana pensiun yang dikendalikan oleh institusi domestik atau warga negara indonesia',NULL,NULL,1),
(74,'S12903','Swasta Pengendalian Asing Perusahaan dana pensiun yang dikendalikan oleh institusi asing atau warga negara asing',NULL,NULL,1),
(75,'S12501150L','Modal Ventura',NULL,NULL,1),
(76,'S12501151L','Perusahaan Pembiayaan',NULL,NULL,1),
(77,'S125011521L','Perusahaan sekuritas yang tidak melakukan kegiatan usaha reksadana',NULL,NULL,1),
(78,'S125011522L','Perusahaan sekuritas yang melakukan kegiatan usaha reksadana',NULL,NULL,1),
(79,'S125011523L','Perusahaan reksadana',NULL,NULL,1),
(80,'S125011524L','Manajer Investasi',NULL,NULL,1),
(81,'S125011529L','Lainnya',NULL,NULL,1),
(82,'S12501199L','Lainnya',NULL,NULL,1),
(83,'S12501250L','Modal Ventura',NULL,NULL,1),
(84,'S12501251L','Perusahaan Pembiayaan',NULL,NULL,1),
(85,'S125012521L','Perusahaan sekuritas yang tidak melakukan kegiatan usaha reksadana',NULL,NULL,1),
(86,'S125012522L','Perusahaan sekuritas yang melakukan kegiatan usaha reksadana',NULL,NULL,1),
(87,'S125012523L','Perusahaan reksadana',NULL,NULL,1),
(88,'S125012524L','Manajer Investasi',NULL,NULL,1),
(89,'S125012529L','Lainnya',NULL,NULL,1),
(90,'S12501299L','Lainnya',NULL,NULL,1),
(91,'S125013L','BUM Desa',NULL,NULL,1),
(92,'S12502050L','Modal Ventura',NULL,NULL,1),
(93,'S12502051L','Perusahaan Pembiayaan',NULL,NULL,1),
(94,'S125020521L','Perusahaan sekuritas yang tidak melakukan kegiatan usaha reksadana',NULL,NULL,1),
(95,'S125020522L','Perusahaan sekuritas yang melakukan kegiatan usaha reksadana',NULL,NULL,1),
(96,'S125020523L','Perusahaan reksadana',NULL,NULL,1),
(97,'S125020524L','Manajer Investasi',NULL,NULL,1),
(98,'S125020529L','Lainnya',NULL,NULL,1),
(99,'S12502053L','Baitul Maal Wa Tamwil (BMT)',NULL,NULL,1),
(100,'S125020541L','Koperasi Primer',NULL,NULL,1),
(101,'S125020549L','Koperasi Lainnya',NULL,NULL,1),
(102,'S12502099L','Lainnya',NULL,NULL,1),
(103,'S12503050L','Modal Ventura',NULL,NULL,1),
(104,'S12503051L','Perusahaan Pembiayaan',NULL,NULL,1),
(105,'S125030521L','Perusahaan sekuritas yang tidak melakukan kegiatan usaha reksadana',NULL,NULL,1),
(106,'S125030522L','Perusahaan sekuritas yang melakukan kegiatan usaha reksadana',NULL,NULL,1),
(107,'S125030523L','Perusahaan reksadana',NULL,NULL,1),
(108,'S125030524L','Manajer Investasi',NULL,NULL,1),
(109,'S125030529L','Lainnya',NULL,NULL,1),
(110,'S12503053L','Baitul Maal Wa Tamwil (BMT)',NULL,NULL,1),
(111,'S12503054L','Kantor Perwakilan Lembaga Milik Asing di Indonesia Lainnya',NULL,NULL,1),
(112,'S12503099L','Lainnya',NULL,NULL,1),
(113,'S1500201L','Badan Amil Zakat Infaq dan Shadaqah (BAZIS)',NULL,NULL,1),
(114,'S1500202L','Lembaga Pendidikan',NULL,NULL,1),
(115,'S1500203L','Lembaga Wakaf',NULL,NULL,1),
(116,'S1500299L','Lainnya',NULL,NULL,1),
(117,'S1500301L','Badan Amil Zakat Infaq dan Shadaqah (BAZIS)',NULL,NULL,1),
(118,'S1500302L','Lembaga Pendidikan',NULL,NULL,1),
(119,'S1500303L','Lembaga Wakaf',NULL,NULL,1),
(120,'S1500399L','Lainnya',NULL,NULL,1),
(122,'S23AL','Pemerintah Pusat',NULL,NULL,1),
(123,'S23BL','Pemerintah Daerah',NULL,NULL,1),
(124,'S221L','Bank Sentral Negara Lain',NULL,NULL,1),
(125,'S222L','Bank',NULL,NULL,1),
(126,'S222AL','Bank Nasional Yang Beroperasi di Luar Indonesia',NULL,NULL,1),
(127,'S222B11L','Terkait Dengan Bank',NULL,NULL,1),
(128,'S222B12L','Tidak Terkait Dengan Bank',NULL,NULL,1),
(129,'S222B21L','Terkait Dengan Bank',NULL,NULL,1),
(130,'S222B22L','Tidak Terkait Dengan Bank',NULL,NULL,1),
(131,'S225AL','Lembaga Keuangan Bukan Bank Yang Beroperasi di Luar Indonesia',NULL,NULL,1),
(132,'S225BL','Lembaga Keuangan Bukan Bank Milik Negara Asing',NULL,NULL,1),
(133,'S21AL','BUMN Milik Negara Asing',NULL,NULL,1),
(134,'S21BL','Swasta Patungan Indonesia dan Negara Asing',NULL,NULL,1),
(135,'S22CL','Swasta Milik Indonesia',NULL,NULL,1),
(136,'S22XL','Lainnya',NULL,NULL,1),
(137,'S2LA01L','Islamic Development Bank (IDB)',NULL,NULL,1),
(138,'S2LA02L','Asian Development Bank (ADB)',NULL,NULL,1),
(139,'S2LA03L','World Bank Group (WBG)',NULL,NULL,1),
(140,'S2LA04L','African Development Bank Group (AfDB)',NULL,NULL,1),
(141,'S2LA05L','European Bank for Reconstruction and Development (EBRD)',NULL,NULL,1),
(142,'S2LA06L','Inter-American Development Bank Group (IADB)',NULL,NULL,1),
(143,'S2LA07L','European Investment Bank (EIB)',NULL,NULL,1),
(144,'S2LA08L','European Investment Fund (EIF)',NULL,NULL,1),
(145,'S2LA09L','Nordic Investment Bank (NIB)',NULL,NULL,1),
(146,'S2LA10L','Caribbean Development Bank (CDB)',NULL,NULL,1),
(147,'S2LA11L','Council of Europe Development Bank (CEDB)',NULL,NULL,1),
(148,'S2LA99L','Bank Pembangunan Multilateral Lainnya',NULL,NULL,1),
(149,'S2LXL','Lembaga Internasional Lainnya',NULL,NULL,1),
(150,'S24AL','Perwakilan Negara Asing dan Stafnya',NULL,NULL,1);

/*Table structure for table `tab_nominatif` */

DROP TABLE IF EXISTS `tab_nominatif`;

CREATE TABLE `tab_nominatif` (
  `tgl_laporan` date NOT NULL,
  `no_rekening` char(20) NOT NULL,
  `no_alternatif` char(41) DEFAULT NULL,
  `nasabah_id` char(20) NOT NULL,
  `type_join` enum('AND','OR','QQ') DEFAULT NULL,
  `nasabah_id_join` char(20) DEFAULT NULL,
  `nama_nasabah` varchar(250) DEFAULT NULL,
  `nama_nasabah_join` varchar(100) DEFAULT NULL,
  `alamat` varchar(350) DEFAULT NULL,
  `jenis_kelamin` char(2) DEFAULT NULL,
  `kode_integrasi` char(3) DEFAULT NULL,
  `kode_produk` char(3) DEFAULT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `kode_group1` char(5) DEFAULT NULL,
  `kode_group2` char(5) DEFAULT NULL,
  `kode_group3` char(5) DEFAULT NULL,
  `nama_group1` varchar(100) DEFAULT NULL,
  `nama_group2` varchar(100) DEFAULT NULL,
  `nama_group3` varchar(100) DEFAULT NULL,
  `kode_kantor` char(4) DEFAULT NULL,
  `nama_kantor` varchar(100) DEFAULT NULL,
  `tgl_register` date DEFAULT NULL,
  `abp` smallint(6) DEFAULT 0,
  `suku_bunga` decimal(5,2) DEFAULT 0.00,
  `pph` decimal(5,2) DEFAULT 0.00,
  `saldo_blokir` decimal(20,2) DEFAULT 0.00,
  `saldo_akhir` decimal(20,2) DEFAULT 0.00,
  `no_rek_jam_kredit` char(25) DEFAULT NULL,
  `saldo_jam_kredit` decimal(20,2) DEFAULT 0.00,
  `kode_jenis` char(2) DEFAULT NULL,
  `kode_keterkaitan` char(1) DEFAULT '2',
  `kode_bi_pemilik` char(3) DEFAULT NULL,
  `kode_dati2` char(4) DEFAULT NULL,
  `nama_dati2` varchar(255) DEFAULT NULL,
  `jml_bunga` decimal(20,2) DEFAULT 0.00,
  `jml_pajak` decimal(20,2) DEFAULT 0.00,
  `jml_admin` decimal(20,2) DEFAULT 0.00,
  `mutasi_debet` decimal(20,2) DEFAULT 0.00,
  `mutasi_kredit` decimal(20,2) DEFAULT 0.00,
  `tgl_blokir` date DEFAULT NULL,
  `status_aktif` smallint(1) DEFAULT 1,
  `freq_penarikan` int(11) DEFAULT 0,
  `akumulasi_penarikan` decimal(20,2) DEFAULT 0.00,
  `freq_setoran` int(11) DEFAULT 0,
  `akumulasi_setoran` decimal(20,2) DEFAULT 0.00,
  `create_date` datetime DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tab_nominatif` */

insert  into `tab_nominatif`(`tgl_laporan`,`no_rekening`,`no_alternatif`,`nasabah_id`,`type_join`,`nasabah_id_join`,`nama_nasabah`,`nama_nasabah_join`,`alamat`,`jenis_kelamin`,`kode_integrasi`,`kode_produk`,`nama_produk`,`kode_group1`,`kode_group2`,`kode_group3`,`nama_group1`,`nama_group2`,`nama_group3`,`kode_kantor`,`nama_kantor`,`tgl_register`,`abp`,`suku_bunga`,`pph`,`saldo_blokir`,`saldo_akhir`,`no_rek_jam_kredit`,`saldo_jam_kredit`,`kode_jenis`,`kode_keterkaitan`,`kode_bi_pemilik`,`kode_dati2`,`nama_dati2`,`jml_bunga`,`jml_pajak`,`jml_admin`,`mutasi_debet`,`mutasi_kredit`,`tgl_blokir`,`status_aktif`,`freq_penarikan`,`akumulasi_penarikan`,`freq_setoran`,`akumulasi_setoran`,`create_date`,`create_by`,`last_update`,`update_by`) values 
('2026-03-31','07-05-00201',NULL,'0003259',NULL,NULL,'DENY FEBRIYANTO','','VILLA MUTIARA WANASARI BLOK L 31/14  RT.008 RW.034 WANASARI CIBITUNG','L','02','05','Tabungan Mandiri Kredit','01','03','00','BEKASI','COUNTER','Blank','07','Kantor Cabang Cikarang','2018-11-28',0,3.00,20.00,300000.00,2817124.00,NULL,0.00,'10','2','875','0102','KABUPATEN BEKASI',0.00,0.00,0.00,0.00,0.00,NULL,1,0,0.00,0,0.00,NULL,NULL,'2026-04-01 03:43:15',NULL),
('2026-03-31','10-05-00034',NULL,'0029066',NULL,NULL,'IYUS RUSWANDI','','KP PARATAG RT.004 RW.009 JAMBUDIPA CISARUA','L','05','05','Tabungan Mandiri Kredit','','','',NULL,NULL,NULL,'10','Kantor Cabang Cimahi','2021-09-30',0,3.00,20.00,3518000.00,4347352.22,NULL,0.00,'10','2','875','0122','KABUPATEN BANDUNG BARAT',0.00,0.00,0.00,0.00,0.00,NULL,1,0,0.00,0,0.00,NULL,NULL,'2026-04-01 03:32:47',NULL),
('2026-03-31','13-05-00296',NULL,'0029148',NULL,NULL,'ENDAH HALIMAH','','DUSUN KRAJAN II RT.019 RW.003 CURUG KLARI','P','05','05','Tabungan Mandiri Kredit','11','','','Cikampek',NULL,NULL,'13','Kantor Cabang Cikampek','2021-10-12',0,3.00,20.00,3333096.00,3501253.00,NULL,0.00,'10','2','875','0106','KABUPATEN KARAWANG',0.00,0.00,0.00,0.00,0.00,NULL,1,0,0.00,0,0.00,NULL,NULL,'2026-04-01 03:29:09',NULL),
('2026-03-31','33-05-00354',NULL,'0028133',NULL,NULL,'AJUM','','KP CINANGNENG RT.003 RW.002 CIHIDEUNG UDIK CIAMPEA','L','05','05','Tabungan Mandiri Kredit','09','03','00','Bogor','COUNTER','Blank','33','Kantor Kas Sindang Barang','2021-06-24',0,3.00,20.00,0.00,1738680.44,NULL,0.00,'10','2','875','0108','KABUPATEN BOGOR',0.00,0.00,0.00,0.00,0.00,NULL,1,0,0.00,0,0.00,NULL,NULL,'2026-04-01 04:03:37',NULL),
('2026-03-31','33-05-00712',NULL,'0029126',NULL,NULL,'RUDI SUJANA','','KP SUDIMAMPIR RT.001 RW.001 CIMANGGIS BOJONG GEDE','L','05','05','Tabungan Mandiri Kredit','09','03','00','Bogor','COUNTER','Blank','33','Kantor Kas Sindang Barang','2024-03-21',0,3.00,20.00,0.00,2168146.00,NULL,0.00,'10','2',NULL,'0108','KABUPATEN BOGOR',0.00,0.00,0.00,0.00,0.00,NULL,1,0,0.00,0,0.00,NULL,NULL,'2026-04-01 04:04:19',NULL);

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
('indra_maulana','021901013','202cb962ac59075b964b07152d234b70','1','00','Indra Maulana','IT','','Information & Technology  Department Head','2019-01-21','2025-12-31','N',NULL,NULL,855,706,'3','192.168.1.8',1,'10102','10101',0.00,0.00,0.00,0.00,0.00,'IT',NULL,'indra.maulana@kreditmandiri.co.id',NULL,NULL,'-','dXGBw9QVQFmuTdMr8Yxa-2:APA91bGUZuT1JBeKmLSnxL2AMfToO-kjvt4z3E9aKWu5EbPr5GPQKkTrebHH5IxaFuCOZqynuovyHkbPxr1cy8hs50I3JtZajzhYv8ToCaVcEkgI8g77Yx0',0,'beep','0','','','00','',0,0.00,'08:00:00','17:00:00','HO',1,'2026-04-28 21:05:14',NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='log user yang mengakses program';

/*Data for the table `user_log` */

insert  into `user_log`(`id`,`user`,`kd_menu`,`waktu`,`ket`,`ip`,`AppVer`) values 
(370,'indra_maulana','fr_GetSystemDate','2026-04-09 20:26:00','Login Tgl System Sukses : indra_maulana Tgl System : 09 April 2026 IP : 40.40.40.122 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(371,'indra_maulana','fr_LoginBPR','2026-04-09 20:26:01','Login Sukses : indra_maulana Tanggal System : 09 April 2026 IP : 40.40.40.122 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(372,'indra_maulana','fr_GetSystemDate','2026-04-21 21:52:32','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(373,'indra_maulana','fr_LoginBPR','2026-04-21 21:52:33','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(374,'indra_maulana','fr_GetSystemDate','2026-04-21 21:53:25','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(375,'indra_maulana','fr_LoginBPR','2026-04-21 21:53:26','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(376,'indra_maulana','fr_GetSystemDate','2026-04-21 21:57:11','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(377,'indra_maulana','fr_LoginBPR','2026-04-21 21:57:11','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(378,'indra_maulana','fr_GetSystemDate','2026-04-21 21:58:22','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(379,'indra_maulana','fr_LoginBPR','2026-04-21 21:58:23','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(380,'indra_maulana','fr_GetSystemDate','2026-04-21 22:00:07','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(381,'indra_maulana','fr_LoginBPR','2026-04-21 22:00:07','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(382,'indra_maulana','fr_GetSystemDate','2026-04-21 22:30:21','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(383,'indra_maulana','fr_LoginBPR','2026-04-21 22:30:21','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(384,'indra_maulana','fr_GetSystemDate','2026-04-21 22:41:14','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(385,'indra_maulana','fr_LoginBPR','2026-04-21 22:41:14','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(386,'indra_maulana','fr_GetSystemDate','2026-04-21 22:49:45','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(387,'indra_maulana','fr_LoginBPR','2026-04-21 22:49:46','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(388,'indra_maulana','fr_GetSystemDate','2026-04-21 22:50:13','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(389,'indra_maulana','fr_LoginBPR','2026-04-21 22:50:14','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(390,'indra_maulana','fr_GetSystemDate','2026-04-21 22:51:42','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(391,'indra_maulana','fr_LoginBPR','2026-04-21 22:51:43','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(392,'indra_maulana','fr_GetSystemDate','2026-04-21 22:57:14','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(393,'indra_maulana','fr_LoginBPR','2026-04-21 22:57:14','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(394,'indra_maulana','fr_GetSystemDate','2026-04-21 23:04:43','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(395,'indra_maulana','fr_LoginBPR','2026-04-21 23:04:43','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(396,'indra_maulana','fr_GetSystemDate','2026-04-21 23:09:27','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(397,'indra_maulana','fr_LoginBPR','2026-04-21 23:09:27','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(398,'indra_maulana','fr_GetSystemDate','2026-04-21 23:16:48','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(399,'indra_maulana','fr_LoginBPR','2026-04-21 23:16:48','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(400,'indra_maulana','fr_GetSystemDate','2026-04-21 23:20:16','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(401,'indra_maulana','fr_LoginBPR','2026-04-21 23:20:17','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(402,'indra_maulana','fr_GetSystemDate','2026-04-21 23:23:21','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(403,'indra_maulana','fr_LoginBPR','2026-04-21 23:23:21','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(404,'indra_maulana','fr_GetSystemDate','2026-04-21 23:25:09','Login Tgl System Sukses : indra_maulana Tgl System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(405,'indra_maulana','fr_LoginBPR','2026-04-21 23:25:10','Login Sukses : indra_maulana Tanggal System : 21 April 2026 IP : 40.40.40.148 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(406,'indra_maulana','fr_GetSystemDate','2026-04-27 22:28:12','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(407,'indra_maulana','fr_LoginBPR','2026-04-27 22:28:12','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 192.168.1.5 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(408,'indra_maulana','fr_GetSystemDate','2026-04-27 22:29:03','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(409,'indra_maulana','fr_LoginBPR','2026-04-27 22:29:03','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(410,'indra_maulana','fr_GetSystemDate','2026-04-27 22:35:09','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(411,'indra_maulana','fr_LoginBPR','2026-04-27 22:35:10','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(412,'indra_maulana','fr_GetSystemDate','2026-04-27 22:38:12','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(413,'indra_maulana','fr_LoginBPR','2026-04-27 22:38:13','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(414,'indra_maulana','fr_GetSystemDate','2026-04-27 22:39:31','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(415,'indra_maulana','fr_LoginBPR','2026-04-27 22:39:32','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(416,'indra_maulana','fr_GetSystemDate','2026-04-27 22:41:44','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(417,'indra_maulana','fr_LoginBPR','2026-04-27 22:41:44','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(418,'indra_maulana','fr_GetSystemDate','2026-04-27 22:43:55','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(419,'indra_maulana','fr_LoginBPR','2026-04-27 22:43:56','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(420,'indra_maulana','fr_GetSystemDate','2026-04-27 22:49:26','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(421,'indra_maulana','fr_LoginBPR','2026-04-27 22:49:27','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(422,'indra_maulana','fr_GetSystemDate','2026-04-27 22:50:51','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(423,'indra_maulana','fr_LoginBPR','2026-04-27 22:50:52','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(424,'indra_maulana','fr_GetSystemDate','2026-04-27 22:54:23','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(425,'indra_maulana','fr_LoginBPR','2026-04-27 22:54:24','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(426,'indra_maulana','fr_GetSystemDate','2026-04-27 22:56:33','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(427,'indra_maulana','fr_LoginBPR','2026-04-27 22:56:34','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(428,'indra_maulana','fr_GetSystemDate','2026-04-27 22:58:32','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(429,'indra_maulana','fr_LoginBPR','2026-04-27 22:58:33','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(430,'indra_maulana','fr_GetSystemDate','2026-04-27 23:04:13','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(431,'indra_maulana','fr_LoginBPR','2026-04-27 23:04:14','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(432,'indra_maulana','fr_GetSystemDate','2026-04-27 23:06:14','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(433,'indra_maulana','fr_LoginBPR','2026-04-27 23:06:15','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(434,'indra_maulana','fr_GetSystemDate','2026-04-27 23:07:44','Login Tgl System Sukses : indra_maulana Tgl System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(435,'indra_maulana','fr_LoginBPR','2026-04-27 23:07:44','Login Sukses : indra_maulana Tanggal System : 27 April 2026 IP : 40.40.40.165 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(436,'indra_maulana','fr_GetSystemDate','2026-04-28 21:05:14','Login Tgl System Sukses : indra_maulana Tgl System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(437,'indra_maulana','fr_LoginBPR','2026-04-28 21:05:15','Login Sukses : indra_maulana Tanggal System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(438,'indra_maulana','fr_GetSystemDate','2026-04-28 21:08:46','Login Tgl System Sukses : indra_maulana Tgl System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(439,'indra_maulana','fr_LoginBPR','2026-04-28 21:08:47','Login Sukses : indra_maulana Tanggal System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(440,'indra_maulana','fr_GetSystemDate','2026-04-28 21:11:15','Login Tgl System Sukses : indra_maulana Tgl System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(441,'indra_maulana','fr_LoginBPR','2026-04-28 21:11:16','Login Sukses : indra_maulana Tanggal System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(442,'indra_maulana','fr_GetSystemDate','2026-04-28 21:12:47','Login Tgl System Sukses : indra_maulana Tgl System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0'),
(443,'indra_maulana','fr_LoginBPR','2026-04-28 21:12:47','Login Sukses : indra_maulana Tanggal System : 28 April 2026 IP : 192.168.1.8 OS User : DH-IT INDRA',NULL,'1.0.0.0');

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

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_nasabah_id` AS (select `xx`.`nasabah_id` AS `nasabah_id` from (select `lps_dsn_f0002`.`nasabah_id` AS `nasabah_id` from `lps_dsn_f0002` where `lps_dsn_f0002`.`saldo_simpanan` > 0 union all select `lps_dk_f0003`.`nasabah_id` AS `nasabah_id` from `lps_dk_f0003` where `lps_dk_f0003`.`baki_debet` > 0 union all select `lps_dk_f0004`.`nasabah_id` AS `nasabah_id` from `lps_dk_f0004` where `lps_dk_f0004`.`no_rekening` in (select `lps_dsn_f0002`.`no_rekening` from `lps_dsn_f0002` where `lps_dsn_f0002`.`saldo_simpanan` > 0)) `xx` group by `xx`.`nasabah_id`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
