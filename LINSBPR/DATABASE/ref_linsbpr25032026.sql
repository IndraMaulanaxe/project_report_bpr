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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
