/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_monitoring_jabatan

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-10-25 10:28:10
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_departemen
-- ----------------------------
INSERT INTO `m_departemen` VALUES ('1', '1', 'IT Services');
INSERT INTO `m_departemen` VALUES ('2', '1', 'Operation Support System');
INSERT INTO `m_departemen` VALUES ('6', '6', 'Finance & Accounting');

-- ----------------------------
-- Table structure for m_direktorat
-- ----------------------------
DROP TABLE IF EXISTS `m_direktorat`;
CREATE TABLE `m_direktorat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_direktorat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_direktorat
-- ----------------------------
INSERT INTO `m_direktorat` VALUES ('1', 'Direktur Utama');
INSERT INTO `m_direktorat` VALUES ('3', 'Direktur Teknik & Operasi');
INSERT INTO `m_direktorat` VALUES ('4', 'Direktur Keuangan & SDM');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_divisi
-- ----------------------------
INSERT INTO `m_divisi` VALUES ('1', '3', 'Information Technology');
INSERT INTO `m_divisi` VALUES ('2', '3', 'Operation Management');
INSERT INTO `m_divisi` VALUES ('5', '3', 'Divisi pengembangan');
INSERT INTO `m_divisi` VALUES ('6', '4', 'Financial Management');

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
  `id_seksi` int(10) DEFAULT NULL,
  `id_kelompok_jabatan` int(10) DEFAULT NULL,
  `npp` varchar(25) DEFAULT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_formasi_jabatan
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelas_jabatan
-- ----------------------------
INSERT INTO `m_kelas_jabatan` VALUES ('2', 'Kelas A');
INSERT INTO `m_kelas_jabatan` VALUES ('3', 'Kelas B');

-- ----------------------------
-- Table structure for m_kelompok_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelompok_jabatan`;
CREATE TABLE `m_kelompok_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas_jabatan` int(10) DEFAULT NULL,
  `nama_kelompok_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelompok_jabatan
-- ----------------------------
INSERT INTO `m_kelompok_jabatan` VALUES ('1', '2', 'IT Departemen');
INSERT INTO `m_kelompok_jabatan` VALUES ('4', '2', 'IT Web Dev');
INSERT INTO `m_kelompok_jabatan` VALUES ('5', '3', 'IT Infra');
INSERT INTO `m_kelompok_jabatan` VALUES ('7', '3', 'IT Network Security');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_seksi
-- ----------------------------
INSERT INTO `m_seksi` VALUES ('2', '2', 'Operation Support Planning');
INSERT INTO `m_seksi` VALUES ('4', '1', 'Application & Database');

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
