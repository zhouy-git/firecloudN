/*
 Navicat Premium Data Transfer

 Source Server         : 阿里MySQL
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 39.104.16.168:3306
 Source Schema         : firecloud

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 12/11/2019 18:13:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for DEVINFO
-- ----------------------------
DROP TABLE IF EXISTS `DEVINFO`;
CREATE TABLE `DEVINFO`  (
  `DEV_ID` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '设备编号',
  `DEV_STATUS` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '设备状态',
  `DEV_DES_PER` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '设备浓度',
  `NET_ID` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '网络频点',
  `SIGNAL_DES` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '信号强度',
  `DATA_DATE` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '日期',
  `DATA_TIME` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT '时间'
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DEVINFO
-- ----------------------------
INSERT INTO `DEVINFO` VALUES ('ZH1100010006', '5', '000', '5555', '17', '20191024', '150011');
INSERT INTO `DEVINFO` VALUES ('ZH1100010005', '5', '000', '5555', '17', '20191024', '145817');
INSERT INTO `DEVINFO` VALUES ('869029035531861', '1', '123', '18', '5555', '20191024', '161210');
INSERT INTO `DEVINFO` VALUES ('869029035531861', '1', '123', '18', '5555', '20191024', '161208');
INSERT INTO `DEVINFO` VALUES ('869029035531861', '1', '123', '18', '5555', '20191024', '161205');
INSERT INTO `DEVINFO` VALUES ('869029035531861', '4', '000', '18', '5555', '20191024', '161739');
INSERT INTO `DEVINFO` VALUES ('869029035531861', '14', '000', '18', '5555', '20191024', '161900');
INSERT INTO `DEVINFO` VALUES ('869029035531860', '1', '000', '3798', '15', '20191031', '141758');
INSERT INTO `DEVINFO` VALUES ('869029035531860', '1', '000', '3798', '15', '20191031', '141804');
INSERT INTO `DEVINFO` VALUES ('869029035531860', '1', '000', '3798', '15', '20191031', '141807');
INSERT INTO `DEVINFO` VALUES ('869029035531865', '1', '000', '3798', '14', '20191031', '141946');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142133');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142134');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142134');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142135');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142136');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142136');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142137');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142137');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142138');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142138');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142139');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142139');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142140');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142140');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142141');
INSERT INTO `DEVINFO` VALUES ('869029035531863', '1', '000', '3798', '12', '20191031', '142141');
INSERT INTO `DEVINFO` VALUES ('860000000000866', '1', '000', '3555', '13', '20191101', '112816');
INSERT INTO `DEVINFO` VALUES ('860000000000867', '4', '000', '3566', '13', '20191101', '112852');
INSERT INTO `DEVINFO` VALUES ('860000000000868', '1', '000', '3555', '10', '20191101', '112902');
INSERT INTO `DEVINFO` VALUES ('860000000000867', '1', '000', '3555', '13', '20191101', '112911');
INSERT INTO `DEVINFO` VALUES ('860000000000868', '10', '000', '3555', '13', '20191101', '112919');
INSERT INTO `DEVINFO` VALUES ('860000000000869', '1', '000', '3555', '13', '20191101', '112928');
INSERT INTO `DEVINFO` VALUES ('860000000000868', '4', '000', '3555', '13', '20191101', '112936');
INSERT INTO `DEVINFO` VALUES ('860000000000867', '1', '000', '3566', '15', '20191101', '112943');
INSERT INTO `DEVINFO` VALUES ('860000000000867', '1', '000', '3555', '13', '20191101', '113014');
INSERT INTO `DEVINFO` VALUES ('860000000000868', '10', '000', '3555', '13', '20191101', '113021');
INSERT INTO `DEVINFO` VALUES ('860000000000869', '1', '000', '3555', '13', '20191101', '113027');
INSERT INTO `DEVINFO` VALUES ('860000000000800', '4', '000', '3555', '13', '20191101', '113033');
INSERT INTO `DEVINFO` VALUES ('860000000000800', '1', '000', '3555', '13', '20191101', '113042');
INSERT INTO `DEVINFO` VALUES ('860000000000801', '1', '000', '3567', '13', '20191101', '113050');
INSERT INTO `DEVINFO` VALUES ('860000000000801', '1', '000', '3555', '13', '20191101', '113055');
INSERT INTO `DEVINFO` VALUES ('860000000000811', '1', '000', '3555', '13', '20191101', '113101');
INSERT INTO `DEVINFO` VALUES ('860000000000811', '1', '000', '3555', '15', '20191101', '113106');
INSERT INTO `DEVINFO` VALUES ('860000000000812', '4', '000', '3565', '13', '20191101', '113112');
INSERT INTO `DEVINFO` VALUES ('860000000000800', '1', '000', '3555', '13', '20191101', '113117');
INSERT INTO `DEVINFO` VALUES ('860000000000812', '10', '000', '3555', '13', '20191101', '113122');
INSERT INTO `DEVINFO` VALUES ('860000000000869', '1', '000', '3555', '13', '20191101', '113129');
INSERT INTO `DEVINFO` VALUES ('860000000000869', '1', '000', '3555', '13', '20191101', '113135');
INSERT INTO `DEVINFO` VALUES ('860000000000868', '1', '000', '3555', '13', '20191101', '113140');
INSERT INTO `DEVINFO` VALUES ('860000000000867', '1', '000', '3543', '13', '20191101', '113145');
INSERT INTO `DEVINFO` VALUES ('860000000000801', '1', '000', '3555', '13', '20191101', '113149');
INSERT INTO `DEVINFO` VALUES ('860000000000801', '10', '000', '3555', '13', '20191101', '113156');
INSERT INTO `DEVINFO` VALUES ('860000000000800', '1', '000', '3546', '15', '20191101', '113201');
INSERT INTO `DEVINFO` VALUES ('860000000000802', '1', '000', '3555', '13', '20191101', '113207');
INSERT INTO `DEVINFO` VALUES ('860000000000802', '1', '000', '3555', '13', '20191101', '113212');
INSERT INTO `DEVINFO` VALUES ('860000000000802', '1', '000', '3555', '13', '20191101', '113216');
INSERT INTO `DEVINFO` VALUES ('860000000000803', '1', '000', '3555', '13', '20191101', '113221');
INSERT INTO `DEVINFO` VALUES ('860000000000801', '1', '000', '3523', '13', '20191101', '113226');
INSERT INTO `DEVINFO` VALUES ('860000000000802', '1', '000', '3555', '13', '20191101', '113231');
INSERT INTO `DEVINFO` VALUES ('860000000000803', '10', '000', '3555', '13', '20191101', '113237');
INSERT INTO `DEVINFO` VALUES ('860000000000804', '1', '000', '3555', '13', '20191101', '113241');
INSERT INTO `DEVINFO` VALUES ('860000000000804', '1', '000', '3555', '13', '20191101', '113250');
INSERT INTO `DEVINFO` VALUES ('860000000000804', '1', '000', '3555', '10', '20191101', '113255');
INSERT INTO `DEVINFO` VALUES ('860000000000805', '4', '000', '3522', '13', '20191101', '113301');
INSERT INTO `DEVINFO` VALUES ('860000000000805', '1', '000', '3555', '13', '20191101', '113306');
INSERT INTO `DEVINFO` VALUES ('860000000000806', '1', '000', '3555', '13', '20191101', '113311');
INSERT INTO `DEVINFO` VALUES ('860000000000805', '1', '000', '3555', '13', '20191101', '113319');
INSERT INTO `DEVINFO` VALUES ('860000000000806', '1', '000', '3524', '10', '20191101', '113325');
INSERT INTO `DEVINFO` VALUES ('860000000000807', '1', '000', '3555', '13', '20191101', '113331');
INSERT INTO `DEVINFO` VALUES ('860000000000808', '10', '000', '3555', '15', '20191101', '113338');
INSERT INTO `DEVINFO` VALUES ('860000000000809', '1', '000', '3525', '13', '20191101', '113343');
INSERT INTO `DEVINFO` VALUES ('860000000000808', '1', '000', '3555', '13', '20191101', '113350');
INSERT INTO `DEVINFO` VALUES ('860000000000807', '1', '000', '3555', '13', '20191101', '113356');
INSERT INTO `DEVINFO` VALUES ('860000000000808', '1', '000', '3555', '13', '20191101', '113401');
INSERT INTO `DEVINFO` VALUES ('860000000000809', '1', '000', '3555', '13', '20191101', '113407');
INSERT INTO `DEVINFO` VALUES ('860000000000802', '1', '000', '3555', '13', '20191101', '113413');
INSERT INTO `DEVINFO` VALUES ('860000000000803', '1', '000', '3555', '13', '20191101', '113418');
INSERT INTO `DEVINFO` VALUES ('860000000000804', '1', '000', '3534', '15', '20191101', '113424');
INSERT INTO `DEVINFO` VALUES ('860000000000805', '4', '000', '3555', '13', '20191101', '113429');
INSERT INTO `DEVINFO` VALUES ('860000000000806', '1', '000', '3556', '13', '20191101', '113434');
INSERT INTO `DEVINFO` VALUES ('860000000000807', '1', '000', '3555', '13', '20191101', '113441');
INSERT INTO `DEVINFO` VALUES ('ZH1100010011', '7', '000', '5555', '19', '20191107', '170804');
INSERT INTO `DEVINFO` VALUES ('ZH1100010011', '5', '000', '5555', '19', '20191107', '170725');

-- ----------------------------
-- Table structure for alert_processing
-- ----------------------------
DROP TABLE IF EXISTS `alert_processing`;
CREATE TABLE `alert_processing`  (
  `ID` int(22) NOT NULL AUTO_INCREMENT,
  `DEV_ID` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备id',
  `DEV_NAME` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备名称',
  `DEV_STATUS` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备状态',
  `UNIT_TYPE` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备型号',
  `LOCATION` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '安装位置',
  `UNDERBUILDING` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属建筑',
  `FLOORAREA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '楼层区域',
  `ALARMTIME` datetime(0) DEFAULT NULL COMMENT '报警时间',
  `ALARMCONTENT` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '报警内容',
  `ISDEAL` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否处理 0:未处理 1：已经处理',
  `DEALPEOPLE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '处理人',
  `DEALTIME` datetime(0) DEFAULT NULL COMMENT '处理时间',
  `ALREAM_TYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '报警类型',
  `DEAFULT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alert_processing
-- ----------------------------
INSERT INTO `alert_processing` VALUES (1, '1111', NULL, '11', NULL, NULL, NULL, NULL, '2019-11-09 00:20:44', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (2, '1111', NULL, '2', NULL, NULL, NULL, NULL, '2019-11-10 16:23:21', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (3, '1111', NULL, '2', NULL, NULL, NULL, NULL, '2019-11-10 16:25:20', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (4, '1111', NULL, '3', NULL, NULL, NULL, NULL, '2019-11-10 16:26:16', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (10, 'ZHZ100022233', NULL, '4', NULL, NULL, NULL, NULL, '2019-11-12 11:26:40', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (11, '860000000000809', '烟感', '4', 'AS-21', '5008', '金鹰C', 'F5', '2019-11-12 12:35:24', NULL, '0', NULL, NULL, 'fire', NULL);
INSERT INTO `alert_processing` VALUES (27, '860000000000803', '燃气报警器', '4', 'R-21', '6003', '万达大楼', 'F6', '2019-11-12 12:51:47', NULL, '0', NULL, NULL, 'fire', NULL);
INSERT INTO `alert_processing` VALUES (30, '860000000000803', '燃气报警器', '11', 'R-21', '6003', '万达大楼', 'F6', NULL, NULL, '0', NULL, NULL, 'gz', NULL);
INSERT INTO `alert_processing` VALUES (32, '869029035531865', NULL, '3', NULL, NULL, NULL, NULL, '2019-11-12 16:49:59', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (33, '869029035531865', NULL, '5', NULL, NULL, NULL, NULL, '2019-11-12 17:00:20', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (34, '860000000000867', NULL, '4', NULL, NULL, NULL, NULL, '2019-11-12 17:14:23', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (35, '860000000000867', NULL, '3', NULL, NULL, NULL, NULL, '2019-11-12 17:31:15', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (36, '860000000000867', NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-12 17:38:15', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (37, '860000000000867', NULL, '2', NULL, NULL, NULL, NULL, '2019-11-12 17:49:19', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (38, '860000000000867', NULL, '2', NULL, NULL, NULL, NULL, '2019-11-12 17:57:12', NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO `alert_processing` VALUES (39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `connectionperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES (1, '小张超市', '111', '武汉', '027-9123131', '张大明', '13812312312321312', '中国银行', '654431331343413', '213123@sina.com', '430000', 1);
INSERT INTO `bus_customer` VALUES (2, '小明超市', '222', '深圳', '0755-9123131', '张小明', '13812312312321312', '中国银行', '654431331343413', '213123@sina.com', '430000', 1);
INSERT INTO `bus_customer` VALUES (3, '快七超市', '430000', '武汉', '027-11011011', '雷生', '13434134131', '招商银行', '6543123341334133', '6666@66.com', '545341', 1);

-- ----------------------------
-- Table structure for bus_goods
-- ----------------------------
DROP TABLE IF EXISTS `bus_goods`;
CREATE TABLE `bus_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `produceplace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodspackage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `productcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `promitcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `dangernum` int(11) DEFAULT NULL,
  `goodsimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_sq0btr2v2lq8gt8b4gb8tlk0i`(`providerid`) USING BTREE,
  CONSTRAINT `bus_goods_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_goods
-- ----------------------------
INSERT INTO `bus_goods` VALUES (1, '娃哈哈', '武汉', '120ML', '瓶', 'PH12345', 'PZ1234', '小孩子都爱的', 2, 488, 10, '2018-12-25/userface1.jpg', 1, 3);
INSERT INTO `bus_goods` VALUES (2, '旺旺雪饼[小包]', '仙桃', '包', '袋', 'PH12312312', 'PZ12312', '好吃不上火', 4, 1100, 10, '2018-12-25/userface2.jpg', 1, 1);
INSERT INTO `bus_goods` VALUES (3, '旺旺大礼包', '仙桃', '盒', '盒', '11', '11', '111', 28, 1021, 100, '2018-12-25/userface3.jpg', 1, 1);
INSERT INTO `bus_goods` VALUES (4, '娃哈哈', '武汉', '200ML', '瓶', '11', '111', '12321', 3, 1100, 10, '2018-12-25/userface4.jpg', 1, 3);
INSERT INTO `bus_goods` VALUES (5, '娃哈哈', '武汉', '300ML', '瓶', '1234', '12321', '22221111', 3, 1000, 100, '2018-12-25/userface5.jpg', 1, 3);

-- ----------------------------
-- Table structure for bus_inport
-- ----------------------------
DROP TABLE IF EXISTS `bus_inport`;
CREATE TABLE `bus_inport`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inporttime` datetime(0) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `inportprice` double DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_1o4bujsyd2kl4iqw48fie224v`(`providerid`) USING BTREE,
  INDEX `FK_ho29poeu4o2dxu4rg1ammeaql`(`goodsid`) USING BTREE,
  CONSTRAINT `bus_inport_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bus_inport_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `bus_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_inport
-- ----------------------------
INSERT INTO `bus_inport` VALUES (1, '微信', '2018-05-07 00:00:00', '张三', 100, '备注', 3.5, 1, 1);
INSERT INTO `bus_inport` VALUES (2, '支付宝', '2018-05-07 00:00:00', '张三', 1000, '无', 2.5, 3, 3);
INSERT INTO `bus_inport` VALUES (3, '银联', '2018-05-07 00:00:00', '张三', 100, '1231', 111, 3, 3);
INSERT INTO `bus_inport` VALUES (4, '银联', '2018-05-07 00:00:00', '张三', 1000, '无', 2, 3, 1);
INSERT INTO `bus_inport` VALUES (5, '银联', '2018-05-07 00:00:00', '张三', 100, '无', 1, 3, 1);
INSERT INTO `bus_inport` VALUES (6, '银联', '2018-05-07 00:00:00', '张三', 100, '1231', 2.5, 1, 2);
INSERT INTO `bus_inport` VALUES (8, '支付宝', '2018-05-07 00:00:00', '张三', 100, '', 1, 3, 1);
INSERT INTO `bus_inport` VALUES (10, '支付宝', '2018-08-07 17:17:57', '超级管理员', 100, 'sadfasfdsa', 1.5, 3, 1);
INSERT INTO `bus_inport` VALUES (11, '支付宝', '2018-09-17 16:12:25', '超级管理员', 21, '21', 21, 1, 3);
INSERT INTO `bus_inport` VALUES (12, '微信', '2018-12-25 16:48:24', '超级管理员', 100, '123213213', 12321321, 3, 1);

-- ----------------------------
-- Table structure for bus_outport
-- ----------------------------
DROP TABLE IF EXISTS `bus_outport`;
CREATE TABLE `bus_outport`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outputtime` datetime(0) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `outportprice` double(10, 2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_outport
-- ----------------------------
INSERT INTO `bus_outport` VALUES (1, 3, '微信', '2019-08-16 08:19:50', '超级管理员', 12321321.00, 1, '', 1);
INSERT INTO `bus_outport` VALUES (2, 3, '微信', '2019-08-16 08:26:54', '超级管理员', 12321321.00, 11, '11', 1);

-- ----------------------------
-- Table structure for bus_provider
-- ----------------------------
DROP TABLE IF EXISTS `bus_provider`;
CREATE TABLE `bus_provider`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `connectionperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_provider
-- ----------------------------
INSERT INTO `bus_provider` VALUES (1, '旺旺食品', '434000', '仙桃', '0728-4124312', '小明', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123', 1);
INSERT INTO `bus_provider` VALUES (2, '达利园食品', '430000', '汉川', '0728-4124312', '大明', '13413441141', '中国农业银行', '654124345131', '12312321@sina.com', '5123123', 1);
INSERT INTO `bus_provider` VALUES (3, '娃哈哈集团', '513131', '杭州', '21312', '小晨', '12312', '建设银行', '512314141541', '123131', '312312', 1);

-- ----------------------------
-- Table structure for bus_sales
-- ----------------------------
DROP TABLE IF EXISTS `bus_sales`;
CREATE TABLE `bus_sales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salestime` datetime(0) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `saleprice` decimal(10, 2) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bus_salesback
-- ----------------------------
DROP TABLE IF EXISTS `bus_salesback`;
CREATE TABLE `bus_salesback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salesbacktime` datetime(0) DEFAULT NULL,
  `salebackprice` double(10, 2) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dev_alerm
-- ----------------------------
DROP TABLE IF EXISTS `dev_alerm`;
CREATE TABLE `dev_alerm`  (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dev_id` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备id',
  `dev_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备状态',
  `signal_des` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '信号强度',
  `net_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '网络频点',
  `dev_des_per` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备浓度',
  `net_date` datetime(0) DEFAULT NULL COMMENT '报警时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dev_alerm
-- ----------------------------
INSERT INTO `dev_alerm` VALUES (1, 'ZH1100010011', '5', '000', '5555', '19', '2019-11-07 16:42:22');
INSERT INTO `dev_alerm` VALUES (2, 'ZH1100010011', '2', '000', '5555', '19', '2019-11-07 17:00:27');
INSERT INTO `dev_alerm` VALUES (3, 'ZH1100010011', '2', '000', '5555', '19', '2019-11-07 17:05:42');
INSERT INTO `dev_alerm` VALUES (4, 'ZH1100010011', '7', '000', '5555', '19', '2019-11-07 17:08:04');
INSERT INTO `dev_alerm` VALUES (6, '1111', '2', NULL, NULL, NULL, '2019-11-10 16:25:20');
INSERT INTO `dev_alerm` VALUES (7, '1111', '3', NULL, NULL, NULL, '2019-11-10 16:26:16');
INSERT INTO `dev_alerm` VALUES (8, 'ZHZ100022233', '4', '000', '5555', '15', '2019-11-12 11:26:40');
INSERT INTO `dev_alerm` VALUES (9, '860000000000809', '4', '000', '5555', '15', '2019-11-12 12:35:24');
INSERT INTO `dev_alerm` VALUES (10, '860000000000803', '4', '000', NULL, NULL, '2019-11-12 12:51:47');
INSERT INTO `dev_alerm` VALUES (11, '860000000000803', '11', NULL, NULL, NULL, '2019-11-12 16:59:36');
INSERT INTO `dev_alerm` VALUES (12, '860000000000803', '11', NULL, NULL, NULL, '2019-11-12 16:38:08');
INSERT INTO `dev_alerm` VALUES (13, '869029035531865', '3', '111', '2222', '111', '2019-11-12 16:49:59');
INSERT INTO `dev_alerm` VALUES (14, '869029035531865', '5', '1111', '1222', '333', '2019-11-12 17:00:20');
INSERT INTO `dev_alerm` VALUES (15, '860000000000867', '4', NULL, NULL, NULL, '2019-11-12 17:14:23');
INSERT INTO `dev_alerm` VALUES (111, '860000000000867', '3', '111', '1234', '212', '2019-11-12 17:31:15');
INSERT INTO `dev_alerm` VALUES (112, '860000000000867', '2', NULL, NULL, NULL, '2019-11-12 17:38:15');
INSERT INTO `dev_alerm` VALUES (113, '860000000000867', '2', '112', '221', '211', '2019-11-12 17:57:12');
INSERT INTO `dev_alerm` VALUES (114, '860000000000867', '4', '113', '212', '233', '2019-11-12 17:58:05');

-- ----------------------------
-- Table structure for equip_config
-- ----------------------------
DROP TABLE IF EXISTS `equip_config`;
CREATE TABLE `equip_config`  (
  `sid` int(32) NOT NULL,
  `statusname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `equistatus` int(3) DEFAULT NULL,
  `netstatus` int(3) DEFAULT NULL,
  `equiptype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equip_config
-- ----------------------------
INSERT INTO `equip_config` VALUES (0, '预热', 1, 1, NULL);
INSERT INTO `equip_config` VALUES (1, '正常', 1, 1, NULL);
INSERT INTO `equip_config` VALUES (2, '错误', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (3, '传感器故障', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (4, '报警', 1, 1, NULL);
INSERT INTO `equip_config` VALUES (5, '低报', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (6, '低报', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (7, '通信故障', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (8, '超量程', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (9, '离线', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (10, '电池电量低', 1, 1, NULL);
INSERT INTO `equip_config` VALUES (11, '控制器主电源故障', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (12, '控制器备电源故障', NULL, NULL, NULL);
INSERT INTO `equip_config` VALUES (13, '控制器无此节点', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `devid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '设备ID',
  `devicename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '名称',
  `status` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '状态',
  `devicemodel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '设备类型',
  `underbuild` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所属建筑',
  `floorarea` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '楼层区域',
  `installlocation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '安装位置',
  `networkstate` int(2) DEFAULT NULL COMMENT '联网状态',
  `devicestatus` int(2) DEFAULT NULL COMMENT '设备状态',
  `nettime` datetime(0) DEFAULT NULL COMMENT '入网时间',
  `dnameid` int(2) DEFAULT NULL COMMENT '设备名称的id',
  `id` int(15) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`devid`) USING BTREE,
  INDEX `unique_id`(`devid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('860000000000800', '烟感', NULL, 'AS-34', '万达大楼D', 'F3', '3002', 1, 1, '2019-11-01 03:05:21', NULL, 1);
INSERT INTO `equipment` VALUES ('860000000000801', '烟感', NULL, 'AS-54', '中医院住院部', 'C区', '300', 1, 1, '2019-11-01 03:07:05', NULL, 2);
INSERT INTO `equipment` VALUES ('860000000000802', '水压表', NULL, 'S-34', '中医院住院部', 'C区', '2001', 1, 1, '2019-11-01 03:11:43', NULL, 3);
INSERT INTO `equipment` VALUES ('860000000000803', '燃气报警器', NULL, 'R-21', '万达大楼', 'F6', '6003', 1, 1, '2019-11-01 03:13:32', NULL, 4);
INSERT INTO `equipment` VALUES ('860000000000804', '燃气报警器', NULL, 'R-21', '万达大楼', 'F8', '8011', 1, 1, '2019-11-01 03:14:16', NULL, 5);
INSERT INTO `equipment` VALUES ('860000000000805', '水压表', NULL, 'S-21', '万达大楼D', 'F3', '3002', 1, 4, '2019-11-01 03:15:20', NULL, 6);
INSERT INTO `equipment` VALUES ('860000000000806', '烟感', NULL, 'AS-21', '万达大楼', 'F9', '9002', 1, 1, '2019-11-01 03:24:39', NULL, 7);
INSERT INTO `equipment` VALUES ('860000000000807', '烟感', NULL, 'AS-21', '万达大楼D', 'F5', '5100', 1, 1, '2019-11-01 03:25:29', NULL, 8);
INSERT INTO `equipment` VALUES ('860000000000808', '烟感', NULL, 'AS-21', '万达大楼', 'F3', '3022', 1, 1, '2019-11-01 03:26:29', NULL, 9);
INSERT INTO `equipment` VALUES ('860000000000809', '烟感', NULL, 'AS-21', '金鹰C', 'F5', '5008', 1, 1, '2019-11-01 03:27:16', NULL, 10);
INSERT INTO `equipment` VALUES ('860000000000811', '烟感', NULL, 'AS-52', '中医院住院部', 'C区', '3004', 1, 1, '2019-11-01 03:10:15', NULL, 11);
INSERT INTO `equipment` VALUES ('860000000000812', '烟感', NULL, 'AS-52', '中医院住院部', 'C区', '2004', 1, 10, '2019-11-01 03:08:58', NULL, 12);
INSERT INTO `equipment` VALUES ('860000000000866', '水压表', NULL, 'S-51', '万达大楼', 'F2', '203', 1, 1, '2019-10-31 16:48:25', NULL, 13);
INSERT INTO `equipment` VALUES ('860000000000867', '烟感', NULL, 'AS-3', '金鹰D', 'F6', '6012', 1, 1, '2019-11-01 03:01:27', NULL, 14);
INSERT INTO `equipment` VALUES ('860000000000868', '水压表', NULL, 'S-51', '金鹰D', 'F7', '7023', 1, 1, '2019-11-01 03:03:09', NULL, 15);
INSERT INTO `equipment` VALUES ('860000000000869', '水压表', NULL, 'S-51', '金鹰C', 'F2', '201', 1, 1, '2019-11-01 03:03:59', NULL, 16);
INSERT INTO `equipment` VALUES ('869029035531863', '烟感', NULL, 'GBSTY-UCZ09332', '辉煌国际', 'F-5', '5楼办公区', 1, 1, '2019-10-31 12:55:21', NULL, 17);
INSERT INTO `equipment` VALUES ('869029035531865', '烟感', NULL, 'AF-1', '万达大楼', 'F5', '1002', 1, 1, '2019-10-31 16:45:34', NULL, 18);
INSERT INTO `equipment` VALUES ('869029035531866', '烟感', NULL, 'AF-1', '万达大楼', 'F5', '1004', 1, 1, '2019-10-31 16:46:29', NULL, 19);
INSERT INTO `equipment` VALUES ('ZH1100010011', '测试', '0', 'AS-01', '测试地址', 'A1', '5502', 1, 7, '2019-11-07 17:08:04', 1111, 20);
INSERT INTO `equipment` VALUES ('aaaaa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '状态【0不可用1可用】',
  `ordernum` int(11) DEFAULT NULL COMMENT '排序码【为了调事显示顺序】',
  `createtime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '消防主管机构', 1, '大BOSS', '深圳', 1, 1, '2019-04-10 14:06:32');
INSERT INTO `sys_dept` VALUES (2, 1, '监管中心', 0, '程序员屌丝', '武汉', 1, 2, '2019-04-10 14:06:32');
INSERT INTO `sys_dept` VALUES (3, 1, '维保单位', 0, '无', '武汉', 1, 3, '2019-04-10 14:06:32');
INSERT INTO `sys_dept` VALUES (4, 1, '联网单位', 0, '无', '武汉', 1, 4, '2019-04-10 14:06:32');
INSERT INTO `sys_dept` VALUES (5, 2, '维保一部', 0, '监管一部门', '武汉', 1, 5, '2019-10-25 10:39:10');
INSERT INTO `sys_dept` VALUES (6, 2, '监管二部', 0, '监管二部门', '武汉', 1, 6, '2019-10-25 10:39:02');
INSERT INTO `sys_dept` VALUES (7, 3, '维保一部', 0, '维保一部', '武汉', 1, 7, '2019-10-25 10:39:42');
INSERT INTO `sys_dept` VALUES (8, 2, '监管三部', 0, '监管三部', '11', 1, 8, '2019-10-25 10:39:17');
INSERT INTO `sys_dept` VALUES (9, 2, '监管四部', 0, '监管四部', '222', 1, 9, '2019-10-25 10:39:22');
INSERT INTO `sys_dept` VALUES (10, 2, '监管五部', 0, '监管五部', '33', 1, 10, '2019-10-25 10:39:27');
INSERT INTO `sys_dept` VALUES (18, 4, '联网一部', 0, '联网一部', '武汉', 1, 11, '2019-10-25 10:39:59');
INSERT INTO `sys_dept` VALUES (19, 4, '联网二部', 1, '11111', '河北', 1, 12, '2019-10-25 10:40:23');

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logintime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 894 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
INSERT INTO `sys_loginfo` VALUES (2, '超级管理员-system', '127.0.0.1', '2018-12-21 16:54:52');
INSERT INTO `sys_loginfo` VALUES (3, '超级管理员-system', '127.0.0.1', '2018-12-21 16:55:15');
INSERT INTO `sys_loginfo` VALUES (4, '超级管理员-system', '127.0.0.1', '2018-12-21 17:29:22');
INSERT INTO `sys_loginfo` VALUES (5, '超级管理员-system', '127.0.0.1', '2018-12-22 09:05:22');
INSERT INTO `sys_loginfo` VALUES (6, '超级管理员-system', '127.0.0.1', '2018-12-22 09:20:43');
INSERT INTO `sys_loginfo` VALUES (7, '超级管理员-system', '127.0.0.1', '2018-12-22 09:25:40');
INSERT INTO `sys_loginfo` VALUES (8, '超级管理员-system', '127.0.0.1', '2018-12-22 09:27:11');
INSERT INTO `sys_loginfo` VALUES (9, '超级管理员-system', '127.0.0.1', '2018-12-22 09:29:58');
INSERT INTO `sys_loginfo` VALUES (10, '超级管理员-system', '127.0.0.1', '2018-12-22 09:36:49');
INSERT INTO `sys_loginfo` VALUES (11, '超级管理员-system', '127.0.0.1', '2018-12-22 09:46:56');
INSERT INTO `sys_loginfo` VALUES (12, '超级管理员-system', '127.0.0.1', '2018-12-22 09:48:29');
INSERT INTO `sys_loginfo` VALUES (13, '超级管理员-system', '127.0.0.1', '2018-12-22 09:49:13');
INSERT INTO `sys_loginfo` VALUES (14, '超级管理员-system', '127.0.0.1', '2018-12-22 09:49:57');
INSERT INTO `sys_loginfo` VALUES (15, '超级管理员-system', '127.0.0.1', '2018-12-22 09:57:46');
INSERT INTO `sys_loginfo` VALUES (16, '超级管理员-system', '127.0.0.1', '2018-12-22 10:21:53');
INSERT INTO `sys_loginfo` VALUES (17, '超级管理员-system', '127.0.0.1', '2018-12-22 10:38:25');
INSERT INTO `sys_loginfo` VALUES (18, '超级管理员-system', '127.0.0.1', '2018-12-22 10:49:21');
INSERT INTO `sys_loginfo` VALUES (19, '超级管理员-system', '127.0.0.1', '2018-12-22 14:01:42');
INSERT INTO `sys_loginfo` VALUES (20, '超级管理员-system', '127.0.0.1', '2018-12-22 14:19:48');
INSERT INTO `sys_loginfo` VALUES (21, '超级管理员-system', '127.0.0.1', '2018-12-22 14:45:29');
INSERT INTO `sys_loginfo` VALUES (22, '超级管理员-system', '127.0.0.1', '2018-12-22 15:58:05');
INSERT INTO `sys_loginfo` VALUES (23, '超级管理员-system', '127.0.0.1', '2018-12-22 16:40:53');
INSERT INTO `sys_loginfo` VALUES (24, '超级管理员-system', '127.0.0.1', '2018-12-22 17:12:01');
INSERT INTO `sys_loginfo` VALUES (25, '超级管理员-system', '127.0.0.1', '2018-12-24 09:19:15');
INSERT INTO `sys_loginfo` VALUES (26, '超级管理员-system', '127.0.0.1', '2018-12-24 09:37:28');
INSERT INTO `sys_loginfo` VALUES (27, '超级管理员-system', '127.0.0.1', '2018-12-24 09:46:51');
INSERT INTO `sys_loginfo` VALUES (28, '超级管理员-system', '127.0.0.1', '2018-12-24 09:50:40');
INSERT INTO `sys_loginfo` VALUES (29, '超级管理员-system', '127.0.0.1', '2018-12-24 09:52:52');
INSERT INTO `sys_loginfo` VALUES (30, '超级管理员-system', '127.0.0.1', '2018-12-24 10:00:26');
INSERT INTO `sys_loginfo` VALUES (31, '超级管理员-system', '127.0.0.1', '2018-12-24 10:10:58');
INSERT INTO `sys_loginfo` VALUES (32, '超级管理员-system', '127.0.0.1', '2018-12-24 10:21:28');
INSERT INTO `sys_loginfo` VALUES (33, '超级管理员-system', '127.0.0.1', '2018-12-24 11:22:27');
INSERT INTO `sys_loginfo` VALUES (34, '超级管理员-system', '127.0.0.1', '2018-12-24 11:35:28');
INSERT INTO `sys_loginfo` VALUES (35, '超级管理员-system', '127.0.0.1', '2018-12-24 14:05:28');
INSERT INTO `sys_loginfo` VALUES (36, '超级管理员-system', '127.0.0.1', '2018-12-24 15:16:29');
INSERT INTO `sys_loginfo` VALUES (37, '李四-ls', '127.0.0.1', '2018-12-24 15:16:50');
INSERT INTO `sys_loginfo` VALUES (38, '王五-ww', '127.0.0.1', '2018-12-24 15:17:36');
INSERT INTO `sys_loginfo` VALUES (39, '赵六-zl', '127.0.0.1', '2018-12-24 15:17:47');
INSERT INTO `sys_loginfo` VALUES (40, '孙七-sq', '127.0.0.1', '2018-12-24 15:17:58');
INSERT INTO `sys_loginfo` VALUES (41, '刘八-lb', '127.0.0.1', '2018-12-24 15:18:09');
INSERT INTO `sys_loginfo` VALUES (42, '超级管理员-system', '127.0.0.1', '2018-12-24 15:34:59');
INSERT INTO `sys_loginfo` VALUES (43, '超级管理员-system', '127.0.0.1', '2018-12-24 15:35:09');
INSERT INTO `sys_loginfo` VALUES (44, '刘八-lb', '127.0.0.1', '2018-12-24 15:36:09');
INSERT INTO `sys_loginfo` VALUES (45, '刘八-lb', '127.0.0.1', '2018-12-24 15:42:58');
INSERT INTO `sys_loginfo` VALUES (46, '刘八-lb', '127.0.0.1', '2018-12-24 15:43:04');
INSERT INTO `sys_loginfo` VALUES (47, '超级管理员-system', '127.0.0.1', '2018-12-24 15:46:01');
INSERT INTO `sys_loginfo` VALUES (48, '超级管理员-system', '127.0.0.1', '2018-12-24 17:03:54');
INSERT INTO `sys_loginfo` VALUES (49, '超级管理员-system', '127.0.0.1', '2018-12-24 17:26:32');
INSERT INTO `sys_loginfo` VALUES (50, '超级管理员-system', '127.0.0.1', '2018-12-25 09:07:42');
INSERT INTO `sys_loginfo` VALUES (51, '超级管理员-system', '127.0.0.1', '2018-12-25 09:16:27');
INSERT INTO `sys_loginfo` VALUES (52, '超级管理员-system', '127.0.0.1', '2018-12-25 09:59:03');
INSERT INTO `sys_loginfo` VALUES (53, '超级管理员-system', '127.0.0.1', '2018-12-25 10:05:13');
INSERT INTO `sys_loginfo` VALUES (54, '超级管理员-system', '127.0.0.1', '2018-12-25 10:05:47');
INSERT INTO `sys_loginfo` VALUES (55, '超级管理员-system', '127.0.0.1', '2018-12-25 10:11:17');
INSERT INTO `sys_loginfo` VALUES (56, '超级管理员-system', '127.0.0.1', '2018-12-25 10:14:06');
INSERT INTO `sys_loginfo` VALUES (57, '超级管理员-system', '127.0.0.1', '2018-12-25 10:36:16');
INSERT INTO `sys_loginfo` VALUES (58, '超级管理员-system', '127.0.0.1', '2018-12-25 14:17:21');
INSERT INTO `sys_loginfo` VALUES (59, '超级管理员-system', '127.0.0.1', '2018-12-25 14:20:00');
INSERT INTO `sys_loginfo` VALUES (60, '超级管理员-system', '127.0.0.1', '2018-12-25 14:34:22');
INSERT INTO `sys_loginfo` VALUES (61, '超级管理员-system', '127.0.0.1', '2018-12-25 14:34:27');
INSERT INTO `sys_loginfo` VALUES (62, '超级管理员-system', '127.0.0.1', '2018-12-25 14:38:37');
INSERT INTO `sys_loginfo` VALUES (63, '超级管理员-system', '127.0.0.1', '2018-12-25 14:50:37');
INSERT INTO `sys_loginfo` VALUES (64, '超级管理员-system', '127.0.0.1', '2018-12-25 16:01:35');
INSERT INTO `sys_loginfo` VALUES (65, '超级管理员-system', '127.0.0.1', '2018-12-25 16:25:28');
INSERT INTO `sys_loginfo` VALUES (66, '超级管理员-system', '127.0.0.1', '2018-12-25 16:27:37');
INSERT INTO `sys_loginfo` VALUES (67, '超级管理员-system', '127.0.0.1', '2018-12-25 16:28:28');
INSERT INTO `sys_loginfo` VALUES (68, '超级管理员-system', '127.0.0.1', '2018-12-25 16:44:02');
INSERT INTO `sys_loginfo` VALUES (69, '超级管理员-system', '127.0.0.1', '2018-12-25 16:47:55');
INSERT INTO `sys_loginfo` VALUES (70, '超级管理员-system', '127.0.0.1', '2018-12-28 15:59:34');
INSERT INTO `sys_loginfo` VALUES (71, '超级管理员-system', '127.0.0.1', '2018-12-28 17:27:16');
INSERT INTO `sys_loginfo` VALUES (72, '超级管理员-system', '127.0.0.1', '2018-12-28 17:29:40');
INSERT INTO `sys_loginfo` VALUES (73, '超级管理员-system', '127.0.0.1', '2018-12-28 17:51:10');
INSERT INTO `sys_loginfo` VALUES (74, '超级管理员-system', '127.0.0.1', '2019-04-15 17:05:02');
INSERT INTO `sys_loginfo` VALUES (75, '超级管理员-system', '127.0.0.1', '2019-04-15 17:05:12');
INSERT INTO `sys_loginfo` VALUES (76, '超级管理员-system', '127.0.0.1', '2019-04-15 17:10:22');
INSERT INTO `sys_loginfo` VALUES (77, '刘八-lb', '127.0.0.1', '2019-04-15 17:11:45');
INSERT INTO `sys_loginfo` VALUES (78, '刘八-lb', '127.0.0.1', '2019-04-15 17:28:50');
INSERT INTO `sys_loginfo` VALUES (79, '超级管理员-system', '127.0.0.1', '2019-04-15 17:29:13');
INSERT INTO `sys_loginfo` VALUES (80, '刘八-lb', '127.0.0.1', '2019-04-15 17:30:59');
INSERT INTO `sys_loginfo` VALUES (81, '刘八-lb', '127.0.0.1', '2019-04-15 17:32:42');
INSERT INTO `sys_loginfo` VALUES (82, '刘八-lb', '127.0.0.1', '2019-04-15 17:33:48');
INSERT INTO `sys_loginfo` VALUES (83, '刘八-lb', '127.0.0.1', '2019-04-15 17:34:17');
INSERT INTO `sys_loginfo` VALUES (84, '超级管理员-system', '127.0.0.1', '2019-04-15 17:36:40');
INSERT INTO `sys_loginfo` VALUES (85, '超级管理员-system', '127.0.0.1', '2019-04-15 17:47:21');
INSERT INTO `sys_loginfo` VALUES (86, '超级管理员-system', '127.0.0.1', '2019-04-15 17:54:10');
INSERT INTO `sys_loginfo` VALUES (87, '超级管理员-system', '127.0.0.1', '2019-04-15 17:55:52');
INSERT INTO `sys_loginfo` VALUES (88, '超级管理员-system', '127.0.0.1', '2019-04-16 09:26:01');
INSERT INTO `sys_loginfo` VALUES (89, '超级管理员-system', '127.0.0.1', '2019-04-16 09:26:25');
INSERT INTO `sys_loginfo` VALUES (90, '超级管理员-system', '127.0.0.1', '2019-04-16 09:46:54');
INSERT INTO `sys_loginfo` VALUES (91, '超级管理员-system', '127.0.0.1', '2019-04-16 10:07:48');
INSERT INTO `sys_loginfo` VALUES (92, '超级管理员-system', '127.0.0.1', '2019-04-16 10:10:30');
INSERT INTO `sys_loginfo` VALUES (93, '超级管理员-system', '127.0.0.1', '2019-04-16 10:14:29');
INSERT INTO `sys_loginfo` VALUES (94, '超级管理员-system', '127.0.0.1', '2019-04-16 10:15:04');
INSERT INTO `sys_loginfo` VALUES (95, '超级管理员-system', '127.0.0.1', '2019-04-16 10:15:58');
INSERT INTO `sys_loginfo` VALUES (96, '超级管理员-system', '127.0.0.1', '2019-04-16 10:28:14');
INSERT INTO `sys_loginfo` VALUES (97, '超级管理员-system', '127.0.0.1', '2019-04-16 10:32:42');
INSERT INTO `sys_loginfo` VALUES (98, '超级管理员-system', '127.0.0.1', '2019-04-16 10:33:03');
INSERT INTO `sys_loginfo` VALUES (99, '超级管理员-system', '127.0.0.1', '2019-04-16 11:02:01');
INSERT INTO `sys_loginfo` VALUES (100, '超级管理员-system', '127.0.0.1', '2019-04-16 11:03:09');
INSERT INTO `sys_loginfo` VALUES (101, '超级管理员-system', '127.0.0.1', '2019-04-16 11:13:42');
INSERT INTO `sys_loginfo` VALUES (102, '超级管理员-system', '127.0.0.1', '2019-04-16 11:24:55');
INSERT INTO `sys_loginfo` VALUES (104, '超级管理员-system', '127.0.0.1', '2019-08-14 01:11:34');
INSERT INTO `sys_loginfo` VALUES (105, '超级管理员-system', '127.0.0.1', '2019-08-14 01:24:03');
INSERT INTO `sys_loginfo` VALUES (106, '李四-ls', '127.0.0.1', '2019-08-14 01:25:47');
INSERT INTO `sys_loginfo` VALUES (107, '李四-ls', '127.0.0.1', '2019-08-14 01:26:41');
INSERT INTO `sys_loginfo` VALUES (108, '孙七-sq', '127.0.0.1', '2019-08-14 01:28:22');
INSERT INTO `sys_loginfo` VALUES (109, '刘八-lb', '127.0.0.1', '2019-08-14 01:28:32');
INSERT INTO `sys_loginfo` VALUES (110, '超级管理员-system', '127.0.0.1', '2019-08-14 01:46:18');
INSERT INTO `sys_loginfo` VALUES (111, '超级管理员-system', '127.0.0.1', '2019-08-14 02:18:44');
INSERT INTO `sys_loginfo` VALUES (112, '超级管理员-system', '127.0.0.1', '2019-08-14 02:32:06');
INSERT INTO `sys_loginfo` VALUES (113, '李四-ls', '127.0.0.1', '2019-08-14 03:00:19');
INSERT INTO `sys_loginfo` VALUES (114, '李四-ls', '127.0.0.1', '2019-08-14 03:00:56');
INSERT INTO `sys_loginfo` VALUES (115, '李四-ls', '127.0.0.1', '2019-08-14 03:01:31');
INSERT INTO `sys_loginfo` VALUES (116, '李四-ls', '127.0.0.1', '2019-08-14 03:01:39');
INSERT INTO `sys_loginfo` VALUES (117, '李四-ls', '127.0.0.1', '2019-08-14 03:02:25');
INSERT INTO `sys_loginfo` VALUES (118, '李四-ls', '127.0.0.1', '2019-08-14 03:04:57');
INSERT INTO `sys_loginfo` VALUES (119, '李四-ls', '127.0.0.1', '2019-08-14 03:07:19');
INSERT INTO `sys_loginfo` VALUES (120, '李四-ls', '127.0.0.1', '2019-08-14 03:07:54');
INSERT INTO `sys_loginfo` VALUES (121, '超级管理员-system', '127.0.0.1', '2019-08-14 03:13:06');
INSERT INTO `sys_loginfo` VALUES (122, '李四-ls', '127.0.0.1', '2019-08-14 03:14:46');
INSERT INTO `sys_loginfo` VALUES (123, '超级管理员-system', '127.0.0.1', '2019-08-14 06:03:47');
INSERT INTO `sys_loginfo` VALUES (124, '超级管理员-system', '127.0.0.1', '2019-08-14 07:20:12');
INSERT INTO `sys_loginfo` VALUES (125, '超级管理员-system', '127.0.0.1', '2019-08-14 07:23:05');
INSERT INTO `sys_loginfo` VALUES (126, '超级管理员-system', '127.0.0.1', '2019-08-14 07:25:30');
INSERT INTO `sys_loginfo` VALUES (127, '超级管理员-system', '127.0.0.1', '2019-08-14 07:26:34');
INSERT INTO `sys_loginfo` VALUES (128, '超级管理员-system', '127.0.0.1', '2019-08-14 07:27:22');
INSERT INTO `sys_loginfo` VALUES (129, '超级管理员-system', '127.0.0.1', '2019-08-14 07:27:51');
INSERT INTO `sys_loginfo` VALUES (130, '超级管理员-system', '127.0.0.1', '2019-08-14 08:22:05');
INSERT INTO `sys_loginfo` VALUES (131, '超级管理员-system', '127.0.0.1', '2019-08-14 08:43:53');
INSERT INTO `sys_loginfo` VALUES (132, '超级管理员-system', '127.0.0.1', '2019-08-14 08:45:55');
INSERT INTO `sys_loginfo` VALUES (133, '超级管理员-system', '127.0.0.1', '2019-08-14 08:47:13');
INSERT INTO `sys_loginfo` VALUES (134, '超级管理员-system', '127.0.0.1', '2019-08-14 09:35:20');
INSERT INTO `sys_loginfo` VALUES (135, '超级管理员-system', '127.0.0.1', '2019-08-14 09:41:02');
INSERT INTO `sys_loginfo` VALUES (136, '超级管理员-system', '127.0.0.1', '2019-08-14 09:44:04');
INSERT INTO `sys_loginfo` VALUES (137, '超级管理员-system', '127.0.0.1', '2019-08-14 09:50:27');
INSERT INTO `sys_loginfo` VALUES (138, '超级管理员-system', '127.0.0.1', '2019-08-14 09:56:57');
INSERT INTO `sys_loginfo` VALUES (139, '超级管理员-system', '127.0.0.1', '2019-08-14 09:59:02');
INSERT INTO `sys_loginfo` VALUES (140, '超级管理员-system', '127.0.0.1', '2019-08-16 01:05:37');
INSERT INTO `sys_loginfo` VALUES (141, '超级管理员-system', '127.0.0.1', '2019-08-16 02:01:44');
INSERT INTO `sys_loginfo` VALUES (142, '超级管理员-system', '127.0.0.1', '2019-08-16 02:05:57');
INSERT INTO `sys_loginfo` VALUES (143, '超级管理员-system', '127.0.0.1', '2019-08-16 02:07:04');
INSERT INTO `sys_loginfo` VALUES (144, '超级管理员-system', '127.0.0.1', '2019-08-16 02:20:02');
INSERT INTO `sys_loginfo` VALUES (145, '超级管理员-system', '127.0.0.1', '2019-08-16 02:20:20');
INSERT INTO `sys_loginfo` VALUES (146, '超级管理员-system', '127.0.0.1', '2019-08-16 02:21:42');
INSERT INTO `sys_loginfo` VALUES (147, '超级管理员-system', '127.0.0.1', '2019-08-16 03:37:37');
INSERT INTO `sys_loginfo` VALUES (148, '超级管理员-system', '127.0.0.1', '2019-08-16 03:52:40');
INSERT INTO `sys_loginfo` VALUES (149, '超级管理员-system', '127.0.0.1', '2019-08-16 03:59:37');
INSERT INTO `sys_loginfo` VALUES (150, '超级管理员-system', '127.0.0.1', '2019-08-16 06:11:45');
INSERT INTO `sys_loginfo` VALUES (151, '超级管理员-system', '127.0.0.1', '2019-08-16 06:23:27');
INSERT INTO `sys_loginfo` VALUES (152, '超级管理员-system', '127.0.0.1', '2019-08-16 06:50:31');
INSERT INTO `sys_loginfo` VALUES (153, '超级管理员-system', '127.0.0.1', '2019-08-16 06:54:49');
INSERT INTO `sys_loginfo` VALUES (154, '超级管理员-system', '127.0.0.1', '2019-08-16 07:00:48');
INSERT INTO `sys_loginfo` VALUES (155, '超级管理员-system', '127.0.0.1', '2019-08-16 07:01:18');
INSERT INTO `sys_loginfo` VALUES (156, '超级管理员-system', '127.0.0.1', '2019-08-16 07:03:35');
INSERT INTO `sys_loginfo` VALUES (157, '超级管理员-system', '127.0.0.1', '2019-08-16 07:09:55');
INSERT INTO `sys_loginfo` VALUES (158, '超级管理员-system', '127.0.0.1', '2019-08-16 07:46:09');
INSERT INTO `sys_loginfo` VALUES (159, '超级管理员-system', '127.0.0.1', '2019-08-16 08:17:59');
INSERT INTO `sys_loginfo` VALUES (160, '超级管理员-system', '127.0.0.1', '2019-08-16 08:22:29');
INSERT INTO `sys_loginfo` VALUES (161, '超级管理员-system', '127.0.0.1', '2019-08-16 08:23:32');
INSERT INTO `sys_loginfo` VALUES (162, '超级管理员-system', '127.0.0.1', '2019-08-16 08:26:48');
INSERT INTO `sys_loginfo` VALUES (163, '超级管理员-system', '127.0.0.1', '2019-08-16 08:31:19');
INSERT INTO `sys_loginfo` VALUES (164, '超级管理员-system', '127.0.0.1', '2019-08-16 08:55:36');
INSERT INTO `sys_loginfo` VALUES (165, '超级管理员-system', '127.0.0.1', '2019-08-16 08:55:59');
INSERT INTO `sys_loginfo` VALUES (166, '超级管理员-system', '127.0.0.1', '2019-08-16 08:56:53');
INSERT INTO `sys_loginfo` VALUES (167, '超级管理员-system', '127.0.0.1', '2019-08-16 08:57:42');
INSERT INTO `sys_loginfo` VALUES (168, '超级管理员-system', '127.0.0.1', '2019-08-16 09:00:47');
INSERT INTO `sys_loginfo` VALUES (169, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 01:38:40');
INSERT INTO `sys_loginfo` VALUES (170, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 01:51:21');
INSERT INTO `sys_loginfo` VALUES (171, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:02:20');
INSERT INTO `sys_loginfo` VALUES (172, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:03:39');
INSERT INTO `sys_loginfo` VALUES (173, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:10:09');
INSERT INTO `sys_loginfo` VALUES (174, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:16:26');
INSERT INTO `sys_loginfo` VALUES (175, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:18:04');
INSERT INTO `sys_loginfo` VALUES (176, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:24:24');
INSERT INTO `sys_loginfo` VALUES (177, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:32:13');
INSERT INTO `sys_loginfo` VALUES (178, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:33:14');
INSERT INTO `sys_loginfo` VALUES (179, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:33:54');
INSERT INTO `sys_loginfo` VALUES (180, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:46:30');
INSERT INTO `sys_loginfo` VALUES (181, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 02:48:34');
INSERT INTO `sys_loginfo` VALUES (182, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 03:07:19');
INSERT INTO `sys_loginfo` VALUES (183, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 03:19:29');
INSERT INTO `sys_loginfo` VALUES (184, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 09:52:51');
INSERT INTO `sys_loginfo` VALUES (185, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-21 09:56:28');
INSERT INTO `sys_loginfo` VALUES (186, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 00:09:00');
INSERT INTO `sys_loginfo` VALUES (187, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 00:24:25');
INSERT INTO `sys_loginfo` VALUES (188, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 00:30:55');
INSERT INTO `sys_loginfo` VALUES (189, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 00:37:18');
INSERT INTO `sys_loginfo` VALUES (190, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 01:17:30');
INSERT INTO `sys_loginfo` VALUES (191, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 01:23:20');
INSERT INTO `sys_loginfo` VALUES (192, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 01:26:06');
INSERT INTO `sys_loginfo` VALUES (193, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 01:27:31');
INSERT INTO `sys_loginfo` VALUES (194, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 01:33:49');
INSERT INTO `sys_loginfo` VALUES (195, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:13:14');
INSERT INTO `sys_loginfo` VALUES (196, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:16:18');
INSERT INTO `sys_loginfo` VALUES (197, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:23:08');
INSERT INTO `sys_loginfo` VALUES (198, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:27:36');
INSERT INTO `sys_loginfo` VALUES (199, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:29:09');
INSERT INTO `sys_loginfo` VALUES (200, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:29:44');
INSERT INTO `sys_loginfo` VALUES (201, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:32:45');
INSERT INTO `sys_loginfo` VALUES (202, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:34:43');
INSERT INTO `sys_loginfo` VALUES (203, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:36:24');
INSERT INTO `sys_loginfo` VALUES (204, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:38:19');
INSERT INTO `sys_loginfo` VALUES (205, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:39:27');
INSERT INTO `sys_loginfo` VALUES (206, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:40:20');
INSERT INTO `sys_loginfo` VALUES (207, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:43:01');
INSERT INTO `sys_loginfo` VALUES (208, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:44:13');
INSERT INTO `sys_loginfo` VALUES (209, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 02:56:56');
INSERT INTO `sys_loginfo` VALUES (210, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 10:17:56');
INSERT INTO `sys_loginfo` VALUES (211, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 10:19:41');
INSERT INTO `sys_loginfo` VALUES (212, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 10:26:41');
INSERT INTO `sys_loginfo` VALUES (213, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 10:33:49');
INSERT INTO `sys_loginfo` VALUES (214, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 10:39:02');
INSERT INTO `sys_loginfo` VALUES (215, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 11:56:09');
INSERT INTO `sys_loginfo` VALUES (216, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 11:58:24');
INSERT INTO `sys_loginfo` VALUES (217, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 12:05:55');
INSERT INTO `sys_loginfo` VALUES (218, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 12:41:15');
INSERT INTO `sys_loginfo` VALUES (219, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 12:54:36');
INSERT INTO `sys_loginfo` VALUES (220, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:02:20');
INSERT INTO `sys_loginfo` VALUES (221, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:08:39');
INSERT INTO `sys_loginfo` VALUES (222, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:11:22');
INSERT INTO `sys_loginfo` VALUES (223, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:13:39');
INSERT INTO `sys_loginfo` VALUES (224, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:20:17');
INSERT INTO `sys_loginfo` VALUES (225, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:21:00');
INSERT INTO `sys_loginfo` VALUES (226, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:32:41');
INSERT INTO `sys_loginfo` VALUES (227, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:35:10');
INSERT INTO `sys_loginfo` VALUES (228, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:37:50');
INSERT INTO `sys_loginfo` VALUES (229, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:38:58');
INSERT INTO `sys_loginfo` VALUES (230, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:41:10');
INSERT INTO `sys_loginfo` VALUES (231, '超级管理员-system', '127.0.0.1', '2019-10-22 13:43:29');
INSERT INTO `sys_loginfo` VALUES (232, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:47:06');
INSERT INTO `sys_loginfo` VALUES (233, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:49:07');
INSERT INTO `sys_loginfo` VALUES (234, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:49:50');
INSERT INTO `sys_loginfo` VALUES (235, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:51:09');
INSERT INTO `sys_loginfo` VALUES (236, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:53:04');
INSERT INTO `sys_loginfo` VALUES (237, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:53:36');
INSERT INTO `sys_loginfo` VALUES (238, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:54:42');
INSERT INTO `sys_loginfo` VALUES (239, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 13:55:47');
INSERT INTO `sys_loginfo` VALUES (240, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 14:00:18');
INSERT INTO `sys_loginfo` VALUES (241, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 14:01:38');
INSERT INTO `sys_loginfo` VALUES (242, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-22 14:02:31');
INSERT INTO `sys_loginfo` VALUES (243, '超级管理员-system', '127.0.0.1', '2019-10-22 14:18:07');
INSERT INTO `sys_loginfo` VALUES (244, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 07:59:55');
INSERT INTO `sys_loginfo` VALUES (245, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:02:26');
INSERT INTO `sys_loginfo` VALUES (246, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:03:37');
INSERT INTO `sys_loginfo` VALUES (247, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:05:33');
INSERT INTO `sys_loginfo` VALUES (248, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:29:34');
INSERT INTO `sys_loginfo` VALUES (249, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:35:41');
INSERT INTO `sys_loginfo` VALUES (250, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:43:38');
INSERT INTO `sys_loginfo` VALUES (251, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 08:51:12');
INSERT INTO `sys_loginfo` VALUES (252, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 09:55:07');
INSERT INTO `sys_loginfo` VALUES (253, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 09:56:34');
INSERT INTO `sys_loginfo` VALUES (254, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 09:58:41');
INSERT INTO `sys_loginfo` VALUES (255, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:12:19');
INSERT INTO `sys_loginfo` VALUES (256, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:15:02');
INSERT INTO `sys_loginfo` VALUES (257, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:37:16');
INSERT INTO `sys_loginfo` VALUES (258, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:41:59');
INSERT INTO `sys_loginfo` VALUES (259, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:44:00');
INSERT INTO `sys_loginfo` VALUES (260, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:47:21');
INSERT INTO `sys_loginfo` VALUES (261, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:50:54');
INSERT INTO `sys_loginfo` VALUES (262, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:53:28');
INSERT INTO `sys_loginfo` VALUES (263, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:57:50');
INSERT INTO `sys_loginfo` VALUES (264, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 10:59:49');
INSERT INTO `sys_loginfo` VALUES (265, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 11:02:39');
INSERT INTO `sys_loginfo` VALUES (266, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 11:06:05');
INSERT INTO `sys_loginfo` VALUES (267, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 11:07:25');
INSERT INTO `sys_loginfo` VALUES (268, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 11:08:51');
INSERT INTO `sys_loginfo` VALUES (269, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 11:16:30');
INSERT INTO `sys_loginfo` VALUES (270, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 11:28:34');
INSERT INTO `sys_loginfo` VALUES (271, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:04:14');
INSERT INTO `sys_loginfo` VALUES (272, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:05:50');
INSERT INTO `sys_loginfo` VALUES (273, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:35:23');
INSERT INTO `sys_loginfo` VALUES (274, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:39:25');
INSERT INTO `sys_loginfo` VALUES (275, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:40:59');
INSERT INTO `sys_loginfo` VALUES (276, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:42:40');
INSERT INTO `sys_loginfo` VALUES (277, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:48:00');
INSERT INTO `sys_loginfo` VALUES (278, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 12:50:14');
INSERT INTO `sys_loginfo` VALUES (279, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-23 13:00:41');
INSERT INTO `sys_loginfo` VALUES (280, '超级管理员-system', '218.92.211.174', '2019-10-23 14:17:00');
INSERT INTO `sys_loginfo` VALUES (281, '超级管理员-system', '222.188.28.110', '2019-10-23 15:34:47');
INSERT INTO `sys_loginfo` VALUES (282, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 00:30:49');
INSERT INTO `sys_loginfo` VALUES (283, '超级管理员-system', '222.188.28.110', '2019-10-24 01:04:44');
INSERT INTO `sys_loginfo` VALUES (284, '超级管理员-system', '222.188.28.110', '2019-10-24 03:38:44');
INSERT INTO `sys_loginfo` VALUES (285, '超级管理员-system', '218.92.211.174', '2019-10-24 03:50:05');
INSERT INTO `sys_loginfo` VALUES (286, '超级管理员-system', '222.188.28.110', '2019-10-24 06:40:21');
INSERT INTO `sys_loginfo` VALUES (287, '超级管理员-system', '222.188.28.110', '2019-10-24 07:04:52');
INSERT INTO `sys_loginfo` VALUES (288, '超级管理员-system', '218.92.211.174', '2019-10-24 07:36:42');
INSERT INTO `sys_loginfo` VALUES (289, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 08:00:31');
INSERT INTO `sys_loginfo` VALUES (290, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 08:03:06');
INSERT INTO `sys_loginfo` VALUES (291, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 08:18:07');
INSERT INTO `sys_loginfo` VALUES (292, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 08:24:35');
INSERT INTO `sys_loginfo` VALUES (293, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 09:16:47');
INSERT INTO `sys_loginfo` VALUES (294, '超级管理员-system', '222.188.28.110', '2019-10-24 09:26:36');
INSERT INTO `sys_loginfo` VALUES (295, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 09:27:52');
INSERT INTO `sys_loginfo` VALUES (296, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 09:29:45');
INSERT INTO `sys_loginfo` VALUES (297, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:03:20');
INSERT INTO `sys_loginfo` VALUES (298, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:26:19');
INSERT INTO `sys_loginfo` VALUES (299, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:31:45');
INSERT INTO `sys_loginfo` VALUES (300, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:34:58');
INSERT INTO `sys_loginfo` VALUES (301, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:41:22');
INSERT INTO `sys_loginfo` VALUES (302, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:42:48');
INSERT INTO `sys_loginfo` VALUES (303, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:45:04');
INSERT INTO `sys_loginfo` VALUES (304, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:52:45');
INSERT INTO `sys_loginfo` VALUES (305, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 10:53:58');
INSERT INTO `sys_loginfo` VALUES (306, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 11:08:46');
INSERT INTO `sys_loginfo` VALUES (307, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 11:35:04');
INSERT INTO `sys_loginfo` VALUES (308, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 11:39:01');
INSERT INTO `sys_loginfo` VALUES (309, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 12:37:40');
INSERT INTO `sys_loginfo` VALUES (310, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 13:04:31');
INSERT INTO `sys_loginfo` VALUES (311, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 13:10:37');
INSERT INTO `sys_loginfo` VALUES (312, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-24 13:12:56');
INSERT INTO `sys_loginfo` VALUES (313, '超级管理员-system', '218.92.211.174', '2019-10-24 13:20:08');
INSERT INTO `sys_loginfo` VALUES (314, '超级管理员-system', '222.188.28.110', '2019-10-24 14:30:55');
INSERT INTO `sys_loginfo` VALUES (315, '超级管理员-system', '222.188.28.110', '2019-10-25 00:58:47');
INSERT INTO `sys_loginfo` VALUES (316, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 01:24:25');
INSERT INTO `sys_loginfo` VALUES (317, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 01:39:08');
INSERT INTO `sys_loginfo` VALUES (318, '超级管理员-system', '222.188.28.110', '2019-10-25 02:07:46');
INSERT INTO `sys_loginfo` VALUES (319, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 04:02:40');
INSERT INTO `sys_loginfo` VALUES (320, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 04:04:07');
INSERT INTO `sys_loginfo` VALUES (321, '超级管理员-system', '222.188.28.110', '2019-10-25 06:30:17');
INSERT INTO `sys_loginfo` VALUES (322, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 06:34:29');
INSERT INTO `sys_loginfo` VALUES (323, '超级管理员-system', '222.188.28.110', '2019-10-25 06:35:23');
INSERT INTO `sys_loginfo` VALUES (324, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 06:46:56');
INSERT INTO `sys_loginfo` VALUES (325, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 07:09:40');
INSERT INTO `sys_loginfo` VALUES (326, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 07:15:59');
INSERT INTO `sys_loginfo` VALUES (327, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 07:19:35');
INSERT INTO `sys_loginfo` VALUES (328, '超级管理员-system', '127.0.0.1', '2019-10-25 07:26:58');
INSERT INTO `sys_loginfo` VALUES (329, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 07:40:32');
INSERT INTO `sys_loginfo` VALUES (330, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 07:43:51');
INSERT INTO `sys_loginfo` VALUES (331, '超级管理员-system', '117.136.19.151', '2019-10-25 08:03:28');
INSERT INTO `sys_loginfo` VALUES (332, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 08:07:04');
INSERT INTO `sys_loginfo` VALUES (333, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 08:42:13');
INSERT INTO `sys_loginfo` VALUES (334, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 08:47:18');
INSERT INTO `sys_loginfo` VALUES (335, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 09:43:09');
INSERT INTO `sys_loginfo` VALUES (336, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 09:46:10');
INSERT INTO `sys_loginfo` VALUES (337, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 09:48:00');
INSERT INTO `sys_loginfo` VALUES (338, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 09:52:06');
INSERT INTO `sys_loginfo` VALUES (339, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 10:20:57');
INSERT INTO `sys_loginfo` VALUES (340, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 10:35:35');
INSERT INTO `sys_loginfo` VALUES (341, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 10:51:44');
INSERT INTO `sys_loginfo` VALUES (342, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 10:53:51');
INSERT INTO `sys_loginfo` VALUES (343, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 10:56:14');
INSERT INTO `sys_loginfo` VALUES (344, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 10:59:09');
INSERT INTO `sys_loginfo` VALUES (345, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 11:34:25');
INSERT INTO `sys_loginfo` VALUES (346, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-25 11:35:54');
INSERT INTO `sys_loginfo` VALUES (347, '超级管理员-system', '218.92.211.174', '2019-10-25 12:22:03');
INSERT INTO `sys_loginfo` VALUES (348, '超级管理员-system', '222.188.28.110', '2019-10-25 15:32:37');
INSERT INTO `sys_loginfo` VALUES (349, '超级管理员-system', '222.188.28.110', '2019-10-26 01:41:35');
INSERT INTO `sys_loginfo` VALUES (350, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 00:55:56');
INSERT INTO `sys_loginfo` VALUES (351, '超级管理员-system', '49.69.93.173', '2019-10-28 01:00:37');
INSERT INTO `sys_loginfo` VALUES (352, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:01:29');
INSERT INTO `sys_loginfo` VALUES (353, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:02:21');
INSERT INTO `sys_loginfo` VALUES (354, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:06:34');
INSERT INTO `sys_loginfo` VALUES (355, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:13:26');
INSERT INTO `sys_loginfo` VALUES (356, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:17:29');
INSERT INTO `sys_loginfo` VALUES (357, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:52:48');
INSERT INTO `sys_loginfo` VALUES (358, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:53:33');
INSERT INTO `sys_loginfo` VALUES (359, '超级管理员-system', '49.69.93.173', '2019-10-28 02:55:26');
INSERT INTO `sys_loginfo` VALUES (360, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:56:45');
INSERT INTO `sys_loginfo` VALUES (361, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 02:57:55');
INSERT INTO `sys_loginfo` VALUES (362, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 03:17:06');
INSERT INTO `sys_loginfo` VALUES (363, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 03:18:04');
INSERT INTO `sys_loginfo` VALUES (364, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 03:21:06');
INSERT INTO `sys_loginfo` VALUES (365, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 03:28:51');
INSERT INTO `sys_loginfo` VALUES (366, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 03:38:59');
INSERT INTO `sys_loginfo` VALUES (367, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 03:44:02');
INSERT INTO `sys_loginfo` VALUES (368, '超级管理员-system', '49.69.93.173', '2019-10-28 06:34:20');
INSERT INTO `sys_loginfo` VALUES (369, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 09:22:49');
INSERT INTO `sys_loginfo` VALUES (370, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 10:13:13');
INSERT INTO `sys_loginfo` VALUES (371, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 10:19:41');
INSERT INTO `sys_loginfo` VALUES (372, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 10:20:38');
INSERT INTO `sys_loginfo` VALUES (373, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 10:21:06');
INSERT INTO `sys_loginfo` VALUES (374, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 11:42:20');
INSERT INTO `sys_loginfo` VALUES (375, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 13:06:57');
INSERT INTO `sys_loginfo` VALUES (376, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-28 13:08:13');
INSERT INTO `sys_loginfo` VALUES (377, '超级管理员-system', '218.92.211.174', '2019-10-28 13:22:53');
INSERT INTO `sys_loginfo` VALUES (378, '超级管理员-system', '49.69.93.173', '2019-10-28 16:08:37');
INSERT INTO `sys_loginfo` VALUES (379, '超级管理员-system', '49.69.93.173', '2019-10-29 00:47:42');
INSERT INTO `sys_loginfo` VALUES (380, '超级管理员-system', '106.111.182.179', '2019-10-29 07:30:52');
INSERT INTO `sys_loginfo` VALUES (381, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 08:40:27');
INSERT INTO `sys_loginfo` VALUES (382, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 08:40:27');
INSERT INTO `sys_loginfo` VALUES (383, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 09:33:04');
INSERT INTO `sys_loginfo` VALUES (384, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 10:04:00');
INSERT INTO `sys_loginfo` VALUES (385, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 10:30:36');
INSERT INTO `sys_loginfo` VALUES (386, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 11:08:17');
INSERT INTO `sys_loginfo` VALUES (387, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 11:20:09');
INSERT INTO `sys_loginfo` VALUES (388, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 11:23:18');
INSERT INTO `sys_loginfo` VALUES (389, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 11:48:48');
INSERT INTO `sys_loginfo` VALUES (390, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 11:57:39');
INSERT INTO `sys_loginfo` VALUES (391, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 11:58:34');
INSERT INTO `sys_loginfo` VALUES (392, '超级管理员-system', '218.92.211.174', '2019-10-29 12:07:20');
INSERT INTO `sys_loginfo` VALUES (393, '超级管理员-system', '106.111.182.179', '2019-10-29 15:53:38');
INSERT INTO `sys_loginfo` VALUES (394, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-29 23:58:29');
INSERT INTO `sys_loginfo` VALUES (395, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 00:24:01');
INSERT INTO `sys_loginfo` VALUES (396, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 00:42:51');
INSERT INTO `sys_loginfo` VALUES (397, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 00:49:39');
INSERT INTO `sys_loginfo` VALUES (398, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 01:15:03');
INSERT INTO `sys_loginfo` VALUES (399, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 01:33:07');
INSERT INTO `sys_loginfo` VALUES (400, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 01:35:54');
INSERT INTO `sys_loginfo` VALUES (401, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 01:48:40');
INSERT INTO `sys_loginfo` VALUES (402, '小小明-xiaoxiaoming', '0:0:0:0:0:0:0:1', '2019-10-30 01:50:13');
INSERT INTO `sys_loginfo` VALUES (403, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 02:04:21');
INSERT INTO `sys_loginfo` VALUES (404, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 02:05:58');
INSERT INTO `sys_loginfo` VALUES (405, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 02:10:35');
INSERT INTO `sys_loginfo` VALUES (406, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 02:39:22');
INSERT INTO `sys_loginfo` VALUES (407, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 02:45:19');
INSERT INTO `sys_loginfo` VALUES (408, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 02:54:35');
INSERT INTO `sys_loginfo` VALUES (409, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:01:13');
INSERT INTO `sys_loginfo` VALUES (410, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:05:57');
INSERT INTO `sys_loginfo` VALUES (411, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:08:21');
INSERT INTO `sys_loginfo` VALUES (412, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:12:10');
INSERT INTO `sys_loginfo` VALUES (413, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:14:25');
INSERT INTO `sys_loginfo` VALUES (414, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:15:40');
INSERT INTO `sys_loginfo` VALUES (415, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:20:05');
INSERT INTO `sys_loginfo` VALUES (416, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:25:00');
INSERT INTO `sys_loginfo` VALUES (417, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:26:59');
INSERT INTO `sys_loginfo` VALUES (418, '超级管理员-system', '218.92.211.174', '2019-10-30 03:26:59');
INSERT INTO `sys_loginfo` VALUES (419, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 03:32:10');
INSERT INTO `sys_loginfo` VALUES (420, '超级管理员-system', '222.188.28.148', '2019-10-30 07:38:23');
INSERT INTO `sys_loginfo` VALUES (421, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 08:36:02');
INSERT INTO `sys_loginfo` VALUES (422, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 08:43:26');
INSERT INTO `sys_loginfo` VALUES (423, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 08:47:44');
INSERT INTO `sys_loginfo` VALUES (424, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 08:51:53');
INSERT INTO `sys_loginfo` VALUES (425, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 08:53:48');
INSERT INTO `sys_loginfo` VALUES (426, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 09:54:43');
INSERT INTO `sys_loginfo` VALUES (427, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 10:18:40');
INSERT INTO `sys_loginfo` VALUES (428, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 11:08:30');
INSERT INTO `sys_loginfo` VALUES (429, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 11:19:05');
INSERT INTO `sys_loginfo` VALUES (430, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 11:19:54');
INSERT INTO `sys_loginfo` VALUES (431, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 11:24:35');
INSERT INTO `sys_loginfo` VALUES (432, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 11:27:25');
INSERT INTO `sys_loginfo` VALUES (433, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-30 11:28:28');
INSERT INTO `sys_loginfo` VALUES (434, '超级管理员-system', '218.92.211.174', '2019-10-30 11:40:22');
INSERT INTO `sys_loginfo` VALUES (435, '超级管理员-system', '218.92.211.174', '2019-10-30 11:42:52');
INSERT INTO `sys_loginfo` VALUES (436, '超级管理员-system', '222.188.28.148', '2019-10-30 16:22:36');
INSERT INTO `sys_loginfo` VALUES (437, '超级管理员-system', '222.188.28.148', '2019-10-31 02:18:18');
INSERT INTO `sys_loginfo` VALUES (438, '超级管理员-system', '222.188.28.148', '2019-10-31 03:18:20');
INSERT INTO `sys_loginfo` VALUES (439, '超级管理员-system', '222.188.28.148', '2019-10-31 06:18:17');
INSERT INTO `sys_loginfo` VALUES (440, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 07:23:49');
INSERT INTO `sys_loginfo` VALUES (441, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 07:57:14');
INSERT INTO `sys_loginfo` VALUES (442, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 08:29:01');
INSERT INTO `sys_loginfo` VALUES (443, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 08:45:36');
INSERT INTO `sys_loginfo` VALUES (444, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 08:53:55');
INSERT INTO `sys_loginfo` VALUES (445, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 08:59:08');
INSERT INTO `sys_loginfo` VALUES (446, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:02:39');
INSERT INTO `sys_loginfo` VALUES (447, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:09:47');
INSERT INTO `sys_loginfo` VALUES (448, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:32:00');
INSERT INTO `sys_loginfo` VALUES (449, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:40:34');
INSERT INTO `sys_loginfo` VALUES (450, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:41:32');
INSERT INTO `sys_loginfo` VALUES (451, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:43:44');
INSERT INTO `sys_loginfo` VALUES (452, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:46:13');
INSERT INTO `sys_loginfo` VALUES (453, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 09:54:27');
INSERT INTO `sys_loginfo` VALUES (454, '超级管理员-system', '218.92.211.174', '2019-10-31 10:23:33');
INSERT INTO `sys_loginfo` VALUES (455, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 10:56:37');
INSERT INTO `sys_loginfo` VALUES (456, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 10:58:58');
INSERT INTO `sys_loginfo` VALUES (457, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:00:55');
INSERT INTO `sys_loginfo` VALUES (458, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:03:00');
INSERT INTO `sys_loginfo` VALUES (459, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:04:31');
INSERT INTO `sys_loginfo` VALUES (460, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:08:06');
INSERT INTO `sys_loginfo` VALUES (461, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:09:36');
INSERT INTO `sys_loginfo` VALUES (462, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:48:52');
INSERT INTO `sys_loginfo` VALUES (463, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:50:45');
INSERT INTO `sys_loginfo` VALUES (464, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:51:03');
INSERT INTO `sys_loginfo` VALUES (465, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:54:58');
INSERT INTO `sys_loginfo` VALUES (466, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:56:54');
INSERT INTO `sys_loginfo` VALUES (467, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 11:59:58');
INSERT INTO `sys_loginfo` VALUES (468, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:01:15');
INSERT INTO `sys_loginfo` VALUES (469, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:01:51');
INSERT INTO `sys_loginfo` VALUES (470, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:03:41');
INSERT INTO `sys_loginfo` VALUES (471, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:04:24');
INSERT INTO `sys_loginfo` VALUES (472, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:05:28');
INSERT INTO `sys_loginfo` VALUES (473, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:22:06');
INSERT INTO `sys_loginfo` VALUES (474, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:22:59');
INSERT INTO `sys_loginfo` VALUES (475, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:30:15');
INSERT INTO `sys_loginfo` VALUES (476, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:32:22');
INSERT INTO `sys_loginfo` VALUES (477, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:37:37');
INSERT INTO `sys_loginfo` VALUES (478, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:45:19');
INSERT INTO `sys_loginfo` VALUES (479, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 12:47:51');
INSERT INTO `sys_loginfo` VALUES (480, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 13:00:46');
INSERT INTO `sys_loginfo` VALUES (481, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 13:02:08');
INSERT INTO `sys_loginfo` VALUES (482, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-10-31 13:06:12');
INSERT INTO `sys_loginfo` VALUES (483, '超级管理员-system', '218.92.211.174', '2019-10-31 13:19:59');
INSERT INTO `sys_loginfo` VALUES (484, '超级管理员-system', '218.92.211.174', '2019-10-31 13:21:11');
INSERT INTO `sys_loginfo` VALUES (485, '超级管理员-system', '218.92.211.174', '2019-10-31 13:24:17');
INSERT INTO `sys_loginfo` VALUES (486, '超级管理员-system', '222.188.28.148', '2019-10-31 16:41:20');
INSERT INTO `sys_loginfo` VALUES (487, '超级管理员-system', '218.92.211.174', '2019-11-01 00:36:41');
INSERT INTO `sys_loginfo` VALUES (488, '超级管理员-system', '222.188.28.148', '2019-11-01 00:38:22');
INSERT INTO `sys_loginfo` VALUES (489, '超级管理员-system', '222.188.28.148', '2019-11-01 00:45:55');
INSERT INTO `sys_loginfo` VALUES (490, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 01:00:20');
INSERT INTO `sys_loginfo` VALUES (491, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 01:49:17');
INSERT INTO `sys_loginfo` VALUES (492, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 02:05:19');
INSERT INTO `sys_loginfo` VALUES (493, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 02:53:54');
INSERT INTO `sys_loginfo` VALUES (494, '超级管理员-system', '218.92.211.174', '2019-11-01 02:59:29');
INSERT INTO `sys_loginfo` VALUES (495, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:07:56');
INSERT INTO `sys_loginfo` VALUES (496, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:12:09');
INSERT INTO `sys_loginfo` VALUES (497, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:14:17');
INSERT INTO `sys_loginfo` VALUES (498, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:18:45');
INSERT INTO `sys_loginfo` VALUES (499, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:20:33');
INSERT INTO `sys_loginfo` VALUES (500, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:21:50');
INSERT INTO `sys_loginfo` VALUES (501, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:27:42');
INSERT INTO `sys_loginfo` VALUES (502, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:37:40');
INSERT INTO `sys_loginfo` VALUES (503, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:39:29');
INSERT INTO `sys_loginfo` VALUES (504, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:41:20');
INSERT INTO `sys_loginfo` VALUES (505, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-01 03:42:51');
INSERT INTO `sys_loginfo` VALUES (506, '超级管理员-system', '218.92.211.174', '2019-11-01 03:52:26');
INSERT INTO `sys_loginfo` VALUES (507, '超级管理员-system', '222.188.28.211', '2019-11-01 07:35:09');
INSERT INTO `sys_loginfo` VALUES (508, '超级管理员-system', '222.188.28.211', '2019-11-01 08:13:36');
INSERT INTO `sys_loginfo` VALUES (509, '超级管理员-system', '218.92.211.174', '2019-11-01 11:25:27');
INSERT INTO `sys_loginfo` VALUES (510, '超级管理员-system', '222.188.28.211', '2019-11-01 12:20:14');
INSERT INTO `sys_loginfo` VALUES (511, '超级管理员-system', '222.188.28.211', '2019-11-02 01:56:20');
INSERT INTO `sys_loginfo` VALUES (512, '超级管理员-system', '222.188.28.211', '2019-11-02 02:55:23');
INSERT INTO `sys_loginfo` VALUES (513, '超级管理员-system', '222.188.28.211', '2019-11-02 06:33:21');
INSERT INTO `sys_loginfo` VALUES (514, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 14:12:06');
INSERT INTO `sys_loginfo` VALUES (515, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 14:19:06');
INSERT INTO `sys_loginfo` VALUES (516, '超级管理员-system', '222.188.28.211', '2019-11-02 14:33:23');
INSERT INTO `sys_loginfo` VALUES (517, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 15:36:12');
INSERT INTO `sys_loginfo` VALUES (518, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 15:37:33');
INSERT INTO `sys_loginfo` VALUES (519, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 15:38:05');
INSERT INTO `sys_loginfo` VALUES (520, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 15:40:11');
INSERT INTO `sys_loginfo` VALUES (521, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 15:54:33');
INSERT INTO `sys_loginfo` VALUES (522, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 16:00:52');
INSERT INTO `sys_loginfo` VALUES (523, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 16:33:27');
INSERT INTO `sys_loginfo` VALUES (524, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 16:49:07');
INSERT INTO `sys_loginfo` VALUES (525, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-02 16:51:46');
INSERT INTO `sys_loginfo` VALUES (526, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-03 10:57:22');
INSERT INTO `sys_loginfo` VALUES (527, '超级管理员-system', '106.111.178.250', '2019-11-03 11:33:41');
INSERT INTO `sys_loginfo` VALUES (528, '超级管理员-system', '218.92.211.174', '2019-11-03 12:28:53');
INSERT INTO `sys_loginfo` VALUES (529, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-03 12:42:47');
INSERT INTO `sys_loginfo` VALUES (530, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-03 13:35:54');
INSERT INTO `sys_loginfo` VALUES (531, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-03 13:38:06');
INSERT INTO `sys_loginfo` VALUES (532, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-03 13:46:26');
INSERT INTO `sys_loginfo` VALUES (533, '超级管理员-system', '106.111.178.250', '2019-11-03 13:54:25');
INSERT INTO `sys_loginfo` VALUES (534, '超级管理员-system', '218.92.211.174', '2019-11-03 14:02:22');
INSERT INTO `sys_loginfo` VALUES (535, '超级管理员-system', '218.92.211.174', '2019-11-04 02:22:38');
INSERT INTO `sys_loginfo` VALUES (536, '超级管理员-system', '218.92.211.174', '2019-11-04 02:29:46');
INSERT INTO `sys_loginfo` VALUES (537, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 05:40:50');
INSERT INTO `sys_loginfo` VALUES (538, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 05:44:22');
INSERT INTO `sys_loginfo` VALUES (539, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 05:59:20');
INSERT INTO `sys_loginfo` VALUES (540, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 06:26:07');
INSERT INTO `sys_loginfo` VALUES (541, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 06:27:06');
INSERT INTO `sys_loginfo` VALUES (542, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 06:30:26');
INSERT INTO `sys_loginfo` VALUES (543, '超级管理员-system', '106.111.178.250', '2019-11-04 07:59:15');
INSERT INTO `sys_loginfo` VALUES (544, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 09:08:18');
INSERT INTO `sys_loginfo` VALUES (545, '超级管理员-system', '106.111.178.250', '2019-11-04 09:16:09');
INSERT INTO `sys_loginfo` VALUES (546, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 09:37:30');
INSERT INTO `sys_loginfo` VALUES (547, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 09:38:41');
INSERT INTO `sys_loginfo` VALUES (548, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 09:40:05');
INSERT INTO `sys_loginfo` VALUES (549, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 09:40:33');
INSERT INTO `sys_loginfo` VALUES (550, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 09:41:15');
INSERT INTO `sys_loginfo` VALUES (551, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 10:02:58');
INSERT INTO `sys_loginfo` VALUES (552, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 10:19:57');
INSERT INTO `sys_loginfo` VALUES (553, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 10:26:45');
INSERT INTO `sys_loginfo` VALUES (554, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 10:34:16');
INSERT INTO `sys_loginfo` VALUES (555, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 10:40:30');
INSERT INTO `sys_loginfo` VALUES (556, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 11:09:30');
INSERT INTO `sys_loginfo` VALUES (557, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 11:20:26');
INSERT INTO `sys_loginfo` VALUES (558, '超级管理员-system', '218.92.211.174', '2019-11-04 11:33:59');
INSERT INTO `sys_loginfo` VALUES (559, '超级管理员-system', '106.111.178.250', '2019-11-04 15:22:05');
INSERT INTO `sys_loginfo` VALUES (560, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-04 16:46:11');
INSERT INTO `sys_loginfo` VALUES (561, '超级管理员-system', '106.111.178.250', '2019-11-05 02:00:45');
INSERT INTO `sys_loginfo` VALUES (562, '超级管理员-system', '218.92.211.174', '2019-11-05 02:21:52');
INSERT INTO `sys_loginfo` VALUES (563, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 02:24:13');
INSERT INTO `sys_loginfo` VALUES (564, '超级管理员-system', '218.92.211.174', '2019-11-05 02:25:01');
INSERT INTO `sys_loginfo` VALUES (565, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 02:28:49');
INSERT INTO `sys_loginfo` VALUES (566, '超级管理员-system', '218.92.211.174', '2019-11-05 02:29:13');
INSERT INTO `sys_loginfo` VALUES (567, '超级管理员-system', '218.92.211.174', '2019-11-05 02:36:02');
INSERT INTO `sys_loginfo` VALUES (568, '超级管理员-system', '106.111.178.250', '2019-11-05 02:37:04');
INSERT INTO `sys_loginfo` VALUES (569, '超级管理员-system', '106.111.178.250', '2019-11-05 08:50:58');
INSERT INTO `sys_loginfo` VALUES (570, '超级管理员-system', '106.111.178.250', '2019-11-05 09:52:44');
INSERT INTO `sys_loginfo` VALUES (571, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 10:56:36');
INSERT INTO `sys_loginfo` VALUES (572, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 11:30:46');
INSERT INTO `sys_loginfo` VALUES (573, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 11:56:42');
INSERT INTO `sys_loginfo` VALUES (574, '超级管理员-system', '117.87.33.110', '2019-11-05 12:31:42');
INSERT INTO `sys_loginfo` VALUES (575, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 12:37:06');
INSERT INTO `sys_loginfo` VALUES (586, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 13:23:51');
INSERT INTO `sys_loginfo` VALUES (587, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 13:25:01');
INSERT INTO `sys_loginfo` VALUES (588, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 13:26:15');
INSERT INTO `sys_loginfo` VALUES (589, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 13:27:23');
INSERT INTO `sys_loginfo` VALUES (590, '超级管理员-system', '49.69.112.35', '2019-11-05 13:39:18');
INSERT INTO `sys_loginfo` VALUES (591, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 13:43:34');
INSERT INTO `sys_loginfo` VALUES (592, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 13:50:32');
INSERT INTO `sys_loginfo` VALUES (593, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 14:20:01');
INSERT INTO `sys_loginfo` VALUES (594, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 14:28:23');
INSERT INTO `sys_loginfo` VALUES (595, '超级管理员-system', '218.92.211.174', '2019-11-05 14:43:54');
INSERT INTO `sys_loginfo` VALUES (596, '超级管理员-system', '218.92.211.174', '2019-11-05 15:21:13');
INSERT INTO `sys_loginfo` VALUES (597, '超级管理员-system', '106.111.178.250', '2019-11-05 15:29:14');
INSERT INTO `sys_loginfo` VALUES (598, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:30:06');
INSERT INTO `sys_loginfo` VALUES (599, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:31:20');
INSERT INTO `sys_loginfo` VALUES (600, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:32:16');
INSERT INTO `sys_loginfo` VALUES (601, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:36:28');
INSERT INTO `sys_loginfo` VALUES (602, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:41:30');
INSERT INTO `sys_loginfo` VALUES (603, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:43:25');
INSERT INTO `sys_loginfo` VALUES (604, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:49:36');
INSERT INTO `sys_loginfo` VALUES (605, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 15:54:52');
INSERT INTO `sys_loginfo` VALUES (606, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:02:06');
INSERT INTO `sys_loginfo` VALUES (607, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:07:35');
INSERT INTO `sys_loginfo` VALUES (608, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:10:09');
INSERT INTO `sys_loginfo` VALUES (609, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:10:55');
INSERT INTO `sys_loginfo` VALUES (610, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:12:12');
INSERT INTO `sys_loginfo` VALUES (611, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:14:51');
INSERT INTO `sys_loginfo` VALUES (612, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:18:33');
INSERT INTO `sys_loginfo` VALUES (613, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:19:52');
INSERT INTO `sys_loginfo` VALUES (614, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:21:59');
INSERT INTO `sys_loginfo` VALUES (615, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:24:20');
INSERT INTO `sys_loginfo` VALUES (616, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:24:54');
INSERT INTO `sys_loginfo` VALUES (617, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:27:39');
INSERT INTO `sys_loginfo` VALUES (618, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:36:41');
INSERT INTO `sys_loginfo` VALUES (619, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:37:40');
INSERT INTO `sys_loginfo` VALUES (620, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:40:14');
INSERT INTO `sys_loginfo` VALUES (621, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:41:54');
INSERT INTO `sys_loginfo` VALUES (622, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:43:00');
INSERT INTO `sys_loginfo` VALUES (623, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:44:10');
INSERT INTO `sys_loginfo` VALUES (624, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:48:21');
INSERT INTO `sys_loginfo` VALUES (625, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:52:39');
INSERT INTO `sys_loginfo` VALUES (626, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:55:09');
INSERT INTO `sys_loginfo` VALUES (627, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 16:58:41');
INSERT INTO `sys_loginfo` VALUES (628, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 17:00:15');
INSERT INTO `sys_loginfo` VALUES (629, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-05 17:04:55');
INSERT INTO `sys_loginfo` VALUES (630, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 00:40:12');
INSERT INTO `sys_loginfo` VALUES (631, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 00:51:10');
INSERT INTO `sys_loginfo` VALUES (632, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 00:52:08');
INSERT INTO `sys_loginfo` VALUES (633, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 00:54:59');
INSERT INTO `sys_loginfo` VALUES (634, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 01:01:24');
INSERT INTO `sys_loginfo` VALUES (635, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 01:51:20');
INSERT INTO `sys_loginfo` VALUES (636, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 01:52:36');
INSERT INTO `sys_loginfo` VALUES (637, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 01:53:10');
INSERT INTO `sys_loginfo` VALUES (638, '超级管理员-system', '117.136.46.120', '2019-11-06 02:04:49');
INSERT INTO `sys_loginfo` VALUES (639, '超级管理员-system', '117.136.46.120', '2019-11-06 03:10:17');
INSERT INTO `sys_loginfo` VALUES (640, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 03:30:21');
INSERT INTO `sys_loginfo` VALUES (641, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 03:41:28');
INSERT INTO `sys_loginfo` VALUES (642, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 04:29:25');
INSERT INTO `sys_loginfo` VALUES (643, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 04:30:07');
INSERT INTO `sys_loginfo` VALUES (644, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 04:34:28');
INSERT INTO `sys_loginfo` VALUES (645, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 06:57:06');
INSERT INTO `sys_loginfo` VALUES (646, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:06:54');
INSERT INTO `sys_loginfo` VALUES (647, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:08:39');
INSERT INTO `sys_loginfo` VALUES (648, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:11:47');
INSERT INTO `sys_loginfo` VALUES (649, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:14:27');
INSERT INTO `sys_loginfo` VALUES (650, '超级管理员-system', '218.92.211.174', '2019-11-06 07:23:53');
INSERT INTO `sys_loginfo` VALUES (651, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:24:04');
INSERT INTO `sys_loginfo` VALUES (652, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:29:21');
INSERT INTO `sys_loginfo` VALUES (653, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:55:37');
INSERT INTO `sys_loginfo` VALUES (654, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 07:57:10');
INSERT INTO `sys_loginfo` VALUES (655, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 08:01:44');
INSERT INTO `sys_loginfo` VALUES (656, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 08:02:47');
INSERT INTO `sys_loginfo` VALUES (657, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 08:09:06');
INSERT INTO `sys_loginfo` VALUES (658, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 08:12:21');
INSERT INTO `sys_loginfo` VALUES (659, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:31:10');
INSERT INTO `sys_loginfo` VALUES (660, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:32:32');
INSERT INTO `sys_loginfo` VALUES (661, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:34:00');
INSERT INTO `sys_loginfo` VALUES (662, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:37:58');
INSERT INTO `sys_loginfo` VALUES (663, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:40:00');
INSERT INTO `sys_loginfo` VALUES (664, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:45:00');
INSERT INTO `sys_loginfo` VALUES (665, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:49:07');
INSERT INTO `sys_loginfo` VALUES (666, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-06 09:58:23');
INSERT INTO `sys_loginfo` VALUES (667, '超级管理员-system', '106.111.178.250', '2019-11-07 01:09:45');
INSERT INTO `sys_loginfo` VALUES (668, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 01:43:57');
INSERT INTO `sys_loginfo` VALUES (669, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 01:53:40');
INSERT INTO `sys_loginfo` VALUES (670, '超级管理员-system', '218.92.211.174', '2019-11-07 02:13:41');
INSERT INTO `sys_loginfo` VALUES (671, '超级管理员-system', '218.92.211.174', '2019-11-07 03:03:51');
INSERT INTO `sys_loginfo` VALUES (672, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 11:55:19');
INSERT INTO `sys_loginfo` VALUES (673, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 11:57:22');
INSERT INTO `sys_loginfo` VALUES (674, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:14:53');
INSERT INTO `sys_loginfo` VALUES (675, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:21:54');
INSERT INTO `sys_loginfo` VALUES (676, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:23:25');
INSERT INTO `sys_loginfo` VALUES (677, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:26:53');
INSERT INTO `sys_loginfo` VALUES (678, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:32:06');
INSERT INTO `sys_loginfo` VALUES (679, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:34:15');
INSERT INTO `sys_loginfo` VALUES (680, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 12:37:09');
INSERT INTO `sys_loginfo` VALUES (681, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 15:32:00');
INSERT INTO `sys_loginfo` VALUES (682, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 15:41:20');
INSERT INTO `sys_loginfo` VALUES (683, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 16:10:12');
INSERT INTO `sys_loginfo` VALUES (684, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 16:14:32');
INSERT INTO `sys_loginfo` VALUES (685, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 16:53:29');
INSERT INTO `sys_loginfo` VALUES (686, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 17:10:10');
INSERT INTO `sys_loginfo` VALUES (687, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 17:14:39');
INSERT INTO `sys_loginfo` VALUES (688, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 17:17:28');
INSERT INTO `sys_loginfo` VALUES (689, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 17:29:32');
INSERT INTO `sys_loginfo` VALUES (690, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-07 17:32:08');
INSERT INTO `sys_loginfo` VALUES (691, '超级管理员-system', '106.111.178.250', '2019-11-07 17:52:27');
INSERT INTO `sys_loginfo` VALUES (692, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 02:49:28');
INSERT INTO `sys_loginfo` VALUES (693, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 03:23:23');
INSERT INTO `sys_loginfo` VALUES (694, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 04:40:34');
INSERT INTO `sys_loginfo` VALUES (695, '超级管理员-system', '106.111.178.250', '2019-11-08 07:21:22');
INSERT INTO `sys_loginfo` VALUES (696, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 10:41:16');
INSERT INTO `sys_loginfo` VALUES (697, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 10:49:54');
INSERT INTO `sys_loginfo` VALUES (698, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 11:13:31');
INSERT INTO `sys_loginfo` VALUES (699, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 11:28:34');
INSERT INTO `sys_loginfo` VALUES (700, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 11:30:31');
INSERT INTO `sys_loginfo` VALUES (701, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 11:38:11');
INSERT INTO `sys_loginfo` VALUES (702, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 11:43:07');
INSERT INTO `sys_loginfo` VALUES (703, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 11:59:42');
INSERT INTO `sys_loginfo` VALUES (704, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:00:57');
INSERT INTO `sys_loginfo` VALUES (705, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:04:12');
INSERT INTO `sys_loginfo` VALUES (706, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:07:41');
INSERT INTO `sys_loginfo` VALUES (707, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:11:40');
INSERT INTO `sys_loginfo` VALUES (708, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:12:02');
INSERT INTO `sys_loginfo` VALUES (709, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:14:59');
INSERT INTO `sys_loginfo` VALUES (710, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:32:20');
INSERT INTO `sys_loginfo` VALUES (711, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 12:52:52');
INSERT INTO `sys_loginfo` VALUES (712, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:03:53');
INSERT INTO `sys_loginfo` VALUES (713, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:10:55');
INSERT INTO `sys_loginfo` VALUES (714, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:21:48');
INSERT INTO `sys_loginfo` VALUES (715, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:23:35');
INSERT INTO `sys_loginfo` VALUES (716, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:24:29');
INSERT INTO `sys_loginfo` VALUES (717, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:31:03');
INSERT INTO `sys_loginfo` VALUES (718, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:33:08');
INSERT INTO `sys_loginfo` VALUES (719, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:34:39');
INSERT INTO `sys_loginfo` VALUES (720, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:38:29');
INSERT INTO `sys_loginfo` VALUES (721, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:39:27');
INSERT INTO `sys_loginfo` VALUES (722, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:40:56');
INSERT INTO `sys_loginfo` VALUES (723, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:45:56');
INSERT INTO `sys_loginfo` VALUES (724, '超级管理员-system', '218.92.211.174', '2019-11-08 13:49:17');
INSERT INTO `sys_loginfo` VALUES (725, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:49:27');
INSERT INTO `sys_loginfo` VALUES (726, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 13:55:20');
INSERT INTO `sys_loginfo` VALUES (727, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 14:02:59');
INSERT INTO `sys_loginfo` VALUES (728, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 14:21:05');
INSERT INTO `sys_loginfo` VALUES (729, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 14:44:55');
INSERT INTO `sys_loginfo` VALUES (730, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 14:45:51');
INSERT INTO `sys_loginfo` VALUES (731, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 14:47:42');
INSERT INTO `sys_loginfo` VALUES (732, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 15:02:24');
INSERT INTO `sys_loginfo` VALUES (733, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-08 15:05:24');
INSERT INTO `sys_loginfo` VALUES (734, '超级管理员-system', '106.111.178.250', '2019-11-09 07:41:35');
INSERT INTO `sys_loginfo` VALUES (735, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-10 08:16:08');
INSERT INTO `sys_loginfo` VALUES (736, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-10 09:17:57');
INSERT INTO `sys_loginfo` VALUES (737, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 00:40:59');
INSERT INTO `sys_loginfo` VALUES (738, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 00:48:38');
INSERT INTO `sys_loginfo` VALUES (739, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 00:54:09');
INSERT INTO `sys_loginfo` VALUES (740, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 00:54:59');
INSERT INTO `sys_loginfo` VALUES (741, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 00:56:55');
INSERT INTO `sys_loginfo` VALUES (742, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 00:59:19');
INSERT INTO `sys_loginfo` VALUES (743, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 01:02:03');
INSERT INTO `sys_loginfo` VALUES (744, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 02:01:25');
INSERT INTO `sys_loginfo` VALUES (745, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 02:02:32');
INSERT INTO `sys_loginfo` VALUES (746, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 02:27:24');
INSERT INTO `sys_loginfo` VALUES (747, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 02:40:37');
INSERT INTO `sys_loginfo` VALUES (748, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 02:51:27');
INSERT INTO `sys_loginfo` VALUES (749, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 02:54:41');
INSERT INTO `sys_loginfo` VALUES (750, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 03:42:38');
INSERT INTO `sys_loginfo` VALUES (751, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 03:59:25');
INSERT INTO `sys_loginfo` VALUES (752, '超级管理员-system', '117.136.66.242', '2019-11-11 07:23:58');
INSERT INTO `sys_loginfo` VALUES (753, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:02:37');
INSERT INTO `sys_loginfo` VALUES (754, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:05:14');
INSERT INTO `sys_loginfo` VALUES (755, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:09:02');
INSERT INTO `sys_loginfo` VALUES (756, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:23:44');
INSERT INTO `sys_loginfo` VALUES (757, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:26:24');
INSERT INTO `sys_loginfo` VALUES (758, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:28:53');
INSERT INTO `sys_loginfo` VALUES (759, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:30:08');
INSERT INTO `sys_loginfo` VALUES (760, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 09:46:40');
INSERT INTO `sys_loginfo` VALUES (761, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:02:02');
INSERT INTO `sys_loginfo` VALUES (762, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:02:48');
INSERT INTO `sys_loginfo` VALUES (763, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:12:20');
INSERT INTO `sys_loginfo` VALUES (764, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:16:25');
INSERT INTO `sys_loginfo` VALUES (765, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:18:44');
INSERT INTO `sys_loginfo` VALUES (766, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:20:33');
INSERT INTO `sys_loginfo` VALUES (767, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:22:50');
INSERT INTO `sys_loginfo` VALUES (768, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:31:35');
INSERT INTO `sys_loginfo` VALUES (769, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:34:27');
INSERT INTO `sys_loginfo` VALUES (770, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:39:43');
INSERT INTO `sys_loginfo` VALUES (771, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:40:47');
INSERT INTO `sys_loginfo` VALUES (772, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:43:14');
INSERT INTO `sys_loginfo` VALUES (773, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:45:17');
INSERT INTO `sys_loginfo` VALUES (774, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:49:28');
INSERT INTO `sys_loginfo` VALUES (775, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:50:28');
INSERT INTO `sys_loginfo` VALUES (776, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:53:00');
INSERT INTO `sys_loginfo` VALUES (777, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:53:56');
INSERT INTO `sys_loginfo` VALUES (778, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:54:32');
INSERT INTO `sys_loginfo` VALUES (779, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 10:57:22');
INSERT INTO `sys_loginfo` VALUES (780, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:03:58');
INSERT INTO `sys_loginfo` VALUES (781, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:05:10');
INSERT INTO `sys_loginfo` VALUES (782, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:08:19');
INSERT INTO `sys_loginfo` VALUES (783, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:09:34');
INSERT INTO `sys_loginfo` VALUES (784, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:13:30');
INSERT INTO `sys_loginfo` VALUES (785, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:26:11');
INSERT INTO `sys_loginfo` VALUES (786, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:31:55');
INSERT INTO `sys_loginfo` VALUES (787, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:42:38');
INSERT INTO `sys_loginfo` VALUES (788, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:51:13');
INSERT INTO `sys_loginfo` VALUES (789, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:55:15');
INSERT INTO `sys_loginfo` VALUES (790, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 11:59:44');
INSERT INTO `sys_loginfo` VALUES (791, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:04:55');
INSERT INTO `sys_loginfo` VALUES (792, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:17:31');
INSERT INTO `sys_loginfo` VALUES (793, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:19:43');
INSERT INTO `sys_loginfo` VALUES (794, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:23:59');
INSERT INTO `sys_loginfo` VALUES (795, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:28:24');
INSERT INTO `sys_loginfo` VALUES (796, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:46:15');
INSERT INTO `sys_loginfo` VALUES (797, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:53:55');
INSERT INTO `sys_loginfo` VALUES (798, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 12:57:42');
INSERT INTO `sys_loginfo` VALUES (799, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:02:44');
INSERT INTO `sys_loginfo` VALUES (800, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:03:09');
INSERT INTO `sys_loginfo` VALUES (801, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:08:14');
INSERT INTO `sys_loginfo` VALUES (802, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:20:22');
INSERT INTO `sys_loginfo` VALUES (803, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:26:14');
INSERT INTO `sys_loginfo` VALUES (804, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:31:03');
INSERT INTO `sys_loginfo` VALUES (805, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:31:36');
INSERT INTO `sys_loginfo` VALUES (806, '超级管理员-system', '127.0.0.1', '2019-11-11 13:42:15');
INSERT INTO `sys_loginfo` VALUES (807, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:43:04');
INSERT INTO `sys_loginfo` VALUES (808, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:47:20');
INSERT INTO `sys_loginfo` VALUES (809, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:50:11');
INSERT INTO `sys_loginfo` VALUES (810, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:53:36');
INSERT INTO `sys_loginfo` VALUES (811, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:55:20');
INSERT INTO `sys_loginfo` VALUES (812, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-11 13:58:59');
INSERT INTO `sys_loginfo` VALUES (813, '超级管理员-system', '218.92.211.174', '2019-11-11 14:07:31');
INSERT INTO `sys_loginfo` VALUES (814, '超级管理员-system', '218.92.211.174', '2019-11-11 14:08:59');
INSERT INTO `sys_loginfo` VALUES (815, '超级管理员-system', '218.92.211.174', '2019-11-12 01:53:26');
INSERT INTO `sys_loginfo` VALUES (816, '超级管理员-system', '218.92.211.174', '2019-11-12 02:31:42');
INSERT INTO `sys_loginfo` VALUES (817, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 02:43:20');
INSERT INTO `sys_loginfo` VALUES (818, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 03:22:51');
INSERT INTO `sys_loginfo` VALUES (819, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 03:24:55');
INSERT INTO `sys_loginfo` VALUES (820, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 03:51:43');
INSERT INTO `sys_loginfo` VALUES (821, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 03:52:55');
INSERT INTO `sys_loginfo` VALUES (822, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 04:49:17');
INSERT INTO `sys_loginfo` VALUES (823, '超级管理员-system', '218.92.211.174', '2019-11-12 05:05:04');
INSERT INTO `sys_loginfo` VALUES (824, '超级管理员-system', '218.92.211.174', '2019-11-12 05:06:57');
INSERT INTO `sys_loginfo` VALUES (825, '超级管理员-system', '218.92.211.174', '2019-11-12 05:07:17');
INSERT INTO `sys_loginfo` VALUES (826, '超级管理员-system', '218.92.211.174', '2019-11-12 05:13:45');
INSERT INTO `sys_loginfo` VALUES (827, '超级管理员-system', '218.92.211.174', '2019-11-12 05:14:22');
INSERT INTO `sys_loginfo` VALUES (828, '超级管理员-system', '218.92.211.174', '2019-11-12 05:19:25');
INSERT INTO `sys_loginfo` VALUES (829, '超级管理员-system', '218.92.211.174', '2019-11-12 05:20:44');
INSERT INTO `sys_loginfo` VALUES (830, '超级管理员-system', '218.92.211.174', '2019-11-12 05:26:07');
INSERT INTO `sys_loginfo` VALUES (831, '超级管理员-system', '218.92.211.174', '2019-11-12 05:27:37');
INSERT INTO `sys_loginfo` VALUES (832, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:33:54');
INSERT INTO `sys_loginfo` VALUES (833, '超级管理员-system', '218.92.211.174', '2019-11-12 05:34:41');
INSERT INTO `sys_loginfo` VALUES (834, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:36:08');
INSERT INTO `sys_loginfo` VALUES (835, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:38:22');
INSERT INTO `sys_loginfo` VALUES (836, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:40:08');
INSERT INTO `sys_loginfo` VALUES (837, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:41:37');
INSERT INTO `sys_loginfo` VALUES (838, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:45:15');
INSERT INTO `sys_loginfo` VALUES (839, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:53:33');
INSERT INTO `sys_loginfo` VALUES (840, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 05:58:03');
INSERT INTO `sys_loginfo` VALUES (841, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:02:37');
INSERT INTO `sys_loginfo` VALUES (842, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:09:43');
INSERT INTO `sys_loginfo` VALUES (843, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:18:04');
INSERT INTO `sys_loginfo` VALUES (844, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:24:55');
INSERT INTO `sys_loginfo` VALUES (845, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:29:59');
INSERT INTO `sys_loginfo` VALUES (846, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:33:46');
INSERT INTO `sys_loginfo` VALUES (847, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:35:11');
INSERT INTO `sys_loginfo` VALUES (848, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:36:55');
INSERT INTO `sys_loginfo` VALUES (849, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:38:11');
INSERT INTO `sys_loginfo` VALUES (850, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:41:53');
INSERT INTO `sys_loginfo` VALUES (851, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:50:35');
INSERT INTO `sys_loginfo` VALUES (852, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:52:32');
INSERT INTO `sys_loginfo` VALUES (853, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 06:55:17');
INSERT INTO `sys_loginfo` VALUES (854, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:13:04');
INSERT INTO `sys_loginfo` VALUES (855, '超级管理员-system', '218.92.211.174', '2019-11-12 07:19:53');
INSERT INTO `sys_loginfo` VALUES (856, '超级管理员-system', '218.92.211.174', '2019-11-12 07:36:49');
INSERT INTO `sys_loginfo` VALUES (857, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:37:01');
INSERT INTO `sys_loginfo` VALUES (858, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:39:47');
INSERT INTO `sys_loginfo` VALUES (859, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:42:49');
INSERT INTO `sys_loginfo` VALUES (860, '超级管理员-system', '218.92.211.174', '2019-11-12 07:43:45');
INSERT INTO `sys_loginfo` VALUES (861, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:44:21');
INSERT INTO `sys_loginfo` VALUES (862, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:45:29');
INSERT INTO `sys_loginfo` VALUES (863, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:51:37');
INSERT INTO `sys_loginfo` VALUES (864, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:54:00');
INSERT INTO `sys_loginfo` VALUES (865, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:58:39');
INSERT INTO `sys_loginfo` VALUES (866, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 07:59:25');
INSERT INTO `sys_loginfo` VALUES (867, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:01:46');
INSERT INTO `sys_loginfo` VALUES (868, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:02:49');
INSERT INTO `sys_loginfo` VALUES (869, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:06:08');
INSERT INTO `sys_loginfo` VALUES (870, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:11:32');
INSERT INTO `sys_loginfo` VALUES (871, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:12:24');
INSERT INTO `sys_loginfo` VALUES (872, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:14:35');
INSERT INTO `sys_loginfo` VALUES (873, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:15:30');
INSERT INTO `sys_loginfo` VALUES (874, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:16:13');
INSERT INTO `sys_loginfo` VALUES (875, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:18:16');
INSERT INTO `sys_loginfo` VALUES (876, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:23:43');
INSERT INTO `sys_loginfo` VALUES (877, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:24:09');
INSERT INTO `sys_loginfo` VALUES (878, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:26:30');
INSERT INTO `sys_loginfo` VALUES (879, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:30:21');
INSERT INTO `sys_loginfo` VALUES (880, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:32:52');
INSERT INTO `sys_loginfo` VALUES (881, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:36:52');
INSERT INTO `sys_loginfo` VALUES (882, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:49:11');
INSERT INTO `sys_loginfo` VALUES (883, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 08:58:16');
INSERT INTO `sys_loginfo` VALUES (884, '超级管理员-system', '218.92.211.174', '2019-11-12 09:07:55');
INSERT INTO `sys_loginfo` VALUES (885, '超级管理员-system', '218.92.211.174', '2019-11-12 09:07:55');
INSERT INTO `sys_loginfo` VALUES (886, '超级管理员-system', '218.92.211.174', '2019-11-12 09:12:14');
INSERT INTO `sys_loginfo` VALUES (887, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 09:28:33');
INSERT INTO `sys_loginfo` VALUES (888, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 09:30:32');
INSERT INTO `sys_loginfo` VALUES (889, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 09:37:50');
INSERT INTO `sys_loginfo` VALUES (890, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 09:48:56');
INSERT INTO `sys_loginfo` VALUES (891, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 09:53:51');
INSERT INTO `sys_loginfo` VALUES (892, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 09:56:36');
INSERT INTO `sys_loginfo` VALUES (893, '超级管理员-system', '0:0:0:0:0:0:0:1', '2019-11-12 10:01:48');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `createtime` datetime(0) DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '关于系统V1.3更新公告', '2', '2018-08-07 00:00:00', '管理员');
INSERT INTO `sys_notice` VALUES (10, '关于系统V1.2更新公告', '12312312<img src=\"/resources/layui/images/face/42.gif\" alt=\"[抓狂]\">', '2018-08-07 00:00:00', '超级管理员');
INSERT INTO `sys_notice` VALUES (11, '关于系统V1.1更新公告', '21321321321<img src=\"/resources/layui/images/face/18.gif\" alt=\"[右哼哼]\">', '2018-08-07 00:00:00', '超级管理员');
INSERT INTO `sys_notice` VALUES (12, 'cs20191021', '测试内容20191021', '2019-10-21 01:53:50', '超级管理员');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1022 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 0, 'menu', '消防云管理系统', NULL, '&#xe68e;', '', '', 1, 1, 1);
INSERT INTO `sys_permission` VALUES (5, 1, 'menu', '系统管理', NULL, '&#xe614;', '', '', 0, 81, 1);
INSERT INTO `sys_permission` VALUES (14, 5, 'menu', '部门管理', NULL, '&#xe770;', '/api/getPage?pageName=system/dept/deptManager', '', 0, 14, 1);
INSERT INTO `sys_permission` VALUES (15, 5, 'menu', '菜单管理', NULL, '&#xe647;', '/api/getPage?pageName=system/menu/menuManager', '', 0, 15, 1);
INSERT INTO `sys_permission` VALUES (16, 5, 'menu', '权限管理', '', '&#xe857;', '/api/getPage?pageName=system/permission/permissionManager', '', 0, 16, 1);
INSERT INTO `sys_permission` VALUES (17, 5, 'menu', '角色管理', '', '&#xe650;', '/api/getPage?pageName=system/role/roleManager', '', 0, 17, 1);
INSERT INTO `sys_permission` VALUES (18, 5, 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', '', 0, 18, 0);
INSERT INTO `sys_permission` VALUES (21, 5, 'menu', '登陆日志', NULL, '&#xe675;', '/sys/toLoginfoManager', '', 0, 21, 1);
INSERT INTO `sys_permission` VALUES (30, 14, 'permission', '添加部门', 'dept:create', '', NULL, NULL, 0, 24, 1);
INSERT INTO `sys_permission` VALUES (31, 14, 'permission', '修改部门', 'dept:update', '', NULL, NULL, 0, 26, 1);
INSERT INTO `sys_permission` VALUES (32, 14, 'permission', '删除部门', 'dept:delete', '', NULL, NULL, 0, 27, 1);
INSERT INTO `sys_permission` VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', '', 0, 29, 1);
INSERT INTO `sys_permission` VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, NULL, 0, 30, 1);
INSERT INTO `sys_permission` VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, NULL, 0, 31, 1);
INSERT INTO `sys_permission` VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, NULL, 0, 33, 1);
INSERT INTO `sys_permission` VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, NULL, 0, 34, 1);
INSERT INTO `sys_permission` VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, NULL, 0, 35, 1);
INSERT INTO `sys_permission` VALUES (42, 17, 'permission', '添加角色', 'role:create', '', NULL, NULL, 0, 37, 1);
INSERT INTO `sys_permission` VALUES (43, 17, 'permission', '修改角色', 'role:update', '', NULL, NULL, 0, 38, 1);
INSERT INTO `sys_permission` VALUES (44, 17, 'permission', '角色删除', 'role:delete', '', NULL, NULL, 0, 39, 1);
INSERT INTO `sys_permission` VALUES (46, 17, 'permission', '分配权限', 'role:selectPermission', '', NULL, NULL, 0, 41, 1);
INSERT INTO `sys_permission` VALUES (47, 18, 'permission', '添加用户', 'user:create', '', NULL, NULL, 0, 42, 1);
INSERT INTO `sys_permission` VALUES (48, 18, 'permission', '修改用户', 'user:update', '', NULL, NULL, 0, 43, 1);
INSERT INTO `sys_permission` VALUES (49, 18, 'permission', '删除用户', 'user:delete', '', NULL, NULL, 0, 44, 1);
INSERT INTO `sys_permission` VALUES (51, 18, 'permission', '用户分配角色', 'user:selectRole', '', NULL, NULL, 0, 46, 1);
INSERT INTO `sys_permission` VALUES (52, 18, 'permission', '重置密码', 'user:resetPwd', NULL, NULL, NULL, 0, 47, 1);
INSERT INTO `sys_permission` VALUES (53, 14, 'permission', '部门查询', 'dept:view', NULL, NULL, NULL, 0, 48, 1);
INSERT INTO `sys_permission` VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `sys_permission` VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `sys_permission` VALUES (56, 17, 'permission', '角色查询', 'role:view', NULL, NULL, NULL, 0, 51, 1);
INSERT INTO `sys_permission` VALUES (57, 18, 'permission', '用户查询', 'user:view', NULL, NULL, NULL, 0, 52, 1);
INSERT INTO `sys_permission` VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, NULL, 65, 1);
INSERT INTO `sys_permission` VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, NULL, 66, 1);
INSERT INTO `sys_permission` VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, NULL, 67, 1);
INSERT INTO `sys_permission` VALUES (76, 22, 'permission', '公告查询', 'notice:view', NULL, NULL, NULL, NULL, 68, 1);
INSERT INTO `sys_permission` VALUES (77, 22, 'permission', '公告添加', 'notice:create', NULL, NULL, NULL, NULL, 69, 1);
INSERT INTO `sys_permission` VALUES (78, 22, 'permission', '公告修改', 'notice:update', NULL, NULL, NULL, NULL, 70, 1);
INSERT INTO `sys_permission` VALUES (79, 22, 'permission', '公告删除', 'notice:delete', NULL, NULL, NULL, NULL, 71, 1);
INSERT INTO `sys_permission` VALUES (86, 22, 'permission', '公告查看', 'notice:viewnotice', NULL, NULL, NULL, NULL, 78, 1);
INSERT INTO `sys_permission` VALUES (1001, 1, 'menu', '信息管理', NULL, '&#xe60b;', '', '', 1, 4, 1);
INSERT INTO `sys_permission` VALUES (1002, 1, 'menu', '报警受理', NULL, '&#xe6b2;', '/api/getPage?pageName=dealAlarm/report', '', 0, 3, 1);
INSERT INTO `sys_permission` VALUES (1003, 1, 'menu', '视频监控', NULL, '&#xe612;', '/api/getPage?pageName=video/view', '', 0, 80, 1);
INSERT INTO `sys_permission` VALUES (1004, 1, 'menu', '通知公告', NULL, '&#xe667;', '/sys/toNoticeManager', '', 0, 6, 1);
INSERT INTO `sys_permission` VALUES (1005, 1, 'menu', '统计分析', NULL, '&#xe62c;', '', '', 0, 2, 1);
INSERT INTO `sys_permission` VALUES (1006, 1001, 'menu', '系统人员', NULL, '&#xe612;', '/api/getPage?pageName=infomanager/userManager', '', 0, 86, 1);
INSERT INTO `sys_permission` VALUES (1007, 1001, 'menu', '历史数据', NULL, '&#xe63c;', '/api/getPage?pageName=equipment/facilityInfo', '', 0, 87, 1);
INSERT INTO `sys_permission` VALUES (1008, 1001, 'menu', '维保信息', NULL, '&#xe642;', '/api/getPage?pageName=infomanager/tenance', '', 0, 88, 1);
INSERT INTO `sys_permission` VALUES (1010, 1005, 'menu', '单位情况', NULL, '&#xe67b;', '/api/getPage?pageName=statistical/dwinfo', '', 0, 90, 1);
INSERT INTO `sys_permission` VALUES (1011, 1005, 'menu', '建筑信息', NULL, '&#xe665;', '/sys/toBuildInfo', '', 0, 91, 1);
INSERT INTO `sys_permission` VALUES (1012, 1005, 'menu', '消防设施', NULL, '&#xe656;', '/api/getPage?pageName=statistical/xfss', '', 0, 92, 1);
INSERT INTO `sys_permission` VALUES (1013, 1005, 'menu', '设备在线', NULL, '&#xe628;', '/api/getPage?pageName=statistical/online', '', 0, 93, 1);
INSERT INTO `sys_permission` VALUES (1014, 1005, 'menu', '统计图', NULL, '&#xe60d;', '/api/getPage?pageName=statistical/totalAll', '', 0, 94, 1);
INSERT INTO `sys_permission` VALUES (1018, 1001, 'menu', '设备信息', NULL, '&#xe665;', '/api/getPage?pageName=infomanager/equipmentInfo', '', 1, 95, 1);
INSERT INTO `sys_permission` VALUES (1019, 1001, 'menu', '设备状态表', NULL, '&#xe62d;', '/api/getPage?pageName=equipment/equipconfig', '', 1, 96, 1);
INSERT INTO `sys_permission` VALUES (1021, 1001, 'menu', '报警信息2', NULL, '&#xe655', '/api/getPage?pageName=infomanager/alarm', '', 0, 97, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `createtime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1, '2019-10-25 01:24:47');
INSERT INTO `sys_role` VALUES (4, '基础数据管理员', '基础数据管理员', 1, '2019-04-10 14:06:32');
INSERT INTO `sys_role` VALUES (5, '仓库管理员', '仓库管理员', 1, '2019-04-10 14:06:32');
INSERT INTO `sys_role` VALUES (6, '销售管理员', '销售管理员', 1, '2019-04-10 14:06:32');
INSERT INTO `sys_role` VALUES (7, '系统管理员', '系统管理员', 1, '2019-04-10 14:06:32');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`pid`, `rid`) USING BTREE,
  INDEX `FK_tcsr9ucxypb3ce1q5qngsfk33`(`rid`) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (4, 1);
INSERT INTO `sys_role_permission` VALUES (4, 5);
INSERT INTO `sys_role_permission` VALUES (4, 14);
INSERT INTO `sys_role_permission` VALUES (4, 15);
INSERT INTO `sys_role_permission` VALUES (4, 16);
INSERT INTO `sys_role_permission` VALUES (4, 17);
INSERT INTO `sys_role_permission` VALUES (4, 21);
INSERT INTO `sys_role_permission` VALUES (4, 30);
INSERT INTO `sys_role_permission` VALUES (4, 31);
INSERT INTO `sys_role_permission` VALUES (4, 32);
INSERT INTO `sys_role_permission` VALUES (4, 34);
INSERT INTO `sys_role_permission` VALUES (4, 35);
INSERT INTO `sys_role_permission` VALUES (4, 36);
INSERT INTO `sys_role_permission` VALUES (4, 38);
INSERT INTO `sys_role_permission` VALUES (4, 39);
INSERT INTO `sys_role_permission` VALUES (4, 40);
INSERT INTO `sys_role_permission` VALUES (4, 42);
INSERT INTO `sys_role_permission` VALUES (4, 43);
INSERT INTO `sys_role_permission` VALUES (4, 44);
INSERT INTO `sys_role_permission` VALUES (4, 46);
INSERT INTO `sys_role_permission` VALUES (4, 53);
INSERT INTO `sys_role_permission` VALUES (4, 54);
INSERT INTO `sys_role_permission` VALUES (4, 55);
INSERT INTO `sys_role_permission` VALUES (4, 56);
INSERT INTO `sys_role_permission` VALUES (4, 73);
INSERT INTO `sys_role_permission` VALUES (4, 74);
INSERT INTO `sys_role_permission` VALUES (4, 75);
INSERT INTO `sys_role_permission` VALUES (4, 1001);
INSERT INTO `sys_role_permission` VALUES (4, 1006);
INSERT INTO `sys_role_permission` VALUES (4, 1007);
INSERT INTO `sys_role_permission` VALUES (4, 1008);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE,
  INDEX `FK_203gdpkwgtow7nxlo2oap5jru`(`rid`) USING BTREE,
  CONSTRAINT `sys_role_user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_user_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 2);
INSERT INTO `sys_role_user` VALUES (4, 3);
INSERT INTO `sys_role_user` VALUES (5, 4);
INSERT INTO `sys_role_user` VALUES (6, 5);
INSERT INTO `sys_role_user` VALUES (7, 6);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `hiredate` datetime(0) DEFAULT NULL,
  `mgr` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT 1,
  `ordernum` int(11) DEFAULT NULL,
  `type` int(255) DEFAULT NULL COMMENT '用户类型[0超级管理员1，管理员，2普通用户]',
  `imgpath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像地址',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_3rrcpvho2w1mx1sfiuuyir1h`(`deptid`) USING BTREE,
  CONSTRAINT `sys_user_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '超级管理员', 'system', '系统深处的男人', 1, '超级管理员', '532ac00e86893901af5f0be6b704dbc7', 1, '2018-06-25 11:06:34', NULL, 1, 1, 0, '../resources/images/defaultusertitle.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES (2, '李四', 'ls', '武汉', 0, 'KING', 'b07b848d69e0553b80e601d31571797e', 1, '2018-06-25 11:06:36', NULL, 1, 2, 1, '../resources/images/defaultusertitle.jpg', 'FC1EE06AE4354D3FBF7FDD15C8FCDA71');
INSERT INTO `sys_user` VALUES (3, '王五', 'ww', '武汉', 1, '管理员', '3c3f971eae61e097f59d52360323f1c8', 3, '2018-06-25 11:06:38', 2, 1, 3, 1, '../resources/images/defaultusertitle.jpg', '3D5F956E053C4E85B7D2681386E235D2');
INSERT INTO `sys_user` VALUES (4, '赵六', 'zl', '武汉', 1, '程序员', '2e969742a7ea0c7376e9551d578e05dd', 4, '2018-06-25 11:06:40', 3, 1, 4, 1, '../resources/images/defaultusertitle.jpg', '6480EE1391E34B0886ACADA501E31145');
INSERT INTO `sys_user` VALUES (5, '孙七', 'sq', '武汉', 1, '程序员', '47b4c1ad6e4b54dd9387a09cb5a03de1', 2, '2018-06-25 11:06:43', 4, 1, 5, 1, '../resources/images/defaultusertitle.jpg', 'FE3476C3E3674E5690C737C269FCBF8E');
INSERT INTO `sys_user` VALUES (6, '刘八', 'lb', '深圳', 1, '程序员', 'bcee2b05b4b591106829aec69a094806', 4, '2018-08-06 11:21:12', 3, 1, 6, 1, '../resources/images/defaultusertitle.jpg', 'E6CCF54A09894D998225878BBD139B20');
INSERT INTO `sys_user` VALUES (11, '小小明', 'xiaoxiaoming', '测试1030', 1, '测试测试', '31cb29894e3e375ed94183c4ee1fd758', 4, '2019-10-30 08:57:35', NULL, 1, 7, 1, NULL, '90BD250277DB4DF384D6B13E9B030374');
INSERT INTO `sys_user` VALUES (12, '嘻嘻嘻', 'xixixi', '是是是', 1, '是是是', '6658d0b361b441e6a05430755f905e65', 4, '2019-10-31 07:24:18', NULL, 1, 8, 1, NULL, 'C68613FE1BA849B4BCDCB0A5047A61BD');

-- ----------------------------
-- Triggers structure for table DEVINFO
-- ----------------------------
DROP TRIGGER IF EXISTS `Update_Equip_Status`;
delimiter ;;
CREATE DEFINER = `root`@`%` TRIGGER `Update_Equip_Status` AFTER INSERT ON `DEVINFO` FOR EACH ROW begin
    UPDATE equipment set devicestatus=new.DEV_STATUS,nettime=now() where id=new.DEV_ID;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table dev_alerm
-- ----------------------------
DROP TRIGGER IF EXISTS `insert_InsdevAlerm_trigger`;
delimiter ;;
CREATE DEFINER = `root`@`%` TRIGGER `insert_InsdevAlerm_trigger` AFTER INSERT ON `dev_alerm` FOR EACH ROW BEGIN
INSERT INTO firecloud.alert_processing (DEV_ID, DEV_STATUS,ISDEAL, ALARMTIME)
VALUES (new.dev_id, new.dev_status, '0',new.net_date);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
