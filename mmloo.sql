/*
Navicat MySQL Data Transfer

Source Server         : 172.29.17.19_3306
Source Server Version : 60011
Source Host           : 172.29.17.19:3306
Source Database       : mmloo

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2016-07-13 15:40:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '地址编号（自增）',
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `rname` varchar(20) DEFAULT NULL COMMENT '收货人名称',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `city` varchar(20) DEFAULT NULL COMMENT '城市',
  `country` varchar(20) DEFAULT NULL COMMENT '区/县',
  `town` varchar(20) DEFAULT NULL COMMENT '乡/镇',
  `address` varchar(40) DEFAULT NULL COMMENT '详细地址',
  `remail` varchar(20) DEFAULT NULL COMMENT '收货人邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '收货人固定电话',
  `tel` varchar(20) DEFAULT NULL COMMENT '收货人手机',
  `addressalias` varchar(100) DEFAULT NULL COMMENT '地址别名',
  PRIMARY KEY (`addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('5', 'huang123', '周曼', '江苏省', '溧阳市', '昆仑花园5区', '', '5幢2号门401室', '', '18829359276', '', '周曼江苏省');
INSERT INTO `address` VALUES ('7', 'b22100314', '王祯', '山东省', '', '', '枣庄峄城区', '古邵镇乐庄村', '', '18829353606', '', '王祯山东省');
INSERT INTO `address` VALUES ('8', 'a81504503', '高洁', '浙江省', '乐清市', '', '', '乐成镇土墩塘文中路28号', '', '18829359340', '', '高洁浙江省');
INSERT INTO `address` VALUES ('9', 'a81502506', '于洋', '甘肃省', '陇西县', '', '', '西北铝加工厂子弟中学', '', '18829354158', '', '于洋甘肃省');
INSERT INTO `address` VALUES ('10', 'a25503224', '李贺', '河南省', '荥阳市', '', '', '豫龙镇关帝庙村274号', '', '18829356195', '', '李贺河南省');
INSERT INTO `address` VALUES ('11', '984508730', '周宇轩', '山东省', '烟台莱州市', '', '', '郭家店镇郭家店村769号', '', '18829353172', '', '周宇轩山东省');
INSERT INTO `address` VALUES ('12', '984508722', '郭锦蒙', '山东省', '', '', '临沂兰山区', '义堂镇尤家村342号', '', '18829355294', '', '郭锦蒙山东省');
INSERT INTO `address` VALUES ('13', '981503314', '郝骏', '天津市', '', '', '河西区', '解放南路新城小区36门111', '', '18829351737', '', '郝骏天津市');
INSERT INTO `address` VALUES ('14', '9802839', '孙小岚', '山东省', '潍坊安丘市', '', '', '金冢子镇张家庄子村', '', '18829354799', '', '孙小岚山东省');
INSERT INTO `address` VALUES ('15', '9802403', '张雯熙', '北京市', '', '', '朝阳区', '慧忠北里华汇小区306楼505室', '', '18829358549', '', '张雯熙北京市');
INSERT INTO `address` VALUES ('16', '9802322', '陈玲玲', '天津市', '', '', '宝坻区', '高家庄镇西会村中区1排10号', '', '18829354526', '', '陈玲玲天津市');
INSERT INTO `address` VALUES ('17', '9801931', '路宽', '山东省', '莱芜市', '', '钢城区', '艾山镇清泥沟村', '', '18829353344', '', '路宽山东省');
INSERT INTO `address` VALUES ('18', '9801708', '王思雨', '山东省', '青岛平度市', '', '', '张舍镇习礼埠村159号', '', '18829354726', '', '王思雨山东省');
INSERT INTO `address` VALUES ('19', '9801364', '程治允', '河南省', '项城市', '', '', '水寨镇胡营大队吴营村', '', '18829357926', '', '程治允河南省');
INSERT INTO `address` VALUES ('20', '9801309', '杨惠博', '山西省', '运城市', '', '', '康杰中学理四班', '', '18829358614', '', '杨惠博山西省');
INSERT INTO `address` VALUES ('21', '9801168', '岳雅文', '湖北省', '黄冈市', '黄梅县', '', '第一中学', '', '18829354503', '', '岳雅文湖北省');
INSERT INTO `address` VALUES ('22', '9800909', '纪维爽', '广东省', '珠海市', '', '斗门区', '乾务镇乾西路二巷7号', '', '18829355671', '', '纪维爽广东省');
INSERT INTO `address` VALUES ('23', '9800543', '徐忆纯', '河南省', '焦作市', '', '马村区', '冯营东街92号', '', '18829354615', '', '徐忆纯河南省');
INSERT INTO `address` VALUES ('24', '9800157', '张扶林', '黑龙江省', '肇东市', '', '', '第一中学', '', '18829354302', '', '张扶林黑龙江省');
INSERT INTO `address` VALUES ('25', '952701480', '郑昱', '山东省', '菏泽市', '东明县', '', '城关镇穆庄村', '', '18829356859', '', '郑昱山东省');
INSERT INTO `address` VALUES ('26', '952701440', '张志栋', '江苏省', '靖江市', '', '', '马桥镇侯河村朱家弄14号', '', '18829354014', '', '张志栋江苏省');
INSERT INTO `address` VALUES ('27', '952701221', '李朋伯', '青海省', '西宁市', '', '城东区', '泰宁花园康园2单元601室刘婷', '', '18829353508', '', '李朋伯青海省');
INSERT INTO `address` VALUES ('28', '952701153', '次珍', '湖北省', '荆州市', '公安县', '', '麻口镇周场村一组', '', '18829351019', '', '次珍湖北省');
INSERT INTO `address` VALUES ('29', '952503740', '张之宇', '河南省', '漯河市', '舞阳县', '', '第一高级中学', '', '18829356529', '', '张之宇河南省');
INSERT INTO `address` VALUES ('31', '952431061', '徐世超', '青海省', '西宁市', '湟源县', '', '和平乡马家湾村82号张雪莲', '', '18829353369', '', '徐世超青海省');
INSERT INTO `address` VALUES ('32', '952403851', '董兆年', '山东省', '临沂市', '', '兰山区', '李官乡高家店子村', '', '18829353477', '', '董兆年山东省');
INSERT INTO `address` VALUES ('33', '952403851', '吴峥', '陕西省', '铜川市', '', '', '矿务局第一中学', '', '18829358511', '', '吴峥陕西省');
INSERT INTO `address` VALUES ('34', '952402771', '普吉律', '西安市', '', '', '临潼区', '华清中学', '', '18829355957', '', '普吉律西安市');
INSERT INTO `address` VALUES ('35', '952402550', '多吉卓玛', '河南省', '项城市', '', '', '王明口乡李庄行政村李庄', '', '18829356844', '', '多吉卓玛河南省');
INSERT INTO `address` VALUES ('36', '952402542', '胡越斌', '甘肃省', '兰州市', '', '', '第九中学', '', '18829356658', '', '胡越斌甘肃省');
INSERT INTO `address` VALUES ('37', '952402530', '张宇', '吉林省', '白山市', '', '', '第二中学', '', '18829357853', '', '张宇吉林省');
INSERT INTO `address` VALUES ('38', '952402480', '刘炜程', '河北省', '沧州市', '青县', '', '第一中学', '', '18829358220', '', '刘炜程河北省');
INSERT INTO `address` VALUES ('39', '952401391', '张文鑫', '河南省', '鹤壁市', '浚县', '', '卫贤乡裴营村113号', '', '18829358208', '', '张文鑫河南省');
INSERT INTO `address` VALUES ('40', '952401272', '张思远', '山东省', '威海荣成市', '', '', '埠柳镇车古村', '', '18829353503', '', '张思远山东省');
INSERT INTO `address` VALUES ('41', '952303563', '陈鑫', '山西省', '忻州市', '', '', '第一中学校', '', '18829357654', '', '陈鑫山西省');
INSERT INTO `address` VALUES ('42', '952241041', '李灵婧', '河南省', '郑州市', '', '上街区', '聂寨乡夏侯村708号', '', '18829354584', '', '李灵婧河南省');
INSERT INTO `address` VALUES ('43', '952241012', '王麟', '山西省', '忻州市', '', '', '第一中学', '', '18829357442', '', '王麟山西省');
INSERT INTO `address` VALUES ('44', '952241001', '张潇', '山东省', '烟台栖霞市', '', '', '臧家庄镇东杏山村', '', '18829357967', '', '张潇山东省');
INSERT INTO `address` VALUES ('45', '952203780', '马怡洁', '安徽省', '铜陵市', '', '', '第一中学苏长寿转', '', '18829352295', '', '马怡洁安徽省');
INSERT INTO `address` VALUES ('46', '952202532', '马艺嘉', '河南省', '辉县', '', '', '市第一职业高级中学', '', '18829356268', '', '马艺嘉河南省');
INSERT INTO `address` VALUES ('47', '952202501', '张靖怡', '河南省', '开封市', '', '', '三民胡同22号', '', '18829351330', '', '张靖怡河南省');
INSERT INTO `address` VALUES ('48', '952101461', '于莉', '山东省', '枣庄市', '', '台儿庄区', '供电局家属院', '', '18829358595', '', '于莉山东省');
INSERT INTO `address` VALUES ('49', '951301302', '张津阳', '广东省', '番禺市', '', '', '桥富都城二十二号东座之一701', '', '18829357508', '', '张津阳广东省');
INSERT INTO `address` VALUES ('50', '951201340', '赵亮', '甘肃省', '天水市', '', '', '北道二十铺中学', '', '18829355955', '', '赵亮甘肃省');
INSERT INTO `address` VALUES ('51', '951102242', '刘博洋', '河南省', '洛阳市', '', '洛龙区', '龙门镇李屯村5组11号', '', '18829351377', '', '刘博洋河南省');
INSERT INTO `address` VALUES ('52', '950902351', '刘智川', '北京市', '', '', '朝阳区', '劲松九区901楼1108号', '', '18829351408', '', '刘智川北京市');
INSERT INTO `address` VALUES ('53', '950801170', '田月月', '山东省', '菏泽市', '成武县', '', '第二中学', '', '18829359014', '', '田月月山东省');
INSERT INTO `address` VALUES ('54', '950702881', '王津沧', '河南省', '济源市', '', '', '思礼乡思礼村', '', '18829356342', '', '王津沧河南省');
INSERT INTO `address` VALUES ('60', null, '用户名', '澳门', '澳门', '市区', '', '西北农林科技大学', '', '18829352425', null, '用户名澳门');
INSERT INTO `address` VALUES ('61', null, '用户名', '澳门', '澳门', '市区', '', '详细地址', '', '18829352425', null, '用户名澳门');
INSERT INTO `address` VALUES ('62', null, '用户名', '澳门', '澳门', '市区', '', '详细地址', '', '18829352425', null, '用户名澳门');

-- ----------------------------
-- Table structure for `balance`
-- ----------------------------
DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance` (
  `bid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `date` datetime DEFAULT NULL COMMENT '变更时间',
  `put` float DEFAULT NULL COMMENT '存入',
  `remove` float DEFAULT NULL COMMENT '支出',
  `money` float DEFAULT NULL COMMENT '剩余总额',
  `describe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of balance
-- ----------------------------
INSERT INTO `balance` VALUES ('1', '123', '2016-07-04 09:47:42', '74', null, null, '充值金额：74');
INSERT INTO `balance` VALUES ('2', '123', '2016-07-05 09:47:42', null, '4', null, '支出金额：30');
INSERT INTO `balance` VALUES ('3', '123', '2016-07-06 09:47:42', '93', null, null, '充值金额：93');
INSERT INTO `balance` VALUES ('4', '123', '2016-07-07 09:47:42', null, '60', null, '支出金额：60');
INSERT INTO `balance` VALUES ('5', '123', '2016-07-08 09:47:42', '43', null, null, '充值金额：43');
INSERT INTO `balance` VALUES ('6', '123', '2016-07-09 09:47:42', null, '36', null, '支出金额：36');
INSERT INTO `balance` VALUES ('7', '123', '2016-07-10 09:47:42', '20', null, null, '充值金额：20');
INSERT INTO `balance` VALUES ('8', '123', '2016-07-11 09:47:42', null, '49', null, '支出金额：49');
INSERT INTO `balance` VALUES ('9', '123', '2016-07-12 09:47:42', '18', null, null, '充值金额：18');
INSERT INTO `balance` VALUES ('10', '123', '2016-07-13 09:47:42', null, '21', null, '支出金额：21');
INSERT INTO `balance` VALUES ('11', '123', '2016-07-14 09:47:42', '56', null, null, '充值金额：56');
INSERT INTO `balance` VALUES ('12', '123', '2016-07-15 09:47:42', null, '70', null, '支出金额：70');
INSERT INTO `balance` VALUES ('13', '123', '2016-07-16 09:47:42', '87', null, null, '充值金额：87');
INSERT INTO `balance` VALUES ('14', '123', '2016-07-17 09:47:42', null, '46', null, '支出金额：46');
INSERT INTO `balance` VALUES ('15', '123', '2016-07-18 09:47:42', '25', null, null, '充值金额：25');
INSERT INTO `balance` VALUES ('16', '123', '2016-07-19 09:47:42', null, '69', null, '支出金额：69');
INSERT INTO `balance` VALUES ('17', '123', '2016-07-20 09:47:42', '23', null, null, '充值金额：23');
INSERT INTO `balance` VALUES ('18', '123', '2016-07-21 09:47:42', null, '95', null, '支出金额：95');
INSERT INTO `balance` VALUES ('19', '123', '2016-07-22 09:47:42', '82', null, null, '充值金额：82');
INSERT INTO `balance` VALUES ('20', '123', '2016-07-23 09:47:42', null, '67', null, '支出金额：67');
INSERT INTO `balance` VALUES ('21', '123', '2016-07-24 09:47:42', '39', null, null, '充值金额：39');
INSERT INTO `balance` VALUES ('22', '123', '2016-07-25 09:47:42', null, '26', null, '支出金额：26');
INSERT INTO `balance` VALUES ('23', '123', '2016-07-26 09:47:42', '65', null, null, '充值金额：65');
INSERT INTO `balance` VALUES ('24', '123', '2016-07-27 09:47:42', null, '22', null, '支出金额：22');
INSERT INTO `balance` VALUES ('25', '123', '2016-07-28 09:47:42', '40', null, null, '充值金额：49');
INSERT INTO `balance` VALUES ('26', '123', '2016-07-29 09:47:42', null, '12', null, '支出金额：12');
INSERT INTO `balance` VALUES ('27', '123', '2016-07-30 09:47:42', '10', null, null, '充值金额：10');
INSERT INTO `balance` VALUES ('28', '123', '2016-07-31 09:47:42', null, '42', null, '支出金额：42');
INSERT INTO `balance` VALUES ('29', '123', '2016-08-01 09:47:42', '23', null, null, '充值金额：23');
INSERT INTO `balance` VALUES ('30', '123', '2016-08-02 09:47:42', null, '49', null, '支出金额：49');
INSERT INTO `balance` VALUES ('31', '123', '2016-08-03 09:47:42', '22', null, null, '充值金额：22');
INSERT INTO `balance` VALUES ('32', '123', '2016-08-04 09:47:42', null, '65', null, '支出金额：65');
INSERT INTO `balance` VALUES ('33', '123', '2016-08-05 09:47:42', '18', null, null, '充值金额：18');
INSERT INTO `balance` VALUES ('34', '123', '2016-08-06 09:47:42', null, '65', null, '支出金额：65');
INSERT INTO `balance` VALUES ('35', '123', '2016-08-07 09:47:42', '62', null, null, '充值金额：62');
INSERT INTO `balance` VALUES ('36', '123', '2016-08-08 09:47:42', null, '30', null, '支出金额：30');
INSERT INTO `balance` VALUES ('37', '123', '2016-08-09 09:47:42', '93', null, null, '充值金额：93');
INSERT INTO `balance` VALUES ('38', '123', '2016-08-10 09:47:42', null, '92', null, '支出金额：92');
INSERT INTO `balance` VALUES ('39', '123', '2016-08-11 09:47:42', '16', null, null, '充值金额：16');
INSERT INTO `balance` VALUES ('40', '123', '2016-08-12 09:47:42', null, '16', null, '支出金额：16');
INSERT INTO `balance` VALUES ('41', '123', '2016-08-13 09:47:42', '69', null, null, '充值金额：69');
INSERT INTO `balance` VALUES ('42', '123', '2016-08-14 09:47:42', null, '29', null, '支出金额：29');
INSERT INTO `balance` VALUES ('43', '123', '2016-08-15 09:47:42', '19', null, null, '充值金额：19');
INSERT INTO `balance` VALUES ('44', '123', '2016-08-16 09:47:42', null, '22', null, '支出金额：22');
INSERT INTO `balance` VALUES ('45', '123', '2016-08-17 09:47:42', '83', null, null, '充值金额：83');
INSERT INTO `balance` VALUES ('46', '123', '2016-08-18 09:47:42', null, '70', null, '支出金额：70');
INSERT INTO `balance` VALUES ('47', '123', '2016-08-19 09:47:42', '58', null, null, '充值金额：58');
INSERT INTO `balance` VALUES ('48', '123', '2016-08-20 09:47:42', null, '47', null, '支出金额：47');
INSERT INTO `balance` VALUES ('49', '123', '2016-08-21 09:47:42', '65', null, null, '充值金额：65');
INSERT INTO `balance` VALUES ('50', '123', '2016-08-22 09:47:42', null, '61', null, '支出金额：61');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `rcommentid` int(11) DEFAULT NULL COMMENT '回复ID',
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `orderid` int(11) DEFAULT NULL COMMENT '订单号',
  `gpro` varchar(100) DEFAULT NULL COMMENT '商品属性',
  `mkid` varchar(8) DEFAULT NULL COMMENT '店号+组号',
  `gid` bigint(11) DEFAULT NULL COMMENT '商品编号',
  `level` varchar(20) DEFAULT NULL COMMENT '评价等级',
  `reply` varchar(200) DEFAULT NULL COMMENT '评价内容',
  `sattitude` int(11) DEFAULT NULL COMMENT '服务态度',
  `gpack` int(11) DEFAULT NULL COMMENT '商品包装',
  `satisfaction` int(11) DEFAULT NULL COMMENT '商品满意度',
  `dspeed` int(11) DEFAULT NULL COMMENT '送货速度',
  `cdate` date DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`commentid`),
  KEY `FK_Relationship_19` (`orderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('2', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('7', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('8', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('9', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('10', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('11', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('12', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('13', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('14', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('15', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('16', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('17', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('18', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('19', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `comment` VALUES ('20', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cou`
-- ----------------------------
DROP TABLE IF EXISTS `cou`;
CREATE TABLE `cou` (
  `couid` int(11) NOT NULL COMMENT '礼品卡ID',
  `mname` varchar(20) DEFAULT NULL COMMENT '店名',
  `coutype` varchar(20) DEFAULT NULL COMMENT '礼品卡类型',
  `datelimit` date DEFAULT NULL COMMENT '使用期限',
  `uselimit` varchar(50) DEFAULT NULL COMMENT '使用要求',
  `comment` varchar(50) DEFAULT NULL COMMENT '备注',
  `value` float DEFAULT NULL COMMENT '价值',
  PRIMARY KEY (`couid`),
  KEY `FK_Relationship_10` (`mname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cou
-- ----------------------------
INSERT INTO `cou` VALUES ('1', 'Armani', '代金券', '2016-07-13', '单笔消费满', null, '75');
INSERT INTO `cou` VALUES ('2', 'Chanel', '礼品券', '2016-07-14', null, '凭此礼品券可兑换U盘一个', '50');
INSERT INTO `cou` VALUES ('3', '皮尔.卡丹', '代金券', '2016-06-30', '单笔消费满98', null, '157');
INSERT INTO `cou` VALUES ('4', 'dreamtimes（梦幻时光）', '礼品券', '2016-06-29', null, null, '152');
INSERT INTO `cou` VALUES ('5', 'ESTEE LAUDER', '代金券', '2016-06-29', '单笔消费满', null, '56');
INSERT INTO `cou` VALUES ('6', 'DIOR', '礼品券', '2016-07-10', null, null, '117');
INSERT INTO `cou` VALUES ('7', '惠普', '代金券', '2016-06-29', '单笔消费满', null, '98');
INSERT INTO `cou` VALUES ('8', '宏碁', '礼品券', '2016-07-04', null, null, '175');
INSERT INTO `cou` VALUES ('9', 'Armani', '代金券', '2016-07-08', '单笔消费满', null, '57');
INSERT INTO `cou` VALUES ('10', 'Chanel', '礼品券', '2016-07-10', null, null, '66');
INSERT INTO `cou` VALUES ('11', '皮尔.卡丹', '代金券', '2016-06-28', '单笔消费满', null, '79');
INSERT INTO `cou` VALUES ('12', 'dreamtimes（梦幻时光）', '礼品券', '2016-06-30', null, null, '108');
INSERT INTO `cou` VALUES ('13', 'ESTEE LAUDER', '代金券', '2016-07-08', '单笔消费满', null, '103');
INSERT INTO `cou` VALUES ('14', 'DIOR', '礼品券', '2016-07-10', null, null, '191');
INSERT INTO `cou` VALUES ('15', '惠普', '代金券', '2016-07-12', '单笔消费满', null, '199');
INSERT INTO `cou` VALUES ('16', '宏碁', '礼品券', '2016-07-12', null, null, '70');
INSERT INTO `cou` VALUES ('17', 'Armani', '代金券', '2016-07-01', '单笔消费满', null, '169');
INSERT INTO `cou` VALUES ('18', 'Chanel', '礼品券', '2016-07-11', null, null, '82');
INSERT INTO `cou` VALUES ('19', '皮尔.卡丹', '代金券', '2016-07-12', '单笔消费满', null, '126');
INSERT INTO `cou` VALUES ('20', 'dreamtimes（梦幻时光）', '礼品券', '2016-07-13', null, null, '72');
INSERT INTO `cou` VALUES ('21', 'ESTEE LAUDER', '代金券', '2016-07-08', '单笔消费满', null, '78');
INSERT INTO `cou` VALUES ('22', 'DIOR', '礼品券', '2016-06-29', null, null, '197');
INSERT INTO `cou` VALUES ('23', '惠普', '代金券', '2016-07-02', '单笔消费满', null, '146');
INSERT INTO `cou` VALUES ('24', '宏碁', '礼品券', '2016-07-12', null, null, '67');
INSERT INTO `cou` VALUES ('25', 'Armani', '代金券', '2016-07-11', '单笔消费满', null, '144');
INSERT INTO `cou` VALUES ('26', 'Chanel', '礼品券', '2016-07-14', null, null, '57');
INSERT INTO `cou` VALUES ('27', '皮尔.卡丹', '代金券', '2016-07-08', '单笔消费满', null, '59');
INSERT INTO `cou` VALUES ('28', 'dreamtimes（梦幻时光）', '礼品券', '2016-07-14', null, null, '144');
INSERT INTO `cou` VALUES ('29', 'ESTEE LAUDER', '代金券', '2016-07-12', '单笔消费满', null, '185');
INSERT INTO `cou` VALUES ('30', 'DIOR', '礼品券', '2016-07-01', null, null, '129');
INSERT INTO `cou` VALUES ('31', '惠普', '代金券', '2016-06-28', '单笔消费满', null, '106');
INSERT INTO `cou` VALUES ('32', '宏碁', '礼品券', '2016-06-29', null, null, '198');
INSERT INTO `cou` VALUES ('33', 'Armani', '代金券', '2016-06-28', '单笔消费满', null, '68');
INSERT INTO `cou` VALUES ('34', 'Chanel', '礼品券', '2016-07-10', null, null, '167');
INSERT INTO `cou` VALUES ('35', '皮尔.卡丹', '代金券', '2016-07-02', '单笔消费满', null, '126');
INSERT INTO `cou` VALUES ('36', 'dreamtimes（梦幻时光）', '礼品券', '2016-06-30', null, null, '157');
INSERT INTO `cou` VALUES ('37', 'ESTEE LAUDER', '代金券', '2016-06-30', '单笔消费满', null, '86');
INSERT INTO `cou` VALUES ('38', 'DIOR', '礼品券', '2016-07-14', null, null, '57');
INSERT INTO `cou` VALUES ('39', '惠普', '代金券', '2016-07-13', '单笔消费满', null, '130');
INSERT INTO `cou` VALUES ('40', '宏碁', '礼品券', '2016-07-02', null, null, '91');
INSERT INTO `cou` VALUES ('41', 'Armani', '代金券', '2016-07-11', '单笔消费满', null, '188');
INSERT INTO `cou` VALUES ('42', 'Chanel', '礼品券', '2016-07-03', null, null, '67');
INSERT INTO `cou` VALUES ('43', '皮尔.卡丹', '代金券', '2016-06-30', '单笔消费满', null, '91');
INSERT INTO `cou` VALUES ('44', 'dreamtimes（梦幻时光）', '礼品券', '2016-07-02', null, null, '55');
INSERT INTO `cou` VALUES ('45', 'ESTEE LAUDER', '代金券', '2016-07-04', '单笔消费满', null, '141');
INSERT INTO `cou` VALUES ('46', 'DIOR', '礼品券', '2016-07-09', null, null, '164');
INSERT INTO `cou` VALUES ('47', '惠普', '代金券', '2016-07-14', '单笔消费满', null, '72');
INSERT INTO `cou` VALUES ('48', '宏碁', '礼品券', '2016-07-11', null, null, '170');
INSERT INTO `cou` VALUES ('49', 'Armani', '代金券', '2016-07-12', '单笔消费满', null, '195');
INSERT INTO `cou` VALUES ('50', 'Chanel', '礼品券', '2016-06-30', null, null, '106');

-- ----------------------------
-- Table structure for `g_category`
-- ----------------------------
DROP TABLE IF EXISTS `g_category`;
CREATE TABLE `g_category` (
  `gid` bigint(11) NOT NULL COMMENT '商品编号',
  `mname` varchar(20) DEFAULT NULL COMMENT '店名',
  `classification` varchar(50) DEFAULT NULL COMMENT '商品分类',
  KEY `FK_Relationship_15` (`mname`) USING BTREE,
  KEY `FK_Relationship_16` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_category
-- ----------------------------
INSERT INTO `g_category` VALUES ('10001319136', 'Armani', '男装女装');
INSERT INTO `g_category` VALUES ('10001618124', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002150147', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002190146', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002220142', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002243113', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002769128', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002849135', null, '男装女装');
INSERT INTO `g_category` VALUES ('10002858140', null, '男装女装');
INSERT INTO `g_category` VALUES ('10003113129', null, '男装女装');
INSERT INTO `g_category` VALUES ('10003260139', null, '男装女装');
INSERT INTO `g_category` VALUES ('10003337134', null, '男装女装');
INSERT INTO `g_category` VALUES ('10003431137', null, '男装女装');
INSERT INTO `g_category` VALUES ('10003478132', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10003505120', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10003687100', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10003742105', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10003768141', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10003861109', null, '个护化妆');
INSERT INTO `g_category` VALUES ('10003870111', null, '个护化妆');
INSERT INTO `g_category` VALUES ('10003940143', null, '手机数码');
INSERT INTO `g_category` VALUES ('10003986138', null, '手机数码');
INSERT INTO `g_category` VALUES ('10004686127', null, '手机数码');
INSERT INTO `g_category` VALUES ('10004756123', null, '手机数码');
INSERT INTO `g_category` VALUES ('10004836102', null, '手机数码');
INSERT INTO `g_category` VALUES ('10004845117', null, '手机数码');
INSERT INTO `g_category` VALUES ('10005219144', null, '家用电器');
INSERT INTO `g_category` VALUES ('10005281131', null, '电脑办公');
INSERT INTO `g_category` VALUES ('10005459104', null, '生鲜食品酒类');
INSERT INTO `g_category` VALUES ('10005892110', null, '生鲜食品酒类');
INSERT INTO `g_category` VALUES ('10006103115', null, '家居用品');
INSERT INTO `g_category` VALUES ('10006256145', null, '家居用品');
INSERT INTO `g_category` VALUES ('10006420133', null, '家居用品');
INSERT INTO `g_category` VALUES ('10006633103', null, '图书音像');
INSERT INTO `g_category` VALUES ('10006704119', null, '图书音像');
INSERT INTO `g_category` VALUES ('10006725125', null, '母婴玩具');
INSERT INTO `g_category` VALUES ('10006941116', null, '母婴玩具');
INSERT INTO `g_category` VALUES ('10007322130', null, '生鲜食品酒类');
INSERT INTO `g_category` VALUES ('10007424126', null, '户外运动');
INSERT INTO `g_category` VALUES ('10007572108', null, '户外运动');
INSERT INTO `g_category` VALUES ('10007603107', null, '家用电器');
INSERT INTO `g_category` VALUES ('10008114112', null, '家用电器');
INSERT INTO `g_category` VALUES ('10008170106', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10008245118', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10008310101', null, '鞋靴箱包');
INSERT INTO `g_category` VALUES ('10008368114', null, '手机数码');
INSERT INTO `g_category` VALUES ('10008435148', null, '手机数码');
INSERT INTO `g_category` VALUES ('10008583121', null, '个护化妆');
INSERT INTO `g_category` VALUES ('10008636149', null, '个护化妆');
INSERT INTO `g_category` VALUES ('10008686122', 'dreamtimes（梦幻时光）', '生鲜食品酒类');

-- ----------------------------
-- Table structure for `g_parameter`
-- ----------------------------
DROP TABLE IF EXISTS `g_parameter`;
CREATE TABLE `g_parameter` (
  `pid` bigint(11) NOT NULL COMMENT '规格参数ID',
  `mname` varchar(20) DEFAULT NULL COMMENT '店名',
  `ptitle` varchar(20) DEFAULT NULL COMMENT '参数标题',
  `pname` varchar(40) DEFAULT NULL COMMENT '参数名',
  `pvalue` varchar(40) DEFAULT NULL COMMENT '参数值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_parameter
-- ----------------------------
INSERT INTO `g_parameter` VALUES ('1', 'Armani', 'ptitle201', 'pname201', 'pvalue201');
INSERT INTO `g_parameter` VALUES ('2', 'Armani', 'ptitle202', 'pname202', 'pvalue202');
INSERT INTO `g_parameter` VALUES ('3', 'Chanel', 'ptitle203', 'pname203', 'pvalue203');
INSERT INTO `g_parameter` VALUES ('4', 'Chanel', 'ptitle204', 'pname204', 'pvalue204');
INSERT INTO `g_parameter` VALUES ('5', 'Chanel', 'ptitle205', 'pname205', 'pvalue205');
INSERT INTO `g_parameter` VALUES ('6', 'Chanel', 'ptitle206', 'pname206', 'pvalue206');
INSERT INTO `g_parameter` VALUES ('7', 'Chanel', 'ptitle207', 'pname207', 'pvalue207');
INSERT INTO `g_parameter` VALUES ('8', 'Chanel', 'ptitle208', 'pname208', 'pvalue208');
INSERT INTO `g_parameter` VALUES ('9', 'Chanel', 'ptitle209', 'pname209', 'pvalue209');
INSERT INTO `g_parameter` VALUES ('10', '皮尔.卡丹', 'ptitle210', 'pname210', 'pvalue210');
INSERT INTO `g_parameter` VALUES ('11', '皮尔.卡丹', 'ptitle211', 'pname211', 'pvalue211');
INSERT INTO `g_parameter` VALUES ('12', '皮尔.卡丹', 'ptitle212', 'pname212', 'pvalue212');
INSERT INTO `g_parameter` VALUES ('13', '皮尔.卡丹', 'ptitle213', 'pname213', 'pvalue213');
INSERT INTO `g_parameter` VALUES ('14', '皮尔.卡丹', 'ptitle214', 'pname214', 'pvalue214');
INSERT INTO `g_parameter` VALUES ('15', '皮尔.卡丹', 'ptitle215', 'pname215', 'pvalue215');
INSERT INTO `g_parameter` VALUES ('16', '皮尔.卡丹', 'ptitle216', 'pname216', 'pvalue216');
INSERT INTO `g_parameter` VALUES ('17', '皮尔.卡丹', 'ptitle217', 'pname217', 'pvalue217');
INSERT INTO `g_parameter` VALUES ('18', '皮尔.卡丹', 'ptitle218', 'pname218', 'pvalue218');
INSERT INTO `g_parameter` VALUES ('19', '皮尔.卡丹', 'ptitle219', 'pname219', 'pvalue219');
INSERT INTO `g_parameter` VALUES ('20', '皮尔.卡丹', 'ptitle220', 'pname220', 'pvalue220');
INSERT INTO `g_parameter` VALUES ('21', '皮尔.卡丹', 'ptitle221', 'pname221', 'pvalue221');
INSERT INTO `g_parameter` VALUES ('22', '皮尔.卡丹', 'ptitle222', 'pname222', 'pvalue222');
INSERT INTO `g_parameter` VALUES ('23', 'dreamtimes（梦幻时光）', 'ptitle223', 'pname223', 'pvalue223');
INSERT INTO `g_parameter` VALUES ('24', 'dreamtimes（梦幻时光）', 'ptitle224', 'pname224', 'pvalue224');
INSERT INTO `g_parameter` VALUES ('25', 'dreamtimes（梦幻时光）', 'ptitle225', 'pname225', 'pvalue225');
INSERT INTO `g_parameter` VALUES ('26', 'dreamtimes（梦幻时光）', 'ptitle226', 'pname226', 'pvalue226');
INSERT INTO `g_parameter` VALUES ('27', 'ESTEE LAUDER', 'ptitle227', 'pname227', 'pvalue227');
INSERT INTO `g_parameter` VALUES ('28', 'ESTEE LAUDER', 'ptitle228', 'pname228', 'pvalue228');
INSERT INTO `g_parameter` VALUES ('29', 'ESTEE LAUDER', 'ptitle229', 'pname229', 'pvalue229');
INSERT INTO `g_parameter` VALUES ('30', 'ESTEE LAUDER', 'ptitle230', 'pname230', 'pvalue230');
INSERT INTO `g_parameter` VALUES ('31', 'DIOR', 'ptitle231', 'pname231', 'pvalue231');
INSERT INTO `g_parameter` VALUES ('32', 'DIOR', 'ptitle232', 'pname232', 'pvalue232');
INSERT INTO `g_parameter` VALUES ('33', 'DIOR', 'ptitle233', 'pname233', 'pvalue233');
INSERT INTO `g_parameter` VALUES ('34', 'DIOR', 'ptitle234', 'pname234', 'pvalue234');
INSERT INTO `g_parameter` VALUES ('35', 'DIOR', 'ptitle235', 'pname235', 'pvalue235');
INSERT INTO `g_parameter` VALUES ('36', 'DIOR', 'ptitle236', 'pname236', 'pvalue236');
INSERT INTO `g_parameter` VALUES ('37', 'DIOR', 'ptitle237', 'pname237', 'pvalue237');
INSERT INTO `g_parameter` VALUES ('38', '惠普', 'ptitle238', 'pname238', 'pvalue238');
INSERT INTO `g_parameter` VALUES ('39', '惠普', 'ptitle239', 'pname239', 'pvalue239');
INSERT INTO `g_parameter` VALUES ('40', '惠普', 'ptitle240', 'pname240', 'pvalue240');
INSERT INTO `g_parameter` VALUES ('41', '惠普', 'ptitle241', 'pname241', 'pvalue241');
INSERT INTO `g_parameter` VALUES ('42', '宏碁', 'ptitle242', 'pname242', 'pvalue242');
INSERT INTO `g_parameter` VALUES ('43', '宏碁', 'ptitle243', 'pname243', 'pvalue243');
INSERT INTO `g_parameter` VALUES ('44', '宏碁', 'ptitle244', 'pname244', 'pvalue244');
INSERT INTO `g_parameter` VALUES ('45', '宏碁', 'ptitle245', 'pname245', 'pvalue245');
INSERT INTO `g_parameter` VALUES ('46', '宏碁', 'ptitle246', 'pname246', 'pvalue246');
INSERT INTO `g_parameter` VALUES ('47', '宏碁', 'ptitle247', 'pname247', 'pvalue247');
INSERT INTO `g_parameter` VALUES ('48', '宏碁', 'ptitle248', 'pname248', 'pvalue248');
INSERT INTO `g_parameter` VALUES ('49', '宏碁', 'ptitle249', 'pname249', 'pvalue249');
INSERT INTO `g_parameter` VALUES ('50', '宏碁', 'ptitle250', 'pname250', 'pvalue250');
INSERT INTO `g_parameter` VALUES ('1', 'Armani', 'ptitle201', 'pname201', 'pvalue201');
INSERT INTO `g_parameter` VALUES ('2', 'Armani', 'ptitle202', 'pname202', 'pvalue202');
INSERT INTO `g_parameter` VALUES ('3', 'Chanel', 'ptitle203', 'pname203', 'pvalue203');
INSERT INTO `g_parameter` VALUES ('4', 'Chanel', 'ptitle204', 'pname204', 'pvalue204');
INSERT INTO `g_parameter` VALUES ('5', 'Chanel', 'ptitle205', 'pname205', 'pvalue205');
INSERT INTO `g_parameter` VALUES ('6', 'Chanel', 'ptitle206', 'pname206', 'pvalue206');
INSERT INTO `g_parameter` VALUES ('7', 'Chanel', 'ptitle207', 'pname207', 'pvalue207');
INSERT INTO `g_parameter` VALUES ('8', 'Chanel', 'ptitle208', 'pname208', 'pvalue208');
INSERT INTO `g_parameter` VALUES ('9', 'Chanel', 'ptitle209', 'pname209', 'pvalue209');
INSERT INTO `g_parameter` VALUES ('10', '皮尔.卡丹', 'ptitle210', 'pname210', 'pvalue210');
INSERT INTO `g_parameter` VALUES ('11', '皮尔.卡丹', 'ptitle211', 'pname211', 'pvalue211');
INSERT INTO `g_parameter` VALUES ('12', '皮尔.卡丹', 'ptitle212', 'pname212', 'pvalue212');
INSERT INTO `g_parameter` VALUES ('13', '皮尔.卡丹', 'ptitle213', 'pname213', 'pvalue213');
INSERT INTO `g_parameter` VALUES ('14', '皮尔.卡丹', 'ptitle214', 'pname214', 'pvalue214');
INSERT INTO `g_parameter` VALUES ('15', '皮尔.卡丹', 'ptitle215', 'pname215', 'pvalue215');
INSERT INTO `g_parameter` VALUES ('16', '皮尔.卡丹', 'ptitle216', 'pname216', 'pvalue216');
INSERT INTO `g_parameter` VALUES ('17', '皮尔.卡丹', 'ptitle217', 'pname217', 'pvalue217');
INSERT INTO `g_parameter` VALUES ('18', '皮尔.卡丹', 'ptitle218', 'pname218', 'pvalue218');
INSERT INTO `g_parameter` VALUES ('19', '皮尔.卡丹', 'ptitle219', 'pname219', 'pvalue219');
INSERT INTO `g_parameter` VALUES ('20', '皮尔.卡丹', 'ptitle220', 'pname220', 'pvalue220');
INSERT INTO `g_parameter` VALUES ('21', '皮尔.卡丹', 'ptitle221', 'pname221', 'pvalue221');
INSERT INTO `g_parameter` VALUES ('22', '皮尔.卡丹', 'ptitle222', 'pname222', 'pvalue222');
INSERT INTO `g_parameter` VALUES ('23', 'dreamtimes（梦幻时光）', 'ptitle223', 'pname223', 'pvalue223');
INSERT INTO `g_parameter` VALUES ('24', 'dreamtimes（梦幻时光）', 'ptitle224', 'pname224', 'pvalue224');
INSERT INTO `g_parameter` VALUES ('25', 'dreamtimes（梦幻时光）', 'ptitle225', 'pname225', 'pvalue225');
INSERT INTO `g_parameter` VALUES ('26', 'dreamtimes（梦幻时光）', 'ptitle226', 'pname226', 'pvalue226');
INSERT INTO `g_parameter` VALUES ('27', 'ESTEE LAUDER', 'ptitle227', 'pname227', 'pvalue227');
INSERT INTO `g_parameter` VALUES ('28', 'ESTEE LAUDER', 'ptitle228', 'pname228', 'pvalue228');
INSERT INTO `g_parameter` VALUES ('29', 'ESTEE LAUDER', 'ptitle229', 'pname229', 'pvalue229');
INSERT INTO `g_parameter` VALUES ('30', 'ESTEE LAUDER', 'ptitle230', 'pname230', 'pvalue230');
INSERT INTO `g_parameter` VALUES ('31', 'DIOR', 'ptitle231', 'pname231', 'pvalue231');
INSERT INTO `g_parameter` VALUES ('32', 'DIOR', 'ptitle232', 'pname232', 'pvalue232');
INSERT INTO `g_parameter` VALUES ('33', 'DIOR', 'ptitle233', 'pname233', 'pvalue233');
INSERT INTO `g_parameter` VALUES ('34', 'DIOR', 'ptitle234', 'pname234', 'pvalue234');
INSERT INTO `g_parameter` VALUES ('35', 'DIOR', 'ptitle235', 'pname235', 'pvalue235');
INSERT INTO `g_parameter` VALUES ('36', 'DIOR', 'ptitle236', 'pname236', 'pvalue236');
INSERT INTO `g_parameter` VALUES ('37', 'DIOR', 'ptitle237', 'pname237', 'pvalue237');
INSERT INTO `g_parameter` VALUES ('38', '惠普', 'ptitle238', 'pname238', 'pvalue238');
INSERT INTO `g_parameter` VALUES ('39', '惠普', 'ptitle239', 'pname239', 'pvalue239');
INSERT INTO `g_parameter` VALUES ('40', '惠普', 'ptitle240', 'pname240', 'pvalue240');
INSERT INTO `g_parameter` VALUES ('41', '惠普', 'ptitle241', 'pname241', 'pvalue241');
INSERT INTO `g_parameter` VALUES ('42', '宏碁', 'ptitle242', 'pname242', 'pvalue242');
INSERT INTO `g_parameter` VALUES ('43', '宏碁', 'ptitle243', 'pname243', 'pvalue243');
INSERT INTO `g_parameter` VALUES ('44', '宏碁', 'ptitle244', 'pname244', 'pvalue244');
INSERT INTO `g_parameter` VALUES ('45', '宏碁', 'ptitle245', 'pname245', 'pvalue245');
INSERT INTO `g_parameter` VALUES ('46', '宏碁', 'ptitle246', 'pname246', 'pvalue246');
INSERT INTO `g_parameter` VALUES ('47', '宏碁', 'ptitle247', 'pname247', 'pvalue247');
INSERT INTO `g_parameter` VALUES ('48', '宏碁', 'ptitle248', 'pname248', 'pvalue248');
INSERT INTO `g_parameter` VALUES ('49', '宏碁', 'ptitle249', 'pname249', 'pvalue249');
INSERT INTO `g_parameter` VALUES ('50', '宏碁', 'ptitle250', 'pname250', 'pvalue250');
INSERT INTO `g_parameter` VALUES ('1', 'Armani', 'ptitle201', 'pname201', 'pvalue201');
INSERT INTO `g_parameter` VALUES ('2', 'Armani', 'ptitle202', 'pname202', 'pvalue202');
INSERT INTO `g_parameter` VALUES ('3', 'Chanel', 'ptitle203', 'pname203', 'pvalue203');
INSERT INTO `g_parameter` VALUES ('4', 'Chanel', 'ptitle204', 'pname204', 'pvalue204');
INSERT INTO `g_parameter` VALUES ('5', 'Chanel', 'ptitle205', 'pname205', 'pvalue205');
INSERT INTO `g_parameter` VALUES ('6', 'Chanel', 'ptitle206', 'pname206', 'pvalue206');
INSERT INTO `g_parameter` VALUES ('7', 'Chanel', 'ptitle207', 'pname207', 'pvalue207');
INSERT INTO `g_parameter` VALUES ('8', 'Chanel', 'ptitle208', 'pname208', 'pvalue208');
INSERT INTO `g_parameter` VALUES ('9', 'Chanel', 'ptitle209', 'pname209', 'pvalue209');
INSERT INTO `g_parameter` VALUES ('10', '皮尔.卡丹', 'ptitle210', 'pname210', 'pvalue210');
INSERT INTO `g_parameter` VALUES ('11', '皮尔.卡丹', 'ptitle211', 'pname211', 'pvalue211');
INSERT INTO `g_parameter` VALUES ('12', '皮尔.卡丹', 'ptitle212', 'pname212', 'pvalue212');
INSERT INTO `g_parameter` VALUES ('13', '皮尔.卡丹', 'ptitle213', 'pname213', 'pvalue213');
INSERT INTO `g_parameter` VALUES ('14', '皮尔.卡丹', 'ptitle214', 'pname214', 'pvalue214');
INSERT INTO `g_parameter` VALUES ('15', '皮尔.卡丹', 'ptitle215', 'pname215', 'pvalue215');
INSERT INTO `g_parameter` VALUES ('16', '皮尔.卡丹', 'ptitle216', 'pname216', 'pvalue216');
INSERT INTO `g_parameter` VALUES ('17', '皮尔.卡丹', 'ptitle217', 'pname217', 'pvalue217');
INSERT INTO `g_parameter` VALUES ('18', '皮尔.卡丹', 'ptitle218', 'pname218', 'pvalue218');
INSERT INTO `g_parameter` VALUES ('19', '皮尔.卡丹', 'ptitle219', 'pname219', 'pvalue219');
INSERT INTO `g_parameter` VALUES ('20', '皮尔.卡丹', 'ptitle220', 'pname220', 'pvalue220');
INSERT INTO `g_parameter` VALUES ('21', '皮尔.卡丹', 'ptitle221', 'pname221', 'pvalue221');
INSERT INTO `g_parameter` VALUES ('22', '皮尔.卡丹', 'ptitle222', 'pname222', 'pvalue222');
INSERT INTO `g_parameter` VALUES ('23', 'dreamtimes（梦幻时光）', 'ptitle223', 'pname223', 'pvalue223');
INSERT INTO `g_parameter` VALUES ('24', 'dreamtimes（梦幻时光）', 'ptitle224', 'pname224', 'pvalue224');
INSERT INTO `g_parameter` VALUES ('25', 'dreamtimes（梦幻时光）', 'ptitle225', 'pname225', 'pvalue225');
INSERT INTO `g_parameter` VALUES ('26', 'dreamtimes（梦幻时光）', 'ptitle226', 'pname226', 'pvalue226');
INSERT INTO `g_parameter` VALUES ('27', 'ESTEE LAUDER', 'ptitle227', 'pname227', 'pvalue227');
INSERT INTO `g_parameter` VALUES ('28', 'ESTEE LAUDER', 'ptitle228', 'pname228', 'pvalue228');
INSERT INTO `g_parameter` VALUES ('29', 'ESTEE LAUDER', 'ptitle229', 'pname229', 'pvalue229');
INSERT INTO `g_parameter` VALUES ('30', 'ESTEE LAUDER', 'ptitle230', 'pname230', 'pvalue230');
INSERT INTO `g_parameter` VALUES ('31', 'DIOR', 'ptitle231', 'pname231', 'pvalue231');
INSERT INTO `g_parameter` VALUES ('32', 'DIOR', 'ptitle232', 'pname232', 'pvalue232');
INSERT INTO `g_parameter` VALUES ('33', 'DIOR', 'ptitle233', 'pname233', 'pvalue233');
INSERT INTO `g_parameter` VALUES ('34', 'DIOR', 'ptitle234', 'pname234', 'pvalue234');
INSERT INTO `g_parameter` VALUES ('35', 'DIOR', 'ptitle235', 'pname235', 'pvalue235');
INSERT INTO `g_parameter` VALUES ('36', 'DIOR', 'ptitle236', 'pname236', 'pvalue236');
INSERT INTO `g_parameter` VALUES ('37', 'DIOR', 'ptitle237', 'pname237', 'pvalue237');
INSERT INTO `g_parameter` VALUES ('38', '惠普', 'ptitle238', 'pname238', 'pvalue238');
INSERT INTO `g_parameter` VALUES ('39', '惠普', 'ptitle239', 'pname239', 'pvalue239');
INSERT INTO `g_parameter` VALUES ('40', '惠普', 'ptitle240', 'pname240', 'pvalue240');
INSERT INTO `g_parameter` VALUES ('41', '惠普', 'ptitle241', 'pname241', 'pvalue241');
INSERT INTO `g_parameter` VALUES ('42', '宏碁', 'ptitle242', 'pname242', 'pvalue242');
INSERT INTO `g_parameter` VALUES ('43', '宏碁', 'ptitle243', 'pname243', 'pvalue243');
INSERT INTO `g_parameter` VALUES ('44', '宏碁', 'ptitle244', 'pname244', 'pvalue244');
INSERT INTO `g_parameter` VALUES ('45', '宏碁', 'ptitle245', 'pname245', 'pvalue245');
INSERT INTO `g_parameter` VALUES ('46', '宏碁', 'ptitle246', 'pname246', 'pvalue246');
INSERT INTO `g_parameter` VALUES ('47', '宏碁', 'ptitle247', 'pname247', 'pvalue247');
INSERT INTO `g_parameter` VALUES ('48', '宏碁', 'ptitle248', 'pname248', 'pvalue248');
INSERT INTO `g_parameter` VALUES ('49', '宏碁', 'ptitle249', 'pname249', 'pvalue249');
INSERT INTO `g_parameter` VALUES ('50', '宏碁', 'ptitle250', 'pname250', 'pvalue250');
INSERT INTO `g_parameter` VALUES ('1', 'Armani', 'ptitle201', 'pname201', 'pvalue201');
INSERT INTO `g_parameter` VALUES ('2', 'Armani', 'ptitle202', 'pname202', 'pvalue202');
INSERT INTO `g_parameter` VALUES ('3', 'Chanel', 'ptitle203', 'pname203', 'pvalue203');
INSERT INTO `g_parameter` VALUES ('4', 'Chanel', 'ptitle204', 'pname204', 'pvalue204');
INSERT INTO `g_parameter` VALUES ('5', 'Chanel', 'ptitle205', 'pname205', 'pvalue205');
INSERT INTO `g_parameter` VALUES ('6', 'Chanel', 'ptitle206', 'pname206', 'pvalue206');
INSERT INTO `g_parameter` VALUES ('7', 'Chanel', 'ptitle207', 'pname207', 'pvalue207');
INSERT INTO `g_parameter` VALUES ('8', 'Chanel', 'ptitle208', 'pname208', 'pvalue208');
INSERT INTO `g_parameter` VALUES ('9', 'Chanel', 'ptitle209', 'pname209', 'pvalue209');
INSERT INTO `g_parameter` VALUES ('10', '皮尔.卡丹', 'ptitle210', 'pname210', 'pvalue210');
INSERT INTO `g_parameter` VALUES ('11', '皮尔.卡丹', 'ptitle211', 'pname211', 'pvalue211');
INSERT INTO `g_parameter` VALUES ('12', '皮尔.卡丹', 'ptitle212', 'pname212', 'pvalue212');
INSERT INTO `g_parameter` VALUES ('13', '皮尔.卡丹', 'ptitle213', 'pname213', 'pvalue213');
INSERT INTO `g_parameter` VALUES ('14', '皮尔.卡丹', 'ptitle214', 'pname214', 'pvalue214');
INSERT INTO `g_parameter` VALUES ('15', '皮尔.卡丹', 'ptitle215', 'pname215', 'pvalue215');
INSERT INTO `g_parameter` VALUES ('16', '皮尔.卡丹', 'ptitle216', 'pname216', 'pvalue216');
INSERT INTO `g_parameter` VALUES ('17', '皮尔.卡丹', 'ptitle217', 'pname217', 'pvalue217');
INSERT INTO `g_parameter` VALUES ('18', '皮尔.卡丹', 'ptitle218', 'pname218', 'pvalue218');
INSERT INTO `g_parameter` VALUES ('19', '皮尔.卡丹', 'ptitle219', 'pname219', 'pvalue219');
INSERT INTO `g_parameter` VALUES ('20', '皮尔.卡丹', 'ptitle220', 'pname220', 'pvalue220');
INSERT INTO `g_parameter` VALUES ('21', '皮尔.卡丹', 'ptitle221', 'pname221', 'pvalue221');
INSERT INTO `g_parameter` VALUES ('22', '皮尔.卡丹', 'ptitle222', 'pname222', 'pvalue222');
INSERT INTO `g_parameter` VALUES ('23', 'dreamtimes（梦幻时光）', 'ptitle223', 'pname223', 'pvalue223');
INSERT INTO `g_parameter` VALUES ('24', 'dreamtimes（梦幻时光）', 'ptitle224', 'pname224', 'pvalue224');
INSERT INTO `g_parameter` VALUES ('25', 'dreamtimes（梦幻时光）', 'ptitle225', 'pname225', 'pvalue225');
INSERT INTO `g_parameter` VALUES ('26', 'dreamtimes（梦幻时光）', 'ptitle226', 'pname226', 'pvalue226');
INSERT INTO `g_parameter` VALUES ('27', 'ESTEE LAUDER', 'ptitle227', 'pname227', 'pvalue227');
INSERT INTO `g_parameter` VALUES ('28', 'ESTEE LAUDER', 'ptitle228', 'pname228', 'pvalue228');
INSERT INTO `g_parameter` VALUES ('29', 'ESTEE LAUDER', 'ptitle229', 'pname229', 'pvalue229');
INSERT INTO `g_parameter` VALUES ('30', 'ESTEE LAUDER', 'ptitle230', 'pname230', 'pvalue230');
INSERT INTO `g_parameter` VALUES ('31', 'DIOR', 'ptitle231', 'pname231', 'pvalue231');
INSERT INTO `g_parameter` VALUES ('32', 'DIOR', 'ptitle232', 'pname232', 'pvalue232');
INSERT INTO `g_parameter` VALUES ('33', 'DIOR', 'ptitle233', 'pname233', 'pvalue233');
INSERT INTO `g_parameter` VALUES ('34', 'DIOR', 'ptitle234', 'pname234', 'pvalue234');
INSERT INTO `g_parameter` VALUES ('35', 'DIOR', 'ptitle235', 'pname235', 'pvalue235');
INSERT INTO `g_parameter` VALUES ('36', 'DIOR', 'ptitle236', 'pname236', 'pvalue236');
INSERT INTO `g_parameter` VALUES ('37', 'DIOR', 'ptitle237', 'pname237', 'pvalue237');
INSERT INTO `g_parameter` VALUES ('38', '惠普', 'ptitle238', 'pname238', 'pvalue238');
INSERT INTO `g_parameter` VALUES ('39', '惠普', 'ptitle239', 'pname239', 'pvalue239');
INSERT INTO `g_parameter` VALUES ('40', '惠普', 'ptitle240', 'pname240', 'pvalue240');
INSERT INTO `g_parameter` VALUES ('41', '惠普', 'ptitle241', 'pname241', 'pvalue241');
INSERT INTO `g_parameter` VALUES ('42', '宏碁', 'ptitle242', 'pname242', 'pvalue242');
INSERT INTO `g_parameter` VALUES ('43', '宏碁', 'ptitle243', 'pname243', 'pvalue243');
INSERT INTO `g_parameter` VALUES ('44', '宏碁', 'ptitle244', 'pname244', 'pvalue244');
INSERT INTO `g_parameter` VALUES ('45', '宏碁', 'ptitle245', 'pname245', 'pvalue245');
INSERT INTO `g_parameter` VALUES ('46', '宏碁', 'ptitle246', 'pname246', 'pvalue246');
INSERT INTO `g_parameter` VALUES ('47', '宏碁', 'ptitle247', 'pname247', 'pvalue247');
INSERT INTO `g_parameter` VALUES ('48', '宏碁', 'ptitle248', 'pname248', 'pvalue248');
INSERT INTO `g_parameter` VALUES ('49', '宏碁', 'ptitle249', 'pname249', 'pvalue249');
INSERT INTO `g_parameter` VALUES ('50', '宏碁', 'ptitle250', 'pname250', 'pvalue250');
INSERT INTO `g_parameter` VALUES ('1', 'Armani', 'ptitle201', 'pname201', 'pvalue201');
INSERT INTO `g_parameter` VALUES ('2', 'Armani', 'ptitle202', 'pname202', 'pvalue202');
INSERT INTO `g_parameter` VALUES ('3', 'Chanel', 'ptitle203', 'pname203', 'pvalue203');
INSERT INTO `g_parameter` VALUES ('4', 'Chanel', 'ptitle204', 'pname204', 'pvalue204');
INSERT INTO `g_parameter` VALUES ('5', 'Chanel', 'ptitle205', 'pname205', 'pvalue205');
INSERT INTO `g_parameter` VALUES ('6', 'Chanel', 'ptitle206', 'pname206', 'pvalue206');
INSERT INTO `g_parameter` VALUES ('7', 'Chanel', 'ptitle207', 'pname207', 'pvalue207');
INSERT INTO `g_parameter` VALUES ('8', 'Chanel', 'ptitle208', 'pname208', 'pvalue208');
INSERT INTO `g_parameter` VALUES ('9', 'Chanel', 'ptitle209', 'pname209', 'pvalue209');
INSERT INTO `g_parameter` VALUES ('10', '皮尔.卡丹', 'ptitle210', 'pname210', 'pvalue210');
INSERT INTO `g_parameter` VALUES ('11', '皮尔.卡丹', 'ptitle211', 'pname211', 'pvalue211');
INSERT INTO `g_parameter` VALUES ('12', '皮尔.卡丹', 'ptitle212', 'pname212', 'pvalue212');
INSERT INTO `g_parameter` VALUES ('13', '皮尔.卡丹', 'ptitle213', 'pname213', 'pvalue213');
INSERT INTO `g_parameter` VALUES ('14', '皮尔.卡丹', 'ptitle214', 'pname214', 'pvalue214');
INSERT INTO `g_parameter` VALUES ('15', '皮尔.卡丹', 'ptitle215', 'pname215', 'pvalue215');
INSERT INTO `g_parameter` VALUES ('16', '皮尔.卡丹', 'ptitle216', 'pname216', 'pvalue216');
INSERT INTO `g_parameter` VALUES ('17', '皮尔.卡丹', 'ptitle217', 'pname217', 'pvalue217');
INSERT INTO `g_parameter` VALUES ('18', '皮尔.卡丹', 'ptitle218', 'pname218', 'pvalue218');
INSERT INTO `g_parameter` VALUES ('19', '皮尔.卡丹', 'ptitle219', 'pname219', 'pvalue219');
INSERT INTO `g_parameter` VALUES ('20', '皮尔.卡丹', 'ptitle220', 'pname220', 'pvalue220');
INSERT INTO `g_parameter` VALUES ('21', '皮尔.卡丹', 'ptitle221', 'pname221', 'pvalue221');
INSERT INTO `g_parameter` VALUES ('22', '皮尔.卡丹', 'ptitle222', 'pname222', 'pvalue222');
INSERT INTO `g_parameter` VALUES ('23', 'dreamtimes（梦幻时光）', 'ptitle223', 'pname223', 'pvalue223');
INSERT INTO `g_parameter` VALUES ('24', 'dreamtimes（梦幻时光）', 'ptitle224', 'pname224', 'pvalue224');
INSERT INTO `g_parameter` VALUES ('25', 'dreamtimes（梦幻时光）', 'ptitle225', 'pname225', 'pvalue225');
INSERT INTO `g_parameter` VALUES ('26', 'dreamtimes（梦幻时光）', 'ptitle226', 'pname226', 'pvalue226');
INSERT INTO `g_parameter` VALUES ('27', 'ESTEE LAUDER', 'ptitle227', 'pname227', 'pvalue227');
INSERT INTO `g_parameter` VALUES ('28', 'ESTEE LAUDER', 'ptitle228', 'pname228', 'pvalue228');
INSERT INTO `g_parameter` VALUES ('29', 'ESTEE LAUDER', 'ptitle229', 'pname229', 'pvalue229');
INSERT INTO `g_parameter` VALUES ('30', 'ESTEE LAUDER', 'ptitle230', 'pname230', 'pvalue230');
INSERT INTO `g_parameter` VALUES ('31', 'DIOR', 'ptitle231', 'pname231', 'pvalue231');
INSERT INTO `g_parameter` VALUES ('32', 'DIOR', 'ptitle232', 'pname232', 'pvalue232');
INSERT INTO `g_parameter` VALUES ('33', 'DIOR', 'ptitle233', 'pname233', 'pvalue233');
INSERT INTO `g_parameter` VALUES ('34', 'DIOR', 'ptitle234', 'pname234', 'pvalue234');
INSERT INTO `g_parameter` VALUES ('35', 'DIOR', 'ptitle235', 'pname235', 'pvalue235');
INSERT INTO `g_parameter` VALUES ('36', 'DIOR', 'ptitle236', 'pname236', 'pvalue236');
INSERT INTO `g_parameter` VALUES ('37', 'DIOR', 'ptitle237', 'pname237', 'pvalue237');
INSERT INTO `g_parameter` VALUES ('38', '惠普', 'ptitle238', 'pname238', 'pvalue238');
INSERT INTO `g_parameter` VALUES ('39', '惠普', 'ptitle239', 'pname239', 'pvalue239');
INSERT INTO `g_parameter` VALUES ('40', '惠普', 'ptitle240', 'pname240', 'pvalue240');
INSERT INTO `g_parameter` VALUES ('41', '惠普', 'ptitle241', 'pname241', 'pvalue241');
INSERT INTO `g_parameter` VALUES ('42', '宏碁', 'ptitle242', 'pname242', 'pvalue242');
INSERT INTO `g_parameter` VALUES ('43', '宏碁', 'ptitle243', 'pname243', 'pvalue243');
INSERT INTO `g_parameter` VALUES ('44', '宏碁', 'ptitle244', 'pname244', 'pvalue244');
INSERT INTO `g_parameter` VALUES ('45', '宏碁', 'ptitle245', 'pname245', 'pvalue245');
INSERT INTO `g_parameter` VALUES ('46', '宏碁', 'ptitle246', 'pname246', 'pvalue246');
INSERT INTO `g_parameter` VALUES ('47', '宏碁', 'ptitle247', 'pname247', 'pvalue247');
INSERT INTO `g_parameter` VALUES ('48', '宏碁', 'ptitle248', 'pname248', 'pvalue248');
INSERT INTO `g_parameter` VALUES ('49', '宏碁', 'ptitle249', 'pname249', 'pvalue249');
INSERT INTO `g_parameter` VALUES ('50', '宏碁', 'ptitle250', 'pname250', 'pvalue250');

-- ----------------------------
-- Table structure for `g_propert`
-- ----------------------------
DROP TABLE IF EXISTS `g_propert`;
CREATE TABLE `g_propert` (
  `id` int(11) NOT NULL,
  `gpid` int(10) NOT NULL COMMENT '属性号',
  `mid` bigint(10) NOT NULL COMMENT '店号',
  `proName` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性名',
  `proValue` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of g_propert
-- ----------------------------
INSERT INTO `g_propert` VALUES ('1', '1', '10001', '属性名1', '属性值1');
INSERT INTO `g_propert` VALUES ('2', '1', '10001', '属性名2', '属性值2');
INSERT INTO `g_propert` VALUES ('3', '3', '10002', '属性名3', '属性值3');
INSERT INTO `g_propert` VALUES ('4', '4', '10002', '属性名4', '属性值4');
INSERT INTO `g_propert` VALUES ('5', '5', '10002', '属性名5', '属性值5');
INSERT INTO `g_propert` VALUES ('6', '6', '10002', '属性名6', '属性值6');
INSERT INTO `g_propert` VALUES ('7', '7', '10002', '属性名7', '属性值7');
INSERT INTO `g_propert` VALUES ('8', '8', '10002', '属性名8', '属性值8');
INSERT INTO `g_propert` VALUES ('9', '9', '10002', '属性名9', '属性值9');
INSERT INTO `g_propert` VALUES ('10', '10', '10003', '属性名10', '属性值10');
INSERT INTO `g_propert` VALUES ('11', '11', '10003', '属性名11', '属性值11');
INSERT INTO `g_propert` VALUES ('12', '12', '10003', '属性名12', '属性值12');
INSERT INTO `g_propert` VALUES ('13', '13', '10003', '属性名13', '属性值13');
INSERT INTO `g_propert` VALUES ('14', '14', '10003', '属性名14', '属性值14');
INSERT INTO `g_propert` VALUES ('15', '15', '10003', '属性名15', '属性值15');
INSERT INTO `g_propert` VALUES ('16', '16', '10003', '属性名16', '属性值16');
INSERT INTO `g_propert` VALUES ('17', '17', '10003', '属性名17', '属性值17');
INSERT INTO `g_propert` VALUES ('18', '18', '10003', '属性名18', '属性值18');
INSERT INTO `g_propert` VALUES ('19', '19', '10003', '属性名19', '属性值19');
INSERT INTO `g_propert` VALUES ('20', '20', '10003', '属性名20', '属性值20');
INSERT INTO `g_propert` VALUES ('21', '21', '10003', '属性名21', '属性值21');
INSERT INTO `g_propert` VALUES ('22', '22', '10003', '属性名22', '属性值22');
INSERT INTO `g_propert` VALUES ('23', '23', '10004', '属性名23', '属性值23');
INSERT INTO `g_propert` VALUES ('24', '24', '10004', '属性名24', '属性值24');
INSERT INTO `g_propert` VALUES ('25', '25', '10004', '属性名25', '属性值25');
INSERT INTO `g_propert` VALUES ('26', '26', '10004', '属性名26', '属性值26');
INSERT INTO `g_propert` VALUES ('27', '27', '10005', '属性名27', '属性值27');
INSERT INTO `g_propert` VALUES ('28', '28', '10005', '属性名28', '属性值28');
INSERT INTO `g_propert` VALUES ('29', '29', '10005', '属性名29', '属性值29');
INSERT INTO `g_propert` VALUES ('30', '30', '10005', '属性名30', '属性值30');
INSERT INTO `g_propert` VALUES ('31', '31', '10006', '属性名31', '属性值31');
INSERT INTO `g_propert` VALUES ('32', '32', '10006', '属性名32', '属性值32');
INSERT INTO `g_propert` VALUES ('33', '33', '10006', '属性名33', '属性值33');
INSERT INTO `g_propert` VALUES ('34', '34', '10006', '属性名34', '属性值34');
INSERT INTO `g_propert` VALUES ('35', '35', '10006', '属性名35', '属性值35');
INSERT INTO `g_propert` VALUES ('36', '36', '10006', '属性名36', '属性值36');
INSERT INTO `g_propert` VALUES ('37', '37', '10006', '属性名37', '属性值37');
INSERT INTO `g_propert` VALUES ('38', '38', '10007', '属性名38', '属性值38');
INSERT INTO `g_propert` VALUES ('39', '39', '10007', '属性名39', '属性值39');
INSERT INTO `g_propert` VALUES ('40', '40', '10007', '属性名40', '属性值40');
INSERT INTO `g_propert` VALUES ('41', '41', '10007', '属性名41', '属性值41');
INSERT INTO `g_propert` VALUES ('42', '42', '10008', '属性名42', '属性值42');
INSERT INTO `g_propert` VALUES ('43', '43', '10008', '属性名43', '属性值43');
INSERT INTO `g_propert` VALUES ('44', '44', '10008', '属性名44', '属性值44');
INSERT INTO `g_propert` VALUES ('45', '45', '10008', '属性名45', '属性值45');
INSERT INTO `g_propert` VALUES ('46', '46', '10008', '属性名46', '属性值46');
INSERT INTO `g_propert` VALUES ('47', '47', '10008', '属性名47', '属性值47');
INSERT INTO `g_propert` VALUES ('48', '48', '10008', '属性名48', '属性值48');
INSERT INTO `g_propert` VALUES ('49', '49', '10008', '属性名49', '属性值49');
INSERT INTO `g_propert` VALUES ('50', '50', '10008', '属性名50', '属性值50');
INSERT INTO `g_propert` VALUES ('51', '1', '10001', '属性名51', '属性值51');
INSERT INTO `g_propert` VALUES ('52', '2', '10001', '属性名52', '属性值52');
INSERT INTO `g_propert` VALUES ('53', '3', '10002', '属性名53', '属性值53');
INSERT INTO `g_propert` VALUES ('54', '4', '10002', '属性名54', '属性值54');
INSERT INTO `g_propert` VALUES ('55', '5', '10002', '属性名55', '属性值55');
INSERT INTO `g_propert` VALUES ('56', '6', '10002', '属性名56', '属性值56');
INSERT INTO `g_propert` VALUES ('57', '7', '10002', '属性名57', '属性值57');
INSERT INTO `g_propert` VALUES ('58', '8', '10002', '属性名58', '属性值58');
INSERT INTO `g_propert` VALUES ('59', '9', '10002', '属性名59', '属性值59');
INSERT INTO `g_propert` VALUES ('60', '10', '10003', '属性名60', '属性值60');
INSERT INTO `g_propert` VALUES ('61', '11', '10003', '属性名61', '属性值61');
INSERT INTO `g_propert` VALUES ('62', '12', '10003', '属性名62', '属性值62');
INSERT INTO `g_propert` VALUES ('63', '13', '10003', '属性名63', '属性值63');
INSERT INTO `g_propert` VALUES ('64', '14', '10003', '属性名64', '属性值64');
INSERT INTO `g_propert` VALUES ('65', '15', '10003', '属性名65', '属性值65');
INSERT INTO `g_propert` VALUES ('66', '16', '10003', '属性名66', '属性值66');
INSERT INTO `g_propert` VALUES ('67', '17', '10003', '属性名67', '属性值67');
INSERT INTO `g_propert` VALUES ('68', '18', '10003', '属性名68', '属性值68');
INSERT INTO `g_propert` VALUES ('69', '19', '10003', '属性名69', '属性值69');
INSERT INTO `g_propert` VALUES ('70', '20', '10003', '属性名70', '属性值70');
INSERT INTO `g_propert` VALUES ('71', '21', '10003', '属性名71', '属性值71');
INSERT INTO `g_propert` VALUES ('72', '22', '10003', '属性名72', '属性值72');
INSERT INTO `g_propert` VALUES ('73', '23', '10004', '属性名73', '属性值73');
INSERT INTO `g_propert` VALUES ('74', '24', '10004', '属性名74', '属性值74');
INSERT INTO `g_propert` VALUES ('75', '25', '10004', '属性名75', '属性值75');
INSERT INTO `g_propert` VALUES ('76', '26', '10004', '属性名76', '属性值76');
INSERT INTO `g_propert` VALUES ('77', '27', '10005', '属性名77', '属性值77');
INSERT INTO `g_propert` VALUES ('78', '28', '10005', '属性名78', '属性值78');
INSERT INTO `g_propert` VALUES ('79', '29', '10005', '属性名79', '属性值79');
INSERT INTO `g_propert` VALUES ('80', '30', '10005', '属性名80', '属性值80');
INSERT INTO `g_propert` VALUES ('81', '31', '10006', '属性名81', '属性值81');
INSERT INTO `g_propert` VALUES ('82', '32', '10006', '属性名82', '属性值82');
INSERT INTO `g_propert` VALUES ('83', '33', '10006', '属性名83', '属性值83');
INSERT INTO `g_propert` VALUES ('84', '34', '10006', '属性名84', '属性值84');
INSERT INTO `g_propert` VALUES ('85', '35', '10006', '属性名85', '属性值85');
INSERT INTO `g_propert` VALUES ('86', '36', '10006', '属性名86', '属性值86');
INSERT INTO `g_propert` VALUES ('87', '37', '10006', '属性名87', '属性值87');
INSERT INTO `g_propert` VALUES ('88', '38', '10007', '属性名88', '属性值88');
INSERT INTO `g_propert` VALUES ('89', '39', '10007', '属性名89', '属性值89');
INSERT INTO `g_propert` VALUES ('90', '40', '10007', '属性名90', '属性值90');
INSERT INTO `g_propert` VALUES ('91', '41', '10007', '属性名91', '属性值91');
INSERT INTO `g_propert` VALUES ('92', '42', '10008', '属性名92', '属性值92');
INSERT INTO `g_propert` VALUES ('93', '43', '10008', '属性名93', '属性值93');
INSERT INTO `g_propert` VALUES ('94', '44', '10008', '属性名94', '属性值94');
INSERT INTO `g_propert` VALUES ('95', '45', '10008', '属性名95', '属性值95');
INSERT INTO `g_propert` VALUES ('96', '46', '10008', '属性名96', '属性值96');
INSERT INTO `g_propert` VALUES ('97', '47', '10008', '属性名97', '属性值97');
INSERT INTO `g_propert` VALUES ('98', '48', '10008', '属性名98', '属性值98');
INSERT INTO `g_propert` VALUES ('99', '49', '10008', '属性名99', '属性值99');
INSERT INTO `g_propert` VALUES ('100', '50', '10008', '属性名100', '属性值100');
INSERT INTO `g_propert` VALUES ('101', '1', '10001', '属性名101', '属性值101');
INSERT INTO `g_propert` VALUES ('102', '2', '10001', '属性名102', '属性值102');
INSERT INTO `g_propert` VALUES ('103', '3', '10002', '属性名103', '属性值103');
INSERT INTO `g_propert` VALUES ('104', '4', '10002', '属性名104', '属性值104');
INSERT INTO `g_propert` VALUES ('105', '5', '10002', '属性名105', '属性值105');
INSERT INTO `g_propert` VALUES ('106', '6', '10002', '属性名106', '属性值106');
INSERT INTO `g_propert` VALUES ('107', '7', '10002', '属性名107', '属性值107');
INSERT INTO `g_propert` VALUES ('108', '8', '10002', '属性名108', '属性值108');
INSERT INTO `g_propert` VALUES ('109', '9', '10002', '属性名109', '属性值109');
INSERT INTO `g_propert` VALUES ('110', '10', '10003', '属性名110', '属性值110');
INSERT INTO `g_propert` VALUES ('111', '11', '10003', '属性名111', '属性值111');
INSERT INTO `g_propert` VALUES ('112', '12', '10003', '属性名112', '属性值112');
INSERT INTO `g_propert` VALUES ('113', '13', '10003', '属性名113', '属性值113');
INSERT INTO `g_propert` VALUES ('114', '14', '10003', '属性名114', '属性值114');
INSERT INTO `g_propert` VALUES ('115', '15', '10003', '属性名115', '属性值115');
INSERT INTO `g_propert` VALUES ('116', '16', '10003', '属性名116', '属性值116');
INSERT INTO `g_propert` VALUES ('117', '17', '10003', '属性名117', '属性值117');
INSERT INTO `g_propert` VALUES ('118', '18', '10003', '属性名118', '属性值118');
INSERT INTO `g_propert` VALUES ('119', '19', '10003', '属性名119', '属性值119');
INSERT INTO `g_propert` VALUES ('120', '20', '10003', '属性名120', '属性值120');
INSERT INTO `g_propert` VALUES ('121', '21', '10003', '属性名121', '属性值121');
INSERT INTO `g_propert` VALUES ('122', '22', '10003', '属性名122', '属性值122');
INSERT INTO `g_propert` VALUES ('123', '23', '10004', '属性名123', '属性值123');
INSERT INTO `g_propert` VALUES ('124', '24', '10004', '属性名124', '属性值124');
INSERT INTO `g_propert` VALUES ('125', '25', '10004', '属性名125', '属性值125');
INSERT INTO `g_propert` VALUES ('126', '26', '10004', '属性名126', '属性值126');
INSERT INTO `g_propert` VALUES ('127', '27', '10005', '属性名127', '属性值127');
INSERT INTO `g_propert` VALUES ('128', '28', '10005', '属性名128', '属性值128');
INSERT INTO `g_propert` VALUES ('129', '29', '10005', '属性名129', '属性值129');
INSERT INTO `g_propert` VALUES ('130', '30', '10005', '属性名130', '属性值130');
INSERT INTO `g_propert` VALUES ('131', '31', '10006', '属性名131', '属性值131');
INSERT INTO `g_propert` VALUES ('132', '32', '10006', '属性名132', '属性值132');
INSERT INTO `g_propert` VALUES ('133', '33', '10006', '属性名133', '属性值133');
INSERT INTO `g_propert` VALUES ('134', '34', '10006', '属性名134', '属性值134');
INSERT INTO `g_propert` VALUES ('135', '35', '10006', '属性名135', '属性值135');
INSERT INTO `g_propert` VALUES ('136', '36', '10006', '属性名136', '属性值136');
INSERT INTO `g_propert` VALUES ('137', '37', '10006', '属性名137', '属性值137');
INSERT INTO `g_propert` VALUES ('138', '38', '10007', '属性名138', '属性值138');
INSERT INTO `g_propert` VALUES ('139', '39', '10007', '属性名139', '属性值139');
INSERT INTO `g_propert` VALUES ('140', '40', '10007', '属性名140', '属性值140');
INSERT INTO `g_propert` VALUES ('141', '41', '10007', '属性名141', '属性值141');
INSERT INTO `g_propert` VALUES ('142', '42', '10008', '属性名142', '属性值142');
INSERT INTO `g_propert` VALUES ('143', '43', '10008', '属性名143', '属性值143');
INSERT INTO `g_propert` VALUES ('144', '44', '10008', '属性名144', '属性值144');
INSERT INTO `g_propert` VALUES ('145', '45', '10008', '属性名145', '属性值145');
INSERT INTO `g_propert` VALUES ('146', '46', '10008', '属性名146', '属性值146');
INSERT INTO `g_propert` VALUES ('147', '47', '10008', '属性名147', '属性值147');
INSERT INTO `g_propert` VALUES ('148', '48', '10008', '属性名148', '属性值148');
INSERT INTO `g_propert` VALUES ('149', '49', '10008', '属性名149', '属性值149');
INSERT INTO `g_propert` VALUES ('150', '50', '10008', '属性名150', '属性值150');
INSERT INTO `g_propert` VALUES ('151', '1', '10001', '属性名151', '属性值151');
INSERT INTO `g_propert` VALUES ('152', '2', '10001', '属性名152', '属性值152');
INSERT INTO `g_propert` VALUES ('153', '3', '10002', '属性名153', '属性值153');
INSERT INTO `g_propert` VALUES ('154', '4', '10002', '属性名154', '属性值154');
INSERT INTO `g_propert` VALUES ('155', '5', '10002', '属性名155', '属性值155');
INSERT INTO `g_propert` VALUES ('156', '6', '10002', '属性名156', '属性值156');
INSERT INTO `g_propert` VALUES ('157', '7', '10002', '属性名157', '属性值157');
INSERT INTO `g_propert` VALUES ('158', '8', '10002', '属性名158', '属性值158');
INSERT INTO `g_propert` VALUES ('159', '9', '10002', '属性名159', '属性值159');
INSERT INTO `g_propert` VALUES ('160', '10', '10003', '属性名160', '属性值160');
INSERT INTO `g_propert` VALUES ('161', '11', '10003', '属性名161', '属性值161');
INSERT INTO `g_propert` VALUES ('162', '12', '10003', '属性名162', '属性值162');
INSERT INTO `g_propert` VALUES ('163', '13', '10003', '属性名163', '属性值163');
INSERT INTO `g_propert` VALUES ('164', '14', '10003', '属性名164', '属性值164');
INSERT INTO `g_propert` VALUES ('165', '15', '10003', '属性名165', '属性值165');
INSERT INTO `g_propert` VALUES ('166', '16', '10003', '属性名166', '属性值166');
INSERT INTO `g_propert` VALUES ('167', '17', '10003', '属性名167', '属性值167');
INSERT INTO `g_propert` VALUES ('168', '18', '10003', '属性名168', '属性值168');
INSERT INTO `g_propert` VALUES ('169', '19', '10003', '属性名169', '属性值169');
INSERT INTO `g_propert` VALUES ('170', '20', '10003', '属性名170', '属性值170');
INSERT INTO `g_propert` VALUES ('171', '21', '10003', '属性名171', '属性值171');
INSERT INTO `g_propert` VALUES ('172', '22', '10003', '属性名172', '属性值172');
INSERT INTO `g_propert` VALUES ('173', '23', '10004', '属性名173', '属性值173');
INSERT INTO `g_propert` VALUES ('174', '24', '10004', '属性名174', '属性值174');
INSERT INTO `g_propert` VALUES ('175', '25', '10004', '属性名175', '属性值175');
INSERT INTO `g_propert` VALUES ('176', '26', '10004', '属性名176', '属性值176');
INSERT INTO `g_propert` VALUES ('177', '27', '10005', '属性名177', '属性值177');
INSERT INTO `g_propert` VALUES ('178', '28', '10005', '属性名178', '属性值178');
INSERT INTO `g_propert` VALUES ('179', '29', '10005', '属性名179', '属性值179');
INSERT INTO `g_propert` VALUES ('180', '30', '10005', '属性名180', '属性值180');
INSERT INTO `g_propert` VALUES ('181', '31', '10006', '属性名181', '属性值181');
INSERT INTO `g_propert` VALUES ('182', '32', '10006', '属性名182', '属性值182');
INSERT INTO `g_propert` VALUES ('183', '33', '10006', '属性名183', '属性值183');
INSERT INTO `g_propert` VALUES ('184', '34', '10006', '属性名184', '属性值184');
INSERT INTO `g_propert` VALUES ('185', '35', '10006', '属性名185', '属性值185');
INSERT INTO `g_propert` VALUES ('186', '36', '10006', '属性名186', '属性值186');
INSERT INTO `g_propert` VALUES ('187', '37', '10006', '属性名187', '属性值187');
INSERT INTO `g_propert` VALUES ('188', '38', '10007', '属性名188', '属性值188');
INSERT INTO `g_propert` VALUES ('189', '39', '10007', '属性名189', '属性值189');
INSERT INTO `g_propert` VALUES ('190', '40', '10007', '属性名190', '属性值190');
INSERT INTO `g_propert` VALUES ('191', '41', '10007', '属性名191', '属性值191');
INSERT INTO `g_propert` VALUES ('192', '42', '10008', '属性名192', '属性值192');
INSERT INTO `g_propert` VALUES ('193', '43', '10008', '属性名193', '属性值193');
INSERT INTO `g_propert` VALUES ('194', '44', '10008', '属性名194', '属性值194');
INSERT INTO `g_propert` VALUES ('195', '45', '10008', '属性名195', '属性值195');
INSERT INTO `g_propert` VALUES ('196', '46', '10008', '属性名196', '属性值196');
INSERT INTO `g_propert` VALUES ('197', '47', '10008', '属性名197', '属性值197');
INSERT INTO `g_propert` VALUES ('198', '48', '10008', '属性名198', '属性值198');
INSERT INTO `g_propert` VALUES ('199', '49', '10008', '属性名199', '属性值199');
INSERT INTO `g_propert` VALUES ('200', '50', '10008', '属性名200', '属性值200');
INSERT INTO `g_propert` VALUES ('201', '1', '10001', '属性名201', '属性值201');
INSERT INTO `g_propert` VALUES ('202', '2', '10001', '属性名202', '属性值202');
INSERT INTO `g_propert` VALUES ('203', '3', '10002', '属性名203', '属性值203');
INSERT INTO `g_propert` VALUES ('204', '4', '10002', '属性名204', '属性值204');
INSERT INTO `g_propert` VALUES ('205', '5', '10002', '属性名205', '属性值205');
INSERT INTO `g_propert` VALUES ('206', '6', '10002', '属性名206', '属性值206');
INSERT INTO `g_propert` VALUES ('207', '7', '10002', '属性名207', '属性值207');
INSERT INTO `g_propert` VALUES ('208', '8', '10002', '属性名208', '属性值208');
INSERT INTO `g_propert` VALUES ('209', '9', '10002', '属性名209', '属性值209');
INSERT INTO `g_propert` VALUES ('210', '10', '10003', '属性名210', '属性值210');
INSERT INTO `g_propert` VALUES ('211', '11', '10003', '属性名211', '属性值211');
INSERT INTO `g_propert` VALUES ('212', '12', '10003', '属性名212', '属性值212');
INSERT INTO `g_propert` VALUES ('213', '13', '10003', '属性名213', '属性值213');
INSERT INTO `g_propert` VALUES ('214', '14', '10003', '属性名214', '属性值214');
INSERT INTO `g_propert` VALUES ('215', '15', '10003', '属性名215', '属性值215');
INSERT INTO `g_propert` VALUES ('216', '16', '10003', '属性名216', '属性值216');
INSERT INTO `g_propert` VALUES ('217', '17', '10003', '属性名217', '属性值217');
INSERT INTO `g_propert` VALUES ('218', '18', '10003', '属性名218', '属性值218');
INSERT INTO `g_propert` VALUES ('219', '19', '10003', '属性名219', '属性值219');
INSERT INTO `g_propert` VALUES ('220', '20', '10003', '属性名220', '属性值220');
INSERT INTO `g_propert` VALUES ('221', '21', '10003', '属性名221', '属性值221');
INSERT INTO `g_propert` VALUES ('222', '22', '10003', '属性名222', '属性值222');
INSERT INTO `g_propert` VALUES ('223', '23', '10004', '属性名223', '属性值223');
INSERT INTO `g_propert` VALUES ('224', '24', '10004', '属性名224', '属性值224');
INSERT INTO `g_propert` VALUES ('225', '25', '10004', '属性名225', '属性值225');
INSERT INTO `g_propert` VALUES ('226', '26', '10004', '属性名226', '属性值226');
INSERT INTO `g_propert` VALUES ('227', '27', '10005', '属性名227', '属性值227');
INSERT INTO `g_propert` VALUES ('228', '28', '10005', '属性名228', '属性值228');
INSERT INTO `g_propert` VALUES ('229', '29', '10005', '属性名229', '属性值229');
INSERT INTO `g_propert` VALUES ('230', '30', '10005', '属性名230', '属性值230');
INSERT INTO `g_propert` VALUES ('231', '31', '10006', '属性名231', '属性值231');
INSERT INTO `g_propert` VALUES ('232', '32', '10006', '属性名232', '属性值232');
INSERT INTO `g_propert` VALUES ('233', '33', '10006', '属性名233', '属性值233');
INSERT INTO `g_propert` VALUES ('234', '34', '10006', '属性名234', '属性值234');
INSERT INTO `g_propert` VALUES ('235', '35', '10006', '属性名235', '属性值235');
INSERT INTO `g_propert` VALUES ('236', '36', '10006', '属性名236', '属性值236');
INSERT INTO `g_propert` VALUES ('237', '37', '10006', '属性名237', '属性值237');
INSERT INTO `g_propert` VALUES ('238', '38', '10007', '属性名238', '属性值238');
INSERT INTO `g_propert` VALUES ('239', '39', '10007', '属性名239', '属性值239');
INSERT INTO `g_propert` VALUES ('240', '40', '10007', '属性名240', '属性值240');
INSERT INTO `g_propert` VALUES ('241', '41', '10007', '属性名241', '属性值241');
INSERT INTO `g_propert` VALUES ('242', '42', '10008', '属性名242', '属性值242');
INSERT INTO `g_propert` VALUES ('243', '43', '10008', '属性名243', '属性值243');
INSERT INTO `g_propert` VALUES ('244', '44', '10008', '属性名244', '属性值244');
INSERT INTO `g_propert` VALUES ('245', '45', '10008', '属性名245', '属性值245');
INSERT INTO `g_propert` VALUES ('246', '46', '10008', '属性名246', '属性值246');
INSERT INTO `g_propert` VALUES ('247', '47', '10008', '属性名247', '属性值247');
INSERT INTO `g_propert` VALUES ('248', '48', '10008', '属性名248', '属性值248');
INSERT INTO `g_propert` VALUES ('249', '49', '10008', '属性名249', '属性值249');
INSERT INTO `g_propert` VALUES ('250', '50', '10008', '属性名250', '属性值250');

-- ----------------------------
-- Table structure for `g_shelves`
-- ----------------------------
DROP TABLE IF EXISTS `g_shelves`;
CREATE TABLE `g_shelves` (
  `gid` bigint(11) NOT NULL COMMENT '商品编号',
  `mid` bigint(10) NOT NULL DEFAULT '0' COMMENT '店号',
  `kid` int(10) NOT NULL DEFAULT '0' COMMENT '组号',
  `selfid` int(10) NOT NULL DEFAULT '0' COMMENT '自身号',
  `gpid` int(10) DEFAULT NULL COMMENT '商品属性编号',
  `pid` int(10) DEFAULT NULL COMMENT '规格参数ID',
  `gname` varchar(100) DEFAULT '' COMMENT '商品名称',
  `choproperty` varchar(100) DEFAULT '0' COMMENT '可选属性',
  `selfimage` varchar(100) DEFAULT NULL COMMENT '自身图',
  `num` float(10,2) DEFAULT NULL COMMENT '数量',
  `gprice` float(10,2) DEFAULT NULL COMMENT '价格',
  `state` varchar(10) DEFAULT '未通过' COMMENT '状态',
  `notestate` varchar(100) DEFAULT NULL COMMENT '审核备注',
  `date` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`gid`),
  KEY `FK_Relationship_20` (`choproperty`) USING BTREE,
  KEY `FK_Relationship_22` (`gname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_shelves
-- ----------------------------
INSERT INTO `g_shelves` VALUES ('10001150124', '10001', '150', '124', '2', '2', '男装 SUPIMA COTTON圆领T恤(短袖) 164179 优衣库UNIQLO', '0', 'products/big6.jpg#products/big7.jpg#products/big8.jpg#products/big9.jpg#products/big10.jpg', '293.00', '935.00', '通过', null, '2016-07-20 16:23:00');
INSERT INTO `g_shelves` VALUES ('10001319136', '10001', '319', '136', '1', '1', 'Heilan Home/海澜之家2016夏季热卖男装圆领休闲印花潮流短袖T恤', '0', 'products/big1.jpg#products/big2.jpg#products/big3.jpg#products/big4.jpg#products/big5.jpg', '183.00', '156.20', '未通过', '', '2016-07-08 16:22:56');
INSERT INTO `g_shelves` VALUES ('10002113140', '10002', '113', '140', '9', '9', 'ONLY2016春夏新品纯棉宽松磨破亮钻牛仔短裤女T|116143003', '0', 'products/big41.jpg#products/big42.jpg#products/big43.jpg#products/big44.jpg#products/big45.jpg', '226.00', '708.80', '审核中', null, '2016-06-29 16:23:53');
INSERT INTO `g_shelves` VALUES ('10002150113', '10002', '150', '113', '6', '6', '夏季 男士短袖T恤 纯色v领体恤 男装修身衣服 夏装半袖 纯棉短袖t', '0', 'products/big26.jpg#products/big27.jpg#products/big28.jpg#products/big29.jpg#products/big30.jpg', '116.00', '173.00', '审核中', null, '2016-06-29 16:23:39');
INSERT INTO `g_shelves` VALUES ('10002150147', '10002', '150', '147', '3', '3', '【宋仲基同款】马克华菲短袖T恤男内搭打底衫修身圆领纯白黑T恤', '0', 'products/big11.jpg#products/big12.jpg#products/big13.jpg#products/big14.jpg#products/big15.jpg', '263.00', '752.60', '审核中', null, '2016-07-11 16:23:23');
INSERT INTO `g_shelves` VALUES ('10002190146', '10002', '190', '146', '4', '4', '太平鸟男装 夏白色印花T恤圆领短袖体恤衫BWDA62123', '0', 'products/big16.jpg#products/big17.jpg#products/big18.jpg#products/big19.jpg#products/big20.jpg', '197.00', '267.10', '未通过', null, '2016-07-05 16:23:31');
INSERT INTO `g_shelves` VALUES ('10002220142', '10002', '220', '142', '5', '5', '5折SELECTED思莱德棉混纺双层尖领针织男士T恤SH|416206003', '0', 'products/big21.jpg#products/big22.jpg#products/big23.jpg#products/big24.jpg#products/big25.jpg', '224.00', '206.70', '通过', null, '2016-07-07 16:23:34');
INSERT INTO `g_shelves` VALUES ('10002769128', '10002', '769', '128', '7', '7', 'TOPSHOP2016春夏新款中高腰牛仔裤jamie高弹修身铅笔裤02K04IBLK', '0', 'products/big31.jpg#products/big32.jpg#products/big33.jpg#products/big34.jpg#products/big35.jpg', '141.00', '484.80', '未通过', null, '2016-06-30 16:23:42');
INSERT INTO `g_shelves` VALUES ('10002849135', '10002', '849', '135', '8', '8', 'ZARA 女装 条纹连衣裙 08566043400', '0', 'products/big36.jpg#products/big37.jpg#products/big38.jpg#products/big39.jpg#products/big40.jpg', '186.00', '831.70', '通过', null, '2016-07-10 16:23:50');
INSERT INTO `g_shelves` VALUES ('10003113129', '10003', '113', '129', '10', '10', 'ONLY2016春夏新品纯棉磨白破洞BF低腰牛仔背带裤|11617M008', '0', 'products/big46.jpg#products/big47.jpg#products/big48.jpg#products/big49.jpg#products/big50.jpg', '100.00', '381.40', '未通过', null, '2016-06-28 16:23:56');
INSERT INTO `g_shelves` VALUES ('10003260139', '10003', '260', '139', '11', '11', 'Amii[极简主义]2016春夏拼接A字中裙黑色修身半身裙女装纯色中裙', '0', 'products/big51.jpg#products/big52.jpg#products/big53.jpg#products/big54.jpg#products/big55.jpg', '165.00', '609.10', '通过', null, '2016-07-06 16:23:58');
INSERT INTO `g_shelves` VALUES ('10003337134', '10003', '337', '134', '12', '12', '乐町2016夏装新款女装潮字母印花短袖T恤纯色修身打底衫上衣', '0', 'products/big56.jpg#products/big57.jpg#products/big58.jpg#products/big59.jpg#products/big60.jpg', '280.00', '789.60', '审核中', null, '2016-07-04 16:24:02');
INSERT INTO `g_shelves` VALUES ('10003431137', '10003', '431', '137', '13', '13', '牛津纺小领白色短袖衬衫女职业2016韩范娃娃领修身白衬衣学生女夏', '0', 'products/big61.jpg#products/big62.jpg#products/big63.jpg#products/big64.jpg#products/big65.jpg', '106.00', '716.30', '未通过', null, '2016-07-02 16:24:04');
INSERT INTO `g_shelves` VALUES ('10003478132', '10003', '478', '132', '14', '14', '木林森男鞋夏季潮鞋男士运动鞋男韩版跑步鞋休闲鞋透气网布鞋鞋子', '0', 'products/big66.jpg#products/big67.jpg#products/big68.jpg#products/big69.jpg#products/big70.jpg', '221.00', '276.20', '通过', null, '2016-07-11 16:24:23');
INSERT INTO `g_shelves` VALUES ('10003505120', '10003', '505', '120', '15', '15', 'Camel/骆驼运动休闲男鞋 户外越野跑鞋网布透气防滑 2016夏季网鞋', '0', 'products/big71.jpg#products/big72.jpg#products/big73.jpg#products/big74.jpg#products/big75.jpg', '280.00', '572.50', '审核中', null, '2016-07-06 16:24:26');
INSERT INTO `g_shelves` VALUES ('10003687100', '10003', '687', '100', '16', '16', '春夏折扣 ZARA 男鞋 细孔拼接运动鞋 12404102040', '0', 'products/big76.jpg#products/big77.jpg#products/big78.jpg#products/big79.jpg#products/big80.jpg', '258.00', '480.50', '未通过', null, '2016-07-09 16:24:28');
INSERT INTO `g_shelves` VALUES ('10003768141', '10003', '768', '141', '18', '18', '骆驼牌休闲男鞋2016夏季新款运动休闲透气网鞋低帮镂空网布网面鞋', '0', 'products/big86.jpg#products/big87.jpg#products/big88.jpg#products/big89.jpg#products/big90.jpg', '154.00', '820.30', '审核中', null, '2016-07-10 16:24:33');
INSERT INTO `g_shelves` VALUES ('10003861109', '10003', '861', '109', '19', '19', '百雀羚爽肤水女水嫩倍现精华化妆水春夏补水保湿控油化妆护肤正品', '0', 'products/big91.jpg#products/big92.jpg#products/big93.jpg#products/big94.jpg#products/big95.jpg', '180.00', '833.80', '未通过', null, '2016-07-02 16:24:36');
INSERT INTO `g_shelves` VALUES ('10003861111', '10003', '861', '111', '20', '20', '珀莱雅水动力深层保湿爽肤水清爽女士化妆水补水滋润柔肤水收毛孔', '0', 'products/big96.jpg#products/big97.jpg#products/big98.jpg#products/big99.jpg#products/big100.jpg', '159.00', '551.00', '通过', null, '2016-07-01 16:24:41');
INSERT INTO `g_shelves` VALUES ('10003940143', '10003', '940', '143', '21', '21', '商场同款dw男士手表 时尚进口腕表 丹尼尔惠灵顿男表 dw潮翻天', '0', 'products/big101.jpg#products/big102.jpg#products/big103.jpg#products/big104.jpg#products/big105.jpg', '189.00', '749.50', '审核中', null, '2016-07-11 16:24:44');
INSERT INTO `g_shelves` VALUES ('10003942105', '10003', '942', '105', '17', '17', 'skechers斯凯奇2016新款休闲鞋 舒适编织鞋 超轻套脚鞋51352', '0', 'products/big81.jpg#products/big82.jpg#products/big83.jpg#products/big84.jpg#products/big85.jpg', '158.00', '615.90', '通过', null, '2016-06-26 16:24:30');
INSERT INTO `g_shelves` VALUES ('10003986138', '10003', '986', '138', '22', '22', 'BALCO拜戈 真皮瑞士石英表日历男表 蓝宝石三眼运动计时时尚潮流', '0', 'products/big106.jpg#products/big107.jpg#products/big108.jpg#products/big109.jpg#products/big110.jpg', '266.00', '311.00', '未通过', null, '2016-07-06 16:24:47');
INSERT INTO `g_shelves` VALUES ('10004686127', '10004', '686', '127', '23', '23', 'CASIO卡西欧 BA-120SC-1A 7A 9A 防水防震时尚炫彩运动女表', '0', 'products/big111.jpg#products/big112.jpg#products/big113.jpg#products/big114.jpg#products/big115.jpg', '144.00', '176.80', '通过', null, '2016-07-04 16:24:50');
INSERT INTO `g_shelves` VALUES ('10004756123', '10004', '756', '123', '24', '24', '12期免息 Samsung/三星 Galaxy C7 SM-C7000 三星智付 全网通', '0', 'products/big116.jpg#products/big117.jpg#products/big118.jpg#products/big119.jpg#products/big120.jpg', '150.00', '890.00', '审核中', null, '2016-07-05 16:24:52');
INSERT INTO `g_shelves` VALUES ('10004836102', '10004', '836', '102', '25', '25', '【新品发售】源自华为honor/荣耀 V8 移动联通电信4G智能手机', '0', 'products/big121.jpg#products/big122.jpg#products/big123.jpg#products/big124.jpg#products/big125.jpg', '220.00', '924.10', '未通过', null, '2016-07-08 16:24:54');
INSERT INTO `g_shelves` VALUES ('10004845117', '10004', '845', '117', '26', '26', 'Apple/苹果 iPhone6s 64G 全网通4G智能手机 苏宁直发正品国行', '0', 'products/big126.jpg#products/big127.jpg#products/big128.jpg#products/big129.jpg#products/big130.jpg', '114.00', '767.20', '通过', null, '2016-07-09 16:24:57');
INSERT INTO `g_shelves` VALUES ('10005219144', '10005', '219', '144', '27', '27', 'Skyworth/创维 55M5 55吋4K超高清智能网络平板液晶电视机 50', '0', 'products/big131.jpg#products/big132.jpg#products/big133.jpg#products/big134.jpg#products/big135.jpg', '129.00', '167.00', '审核中', null, '2016-07-04 16:24:59');
INSERT INTO `g_shelves` VALUES ('10005281131', '10005', '281', '131', '28', '28', '战鹰HP/惠普 HP15 -ac601TX酷睿i7 15.6英寸全能商务游戏笔记本', '0', 'products/big136.jpg#products/big137.jpg#products/big138.jpg#products/big139.jpg#products/big140.jpg', '255.00', '871.80', '未通过', null, '2016-07-03 16:25:04');
INSERT INTO `g_shelves` VALUES ('10005459104', '10005', '459', '104', '29', '29', '【喵鲜生】佳沛新西兰甜心绿奇异果 6粒 猕猴桃进口新鲜水果36#果', '0', 'products/big141.jpg#products/big142.jpg#products/big143.jpg#products/big144.jpg#products/big145.jpg', '257.00', '264.30', '通过', null, '2016-06-29 16:25:07');
INSERT INTO `g_shelves` VALUES ('10005892110', '10005', '892', '110', '30', '30', '【喵鲜生】泰国进口新鲜迷你小菠萝 普吉岛小菠萝 香甜爽脆 5斤', '0', 'products/big146.jpg#products/big147.jpg#products/big148.jpg#products/big149.jpg#products/big150.jpg', '213.00', '744.80', '审核中', null, '2016-06-30 16:25:10');
INSERT INTO `g_shelves` VALUES ('10006103115', '10006', '103', '115', '31', '31', '生日小礼物女生创意家居生活用品儿童毕业送女友男友闺蜜新奇实用', '0', 'products/big151.jpg#products/big152.jpg#products/big153.jpg#products/big154.jpg#products/big155.jpg', '136.00', '490.40', '未通过', null, '2016-07-04 16:25:12');
INSERT INTO `g_shelves` VALUES ('10006103133', '10006', '103', '133', '33', '33', '创意小礼品新奇家居生活日用品百货实用生日礼物送女生男生朋友', '0', 'products/big161.jpg#products/big162.jpg#products/big163.jpg#products/big164.jpg#products/big165.jpg', '289.00', '917.50', '审核中', null, '2016-07-11 16:25:18');
INSERT INTO `g_shelves` VALUES ('10006103145', '10006', '103', '145', '32', '32', '特别可爱创意生日礼物女生送男生女朋友闺蜜实用家居用品小礼品', '0', 'products/big156.jpg#products/big157.jpg#products/big158.jpg#products/big159.jpg#products/big160.jpg', '145.00', '971.30', '通过', null, '2016-07-03 16:25:15');
INSERT INTO `g_shelves` VALUES ('10006633103', '10006', '633', '103', '34', '34', '包邮正版 简爱 书中文版 全译本 完整版厚本500页 Jane Eyre 夏洛蒂·勃朗特 著 原版原著 经典小说书籍 畅销图书 青少年版 夏洛特', '0', 'products/big166.jpg#products/big167.jpg#products/big168.jpg#products/big169.jpg#products/big170.jpg', '229.00', '711.50', '未通过', null, '2016-07-05 16:25:20');
INSERT INTO `g_shelves` VALUES ('10006704119', '10006', '704', '119', '35', '35', '四大名著全套小学生注音版4册古典名著 西游记连环画 红楼梦三国演义水浒传二三四年级课外书少儿图书读物儿童书籍7-8-10-12-15岁', '0', 'products/big171.jpg#products/big172.jpg#products/big173.jpg#products/big174.jpg#products/big175.jpg', '204.00', '826.70', '通过', null, '2016-07-07 16:25:28');
INSERT INTO `g_shelves` VALUES ('10006725125', '10006', '725', '125', '36', '36', '婴儿衣服纯棉新生儿礼盒套装春夏秋婴儿用品宝宝彩棉衣服母婴用品', '0', 'products/big176.jpg#products/big177.jpg#products/big178.jpg#products/big179.jpg#products/big180.jpg', '239.00', '664.10', '审核中', null, '2016-07-06 16:25:31');
INSERT INTO `g_shelves` VALUES ('10006941116', '10006', '941', '116', '37', '37', '妈咪包多功能大容量双肩斜跨孕妇待产婴儿外出时尚妈妈包母婴包袋', '0', 'products/big181.jpg#products/big182.jpg#products/big183.jpg#products/big184.jpg#products/big185.jpg', '231.00', '759.10', '未通过', null, '2016-07-09 16:25:33');
INSERT INTO `g_shelves` VALUES ('10007322130', '10007', '322', '130', '38', '38', '1919酒类直供 飞天茅台53度 贵州白酒酱香型500ml 茅台酒飞天', '0', 'products/big186.jpg#products/big187.jpg#products/big188.jpg#products/big189.jpg#products/big190.jpg', '104.00', '615.50', '通过', null, '2016-07-03 16:25:36');
INSERT INTO `g_shelves` VALUES ('10007424126', '10007', '424', '126', '39', '39', '斯伯丁NBA篮球 74-604Y室外室内lanqiu经典掌控74-221l篮球', '0', 'products/big191.jpg#products/big192.jpg#products/big193.jpg#products/big194.jpg#products/big195.jpg', '149.00', '985.70', '审核中', null, '2016-07-05 16:25:38');
INSERT INTO `g_shelves` VALUES ('10007572108', '10007', '572', '108', '40', '40', '火车头足球精品 3号5号球4号足球 训练比赛中小学生儿童足球宝宝', '0', 'products/big196.jpg#products/big197.jpg#products/big198.jpg#products/big199.jpg#products/big200.jpg', '101.00', '716.30', '未通过', null, '2016-07-06 16:25:48');
INSERT INTO `g_shelves` VALUES ('10007603107', '10007', '603', '107', '41', '41', 'Haier/海尔 BCD-572WDPM 572升 对开门电冰箱 风冷无霜 大容量', '0', 'products/big201.jpg#products/big202.jpg#products/big203.jpg#products/big204.jpg#products/big205.jpg', '209.00', '655.70', '通过', null, '2016-07-11 16:26:02');
INSERT INTO `g_shelves` VALUES ('10008114112', '10008', '114', '112', '42', '42', 'Midea/美的 MG80-eco131WDX 8公斤智能变频全自动滚筒洗衣机静音', '0', 'products/big206.jpg#products/big207.jpg#products/big208.jpg#products/big209.jpg#products/big210.jpg', '164.00', '416.70', '审核中', null, '2016-07-01 16:26:05');
INSERT INTO `g_shelves` VALUES ('10008170106', '10008', '170', '106', '43', '43', '伊米妮女包头层牛皮轻波普艺术多彩色流苏音乐摇摆单肩手提斜挎包', '0', 'products/big211.jpg#products/big212.jpg#products/big213.jpg#products/big214.jpg#products/big215.jpg', '126.00', '962.80', '未通过', null, '2016-07-02 16:26:09');
INSERT INTO `g_shelves` VALUES ('10008245118', '10008', '245', '118', '44', '44', '迷你包小方包女包单肩包斜挎链条牛皮包包新款潮春夏日韩 金路达', '0', 'products/big216.jpg#products/big217.jpg#products/big218.jpg#products/big219.jpg#products/big220.jpg', '260.00', '463.90', '通过', null, '2016-07-03 16:26:12');
INSERT INTO `g_shelves` VALUES ('10008310101', '10008', '310', '101', '45', '45', '2016新款七匹狼男包 男士手包真皮软皮手拿包男商务大容量手抓包', '0', 'products/big221.jpg#products/big222.jpg#products/big223.jpg#products/big224.jpg#products/big225.jpg', '278.00', '635.90', '审核中', null, '2016-07-07 16:26:15');
INSERT INTO `g_shelves` VALUES ('10008368114', '10008', '368', '114', '46', '46', '【0首付分期】蚂蚁摄影联保单反数码相机Canon/佳能 EOS 760D套机', '0', 'products/big226.jpg#products/big227.jpg#products/big228.jpg#products/big229.jpg#products/big230.jpg', '104.00', '302.10', '未通过', null, '2016-07-06 16:26:18');
INSERT INTO `g_shelves` VALUES ('10008435148', '10008', '435', '148', '47', '47', '[现货送摄影包]Sony/索尼 HDR-CX450 五轴防抖 高清数码摄像机', '0', 'products/big231.jpg#products/big232.jpg#products/big233.jpg#products/big234.jpg#products/big235.jpg', '197.00', '695.80', '通过', null, '2016-07-07 16:26:35');
INSERT INTO `g_shelves` VALUES ('10008583121', '10008', '583', '121', '48', '48', '矜贵坊生日礼物石榴石手链女6A天然水晶多层3圈手串韩版925银首饰', '0', 'products/big236.jpg#products/big237.jpg#products/big238.jpg#products/big239.jpg#products/big240.jpg', '257.00', '956.40', '审核中', null, '2016-07-02 16:26:38');
INSERT INTO `g_shelves` VALUES ('10008636149', '10008', '636', '149', '49', '49', 'T400镶嵌施华洛世奇锆石项链女简约锁骨银饰品日韩国配饰吊坠首饰', '0', 'products/big241.jpg#products/big242.jpg#products/big243.jpg#products/big244.jpg#products/big245.jpg', '171.00', '181.50', '未通过', null, '2016-07-01 16:26:40');
INSERT INTO `g_shelves` VALUES ('10008686122', '10008', '686', '122', '50', '50', '【百草味-牛肉粒100g】牛肉干休闲食品特产零食小吃', '0', 'products/big246.jpg#products/big247.jpg#products/big248.jpg#products/big249.jpg#products/big250.jpg', '152.00', '630.30', '通过', null, '2016-06-29 16:26:43');

-- ----------------------------
-- Table structure for `g_update`
-- ----------------------------
DROP TABLE IF EXISTS `g_update`;
CREATE TABLE `g_update` (
  `gid` bigint(11) NOT NULL COMMENT '商品编号',
  `content` varchar(100) NOT NULL DEFAULT 'NULL' COMMENT '变更描述',
  `updatevalue` float NOT NULL COMMENT '变更量',
  `updatetime` date NOT NULL COMMENT '变更时间',
  KEY `FK_Relationship_7` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_update
-- ----------------------------
INSERT INTO `g_update` VALUES ('10001319136', '价格下调', '103', '2016-07-05');
INSERT INTO `g_update` VALUES ('10001618124', '价格上调', '107', '2016-07-14');
INSERT INTO `g_update` VALUES ('10002150147', '价格下调', '153', '2016-07-13');
INSERT INTO `g_update` VALUES ('10002190146', '价格上调', '76', '2016-07-06');
INSERT INTO `g_update` VALUES ('10002220142', '价格下调', '93', '2016-07-04');
INSERT INTO `g_update` VALUES ('10002243113', '价格上调', '99', '2016-07-13');
INSERT INTO `g_update` VALUES ('10002769128', '价格下调', '156', '2016-07-07');
INSERT INTO `g_update` VALUES ('10002849135', '价格上调', '75', '2016-07-03');
INSERT INTO `g_update` VALUES ('10002858140', '价格下调', '104', '2016-07-10');
INSERT INTO `g_update` VALUES ('10003113129', '价格上调', '56', '2016-06-29');
INSERT INTO `g_update` VALUES ('10003260139', '价格下调', '109', '2016-07-02');
INSERT INTO `g_update` VALUES ('10003337134', '价格上调', '59', '2016-06-29');
INSERT INTO `g_update` VALUES ('10003431137', '价格下调', '64', '2016-07-11');
INSERT INTO `g_update` VALUES ('10003478132', '价格上调', '144', '2016-06-29');
INSERT INTO `g_update` VALUES ('10003505120', '价格下调', '153', '2016-07-03');
INSERT INTO `g_update` VALUES ('10003687100', '价格上调', '151', '2016-07-02');
INSERT INTO `g_update` VALUES ('10003742105', '价格下调', '105', '2016-07-04');
INSERT INTO `g_update` VALUES ('10003768141', '价格上调', '89', '2016-07-01');
INSERT INTO `g_update` VALUES ('10003861109', '价格下调', '59', '2016-07-02');
INSERT INTO `g_update` VALUES ('10003870111', '价格上调', '106', '2016-07-01');
INSERT INTO `g_update` VALUES ('10003940143', '价格下调', '181', '2016-06-28');
INSERT INTO `g_update` VALUES ('10003986138', '价格上调', '149', '2016-07-04');
INSERT INTO `g_update` VALUES ('10004686127', '价格下调', '64', '2016-07-12');
INSERT INTO `g_update` VALUES ('10004756123', '价格上调', '101', '2016-07-07');
INSERT INTO `g_update` VALUES ('10004836102', '价格下调', '171', '2016-07-15');
INSERT INTO `g_update` VALUES ('10004845117', '价格上调', '89', '2016-07-11');
INSERT INTO `g_update` VALUES ('10005219144', '价格下调', '174', '2016-06-28');
INSERT INTO `g_update` VALUES ('10005281131', '价格上调', '59', '2016-07-09');
INSERT INTO `g_update` VALUES ('10005459104', '价格下调', '91', '2016-07-10');
INSERT INTO `g_update` VALUES ('10005892110', '价格上调', '74', '2016-07-13');
INSERT INTO `g_update` VALUES ('10006103115', '价格下调', '64', '2016-07-06');
INSERT INTO `g_update` VALUES ('10006256145', '价格上调', '132', '2016-07-05');
INSERT INTO `g_update` VALUES ('10006420133', '价格下调', '188', '2016-07-05');
INSERT INTO `g_update` VALUES ('10006633103', '价格上调', '148', '2016-07-14');
INSERT INTO `g_update` VALUES ('10006704119', '价格下调', '95', '2016-07-04');
INSERT INTO `g_update` VALUES ('10006725125', '价格上调', '57', '2016-07-04');
INSERT INTO `g_update` VALUES ('10006941116', '价格下调', '114', '2016-07-03');
INSERT INTO `g_update` VALUES ('10007322130', '价格上调', '90', '2016-07-01');
INSERT INTO `g_update` VALUES ('10007424126', '价格下调', '97', '2016-07-10');
INSERT INTO `g_update` VALUES ('10007572108', '价格上调', '89', '2016-07-08');
INSERT INTO `g_update` VALUES ('10007603107', '价格下调', '131', '2016-07-02');
INSERT INTO `g_update` VALUES ('10008114112', '价格上调', '187', '2016-07-07');
INSERT INTO `g_update` VALUES ('10008170106', '价格下调', '53', '2016-06-29');
INSERT INTO `g_update` VALUES ('10008245118', '价格上调', '159', '2016-06-29');
INSERT INTO `g_update` VALUES ('10008310101', '价格下调', '158', '2016-07-05');
INSERT INTO `g_update` VALUES ('10008368114', '价格上调', '77', '2016-06-29');
INSERT INTO `g_update` VALUES ('10008435148', '价格下调', '187', '2016-07-04');
INSERT INTO `g_update` VALUES ('10008583121', '价格上调', '89', '2016-07-09');
INSERT INTO `g_update` VALUES ('10008636149', '价格下调', '86', '2016-07-15');
INSERT INTO `g_update` VALUES ('10008686122', '价格上调', '51', '2016-07-15');

-- ----------------------------
-- Table structure for `logistics`
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics` (
  `kid` bigint(11) NOT NULL DEFAULT '0' COMMENT '无意义主键',
  `logid` bigint(11) NOT NULL COMMENT '物流编号',
  `logtime` datetime NOT NULL COMMENT '时间',
  `logplace` varchar(20) NOT NULL COMMENT '地点',
  `logstate` varchar(200) NOT NULL COMMENT '状态',
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES ('1', '1', '2016-06-28 13:58:19', '四川成都蒲江公司', '正在进行【装袋】扫描');
INSERT INTO `logistics` VALUES ('2', '1', '2016-06-30 08:32:06', '陕西杨凌公司', '正在派件');
INSERT INTO `logistics` VALUES ('3', '1', '2016-07-01 17:45:40', '西农大北校区', '已签收');
INSERT INTO `logistics` VALUES ('4', '2', '2016-06-28 13:58:19', '四川成都蒲江公司', '正在进行【装袋】扫描');
INSERT INTO `logistics` VALUES ('5', '2', '2016-06-30 08:32:06', '陕西杨凌公司', '正在派件');
INSERT INTO `logistics` VALUES ('6', '2', '2016-07-01 17:45:40', '西农大北校区', '已签收');
INSERT INTO `logistics` VALUES ('7', '3', '2016-06-28 13:58:19', '四川成都蒲江公司', '正在进行【装袋】扫描');
INSERT INTO `logistics` VALUES ('8', '3', '2016-06-30 08:32:06', '陕西杨凌公司', '正在派件');
INSERT INTO `logistics` VALUES ('9', '3', '2016-07-01 17:45:40', '西农大北校区', '待签收');
INSERT INTO `logistics` VALUES ('13', '12', '2016-06-28 13:58:19', '四川成都蒲江公司', '正在进行【装袋】扫描');
INSERT INTO `logistics` VALUES ('14', '12', '2016-06-30 08:32:06', '陕西杨凌公司', '正在派件');
INSERT INTO `logistics` VALUES ('15', '12', '2016-07-01 17:45:40', '西农大北校区', '已签收');

-- ----------------------------
-- Table structure for `mistore`
-- ----------------------------
DROP TABLE IF EXISTS `mistore`;
CREATE TABLE `mistore` (
  `mid` int(5) NOT NULL COMMENT '店号',
  `mname` varchar(20) NOT NULL COMMENT '店名',
  `uname` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `logo` varchar(50) DEFAULT NULL COMMENT '店标',
  `mtype` varchar(20) DEFAULT NULL COMMENT '类型',
  `mcompany` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `brandinfo` varchar(50) DEFAULT NULL COMMENT '品牌介绍',
  `industry` varchar(20) DEFAULT NULL COMMENT '行业',
  `notes` varchar(50) DEFAULT NULL COMMENT '客服备注',
  `state` varchar(10) DEFAULT NULL COMMENT '审核状态',
  `ctime` datetime DEFAULT NULL COMMENT '审核时间',
  `cnote` varchar(40) DEFAULT NULL COMMENT '审核备注',
  `payway` varchar(100) DEFAULT NULL COMMENT '支付方式',
  `sendway` varchar(100) DEFAULT NULL COMMENT '配送方式 用#连接',
  `point` float DEFAULT NULL COMMENT '店家积分',
  PRIMARY KEY (`mid`),
  KEY `FK_Relationship_14` (`uname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mistore
-- ----------------------------
INSERT INTO `mistore` VALUES ('10001', 'Armani', '123', null, '个人版', null, '4', '4', '4', '通过', '2016-06-28 10:25:27', null, '在线支付#货到付款', '申通快递', '81');
INSERT INTO `mistore` VALUES ('10002', 'Chanel', '123', null, '个人版', null, '5', '5', '5', '未通过', '2016-06-29 11:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '86');
INSERT INTO `mistore` VALUES ('10003', '皮尔.卡丹', '123', null, '个人版', null, '6', '6', '6', '通过', '2016-06-30 12:25:27', null, '在线支付#货到付款', '顺丰快递', '87');
INSERT INTO `mistore` VALUES ('10004', 'dreamtimes（梦幻时光）', '123', null, '个人版', null, '1', '1', '1', '未通过', '2016-07-01 13:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '82');
INSERT INTO `mistore` VALUES ('10005', 'ESTEE LAUDER', '123', null, '个人版', null, '2', '2', '2', '通过', '2016-07-02 14:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '68');
INSERT INTO `mistore` VALUES ('10006', 'DIOR', '123', null, '个人版', null, '3', '3', '3', '未通过', '2016-07-03 15:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '82');
INSERT INTO `mistore` VALUES ('10007', '惠普', '123', null, '个人版', null, '7', '7', '7', '未通过', '2016-07-04 16:25:27', null, '在线支付#货到付款', '顺丰快递', '60');
INSERT INTO `mistore` VALUES ('10008', '宏碁', '123', null, '商家版', '宏碁', '8', '8', '8', '通过', '2016-07-05 17:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '65');
INSERT INTO `mistore` VALUES ('10009', '我是店名1', '123', null, '商家版', '公司名1', '9', '9', '9', '审核中', '2016-07-06 18:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '86');
INSERT INTO `mistore` VALUES ('10010', '我是店名2', '123', null, '商家版', '公司名2', '10', '10', '10', '审核中', '2016-07-07 19:25:27', null, '在线支付#货到付款', '申通快递', '80');
INSERT INTO `mistore` VALUES ('10011', '我是店名3', '123', null, '商家版', '公司名3', '1', '1', '1', '通过', '2016-07-08 19:25:27', null, '在线支付#货到付款', '申通快递', '100');
INSERT INTO `mistore` VALUES ('10012', '我是店名4', '123', null, '个人版', '', '2', '2', '2', '未通过', '2016-07-09 19:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '64');
INSERT INTO `mistore` VALUES ('10013', '我是店名5', '123', null, '商家版', '公司名5', '3', '3', '3', '审核中', '2016-07-10 19:25:27', null, '在线支付#货到付款', '顺丰快递', '94');
INSERT INTO `mistore` VALUES ('10014', '我是店名6', '123', null, '个人版', '', '4', '4', '4', '通过', '2016-07-11 19:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '50');
INSERT INTO `mistore` VALUES ('10015', '我是店名7', '123', null, '商家版', '公司名7', '5', '5', '5', '未通过', '2016-07-12 19:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '85');
INSERT INTO `mistore` VALUES ('10016', '我是店名8', '123', null, '个人版', '', '6', '6', '6', '审核中', '2016-07-13 19:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '92');
INSERT INTO `mistore` VALUES ('10017', '我是店名9', '123', null, '商家版', '公司名9', '7', '7', '7', '通过', '2016-07-14 19:25:27', null, '在线支付#货到付款', '顺丰快递', '74');
INSERT INTO `mistore` VALUES ('10018', '我是店名10', '123', null, '个人版', '', '8', '8', '8', '未通过', '2016-07-15 19:25:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '20');
INSERT INTO `mistore` VALUES ('10019', '我是店名11', '123', null, '商家版', '公司名11', '9', '9', '9', '审核中', '2016-07-07 19:25:00', null, '在线支付#货到付款', '申通快递#顺丰快递', '70');
INSERT INTO `mistore` VALUES ('10020', '我是店名12', '123', null, '个人版', '', '10', '10', '10', '通过', '2016-07-07 19:25:01', null, '在线支付#货到付款', '申通快递', '78');
INSERT INTO `mistore` VALUES ('10021', '我是店名13', '123', null, '商家版', '公司名13', '11', '11', '11', '未通过', '2016-07-07 19:00:27', null, '在线支付#货到付款', '申通快递', '92');
INSERT INTO `mistore` VALUES ('10022', '我是店名14', '123', null, '个人版', '', '12', '12', '12', '审核中', '2016-07-07 19:01:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '87');
INSERT INTO `mistore` VALUES ('10023', '我是店名15', '123', null, '商家版', '公司名15', '13', '13', '13', '通过', '2016-07-07 19:02:27', null, '在线支付#货到付款', '顺丰快递', '61');
INSERT INTO `mistore` VALUES ('10024', '我是店名16', '123', null, '个人版', '', '14', '14', '14', '未通过', '2016-07-07 19:03:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '100');
INSERT INTO `mistore` VALUES ('10025', '我是店名17', '123', null, '商家版', '公司名17', '15', '15', '15', '审核中', '2016-07-07 19:04:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '81');
INSERT INTO `mistore` VALUES ('10026', '我是店名18', '123', null, '个人版', '', '16', '16', '16', '通过', '2016-07-07 19:05:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '81');
INSERT INTO `mistore` VALUES ('10027', '我是店名19', '123', null, '商家版', '公司名19', '17', '17', '17', '未通过', '2016-07-07 19:06:27', null, '在线支付#货到付款', '顺丰快递', '89');
INSERT INTO `mistore` VALUES ('10028', '我是店名20', '123', null, '个人版', '', '18', '18', '18', '审核中', '2016-07-07 19:07:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '89');
INSERT INTO `mistore` VALUES ('10029', '我是店名21', '123', null, '商家版', '公司名21', '19', '19', '19', '通过', '2016-07-07 19:08:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '65');
INSERT INTO `mistore` VALUES ('10030', '我是店名22', '123', null, '个人版', '', '20', '20', '20', '未通过', '2016-07-07 19:09:27', null, '在线支付#货到付款', '申通快递', '81');
INSERT INTO `mistore` VALUES ('10031', '我是店名23', '123', null, '商家版', '公司名23', '21', '21', '21', '审核中', '2016-07-07 19:10:27', null, '在线支付#货到付款', '申通快递', '94');
INSERT INTO `mistore` VALUES ('10032', '我是店名24', '123', null, '个人版', '', '22', '22', '22', '通过', '2016-07-07 19:11:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '89');
INSERT INTO `mistore` VALUES ('10033', '我是店名25', '123', null, '商家版', '公司名25', '23', '23', '23', '未通过', '2016-07-07 19:12:27', null, '在线支付#货到付款', '顺丰快递', '88');
INSERT INTO `mistore` VALUES ('10034', '我是店名26', '123', null, '个人版', '', '24', '24', '24', '审核中', '2016-07-07 19:13:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '64');
INSERT INTO `mistore` VALUES ('10035', '我是店名27', '123', null, '商家版', '公司名27', '25', '25', '25', '通过', '2016-07-07 19:14:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '95');
INSERT INTO `mistore` VALUES ('10036', '我是店名28', '123', null, '个人版', '', '26', '26', '26', '未通过', '2016-07-07 19:15:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '63');
INSERT INTO `mistore` VALUES ('10037', '我是店名29', '123', null, '商家版', '公司名29', '27', '27', '27', '审核中', '2016-07-07 19:16:27', null, '在线支付#货到付款', '顺丰快递', '84');
INSERT INTO `mistore` VALUES ('10038', '我是店名30', '123', null, '个人版', '', '28', '28', '28', '通过', '2016-07-07 19:17:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '67');
INSERT INTO `mistore` VALUES ('10039', '我是店名31', '123', null, '商家版', '公司名31', '29', '29', '29', '未通过', '2016-07-07 19:18:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '84');
INSERT INTO `mistore` VALUES ('10040', '我是店名32', '123', null, '个人版', '', '30', '30', '30', '审核中', '2016-07-07 19:19:27', null, '在线支付#货到付款', '申通快递', '74');
INSERT INTO `mistore` VALUES ('10041', '我是店名33', '123', null, '商家版', '公司名33', '31', '31', '31', '通过', '2016-07-07 19:20:27', null, '在线支付#货到付款', '申通快递', '20');
INSERT INTO `mistore` VALUES ('10042', '我是店名34', '123', null, '个人版', '', '32', '32', '32', '未通过', '2016-07-07 19:21:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '89');
INSERT INTO `mistore` VALUES ('10043', '我是店名35', '123', null, '商家版', '公司名35', '33', '33', '33', '审核中', '2016-07-07 19:22:27', null, '在线支付#货到付款', '顺丰快递', '72');
INSERT INTO `mistore` VALUES ('10044', '我是店名36', '123', null, '个人版', '', '34', '34', '34', '通过', '2016-07-07 19:23:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '20');
INSERT INTO `mistore` VALUES ('10045', '我是店名37', '123', null, '商家版', '公司名37', '35', '35', '35', '未通过', '2016-07-07 19:24:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '75');
INSERT INTO `mistore` VALUES ('10046', '我是店名38', '123', null, '个人版', '', '36', '36', '36', '审核中', '2016-07-07 19:26:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '71');
INSERT INTO `mistore` VALUES ('10047', '我是店名39', '123', null, '商家版', '公司名39', '37', '37', '37', '通过', '2016-07-07 19:27:27', null, '在线支付#货到付款', '顺丰快递', '40');
INSERT INTO `mistore` VALUES ('10048', '我是店名40', '123', null, '个人版', '', '38', '38', '38', '未通过', '2016-07-07 19:28:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '67');
INSERT INTO `mistore` VALUES ('10049', '我是店名41', '123', null, '商家版', '公司名41', '39', '39', '39', '审核中', '2016-07-07 19:29:27', null, '在线支付#货到付款', '申通快递#顺丰快递', '99');
INSERT INTO `mistore` VALUES ('10050', '我是店名42', '123', null, '个人版', '', '40', '40', '40', '通过', '2016-07-07 19:30:27', null, '在线支付#货到付款', '申通快递', '50');
INSERT INTO `mistore` VALUES ('10051', '我是店名43', '256', null, '企业版', '公司名42', '41', '41', '41', '审核中', '2016-07-07 13:30:27', null, '在线支付#货到付款', '申通快递', null);
INSERT INTO `mistore` VALUES ('10052', '我是店名44', '447', null, '个人版', null, '42', '42', '42', '审核中', '2016-07-07 11:30:27', null, '在线支付#货到付款', '申通快递', null);
INSERT INTO `mistore` VALUES ('10053', '我是店名45', '567', null, '个人版', null, '43', '43', '43', '审核中', '2016-07-07 01:30:27', null, '在线支付#货到付款', '申通快递', null);
INSERT INTO `mistore` VALUES ('10054', '我是店名46', '789', null, '个人版', null, '44', '44', '44', '审核中', '2016-07-07 01:29:27', null, '在线支付#货到付款', '申通快递', null);
INSERT INTO `mistore` VALUES ('10055', '我是店名47', '986', null, '个人版', null, '45', '45', '45', '审核中', '2016-07-07 20:29:27', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10056', '我是店名48', '156', null, '个人版', null, '46', '46', '46', '审核中', '2016-07-07 20:20:27', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10057', '我的商店49', '567', null, '个人版', null, '47', '47', '47', '审核中', '2016-07-07 20:20:28', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10058', '我是店名50', '852', null, '个人版', null, '49', '49', '49', '审核中', '2016-07-07 20:20:29', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10059', '我是店名51', '174', null, '个人版', null, '50', '50', '50', '审核中', '2016-07-07 20:20:30', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10060', '我是店名52', '578', null, '企业版', '公司名43', '51', '51', '51', '审核中', '2016-07-07 20:20:31', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10061', '我是店名53', '564', null, '企业版', '公司名44', '52', '52', '52', '审核中', '2016-07-07 20:20:33', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10062', '我是店名54', '245', null, '个人版', null, '53', '53', '53', '审核中', '2016-07-07 20:20:34', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10063', '我是店名55', '126', null, '企业版', '公司名45', '54', '54', '54', '审核中', '2016-07-07 20:20:35', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10064', '我是店名56', '172', null, '企业版', '公司名46', '55', '55', '55', '审核中', '2016-07-07 20:20:36', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10065', '我是店名57', '465', null, '个人版 ', null, '56', '56', '56', '审核中', '2016-07-07 20:20:37', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10066', '我是店名58', '788', null, '个人版', null, '57', '57', '57', '审核中', '2016-07-07 20:20:38', null, '在线支付#货到付款', '申通快递#顺丰快递', null);
INSERT INTO `mistore` VALUES ('10067', '我是店名59', '235', null, '个人版', null, '58', '58', '58', '已通过', '2016-07-07 20:20:39', null, '在线支付#货到付款', '申通快递#顺丰快递', '40');
INSERT INTO `mistore` VALUES ('10068', '我是店名60', '22', null, '个人版', null, '59', '59', '59', '已通过 ', '2016-07-07 20:20:40', null, '在线支付#货到付款', '申通快递#顺丰快递', '49');
INSERT INTO `mistore` VALUES ('10069', '我是店名61', '11', null, '企业版', '公司名47', '60', '60', '60', '已通过', '2016-07-07 20:20:41', null, '在线支付#货到付款', '申通快递#顺丰快递', '48');
INSERT INTO `mistore` VALUES ('10070', '我是店名62', '345', null, '个人版', null, '61', '61', '61', '已通过', '2016-07-07 20:20:42', null, '在线支付#货到付款', '申通快递#顺丰快递', '46');
INSERT INTO `mistore` VALUES ('10071', '我是店名63', '458', null, '个人版', null, '62', '62', '62', '已通过', '2016-07-07 20:20:43', null, '在线支付#货到付款', '申通快递#顺丰快递', '44');
INSERT INTO `mistore` VALUES ('10072', '我是店名64', '568', null, '个人版', null, '63', '63', '63', '已通过', '2016-07-07 20:20:44', null, '在线支付#货到付款', '申通快递#顺丰快递', '44');
INSERT INTO `mistore` VALUES ('10073', '我是店名65', '222', null, '个人版', null, '64', '64', '64', '已通过', '2016-07-07 20:20:45', null, '在线支付#货到付款', '申通快递#顺丰快递', '42');
INSERT INTO `mistore` VALUES ('10074', '我是店名66', '352', null, '个人版', null, '65', '65', '65', '已通过', '2016-07-07 20:20:46', null, '在线支付#货到付款', '申通快递#顺丰快递', '43');
INSERT INTO `mistore` VALUES ('10075', '我是店名67', '223', null, '个人版', null, '66', '66', '66', '已通过', '2016-07-07 20:20:47', null, '在线支付#货到付款', '申通快递#顺丰快递', '42');
INSERT INTO `mistore` VALUES ('10076', '我是店名68', '123', null, '个人版', null, '67', '67', '67', '已通过', '2016-07-07 20:20:48', null, '在线支付#货到付款', '申通快递#顺丰快递', '41');
INSERT INTO `mistore` VALUES ('10077', '我是店名69', '246', null, '个人版', null, '68', '68', '68', '已通过', '2016-07-07 20:20:48', null, '在线支付#货到付款', '申通快递#顺丰快递', '44');
INSERT INTO `mistore` VALUES ('10078', '我是店名70', '269', null, '企业版', '公司名48', '69', '69', '69', '已通过', '2016-07-07 20:20:49', null, '在线支付#货到付款', '申通快递#顺丰快递', '40');
INSERT INTO `mistore` VALUES ('10079', '我是店名71', '235', null, '企业版', '公司名49', '70', '70', '70', '已通过', '2016-07-07 20:20:50', null, '在线支付#货到付款', '申通快递#顺丰快递', '41');
INSERT INTO `mistore` VALUES ('10080', '我是店名72', '7777', null, '企业版', '公司名50', '71', '71', '71', '已通过', '2016-07-07 20:20:51', null, '在线支付#货到付款', '申通快递#顺丰快递', '42');
INSERT INTO `mistore` VALUES ('10081', '我是店名73', '7745', null, '企业版', '公司名51', '72', '72', '72', '已通过', '2016-07-07 20:20:52', null, '在线支付#货到付款', '申通快递#顺丰快递', '45');
INSERT INTO `mistore` VALUES ('10082', '我是店名74', '4568', null, '个人版', null, '73', '73', '73', '已通过', '2016-07-07 20:20:53', null, '在线支付#货到付款', '申通快递#顺丰快递', '47');
INSERT INTO `mistore` VALUES ('10083', '我是店名75', '4689', null, '个人版', null, '74', '74', '74', '已通过', '2016-07-07 20:20:54', null, '在线支付#货到付款', '申通快递#顺丰快递', '48');
INSERT INTO `mistore` VALUES ('10084', '我是店名76', '4678', null, '个人版', null, '75', '75', '75', '已通过', '2016-07-07 20:20:55', null, '在线支付#货到付款', '申通快递#顺丰快递', '49');
INSERT INTO `mistore` VALUES ('10085', '我是店名77', '7895', null, '个人版', null, '76', '76', '76', '已通过', '2016-07-07 20:20:56', null, '在线支付#货到付款', '申通快递#顺丰快递', '41');
INSERT INTO `mistore` VALUES ('10086', '我是店名78', '5689', null, '个人版', null, '77', '77', '77', '已通过', '2016-07-07 20:20:57', null, '在线支付#货到付款', '申通快递#顺丰快递', '42');
INSERT INTO `mistore` VALUES ('10087', '我是店名79', '25356', null, '个人版', null, '78', '78', '78', '已通过', '2016-07-07 20:20:58', null, '在线支付#货到付款', '申通快递#顺丰快递', '43');
INSERT INTO `mistore` VALUES ('10088', '我是店名80', '45678', null, '企业版', '公司名52', '79', '79', '79', '已通过', '2016-07-07 20:20:59', null, '在线支付#货到付款', '申通快递#顺丰快递', '44');
INSERT INTO `mistore` VALUES ('10089', '我是店名81', '3564', null, '企业版', '公司名53', '80', '80', '80', '已通过', '2016-07-07 20:21:00', null, '在线支付#货到付款', '申通快递#顺丰快递', '45');
INSERT INTO `mistore` VALUES ('10090', '我是店名82', '3659', null, '企业版', '公司名54', '81', '81', '81', '已通过', '2016-07-07 20:21:01', null, '在线支付#货到付款', '申通快递#顺丰快递', '46');
INSERT INTO `mistore` VALUES ('10091', '我是店名83', '23548', null, '企业版', '公司名55', '82', '82', '82', '已通过', '2016-07-07 20:21:02', null, '在线支付#货到付款', '申通快递', '47');
INSERT INTO `mistore` VALUES ('10092', '我是店名84', '465588', null, '个人版', null, '83', '83', '83', '已通过', '2016-07-07 20:21:03', null, '在线支付#货到付款', '申通快递', '48');
INSERT INTO `mistore` VALUES ('10093', '我是店名85', '46678', null, '个人版', null, '84', '84', '84', '已通过', '2016-07-07 20:21:04', null, '在线支付#货到付款', '申通快递', '49');
INSERT INTO `mistore` VALUES ('10094', '我是店名86', '3659', null, '个人版', null, '85', '85', '85', '已通过', '2016-07-07 20:21:05', null, '在线支付#货到付款', '申通快递', '39');
INSERT INTO `mistore` VALUES ('10095', '我是店名87', '3564', null, '个人版', null, '86', '86', '86', '已通过', '2016-07-07 20:21:06', null, '在线支付#货到付款', '申通快递', '38');
INSERT INTO `mistore` VALUES ('10096', '我是店铺88', '1156', null, '个人版', null, '87', '87', '87', '已通过', '2016-07-07 20:21:07', null, '在线支付#货到付款', '申通快递', '38');
INSERT INTO `mistore` VALUES ('10097', '我是店铺89', '1564', null, '个人版', null, '88', '88', '88', '已通过', '2016-07-07 20:21:08', null, '在线支付#货到付款', '申通快递', '37');
INSERT INTO `mistore` VALUES ('10098', '我是店铺90', '1578', null, '个人版', null, '89', '89', '89', '已通过', '2016-07-07 20:21:09', null, '在线支付#货到付款', '申通快递', '36');
INSERT INTO `mistore` VALUES ('10099', '我是店铺91', '2654', null, '个人版', null, '90', '90', '90', '已通过', '2016-07-07 20:21:10', null, '在线支付#货到付款', '申通快递', '35');

-- ----------------------------
-- Table structure for `m_point`
-- ----------------------------
DROP TABLE IF EXISTS `m_point`;
CREATE TABLE `m_point` (
  `mpid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '店家积分ID',
  `mname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '店名',
  `mpup` float DEFAULT NULL COMMENT '积分增减记录',
  `mpnote` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注 标注积分增减的原因',
  `mpdate` datetime DEFAULT NULL COMMENT '店积分获得时间',
  PRIMARY KEY (`mpid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of m_point
-- ----------------------------
INSERT INTO `m_point` VALUES ('16', '我是店名10', '-89', '测速', '2016-07-12 15:17:48');
INSERT INTO `m_point` VALUES ('14', '我是店名10', '-89', '测速', '2016-07-12 15:11:48');
INSERT INTO `m_point` VALUES ('15', '我是店名10', '56', '测速', '2016-07-12 15:15:11');
INSERT INTO `m_point` VALUES ('10', '我是店名10', '5', '测试', '2016-07-12 14:47:04');
INSERT INTO `m_point` VALUES ('11', '我是店名10', '5', '', '2016-07-12 14:48:13');
INSERT INTO `m_point` VALUES ('12', '我是店名10', '4', '1', '2016-07-12 15:06:29');
INSERT INTO `m_point` VALUES ('13', '我是店名10', '85', '', '2016-07-12 15:10:22');
INSERT INTO `m_point` VALUES ('7', '我是店名10', '2', '测试', '2016-07-12 14:38:42');
INSERT INTO `m_point` VALUES ('8', '我是店名10', '5', '测试', '2016-07-12 14:40:35');
INSERT INTO `m_point` VALUES ('9', '我是店名10', '5', '测试', '2016-07-12 14:42:38');
INSERT INTO `m_point` VALUES ('17', '我是店名10', '80', '测速', '2016-07-12 15:18:37');
INSERT INTO `m_point` VALUES ('18', '我是店名10', '8', '测速', '2016-07-12 15:19:39');
INSERT INTO `m_point` VALUES ('19', '我是店名10', '8', '测速', '2016-07-12 15:20:27');
INSERT INTO `m_point` VALUES ('20', '我是店名10', null, '', '2016-07-12 15:24:04');
INSERT INTO `m_point` VALUES ('21', '我是店名10', '8', '长度', '2016-07-12 15:26:48');
INSERT INTO `m_point` VALUES ('22', '我是店名10', '20', '测速', '2016-07-12 16:21:10');
INSERT INTO `m_point` VALUES ('23', 'ææ¯åºå10', '5', '', '2016-07-12 17:32:59');

-- ----------------------------
-- Table structure for `ordert`
-- ----------------------------
DROP TABLE IF EXISTS `ordert`;
CREATE TABLE `ordert` (
  `orderid` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '订单号',
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `mname` varchar(20) DEFAULT NULL COMMENT '店名',
  `reinformation` varchar(100) DEFAULT NULL COMMENT '收货信息',
  `logid` bigint(11) DEFAULT NULL COMMENT '物流编号',
  `status` varchar(50) DEFAULT NULL COMMENT '状态',
  `ordertime` datetime DEFAULT NULL COMMENT '下单时间',
  `stime` datetime DEFAULT NULL COMMENT '开始时间',
  `etime` datetime DEFAULT NULL COMMENT '完成时间',
  `paymethod` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `totalprice` float DEFAULT NULL COMMENT '总额',
  `realtotalprice` float DEFAULT NULL COMMENT '实付金额',
  `distotalprice` float DEFAULT NULL COMMENT '优惠金额',
  `point` float DEFAULT NULL COMMENT '积分',
  `billkind` varchar(20) DEFAULT NULL COMMENT '发票类型',
  `billtitle` varchar(20) DEFAULT NULL COMMENT '发票抬头',
  `billcontent` varchar(40) DEFAULT NULL COMMENT '发票明细',
  PRIMARY KEY (`orderid`),
  KEY `FK_Relationship_12` (`uname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordert
-- ----------------------------
INSERT INTO `ordert` VALUES ('2', 'huang123', '耐克', '王彤#陕西咸阳市杨陵区城区西农北校西区#18093975280', '2', '待评价', '2016-07-02 10:34:20', '2016-07-02 10:40:25', '2016-07-07 08:44:17', '在线支付', '2257.8', '2242.8', '15', '46', '普通发票', '个人', '明细');
INSERT INTO `ordert` VALUES ('3', 'huang123', '鬼手魔方', '王彤#陕西咸阳市杨陵区城区西农北校西区#18093975280', '3', '待收货', '2016-06-28 17:56:43', '2016-06-28 18:00:21', '2016-07-07 08:44:17', '在线支付', '1068.4', '1068.4', '0', '168', '普通发票', '个人', '明细');
INSERT INTO `ordert` VALUES ('4', 'huang123', '米其林', '王彤#陕西咸阳市杨陵区城区西农北校西区#18093975280', '4', '待付款', '2016-06-28 19:20:52', '2016-06-28 19:25:31', '2016-07-07 08:44:17', '在线支付', '1033.5', '533.5', '500', '1402', '普通发票', '个人', '明细');
INSERT INTO `ordert` VALUES ('5', 'huang123', '米其林', '王彤#陕西咸阳市杨陵区城区西农北校西区#18093975280', '4', '待付款', '2016-06-28 19:20:52', '2016-06-28 19:25:31', '2016-07-07 08:44:17', '在线支付', '456', '5', '6', '6', null, null, null);
INSERT INTO `ordert` VALUES ('12', 'huang123', '百多邦', '王彤#西农#18093975280', '12', '待评价', '2016-07-02 21:47:01', '2016-07-03 21:47:01', '2016-07-04 21:47:01', '货到付款', '346', '341', '5', '6', '普通发票', '个人', '明细');

-- ----------------------------
-- Table structure for `order_g`
-- ----------------------------
DROP TABLE IF EXISTS `order_g`;
CREATE TABLE `order_g` (
  `orderid` bigint(11) NOT NULL COMMENT '订单号',
  `gid` bigint(11) NOT NULL COMMENT '商品编号',
  `gdescribe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '商品描述',
  `gprice` float NOT NULL COMMENT '价格',
  `gnumber` int(11) NOT NULL COMMENT '数量',
  `favorable` float DEFAULT NULL COMMENT '优惠',
  PRIMARY KEY (`orderid`,`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_g
-- ----------------------------
INSERT INTO `order_g` VALUES ('2', '10002150147', '颜色：黑色', '752.6', '3', null);
INSERT INTO `order_g` VALUES ('3', '10002190146', null, '267.1', '4', null);
INSERT INTO `order_g` VALUES ('4', '10002220142', null, '206.7', '5', null);
INSERT INTO `order_g` VALUES ('12', '10002243113', '10g*1盒', '173', '2', null);
INSERT INTO `order_g` VALUES ('5', '10001150124', null, '935', '5', null);
INSERT INTO `order_g` VALUES ('5', '10001319136', null, '156', '7', null);

-- ----------------------------
-- Table structure for `point`
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point` (
  `pointid` bigint(11) NOT NULL COMMENT 'ID',
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `pud` float DEFAULT NULL COMMENT '积分更改',
  `pcomment` varchar(100) DEFAULT NULL COMMENT '备注',
  `ptime` date DEFAULT NULL COMMENT '积分时间',
  PRIMARY KEY (`pointid`),
  KEY `FK_Relationship_4` (`uname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES ('1', '123', '495', null, '2016-07-15');
INSERT INTO `point` VALUES ('2', '123', '463', null, '2016-07-05');
INSERT INTO `point` VALUES ('3', '123', '-221', null, '2016-07-12');
INSERT INTO `point` VALUES ('4', '123', '164', null, '2016-07-06');
INSERT INTO `point` VALUES ('5', '123', '472', null, '2016-07-10');
INSERT INTO `point` VALUES ('6', '123', '-8', null, '2016-07-08');
INSERT INTO `point` VALUES ('7', '123', '186', null, '2016-07-15');
INSERT INTO `point` VALUES ('8', '123', '108', null, '2016-07-14');
INSERT INTO `point` VALUES ('9', '123', '13', null, '2016-07-02');
INSERT INTO `point` VALUES ('10', '123', '-24', null, '2016-07-05');
INSERT INTO `point` VALUES ('11', '123', '-479', null, '2016-06-30');
INSERT INTO `point` VALUES ('12', '123', '412', null, '2016-07-06');
INSERT INTO `point` VALUES ('13', '123', '-286', null, '2016-06-30');
INSERT INTO `point` VALUES ('14', '123', '-272', null, '2016-07-03');
INSERT INTO `point` VALUES ('15', '123', '-72', null, '2016-07-07');
INSERT INTO `point` VALUES ('16', '123', '51', null, '2016-07-10');
INSERT INTO `point` VALUES ('17', '123', '226', null, '2016-07-10');
INSERT INTO `point` VALUES ('18', '123', '-475', null, '2016-07-06');
INSERT INTO `point` VALUES ('19', '123', '34', null, '2016-07-07');
INSERT INTO `point` VALUES ('20', '123', '393', null, '2016-07-03');
INSERT INTO `point` VALUES ('21', '123', '-288', null, '2016-07-15');
INSERT INTO `point` VALUES ('22', '123', '-396', null, '2016-07-09');
INSERT INTO `point` VALUES ('23', '123', '272', null, '2016-07-12');
INSERT INTO `point` VALUES ('24', '123', '258', null, '2016-07-07');
INSERT INTO `point` VALUES ('25', '123', '-70', null, '2016-07-08');
INSERT INTO `point` VALUES ('26', '123', '242', null, '2016-07-07');
INSERT INTO `point` VALUES ('27', '123', '-104', null, '2016-07-02');
INSERT INTO `point` VALUES ('28', '123', '-491', null, '2016-07-06');
INSERT INTO `point` VALUES ('29', '123', '389', null, '2016-07-10');
INSERT INTO `point` VALUES ('30', '123', '-55', null, '2016-07-04');
INSERT INTO `point` VALUES ('31', '123', '393', null, '2016-07-07');
INSERT INTO `point` VALUES ('32', '123', '-378', null, '2016-07-05');
INSERT INTO `point` VALUES ('33', '123', '-497', null, '2016-07-04');
INSERT INTO `point` VALUES ('34', '123', '221', null, '2016-07-14');
INSERT INTO `point` VALUES ('35', '123', '-480', null, '2016-07-15');
INSERT INTO `point` VALUES ('36', '123', '-89', null, '2016-07-07');
INSERT INTO `point` VALUES ('37', '123', '-5', null, '2016-07-10');
INSERT INTO `point` VALUES ('38', '123', '168', null, '2016-07-09');
INSERT INTO `point` VALUES ('39', '123', '-29', null, '2016-07-08');
INSERT INTO `point` VALUES ('40', '123', '462', null, '2016-07-04');
INSERT INTO `point` VALUES ('41', '123', '-364', null, '2016-07-10');
INSERT INTO `point` VALUES ('42', '123', '253', null, '2016-07-01');
INSERT INTO `point` VALUES ('43', '123', '399', null, '2016-07-13');
INSERT INTO `point` VALUES ('44', '123', '47', null, '2016-07-01');
INSERT INTO `point` VALUES ('45', '123', '-327', null, '2016-07-06');
INSERT INTO `point` VALUES ('46', '123', '-5', null, '2016-06-28');
INSERT INTO `point` VALUES ('47', '123', '13', null, '2016-07-10');
INSERT INTO `point` VALUES ('48', '123', '-163', null, '2016-07-06');
INSERT INTO `point` VALUES ('49', '123', '-380', null, '2016-07-12');
INSERT INTO `point` VALUES ('50', '123', '204', null, '2016-07-13');

-- ----------------------------
-- Table structure for `promotion`
-- ----------------------------
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion` (
  `gid` int(11) NOT NULL COMMENT '商品编号',
  `mname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `method` varchar(20) DEFAULT NULL COMMENT '促销方式',
  `price` float DEFAULT NULL COMMENT '价格',
  `details` varchar(50) DEFAULT NULL COMMENT '促销描述',
  PRIMARY KEY (`gid`),
  KEY `FK_Relationship_11` (`mname`) USING BTREE,
  KEY `FK_Relationship_24` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promotion
-- ----------------------------
INSERT INTO `promotion` VALUES ('1', '雷蛇', null, '798', null);

-- ----------------------------
-- Table structure for `scan`
-- ----------------------------
DROP TABLE IF EXISTS `scan`;
CREATE TABLE `scan` (
  `sid` bigint(11) NOT NULL COMMENT '浏览记录ID',
  `gid` bigint(11) NOT NULL COMMENT '商品编号',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `stime` date NOT NULL COMMENT '浏览日期',
  PRIMARY KEY (`sid`),
  KEY `FK_Relationship_5` (`gid`) USING BTREE,
  KEY `FK_Relationship_6` (`uname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scan
-- ----------------------------
INSERT INTO `scan` VALUES ('1', '10', '123', '2016-07-05');
INSERT INTO `scan` VALUES ('2', '15', '123', '2016-07-10');
INSERT INTO `scan` VALUES ('3', '14', '123', '2016-07-08');
INSERT INTO `scan` VALUES ('4', '9', '123', '2016-06-30');
INSERT INTO `scan` VALUES ('5', '14', '123', '2016-07-02');
INSERT INTO `scan` VALUES ('6', '30', '123', '2016-06-28');
INSERT INTO `scan` VALUES ('7', '34', '123', '2016-07-12');
INSERT INTO `scan` VALUES ('8', '3', '123', '2016-07-05');
INSERT INTO `scan` VALUES ('9', '31', '123', '2016-07-14');
INSERT INTO `scan` VALUES ('10', '22', '123', '2016-07-12');
INSERT INTO `scan` VALUES ('11', '14', '123', '2016-07-08');
INSERT INTO `scan` VALUES ('12', '48', '123', '2016-07-12');
INSERT INTO `scan` VALUES ('13', '14', '123', '2016-07-10');
INSERT INTO `scan` VALUES ('14', '15', '123', '2016-07-01');
INSERT INTO `scan` VALUES ('15', '17', '123', '2016-06-30');
INSERT INTO `scan` VALUES ('16', '12', '123', '2016-07-08');
INSERT INTO `scan` VALUES ('17', '32', '123', '2016-07-04');
INSERT INTO `scan` VALUES ('18', '17', '123', '2016-06-29');
INSERT INTO `scan` VALUES ('19', '36', '123', '2016-07-02');
INSERT INTO `scan` VALUES ('20', '13', '123', '2016-06-29');
INSERT INTO `scan` VALUES ('21', '37', '123', '2016-07-05');
INSERT INTO `scan` VALUES ('22', '40', '123', '2016-07-05');
INSERT INTO `scan` VALUES ('23', '6', '123', '2016-07-05');
INSERT INTO `scan` VALUES ('24', '36', '123', '2016-07-05');
INSERT INTO `scan` VALUES ('25', '20', '123', '2016-07-04');
INSERT INTO `scan` VALUES ('26', '38', '123', '2016-07-12');
INSERT INTO `scan` VALUES ('27', '36', '123', '2016-06-30');
INSERT INTO `scan` VALUES ('28', '44', '123', '2016-07-10');
INSERT INTO `scan` VALUES ('29', '21', '123', '2016-06-28');
INSERT INTO `scan` VALUES ('30', '41', '123', '2016-07-07');
INSERT INTO `scan` VALUES ('31', '9', '123', '2016-06-30');
INSERT INTO `scan` VALUES ('32', '2', '123', '2016-07-12');
INSERT INTO `scan` VALUES ('33', '24', '123', '2016-07-08');
INSERT INTO `scan` VALUES ('34', '2', '123', '2016-07-11');
INSERT INTO `scan` VALUES ('35', '4', '123', '2016-06-30');
INSERT INTO `scan` VALUES ('36', '40', '123', '2016-06-29');
INSERT INTO `scan` VALUES ('37', '8', '123', '2016-07-08');
INSERT INTO `scan` VALUES ('38', '22', '123', '2016-07-03');
INSERT INTO `scan` VALUES ('39', '5', '123', '2016-07-10');
INSERT INTO `scan` VALUES ('40', '37', '123', '2016-07-11');
INSERT INTO `scan` VALUES ('41', '29', '123', '2016-06-30');
INSERT INTO `scan` VALUES ('42', '36', '123', '2016-07-01');
INSERT INTO `scan` VALUES ('43', '7', '123', '2016-07-11');
INSERT INTO `scan` VALUES ('44', '49', '123', '2016-07-06');
INSERT INTO `scan` VALUES ('45', '21', '123', '2016-06-29');
INSERT INTO `scan` VALUES ('46', '2', '123', '2016-07-02');
INSERT INTO `scan` VALUES ('47', '18', '123', '2016-07-13');
INSERT INTO `scan` VALUES ('48', '43', '123', '2016-07-01');
INSERT INTO `scan` VALUES ('49', '38', '123', '2016-06-29');
INSERT INTO `scan` VALUES ('50', '39', '123', '2016-07-05');

-- ----------------------------
-- Table structure for `shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `gid` bigint(11) NOT NULL COMMENT '商品编号',
  `snum` int(11) NOT NULL COMMENT '数量',
  `date` datetime NOT NULL COMMENT '添加日期',
  KEY `FK_Relationship_17` (`uname`) USING BTREE,
  KEY `FK_Relationship_18` (`gid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------
INSERT INTO `shopcart` VALUES ('huang123', '10002113140', '3', '2016-06-14 00:00:00');
INSERT INTO `shopcart` VALUES ('huang123', '10002150147', '4', '2016-06-17 00:00:00');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `image` varchar(100) DEFAULT NULL COMMENT '头像',
  `kind` varchar(20) DEFAULT NULL COMMENT '用户类型',
  `grade` bigint(10) DEFAULT NULL COMMENT '用户会员等级',
  `balance` float DEFAULT NULL COMMENT '用户余额',
  `credit` float DEFAULT NULL COMMENT '用户积分',
  `phone` varchar(20) DEFAULT NULL COMMENT '用户手机号',
  `qq` varchar(20) DEFAULT NULL COMMENT '用户QQ号',
  `ip` varchar(128) DEFAULT NULL COMMENT '登陆IP',
  `lasttime` datetime DEFAULT NULL COMMENT '上一次登陆时间',
  `nowtime` datetime DEFAULT NULL COMMENT '本次登陆时间',
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', null, null, null, '913548946@qq.com', 'caf1a3dfb505ffed0d024130f58c5cfa', null, null, null, null, null, null, '', null, null, null);
INSERT INTO `user` VALUES ('adaliu', null, null, null, 'adaliu@163.com#525679', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('admin', null, null, null, '913548946@qq.com', '202cb962ac59075b964b07152d234b70', null, 'admin', null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('fsafasfa', null, null, null, '913548946@qq.com', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('huang123', null, null, null, 'huang123@163.com#462460', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, '2016-07-13 15:32:28', '2016-07-13 15:36:58');
INSERT INTO `user` VALUES ('huang1234', null, null, null, 'huang123@15.com#191112', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('w123456', null, null, null, '835119476@qq.com#192826', '3d24b838770ee90773804e8599e549ff', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('wangtongsb', null, null, null, '123456@163.com#733007', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `u_cou`
-- ----------------------------
DROP TABLE IF EXISTS `u_cou`;
CREATE TABLE `u_cou` (
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `couid` int(11) DEFAULT NULL COMMENT '优惠券ID',
  `getdate` date DEFAULT NULL COMMENT '获得日期',
  KEY `FK_Relationship_8` (`couid`) USING BTREE,
  KEY `FK_Relationship_9` (`uname`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_cou
-- ----------------------------
INSERT INTO `u_cou` VALUES ('123', '1', '2016-06-28');
INSERT INTO `u_cou` VALUES ('123', '2', '2016-06-27');
