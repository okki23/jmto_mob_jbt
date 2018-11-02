/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_monitoring_jabatan

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-11-02 14:19:54
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
INSERT INTO `m_departemen` VALUES ('15', '10', 'Departemen Business Management');
INSERT INTO `m_departemen` VALUES ('16', '10', 'Departemen Marketing');

-- ----------------------------
-- Table structure for m_direktorat
-- ----------------------------
DROP TABLE IF EXISTS `m_direktorat`;
CREATE TABLE `m_direktorat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_direktorat` varchar(100) DEFAULT NULL,
  `id_dirut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_direktorat
-- ----------------------------
INSERT INTO `m_direktorat` VALUES ('3', 'Direktur Teknik & Operasi', '1');
INSERT INTO `m_direktorat` VALUES ('4', 'Direktur Keuangan & SDM', '1');
INSERT INTO `m_direktorat` VALUES ('6', 'Ass Dir', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_divisi
-- ----------------------------
INSERT INTO `m_divisi` VALUES ('1', '3', 'Divisi Information Technology');
INSERT INTO `m_divisi` VALUES ('2', '3', 'Divisi Operation Management');
INSERT INTO `m_divisi` VALUES ('6', '4', 'Divisi Financial Management');
INSERT INTO `m_divisi` VALUES ('8', '4', 'Divisi Human Capital & General Affair');
INSERT INTO `m_divisi` VALUES ('10', '6', 'Divisi Business Development');

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
  `id_parent_seksi` int(10) DEFAULT NULL,
  `npp` varchar(20) DEFAULT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_formasi_jabatan
-- ----------------------------
INSERT INTO `m_formasi_jabatan` VALUES ('11', '3', '0', '0', '8', '2', '65', '324234', 'Divisi Operation Management');
INSERT INTO `m_formasi_jabatan` VALUES ('12', '3', '0', '0', '8', '1', '65', '72834', 'Divisi Information Technology');
INSERT INTO `m_formasi_jabatan` VALUES ('13', '4', '0', '0', '8', '6', '66', '2428645', 'Divisi Financial Management');
INSERT INTO `m_formasi_jabatan` VALUES ('14', '4', '0', '0', '8', '8', '66', '3805734', 'Divisi Human Capital & General Affair');
INSERT INTO `m_formasi_jabatan` VALUES ('17', '3', '9', '0', '9', '2', null, '872364', 'Departemen Toll Collection Management');
INSERT INTO `m_formasi_jabatan` VALUES ('18', '3', '8', '0', '9', '2', null, '', 'Departemen Maintenance');
INSERT INTO `m_formasi_jabatan` VALUES ('19', '3', '10', '0', '9', '2', null, '', 'Departemen Traffic Management');
INSERT INTO `m_formasi_jabatan` VALUES ('21', '3', '8', '7', '10', '2', null, '', 'Seksi Maintenance Control');
INSERT INTO `m_formasi_jabatan` VALUES ('22', '3', '10', '8', '10', '2', null, '', 'Seksi Traffic Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('23', '3', '10', '9', '10', '2', null, '7435349', 'Seksi Traffic Service & Sec');
INSERT INTO `m_formasi_jabatan` VALUES ('24', '3', '9', '10', '10', '2', null, '69998456', 'Seksi Toll Collecting Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('25', '3', '9', '11', '10', '2', null, '777897456', 'Area Manager Belmera');
INSERT INTO `m_formasi_jabatan` VALUES ('26', '3', '2', '0', '9', '1', '12', '634574435', 'Departemen Operation Support System');
INSERT INTO `m_formasi_jabatan` VALUES ('27', '3', '2', '15', '10', '1', null, '66779889', 'Seksi Operation Support System Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('28', '3', '2', '16', '10', '1', null, '', 'Seksi Transaction Support System Control');
INSERT INTO `m_formasi_jabatan` VALUES ('29', '3', '2', '17', '10', '1', null, '', 'Seksi Traffic Support System Control');
INSERT INTO `m_formasi_jabatan` VALUES ('30', '3', '1', '0', '9', '1', '12', '542354', 'Departemen IT Services Management');
INSERT INTO `m_formasi_jabatan` VALUES ('31', '3', '1', '20', '10', '1', '30', '6999345', 'Seksi IT Application & Database');
INSERT INTO `m_formasi_jabatan` VALUES ('32', '3', '1', '21', '10', '1', '30', '4596989', 'Seksi IT Network & Infrastruktur');
INSERT INTO `m_formasi_jabatan` VALUES ('33', '4', '11', '0', '9', '6', null, '973253', 'Departemen Finance & Accounting');
INSERT INTO `m_formasi_jabatan` VALUES ('34', '4', '12', '0', '9', '6', null, '623843', 'Departemen Coorporate Plan, Risk & Quality Management');
INSERT INTO `m_formasi_jabatan` VALUES ('35', '4', '13', '0', '9', '8', null, '92837471', 'Departemen Human Capital');
INSERT INTO `m_formasi_jabatan` VALUES ('36', '4', '14', '0', '9', '8', null, '6532399', 'Departemen General Affair');
INSERT INTO `m_formasi_jabatan` VALUES ('37', '4', '11', '22', '10', '6', null, '4524239', 'Seksi Finance');
INSERT INTO `m_formasi_jabatan` VALUES ('38', '4', '11', '23', '10', '6', null, '654699995', 'Seksi Tax & Accounting');
INSERT INTO `m_formasi_jabatan` VALUES ('39', '4', '12', '24', '10', '6', null, '62347888', 'Seksi Coorporate Plan');
INSERT INTO `m_formasi_jabatan` VALUES ('40', '4', '12', '25', '10', '6', null, '7546867', 'Seksi Risk & Quality Management');
INSERT INTO `m_formasi_jabatan` VALUES ('41', '4', '13', '26', '10', '8', null, '5634590', 'Seksi Planning & Development Human Capital');
INSERT INTO `m_formasi_jabatan` VALUES ('42', '4', '13', '27', '10', '8', null, '986745333', 'Seksi Employment');
INSERT INTO `m_formasi_jabatan` VALUES ('43', '4', '14', '28', '10', '8', null, '324239090', 'Seksi Procurement & Administration Assets');
INSERT INTO `m_formasi_jabatan` VALUES ('44', '4', '14', '29', '10', '8', null, '77777998', 'Seksi Legal & Publicrelations');
INSERT INTO `m_formasi_jabatan` VALUES ('45', '4', '14', '30', '10', '8', null, '78756799', 'Seksi Office Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('52', '6', '15', '0', '9', '10', null, '', 'Departemen Business Management');
INSERT INTO `m_formasi_jabatan` VALUES ('53', '6', '16', '0', '9', '10', null, '', 'Departemen Marketing');
INSERT INTO `m_formasi_jabatan` VALUES ('54', '6', '15', '31', '10', '10', null, '54233333', 'Seksi Business Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('55', '6', '16', '32', '10', '10', null, '975347377', 'Seksi Project Management');
INSERT INTO `m_formasi_jabatan` VALUES ('56', '6', '0', '0', '8', '10', '0', '', 'Divisi Business Development');
INSERT INTO `m_formasi_jabatan` VALUES ('57', '3', '9', '12', '10', '2', null, '534242455', 'Area Manager Jagorawi');
INSERT INTO `m_formasi_jabatan` VALUES ('58', '3', '9', '13', '10', '2', null, '55334411', 'Area Manager JTC');
INSERT INTO `m_formasi_jabatan` VALUES ('59', '3', '9', '14', '10', '2', null, '3454200', 'Area Manager Japek - Palikanci');
INSERT INTO `m_formasi_jabatan` VALUES ('60', '3', '9', '18', '10', '2', null, '545459898', 'Area Manager Japek - Palikanci');
INSERT INTO `m_formasi_jabatan` VALUES ('61', '3', '9', '19', '10', '2', null, '55779090', 'Area Manager Surgem');
INSERT INTO `m_formasi_jabatan` VALUES ('62', '3', '1', '20', '11', '1', '31', '555999', 'Ass Seksi IT Application & Database');
INSERT INTO `m_formasi_jabatan` VALUES ('63', '3', '1', '20', '11', '1', null, '999555', 'Ass Seksi IT Application & Database');
INSERT INTO `m_formasi_jabatan` VALUES ('64', '3', '1', '21', '11', '1', null, '34343222', 'Ass Seksi IT Network & Infrastruktur');
INSERT INTO `m_formasi_jabatan` VALUES ('65', '3', '0', '0', '0', '0', '67', '474784', 'Direktur Teknik & Operasi');
INSERT INTO `m_formasi_jabatan` VALUES ('66', '4', '0', '0', '0', '0', '67', '34545', 'Direktur Keuangan & SDM');
INSERT INTO `m_formasi_jabatan` VALUES ('67', '0', '0', '0', '0', '0', '0', '4234545', 'Direktur Utama');
INSERT INTO `m_formasi_jabatan` VALUES ('68', '3', '1', '21', '11', '1', '32', '4545909', 'Ass Seksi IT Network & Infrastruktur');
INSERT INTO `m_formasi_jabatan` VALUES ('69', '3', '7', '0', '9', '2', '11', '965234', 'Departemen Settlement & Reconsiliation');
INSERT INTO `m_formasi_jabatan` VALUES ('70', '3', '7', '6', '10', '2', '69', '', 'Seksi Settlement Management');

-- ----------------------------
-- Table structure for m_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `m_karyawan`;
CREATE TABLE `m_karyawan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_lokasi` int(10) DEFAULT NULL,
  `npp` varchar(25) DEFAULT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `foto` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_karyawan
-- ----------------------------
INSERT INTO `m_karyawan` VALUES ('6', '1', '4234545', 'Septerianto Sanaf', null);
INSERT INTO `m_karyawan` VALUES ('7', '1', '474784', 'Taruli Hutapea', null);
INSERT INTO `m_karyawan` VALUES ('8', '1', '34545', 'Benny Soediarto. D', null);
INSERT INTO `m_karyawan` VALUES ('9', '1', '324234', 'Saut Sitorus', null);
INSERT INTO `m_karyawan` VALUES ('10', '1', '72834', 'Rahwono Haji', null);
INSERT INTO `m_karyawan` VALUES ('11', '1', '2428645', 'Anang Mohamad Maruf', null);
INSERT INTO `m_karyawan` VALUES ('12', '1', '3805734', 'Sujakat Triyanto', null);
INSERT INTO `m_karyawan` VALUES ('13', '1', '965234', 'Hadha Alamajibuwono', null);
INSERT INTO `m_karyawan` VALUES ('14', '1', '872364', 'Djoko Siswanto', null);
INSERT INTO `m_karyawan` VALUES ('15', '1', '634574435', 'Nasir Ahmad', null);
INSERT INTO `m_karyawan` VALUES ('16', '1', '542354', 'Muchammad Subchan', null);
INSERT INTO `m_karyawan` VALUES ('17', '1', '973253', 'Ajeng Ananda Pratiwi', null);
INSERT INTO `m_karyawan` VALUES ('18', '1', '623843', 'Benekdita', null);
INSERT INTO `m_karyawan` VALUES ('19', '1', '92837471', 'Peni Widianti', null);
INSERT INTO `m_karyawan` VALUES ('20', '1', '6532399', 'Florita Marlene', null);
INSERT INTO `m_karyawan` VALUES ('21', '1', '54233333', 'Usca W', null);
INSERT INTO `m_karyawan` VALUES ('22', '1', '975347377', 'Tody S', null);
INSERT INTO `m_karyawan` VALUES ('23', '1', '69998456', 'Sebitalia', null);
INSERT INTO `m_karyawan` VALUES ('24', '1', '66779889', 'Asep Rendra', null);
INSERT INTO `m_karyawan` VALUES ('25', '1', '6999345', 'Raina', null);
INSERT INTO `m_karyawan` VALUES ('26', '1', '4524239', 'Dedi Rachmat', null);
INSERT INTO `m_karyawan` VALUES ('27', '1', '62347888', 'Berfit Aprilia P', null);
INSERT INTO `m_karyawan` VALUES ('28', '1', '5634590', 'Mala Grazziana A', null);
INSERT INTO `m_karyawan` VALUES ('29', '1', '324239090', 'Natasha Evelyn', null);
INSERT INTO `m_karyawan` VALUES ('30', '1', '7435349', 'Richo Tamba', null);
INSERT INTO `m_karyawan` VALUES ('31', '1', '4596989', 'Heru', null);
INSERT INTO `m_karyawan` VALUES ('32', '1', '654699995', 'Suwanto', null);
INSERT INTO `m_karyawan` VALUES ('33', '1', '7546867', 'Didik Susanto', null);
INSERT INTO `m_karyawan` VALUES ('34', '1', '986745333', 'A.Firmansyah', null);
INSERT INTO `m_karyawan` VALUES ('35', '1', '77777998', 'Ivan Mawara', null);
INSERT INTO `m_karyawan` VALUES ('36', '1', '78756799', 'Sri Margono', null);
INSERT INTO `m_karyawan` VALUES ('37', '1', '777897456', 'Lokot Pulungan', null);
INSERT INTO `m_karyawan` VALUES ('38', '1', '534242455', 'Ronny H', null);
INSERT INTO `m_karyawan` VALUES ('39', '1', '55334411', 'Anas Emil', null);
INSERT INTO `m_karyawan` VALUES ('40', '1', '3454200', 'Iswantono', null);
INSERT INTO `m_karyawan` VALUES ('41', '1', '545459898', 'Solihin', null);
INSERT INTO `m_karyawan` VALUES ('42', '1', '55779090', 'Mustari', null);
INSERT INTO `m_karyawan` VALUES ('43', '1', '555999', 'Okki Setyawan', 'pIBiU3Q.png');
INSERT INTO `m_karyawan` VALUES ('44', '1', '999555', 'Taufik', null);
INSERT INTO `m_karyawan` VALUES ('45', '1', '34343222', 'Imam', null);
INSERT INTO `m_karyawan` VALUES ('46', '1', '4545909', 'Bill Gates', null);
INSERT INTO `m_karyawan` VALUES ('47', '1', '877834', 'Linus Torvalds', 'linus.jpg');

-- ----------------------------
-- Table structure for m_kelas_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelas_jabatan`;
CREATE TABLE `m_kelas_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kelas_jabatan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelas_jabatan
-- ----------------------------
INSERT INTO `m_kelas_jabatan` VALUES ('2', 'I');
INSERT INTO `m_kelas_jabatan` VALUES ('3', 'II');
INSERT INTO `m_kelas_jabatan` VALUES ('5', 'III');
INSERT INTO `m_kelas_jabatan` VALUES ('6', 'IV');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
INSERT INTO `m_struktur` VALUES ('9', null, 'Departemen Business Management', null, null);

-- ----------------------------
-- Table structure for m_struktural
-- ----------------------------
DROP TABLE IF EXISTS `m_struktural`;
CREATE TABLE `m_struktural` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_org` int(11) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_struktural
-- ----------------------------
INSERT INTO `m_struktural` VALUES ('1', '1', null);
INSERT INTO `m_struktural` VALUES ('2', '3', '1');
INSERT INTO `m_struktural` VALUES ('3', '4', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'admin', 'YQ==', null, null, null, null);
INSERT INTO `m_user` VALUES ('2', 'rere', 'YQ==', null, null, null, null);
INSERT INTO `m_user` VALUES ('3', 'okki', 'YQ==', 'admin', '2018-10-31 05:22:49', null, null);

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
-- Table structure for t_chart
-- ----------------------------
DROP TABLE IF EXISTS `t_chart`;
CREATE TABLE `t_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(10) DEFAULT NULL,
  `revenue` int(10) DEFAULT NULL,
  `overhead` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_chart
-- ----------------------------
INSERT INTO `t_chart` VALUES ('1', 'Jan', '23873', '20973');
INSERT INTO `t_chart` VALUES ('2', 'Feb', '23454', '28084');
INSERT INTO `t_chart` VALUES ('3', 'Mar', '25094', '28974');
INSERT INTO `t_chart` VALUES ('4', 'Apr', '27888', '28765');
INSERT INTO `t_chart` VALUES ('5', 'May', '25854', '20985');
INSERT INTO `t_chart` VALUES ('6', 'Jun', '26864', '26098');
INSERT INTO `t_chart` VALUES ('7', 'Jul', '26857', '27975');
INSERT INTO `t_chart` VALUES ('8', 'Aug', '25634', '28294');
INSERT INTO `t_chart` VALUES ('9', 'Sep', '25984', '23984');
INSERT INTO `t_chart` VALUES ('10', 'Oct', '25874', '25987');
INSERT INTO `t_chart` VALUES ('11', 'Nov', '25762', '24977');
INSERT INTO `t_chart` VALUES ('12', 'Dec', '28084', '29774');
SET FOREIGN_KEY_CHECKS=1;
