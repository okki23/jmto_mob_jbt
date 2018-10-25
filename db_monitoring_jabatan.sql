/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_monitoring_jabatan

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-10-25 16:21:21
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
-- Table structure for m_departemen
-- ----------------------------
DROP TABLE IF EXISTS `m_departemen`;
CREATE TABLE `m_departemen` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_divisi` int(10) DEFAULT NULL,
  `nama_departemen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_departemen
-- ----------------------------
INSERT INTO `m_departemen` VALUES ('1', '1', 'Departemen IT Services Management');
INSERT INTO `m_departemen` VALUES ('2', '1', 'Departemen Operation Support System');
INSERT INTO `m_departemen` VALUES ('7', '2', 'Departemen Settlement & Reconsiliation');
INSERT INTO `m_departemen` VALUES ('8', '2', 'Departemen Maintenance');
INSERT INTO `m_departemen` VALUES ('9', '2', 'Departemen Toll Collection Management');
INSERT INTO `m_departemen` VALUES ('10', '2', 'Departemen Traffic Management');
INSERT INTO `m_departemen` VALUES ('11', '6', 'Departemen Finance & Accounting');
INSERT INTO `m_departemen` VALUES ('12', '6', 'Departemen Coorporate Plan, Risk & Quality Management');
INSERT INTO `m_departemen` VALUES ('13', '8', 'Departemen Human Capital');
INSERT INTO `m_departemen` VALUES ('14', '8', 'Departemen General Affair');
INSERT INTO `m_departemen` VALUES ('15', '9', 'Departemen Business Management');
INSERT INTO `m_departemen` VALUES ('16', '9', 'Departemen Marketing');

-- ----------------------------
-- Table structure for m_direktorat
-- ----------------------------
DROP TABLE IF EXISTS `m_direktorat`;
CREATE TABLE `m_direktorat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_direktorat` varchar(100) DEFAULT NULL,
  `id_dirut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_direktorat
-- ----------------------------
INSERT INTO `m_direktorat` VALUES ('3', 'Direktur Teknik & Operasi', '1');
INSERT INTO `m_direktorat` VALUES ('4', 'Direktur Keuangan & SDM', '1');
INSERT INTO `m_direktorat` VALUES ('5', 'Direktur Utama', null);

-- ----------------------------
-- Table structure for m_dirut
-- ----------------------------
DROP TABLE IF EXISTS `m_dirut`;
CREATE TABLE `m_dirut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_dirut` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_dirut
-- ----------------------------
INSERT INTO `m_dirut` VALUES ('1', 'Septerianto Sanaf');

-- ----------------------------
-- Table structure for m_divisi
-- ----------------------------
DROP TABLE IF EXISTS `m_divisi`;
CREATE TABLE `m_divisi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_direktorat` int(10) DEFAULT NULL,
  `nama_divisi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_divisi
-- ----------------------------
INSERT INTO `m_divisi` VALUES ('1', '3', 'Divisi Information Technology');
INSERT INTO `m_divisi` VALUES ('2', '3', 'Divisi Operation Management');
INSERT INTO `m_divisi` VALUES ('6', '4', 'Divisi Financial Management');
INSERT INTO `m_divisi` VALUES ('8', '4', 'Divisi Human Capital & General Affair');
INSERT INTO `m_divisi` VALUES ('9', '5', 'Divisi Business Development');

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
-- Table structure for m_formasi_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_formasi_jabatan`;
CREATE TABLE `m_formasi_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_direktorat` int(10) DEFAULT NULL,
  `id_departemen` int(10) DEFAULT NULL,
  `id_seksi` int(10) DEFAULT NULL,
  `id_kelompok_jabatan` int(10) DEFAULT NULL,
  `id_divisi` int(10) DEFAULT NULL,
  `npp` varchar(20) DEFAULT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_formasi_jabatan
-- ----------------------------
INSERT INTO `m_formasi_jabatan` VALUES ('1', '3', '1', '4', '4', '1', '6533453', 'Web Developer');

-- ----------------------------
-- Table structure for m_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `m_karyawan`;
CREATE TABLE `m_karyawan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_lokasi` int(10) DEFAULT NULL,
  `npp` varchar(25) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_karyawan
-- ----------------------------
INSERT INTO `m_karyawan` VALUES ('3', '1', '563453', 'Indro');
INSERT INTO `m_karyawan` VALUES ('4', '1', '6533453', 'Kasino Hadiwibowo');
INSERT INTO `m_karyawan` VALUES ('5', '2', '72426', 'Wahyoe Sardono');

-- ----------------------------
-- Table structure for m_kelas_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelas_jabatan`;
CREATE TABLE `m_kelas_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kelas_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelas_jabatan
-- ----------------------------
INSERT INTO `m_kelas_jabatan` VALUES ('2', '1');
INSERT INTO `m_kelas_jabatan` VALUES ('3', '2');
INSERT INTO `m_kelas_jabatan` VALUES ('5', '3');
INSERT INTO `m_kelas_jabatan` VALUES ('6', '4');

-- ----------------------------
-- Table structure for m_kelompok_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelompok_jabatan`;
CREATE TABLE `m_kelompok_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas_jabatan` int(10) DEFAULT NULL,
  `nama_kelompok_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelompok_jabatan
-- ----------------------------
INSERT INTO `m_kelompok_jabatan` VALUES ('8', '2', 'VP');
INSERT INTO `m_kelompok_jabatan` VALUES ('9', '3', 'AVP');
INSERT INTO `m_kelompok_jabatan` VALUES ('10', '5', 'Manager');
INSERT INTO `m_kelompok_jabatan` VALUES ('11', '6', 'SO');

-- ----------------------------
-- Table structure for m_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `m_lokasi`;
CREATE TABLE `m_lokasi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_lokasi
-- ----------------------------
INSERT INTO `m_lokasi` VALUES ('1', 'Jakarta');
INSERT INTO `m_lokasi` VALUES ('2', 'Bandung');
INSERT INTO `m_lokasi` VALUES ('3', 'Surabaya');

-- ----------------------------
-- Table structure for m_seksi
-- ----------------------------
DROP TABLE IF EXISTS `m_seksi`;
CREATE TABLE `m_seksi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_departemen` int(10) DEFAULT NULL,
  `nama_seksi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_seksi
-- ----------------------------
INSERT INTO `m_seksi` VALUES ('6', '7', 'Seksi Settlement Management');
INSERT INTO `m_seksi` VALUES ('7', '8', 'Seksi Maintenance Control');
INSERT INTO `m_seksi` VALUES ('8', '10', 'Seksi Traffic Planning');
INSERT INTO `m_seksi` VALUES ('9', '10', 'Seksi Traffic Service & Sec');
INSERT INTO `m_seksi` VALUES ('10', '9', 'Seksi Toll Collecting Planning');
INSERT INTO `m_seksi` VALUES ('11', '9', 'Area Manager Belmera');
INSERT INTO `m_seksi` VALUES ('12', '9', 'Area Manager Jagorawi');
INSERT INTO `m_seksi` VALUES ('13', '9', 'Area Manager JTC');
INSERT INTO `m_seksi` VALUES ('14', '9', 'Area Manager Japek - Palikanci');
INSERT INTO `m_seksi` VALUES ('15', '2', 'Seksi Operation Support System Planning');
INSERT INTO `m_seksi` VALUES ('16', '2', 'Seksi Transaction Support System Control');
INSERT INTO `m_seksi` VALUES ('17', '2', 'Seksi Traffic Support System Control');
INSERT INTO `m_seksi` VALUES ('18', '9', 'Area Manager Cipularang Padaleunyi');
INSERT INTO `m_seksi` VALUES ('19', '9', 'Area Manager Surgem');
INSERT INTO `m_seksi` VALUES ('20', '1', 'Seksi IT Application & Database');
INSERT INTO `m_seksi` VALUES ('21', '1', 'Seksi IT Network & Infrastruktur');
INSERT INTO `m_seksi` VALUES ('22', '11', 'Seksi Finance');
INSERT INTO `m_seksi` VALUES ('23', '11', 'Seksi Tax & Accounting');
INSERT INTO `m_seksi` VALUES ('24', '12', 'Seksi Coorporate Plan');
INSERT INTO `m_seksi` VALUES ('25', '12', 'Seksi Risk & Quality Management');
INSERT INTO `m_seksi` VALUES ('26', '13', 'Seksi Planning & Development Human Capital');
INSERT INTO `m_seksi` VALUES ('27', '13', 'Seksi Employment');
INSERT INTO `m_seksi` VALUES ('28', '14', 'Seksi Procurement & Administration Assets');
INSERT INTO `m_seksi` VALUES ('29', '14', 'Seksi Legal & Publicrelations');
INSERT INTO `m_seksi` VALUES ('30', '14', 'Seksi Office Administration');
INSERT INTO `m_seksi` VALUES ('31', '15', 'Seksi Business Planning');
INSERT INTO `m_seksi` VALUES ('32', '16', 'Seksi Project Management');

-- ----------------------------
-- Table structure for m_struktur
-- ----------------------------
DROP TABLE IF EXISTS `m_struktur`;
CREATE TABLE `m_struktur` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kode_menu` varchar(255) DEFAULT NULL,
  `nama_menu` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `kode_parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_struktur
-- ----------------------------
INSERT INTO `m_struktur` VALUES ('2', '2', 'Direktur Utama', null, '0');
INSERT INTO `m_struktur` VALUES ('3', '3', 'Direktur Teknik & Operasi', null, '2');
INSERT INTO `m_struktur` VALUES ('4', '4', 'Direktur Keuangan & SDM', null, '2');
INSERT INTO `m_struktur` VALUES ('5', '5', 'Divisi Operation Management', null, '3');
INSERT INTO `m_struktur` VALUES ('6', '6', 'Divisi Information Technology', null, '3');
INSERT INTO `m_struktur` VALUES ('7', '7', 'Divisi Financial Management', null, '4');
INSERT INTO `m_struktur` VALUES ('8', '8', 'Divisi Human Capital', null, '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'admin', 'YQ==', null, null, null, null);
INSERT INTO `m_user` VALUES ('2', 'rere', 'YQ==', null, null, null, null);

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
SET FOREIGN_KEY_CHECKS=1;
