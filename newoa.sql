/*
Navicat MySQL Data Transfer

Source Server         : qqq
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : newoa

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2019-05-15 18:20:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(50) NOT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `departmentNo` varchar(50) DEFAULT NULL,
  `departmentParent` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `departmentFunc` text,
  `departmentStatus` char(1) DEFAULT NULL,
  PRIMARY KEY (`departmentId`),
  KEY `fk_10` (`userId`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '总经理办公室', null, null, null, null, '11', '老板具体位置', '1');
INSERT INTO `department` VALUES ('2', '业务集群I-王琰', null, null, null, '1', '8', '教学全区', '1');
INSERT INTO `department` VALUES ('3', '业务集群II-余笑', null, null, null, '1', '7', '市场全区', '1');
INSERT INTO `department` VALUES ('4', '财务部', null, null, null, '1', '2', '企业的金库', '1');
INSERT INTO `department` VALUES ('5', '人力资源部', null, null, null, '1', '3', '招贤纳士', '1');
INSERT INTO `department` VALUES ('6', '行政管理部', null, null, null, '1', '3', '法务辅助', '1');
INSERT INTO `department` VALUES ('7', '市场部', null, null, null, '2', '4', null, '1');
INSERT INTO `department` VALUES ('8', '销售部', null, null, null, '3', '5', null, '1');
INSERT INTO `department` VALUES ('9', '就业部', null, null, null, '2', '6', null, '1');
INSERT INTO `department` VALUES ('10', '教学部', null, null, null, '3', '19', null, '1');
INSERT INTO `department` VALUES ('11', '教务部', null, null, null, '10', '19', null, '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) NOT NULL,
  `menuType` varchar(50) DEFAULT NULL,
  `menuParent` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '考勤', null, null);
INSERT INTO `menu` VALUES ('2', '个人办公', null, null);
INSERT INTO `menu` VALUES ('3', '流程', null, null);
INSERT INTO `menu` VALUES ('4', '公告', null, null);
INSERT INTO `menu` VALUES ('5', '系统管理', null, null);
INSERT INTO `menu` VALUES ('6', '人力资源', null, null);
INSERT INTO `menu` VALUES ('7', '企业资产', null, null);
INSERT INTO `menu` VALUES ('8', '通讯录', null, null);
INSERT INTO `menu` VALUES ('9', '个人设置', null, null);
INSERT INTO `menu` VALUES ('10', '个人考勤', null, '1');
INSERT INTO `menu` VALUES ('11', '考勤登记', null, '1');
INSERT INTO `menu` VALUES ('12', '排班设置', null, '1');
INSERT INTO `menu` VALUES ('13', '考勤设置', null, '1');
INSERT INTO `menu` VALUES ('14', '假期管理', null, '1');
INSERT INTO `menu` VALUES ('15', '代办事务', null, '2');
INSERT INTO `menu` VALUES ('16', '所有提醒', null, '2');
INSERT INTO `menu` VALUES ('17', '我的日程', null, '2');
INSERT INTO `menu` VALUES ('18', '任务管理', null, '2');
INSERT INTO `menu` VALUES ('19', '代办流程', null, '3');
INSERT INTO `menu` VALUES ('20', '流程管理', null, '3');
INSERT INTO `menu` VALUES ('21', '流程发起', null, '3');
INSERT INTO `menu` VALUES ('22', '分类设置', null, '3');
INSERT INTO `menu` VALUES ('23', '流程设置', null, '3');
INSERT INTO `menu` VALUES ('24', '企业公告', null, '4');
INSERT INTO `menu` VALUES ('25', '用户管理', null, '5');
INSERT INTO `menu` VALUES ('26', '部门管理', null, '5');
INSERT INTO `menu` VALUES ('27', '职位管理', null, '5');
INSERT INTO `menu` VALUES ('28', '权限管理', null, '5');
INSERT INTO `menu` VALUES ('29', '档案管理', null, '6');
INSERT INTO `menu` VALUES ('30', '合同管理', null, '6');
INSERT INTO `menu` VALUES ('31', '资产分类管理', null, '7');
INSERT INTO `menu` VALUES ('32', '固定资产管理', null, '7');
INSERT INTO `menu` VALUES ('33', '折旧管理管理', null, '7');
INSERT INTO `menu` VALUES ('34', '个人通讯录', null, '8');
INSERT INTO `menu` VALUES ('35', '内部通讯录', null, '8');
INSERT INTO `menu` VALUES ('36', '公共通讯录', null, '8');
INSERT INTO `menu` VALUES ('37', '个人资料', null, '9');
INSERT INTO `menu` VALUES ('38', '修改密码', null, '9');

-- ----------------------------
-- Table structure for notif
-- ----------------------------
DROP TABLE IF EXISTS `notif`;
CREATE TABLE `notif` (
  `notifyId` int(11) NOT NULL AUTO_INCREMENT,
  `fromDepartmentId` int(11) DEFAULT NULL,
  `toDepartmentId` text COLLATE utf8_bin,
  `summary` text COLLATE utf8_bin,
  `keyword` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `context` text COLLATE utf8_bin,
  `sendTime` datetime DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `top` char(1) COLLATE utf8_bin DEFAULT '0',
  `topDays` int(11) DEFAULT NULL,
  `publish` char(1) COLLATE utf8_bin DEFAULT NULL,
  `auditerId` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `auditerDate` datetime DEFAULT NULL,
  `lastEdit` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastEditTime` datetime DEFAULT NULL,
  PRIMARY KEY (`notifyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of notif
-- ----------------------------

-- ----------------------------
-- Table structure for notify_attachment
-- ----------------------------
DROP TABLE IF EXISTS `notify_attachment`;
CREATE TABLE `notify_attachment` (
  `attachmentId` int(11) NOT NULL AUTO_INCREMENT,
  `notifyId` int(11) DEFAULT NULL,
  `attachmentName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`attachmentId`),
  KEY `notifyId` (`notifyId`),
  CONSTRAINT `notify_attachment_ibfk_1` FOREIGN KEY (`notifyId`) REFERENCES `notif` (`notifyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of notify_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for operate
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `operateId` int(11) NOT NULL AUTO_INCREMENT,
  `operateName` varchar(50) NOT NULL,
  `operateController` varchar(50) NOT NULL,
  `operateMethod` varchar(50) NOT NULL,
  `operateParent` int(11) DEFAULT NULL,
  PRIMARY KEY (`operateId`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operate
-- ----------------------------
INSERT INTO `operate` VALUES ('1', '我的考勤', '', '', '1');
INSERT INTO `operate` VALUES ('2', '考勤统计', '', '', '1');
INSERT INTO `operate` VALUES ('3', '加班登记', '', '', null);
INSERT INTO `operate` VALUES ('4', '调休登记', '', '', null);
INSERT INTO `operate` VALUES ('5', '请假登记', '', '', null);
INSERT INTO `operate` VALUES ('6', '出差登记', '', '', null);
INSERT INTO `operate` VALUES ('7', '排班列表', '', '', null);
INSERT INTO `operate` VALUES ('8', '添加排班', '', '', null);
INSERT INTO `operate` VALUES ('9', '修改排班', '', '', null);
INSERT INTO `operate` VALUES ('10', '删除排班', '', '', null);
INSERT INTO `operate` VALUES ('11', '考勤列表', '', '', null);
INSERT INTO `operate` VALUES ('12', '添加考勤', '', '', null);
INSERT INTO `operate` VALUES ('13', '修改考情', '', '', null);
INSERT INTO `operate` VALUES ('14', '删除考勤', '', '', null);
INSERT INTO `operate` VALUES ('15', '假期列表', '', '', null);
INSERT INTO `operate` VALUES ('16', '事务列表', '', '', null);
INSERT INTO `operate` VALUES ('17', '添加事务', '', '', null);
INSERT INTO `operate` VALUES ('18', '修改事务', '', '', null);
INSERT INTO `operate` VALUES ('19', '删除事务', '', '', null);
INSERT INTO `operate` VALUES ('20', '提醒列表', '', '', null);
INSERT INTO `operate` VALUES ('21', '添加提醒', '', '', null);
INSERT INTO `operate` VALUES ('22', '修改提醒', '', '', null);
INSERT INTO `operate` VALUES ('23', '删除提醒', '', '', null);
INSERT INTO `operate` VALUES ('24', '日程列表', '', '', null);
INSERT INTO `operate` VALUES ('25', '添加日程', '', '', null);
INSERT INTO `operate` VALUES ('26', '修改日程', '', '', null);
INSERT INTO `operate` VALUES ('27', '删除日程', '', '', null);
INSERT INTO `operate` VALUES ('28', '任务列表', '', '', null);
INSERT INTO `operate` VALUES ('29', '添加任务', '', '', null);
INSERT INTO `operate` VALUES ('30', '修改任务', '', '', null);
INSERT INTO `operate` VALUES ('31', '删除任务', '', '', null);
INSERT INTO `operate` VALUES ('32', '流程审批', '', '', null);
INSERT INTO `operate` VALUES ('33', '我的流程', '', '', null);
INSERT INTO `operate` VALUES ('34', '发起流程', '', '', null);
INSERT INTO `operate` VALUES ('35', '流程列表', '', '', null);
INSERT INTO `operate` VALUES ('36', '添加流程', '', '', null);
INSERT INTO `operate` VALUES ('37', '修改流程', '', '', null);
INSERT INTO `operate` VALUES ('38', '删除流程', '', '', null);
INSERT INTO `operate` VALUES ('39', '分类列表', '', '', null);
INSERT INTO `operate` VALUES ('40', '添加分类', '', '', null);
INSERT INTO `operate` VALUES ('41', '修改分类', '', '', null);
INSERT INTO `operate` VALUES ('42', '删除分类', '', '', null);
INSERT INTO `operate` VALUES ('43', '公告列表', '', '', null);
INSERT INTO `operate` VALUES ('44', '添加公告', '', '', null);
INSERT INTO `operate` VALUES ('45', '修改公告', '', '', null);
INSERT INTO `operate` VALUES ('46', '删除公告', '', '', null);
INSERT INTO `operate` VALUES ('47', '用户列表', '', '', '25');
INSERT INTO `operate` VALUES ('48', '添加用户', '', '', '25');
INSERT INTO `operate` VALUES ('49', '修改用户', '', '', '25');
INSERT INTO `operate` VALUES ('50', '删除用户', '', '', '25');
INSERT INTO `operate` VALUES ('51', '职位列表', '', '', '27');
INSERT INTO `operate` VALUES ('52', '添加职位', '', '', '27');
INSERT INTO `operate` VALUES ('53', '修改职位', '', '', '27');
INSERT INTO `operate` VALUES ('54', '删除职位', '', '', '27');
INSERT INTO `operate` VALUES ('55', '部门列表', 'department', 'index', '26');
INSERT INTO `operate` VALUES ('56', '添加部门', 'department', 'add', '26');
INSERT INTO `operate` VALUES ('57', '修改部门', 'department', 'alter', '26');
INSERT INTO `operate` VALUES ('58', '删除部门', 'department', 'delete', '26');
INSERT INTO `operate` VALUES ('59', '用户权限', '', '', '28');
INSERT INTO `operate` VALUES ('60', '档案列表', '', '', null);
INSERT INTO `operate` VALUES ('61', '添加档案', '', '', null);
INSERT INTO `operate` VALUES ('62', '修改档案', '', '', null);
INSERT INTO `operate` VALUES ('63', '删除档案', '', '', null);
INSERT INTO `operate` VALUES ('64', '合同列表', '', '', null);
INSERT INTO `operate` VALUES ('65', '添加合同', '', '', null);
INSERT INTO `operate` VALUES ('66', '修改合同', '', '', null);
INSERT INTO `operate` VALUES ('67', '删除合同', '', '', null);
INSERT INTO `operate` VALUES ('68', '分类列表', '', '', null);
INSERT INTO `operate` VALUES ('69', '添加分类', '', '', null);
INSERT INTO `operate` VALUES ('70', '修改分类', '', '', null);
INSERT INTO `operate` VALUES ('71', '删除分类', '', '', null);
INSERT INTO `operate` VALUES ('72', '资产列表', '', '', null);
INSERT INTO `operate` VALUES ('73', '添加资产', '', '', null);
INSERT INTO `operate` VALUES ('74', '修改资产', '', '', null);
INSERT INTO `operate` VALUES ('75', '删除资产', '', '', null);
INSERT INTO `operate` VALUES ('76', '折旧列表', '', '', null);
INSERT INTO `operate` VALUES ('77', '添加折旧', '', '', null);
INSERT INTO `operate` VALUES ('78', '修改折旧', '', '', null);
INSERT INTO `operate` VALUES ('79', '删除折旧', '', '', null);
INSERT INTO `operate` VALUES ('80', '列表', '', '', null);
INSERT INTO `operate` VALUES ('81', '添加', '', '', null);
INSERT INTO `operate` VALUES ('82', '修改', '', '', null);
INSERT INTO `operate` VALUES ('83', '删除', '', '', null);
INSERT INTO `operate` VALUES ('84', '列表', '', '', null);
INSERT INTO `operate` VALUES ('85', '添加', '', '', null);
INSERT INTO `operate` VALUES ('86', '修改', '', '', null);
INSERT INTO `operate` VALUES ('87', '删除', '', '', null);
INSERT INTO `operate` VALUES ('88', '列表', '', '', null);
INSERT INTO `operate` VALUES ('89', '添加', '', '', null);
INSERT INTO `operate` VALUES ('90', '修改', '', '', null);
INSERT INTO `operate` VALUES ('91', '删除', '', '', null);
INSERT INTO `operate` VALUES ('92', '我的个人信息', '', '', null);
INSERT INTO `operate` VALUES ('93', '修改密码', '', '', null);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) NOT NULL,
  `permissionType` varchar(50) DEFAULT NULL,
  `permissionParent` int(11) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '考勤', null, null);
INSERT INTO `permission` VALUES ('2', '个人办公', null, null);
INSERT INTO `permission` VALUES ('3', '流程', null, null);
INSERT INTO `permission` VALUES ('4', '公告', null, null);
INSERT INTO `permission` VALUES ('5', '系统管理', null, null);
INSERT INTO `permission` VALUES ('6', '人力资源', null, null);
INSERT INTO `permission` VALUES ('7', '企业资产', null, null);
INSERT INTO `permission` VALUES ('8', '通讯录', null, null);
INSERT INTO `permission` VALUES ('9', '个人设置', null, null);
INSERT INTO `permission` VALUES ('10', '个人考勤', null, '1');
INSERT INTO `permission` VALUES ('11', '考勤登记', null, '1');
INSERT INTO `permission` VALUES ('12', '排班设置', null, '1');
INSERT INTO `permission` VALUES ('13', '考勤设置', null, '1');
INSERT INTO `permission` VALUES ('14', '假期管理', null, '1');
INSERT INTO `permission` VALUES ('15', '代办事务', null, '2');
INSERT INTO `permission` VALUES ('16', '所有提醒', null, '2');
INSERT INTO `permission` VALUES ('17', '我的日程', null, '2');
INSERT INTO `permission` VALUES ('18', '任务管理', null, '2');
INSERT INTO `permission` VALUES ('19', '代办流程', null, '3');
INSERT INTO `permission` VALUES ('20', '流程管理', null, '3');
INSERT INTO `permission` VALUES ('21', '流程发起', null, '3');
INSERT INTO `permission` VALUES ('22', '分类设置', null, '3');
INSERT INTO `permission` VALUES ('23', '流程设置', null, '3');
INSERT INTO `permission` VALUES ('24', '企业公告', null, '4');
INSERT INTO `permission` VALUES ('25', '用户管理', null, '5');
INSERT INTO `permission` VALUES ('26', '部门管理', null, '5');
INSERT INTO `permission` VALUES ('27', '职位管理', null, '5');
INSERT INTO `permission` VALUES ('28', '权限管理', null, '5');
INSERT INTO `permission` VALUES ('29', '档案管理', null, '6');
INSERT INTO `permission` VALUES ('30', '合同管理', null, '6');
INSERT INTO `permission` VALUES ('31', '资产分类管理', null, '7');
INSERT INTO `permission` VALUES ('32', '固定资产管理', null, '7');
INSERT INTO `permission` VALUES ('33', '折旧管理管理', null, '7');
INSERT INTO `permission` VALUES ('34', '个人通讯录', null, '8');
INSERT INTO `permission` VALUES ('35', '内部通讯录', null, '8');
INSERT INTO `permission` VALUES ('36', '公共通讯录', null, '8');
INSERT INTO `permission` VALUES ('37', '个人资料', null, '9');
INSERT INTO `permission` VALUES ('38', '修改密码', null, '9');
INSERT INTO `permission` VALUES ('39', '我的考勤', null, '10');
INSERT INTO `permission` VALUES ('40', '考勤统计', null, '10');
INSERT INTO `permission` VALUES ('41', '加班登记', null, '11');
INSERT INTO `permission` VALUES ('42', '调休登记', null, '11');
INSERT INTO `permission` VALUES ('43', '请假登记', null, '11');
INSERT INTO `permission` VALUES ('44', '出差登记', null, '11');
INSERT INTO `permission` VALUES ('45', '排班列表', null, '12');
INSERT INTO `permission` VALUES ('46', '添加排班', null, '12');
INSERT INTO `permission` VALUES ('47', '修改排班', null, '12');
INSERT INTO `permission` VALUES ('48', '删除排班', null, '12');
INSERT INTO `permission` VALUES ('49', '考勤列表', null, '13');
INSERT INTO `permission` VALUES ('50', '添加考勤', null, '13');
INSERT INTO `permission` VALUES ('51', '修改考情', null, '13');
INSERT INTO `permission` VALUES ('52', '删除考勤', null, '13');
INSERT INTO `permission` VALUES ('53', '假期列表', null, '14');
INSERT INTO `permission` VALUES ('54', '事务列表', null, '15');
INSERT INTO `permission` VALUES ('55', '添加事务', null, '15');
INSERT INTO `permission` VALUES ('56', '修改事务', null, '15');
INSERT INTO `permission` VALUES ('57', '删除事务', null, '15');
INSERT INTO `permission` VALUES ('58', '提醒列表', null, '16');
INSERT INTO `permission` VALUES ('59', '添加提醒', null, '16');
INSERT INTO `permission` VALUES ('60', '修改提醒', null, '16');
INSERT INTO `permission` VALUES ('61', '删除提醒', null, '16');
INSERT INTO `permission` VALUES ('62', '日程列表', null, '17');
INSERT INTO `permission` VALUES ('63', '添加日程', null, '17');
INSERT INTO `permission` VALUES ('64', '修改日程', null, '17');
INSERT INTO `permission` VALUES ('65', '删除日程', null, '17');
INSERT INTO `permission` VALUES ('66', '任务列表', null, '18');
INSERT INTO `permission` VALUES ('67', '添加任务', null, '18');
INSERT INTO `permission` VALUES ('68', '修改任务', null, '18');
INSERT INTO `permission` VALUES ('69', '删除任务', null, '18');
INSERT INTO `permission` VALUES ('70', '流程审批', null, '19');
INSERT INTO `permission` VALUES ('71', '我的流程', null, '20');
INSERT INTO `permission` VALUES ('72', '发起流程', null, '21');
INSERT INTO `permission` VALUES ('73', '流程列表', null, '23');
INSERT INTO `permission` VALUES ('74', '添加流程', null, '23');
INSERT INTO `permission` VALUES ('75', '修改流程', null, '23');
INSERT INTO `permission` VALUES ('76', '删除流程', null, '23');
INSERT INTO `permission` VALUES ('77', '分类列表', null, '22');
INSERT INTO `permission` VALUES ('78', '添加分类', null, '22');
INSERT INTO `permission` VALUES ('79', '修改分类', null, '22');
INSERT INTO `permission` VALUES ('80', '删除分类', null, '22');
INSERT INTO `permission` VALUES ('81', '公告列表', null, '24');
INSERT INTO `permission` VALUES ('82', '添加公告', null, '24');
INSERT INTO `permission` VALUES ('83', '修改公告', null, '24');
INSERT INTO `permission` VALUES ('84', '删除公告', null, '24');
INSERT INTO `permission` VALUES ('85', '用户列表', null, '25');
INSERT INTO `permission` VALUES ('86', '添加用户', null, '25');
INSERT INTO `permission` VALUES ('87', '修改用户', null, '25');
INSERT INTO `permission` VALUES ('88', '删除用户', null, '25');
INSERT INTO `permission` VALUES ('89', '职位列表', null, '27');
INSERT INTO `permission` VALUES ('90', '添加职位', null, '27');
INSERT INTO `permission` VALUES ('91', '修改职位', null, '27');
INSERT INTO `permission` VALUES ('92', '删除职位', null, '27');
INSERT INTO `permission` VALUES ('93', '部门列表', null, '26');
INSERT INTO `permission` VALUES ('94', '添加部门', null, '26');
INSERT INTO `permission` VALUES ('95', '修改部门', null, '26');
INSERT INTO `permission` VALUES ('96', '删除部门', null, '26');
INSERT INTO `permission` VALUES ('97', '用户权限', null, '28');
INSERT INTO `permission` VALUES ('98', '档案列表', null, '29');
INSERT INTO `permission` VALUES ('99', '添加档案', null, '29');
INSERT INTO `permission` VALUES ('100', '修改档案', null, '29');
INSERT INTO `permission` VALUES ('101', '删除档案', null, '29');
INSERT INTO `permission` VALUES ('102', '合同列表', null, '30');
INSERT INTO `permission` VALUES ('103', '添加合同', null, '30');
INSERT INTO `permission` VALUES ('104', '修改合同', null, '30');
INSERT INTO `permission` VALUES ('105', '删除合同', null, '30');
INSERT INTO `permission` VALUES ('106', '分类列表', null, '31');
INSERT INTO `permission` VALUES ('107', '添加分类', null, '31');
INSERT INTO `permission` VALUES ('108', '修改分类', null, '31');
INSERT INTO `permission` VALUES ('109', '删除分类', null, '31');
INSERT INTO `permission` VALUES ('110', '资产列表', null, '32');
INSERT INTO `permission` VALUES ('111', '添加资产', null, '32');
INSERT INTO `permission` VALUES ('112', '修改资产', null, '32');
INSERT INTO `permission` VALUES ('113', '删除资产', null, '32');
INSERT INTO `permission` VALUES ('114', '折旧列表', null, '33');
INSERT INTO `permission` VALUES ('115', '添加折旧', null, '33');
INSERT INTO `permission` VALUES ('116', '修改折旧', null, '33');
INSERT INTO `permission` VALUES ('117', '删除折旧', null, '33');
INSERT INTO `permission` VALUES ('118', '列表', null, '34');
INSERT INTO `permission` VALUES ('119', '添加', null, '34');
INSERT INTO `permission` VALUES ('120', '修改', null, '34');
INSERT INTO `permission` VALUES ('121', '删除', null, '34');
INSERT INTO `permission` VALUES ('122', '列表', null, '35');
INSERT INTO `permission` VALUES ('123', '添加', null, '35');
INSERT INTO `permission` VALUES ('124', '修改', null, '35');
INSERT INTO `permission` VALUES ('125', '删除', null, '35');
INSERT INTO `permission` VALUES ('126', '列表', null, '36');
INSERT INTO `permission` VALUES ('127', '添加', null, '36');
INSERT INTO `permission` VALUES ('128', '修改', null, '36');
INSERT INTO `permission` VALUES ('129', '删除', null, '36');
INSERT INTO `permission` VALUES ('130', '我的个人信息', null, '37');
INSERT INTO `permission` VALUES ('131', '修改密码', null, '38');

-- ----------------------------
-- Table structure for permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu`;
CREATE TABLE `permission_menu` (
  `permissionId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  KEY `pk_1` (`permissionId`),
  KEY `pk_2` (`menuId`),
  CONSTRAINT `permission_menu_ibfk_1` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `permission_menu_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_menu
-- ----------------------------
INSERT INTO `permission_menu` VALUES ('1', '1');
INSERT INTO `permission_menu` VALUES ('2', '2');
INSERT INTO `permission_menu` VALUES ('3', '3');
INSERT INTO `permission_menu` VALUES ('4', '4');
INSERT INTO `permission_menu` VALUES ('5', '5');
INSERT INTO `permission_menu` VALUES ('6', '6');
INSERT INTO `permission_menu` VALUES ('7', '7');
INSERT INTO `permission_menu` VALUES ('8', '8');
INSERT INTO `permission_menu` VALUES ('9', '9');
INSERT INTO `permission_menu` VALUES ('10', '10');
INSERT INTO `permission_menu` VALUES ('11', '11');
INSERT INTO `permission_menu` VALUES ('12', '12');
INSERT INTO `permission_menu` VALUES ('13', '13');
INSERT INTO `permission_menu` VALUES ('14', '14');
INSERT INTO `permission_menu` VALUES ('15', '15');
INSERT INTO `permission_menu` VALUES ('16', '16');
INSERT INTO `permission_menu` VALUES ('17', '17');
INSERT INTO `permission_menu` VALUES ('18', '18');
INSERT INTO `permission_menu` VALUES ('19', '19');
INSERT INTO `permission_menu` VALUES ('20', '20');
INSERT INTO `permission_menu` VALUES ('21', '21');
INSERT INTO `permission_menu` VALUES ('22', '22');
INSERT INTO `permission_menu` VALUES ('23', '23');
INSERT INTO `permission_menu` VALUES ('24', '24');
INSERT INTO `permission_menu` VALUES ('25', '25');
INSERT INTO `permission_menu` VALUES ('26', '26');
INSERT INTO `permission_menu` VALUES ('27', '27');
INSERT INTO `permission_menu` VALUES ('28', '28');
INSERT INTO `permission_menu` VALUES ('29', '29');
INSERT INTO `permission_menu` VALUES ('30', '30');
INSERT INTO `permission_menu` VALUES ('31', '31');
INSERT INTO `permission_menu` VALUES ('32', '32');
INSERT INTO `permission_menu` VALUES ('33', '33');
INSERT INTO `permission_menu` VALUES ('34', '34');
INSERT INTO `permission_menu` VALUES ('35', '35');
INSERT INTO `permission_menu` VALUES ('36', '36');
INSERT INTO `permission_menu` VALUES ('37', '37');
INSERT INTO `permission_menu` VALUES ('38', '38');

-- ----------------------------
-- Table structure for permission_operate
-- ----------------------------
DROP TABLE IF EXISTS `permission_operate`;
CREATE TABLE `permission_operate` (
  `permissionId` int(11) DEFAULT NULL,
  `operateId` int(11) DEFAULT NULL,
  KEY `pk_7` (`permissionId`),
  KEY `pk_8` (`operateId`),
  CONSTRAINT `permission_operate_ibfk_1` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `permission_operate_ibfk_2` FOREIGN KEY (`operateId`) REFERENCES `operate` (`operateId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission_operate
-- ----------------------------
INSERT INTO `permission_operate` VALUES ('39', '1');
INSERT INTO `permission_operate` VALUES ('40', '2');
INSERT INTO `permission_operate` VALUES ('41', '3');
INSERT INTO `permission_operate` VALUES ('42', '4');
INSERT INTO `permission_operate` VALUES ('43', '5');
INSERT INTO `permission_operate` VALUES ('44', '6');
INSERT INTO `permission_operate` VALUES ('45', '7');
INSERT INTO `permission_operate` VALUES ('46', '8');
INSERT INTO `permission_operate` VALUES ('47', '9');
INSERT INTO `permission_operate` VALUES ('48', '10');
INSERT INTO `permission_operate` VALUES ('49', '11');
INSERT INTO `permission_operate` VALUES ('50', '12');
INSERT INTO `permission_operate` VALUES ('51', '13');
INSERT INTO `permission_operate` VALUES ('52', '14');
INSERT INTO `permission_operate` VALUES ('53', '15');
INSERT INTO `permission_operate` VALUES ('54', '16');
INSERT INTO `permission_operate` VALUES ('55', '17');
INSERT INTO `permission_operate` VALUES ('56', '18');
INSERT INTO `permission_operate` VALUES ('57', '19');
INSERT INTO `permission_operate` VALUES ('58', '20');
INSERT INTO `permission_operate` VALUES ('59', '21');
INSERT INTO `permission_operate` VALUES ('60', '22');
INSERT INTO `permission_operate` VALUES ('61', '23');
INSERT INTO `permission_operate` VALUES ('62', '24');
INSERT INTO `permission_operate` VALUES ('63', '25');
INSERT INTO `permission_operate` VALUES ('64', '26');
INSERT INTO `permission_operate` VALUES ('65', '27');
INSERT INTO `permission_operate` VALUES ('66', '28');
INSERT INTO `permission_operate` VALUES ('67', '29');
INSERT INTO `permission_operate` VALUES ('68', '30');
INSERT INTO `permission_operate` VALUES ('69', '31');
INSERT INTO `permission_operate` VALUES ('70', '32');
INSERT INTO `permission_operate` VALUES ('71', '33');
INSERT INTO `permission_operate` VALUES ('72', '34');
INSERT INTO `permission_operate` VALUES ('73', '35');
INSERT INTO `permission_operate` VALUES ('74', '36');
INSERT INTO `permission_operate` VALUES ('75', '37');
INSERT INTO `permission_operate` VALUES ('76', '38');
INSERT INTO `permission_operate` VALUES ('77', '39');
INSERT INTO `permission_operate` VALUES ('78', '40');
INSERT INTO `permission_operate` VALUES ('79', '41');
INSERT INTO `permission_operate` VALUES ('80', '42');
INSERT INTO `permission_operate` VALUES ('81', '43');
INSERT INTO `permission_operate` VALUES ('82', '44');
INSERT INTO `permission_operate` VALUES ('83', '45');
INSERT INTO `permission_operate` VALUES ('84', '46');
INSERT INTO `permission_operate` VALUES ('85', '47');
INSERT INTO `permission_operate` VALUES ('86', '48');
INSERT INTO `permission_operate` VALUES ('87', '49');
INSERT INTO `permission_operate` VALUES ('88', '50');
INSERT INTO `permission_operate` VALUES ('89', '51');
INSERT INTO `permission_operate` VALUES ('90', '52');
INSERT INTO `permission_operate` VALUES ('91', '53');
INSERT INTO `permission_operate` VALUES ('92', '54');
INSERT INTO `permission_operate` VALUES ('93', '55');
INSERT INTO `permission_operate` VALUES ('94', '56');
INSERT INTO `permission_operate` VALUES ('95', '57');
INSERT INTO `permission_operate` VALUES ('96', '58');
INSERT INTO `permission_operate` VALUES ('97', '59');
INSERT INTO `permission_operate` VALUES ('98', '60');
INSERT INTO `permission_operate` VALUES ('99', '61');
INSERT INTO `permission_operate` VALUES ('100', '62');
INSERT INTO `permission_operate` VALUES ('101', '63');
INSERT INTO `permission_operate` VALUES ('102', '64');
INSERT INTO `permission_operate` VALUES ('103', '65');
INSERT INTO `permission_operate` VALUES ('104', '66');
INSERT INTO `permission_operate` VALUES ('105', '67');
INSERT INTO `permission_operate` VALUES ('106', '68');
INSERT INTO `permission_operate` VALUES ('107', '69');
INSERT INTO `permission_operate` VALUES ('108', '70');
INSERT INTO `permission_operate` VALUES ('109', '71');
INSERT INTO `permission_operate` VALUES ('110', '72');
INSERT INTO `permission_operate` VALUES ('111', '73');
INSERT INTO `permission_operate` VALUES ('112', '74');
INSERT INTO `permission_operate` VALUES ('113', '75');
INSERT INTO `permission_operate` VALUES ('114', '76');
INSERT INTO `permission_operate` VALUES ('115', '77');
INSERT INTO `permission_operate` VALUES ('116', '78');
INSERT INTO `permission_operate` VALUES ('117', '79');
INSERT INTO `permission_operate` VALUES ('118', '80');
INSERT INTO `permission_operate` VALUES ('119', '81');
INSERT INTO `permission_operate` VALUES ('120', '82');
INSERT INTO `permission_operate` VALUES ('121', '83');
INSERT INTO `permission_operate` VALUES ('122', '84');
INSERT INTO `permission_operate` VALUES ('123', '85');
INSERT INTO `permission_operate` VALUES ('124', '86');
INSERT INTO `permission_operate` VALUES ('125', '87');
INSERT INTO `permission_operate` VALUES ('126', '88');
INSERT INTO `permission_operate` VALUES ('127', '89');
INSERT INTO `permission_operate` VALUES ('128', '90');
INSERT INTO `permission_operate` VALUES ('129', '91');
INSERT INTO `permission_operate` VALUES ('130', '92');
INSERT INTO `permission_operate` VALUES ('131', '93');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `departmentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  KEY `fk_11` (`departmentId`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('2', '超级管理员', null);
INSERT INTO `role` VALUES ('3', '总经理', null);
INSERT INTO `role` VALUES ('4', '副总经理', null);
INSERT INTO `role` VALUES ('5', '财务经理', '4');
INSERT INTO `role` VALUES ('6', '出纳', '4');
INSERT INTO `role` VALUES ('7', '会计', '4');
INSERT INTO `role` VALUES ('8', '人力资源经理', '5');
INSERT INTO `role` VALUES ('9', '招聘主管', '5');
INSERT INTO `role` VALUES ('10', '薪酬主管', '5');
INSERT INTO `role` VALUES ('11', '招聘专员', '5');
INSERT INTO `role` VALUES ('12', '薪酬专员', '5');
INSERT INTO `role` VALUES ('13', '行政经理', '6');
INSERT INTO `role` VALUES ('14', '行政专员', '6');
INSERT INTO `role` VALUES ('15', '前台', '6');
INSERT INTO `role` VALUES ('16', '法务', '6');
INSERT INTO `role` VALUES ('17', '市场经理', '7');
INSERT INTO `role` VALUES ('18', '网络推广', '7');
INSERT INTO `role` VALUES ('19', '广告宣传', '7');
INSERT INTO `role` VALUES ('20', '销售经理', '8');
INSERT INTO `role` VALUES ('21', '电话销售', '8');
INSERT INTO `role` VALUES ('22', '产品顾问', '8');
INSERT INTO `role` VALUES ('23', '就业经理', '9');
INSERT INTO `role` VALUES ('24', '就业主管', '9');
INSERT INTO `role` VALUES ('25', '就业顾问', '9');
INSERT INTO `role` VALUES ('26', '教学经理', '10');
INSERT INTO `role` VALUES ('27', '讲师', '10');
INSERT INTO `role` VALUES ('28', '班主任', '11');
INSERT INTO `role` VALUES ('29', '分管业务副总I-王琰', '2');
INSERT INTO `role` VALUES ('30', '分管业务副总II-余笑', '3');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `roleId` int(11) DEFAULT NULL,
  `permissionId` int(11) DEFAULT NULL,
  KEY `pk_5` (`roleId`),
  KEY `pk_6` (`permissionId`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('2', '2');
INSERT INTO `role_permission` VALUES ('2', '3');
INSERT INTO `role_permission` VALUES ('2', '4');
INSERT INTO `role_permission` VALUES ('2', '5');
INSERT INTO `role_permission` VALUES ('2', '6');
INSERT INTO `role_permission` VALUES ('2', '7');
INSERT INTO `role_permission` VALUES ('2', '8');
INSERT INTO `role_permission` VALUES ('2', '9');
INSERT INTO `role_permission` VALUES ('2', '10');
INSERT INTO `role_permission` VALUES ('2', '11');
INSERT INTO `role_permission` VALUES ('2', '12');
INSERT INTO `role_permission` VALUES ('2', '13');
INSERT INTO `role_permission` VALUES ('2', '14');
INSERT INTO `role_permission` VALUES ('2', '15');
INSERT INTO `role_permission` VALUES ('2', '16');
INSERT INTO `role_permission` VALUES ('2', '17');
INSERT INTO `role_permission` VALUES ('2', '18');
INSERT INTO `role_permission` VALUES ('2', '19');
INSERT INTO `role_permission` VALUES ('2', '20');
INSERT INTO `role_permission` VALUES ('2', '21');
INSERT INTO `role_permission` VALUES ('2', '22');
INSERT INTO `role_permission` VALUES ('2', '23');
INSERT INTO `role_permission` VALUES ('2', '24');
INSERT INTO `role_permission` VALUES ('2', '25');
INSERT INTO `role_permission` VALUES ('2', '26');
INSERT INTO `role_permission` VALUES ('2', '27');
INSERT INTO `role_permission` VALUES ('2', '28');
INSERT INTO `role_permission` VALUES ('2', '29');
INSERT INTO `role_permission` VALUES ('2', '30');
INSERT INTO `role_permission` VALUES ('2', '31');
INSERT INTO `role_permission` VALUES ('2', '32');
INSERT INTO `role_permission` VALUES ('2', '33');
INSERT INTO `role_permission` VALUES ('2', '34');
INSERT INTO `role_permission` VALUES ('2', '35');
INSERT INTO `role_permission` VALUES ('2', '36');
INSERT INTO `role_permission` VALUES ('2', '37');
INSERT INTO `role_permission` VALUES ('2', '38');
INSERT INTO `role_permission` VALUES ('2', '39');
INSERT INTO `role_permission` VALUES ('2', '40');
INSERT INTO `role_permission` VALUES ('2', '41');
INSERT INTO `role_permission` VALUES ('2', '42');
INSERT INTO `role_permission` VALUES ('2', '43');
INSERT INTO `role_permission` VALUES ('2', '44');
INSERT INTO `role_permission` VALUES ('2', '45');
INSERT INTO `role_permission` VALUES ('2', '46');
INSERT INTO `role_permission` VALUES ('2', '47');
INSERT INTO `role_permission` VALUES ('2', '48');
INSERT INTO `role_permission` VALUES ('2', '49');
INSERT INTO `role_permission` VALUES ('2', '50');
INSERT INTO `role_permission` VALUES ('2', '51');
INSERT INTO `role_permission` VALUES ('2', '52');
INSERT INTO `role_permission` VALUES ('2', '53');
INSERT INTO `role_permission` VALUES ('2', '54');
INSERT INTO `role_permission` VALUES ('2', '55');
INSERT INTO `role_permission` VALUES ('2', '56');
INSERT INTO `role_permission` VALUES ('2', '57');
INSERT INTO `role_permission` VALUES ('2', '58');
INSERT INTO `role_permission` VALUES ('2', '59');
INSERT INTO `role_permission` VALUES ('2', '60');
INSERT INTO `role_permission` VALUES ('2', '61');
INSERT INTO `role_permission` VALUES ('2', '62');
INSERT INTO `role_permission` VALUES ('2', '63');
INSERT INTO `role_permission` VALUES ('2', '64');
INSERT INTO `role_permission` VALUES ('2', '65');
INSERT INTO `role_permission` VALUES ('2', '66');
INSERT INTO `role_permission` VALUES ('2', '67');
INSERT INTO `role_permission` VALUES ('2', '68');
INSERT INTO `role_permission` VALUES ('2', '69');
INSERT INTO `role_permission` VALUES ('2', '70');
INSERT INTO `role_permission` VALUES ('2', '71');
INSERT INTO `role_permission` VALUES ('2', '72');
INSERT INTO `role_permission` VALUES ('2', '73');
INSERT INTO `role_permission` VALUES ('2', '74');
INSERT INTO `role_permission` VALUES ('2', '75');
INSERT INTO `role_permission` VALUES ('2', '76');
INSERT INTO `role_permission` VALUES ('2', '77');
INSERT INTO `role_permission` VALUES ('2', '78');
INSERT INTO `role_permission` VALUES ('2', '79');
INSERT INTO `role_permission` VALUES ('2', '80');
INSERT INTO `role_permission` VALUES ('2', '81');
INSERT INTO `role_permission` VALUES ('2', '82');
INSERT INTO `role_permission` VALUES ('2', '83');
INSERT INTO `role_permission` VALUES ('2', '84');
INSERT INTO `role_permission` VALUES ('2', '85');
INSERT INTO `role_permission` VALUES ('2', '86');
INSERT INTO `role_permission` VALUES ('2', '87');
INSERT INTO `role_permission` VALUES ('2', '88');
INSERT INTO `role_permission` VALUES ('2', '89');
INSERT INTO `role_permission` VALUES ('2', '90');
INSERT INTO `role_permission` VALUES ('2', '91');
INSERT INTO `role_permission` VALUES ('2', '92');
INSERT INTO `role_permission` VALUES ('2', '93');
INSERT INTO `role_permission` VALUES ('2', '94');
INSERT INTO `role_permission` VALUES ('2', '95');
INSERT INTO `role_permission` VALUES ('2', '96');
INSERT INTO `role_permission` VALUES ('2', '97');
INSERT INTO `role_permission` VALUES ('2', '98');
INSERT INTO `role_permission` VALUES ('2', '99');
INSERT INTO `role_permission` VALUES ('2', '100');
INSERT INTO `role_permission` VALUES ('2', '101');
INSERT INTO `role_permission` VALUES ('2', '102');
INSERT INTO `role_permission` VALUES ('2', '103');
INSERT INTO `role_permission` VALUES ('2', '104');
INSERT INTO `role_permission` VALUES ('2', '105');
INSERT INTO `role_permission` VALUES ('2', '106');
INSERT INTO `role_permission` VALUES ('2', '107');
INSERT INTO `role_permission` VALUES ('2', '108');
INSERT INTO `role_permission` VALUES ('2', '109');
INSERT INTO `role_permission` VALUES ('2', '110');
INSERT INTO `role_permission` VALUES ('2', '111');
INSERT INTO `role_permission` VALUES ('2', '112');
INSERT INTO `role_permission` VALUES ('2', '113');
INSERT INTO `role_permission` VALUES ('2', '114');
INSERT INTO `role_permission` VALUES ('2', '115');
INSERT INTO `role_permission` VALUES ('2', '116');
INSERT INTO `role_permission` VALUES ('2', '117');
INSERT INTO `role_permission` VALUES ('2', '118');
INSERT INTO `role_permission` VALUES ('2', '119');
INSERT INTO `role_permission` VALUES ('2', '120');
INSERT INTO `role_permission` VALUES ('2', '121');
INSERT INTO `role_permission` VALUES ('2', '122');
INSERT INTO `role_permission` VALUES ('2', '123');
INSERT INTO `role_permission` VALUES ('2', '124');
INSERT INTO `role_permission` VALUES ('2', '125');
INSERT INTO `role_permission` VALUES ('2', '126');
INSERT INTO `role_permission` VALUES ('2', '127');
INSERT INTO `role_permission` VALUES ('2', '128');
INSERT INTO `role_permission` VALUES ('2', '129');
INSERT INTO `role_permission` VALUES ('2', '130');
INSERT INTO `role_permission` VALUES ('2', '131');
INSERT INTO `role_permission` VALUES ('24', '1');
INSERT INTO `role_permission` VALUES ('24', '2');
INSERT INTO `role_permission` VALUES ('24', '10');
INSERT INTO `role_permission` VALUES ('24', '11');
INSERT INTO `role_permission` VALUES ('24', '15');
INSERT INTO `role_permission` VALUES ('24', '16');
INSERT INTO `role_permission` VALUES ('24', '17');
INSERT INTO `role_permission` VALUES ('24', '18');
INSERT INTO `role_permission` VALUES ('24', '3');
INSERT INTO `role_permission` VALUES ('24', '21');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `loginId` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `telDepartment` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `faxDepartment` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `addressHome` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `postHome` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `telHome` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastPassTime` datetime DEFAULT NULL,
  `onLine` int(11) DEFAULT NULL,
  `onStatus` char(1) COLLATE utf8_bin DEFAULT NULL,
  `attendStatus` char(1) COLLATE utf8_bin DEFAULT NULL,
  `remark` text COLLATE utf8_bin,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '马雪梅', 'maxuemei', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '倪笑宇', 'nixiaoyu', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', '张明', 'zhangming', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('5', '霍芳', 'huofang', 'e10adc3949ba59abbe56e057f20f883e', '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', '孙丽睿', 'sunlirui', 'e10adc3949ba59abbe56e057f20f883e', '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', '余笑', 'yuxiao', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('8', '王琰', 'wangyan', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('9', '周峰', 'zhoufeng', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('10', '王威', 'wangwei', 'e10adc3949ba59abbe56e057f20f883e', '11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('11', '李波', 'libo', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('12', '朱明华', 'zhuminghua', 'e10adc3949ba59abbe56e057f20f883e', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('13', '康珊珊', 'kangshanshan', 'e10adc3949ba59abbe56e057f20f883e', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('14', '徐佳瑶', 'xujiayao', 'e10adc3949ba59abbe56e057f20f883e', '13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('15', '李品然', 'lipingran', 'e10adc3949ba59abbe56e057f20f883e', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('16', '王丽霞', 'wanglixia', 'e10adc3949ba59abbe56e057f20f883e', '5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('17', '董欢欢', 'donghuanhuan', 'e10adc3949ba59abbe56e057f20f883e', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('18', '朱琼', 'zhuqiong', 'e10adc3949ba59abbe56e057f20f883e', '17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('19', '龚玮斌', 'gongweibin', 'e10adc3949ba59abbe56e057f20f883e', '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('20', '冯瑞', 'fengrui', 'e10adc3949ba59abbe56e057f20f883e', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('21', '陈晨', 'chenchen', 'e10adc3949ba59abbe56e057f20f883e', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('22', '赵凯', 'zhaokai', 'e10adc3949ba59abbe56e057f20f883e', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('23', '蔡根荣', 'caigenrong', 'e10adc3949ba59abbe56e057f20f883e', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('24', '闻书晴', 'wenshuqing', 'e10adc3949ba59abbe56e057f20f883e', '19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('25', '陈凤娇', 'chengfengjiao', 'e10adc3949ba59abbe56e057f20f883e', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) DEFAULT NULL,
  KEY `pk_3` (`userId`),
  KEY `pk_4` (`roleId`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('17', '24');
