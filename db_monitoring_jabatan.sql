/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100135
Source Host           : localhost:3306
Source Database       : db_monitoring_jabatan

Target Server Type    : MYSQL
Target Server Version : 100135
File Encoding         : 65001

Date: 2018-10-24 15:27:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_department
-- ----------------------------
DROP TABLE IF EXISTS `m_department`;
CREATE TABLE `m_department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_divisi` int(10) DEFAULT NULL,
  `nama_department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_department
-- ----------------------------

-- ----------------------------
-- Table structure for m_direktorat
-- ----------------------------
DROP TABLE IF EXISTS `m_direktorat`;
CREATE TABLE `m_direktorat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_direktorat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_direktorat
-- ----------------------------

-- ----------------------------
-- Table structure for m_divisi
-- ----------------------------
DROP TABLE IF EXISTS `m_divisi`;
CREATE TABLE `m_divisi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_direktorat` int(10) DEFAULT NULL,
  `nama_divisi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_divisi
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_karyawan
-- ----------------------------

-- ----------------------------
-- Table structure for m_kelas_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelas_jabatan`;
CREATE TABLE `m_kelas_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kelas_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelas_jabatan
-- ----------------------------

-- ----------------------------
-- Table structure for m_kelompok_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `m_kelompok_jabatan`;
CREATE TABLE `m_kelompok_jabatan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas_jabatan` int(10) DEFAULT NULL,
  `nama_kelompok_jabatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_kelompok_jabatan
-- ----------------------------

-- ----------------------------
-- Table structure for m_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `m_lokasi`;
CREATE TABLE `m_lokasi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_lokasi
-- ----------------------------

-- ----------------------------
-- Table structure for m_seksi
-- ----------------------------
DROP TABLE IF EXISTS `m_seksi`;
CREATE TABLE `m_seksi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_department` int(10) DEFAULT NULL,
  `nama_seksi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of m_seksi
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('1', 'admin', 'YQ==', null, null, null, null);
INSERT INTO `m_user` VALUES ('2', 'rere', 'YQ==', null, null, null, null);
SET FOREIGN_KEY_CHECKS=1;
