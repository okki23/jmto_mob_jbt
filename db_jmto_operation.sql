/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_jmto_operation

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-11-01 16:21:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jurusan
-- ----------------------------
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jurusan
-- ----------------------------
INSERT INTO `jurusan` VALUES ('1', 'Teknik Elektro');
INSERT INTO `jurusan` VALUES ('2', 'Pariwisata');
INSERT INTO `jurusan` VALUES ('3', 'Akuntansi');
INSERT INTO `jurusan` VALUES ('4', 'Teknik Mesin');
INSERT INTO `jurusan` VALUES ('5', 'Teknik Sipil');
INSERT INTO `jurusan` VALUES ('6', 'Administrasi Niaga');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('3', 'Kresna', '1', '31');
INSERT INTO `mahasiswa` VALUES ('4', 'Agus', '1', '31');
INSERT INTO `mahasiswa` VALUES ('5', 'Adi', '1', '32');
INSERT INTO `mahasiswa` VALUES ('6', 'Okki', '4', '22');

-- ----------------------------
-- Table structure for m_bank
-- ----------------------------
DROP TABLE IF EXISTS `m_bank`;
CREATE TABLE `m_bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_bank
-- ----------------------------
INSERT INTO `m_bank` VALUES ('1', 'BRI');
INSERT INTO `m_bank` VALUES ('2', 'Mandiri');
INSERT INTO `m_bank` VALUES ('3', 'BCA');
INSERT INTO `m_bank` VALUES ('4', 'BNI');

-- ----------------------------
-- Table structure for m_example
-- ----------------------------
DROP TABLE IF EXISTS `m_example`;
CREATE TABLE `m_example` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode_menu` varchar(255) DEFAULT NULL,
  `nama_menu` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `kode_parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_example
-- ----------------------------
INSERT INTO `m_example` VALUES ('1', '1', 'Home', '#', '0');
INSERT INTO `m_example` VALUES ('2', '2', 'Master', null, '0');
INSERT INTO `m_example` VALUES ('3', '3', 'Data Pegawai', null, '2');
INSERT INTO `m_example` VALUES ('4', '4', 'Data Jabatan', null, '2');
INSERT INTO `m_example` VALUES ('5', '5', 'Pegawai Tetap', null, '3');
INSERT INTO `m_example` VALUES ('6', '6', 'Pegawai Tidak Tetap', null, '3');
INSERT INTO `m_example` VALUES ('7', '7', 'Data Unit', null, '2');

-- ----------------------------
-- Table structure for m_gardu
-- ----------------------------
DROP TABLE IF EXISTS `m_gardu`;
CREATE TABLE `m_gardu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_gerbang` varchar(255) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `long_coordinate` varchar(100) DEFAULT NULL,
  `lat_coordinate` varchar(100) DEFAULT NULL,
  `id_pic` int(10) DEFAULT NULL,
  `user_insert` varchar(25) DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `user_update` varchar(25) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_gardu
-- ----------------------------
INSERT INTO `m_gardu` VALUES ('1', '1', 'Gardu Utama 01', 'Palikanci 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('2', '1', 'Gardu Utama 02', 'Palikanci 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('3', '1', 'Gardu Utama 03', 'Palikanci 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('4', '2', 'Gardu Secondary 01', 'Ciperna 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('5', '2', 'Gardu Secondary 02', 'Ciperna 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('6', '2', 'Gardu Secondary 03', 'Cikarang 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('7', '3', 'Gardu T Party 01', 'Plumbon 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('8', '3', 'Gardu T Party 02', 'Plumbon 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('9', '3', 'Gardu T Party 03', 'Plumbon 01', '-', '-', '1', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_gardu` VALUES ('11', '14', 'GTO Becakayu 99', 'Caman99', '343999', '343499', null, null, null, 'admin', '2018-10-16 03:55:53');

-- ----------------------------
-- Table structure for m_gerbang
-- ----------------------------
DROP TABLE IF EXISTS `m_gerbang`;
CREATE TABLE `m_gerbang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_ruas` int(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `id_pic` int(10) DEFAULT NULL,
  `long_coordinate` varchar(100) DEFAULT NULL,
  `lat_coordinate` varchar(100) DEFAULT NULL,
  `user_insert` varchar(25) DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `user_update` varchar(25) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_gerbang
-- ----------------------------
INSERT INTO `m_gerbang` VALUES ('1', '1', 'Palimanan', 'Palikanci', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('2', '1', 'Ciperna', 'Ciperna', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('3', '1', 'Plumbon', 'Plumbon', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('4', '2', 'Bekasi Timur', 'Bekasi', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('5', '2', 'Cikarang Utama', 'Cikarang', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('6', '2', 'Karawang Barat', 'Karawang', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('7', '3', 'Tomang', 'Tomang', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('8', '3', 'Meruya', 'Meruya', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('9', '3', 'Karang Tengah', 'Karang Tengah', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('10', '4', 'Jababeka 1', 'Jababeka 1', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('11', '4', 'Cibatu', 'Cibatu', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('12', '4', 'Jababeka 2', 'Jababeka 2', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('13', '5', 'Pondok Gede', 'Pondok Gede', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('14', '5', 'Cawang', 'Cawang', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('15', '5', 'Tebet', 'Tebet', null, '-', '-', '1', '0000-00-00 00:00:00', '1', '0000-00-00 00:00:00');
INSERT INTO `m_gerbang` VALUES ('16', '6', 'Madiun', 'Madiun', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('17', '6', 'Wilangan', 'Wilangan', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('18', '6', 'Kartasura', 'Kartasura', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('19', '6', 'Bandara Adi Sumarno', 'Bandara Adi Sumarno', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('20', '6', 'Godangrejo', 'Godangrejo', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('21', '6', 'Karanganyar', 'Godangrejo', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('22', '6', 'Sragen', 'Sragen', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('23', '6', 'Sragen Timur', 'Sragen Timur', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('24', '6', 'Ngawi', 'Ngawi', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('25', '7', 'Ungaran', 'Ungaran', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('26', '7', 'Bawean', 'Bawean', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('27', '7', 'Salatiga', 'Salatiga', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('28', '7', 'Banyumanik', 'Banyumanik', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('29', '6', 'Caruban', 'Caruban', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('30', '6', 'Colomadu', 'Colomadu', null, null, null, null, null, null, null);
INSERT INTO `m_gerbang` VALUES ('31', '6', 'Ngemplak', 'Ngemplak', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for m_integrasi
-- ----------------------------
DROP TABLE IF EXISTS `m_integrasi`;
CREATE TABLE `m_integrasi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_ruas` int(10) DEFAULT NULL,
  `id_integrasi` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_integrasi
-- ----------------------------
INSERT INTO `m_integrasi` VALUES ('1', '5', '5');
INSERT INTO `m_integrasi` VALUES ('2', '5', '3');
INSERT INTO `m_integrasi` VALUES ('3', '3', '1');
INSERT INTO `m_integrasi` VALUES ('4', '3', '3');
INSERT INTO `m_integrasi` VALUES ('7', '5', '4');

-- ----------------------------
-- Table structure for m_jenis_gardu
-- ----------------------------
DROP TABLE IF EXISTS `m_jenis_gardu`;
CREATE TABLE `m_jenis_gardu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_gardu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_jenis_gardu
-- ----------------------------
INSERT INTO `m_jenis_gardu` VALUES ('1', 'GTO');
INSERT INTO `m_jenis_gardu` VALUES ('2', 'GSO');
INSERT INTO `m_jenis_gardu` VALUES ('3', 'GSX');

-- ----------------------------
-- Table structure for m_pencapaian_vol_laban
-- ----------------------------
DROP TABLE IF EXISTS `m_pencapaian_vol_laban`;
CREATE TABLE `m_pencapaian_vol_laban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periode` int(10) DEFAULT NULL,
  `id_gerbang` varchar(255) DEFAULT NULL,
  `gol1_masuk` varchar(255) DEFAULT NULL,
  `gol2_masuk` varchar(255) DEFAULT NULL,
  `gol3_masuk` varchar(255) DEFAULT NULL,
  `gol4_masuk` varchar(255) DEFAULT NULL,
  `gol5_masuk` varchar(255) DEFAULT NULL,
  `total_masuk` varchar(255) DEFAULT NULL,
  `total_tnp_tp_ktp_masuk` varchar(255) DEFAULT NULL,
  `lhr_trans_ktp_masuk` varchar(255) DEFAULT NULL,
  `lhr_trans_non_ktp_masuk` varchar(255) DEFAULT NULL,
  `gol1_keluar` varchar(255) DEFAULT NULL,
  `gol2_keluar` varchar(255) DEFAULT NULL,
  `gol3_keluar` varchar(255) DEFAULT NULL,
  `gol4_keluar` varchar(255) DEFAULT NULL,
  `gol5_keluar` varchar(255) DEFAULT NULL,
  `total_keluar` varchar(255) DEFAULT NULL,
  `total_tnp_tp_ktp_keluar` varchar(255) DEFAULT NULL,
  `lhr_trans_ktp_keluar` varchar(255) DEFAULT NULL,
  `lhr_trans_non_ktp_keluar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pencapaian_vol_laban
-- ----------------------------
INSERT INTO `m_pencapaian_vol_laban` VALUES ('18', '201810', '30', '4', '54', '123', '54', '67', '64', '366', '454', '43', '65', '4', '54', '123', '54', '67', '64', '366', '454');
INSERT INTO `m_pencapaian_vol_laban` VALUES ('19', '201810', '31', '234', '55', '5', '123', '457', '54', '928', '234', '54', '4', '234', '55', '5', '123', '457', '54', '928', '234');
INSERT INTO `m_pencapaian_vol_laban` VALUES ('20', '201810', '21', '24', '43', '34', '4', '6', '5', '116', '23', '13', '34', '24', '43', '34', '4', '6', '5', '116', '23');
INSERT INTO `m_pencapaian_vol_laban` VALUES ('21', '201810', '22', '34', '23', '34', '55', '4', '6', '156', '54', '77', '34', '34', '23', '34', '55', '4', '6', '156', '54');
INSERT INTO `m_pencapaian_vol_laban` VALUES ('22', '201810', '1', '296', '175', '196', '236', '534', '129', '1566', '765', '187', '137', '296', '175', '196', '236', '534', '129', '1566', '765');

-- ----------------------------
-- Table structure for m_pultol
-- ----------------------------
DROP TABLE IF EXISTS `m_pultol`;
CREATE TABLE `m_pultol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruas` int(11) DEFAULT NULL,
  `id_gerbang` int(11) DEFAULT NULL,
  `jml_pultol` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_pultol
-- ----------------------------
INSERT INTO `m_pultol` VALUES ('1', '5', '15', '6');

-- ----------------------------
-- Table structure for m_ruas
-- ----------------------------
DROP TABLE IF EXISTS `m_ruas`;
CREATE TABLE `m_ruas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `long_coordinate` varchar(100) DEFAULT NULL,
  `lat_coordinate` varchar(100) DEFAULT NULL,
  `user_insert` varchar(25) DEFAULT NULL,
  `date_insert` datetime DEFAULT NULL,
  `user_update` varchar(25) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_ruas
-- ----------------------------
INSERT INTO `m_ruas` VALUES ('1', 'Palimanan - Kanci', 'Palimanan - Kanci', '-', '-', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_ruas` VALUES ('2', 'Jakarta - Cikampek', 'Jakarta - Cikampek', '-', '-', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_ruas` VALUES ('3', 'Jakarta - Tangerang', 'Jakarta - Tangerang', '-', '-', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_ruas` VALUES ('4', 'Jababeka', 'Jakarta - Bekasi', null, null, null, null, null, null);
INSERT INTO `m_ruas` VALUES ('5', 'JORR', 'Jakarta Outer Ring Road', null, null, null, null, null, null);
INSERT INTO `m_ruas` VALUES ('6', 'NKJ', 'Ngawi - Kertosono', '89', '88', 'admin', '2018-10-19 08:59:38', null, null);
INSERT INTO `m_ruas` VALUES ('7', 'SNJ', 'Solo - Ngawi', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for m_rupiah_etoll
-- ----------------------------
DROP TABLE IF EXISTS `m_rupiah_etoll`;
CREATE TABLE `m_rupiah_etoll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `shift` int(5) DEFAULT NULL,
  `id_bank` int(5) DEFAULT NULL,
  `id_ruas` int(5) DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_rupiah_etoll
-- ----------------------------
INSERT INTO `m_rupiah_etoll` VALUES ('1', '0000-00-00', '0', '0', '0', '0');
INSERT INTO `m_rupiah_etoll` VALUES ('2', '0000-00-00', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for m_rupiah_non_etoll
-- ----------------------------
DROP TABLE IF EXISTS `m_rupiah_non_etoll`;
CREATE TABLE `m_rupiah_non_etoll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `shift` int(5) DEFAULT NULL,
  `id_pic` int(5) DEFAULT NULL,
  `tunai` int(20) DEFAULT NULL,
  `opr` int(20) DEFAULT NULL,
  `karyawan` int(20) DEFAULT NULL,
  `mitra` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_rupiah_non_etoll
-- ----------------------------
INSERT INTO `m_rupiah_non_etoll` VALUES ('1', '2018-09-09', '1', '1', '500000', '560000', '30000', '500000');
INSERT INTO `m_rupiah_non_etoll` VALUES ('2', '2018-09-09', '1', '1', '500000', '560000', '47000', '500000');
INSERT INTO `m_rupiah_non_etoll` VALUES ('3', '2018-09-09', '1', '1', '450000', '300000', '23000', '450000');
INSERT INTO `m_rupiah_non_etoll` VALUES ('4', '2018-09-09', '1', '1', '500000', '560000', '14500', '500000');

-- ----------------------------
-- Table structure for m_spm
-- ----------------------------
DROP TABLE IF EXISTS `m_spm`;
CREATE TABLE `m_spm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_spm` varchar(255) DEFAULT NULL,
  `standar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_spm
-- ----------------------------
INSERT INTO `m_spm` VALUES ('1', 'SP1', 'Peringatan 1');
INSERT INTO `m_spm` VALUES ('2', 'SP2', 'Peringatan 2');

-- ----------------------------
-- Table structure for m_tarif_tol
-- ----------------------------
DROP TABLE IF EXISTS `m_tarif_tol`;
CREATE TABLE `m_tarif_tol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_gate_in` varchar(255) DEFAULT NULL,
  `id_gate_out` varchar(255) DEFAULT NULL,
  `gol1` varchar(255) DEFAULT NULL,
  `gol2` varchar(255) DEFAULT NULL,
  `gol3` varchar(255) DEFAULT NULL,
  `gol4` varchar(255) DEFAULT NULL,
  `gol5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_tarif_tol
-- ----------------------------

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_insert` varchar(50) DEFAULT NULL,
  `date_insert` varchar(50) DEFAULT NULL,
  `user_update` varchar(50) DEFAULT NULL,
  `date_update` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'admin', 'YQ==', null, null, null, null);

-- ----------------------------
-- Table structure for m_waktu_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `m_waktu_transaksi`;
CREATE TABLE `m_waktu_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_gardu` int(11) DEFAULT NULL,
  `waktu_transaksi` int(10) DEFAULT NULL,
  `periode_start` date DEFAULT NULL,
  `periode_end` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_waktu_transaksi
-- ----------------------------
INSERT INTO `m_waktu_transaksi` VALUES ('10', '1', '4', '2018-10-17', '2018-10-24');
INSERT INTO `m_waktu_transaksi` VALUES ('11', '1', '4', '2018-10-25', '2018-10-30');
INSERT INTO `m_waktu_transaksi` VALUES ('12', '1', '6', '2018-10-31', null);

-- ----------------------------
-- Table structure for prodi
-- ----------------------------
DROP TABLE IF EXISTS `prodi`;
CREATE TABLE `prodi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_prodi` varchar(255) NOT NULL,
  `jenjang` char(2) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prodi
-- ----------------------------
INSERT INTO `prodi` VALUES ('11', 'Teknik Sipil', 'D3', '5');
INSERT INTO `prodi` VALUES ('12', 'Manajemen Proyek Konstruksi', 'D4', '5');
INSERT INTO `prodi` VALUES ('21', 'Teknik Mesin', 'D3', '4');
INSERT INTO `prodi` VALUES ('22', 'Tata Pendingin dan Tata Udara', 'D3', '4');
INSERT INTO `prodi` VALUES ('31', 'Teknik Listrik', 'D3', '1');
INSERT INTO `prodi` VALUES ('32', 'Manajemen Informatika', 'D3', '1');
INSERT INTO `prodi` VALUES ('61', 'Akuntansi', 'D3', '3');
INSERT INTO `prodi` VALUES ('64', 'Akuntansi Manajerial', 'D4', '3');
INSERT INTO `prodi` VALUES ('71', 'Administrasi Bisnis', 'D3', '6');
INSERT INTO `prodi` VALUES ('74', 'Manajemen Bisnis Internasional', 'D4', '6');
INSERT INTO `prodi` VALUES ('81', 'Usaha Perjalanan Wisata', 'D3', '2');
INSERT INTO `prodi` VALUES ('82', 'Perhotelan', 'D3', '2');
INSERT INTO `prodi` VALUES ('83', 'Manajemen Bisnis Pariwisata', 'D4', '2');

-- ----------------------------
-- Table structure for t_jmto_trans_etool
-- ----------------------------
DROP TABLE IF EXISTS `t_jmto_trans_etool`;
CREATE TABLE `t_jmto_trans_etool` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `shift` varchar(10) DEFAULT NULL,
  `id_ruas` int(10) DEFAULT NULL,
  `id_gate_out` int(10) DEFAULT NULL,
  `id_gate_in` int(10) DEFAULT NULL,
  `id_bank` int(10) DEFAULT NULL,
  `gol1` varchar(10) DEFAULT NULL,
  `gol2` varchar(10) DEFAULT NULL,
  `gol3` varchar(10) DEFAULT NULL,
  `gol4` varchar(10) DEFAULT NULL,
  `gol5` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2692 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_jmto_trans_etool
-- ----------------------------
INSERT INTO `t_jmto_trans_etool` VALUES ('1576', '2018-10-01', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1577', '2018-10-01', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1578', '2018-10-01', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1579', '2018-10-01', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1580', '2018-10-01', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1581', '2018-10-01', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1582', '2018-10-01', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1583', '2018-10-01', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1584', '2018-10-01', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1585', '2018-10-01', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1586', '2018-10-01', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1587', '2018-10-01', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1588', '2018-10-01', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1589', '2018-10-01', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1590', '2018-10-01', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1591', '2018-10-01', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1592', '2018-10-01', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1593', '2018-10-01', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1594', '2018-10-01', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1595', '2018-10-01', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1596', '2018-10-01', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1597', '2018-10-01', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1598', '2018-10-01', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1599', '2018-10-01', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1600', '2018-10-01', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1601', '2018-10-01', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1602', '2018-10-01', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1603', '2018-10-01', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1604', '2018-10-01', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1605', '2018-10-01', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1606', '2018-10-01', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1607', '2018-10-01', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1608', '2018-10-01', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1609', '2018-10-01', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1610', '2018-10-01', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1611', '2018-10-01', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1612', '2018-10-02', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1613', '2018-10-02', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1614', '2018-10-02', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1615', '2018-10-02', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1616', '2018-10-02', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1617', '2018-10-02', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1618', '2018-10-02', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1619', '2018-10-02', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1620', '2018-10-02', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1621', '2018-10-02', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1622', '2018-10-02', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1623', '2018-10-02', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1624', '2018-10-02', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1625', '2018-10-02', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1626', '2018-10-02', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1627', '2018-10-02', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1628', '2018-10-02', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1629', '2018-10-02', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1630', '2018-10-02', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1631', '2018-10-02', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1632', '2018-10-02', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1633', '2018-10-02', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1634', '2018-10-02', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1635', '2018-10-02', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1636', '2018-10-02', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1637', '2018-10-02', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1638', '2018-10-02', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1639', '2018-10-02', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1640', '2018-10-02', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1641', '2018-10-02', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1642', '2018-10-02', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1643', '2018-10-02', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1644', '2018-10-02', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1645', '2018-10-02', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1646', '2018-10-02', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1647', '2018-10-02', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1648', '2018-10-03', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1649', '2018-10-03', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1650', '2018-10-03', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1651', '2018-10-03', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1652', '2018-10-03', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1653', '2018-10-03', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1654', '2018-10-03', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1655', '2018-10-03', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1656', '2018-10-03', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1657', '2018-10-03', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1658', '2018-10-03', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1659', '2018-10-03', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1660', '2018-10-03', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1661', '2018-10-03', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1662', '2018-10-03', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1663', '2018-10-03', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1664', '2018-10-03', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1665', '2018-10-03', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1666', '2018-10-03', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1667', '2018-10-03', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1668', '2018-10-03', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1669', '2018-10-03', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1670', '2018-10-03', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1671', '2018-10-03', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1672', '2018-10-03', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1673', '2018-10-03', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1674', '2018-10-03', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1675', '2018-10-03', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1676', '2018-10-03', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1677', '2018-10-03', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1678', '2018-10-03', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1679', '2018-10-03', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1680', '2018-10-03', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1681', '2018-10-03', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1682', '2018-10-03', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1683', '2018-10-03', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1684', '2018-10-04', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1685', '2018-10-04', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1686', '2018-10-04', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1687', '2018-10-04', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1688', '2018-10-04', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1689', '2018-10-04', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1690', '2018-10-04', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1691', '2018-10-04', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1692', '2018-10-04', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1693', '2018-10-04', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1694', '2018-10-04', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1695', '2018-10-04', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1696', '2018-10-04', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1697', '2018-10-04', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1698', '2018-10-04', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1699', '2018-10-04', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1700', '2018-10-04', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1701', '2018-10-04', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1702', '2018-10-04', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1703', '2018-10-04', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1704', '2018-10-04', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1705', '2018-10-04', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1706', '2018-10-04', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1707', '2018-10-04', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1708', '2018-10-04', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1709', '2018-10-04', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1710', '2018-10-04', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1711', '2018-10-04', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1712', '2018-10-04', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1713', '2018-10-04', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1714', '2018-10-04', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1715', '2018-10-04', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1716', '2018-10-04', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1717', '2018-10-04', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1718', '2018-10-04', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1719', '2018-10-04', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1720', '2018-10-05', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1721', '2018-10-05', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1722', '2018-10-05', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1723', '2018-10-05', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1724', '2018-10-05', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1725', '2018-10-05', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1726', '2018-10-05', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1727', '2018-10-05', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1728', '2018-10-05', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1729', '2018-10-05', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1730', '2018-10-05', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1731', '2018-10-05', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1732', '2018-10-05', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1733', '2018-10-05', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1734', '2018-10-05', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1735', '2018-10-05', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1736', '2018-10-05', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1737', '2018-10-05', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1738', '2018-10-05', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1739', '2018-10-05', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1740', '2018-10-05', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1741', '2018-10-05', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1742', '2018-10-05', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1743', '2018-10-05', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1744', '2018-10-05', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1745', '2018-10-05', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1746', '2018-10-05', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1747', '2018-10-05', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1748', '2018-10-05', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1749', '2018-10-05', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1750', '2018-10-05', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1751', '2018-10-05', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1752', '2018-10-05', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1753', '2018-10-05', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1754', '2018-10-05', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1755', '2018-10-05', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1756', '2018-10-06', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1757', '2018-10-06', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1758', '2018-10-06', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1759', '2018-10-06', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1760', '2018-10-06', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1761', '2018-10-06', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1762', '2018-10-06', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1763', '2018-10-06', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1764', '2018-10-06', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1765', '2018-10-06', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1766', '2018-10-06', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1767', '2018-10-06', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1768', '2018-10-06', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1769', '2018-10-06', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1770', '2018-10-06', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1771', '2018-10-06', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1772', '2018-10-06', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1773', '2018-10-06', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1774', '2018-10-06', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1775', '2018-10-06', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1776', '2018-10-06', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1777', '2018-10-06', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1778', '2018-10-06', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1779', '2018-10-06', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1780', '2018-10-06', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1781', '2018-10-06', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1782', '2018-10-06', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1783', '2018-10-06', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1784', '2018-10-06', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1785', '2018-10-06', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1786', '2018-10-06', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1787', '2018-10-06', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1788', '2018-10-06', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1789', '2018-10-06', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1790', '2018-10-06', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1791', '2018-10-06', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1792', '2018-10-07', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1793', '2018-10-07', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1794', '2018-10-07', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1795', '2018-10-07', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1796', '2018-10-07', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1797', '2018-10-07', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1798', '2018-10-07', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1799', '2018-10-07', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1800', '2018-10-07', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1801', '2018-10-07', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1802', '2018-10-07', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1803', '2018-10-07', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1804', '2018-10-07', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1805', '2018-10-07', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1806', '2018-10-07', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1807', '2018-10-07', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1808', '2018-10-07', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1809', '2018-10-07', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1810', '2018-10-07', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1811', '2018-10-07', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1812', '2018-10-07', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1813', '2018-10-07', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1814', '2018-10-07', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1815', '2018-10-07', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1816', '2018-10-07', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1817', '2018-10-07', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1818', '2018-10-07', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1819', '2018-10-07', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1820', '2018-10-07', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1821', '2018-10-07', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1822', '2018-10-07', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1823', '2018-10-07', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1824', '2018-10-07', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1825', '2018-10-07', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1826', '2018-10-07', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1827', '2018-10-07', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1828', '2018-10-08', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1829', '2018-10-08', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1830', '2018-10-08', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1831', '2018-10-08', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1832', '2018-10-08', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1833', '2018-10-08', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1834', '2018-10-08', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1835', '2018-10-08', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1836', '2018-10-08', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1837', '2018-10-08', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1838', '2018-10-08', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1839', '2018-10-08', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1840', '2018-10-08', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1841', '2018-10-08', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1842', '2018-10-08', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1843', '2018-10-08', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1844', '2018-10-08', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1845', '2018-10-08', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1846', '2018-10-08', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1847', '2018-10-08', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1848', '2018-10-08', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1849', '2018-10-08', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1850', '2018-10-08', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1851', '2018-10-08', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1852', '2018-10-08', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1853', '2018-10-08', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1854', '2018-10-08', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1855', '2018-10-08', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1856', '2018-10-08', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1857', '2018-10-08', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1858', '2018-10-08', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1859', '2018-10-08', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1860', '2018-10-08', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1861', '2018-10-08', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1862', '2018-10-08', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1863', '2018-10-08', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1864', '2018-10-09', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1865', '2018-10-09', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1866', '2018-10-09', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1867', '2018-10-09', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1868', '2018-10-09', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1869', '2018-10-09', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1870', '2018-10-09', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1871', '2018-10-09', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1872', '2018-10-09', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1873', '2018-10-09', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1874', '2018-10-09', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1875', '2018-10-09', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1876', '2018-10-09', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1877', '2018-10-09', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1878', '2018-10-09', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1879', '2018-10-09', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1880', '2018-10-09', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1881', '2018-10-09', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1882', '2018-10-09', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1883', '2018-10-09', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1884', '2018-10-09', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1885', '2018-10-09', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1886', '2018-10-09', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1887', '2018-10-09', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1888', '2018-10-09', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1889', '2018-10-09', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1890', '2018-10-09', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1891', '2018-10-09', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1892', '2018-10-09', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1893', '2018-10-09', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1894', '2018-10-09', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1895', '2018-10-09', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1896', '2018-10-09', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1897', '2018-10-09', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1898', '2018-10-09', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1899', '2018-10-09', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1900', '2018-10-10', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1901', '2018-10-10', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1902', '2018-10-10', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1903', '2018-10-10', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1904', '2018-10-10', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1905', '2018-10-10', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1906', '2018-10-10', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1907', '2018-10-10', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1908', '2018-10-10', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1909', '2018-10-10', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1910', '2018-10-10', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1911', '2018-10-10', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1912', '2018-10-10', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1913', '2018-10-10', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1914', '2018-10-10', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1915', '2018-10-10', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1916', '2018-10-10', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1917', '2018-10-10', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1918', '2018-10-10', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1919', '2018-10-10', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1920', '2018-10-10', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1921', '2018-10-10', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1922', '2018-10-10', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1923', '2018-10-10', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1924', '2018-10-10', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1925', '2018-10-10', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1926', '2018-10-10', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1927', '2018-10-10', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1928', '2018-10-10', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1929', '2018-10-10', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1930', '2018-10-10', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1931', '2018-10-10', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1932', '2018-10-10', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1933', '2018-10-10', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1934', '2018-10-10', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1935', '2018-10-10', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1936', '2018-10-11', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1937', '2018-10-11', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1938', '2018-10-11', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1939', '2018-10-11', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1940', '2018-10-11', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1941', '2018-10-11', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1942', '2018-10-11', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1943', '2018-10-11', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1944', '2018-10-11', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1945', '2018-10-11', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1946', '2018-10-11', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1947', '2018-10-11', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1948', '2018-10-11', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1949', '2018-10-11', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1950', '2018-10-11', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1951', '2018-10-11', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1952', '2018-10-11', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1953', '2018-10-11', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1954', '2018-10-11', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1955', '2018-10-11', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1956', '2018-10-11', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1957', '2018-10-11', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1958', '2018-10-11', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1959', '2018-10-11', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1960', '2018-10-11', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1961', '2018-10-11', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1962', '2018-10-11', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1963', '2018-10-11', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1964', '2018-10-11', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1965', '2018-10-11', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1966', '2018-10-11', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1967', '2018-10-11', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1968', '2018-10-11', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1969', '2018-10-11', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1970', '2018-10-11', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1971', '2018-10-11', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1972', '2018-10-12', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1973', '2018-10-12', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1974', '2018-10-12', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1975', '2018-10-12', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1976', '2018-10-12', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1977', '2018-10-12', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1978', '2018-10-12', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1979', '2018-10-12', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1980', '2018-10-12', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1981', '2018-10-12', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1982', '2018-10-12', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1983', '2018-10-12', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1984', '2018-10-12', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1985', '2018-10-12', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1986', '2018-10-12', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1987', '2018-10-12', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1988', '2018-10-12', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1989', '2018-10-12', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('1990', '2018-10-12', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('1991', '2018-10-12', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('1992', '2018-10-12', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1993', '2018-10-12', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('1994', '2018-10-12', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('1995', '2018-10-12', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1996', '2018-10-12', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('1997', '2018-10-12', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('1998', '2018-10-12', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('1999', '2018-10-12', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2000', '2018-10-12', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2001', '2018-10-12', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2002', '2018-10-12', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2003', '2018-10-12', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2004', '2018-10-12', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2005', '2018-10-12', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2006', '2018-10-12', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2007', '2018-10-12', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2008', '2018-10-13', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2009', '2018-10-13', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2010', '2018-10-13', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2011', '2018-10-13', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2012', '2018-10-13', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2013', '2018-10-13', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2014', '2018-10-13', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2015', '2018-10-13', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2016', '2018-10-13', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2017', '2018-10-13', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2018', '2018-10-13', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2019', '2018-10-13', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2020', '2018-10-13', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2021', '2018-10-13', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2022', '2018-10-13', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2023', '2018-10-13', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2024', '2018-10-13', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2025', '2018-10-13', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2026', '2018-10-13', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2027', '2018-10-13', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2028', '2018-10-13', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2029', '2018-10-13', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2030', '2018-10-13', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2031', '2018-10-13', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2032', '2018-10-13', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2033', '2018-10-13', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2034', '2018-10-13', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2035', '2018-10-13', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2036', '2018-10-13', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2037', '2018-10-13', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2038', '2018-10-13', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2039', '2018-10-13', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2040', '2018-10-13', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2041', '2018-10-13', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2042', '2018-10-13', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2043', '2018-10-13', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2044', '2018-10-14', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2045', '2018-10-14', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2046', '2018-10-14', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2047', '2018-10-14', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2048', '2018-10-14', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2049', '2018-10-14', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2050', '2018-10-14', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2051', '2018-10-14', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2052', '2018-10-14', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2053', '2018-10-14', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2054', '2018-10-14', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2055', '2018-10-14', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2056', '2018-10-14', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2057', '2018-10-14', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2058', '2018-10-14', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2059', '2018-10-14', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2060', '2018-10-14', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2061', '2018-10-14', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2062', '2018-10-14', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2063', '2018-10-14', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2064', '2018-10-14', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2065', '2018-10-14', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2066', '2018-10-14', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2067', '2018-10-14', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2068', '2018-10-14', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2069', '2018-10-14', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2070', '2018-10-14', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2071', '2018-10-14', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2072', '2018-10-14', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2073', '2018-10-14', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2074', '2018-10-14', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2075', '2018-10-14', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2076', '2018-10-14', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2077', '2018-10-14', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2078', '2018-10-14', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2079', '2018-10-14', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2080', '2018-10-15', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2081', '2018-10-15', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2082', '2018-10-15', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2083', '2018-10-15', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2084', '2018-10-15', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2085', '2018-10-15', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2086', '2018-10-15', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2087', '2018-10-15', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2088', '2018-10-15', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2089', '2018-10-15', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2090', '2018-10-15', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2091', '2018-10-15', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2092', '2018-10-15', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2093', '2018-10-15', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2094', '2018-10-15', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2095', '2018-10-15', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2096', '2018-10-15', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2097', '2018-10-15', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2098', '2018-10-15', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2099', '2018-10-15', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2100', '2018-10-15', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2101', '2018-10-15', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2102', '2018-10-15', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2103', '2018-10-15', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2104', '2018-10-15', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2105', '2018-10-15', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2106', '2018-10-15', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2107', '2018-10-15', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2108', '2018-10-15', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2109', '2018-10-15', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2110', '2018-10-15', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2111', '2018-10-15', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2112', '2018-10-15', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2113', '2018-10-15', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2114', '2018-10-15', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2115', '2018-10-15', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2116', '2018-10-16', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2117', '2018-10-16', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2118', '2018-10-16', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2119', '2018-10-16', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2120', '2018-10-16', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2121', '2018-10-16', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2122', '2018-10-16', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2123', '2018-10-16', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2124', '2018-10-16', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2125', '2018-10-16', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2126', '2018-10-16', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2127', '2018-10-16', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2128', '2018-10-16', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2129', '2018-10-16', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2130', '2018-10-16', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2131', '2018-10-16', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2132', '2018-10-16', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2133', '2018-10-16', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2134', '2018-10-16', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2135', '2018-10-16', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2136', '2018-10-16', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2137', '2018-10-16', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2138', '2018-10-16', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2139', '2018-10-16', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2140', '2018-10-16', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2141', '2018-10-16', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2142', '2018-10-16', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2143', '2018-10-16', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2144', '2018-10-16', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2145', '2018-10-16', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2146', '2018-10-16', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2147', '2018-10-16', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2148', '2018-10-16', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2149', '2018-10-16', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2150', '2018-10-16', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2151', '2018-10-16', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2152', '2018-10-17', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2153', '2018-10-17', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2154', '2018-10-17', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2155', '2018-10-17', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2156', '2018-10-17', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2157', '2018-10-17', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2158', '2018-10-17', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2159', '2018-10-17', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2160', '2018-10-17', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2161', '2018-10-17', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2162', '2018-10-17', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2163', '2018-10-17', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2164', '2018-10-17', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2165', '2018-10-17', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2166', '2018-10-17', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2167', '2018-10-17', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2168', '2018-10-17', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2169', '2018-10-17', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2170', '2018-10-17', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2171', '2018-10-17', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2172', '2018-10-17', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2173', '2018-10-17', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2174', '2018-10-17', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2175', '2018-10-17', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2176', '2018-10-17', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2177', '2018-10-17', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2178', '2018-10-17', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2179', '2018-10-17', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2180', '2018-10-17', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2181', '2018-10-17', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2182', '2018-10-17', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2183', '2018-10-17', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2184', '2018-10-17', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2185', '2018-10-17', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2186', '2018-10-17', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2187', '2018-10-17', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2188', '2018-10-18', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2189', '2018-10-18', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2190', '2018-10-18', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2191', '2018-10-18', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2192', '2018-10-18', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2193', '2018-10-18', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2194', '2018-10-18', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2195', '2018-10-18', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2196', '2018-10-18', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2197', '2018-10-18', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2198', '2018-10-18', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2199', '2018-10-18', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2200', '2018-10-18', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2201', '2018-10-18', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2202', '2018-10-18', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2203', '2018-10-18', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2204', '2018-10-18', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2205', '2018-10-18', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2206', '2018-10-18', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2207', '2018-10-18', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2208', '2018-10-18', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2209', '2018-10-18', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2210', '2018-10-18', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2211', '2018-10-18', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2212', '2018-10-18', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2213', '2018-10-18', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2214', '2018-10-18', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2215', '2018-10-18', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2216', '2018-10-18', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2217', '2018-10-18', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2218', '2018-10-18', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2219', '2018-10-18', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2220', '2018-10-18', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2221', '2018-10-18', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2222', '2018-10-18', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2223', '2018-10-18', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2224', '2018-10-19', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2225', '2018-10-19', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2226', '2018-10-19', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2227', '2018-10-19', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2228', '2018-10-19', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2229', '2018-10-19', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2230', '2018-10-19', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2231', '2018-10-19', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2232', '2018-10-19', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2233', '2018-10-19', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2234', '2018-10-19', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2235', '2018-10-19', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2236', '2018-10-19', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2237', '2018-10-19', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2238', '2018-10-19', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2239', '2018-10-19', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2240', '2018-10-19', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2241', '2018-10-19', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2242', '2018-10-19', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2243', '2018-10-19', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2244', '2018-10-19', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2245', '2018-10-19', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2246', '2018-10-19', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2247', '2018-10-19', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2248', '2018-10-19', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2249', '2018-10-19', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2250', '2018-10-19', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2251', '2018-10-19', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2252', '2018-10-19', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2253', '2018-10-19', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2254', '2018-10-19', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2255', '2018-10-19', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2256', '2018-10-19', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2257', '2018-10-19', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2258', '2018-10-19', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2259', '2018-10-19', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2260', '2018-10-20', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2261', '2018-10-20', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2262', '2018-10-20', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2263', '2018-10-20', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2264', '2018-10-20', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2265', '2018-10-20', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2266', '2018-10-20', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2267', '2018-10-20', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2268', '2018-10-20', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2269', '2018-10-20', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2270', '2018-10-20', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2271', '2018-10-20', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2272', '2018-10-20', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2273', '2018-10-20', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2274', '2018-10-20', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2275', '2018-10-20', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2276', '2018-10-20', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2277', '2018-10-20', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2278', '2018-10-20', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2279', '2018-10-20', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2280', '2018-10-20', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2281', '2018-10-20', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2282', '2018-10-20', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2283', '2018-10-20', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2284', '2018-10-20', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2285', '2018-10-20', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2286', '2018-10-20', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2287', '2018-10-20', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2288', '2018-10-20', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2289', '2018-10-20', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2290', '2018-10-20', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2291', '2018-10-20', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2292', '2018-10-20', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2293', '2018-10-20', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2294', '2018-10-20', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2295', '2018-10-20', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2296', '2018-10-21', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2297', '2018-10-21', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2298', '2018-10-21', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2299', '2018-10-21', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2300', '2018-10-21', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2301', '2018-10-21', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2302', '2018-10-21', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2303', '2018-10-21', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2304', '2018-10-21', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2305', '2018-10-21', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2306', '2018-10-21', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2307', '2018-10-21', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2308', '2018-10-21', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2309', '2018-10-21', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2310', '2018-10-21', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2311', '2018-10-21', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2312', '2018-10-21', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2313', '2018-10-21', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2314', '2018-10-21', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2315', '2018-10-21', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2316', '2018-10-21', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2317', '2018-10-21', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2318', '2018-10-21', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2319', '2018-10-21', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2320', '2018-10-21', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2321', '2018-10-21', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2322', '2018-10-21', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2323', '2018-10-21', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2324', '2018-10-21', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2325', '2018-10-21', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2326', '2018-10-21', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2327', '2018-10-21', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2328', '2018-10-21', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2329', '2018-10-21', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2330', '2018-10-21', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2331', '2018-10-21', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2332', '2018-10-22', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2333', '2018-10-22', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2334', '2018-10-22', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2335', '2018-10-22', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2336', '2018-10-22', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2337', '2018-10-22', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2338', '2018-10-22', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2339', '2018-10-22', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2340', '2018-10-22', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2341', '2018-10-22', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2342', '2018-10-22', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2343', '2018-10-22', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2344', '2018-10-22', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2345', '2018-10-22', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2346', '2018-10-22', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2347', '2018-10-22', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2348', '2018-10-22', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2349', '2018-10-22', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2350', '2018-10-22', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2351', '2018-10-22', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2352', '2018-10-22', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2353', '2018-10-22', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2354', '2018-10-22', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2355', '2018-10-22', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2356', '2018-10-22', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2357', '2018-10-22', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2358', '2018-10-22', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2359', '2018-10-22', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2360', '2018-10-22', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2361', '2018-10-22', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2362', '2018-10-22', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2363', '2018-10-22', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2364', '2018-10-22', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2365', '2018-10-22', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2366', '2018-10-22', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2367', '2018-10-22', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2368', '2018-10-23', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2369', '2018-10-23', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2370', '2018-10-23', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2371', '2018-10-23', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2372', '2018-10-23', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2373', '2018-10-23', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2374', '2018-10-23', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2375', '2018-10-23', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2376', '2018-10-23', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2377', '2018-10-23', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2378', '2018-10-23', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2379', '2018-10-23', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2380', '2018-10-23', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2381', '2018-10-23', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2382', '2018-10-23', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2383', '2018-10-23', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2384', '2018-10-23', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2385', '2018-10-23', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2386', '2018-10-23', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2387', '2018-10-23', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2388', '2018-10-23', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2389', '2018-10-23', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2390', '2018-10-23', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2391', '2018-10-23', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2392', '2018-10-23', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2393', '2018-10-23', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2394', '2018-10-23', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2395', '2018-10-23', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2396', '2018-10-23', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2397', '2018-10-23', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2398', '2018-10-23', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2399', '2018-10-23', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2400', '2018-10-23', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2401', '2018-10-23', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2402', '2018-10-23', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2403', '2018-10-23', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2404', '2018-10-24', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2405', '2018-10-24', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2406', '2018-10-24', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2407', '2018-10-24', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2408', '2018-10-24', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2409', '2018-10-24', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2410', '2018-10-24', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2411', '2018-10-24', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2412', '2018-10-24', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2413', '2018-10-24', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2414', '2018-10-24', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2415', '2018-10-24', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2416', '2018-10-24', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2417', '2018-10-24', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2418', '2018-10-24', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2419', '2018-10-24', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2420', '2018-10-24', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2421', '2018-10-24', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2422', '2018-10-24', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2423', '2018-10-24', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2424', '2018-10-24', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2425', '2018-10-24', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2426', '2018-10-24', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2427', '2018-10-24', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2428', '2018-10-24', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2429', '2018-10-24', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2430', '2018-10-24', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2431', '2018-10-24', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2432', '2018-10-24', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2433', '2018-10-24', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2434', '2018-10-24', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2435', '2018-10-24', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2436', '2018-10-24', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2437', '2018-10-24', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2438', '2018-10-24', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2439', '2018-10-24', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2440', '2018-10-25', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2441', '2018-10-25', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2442', '2018-10-25', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2443', '2018-10-25', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2444', '2018-10-25', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2445', '2018-10-25', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2446', '2018-10-25', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2447', '2018-10-25', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2448', '2018-10-25', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2449', '2018-10-25', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2450', '2018-10-25', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2451', '2018-10-25', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2452', '2018-10-25', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2453', '2018-10-25', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2454', '2018-10-25', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2455', '2018-10-25', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2456', '2018-10-25', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2457', '2018-10-25', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2458', '2018-10-25', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2459', '2018-10-25', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2460', '2018-10-25', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2461', '2018-10-25', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2462', '2018-10-25', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2463', '2018-10-25', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2464', '2018-10-25', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2465', '2018-10-25', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2466', '2018-10-25', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2467', '2018-10-25', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2468', '2018-10-25', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2469', '2018-10-25', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2470', '2018-10-25', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2471', '2018-10-25', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2472', '2018-10-25', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2473', '2018-10-25', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2474', '2018-10-25', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2475', '2018-10-25', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2476', '2018-10-26', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2477', '2018-10-26', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2478', '2018-10-26', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2479', '2018-10-26', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2480', '2018-10-26', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2481', '2018-10-26', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2482', '2018-10-26', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2483', '2018-10-26', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2484', '2018-10-26', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2485', '2018-10-26', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2486', '2018-10-26', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2487', '2018-10-26', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2488', '2018-10-26', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2489', '2018-10-26', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2490', '2018-10-26', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2491', '2018-10-26', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2492', '2018-10-26', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2493', '2018-10-26', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2494', '2018-10-26', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2495', '2018-10-26', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2496', '2018-10-26', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2497', '2018-10-26', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2498', '2018-10-26', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2499', '2018-10-26', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2500', '2018-10-26', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2501', '2018-10-26', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2502', '2018-10-26', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2503', '2018-10-26', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2504', '2018-10-26', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2505', '2018-10-26', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2506', '2018-10-26', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2507', '2018-10-26', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2508', '2018-10-26', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2509', '2018-10-26', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2510', '2018-10-26', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2511', '2018-10-26', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2512', '2018-10-27', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2513', '2018-10-27', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2514', '2018-10-27', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2515', '2018-10-27', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2516', '2018-10-27', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2517', '2018-10-27', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2518', '2018-10-27', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2519', '2018-10-27', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2520', '2018-10-27', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2521', '2018-10-27', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2522', '2018-10-27', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2523', '2018-10-27', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2524', '2018-10-27', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2525', '2018-10-27', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2526', '2018-10-27', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2527', '2018-10-27', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2528', '2018-10-27', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2529', '2018-10-27', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2530', '2018-10-27', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2531', '2018-10-27', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2532', '2018-10-27', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2533', '2018-10-27', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2534', '2018-10-27', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2535', '2018-10-27', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2536', '2018-10-27', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2537', '2018-10-27', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2538', '2018-10-27', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2539', '2018-10-27', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2540', '2018-10-27', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2541', '2018-10-27', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2542', '2018-10-27', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2543', '2018-10-27', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2544', '2018-10-27', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2545', '2018-10-27', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2546', '2018-10-27', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2547', '2018-10-27', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2548', '2018-10-28', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2549', '2018-10-28', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2550', '2018-10-28', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2551', '2018-10-28', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2552', '2018-10-28', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2553', '2018-10-28', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2554', '2018-10-28', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2555', '2018-10-28', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2556', '2018-10-28', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2557', '2018-10-28', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2558', '2018-10-28', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2559', '2018-10-28', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2560', '2018-10-28', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2561', '2018-10-28', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2562', '2018-10-28', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2563', '2018-10-28', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2564', '2018-10-28', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2565', '2018-10-28', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2566', '2018-10-28', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2567', '2018-10-28', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2568', '2018-10-28', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2569', '2018-10-28', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2570', '2018-10-28', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2571', '2018-10-28', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2572', '2018-10-28', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2573', '2018-10-28', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2574', '2018-10-28', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2575', '2018-10-28', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2576', '2018-10-28', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2577', '2018-10-28', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2578', '2018-10-28', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2579', '2018-10-28', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2580', '2018-10-28', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2581', '2018-10-28', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2582', '2018-10-28', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2583', '2018-10-28', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2584', '2018-10-29', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2585', '2018-10-29', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2586', '2018-10-29', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2587', '2018-10-29', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2588', '2018-10-29', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2589', '2018-10-29', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2590', '2018-10-29', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2591', '2018-10-29', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2592', '2018-10-29', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2593', '2018-10-29', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2594', '2018-10-29', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2595', '2018-10-29', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2596', '2018-10-29', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2597', '2018-10-29', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2598', '2018-10-29', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2599', '2018-10-29', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2600', '2018-10-29', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2601', '2018-10-29', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2602', '2018-10-29', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2603', '2018-10-29', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2604', '2018-10-29', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2605', '2018-10-29', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2606', '2018-10-29', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2607', '2018-10-29', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2608', '2018-10-29', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2609', '2018-10-29', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2610', '2018-10-29', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2611', '2018-10-29', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2612', '2018-10-29', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2613', '2018-10-29', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2614', '2018-10-29', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2615', '2018-10-29', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2616', '2018-10-29', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2617', '2018-10-29', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2618', '2018-10-29', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2619', '2018-10-29', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2620', '2018-10-30', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2621', '2018-10-30', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2622', '2018-10-30', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2623', '2018-10-30', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2624', '2018-10-30', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2625', '2018-10-30', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2626', '2018-10-30', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2627', '2018-10-30', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2628', '2018-10-30', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2629', '2018-10-30', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2630', '2018-10-30', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2631', '2018-10-30', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2632', '2018-10-30', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2633', '2018-10-30', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2634', '2018-10-30', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2635', '2018-10-30', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2636', '2018-10-30', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2637', '2018-10-30', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2638', '2018-10-30', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2639', '2018-10-30', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2640', '2018-10-30', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2641', '2018-10-30', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2642', '2018-10-30', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2643', '2018-10-30', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2644', '2018-10-30', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2645', '2018-10-30', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2646', '2018-10-30', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2647', '2018-10-30', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2648', '2018-10-30', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2649', '2018-10-30', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2650', '2018-10-30', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2651', '2018-10-30', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2652', '2018-10-30', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2653', '2018-10-30', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2654', '2018-10-30', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2655', '2018-10-30', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2656', '2018-10-31', '1', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2657', '2018-10-31', '1', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2658', '2018-10-31', '1', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2659', '2018-10-31', '1', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2660', '2018-10-31', '1', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2661', '2018-10-31', '1', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2662', '2018-10-31', '1', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2663', '2018-10-31', '1', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2664', '2018-10-31', '1', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2665', '2018-10-31', '1', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2666', '2018-10-31', '1', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2667', '2018-10-31', '1', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2668', '2018-10-31', '2', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2669', '2018-10-31', '2', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2670', '2018-10-31', '2', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2671', '2018-10-31', '2', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2672', '2018-10-31', '2', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2673', '2018-10-31', '2', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2674', '2018-10-31', '2', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2675', '2018-10-31', '2', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2676', '2018-10-31', '2', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2677', '2018-10-31', '2', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2678', '2018-10-31', '2', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2679', '2018-10-31', '2', '6', '29', '18', '4', '2', '9', '8', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2680', '2018-10-31', '3', '6', '29', '16', '1', '6', '7', '6', '6', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2681', '2018-10-31', '3', '6', '29', '17', '1', '3', '3', '4', '7', '5');
INSERT INTO `t_jmto_trans_etool` VALUES ('2682', '2018-10-31', '3', '6', '29', '18', '1', '4', '6', '2', '2', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('2683', '2018-10-31', '3', '6', '29', '16', '2', '4', '2', '3', '8', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2684', '2018-10-31', '3', '6', '29', '17', '2', '3', '6', '6', '9', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2685', '2018-10-31', '3', '6', '29', '18', '2', '1', '3', '6', '3', '8');
INSERT INTO `t_jmto_trans_etool` VALUES ('2686', '2018-10-31', '3', '6', '29', '16', '3', '5', '6', '2', '1', '9');
INSERT INTO `t_jmto_trans_etool` VALUES ('2687', '2018-10-31', '3', '6', '29', '17', '3', '7', '7', '3', '8', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('2688', '2018-10-31', '3', '6', '29', '18', '3', '3', '2', '7', '3', '3');
INSERT INTO `t_jmto_trans_etool` VALUES ('2689', '2018-10-31', '3', '6', '29', '16', '4', '7', '8', '2', '1', '6');
INSERT INTO `t_jmto_trans_etool` VALUES ('2690', '2018-10-31', '3', '6', '29', '17', '4', '3', '3', '6', '7', '7');
INSERT INTO `t_jmto_trans_etool` VALUES ('2691', '2018-10-31', '3', '6', '29', '18', '4', '2', '9', '8', '3', '2');

-- ----------------------------
-- Table structure for t_jmto_trans_ktp_opr
-- ----------------------------
DROP TABLE IF EXISTS `t_jmto_trans_ktp_opr`;
CREATE TABLE `t_jmto_trans_ktp_opr` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `shift` varchar(5) DEFAULT NULL,
  `id_pic` int(10) DEFAULT NULL,
  `id_gate_in` int(10) DEFAULT NULL,
  `id_gate_out` int(10) DEFAULT NULL,
  `gol1_tunai` varchar(10) DEFAULT NULL,
  `gol2_tunai` varchar(10) DEFAULT NULL,
  `gol3_tunai` varchar(10) DEFAULT NULL,
  `gol4_tunai` varchar(10) DEFAULT NULL,
  `gol5_tunai` varchar(10) DEFAULT NULL,
  `gol1_opr_ktp` varchar(10) DEFAULT NULL,
  `gol2_opt_ktp` varchar(10) DEFAULT NULL,
  `gol3_opr_ktp` varchar(10) DEFAULT NULL,
  `gol1_kary_ktp` varchar(10) DEFAULT NULL,
  `gol2_kary_ktp` varchar(10) DEFAULT NULL,
  `gol1_mit_ktp` varchar(10) DEFAULT NULL,
  `gol2_mit_ktp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_jmto_trans_ktp_opr
-- ----------------------------
INSERT INTO `t_jmto_trans_ktp_opr` VALUES ('1', '2018-10-10', '1', '1', '13', '8', '100', '10', '10', '20', '20', '10', '4', '3', '1', '2', '0', '0');
INSERT INTO `t_jmto_trans_ktp_opr` VALUES ('2', '2018-10-10', '1', '1', '14', '8', '20', '2', '4', '3', '3', '3', '3', '34', '0', '2', '1', '4');
INSERT INTO `t_jmto_trans_ktp_opr` VALUES ('3', '2018-10-10', '1', '1', '15', '8', '22', '5', '5', '5', '2', '3', '3', '5', '0', '4', '4', '2');
INSERT INTO `t_jmto_trans_ktp_opr` VALUES ('6', '2018-10-10', '1', '1', '7', '8', '100', '10', '10', '20', '20', '10', '4', '3', '1', '2', '0', '0');
INSERT INTO `t_jmto_trans_ktp_opr` VALUES ('7', '2018-10-10', '1', '1', '8', '8', '20', '2', '4', '3', '3', '3', '3', '34', '0', '2', '1', '4');
INSERT INTO `t_jmto_trans_ktp_opr` VALUES ('8', '2018-10-10', '1', '1', '9', '8', '22', '5', '5', '5', '2', '3', '3', '5', '0', '4', '4', '2');

-- ----------------------------
-- Table structure for t_jmto_trans_non_etool
-- ----------------------------
DROP TABLE IF EXISTS `t_jmto_trans_non_etool`;
CREATE TABLE `t_jmto_trans_non_etool` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `shift` varchar(5) DEFAULT NULL,
  `id_ruas` int(10) DEFAULT NULL,
  `id_gate_out` int(10) DEFAULT NULL,
  `id_gate_in` int(10) DEFAULT NULL,
  `gol1_tunai` varchar(10) DEFAULT NULL,
  `gol2_tunai` varchar(10) DEFAULT NULL,
  `gol3_tunai` varchar(10) DEFAULT NULL,
  `gol4_tunai` varchar(10) DEFAULT NULL,
  `gol5_tunai` varchar(10) DEFAULT NULL,
  `gol1_opr_ktp` varchar(10) DEFAULT NULL,
  `gol2_opr_ktp` varchar(10) DEFAULT NULL,
  `gol3_opr_ktp` varchar(10) DEFAULT NULL,
  `gol1_kary_ktp` varchar(10) DEFAULT NULL,
  `gol2_kary_ktp` varchar(10) DEFAULT NULL,
  `gol1_mit_ktp` varchar(10) DEFAULT NULL,
  `gol2_mit_ktp` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_jmto_trans_non_etool
-- ----------------------------
INSERT INTO `t_jmto_trans_non_etool` VALUES ('302', '2018-10-01', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('303', '2018-10-01', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('304', '2018-10-01', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('305', '2018-10-01', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('306', '2018-10-01', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('307', '2018-10-01', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('308', '2018-10-01', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('309', '2018-10-01', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('310', '2018-10-01', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('311', '2018-10-02', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('312', '2018-10-02', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('313', '2018-10-02', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('314', '2018-10-02', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('315', '2018-10-02', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('316', '2018-10-02', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('317', '2018-10-02', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('318', '2018-10-02', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('319', '2018-10-02', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('320', '2018-10-03', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('321', '2018-10-03', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('322', '2018-10-03', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('323', '2018-10-03', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('324', '2018-10-03', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('325', '2018-10-03', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('326', '2018-10-03', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('327', '2018-10-03', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('328', '2018-10-03', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('329', '2018-10-04', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('330', '2018-10-04', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('331', '2018-10-04', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('332', '2018-10-04', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('333', '2018-10-04', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('334', '2018-10-04', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('335', '2018-10-04', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('336', '2018-10-04', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('337', '2018-10-04', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('338', '2018-10-05', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('339', '2018-10-05', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('340', '2018-10-05', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('341', '2018-10-05', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('342', '2018-10-05', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('343', '2018-10-05', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('344', '2018-10-05', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('345', '2018-10-05', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('346', '2018-10-05', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('347', '2018-10-06', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('348', '2018-10-06', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('349', '2018-10-06', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('350', '2018-10-06', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('351', '2018-10-06', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('352', '2018-10-06', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('353', '2018-10-06', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('354', '2018-10-06', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('355', '2018-10-06', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('356', '2018-10-07', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('357', '2018-10-07', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('358', '2018-10-07', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('359', '2018-10-07', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('360', '2018-10-07', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('361', '2018-10-07', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('362', '2018-10-07', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('363', '2018-10-07', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('364', '2018-10-07', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('365', '2018-10-08', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('366', '2018-10-08', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('367', '2018-10-08', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('368', '2018-10-08', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('369', '2018-10-08', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('370', '2018-10-08', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('371', '2018-10-08', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('372', '2018-10-08', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('373', '2018-10-08', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('374', '2018-10-09', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('375', '2018-10-09', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('376', '2018-10-09', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('377', '2018-10-09', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('378', '2018-10-09', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('379', '2018-10-09', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('380', '2018-10-09', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('381', '2018-10-09', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('382', '2018-10-09', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('383', '2018-10-10', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('384', '2018-10-10', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('385', '2018-10-10', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('386', '2018-10-10', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('387', '2018-10-10', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('388', '2018-10-10', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('389', '2018-10-10', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('390', '2018-10-10', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('391', '2018-10-10', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('392', '2018-10-11', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('393', '2018-10-11', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('394', '2018-10-11', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('395', '2018-10-11', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('396', '2018-10-11', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('397', '2018-10-11', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('398', '2018-10-11', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('399', '2018-10-11', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('400', '2018-10-11', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('401', '2018-10-12', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('402', '2018-10-12', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('403', '2018-10-12', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('404', '2018-10-12', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('405', '2018-10-12', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('406', '2018-10-12', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('407', '2018-10-12', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('408', '2018-10-12', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('409', '2018-10-12', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('410', '2018-10-13', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('411', '2018-10-13', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('412', '2018-10-13', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('413', '2018-10-13', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('414', '2018-10-13', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('415', '2018-10-13', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('416', '2018-10-13', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('417', '2018-10-13', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('418', '2018-10-13', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('419', '2018-10-14', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('420', '2018-10-14', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('421', '2018-10-14', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('422', '2018-10-14', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('423', '2018-10-14', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('424', '2018-10-14', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('425', '2018-10-14', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('426', '2018-10-14', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('427', '2018-10-14', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('428', '2018-10-15', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('429', '2018-10-15', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('430', '2018-10-15', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('431', '2018-10-15', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('432', '2018-10-15', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('433', '2018-10-15', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('434', '2018-10-15', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('435', '2018-10-15', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('436', '2018-10-15', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('437', '2018-10-16', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('438', '2018-10-16', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('439', '2018-10-16', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('440', '2018-10-16', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('441', '2018-10-16', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('442', '2018-10-16', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('443', '2018-10-16', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('444', '2018-10-16', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('445', '2018-10-16', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('446', '2018-10-17', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('447', '2018-10-17', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('448', '2018-10-17', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('449', '2018-10-17', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('450', '2018-10-17', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('451', '2018-10-17', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('452', '2018-10-17', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('453', '2018-10-17', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('454', '2018-10-17', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('455', '2018-10-18', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('456', '2018-10-18', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('457', '2018-10-18', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('458', '2018-10-18', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('459', '2018-10-18', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('460', '2018-10-18', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('461', '2018-10-18', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('462', '2018-10-18', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('463', '2018-10-18', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('464', '2018-10-19', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('465', '2018-10-19', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('466', '2018-10-19', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('467', '2018-10-19', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('468', '2018-10-19', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('469', '2018-10-19', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('470', '2018-10-19', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('471', '2018-10-19', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('472', '2018-10-19', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('473', '2018-10-20', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('474', '2018-10-20', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('475', '2018-10-20', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('476', '2018-10-20', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('477', '2018-10-20', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('478', '2018-10-20', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('479', '2018-10-20', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('480', '2018-10-20', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('481', '2018-10-20', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('482', '2018-10-21', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('483', '2018-10-21', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('484', '2018-10-21', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('485', '2018-10-21', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('486', '2018-10-21', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('487', '2018-10-21', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('488', '2018-10-21', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('489', '2018-10-21', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('490', '2018-10-21', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('491', '2018-10-22', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('492', '2018-10-22', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('493', '2018-10-22', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('494', '2018-10-22', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('495', '2018-10-22', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('496', '2018-10-22', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('497', '2018-10-22', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('498', '2018-10-22', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('499', '2018-10-22', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('500', '2018-10-23', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('501', '2018-10-23', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('502', '2018-10-23', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('503', '2018-10-23', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('504', '2018-10-23', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('505', '2018-10-23', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('506', '2018-10-23', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('507', '2018-10-23', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('508', '2018-10-23', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('509', '2018-10-24', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('510', '2018-10-24', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('511', '2018-10-24', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('512', '2018-10-24', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('513', '2018-10-24', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('514', '2018-10-24', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('515', '2018-10-24', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('516', '2018-10-24', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('517', '2018-10-24', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('518', '2018-10-25', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('519', '2018-10-25', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('520', '2018-10-25', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('521', '2018-10-25', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('522', '2018-10-25', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('523', '2018-10-25', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('524', '2018-10-25', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('525', '2018-10-25', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('526', '2018-10-25', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('527', '2018-10-26', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('528', '2018-10-26', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('529', '2018-10-26', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('530', '2018-10-26', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('531', '2018-10-26', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('532', '2018-10-26', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('533', '2018-10-26', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('534', '2018-10-26', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('535', '2018-10-26', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('536', '2018-10-27', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('537', '2018-10-27', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('538', '2018-10-27', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('539', '2018-10-27', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('540', '2018-10-27', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('541', '2018-10-27', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('542', '2018-10-27', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('543', '2018-10-27', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('544', '2018-10-27', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('545', '2018-10-28', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('546', '2018-10-28', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('547', '2018-10-28', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('548', '2018-10-28', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('549', '2018-10-28', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('550', '2018-10-28', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('551', '2018-10-28', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('552', '2018-10-28', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('553', '2018-10-28', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('554', '2018-10-29', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('555', '2018-10-29', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('556', '2018-10-29', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('557', '2018-10-29', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('558', '2018-10-29', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('559', '2018-10-29', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('560', '2018-10-29', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('561', '2018-10-29', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('562', '2018-10-29', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('563', '2018-10-30', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('564', '2018-10-30', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('565', '2018-10-30', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('566', '2018-10-30', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('567', '2018-10-30', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('568', '2018-10-30', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('569', '2018-10-30', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('570', '2018-10-30', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('571', '2018-10-30', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('572', '2018-10-31', '1', '6', '29', '16', '44', '7', '23', '6', '64', '32', '32', '84', '3', '1', '23', '6');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('573', '2018-10-31', '1', '6', '29', '17', '56', '6', '4', '4', '2', '4', '4', '43', '3', '5', '45', '3');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('574', '2018-10-31', '1', '6', '29', '18', '4', '64', '34', '6', '21', '45', '3', '6', '5', '7', '5', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('575', '2018-10-31', '2', '6', '29', '16', '3', '67', '62', '43', '67', '34', '54', '1', '5', '3', '32', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('576', '2018-10-31', '2', '6', '29', '17', '7', '38', '5', '51', '63', '22', '34', '54', '66', '74', '84', '7');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('577', '2018-10-31', '2', '6', '29', '18', '3', '7', '3', '45', '84', '18', '4', '73', '56', '87', '31', '9');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('578', '2018-10-31', '3', '6', '29', '16', '5', '57', '4', '5', '34', '64', '45', '9', '3', '65', '3', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('579', '2018-10-31', '3', '6', '29', '17', '7', '2', '5', '64', '54', '87', '32', '45', '2', '3', '54', '8');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('580', '2018-10-31', '3', '6', '29', '18', '8', '89', '2', '32', '3', '43', '3', '5', '3', '27', '37', '1');

-- ----------------------------
-- Table structure for t_quotation
-- ----------------------------
DROP TABLE IF EXISTS `t_quotation`;
CREATE TABLE `t_quotation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_gate_in` int(10) DEFAULT NULL,
  `id_gate_out` int(10) DEFAULT NULL,
  `golongan` varchar(10) DEFAULT NULL,
  `tarif` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_quotation
-- ----------------------------
INSERT INTO `t_quotation` VALUES ('1', '1', '1', '1', '5000');
INSERT INTO `t_quotation` VALUES ('2', '1', '2', '2', '10000');
INSERT INTO `t_quotation` VALUES ('3', '1', '3', '3', '7000');
INSERT INTO `t_quotation` VALUES ('4', '1', '4', '4', '6000');
INSERT INTO `t_quotation` VALUES ('5', '1', '5', '5', '3000');
INSERT INTO `t_quotation` VALUES ('6', '7', '6', '1', '2000');
INSERT INTO `t_quotation` VALUES ('7', '8', '7', '2', '2200');
INSERT INTO `t_quotation` VALUES ('8', '13', '8', '1', '5000');
INSERT INTO `t_quotation` VALUES ('9', '14', '8', '1', '5000');
INSERT INTO `t_quotation` VALUES ('10', '15', '8', '1', '5000');
INSERT INTO `t_quotation` VALUES ('11', '7', '8', '1', '5000');
INSERT INTO `t_quotation` VALUES ('12', '8', '8', '1', '5000');
INSERT INTO `t_quotation` VALUES ('13', '9', '8', '1', '5000');
INSERT INTO `t_quotation` VALUES ('14', '13', '8', '2', '10000');
INSERT INTO `t_quotation` VALUES ('15', '14', '8', '2', '10000');
INSERT INTO `t_quotation` VALUES ('16', '15', '8', '2', '10000');
INSERT INTO `t_quotation` VALUES ('17', '7', '8', '2', '10000');
INSERT INTO `t_quotation` VALUES ('18', '8', '8', '2', '10000');
INSERT INTO `t_quotation` VALUES ('19', '9', '8', '2', '10000');
INSERT INTO `t_quotation` VALUES ('20', '13', '8', '3', '7000');
INSERT INTO `t_quotation` VALUES ('21', '14', '8', '3', '7000');
INSERT INTO `t_quotation` VALUES ('22', '15', '8', '3', '7000');
INSERT INTO `t_quotation` VALUES ('23', '7', '8', '3', '7000');
INSERT INTO `t_quotation` VALUES ('24', '8', '8', '3', '7000');
INSERT INTO `t_quotation` VALUES ('25', '9', '8', '3', '7000');
INSERT INTO `t_quotation` VALUES ('26', '13', '8', '4', '6000');
INSERT INTO `t_quotation` VALUES ('27', '14', '8', '4', '6000');
INSERT INTO `t_quotation` VALUES ('28', '15', '8', '4', '6000');
INSERT INTO `t_quotation` VALUES ('29', '7', '8', '4', '6000');
INSERT INTO `t_quotation` VALUES ('30', '8', '8', '4', '6000');
INSERT INTO `t_quotation` VALUES ('31', '9', '8', '4', '6000');
INSERT INTO `t_quotation` VALUES ('32', '13', '8', '5', '3000');
INSERT INTO `t_quotation` VALUES ('33', '14', '8', '5', '3000');
INSERT INTO `t_quotation` VALUES ('34', '15', '8', '5', '3000');
INSERT INTO `t_quotation` VALUES ('35', '7', '8', '5', '3000');
INSERT INTO `t_quotation` VALUES ('36', '8', '8', '5', '3000');
INSERT INTO `t_quotation` VALUES ('37', '9', '8', '5', '3000');
SET FOREIGN_KEY_CHECKS=1;
