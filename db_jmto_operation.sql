/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_jmto_operation

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-10-19 09:20:32
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
INSERT INTO `mahasiswa` VALUES ('3', 'Kresna', '2', '82');
INSERT INTO `mahasiswa` VALUES ('4', 'Agus', '1', '31');
INSERT INTO `mahasiswa` VALUES ('5', 'Adi', '1', '32');
INSERT INTO `mahasiswa` VALUES ('6', 'Okki', '2', '81');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
-- Table structure for m_pultol
-- ----------------------------
DROP TABLE IF EXISTS `m_pultol`;
CREATE TABLE `m_pultol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruas` int(11) DEFAULT NULL,
  `id_gerbang` int(11) DEFAULT NULL,
  `jml_pultol` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_ruas
-- ----------------------------
INSERT INTO `m_ruas` VALUES ('1', 'Palimanan - Kanci', 'Palimanan - Kanci', '-', '-', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_ruas` VALUES ('2', 'Jakarta - Cikampek', 'Jakarta - Cikampek', '-', '-', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_ruas` VALUES ('3', 'Jakarta - Tangerang', 'Jakarta - Tangerang', '-', '-', 'okki', '0000-00-00 00:00:00', 'okki', '0000-00-00 00:00:00');
INSERT INTO `m_ruas` VALUES ('4', 'Jababeka', 'Jakarta - Bekasi', null, null, null, null, null, null);
INSERT INTO `m_ruas` VALUES ('5', 'JORR', 'Jakarta Outer Ring Road', null, null, null, null, null, null);

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
  `id_pic` int(10) DEFAULT NULL,
  `id_gate_in` int(10) DEFAULT NULL,
  `id_gate_out` int(10) DEFAULT NULL,
  `id_bank` int(10) DEFAULT NULL,
  `gol1` varchar(10) DEFAULT NULL,
  `gol2` varchar(10) DEFAULT NULL,
  `gol3` varchar(10) DEFAULT NULL,
  `gol4` varchar(10) DEFAULT NULL,
  `gol5` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_jmto_trans_etool
-- ----------------------------
INSERT INTO `t_jmto_trans_etool` VALUES ('1', '2018-10-10', '1', '1', '13', '8', '1', '3', '12', '2', '3', '1');
INSERT INTO `t_jmto_trans_etool` VALUES ('2', '2018-10-10', '1', '1', '14', '8', '1', '5', '10', '2', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('3', '2018-10-10', '1', '1', '15', '8', '1', '2', '3', '3', '3', '4');
INSERT INTO `t_jmto_trans_etool` VALUES ('7', '2018-10-10', '1', '1', '7', '8', '1', '3', '12', '2', '3', '1');
INSERT INTO `t_jmto_trans_etool` VALUES ('8', '2018-10-10', '1', '1', '8', '8', '1', '5', '10', '2', '3', '2');
INSERT INTO `t_jmto_trans_etool` VALUES ('9', '2018-10-10', '1', '1', '9', '8', '1', '2', '3', '3', '3', '4');

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
  `id_pic` int(10) DEFAULT NULL,
  `id_gate_in` int(10) DEFAULT NULL,
  `id_gate_out` int(10) DEFAULT NULL,
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
  `gol2_mit_ktp` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_jmto_trans_non_etool
-- ----------------------------
INSERT INTO `t_jmto_trans_non_etool` VALUES ('1', '2018-10-10', '1', '1', '13', '8', '100', '10', '10', '20', '20', '10', '4', '3', '1', '2', '0', '0');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('2', '2018-10-10', '1', '1', '14', '8', '20', '2', '4', '3', '3', '3', '3', '34', '0', '2', '1', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('3', '2018-10-10', '1', '1', '15', '8', '22', '5', '5', '5', '2', '3', '3', '5', '0', '4', '4', '2');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('6', '2018-10-10', '1', '1', '7', '8', '100', '10', '10', '20', '20', '10', '4', '3', '1', '2', '0', '0');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('7', '2018-10-10', '1', '1', '8', '8', '20', '2', '4', '3', '3', '3', '3', '34', '0', '2', '1', '4');
INSERT INTO `t_jmto_trans_non_etool` VALUES ('8', '2018-10-10', '1', '1', '9', '8', '22', '5', '5', '5', '2', '3', '3', '5', '0', '4', '4', '2');

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
