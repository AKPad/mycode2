/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50551
Source Host           : 127.0.0.1:3306
Source Database       : day16

Target Server Type    : MYSQL
Target Server Version : 50551
File Encoding         : 65001

Date: 2020-07-31 11:43:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `MONEY` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'zs', '1000');
INSERT INTO `account` VALUES ('2', 'ls', '1000');
INSERT INTO `account` VALUES ('3', 'zw', '1000');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `ptid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `ptid` (`ptid`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ptid`) REFERENCES `producttype` (`ptid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'iphone11Max', '10000', '12', '1');
INSERT INTO `product` VALUES ('2', 'iphone11', '9000', '8', '1');
INSERT INTO `product` VALUES ('3', 'iphoneX', '7000', '19', '1');
INSERT INTO `product` VALUES ('4', 'iphone8', '6000', '12', '1');
INSERT INTO `product` VALUES ('5', 'iphone8plus', '7000', '13', '1');
INSERT INTO `product` VALUES ('6', 'iphone7', '4000', '4', '1');
INSERT INTO `product` VALUES ('7', 'iphone7plus', '3500', '12', '1');
INSERT INTO `product` VALUES ('8', 'iphone6', '3000', '10', '1');
INSERT INTO `product` VALUES ('9', 'iphone6plus', '3200', '10', '1');
INSERT INTO `product` VALUES ('10', '北京烤鸭', '100', '100', '2');
INSERT INTO `product` VALUES ('11', '天津包子', '10', '1000', '2');
INSERT INTO `product` VALUES ('12', '武汉热干面', '20', '11', '2');
INSERT INTO `product` VALUES ('16', '手枪', '900', '11', null);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '苹果笔记本', '19990', '12');
INSERT INTO `products` VALUES ('2', 'iphone8plus', '10000', '12');
INSERT INTO `products` VALUES ('3', '华为honer', '3999', '12');
INSERT INTO `products` VALUES ('4', '华为p40', '5990', '12');
INSERT INTO `products` VALUES ('5', 'vivox9', '3990', '12');
INSERT INTO `products` VALUES ('6', '小米9', '2990', '12');
INSERT INTO `products` VALUES ('7', '红米30pro', '1990', '12');

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype` (
  `ptid` int(11) NOT NULL AUTO_INCREMENT,
  `ptname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ptid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES ('1', '电子产品');
INSERT INTO `producttype` VALUES ('2', '食物');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) DEFAULT NULL,
  `ssex` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `idx_student` (`sname`,`ssex`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '黎明', '34');
INSERT INTO `student` VALUES ('3', '李康', '16');
INSERT INTO `student` VALUES ('1', '罗卡卡', '16');
