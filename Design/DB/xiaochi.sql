/*
Navicat MySQL Data Transfer

Source Server         : CF
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : xiaochi

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-22 23:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `sellcount` int(10) DEFAULT '0',
  `stock` int(10) NOT NULL,
  `isdeleted` int(11) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `goodscomment`
-- ----------------------------
DROP TABLE IF EXISTS `goodscomment`;
CREATE TABLE `goodscomment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` date NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodscomment
-- ----------------------------

-- ----------------------------
-- Table structure for `goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `typename` varchar(10) NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodstype
-- ----------------------------

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `allprice` double NOT NULL,
  `state` int(2) DEFAULT '0' COMMENT '0：未配送 1：已收货',
  `addtime` datetime NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `deliverytime` datetime DEFAULT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `publicinfo`
-- ----------------------------
DROP TABLE IF EXISTS `publicinfo`;
CREATE TABLE `publicinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `addtime` datetime NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publicinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `profileimg` varchar(255) DEFAULT NULL,
  `type` int(2) DEFAULT '0' COMMENT '0:会员 1：店家  2：管理员',
  `enable` int(2) DEFAULT '2' COMMENT '0：禁用 2：可用',
  `address` varchar(255) DEFAULT NULL,
  `isdeleted` int(2) DEFAULT '0' COMMENT '0：未删除 1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
