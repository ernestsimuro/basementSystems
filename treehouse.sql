/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100116
Source Host           : localhost:3306
Source Database       : treehouse_sample

Target Server Type    : MYSQL
Target Server Version : 100116
File Encoding         : 65001

Date: 2017-04-30 20:35:40
*/

--
-- Database: `treehouse_sample`
--
CREATE DATABASE IF NOT EXISTS `treehouse_sample` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `treehouse_sample`;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for associations
-- ----------------------------
DROP TABLE IF EXISTS `associations`;
CREATE TABLE `associations` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of associations
-- ----------------------------
INSERT INTO `associations` VALUES ('1', 'Basement Systems, Inc.');
INSERT INTO `associations` VALUES ('2', 'CleanSpace');
INSERT INTO `associations` VALUES ('3', 'Dr. Energy Saver, LLC');
INSERT INTO `associations` VALUES ('4', 'Foundation Supportworks, Inc.');
INSERT INTO `associations` VALUES ('5', 'Total Basement Finishing, Inc.');

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_on_hold` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_on_hold` (`is_on_hold`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('1', 'Lacus Incorporated', '1', '0');
INSERT INTO `companies` VALUES ('2', 'Odio Phasellus Ltd', '0', '0');
INSERT INTO `companies` VALUES ('3', 'Ac Company', '0', '1');
INSERT INTO `companies` VALUES ('4', 'Vel Company', '0', '0');
INSERT INTO `companies` VALUES ('5', 'Pellentesque Habitant PC', '0', '1');
INSERT INTO `companies` VALUES ('6', 'Quisque Tincidunt Pede Incorporated', '0', '1');
INSERT INTO `companies` VALUES ('7', 'Semper Nam Ltd', '0', '0');
INSERT INTO `companies` VALUES ('8', 'Purus Nullam Scelerisque Incorporated', '0', '0');
INSERT INTO `companies` VALUES ('9', 'Egestas Aliquam Fringilla Institute', '0', '1');
INSERT INTO `companies` VALUES ('10', 'Phasellus Ornare Fusce Consulting', '0', '0');
INSERT INTO `companies` VALUES ('11', 'Enim Mi Limited', '0', '0');
INSERT INTO `companies` VALUES ('12', 'Porttitor Eros PC', '0', '1');
INSERT INTO `companies` VALUES ('13', 'Arcu Ltd', '0', '0');
INSERT INTO `companies` VALUES ('14', 'Nulla Corporation', '1', '0');
INSERT INTO `companies` VALUES ('15', 'Eu Placerat Eget Industries', '1', '1');
INSERT INTO `companies` VALUES ('16', 'Aliquam Adipiscing Lobortis Company', '1', '0');
INSERT INTO `companies` VALUES ('17', 'Eu Ltd', '1', '0');
INSERT INTO `companies` VALUES ('18', 'Lacinia Sed Consulting', '1', '1');
INSERT INTO `companies` VALUES ('19', 'Orci Lacus Limited', '1', '1');
INSERT INTO `companies` VALUES ('20', 'Nascetur Ridiculus Associates', '1', '0');
INSERT INTO `companies` VALUES ('21', 'Nam Institute', '0', '1');
INSERT INTO `companies` VALUES ('22', 'Cras Interdum Inc.', '0', '0');
INSERT INTO `companies` VALUES ('23', 'Blandit At Nisi Industries', '0', '0');
INSERT INTO `companies` VALUES ('24', 'Vitae Sodales At Industries', '0', '0');
INSERT INTO `companies` VALUES ('25', 'Accumsan Ltd', '0', '0');
INSERT INTO `companies` VALUES ('26', 'Lorem Incorporated', '0', '0');
INSERT INTO `companies` VALUES ('27', 'Nibh Enim Gravida Limited', '1', '1');
INSERT INTO `companies` VALUES ('28', 'Sed Consulting', '1', '0');
INSERT INTO `companies` VALUES ('29', 'Pede Nec Ante Company', '1', '1');
INSERT INTO `companies` VALUES ('30', 'Vulputate Industries', '0', '1');
INSERT INTO `companies` VALUES ('31', 'Sem Molestie Sodales Company', '0', '1');
INSERT INTO `companies` VALUES ('32', 'Blandit Nam Inc.', '1', '1');
INSERT INTO `companies` VALUES ('33', 'Pede Nonummy Associates', '0', '0');
INSERT INTO `companies` VALUES ('34', 'Natoque Penatibus Consulting', '1', '1');
INSERT INTO `companies` VALUES ('35', 'In Associates', '1', '1');
INSERT INTO `companies` VALUES ('36', 'Congue A Aliquet Inc.', '1', '0');
INSERT INTO `companies` VALUES ('37', 'Adipiscing Ltd', '1', '1');
INSERT INTO `companies` VALUES ('38', 'Lacinia Institute', '0', '1');
INSERT INTO `companies` VALUES ('39', 'Lacus Varius Associates', '1', '0');
INSERT INTO `companies` VALUES ('40', 'Lacinia At Iaculis Associates', '1', '0');
INSERT INTO `companies` VALUES ('41', 'Enim Suspendisse Aliquet Foundation', '1', '1');
INSERT INTO `companies` VALUES ('42', 'Nascetur Ridiculus Incorporated', '1', '1');
INSERT INTO `companies` VALUES ('43', 'Luctus Associates', '0', '1');
INSERT INTO `companies` VALUES ('44', 'Nibh Enim PC', '1', '0');
INSERT INTO `companies` VALUES ('45', 'Nisl Nulla Institute', '0', '1');
INSERT INTO `companies` VALUES ('46', 'Amet LLP', '1', '0');
INSERT INTO `companies` VALUES ('47', 'Vulputate Ullamcorper Company', '0', '1');
INSERT INTO `companies` VALUES ('48', 'Lorem Ipsum Company', '0', '0');
INSERT INTO `companies` VALUES ('49', 'Urna Et LLC', '0', '1');
INSERT INTO `companies` VALUES ('50', 'Sem Magna Nec Company', '0', '1');
INSERT INTO `companies` VALUES ('51', 'A Malesuada Id Company', '0', '0');
INSERT INTO `companies` VALUES ('52', 'Odio LLC', '0', '0');
INSERT INTO `companies` VALUES ('53', 'Natoque Penatibus Et Incorporated', '0', '1');
INSERT INTO `companies` VALUES ('54', 'Dolor Sit Foundation', '0', '0');
INSERT INTO `companies` VALUES ('55', 'In LLP', '1', '1');
INSERT INTO `companies` VALUES ('56', 'Magna Nec Institute', '1', '0');
INSERT INTO `companies` VALUES ('57', 'Etiam Laoreet Libero Foundation', '0', '1');
INSERT INTO `companies` VALUES ('58', 'Interdum Libero LLP', '1', '0');
INSERT INTO `companies` VALUES ('59', 'Eget Incorporated', '1', '0');
INSERT INTO `companies` VALUES ('60', 'Massa Lobortis Ultrices LLC', '1', '1');
INSERT INTO `companies` VALUES ('61', 'Et Netus Et Institute', '1', '1');
INSERT INTO `companies` VALUES ('62', 'Sem Magna Nec Industries', '0', '1');
INSERT INTO `companies` VALUES ('63', 'In PC', '1', '1');
INSERT INTO `companies` VALUES ('64', 'Sem Egestas Foundation', '0', '1');
INSERT INTO `companies` VALUES ('65', 'Nulla Eu Institute', '1', '1');
INSERT INTO `companies` VALUES ('66', 'Scelerisque Lorem Ipsum Incorporated', '0', '0');
INSERT INTO `companies` VALUES ('67', 'Mi Lacinia Mattis Company', '0', '1');
INSERT INTO `companies` VALUES ('68', 'Molestie Inc.', '0', '1');
INSERT INTO `companies` VALUES ('69', 'Diam Corporation', '1', '0');
INSERT INTO `companies` VALUES ('70', 'Dolor Elit Pellentesque Inc.', '0', '0');
INSERT INTO `companies` VALUES ('71', 'Vitae Risus PC', '0', '0');
INSERT INTO `companies` VALUES ('72', 'Donec Sollicitudin Adipiscing LLC', '1', '1');
INSERT INTO `companies` VALUES ('73', 'Vehicula Pellentesque Industries', '0', '0');
INSERT INTO `companies` VALUES ('74', 'Habitant Morbi Inc.', '0', '1');
INSERT INTO `companies` VALUES ('75', 'Et Nunc Quisque Consulting', '1', '1');
INSERT INTO `companies` VALUES ('76', 'Magna PC', '1', '1');
INSERT INTO `companies` VALUES ('77', 'Fusce Aliquet Magna Incorporated', '0', '0');
INSERT INTO `companies` VALUES ('78', 'Eleifend Associates', '0', '1');
INSERT INTO `companies` VALUES ('79', 'Amet Consectetuer Associates', '0', '1');
INSERT INTO `companies` VALUES ('80', 'Vulputate Lacus Industries', '0', '0');
INSERT INTO `companies` VALUES ('81', 'Lorem Company', '1', '0');
INSERT INTO `companies` VALUES ('82', 'Diam Inc.', '0', '0');
INSERT INTO `companies` VALUES ('83', 'Et Ultrices Industries', '1', '0');
INSERT INTO `companies` VALUES ('84', 'Ornare PC', '1', '0');
INSERT INTO `companies` VALUES ('85', 'Est Corporation', '1', '1');
INSERT INTO `companies` VALUES ('86', 'Egestas Associates', '0', '1');
INSERT INTO `companies` VALUES ('87', 'Nunc PC', '0', '1');
INSERT INTO `companies` VALUES ('88', 'Dui Cum LLC', '1', '1');
INSERT INTO `companies` VALUES ('89', 'Tristique Industries', '0', '1');
INSERT INTO `companies` VALUES ('90', 'Ultrices Iaculis Ltd', '1', '0');
INSERT INTO `companies` VALUES ('91', 'Ipsum Dolor Incorporated', '1', '1');
INSERT INTO `companies` VALUES ('92', 'Felis Incorporated', '1', '0');
INSERT INTO `companies` VALUES ('93', 'Accumsan Neque PC', '1', '0');
INSERT INTO `companies` VALUES ('94', 'Donec Nibh Quisque Limited', '1', '1');
INSERT INTO `companies` VALUES ('95', 'Luctus Aliquet Corp.', '1', '1');
INSERT INTO `companies` VALUES ('96', 'Eu Neque Pellentesque PC', '1', '0');
INSERT INTO `companies` VALUES ('97', 'Nam Nulla Magna Company', '1', '0');
INSERT INTO `companies` VALUES ('98', 'Pede Sagittis Augue Institute', '0', '0');
INSERT INTO `companies` VALUES ('99', 'Feugiat Non Lobortis Associates', '1', '0');
INSERT INTO `companies` VALUES ('100', 'Velit Sed Malesuada Institute', '1', '0');

-- ----------------------------
-- Table structure for domains
-- ----------------------------
DROP TABLE IF EXISTS `domains`;
CREATE TABLE `domains` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) NOT NULL,
  `site` mediumint(8) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`),
  KEY `site` (`site`),
  KEY `is_primary` (`is_primary`),
  KEY `is_deleted` (`is_deleted`),
  CONSTRAINT `domains_ibfk_1` FOREIGN KEY (`site`) REFERENCES `sites` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of domains
-- ----------------------------
INSERT INTO `domains` VALUES ('1', 'tortor.net', '7', '1', '1');
INSERT INTO `domains` VALUES ('2', 'egestasnunc.com', '19', '1', '1');
INSERT INTO `domains` VALUES ('3', 'tellusaeneanegestas.com', '53', '1', '1');
INSERT INTO `domains` VALUES ('4', 'ut.edu', '34', '1', '1');
INSERT INTO `domains` VALUES ('5', 'fringillaeuismod.com', '77', '1', '0');
INSERT INTO `domains` VALUES ('6', 'aliquet.com', '75', '1', '0');
INSERT INTO `domains` VALUES ('7', 'in.org', '55', '1', '0');
INSERT INTO `domains` VALUES ('8', 'amet.edu', '18', '1', '0');
INSERT INTO `domains` VALUES ('9', 'mattissemper.net', '19', '0', '1');
INSERT INTO `domains` VALUES ('10', 'augue.com', '68', '1', '1');
INSERT INTO `domains` VALUES ('11', 'mauris.org', '29', '1', '1');
INSERT INTO `domains` VALUES ('12', 'molestie.edu', '7', '0', '0');
INSERT INTO `domains` VALUES ('13', 'mollisphasellus.ca', '54', '1', '0');
INSERT INTO `domains` VALUES ('14', 'donecnonjusto.edu', '41', '1', '1');
INSERT INTO `domains` VALUES ('15', 'ligulaconsectetuerrhoncus.org', '33', '1', '1');
INSERT INTO `domains` VALUES ('16', 'maurisnondui.com', '14', '1', '0');
INSERT INTO `domains` VALUES ('17', 'integervitaenibh.org', '21', '1', '1');
INSERT INTO `domains` VALUES ('18', 'nuncut.ca', '45', '1', '0');
INSERT INTO `domains` VALUES ('19', 'nonsollicitudina.com', '25', '1', '1');
INSERT INTO `domains` VALUES ('20', 'quisqueporttitoreros.org', '10', '1', '0');
INSERT INTO `domains` VALUES ('21', 'utpellentesqueeget.ca', '52', '1', '1');
INSERT INTO `domains` VALUES ('22', 'euismodacfermentum.co.uk', '93', '1', '0');
INSERT INTO `domains` VALUES ('23', 'nulladonec.net', '16', '1', '1');
INSERT INTO `domains` VALUES ('24', 'quisque.co.uk', '4', '1', '0');
INSERT INTO `domains` VALUES ('25', 'namligulaelit.ca', '91', '1', '0');
INSERT INTO `domains` VALUES ('26', 'ligulaaenean.edu', '3', '1', '1');
INSERT INTO `domains` VALUES ('27', 'liberodui.ca', '83', '1', '1');
INSERT INTO `domains` VALUES ('28', 'risusdonec.com', '21', '0', '1');
INSERT INTO `domains` VALUES ('29', 'sitametluctus.com', '44', '1', '1');
INSERT INTO `domains` VALUES ('30', 'aliquam.ca', '30', '1', '0');
INSERT INTO `domains` VALUES ('31', 'risusquisque.com', '11', '1', '1');
INSERT INTO `domains` VALUES ('32', 'nuncmauris.edu', '66', '1', '1');
INSERT INTO `domains` VALUES ('33', 'curabiturmassa.ca', '73', '1', '1');
INSERT INTO `domains` VALUES ('34', 'et.co.uk', '31', '1', '1');
INSERT INTO `domains` VALUES ('35', 'nunc.edu', '54', '0', '1');
INSERT INTO `domains` VALUES ('36', 'felisnullatempor.ca', '38', '1', '1');
INSERT INTO `domains` VALUES ('37', 'inceptoshymenaeosmauris.edu', '12', '1', '0');
INSERT INTO `domains` VALUES ('38', 'tristiquepharetra.net', '23', '1', '0');
INSERT INTO `domains` VALUES ('39', 'vestibulumaccumsanneque.ca', '32', '1', '1');
INSERT INTO `domains` VALUES ('40', 'odio.net', '16', '0', '0');
INSERT INTO `domains` VALUES ('41', 'sagittis.org', '63', '1', '1');
INSERT INTO `domains` VALUES ('42', 'sapienaenean.edu', '60', '1', '0');
INSERT INTO `domains` VALUES ('43', 'volutpatnulladignissim.org', '23', '0', '0');
INSERT INTO `domains` VALUES ('44', 'nonenim.ca', '74', '1', '0');
INSERT INTO `domains` VALUES ('45', 'gravidasit.ca', '95', '1', '1');
INSERT INTO `domains` VALUES ('46', 'sitamet.ca', '51', '1', '0');
INSERT INTO `domains` VALUES ('47', 'magnaseddui.ca', '59', '1', '1');
INSERT INTO `domains` VALUES ('48', 'a.ca', '59', '0', '1');
INSERT INTO `domains` VALUES ('49', 'aeneangravida.edu', '77', '0', '0');
INSERT INTO `domains` VALUES ('50', 'porttitoreros.net', '80', '1', '1');
INSERT INTO `domains` VALUES ('51', 'integervitaenibh.co.uk', '48', '1', '1');
INSERT INTO `domains` VALUES ('52', 'nulla.edu', '22', '1', '0');
INSERT INTO `domains` VALUES ('53', 'elitetiamlaoreet.ca', '52', '0', '0');
INSERT INTO `domains` VALUES ('54', 'noncursusnon.com', '49', '1', '1');
INSERT INTO `domains` VALUES ('55', 'utdolor.ca', '72', '1', '0');
INSERT INTO `domains` VALUES ('56', 'blandit.ca', '7', '0', '1');
INSERT INTO `domains` VALUES ('57', 'inlorem.co.uk', '31', '0', '1');
INSERT INTO `domains` VALUES ('58', 'cras.org', '41', '0', '0');
INSERT INTO `domains` VALUES ('59', 'felisorciadipiscing.co.uk', '62', '1', '1');
INSERT INTO `domains` VALUES ('60', 'id.org', '34', '0', '1');
INSERT INTO `domains` VALUES ('61', 'etnunc.net', '7', '0', '0');
INSERT INTO `domains` VALUES ('62', 'loremvehiculaet.co.uk', '96', '1', '1');
INSERT INTO `domains` VALUES ('63', 'egestasblanditnam.org', '69', '1', '0');
INSERT INTO `domains` VALUES ('64', 'ipsum.edu', '97', '1', '0');
INSERT INTO `domains` VALUES ('65', 'sapienimperdiet.com', '99', '1', '1');
INSERT INTO `domains` VALUES ('66', 'vitaeodiosagittis.co.uk', '30', '0', '0');
INSERT INTO `domains` VALUES ('67', 'orci.com', '14', '0', '1');
INSERT INTO `domains` VALUES ('68', 'auctor.com', '91', '0', '1');
INSERT INTO `domains` VALUES ('69', 'dignissimmagnaa.com', '35', '1', '1');
INSERT INTO `domains` VALUES ('70', 'diamsed.org', '68', '0', '0');
INSERT INTO `domains` VALUES ('71', 'innec.co.uk', '100', '1', '1');
INSERT INTO `domains` VALUES ('72', 'sempertellus.co.uk', '52', '0', '1');
INSERT INTO `domains` VALUES ('73', 'vulputatelacuscras.net', '2', '1', '0');
INSERT INTO `domains` VALUES ('74', 'ligulanullamfeugiat.ca', '47', '1', '1');
INSERT INTO `domains` VALUES ('75', 'pedesuspendissedui.org', '60', '0', '0');
INSERT INTO `domains` VALUES ('76', 'nec.edu', '36', '1', '1');
INSERT INTO `domains` VALUES ('77', 'velit.co.uk', '85', '1', '1');
INSERT INTO `domains` VALUES ('78', 'phasellusat.net', '57', '1', '0');
INSERT INTO `domains` VALUES ('79', 'duiselementumdui.ca', '10', '0', '0');
INSERT INTO `domains` VALUES ('80', 'magna.com', '37', '1', '0');
INSERT INTO `domains` VALUES ('81', 'nisl.ca', '80', '0', '1');
INSERT INTO `domains` VALUES ('82', 'erat.ca', '54', '0', '1');
INSERT INTO `domains` VALUES ('83', 'loremsemper.net', '62', '0', '1');
INSERT INTO `domains` VALUES ('84', 'euturpis.edu', '54', '0', '1');
INSERT INTO `domains` VALUES ('85', 'pharetraquisque.org', '94', '1', '1');
INSERT INTO `domains` VALUES ('86', 'vulputatelacus.net', '48', '0', '0');
INSERT INTO `domains` VALUES ('87', 'magnamalesuadavel.org', '64', '1', '0');
INSERT INTO `domains` VALUES ('88', 'aodiosemper.edu', '69', '0', '0');
INSERT INTO `domains` VALUES ('89', 'vitae.edu', '72', '0', '1');
INSERT INTO `domains` VALUES ('90', 'egestasa.org', '4', '0', '1');
INSERT INTO `domains` VALUES ('91', 'aliquam.co.uk', '13', '1', '1');
INSERT INTO `domains` VALUES ('92', 'laoreetlibero.com', '48', '0', '0');
INSERT INTO `domains` VALUES ('93', 'nunc.org', '87', '1', '1');
INSERT INTO `domains` VALUES ('94', 'vulputatedui.org', '16', '0', '0');
INSERT INTO `domains` VALUES ('95', 'porttitoreros.co.uk', '99', '0', '1');
INSERT INTO `domains` VALUES ('96', 'etiam.co.uk', '75', '0', '1');
INSERT INTO `domains` VALUES ('97', 'nullafacilisised.net', '74', '0', '1');
INSERT INTO `domains` VALUES ('98', 'ullamcorper.com', '58', '1', '0');
INSERT INTO `domains` VALUES ('99', 'morbi.org', '21', '0', '1');
INSERT INTO `domains` VALUES ('100', 'maurismolestiepharetra.org', '35', '0', '0');

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `requestDate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of newsletters
-- ----------------------------
INSERT INTO `newsletters` VALUES ('1', 'Abc@xyz.com', 'tom Jones', '2017-04-28');
INSERT INTO `newsletters` VALUES ('24', 'abcd@xyz.com', 'Tom Smith', '2017-04-29');
INSERT INTO `newsletters` VALUES ('26', 'xyz@abc.com', 'John Jones', '2017-04-30');
INSERT INTO `newsletters` VALUES ('28', 'john@smith.com', 'John Smith', '2017-04-30');
INSERT INTO `newsletters` VALUES ('30', 'george@jetson.com', 'George Jetson', '2017-04-30');
INSERT INTO `newsletters` VALUES ('31', 'jlees@basementsystems.com', 'Josh Lees ', '2017-04-30');
INSERT INTO `newsletters` VALUES ('37', 'george@plimpton.com', 'George Plimpton', '2017-05-01');

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `company` mediumint(9) NOT NULL,
  `association` mediumint(9) NOT NULL,
  `is_supercharged` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `company` (`company`),
  KEY `association` (`association`),
  KEY `is_supercharged` (`is_supercharged`),
  KEY `is_deleted` (`is_deleted`),
  CONSTRAINT `sites_ibfk_1` FOREIGN KEY (`association`) REFERENCES `associations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sites_ibfk_2` FOREIGN KEY (`company`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sites
-- ----------------------------
INSERT INTO `sites` VALUES ('1', 'Nebraska', '82', '1', '1', '0');
INSERT INTO `sites` VALUES ('2', 'Pennsylvania', '38', '1', '1', '0');
INSERT INTO `sites` VALUES ('3', 'Kentucky', '64', '1', '1', '0');
INSERT INTO `sites` VALUES ('4', 'Ohio', '38', '2', '1', '1');
INSERT INTO `sites` VALUES ('5', 'Florida', '86', '3', '0', '0');
INSERT INTO `sites` VALUES ('6', 'Alabama', '8', '2', '0', '0');
INSERT INTO `sites` VALUES ('7', 'Louisiana', '81', '2', '1', '0');
INSERT INTO `sites` VALUES ('8', 'Ohio', '27', '2', '1', '1');
INSERT INTO `sites` VALUES ('9', 'Vermont', '27', '2', '1', '0');
INSERT INTO `sites` VALUES ('10', 'Illinois', '37', '1', '0', '0');
INSERT INTO `sites` VALUES ('11', 'California', '99', '1', '1', '1');
INSERT INTO `sites` VALUES ('12', 'Arkansas', '29', '2', '0', '0');
INSERT INTO `sites` VALUES ('13', 'Oklahoma', '58', '2', '0', '1');
INSERT INTO `sites` VALUES ('14', 'Pennsylvania', '52', '1', '1', '1');
INSERT INTO `sites` VALUES ('15', 'Nebraska', '46', '5', '1', '0');
INSERT INTO `sites` VALUES ('16', 'Vermont', '97', '2', '1', '1');
INSERT INTO `sites` VALUES ('17', 'Vermont', '54', '4', '0', '0');
INSERT INTO `sites` VALUES ('18', 'Idaho', '20', '3', '0', '0');
INSERT INTO `sites` VALUES ('19', 'Iowa', '90', '1', '0', '0');
INSERT INTO `sites` VALUES ('20', 'Montana', '14', '4', '1', '1');
INSERT INTO `sites` VALUES ('21', 'Iowa', '80', '4', '1', '1');
INSERT INTO `sites` VALUES ('22', 'Kentucky', '29', '1', '1', '1');
INSERT INTO `sites` VALUES ('23', 'California', '59', '5', '1', '1');
INSERT INTO `sites` VALUES ('24', 'Pennsylvania', '81', '1', '1', '1');
INSERT INTO `sites` VALUES ('25', 'Georgia', '74', '5', '1', '0');
INSERT INTO `sites` VALUES ('26', 'Wisconsin', '18', '5', '1', '1');
INSERT INTO `sites` VALUES ('27', 'Pennsylvania', '38', '5', '1', '1');
INSERT INTO `sites` VALUES ('28', 'Wisconsin', '21', '4', '1', '1');
INSERT INTO `sites` VALUES ('29', 'Tennessee', '81', '5', '0', '1');
INSERT INTO `sites` VALUES ('30', 'Georgia', '66', '1', '1', '0');
INSERT INTO `sites` VALUES ('31', 'Wisconsin', '23', '5', '0', '0');
INSERT INTO `sites` VALUES ('32', 'Arkansas', '91', '3', '0', '1');
INSERT INTO `sites` VALUES ('33', 'Connecticut', '99', '4', '0', '0');
INSERT INTO `sites` VALUES ('34', 'Wyoming', '22', '2', '0', '1');
INSERT INTO `sites` VALUES ('35', 'Oklahoma', '47', '5', '0', '1');
INSERT INTO `sites` VALUES ('36', 'Arkansas', '10', '1', '0', '1');
INSERT INTO `sites` VALUES ('37', 'Louisiana', '66', '5', '0', '1');
INSERT INTO `sites` VALUES ('38', 'Vermont', '92', '4', '0', '0');
INSERT INTO `sites` VALUES ('39', 'Vermont', '81', '3', '0', '1');
INSERT INTO `sites` VALUES ('40', 'Massachusetts', '22', '4', '0', '1');
INSERT INTO `sites` VALUES ('41', 'Arkansas', '73', '2', '1', '0');
INSERT INTO `sites` VALUES ('42', 'Tennessee', '52', '4', '0', '0');
INSERT INTO `sites` VALUES ('43', 'Maine', '27', '5', '1', '0');
INSERT INTO `sites` VALUES ('44', 'California', '20', '5', '0', '0');
INSERT INTO `sites` VALUES ('45', 'Arizona', '91', '1', '1', '0');
INSERT INTO `sites` VALUES ('46', 'Indiana', '34', '2', '1', '0');
INSERT INTO `sites` VALUES ('47', 'Montana', '94', '5', '0', '0');
INSERT INTO `sites` VALUES ('48', 'Oklahoma', '81', '4', '1', '1');
INSERT INTO `sites` VALUES ('49', 'Oregon', '48', '1', '1', '1');
INSERT INTO `sites` VALUES ('50', 'Utah', '11', '1', '0', '1');
INSERT INTO `sites` VALUES ('51', 'Tennessee', '12', '3', '1', '1');
INSERT INTO `sites` VALUES ('52', 'Kentucky', '22', '5', '1', '0');
INSERT INTO `sites` VALUES ('53', 'Washington', '22', '3', '1', '0');
INSERT INTO `sites` VALUES ('54', 'Tennessee', '67', '4', '0', '0');
INSERT INTO `sites` VALUES ('55', 'Utah', '86', '3', '1', '0');
INSERT INTO `sites` VALUES ('56', 'Maryland', '24', '3', '0', '1');
INSERT INTO `sites` VALUES ('57', 'Florida', '74', '1', '1', '0');
INSERT INTO `sites` VALUES ('58', 'Arkansas', '78', '1', '1', '1');
INSERT INTO `sites` VALUES ('59', 'Georgia', '45', '2', '1', '0');
INSERT INTO `sites` VALUES ('60', 'Colorado', '97', '2', '0', '1');
INSERT INTO `sites` VALUES ('61', 'Wisconsin', '25', '5', '1', '0');
INSERT INTO `sites` VALUES ('62', 'Wyoming', '2', '3', '1', '0');
INSERT INTO `sites` VALUES ('63', 'Oregon', '40', '1', '0', '0');
INSERT INTO `sites` VALUES ('64', 'Maryland', '24', '5', '0', '1');
INSERT INTO `sites` VALUES ('65', 'Kentucky', '52', '2', '1', '0');
INSERT INTO `sites` VALUES ('66', 'Kentucky', '95', '4', '0', '0');
INSERT INTO `sites` VALUES ('67', 'Alaska', '30', '3', '1', '1');
INSERT INTO `sites` VALUES ('68', 'Oregon', '18', '3', '0', '0');
INSERT INTO `sites` VALUES ('69', 'Utah', '59', '4', '0', '0');
INSERT INTO `sites` VALUES ('70', 'Massachusetts', '56', '2', '1', '1');
INSERT INTO `sites` VALUES ('71', 'Missouri', '22', '5', '1', '0');
INSERT INTO `sites` VALUES ('72', 'Virginia', '71', '5', '0', '0');
INSERT INTO `sites` VALUES ('73', 'Vermont', '75', '4', '0', '1');
INSERT INTO `sites` VALUES ('74', 'Pennsylvania', '63', '2', '1', '0');
INSERT INTO `sites` VALUES ('75', 'Montana', '75', '4', '0', '0');
INSERT INTO `sites` VALUES ('76', 'Oregon', '2', '5', '0', '0');
INSERT INTO `sites` VALUES ('77', 'Indiana', '73', '2', '0', '1');
INSERT INTO `sites` VALUES ('78', 'Washington', '7', '3', '1', '0');
INSERT INTO `sites` VALUES ('79', 'Montana', '33', '1', '0', '0');
INSERT INTO `sites` VALUES ('80', 'Nevada', '17', '2', '1', '0');
INSERT INTO `sites` VALUES ('81', 'Texas', '90', '5', '0', '1');
INSERT INTO `sites` VALUES ('82', 'Washington', '4', '1', '1', '0');
INSERT INTO `sites` VALUES ('83', 'Nevada', '10', '3', '0', '0');
INSERT INTO `sites` VALUES ('84', 'Alaska', '47', '3', '0', '1');
INSERT INTO `sites` VALUES ('85', 'Arkansas', '46', '4', '0', '1');
INSERT INTO `sites` VALUES ('86', 'Oregon', '72', '4', '1', '1');
INSERT INTO `sites` VALUES ('87', 'Florida', '51', '3', '1', '0');
INSERT INTO `sites` VALUES ('88', 'Nebraska', '86', '4', '0', '1');
INSERT INTO `sites` VALUES ('89', 'Minnesota', '25', '4', '0', '0');
INSERT INTO `sites` VALUES ('90', 'Tennessee', '19', '3', '1', '1');
INSERT INTO `sites` VALUES ('91', 'Arizona', '25', '2', '1', '1');
INSERT INTO `sites` VALUES ('92', 'Wyoming', '17', '3', '1', '1');
INSERT INTO `sites` VALUES ('93', 'Missouri', '92', '2', '0', '1');
INSERT INTO `sites` VALUES ('94', 'Wyoming', '9', '4', '0', '0');
INSERT INTO `sites` VALUES ('95', 'Wyoming', '93', '1', '1', '1');
INSERT INTO `sites` VALUES ('96', 'Indiana', '71', '3', '1', '0');
INSERT INTO `sites` VALUES ('97', 'Arkansas', '24', '3', '0', '1');
INSERT INTO `sites` VALUES ('98', 'Texas', '51', '2', '0', '1');
INSERT INTO `sites` VALUES ('99', 'Missouri', '66', '3', '1', '1');
INSERT INTO `sites` VALUES ('100', 'Virginia', '100', '5', '0', '0');
SET FOREIGN_KEY_CHECKS=1;
