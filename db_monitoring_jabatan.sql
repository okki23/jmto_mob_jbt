/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_monitoring_jabatan

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-11-13 06:53:18
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_departemen
-- ----------------------------
INSERT INTO `m_departemen` VALUES ('17', '11', 'Business Management');
INSERT INTO `m_departemen` VALUES ('18', '11', 'Marketing');
INSERT INTO `m_departemen` VALUES ('19', '12', 'Toll Collection Management');
INSERT INTO `m_departemen` VALUES ('20', '12', 'Traffic Management');
INSERT INTO `m_departemen` VALUES ('21', '12', 'Maintenance');
INSERT INTO `m_departemen` VALUES ('22', '12', 'Settlement and Reconciliation');
INSERT INTO `m_departemen` VALUES ('23', '13', 'Operation Support System');
INSERT INTO `m_departemen` VALUES ('24', '13', 'IT Services Management');
INSERT INTO `m_departemen` VALUES ('25', '14', 'Corporate Plan, Risk and Quality Management');
INSERT INTO `m_departemen` VALUES ('26', '14', 'Finance and Accounting');
INSERT INTO `m_departemen` VALUES ('27', '15', 'Human Capital');
INSERT INTO `m_departemen` VALUES ('28', '15', 'General Affair');

-- ----------------------------
-- Table structure for m_direktorat
-- ----------------------------
DROP TABLE IF EXISTS `m_direktorat`;
CREATE TABLE `m_direktorat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_direktorat` varchar(100) DEFAULT NULL,
  `id_dirut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_direktorat
-- ----------------------------
INSERT INTO `m_direktorat` VALUES ('3', 'Direktorat Teknik & Operasi', '1');
INSERT INTO `m_direktorat` VALUES ('4', 'Direktorat Keuangan', '1');
INSERT INTO `m_direktorat` VALUES ('7', 'Utama', null);
INSERT INTO `m_direktorat` VALUES ('8', 'Direktorat SDM & Umum', null);

-- ----------------------------
-- Table structure for m_dirut
-- ----------------------------
DROP TABLE IF EXISTS `m_dirut`;
CREATE TABLE `m_dirut` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_dirut` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_dirut
-- ----------------------------
INSERT INTO `m_dirut` VALUES ('2', 'Septerianto Sanaf');

-- ----------------------------
-- Table structure for m_divisi
-- ----------------------------
DROP TABLE IF EXISTS `m_divisi`;
CREATE TABLE `m_divisi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_direktorat` int(10) DEFAULT NULL,
  `nama_divisi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_divisi
-- ----------------------------
INSERT INTO `m_divisi` VALUES ('11', '7', 'Business Development');
INSERT INTO `m_divisi` VALUES ('12', '3', 'Operation Management');
INSERT INTO `m_divisi` VALUES ('13', '3', 'Information Technology');
INSERT INTO `m_divisi` VALUES ('14', '4', 'Financial Management');
INSERT INTO `m_divisi` VALUES ('15', '8', 'Human Capital and General Affair');

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
  `id_parent` int(10) DEFAULT NULL,
  `id_karyawan` varchar(20) DEFAULT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_formasi_jabatan
-- ----------------------------
INSERT INTO `m_formasi_jabatan` VALUES ('75', '0', '0', '0', '0', '0', '0', '6', 'Direktur Utama');
INSERT INTO `m_formasi_jabatan` VALUES ('77', '0', '0', '0', '0', '0', '75', '7', 'Direktur Teknik & Operasi');
INSERT INTO `m_formasi_jabatan` VALUES ('78', '0', '0', '0', '0', '0', '75', '8', 'Direktur SDM dan Umum');
INSERT INTO `m_formasi_jabatan` VALUES ('79', '3', '0', '0', '1', '13', '77', '10', 'Vice President Information Technology');
INSERT INTO `m_formasi_jabatan` VALUES ('81', '0', '0', '0', '0', '0', '75', '', 'Direktur Keuangan');
INSERT INTO `m_formasi_jabatan` VALUES ('83', '3', '24', '0', '2', '13', '79', '16', 'Assistant Vice President Information Technology');
INSERT INTO `m_formasi_jabatan` VALUES ('84', '3', '24', '45', '3', '13', '83', '25', 'Manager IT Application and Databases');
INSERT INTO `m_formasi_jabatan` VALUES ('85', '3', '24', '46', '3', '13', '83', '31', 'Manager IT Network and Infrastructure');
INSERT INTO `m_formasi_jabatan` VALUES ('89', '3', '23', '0', '2', '13', '79', '15', 'Assistant Vice President Operation Support System');
INSERT INTO `m_formasi_jabatan` VALUES ('90', '3', '23', '42', '3', '13', '89', '24', 'Manager Operation Support System Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('91', '0', '17', '0', '2', '11', '94', '44', 'Assistant Vice President Business Development');
INSERT INTO `m_formasi_jabatan` VALUES ('93', '0', '0', '0', '0', '0', '75', '', '...');
INSERT INTO `m_formasi_jabatan` VALUES ('94', '0', '0', '0', '1', '11', '93', '', 'Vice President Business Development');
INSERT INTO `m_formasi_jabatan` VALUES ('95', '0', '17', '33', '3', '11', '91', '21', 'Manager Business Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('96', '0', '18', '34', '2', '11', '94', '48', 'Assistant Vice President Marketing');
INSERT INTO `m_formasi_jabatan` VALUES ('97', '0', '18', '34', '3', '11', '96', '22', 'Manager Project Management ');
INSERT INTO `m_formasi_jabatan` VALUES ('98', '0', '18', '34', '5', '11', '97', null, 'Senior Officer Project Management ');
INSERT INTO `m_formasi_jabatan` VALUES ('99', '3', '0', '0', '1', '12', '77', '9', 'Vice President');
INSERT INTO `m_formasi_jabatan` VALUES ('100', '3', '19', '0', '2', '12', '99', '13', 'Assistant Vice President Toll Collection Management');
INSERT INTO `m_formasi_jabatan` VALUES ('101', '3', '19', '0', '4', '12', '100', '49', 'Specialist Settlement');
INSERT INTO `m_formasi_jabatan` VALUES ('102', '3', '19', '35', '3', '12', '100', null, 'Manager Toll Collection Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('103', '3', '19', '35', '5', '12', '102', '', 'Senior Officer Toll Collection Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('104', '3', '19', '36', '5', '12', '102', '50', 'Senior Officer Data and Reporting');
INSERT INTO `m_formasi_jabatan` VALUES ('105', '3', '19', '36', '5', '12', '102', '51', 'Senior Officer Toll Collection Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('106', '3', '19', '36', '5', '12', '102', '52', 'Senior Officer Toll Collection Data and Evaluation');
INSERT INTO `m_formasi_jabatan` VALUES ('107', '3', '19', '36', '5', '12', '102', '53', 'Officer Reporting');
INSERT INTO `m_formasi_jabatan` VALUES ('108', '3', '20', '36', '2', '12', '99', '14', 'Assistant Vice President Traffic Management');
INSERT INTO `m_formasi_jabatan` VALUES ('109', '3', '20', '37', '3', '12', '108', null, 'Manager Traffic Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('110', '3', '20', '37', '5', '12', '109', '', 'Senior Officer Traffic Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('111', '3', '20', '37', '5', '12', '109', '', 'Senior Officer Traffic Planning');
INSERT INTO `m_formasi_jabatan` VALUES ('112', '3', '20', '38', '3', '12', '108', '54', 'Manager Traffic Services and Security');
INSERT INTO `m_formasi_jabatan` VALUES ('113', '3', '20', '38', '5', '12', '112', '55', 'Senior Officer Traffic Data & Evaluation');
INSERT INTO `m_formasi_jabatan` VALUES ('114', '3', '21', '0', '2', '12', '99', '56', 'Assistant Vice President Maintenance');
INSERT INTO `m_formasi_jabatan` VALUES ('115', '3', '21', '40', '3', '12', '114', '57', 'Manager Maintenance Control');
INSERT INTO `m_formasi_jabatan` VALUES ('116', '3', '21', '40', '5', '12', '115', '58', 'Senior Officer Maintenance Evaluation and Reporting');
INSERT INTO `m_formasi_jabatan` VALUES ('117', '3', '22', '40', '2', '12', '99', '59', 'Assistant Vice President Settlement and Reconciliation');
INSERT INTO `m_formasi_jabatan` VALUES ('118', '3', '22', '41', '3', '12', '117', '23', 'Manager Settlement Management');
INSERT INTO `m_formasi_jabatan` VALUES ('119', '3', '22', '41', '5', '12', '118', '60', 'Senior Officer Settlement Administration 1');
INSERT INTO `m_formasi_jabatan` VALUES ('120', '3', '22', '41', '5', '12', '118', '61', 'Senior Officer Settlement Administration 2 ');
INSERT INTO `m_formasi_jabatan` VALUES ('121', '3', '22', '41', '5', '12', '118', '62', 'Senior Officer Settlement Administration 3 ');
INSERT INTO `m_formasi_jabatan` VALUES ('122', '3', '22', '41', '5', '12', '118', null, 'Senior Officer Settlement Administration 4  ');
INSERT INTO `m_formasi_jabatan` VALUES ('123', '3', '23', '43', '3', '13', '89', '30', 'Manager Transaction Support System Control');
INSERT INTO `m_formasi_jabatan` VALUES ('124', '3', '23', '43', '5', '13', '123', '', 'Senior Officer Transaction Support System Control');
INSERT INTO `m_formasi_jabatan` VALUES ('125', '3', '23', '44', '3', '13', '89', '63', 'Manager Traffic Support System Control ');
INSERT INTO `m_formasi_jabatan` VALUES ('126', '3', '23', '44', '5', '13', '125', '', 'Senior Officer Traffic Support System Control ');
INSERT INTO `m_formasi_jabatan` VALUES ('127', '3', '24', '45', '5', '13', '84', '64', 'Senior Officer Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('128', '3', '24', '46', '5', '13', '85', '65', 'Senior Officer Infrastructure');
INSERT INTO `m_formasi_jabatan` VALUES ('129', '4', '0', '0', '1', '14', '81', '11', 'Vice President Financial Management');
INSERT INTO `m_formasi_jabatan` VALUES ('130', '8', '0', '0', '1', '15', '78', '12', 'Vice President Human Capital and General Affair');
INSERT INTO `m_formasi_jabatan` VALUES ('131', '4', '25', '0', '2', '14', '129', '18', 'Assistant Vice President Corporate Plan, Risk and Quality Management');
INSERT INTO `m_formasi_jabatan` VALUES ('132', '4', '25', '0', '4', '14', '131', '', 'Specialist Corporate Plan, Risk and Quality Management');
INSERT INTO `m_formasi_jabatan` VALUES ('133', '4', '25', '47', '3', '14', '131', '27', 'Manager Corporate Plan');
INSERT INTO `m_formasi_jabatan` VALUES ('134', '4', '25', '48', '3', '14', '131', '33', 'Risk and Quality Management Manager');
INSERT INTO `m_formasi_jabatan` VALUES ('135', '4', '25', '48', '4', '14', '131', '', 'Assistant Specialist Risk and Quality Management');
INSERT INTO `m_formasi_jabatan` VALUES ('136', '4', '26', '0', '2', '14', '129', '17', 'Assistant Vice President Finance and Accounting');
INSERT INTO `m_formasi_jabatan` VALUES ('137', '4', '26', '49', '3', '14', '136', '26', 'Manager Finance');
INSERT INTO `m_formasi_jabatan` VALUES ('138', '4', '26', '49', '5', '14', '137', '67', 'Senior Officer Drafting and Budgeting Control');
INSERT INTO `m_formasi_jabatan` VALUES ('139', '4', '26', '49', '5', '14', '137', '68', 'Paymaster');
INSERT INTO `m_formasi_jabatan` VALUES ('140', '4', '26', '50', '3', '14', '136', '32', 'Manager Tax and Accounting');
INSERT INTO `m_formasi_jabatan` VALUES ('141', '4', '26', '50', '5', '14', '140', '69', 'Senior Officer General Ledger and Reporting');
INSERT INTO `m_formasi_jabatan` VALUES ('142', '4', '26', '50', '5', '14', '140', '70', 'Senior Officer Tax');
INSERT INTO `m_formasi_jabatan` VALUES ('143', '8', '27', '0', '2', '15', '130', '19', 'Assistant Vice President Human Capital');
INSERT INTO `m_formasi_jabatan` VALUES ('144', '8', '27', '0', '4', '15', '143', '19', 'Specialist Human Capital');
INSERT INTO `m_formasi_jabatan` VALUES ('145', '8', '27', '51', '3', '15', '143', '28', 'Manager Human Capital Planning and Development ');
INSERT INTO `m_formasi_jabatan` VALUES ('146', '8', '27', '51', '4', '15', '143', null, 'Assistant Specialist Human Capital Planning and Development ');
INSERT INTO `m_formasi_jabatan` VALUES ('147', '8', '27', '51', '5', '15', '145', '72', 'Senior Officer Human Capital Planning and Development ');
INSERT INTO `m_formasi_jabatan` VALUES ('148', '8', '27', '52', '3', '15', '143', '34', 'Manager Human Capital Services');
INSERT INTO `m_formasi_jabatan` VALUES ('149', '8', '27', '52', '5', '15', '148', '73', 'Senior Officer Compensation');
INSERT INTO `m_formasi_jabatan` VALUES ('150', '8', '27', '52', '5', '15', '148', '74', 'Senior Officer Welfare');
INSERT INTO `m_formasi_jabatan` VALUES ('151', '8', '27', '52', '5', '15', '148', '75', 'Senior Officer Industrial Relations and Dicipline');
INSERT INTO `m_formasi_jabatan` VALUES ('152', '8', '27', '52', '5', '15', '148', '76', 'Senior Officer Mutation and Employee Placement');
INSERT INTO `m_formasi_jabatan` VALUES ('153', '8', '28', '0', '2', '15', '130', '20', 'Assistant Vice President General Affair');
INSERT INTO `m_formasi_jabatan` VALUES ('154', '8', '28', '0', '3', '15', '153', '77', 'Senior Secretary');
INSERT INTO `m_formasi_jabatan` VALUES ('155', '8', '28', '53', '3', '15', '153', '29', 'Manager Procurement and Administration Assets');
INSERT INTO `m_formasi_jabatan` VALUES ('156', '8', '28', '53', '5', '15', '155', '78', 'Senior Officer Goods Procurement');
INSERT INTO `m_formasi_jabatan` VALUES ('157', '8', '28', '53', '5', '15', '155', '', 'Senior Officer Assets Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('158', '8', '28', '54', '3', '15', '153', '35', 'Manager Legal and Public Relations');
INSERT INTO `m_formasi_jabatan` VALUES ('159', '8', '28', '54', '4', '15', '158', '', 'Assistant Specialist Legal and Public Relations');
INSERT INTO `m_formasi_jabatan` VALUES ('160', '8', '28', '54', '5', '15', '158', '79', 'Senior Officer Public Relations');
INSERT INTO `m_formasi_jabatan` VALUES ('161', '8', '28', '54', '5', '15', '158', '', 'Senior Officer Administration Secretariat');
INSERT INTO `m_formasi_jabatan` VALUES ('162', '8', '28', '55', '3', '15', '153', '36', 'Manager Office Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('163', '8', '28', '55', '5', '15', '162', '80', 'Senior Officer Office Administration');
INSERT INTO `m_formasi_jabatan` VALUES ('164', '8', '28', '55', '5', '15', '162', '', 'Senior Officer Administration Plan');

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_karyawan
-- ----------------------------
INSERT INTO `m_karyawan` VALUES ('6', '1', '', 'Septerianto Sanaf', '');
INSERT INTO `m_karyawan` VALUES ('7', '1', '', 'Taruli Hutapea', '');
INSERT INTO `m_karyawan` VALUES ('8', '1', '', 'Benny Soediarto. D', '');
INSERT INTO `m_karyawan` VALUES ('9', '1', '180307', 'Saut Sitorus', '');
INSERT INTO `m_karyawan` VALUES ('10', '1', '170002', 'Rahwono Haji', '');
INSERT INTO `m_karyawan` VALUES ('11', '1', '170122', 'Anang Mohamad Maruf', '');
INSERT INTO `m_karyawan` VALUES ('12', '1', '180548', 'Sujakat Triyanto', '');
INSERT INTO `m_karyawan` VALUES ('13', '1', '180550', 'Widiyatmiko Nursejati', '');
INSERT INTO `m_karyawan` VALUES ('14', '1', '170162', 'Djoko Siswanto', '');
INSERT INTO `m_karyawan` VALUES ('15', '1', '170023', 'Nasir Ahmad', '');
INSERT INTO `m_karyawan` VALUES ('16', '1', '170148', 'Muchammad Subchan', '');
INSERT INTO `m_karyawan` VALUES ('17', '1', '150005', 'Ajeng Ananda Pratiwi', '');
INSERT INTO `m_karyawan` VALUES ('18', '1', '180432', 'Benedikta Ariningsih', '');
INSERT INTO `m_karyawan` VALUES ('19', '1', '170153', 'Peni Widianti', '');
INSERT INTO `m_karyawan` VALUES ('20', '1', '170149', 'Florita Marlene', '');
INSERT INTO `m_karyawan` VALUES ('21', '1', '170020', 'Uska Wyanov', '');
INSERT INTO `m_karyawan` VALUES ('22', '1', '180121', 'Tody Satria Chanta Yudha', '');
INSERT INTO `m_karyawan` VALUES ('23', '1', '170022', 'Sebitalia Tubagus', '');
INSERT INTO `m_karyawan` VALUES ('24', '1', '180422', 'Asep Rendra Chrisnawan', '');
INSERT INTO `m_karyawan` VALUES ('25', '1', '170026', 'Raina Stefani Budi', '');
INSERT INTO `m_karyawan` VALUES ('26', '1', '170155', 'Dedi Rachmat', '');
INSERT INTO `m_karyawan` VALUES ('27', '1', '170126', 'Berfit Aprillia Putrilinang', '');
INSERT INTO `m_karyawan` VALUES ('28', '1', '170123', 'Mala Grazziana Argo', '');
INSERT INTO `m_karyawan` VALUES ('29', '1', '170125', 'Natasha Evelyn', '');
INSERT INTO `m_karyawan` VALUES ('30', '1', '180421', 'Helvin Indrawati', '');
INSERT INTO `m_karyawan` VALUES ('31', '1', '170150', 'Heru Priyantoro', '');
INSERT INTO `m_karyawan` VALUES ('32', '1', '170156', 'Suwanto', '');
INSERT INTO `m_karyawan` VALUES ('33', '1', '170151', 'Didik Susanto P.', '');
INSERT INTO `m_karyawan` VALUES ('34', '1', '170152', 'A. Firmansyah', '');
INSERT INTO `m_karyawan` VALUES ('35', '1', '180420', 'Ivan Mawara', '');
INSERT INTO `m_karyawan` VALUES ('36', '1', '170154', 'Sri Margono', '');
INSERT INTO `m_karyawan` VALUES ('37', '1', '777897456', 'Lokot Pulungan', null);
INSERT INTO `m_karyawan` VALUES ('38', '1', '534242455', 'Ronny H', null);
INSERT INTO `m_karyawan` VALUES ('39', '1', '55334411', 'Anas Emil', null);
INSERT INTO `m_karyawan` VALUES ('40', '1', '3454200', 'Iswantono', null);
INSERT INTO `m_karyawan` VALUES ('41', '1', '545459898', 'Solihin', null);
INSERT INTO `m_karyawan` VALUES ('42', '1', '55779090', 'Mustari', null);
INSERT INTO `m_karyawan` VALUES ('43', '1', '555999', 'Okki Setyawan', 'pIBiU3Q.png');
INSERT INTO `m_karyawan` VALUES ('44', '1', '180549', 'Muhammad Taufik Akbar', '');
INSERT INTO `m_karyawan` VALUES ('45', '1', '34343222', 'Imam', null);
INSERT INTO `m_karyawan` VALUES ('46', '1', '4545909', 'Bill Gates', null);
INSERT INTO `m_karyawan` VALUES ('47', '1', '877834', 'Linus Torvalds', 'linus.jpg');
INSERT INTO `m_karyawan` VALUES ('48', '1', '180434', 'Vanie Caesaria Patiung', '');
INSERT INTO `m_karyawan` VALUES ('49', '1', '170127', 'Sumaritan', '');
INSERT INTO `m_karyawan` VALUES ('50', '1', '170166', 'Agus Triono', '');
INSERT INTO `m_karyawan` VALUES ('51', '1', '151597', 'Farry Dwita Gestalia', '');
INSERT INTO `m_karyawan` VALUES ('52', '1', '170167', 'Riana Nasution', '');
INSERT INTO `m_karyawan` VALUES ('53', '1', '152731', 'Zaenal', '');
INSERT INTO `m_karyawan` VALUES ('54', '1', '170021', 'Richo Rynaldo Tamba', '');
INSERT INTO `m_karyawan` VALUES ('55', '1', '151314', 'Erfina Amanda', '');
INSERT INTO `m_karyawan` VALUES ('56', '1', '180551', 'Muhammad Ridwan', '');
INSERT INTO `m_karyawan` VALUES ('57', '1', '180433', 'Yusra Alfitri', '');
INSERT INTO `m_karyawan` VALUES ('58', '1', '150154', 'Inu Nugraha,S.kom', '');
INSERT INTO `m_karyawan` VALUES ('59', '1', '180120', 'Hadha Alamajibuwono', '');
INSERT INTO `m_karyawan` VALUES ('60', '1', '150944', 'Fauziah Afriyani', '');
INSERT INTO `m_karyawan` VALUES ('61', '1', '151266', 'Syahrul Maulana', '');
INSERT INTO `m_karyawan` VALUES ('62', '1', '151921', 'Purwo Handoko', '');
INSERT INTO `m_karyawan` VALUES ('63', '1', '170024', 'Khris Indrantoro', '');
INSERT INTO `m_karyawan` VALUES ('64', '1', '152057\r\n', 'Djoko Siswanto', '');
INSERT INTO `m_karyawan` VALUES ('65', '1', '150648', 'Muhammad Aan Kurniansyah', '');
INSERT INTO `m_karyawan` VALUES ('67', '1', '151336', 'Muhamad Sahrih', '');
INSERT INTO `m_karyawan` VALUES ('68', '1', '150640', 'Irwan Firmansyah', '');
INSERT INTO `m_karyawan` VALUES ('69', '1', '151369', 'Tiara Julia Mega', '');
INSERT INTO `m_karyawan` VALUES ('70', '1', '150717', 'Hardiansyah', '');
INSERT INTO `m_karyawan` VALUES ('72', '1', '170159', 'Tigor Kanigoro', '');
INSERT INTO `m_karyawan` VALUES ('73', '1', '170158', 'Agus Sunaryo', '');
INSERT INTO `m_karyawan` VALUES ('74', '1', '170160', 'Watari Wahid', '');
INSERT INTO `m_karyawan` VALUES ('75', '1', '150445', 'Ogy Narendra', '');
INSERT INTO `m_karyawan` VALUES ('76', '1', '152328', 'Sophian Adhe Chandra', '');
INSERT INTO `m_karyawan` VALUES ('77', '1', '170157', 'Siti Humaira', '');
INSERT INTO `m_karyawan` VALUES ('78', '1', '152189', 'Adiyansyah', '');
INSERT INTO `m_karyawan` VALUES ('79', '1', '152730', 'Bannu Priyambudi ', '');
INSERT INTO `m_karyawan` VALUES ('80', '1', '170161', 'Wage Mulyatno', '');

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
INSERT INTO `m_kelas_jabatan` VALUES ('1', 'I');
INSERT INTO `m_kelas_jabatan` VALUES ('2', 'II');
INSERT INTO `m_kelas_jabatan` VALUES ('3', 'III');
INSERT INTO `m_kelas_jabatan` VALUES ('4', 'IV');
INSERT INTO `m_kelas_jabatan` VALUES ('5', 'V');
INSERT INTO `m_kelas_jabatan` VALUES ('6', 'VI');

-- ----------------------------
-- Table structure for m_kelompok_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelompok_jabatan`;
CREATE TABLE `m_kelompok_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas_jabatan` int(10) DEFAULT NULL,
  `nama_kelompok_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelompok_jabatan
-- ----------------------------
INSERT INTO `m_kelompok_jabatan` VALUES ('1', '1', 'Vice President');
INSERT INTO `m_kelompok_jabatan` VALUES ('2', '2', 'Assistant Vice President');
INSERT INTO `m_kelompok_jabatan` VALUES ('3', '3', 'Manager');
INSERT INTO `m_kelompok_jabatan` VALUES ('4', '4', 'Assistant Specialist');
INSERT INTO `m_kelompok_jabatan` VALUES ('5', '5', 'Senior Officer');
INSERT INTO `m_kelompok_jabatan` VALUES ('6', '6', 'Officer');

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
INSERT INTO `m_lokasi` VALUES ('1', 'Kantor Pusat');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_seksi
-- ----------------------------
INSERT INTO `m_seksi` VALUES ('33', '17', 'Business Planning');
INSERT INTO `m_seksi` VALUES ('34', '18', 'Project Management ');
INSERT INTO `m_seksi` VALUES ('35', '19', 'Toll Collection Planning');
INSERT INTO `m_seksi` VALUES ('36', '19', 'Toll Collection Control');
INSERT INTO `m_seksi` VALUES ('37', '20', 'Traffic Planning');
INSERT INTO `m_seksi` VALUES ('38', '20', 'Traffic Services and Security');
INSERT INTO `m_seksi` VALUES ('40', '21', 'Maintenance Control');
INSERT INTO `m_seksi` VALUES ('41', '22', 'Settlement Management');
INSERT INTO `m_seksi` VALUES ('42', '23', 'Operation Support System Planning');
INSERT INTO `m_seksi` VALUES ('43', '23', 'Transaction Support System Control');
INSERT INTO `m_seksi` VALUES ('44', '23', 'Traffic Support System Control ');
INSERT INTO `m_seksi` VALUES ('45', '24', 'IT Application and Databases');
INSERT INTO `m_seksi` VALUES ('46', '24', 'IT Network and Infrastructure');
INSERT INTO `m_seksi` VALUES ('47', '25', 'Corporate Plan');
INSERT INTO `m_seksi` VALUES ('48', '25', 'Risk and Quality Management');
INSERT INTO `m_seksi` VALUES ('49', '26', 'Finance');
INSERT INTO `m_seksi` VALUES ('50', '26', 'Tax and Accounting');
INSERT INTO `m_seksi` VALUES ('51', '27', 'Human Capital Planning and Development ');
INSERT INTO `m_seksi` VALUES ('52', '27', 'Human Capital Services');
INSERT INTO `m_seksi` VALUES ('53', '28', 'Procurement and Administration Assets');
INSERT INTO `m_seksi` VALUES ('54', '28', 'Legal and Public Relations');
INSERT INTO `m_seksi` VALUES ('55', '28', 'Office Administration');

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
