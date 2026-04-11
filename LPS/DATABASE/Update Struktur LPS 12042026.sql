CREATE TABLE `lps_ref_jenis_kewajiban` (
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `sandi` VARCHAR(10) NOT NULL,
  `deskripsi_sandi` VARCHAR(255) DEFAULT NULL,
  `selectable` SMALLINT(1) DEFAULT 1,
  PRIMARY KEY (`id`,`sandi`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci

CREATE TABLE `lps_dn_f0001` (
  `flag_detail` VARCHAR(1) DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` VARCHAR(20) NOT NULL,
  `nama_nasabah` VARCHAR(150) DEFAULT NULL,
  `jenis_id` VARCHAR(3) DEFAULT NULL,
  `no_id` VARCHAR(25) DEFAULT NULL,
  `nama_ibu_kandung` VARCHAR(150) DEFAULT NULL,
  `tgl_lahir` DATE DEFAULT NULL COMMENT 'YYYYMMDD',
  `no_id2` VARCHAR(35) DEFAULT NULL,
  `nama_pengurus` VARCHAR(150) DEFAULT NULL,
  `jenis_identitas` VARCHAR(3) DEFAULT NULL,
  `nomor_identitas` VARCHAR(25) DEFAULT NULL,
  `alamat` VARCHAR(300) DEFAULT NULL,
  `kota_kab` VARCHAR(4) DEFAULT NULL,
  `kewarganegaraan` VARCHAR(3) DEFAULT NULL,
  `telpon` VARCHAR(15) DEFAULT NULL,
  `flag_fraud` VARCHAR(3) DEFAULT NULL,
  `hub_dgn_bank` VARCHAR(2) DEFAULT NULL,
  `hub_pihak_terkait` VARCHAR(2) DEFAULT NULL,
  `gol_nasabah` VARCHAR(11) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci

CREATE TABLE `lps_dsn_f0002` (
  `jumlah_pemilik_rekening` INT(11) DEFAULT NULL,
  `klasifikasi_rekening` VARCHAR(1) NOT NULL,
  `nasabah_id` VARCHAR(20) DEFAULT NULL,
  `jenis_simpanan` VARCHAR(4) DEFAULT NULL,
  `no_rekening` VARCHAR(35) NOT NULL,
  `status_dana` VARCHAR(1) DEFAULT NULL,
  `tgl_mulai` DATE DEFAULT NULL,
  `jenis_tingkat_bunga` VARCHAR(1) DEFAULT NULL,
  `tingkat_bunga` DECIMAL(6,2) DEFAULT NULL,
  `biaya_cashback` DECIMAL(6,2) DEFAULT NULL,
  `tingkat_bunga_penjaminan_lps` DECIMAL(6,2) DEFAULT NULL,
  `kategori_tingkat_bunga_simpanan` VARCHAR(3) DEFAULT NULL,
  `saldo_simpanan` DECIMAL(22,0) DEFAULT NULL,
  `nominal_blokir` DECIMAL(22,0) DEFAULT NULL,
  `alasan_blokir` VARCHAR(2) DEFAULT NULL,
  `bunga_akrual` DECIMAL(22,0) DEFAULT NULL,
  `tgl_akru_terakhir` DATE DEFAULT NULL,
  `tanggal_jt` DATE DEFAULT NULL,
  PRIMARY KEY (`no_rekening`,`klasifikasi_rekening`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci

CREATE TABLE `lps_dk_f0003` (
  `flag_detail` VARCHAR(1) NOT NULL DEFAULT 'D' COMMENT 'Diisi dengan D',
  `nasabah_id` VARCHAR(20) NOT NULL,
  `no_rekening` VARCHAR(35) NOT NULL,
  `jenis` VARCHAR(3) DEFAULT NULL,
  `kolektibilitas` VARCHAR(1) DEFAULT NULL,
  `plafon` DECIMAL(22,0) DEFAULT NULL,
  `baki_debet` DECIMAL(22,0) DEFAULT NULL,
  `tunggakan_pokok` DECIMAL(22,0) DEFAULT NULL,
  `tunggakan_bunga` DECIMAL(22,0) DEFAULT NULL,
  `jenis_agunan` VARCHAR(10) DEFAULT NULL,
  `tgl_mulai` DATE DEFAULT NULL,
  `tgl_jatuh_tempo` DATE DEFAULT NULL,
  `kategori_usaha` VARCHAR(2) DEFAULT NULL,
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci


CREATE TABLE `lps_dk_f0004` (
  `flag_detail` VARCHAR(1) DEFAULT 'D',
  `nasabah_id` VARCHAR(20) NOT NULL,
  `no_rekening` VARCHAR(35) NOT NULL,
  `persentase_kepemilikan` DECIMAL(6,2) NOT NULL COMMENT '100% / total per kombinasi nasabah_id + rekening',
  PRIMARY KEY (`nasabah_id`,`no_rekening`)
) ENGINE=INNODB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci


