/*
Navicat MySQL Data Transfer

Source Server         : localMySql
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : scorpio

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-03-23 11:17:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `nickname` varchar(10) NOT NULL DEFAULT '新用户' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET latin1 NOT NULL COMMENT '密码',
  `type` int(2) NOT NULL COMMENT '用户类型：0普通用户，1管理员',
  `state` int(2) NOT NULL COMMENT '状态：0锁定，1正常，-1冻结',
  `errorCount` int(1) unsigned zerofill NOT NULL COMMENT '密码输入错误次数：0-5，等于5时账号被锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '管理员', '77e13d07b1b248228bf9b326d2a5633a', '1', '1', '0');
