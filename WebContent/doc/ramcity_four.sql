/*
Navicat MySQL Data Transfer

Source Server         : SQL
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : ramcity_three

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2019-04-25 16:47:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `writeId` int(11) NOT NULL AUTO_INCREMENT,
  `wtype` varchar(255) NOT NULL,
  `writeTime` datetime DEFAULT NULL,
  `writeTitle` varchar(255) NOT NULL,
  `writeText` text NOT NULL,
  `issuer` int(11) NOT NULL,
  PRIMARY KEY (`writeId`) USING BTREE,
  KEY `issuer` (`issuer`) USING BTREE,
  CONSTRAINT `issuer` FOREIGN KEY (`issuer`) REFERENCES `people` (`peopleId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '景点', '2019-04-22 15:20:01', '广州塔', '广州塔（英语：Canton Tower）又称广州新电视塔，昵称小蛮腰。位于广州市海珠区（艺洲岛）赤岗塔附近，距离珠江南岸125米，与珠江新城、花城广场、海心沙岛隔江相望。广州塔塔身主体高454米，天线桅杆高146米，总高度600米。是中国第一高塔，世界第二高塔，仅次于东京晴空塔，是国家AAAA级旅游景区。\r\n广州塔塔身168~334.4米处设有“蜘蛛侠栈道”，是世界最高最长的空中漫步云梯 。塔身422.8米处设有旋转餐厅，是世界最高的旋转餐厅  。塔身顶部450~454米处设有摩天轮，是世界最高摩天轮 。天线桅杆455~485米处设有“极速云霄”速降游乐项目，是世界最高的垂直速降游乐项目  。天线桅杆488米处设有户外摄影观景平台，是世界最高的户外观景平台，超越了迪拜哈利法塔的442米室外观景平台，以及加拿大国家电视塔447米的“天空之盖”的高度  。\r\n广州塔隶属广州城投集团，由广州市建筑集团有限公司和上海建工集团负责施工，总建筑面积114054平方米，2009年9月竣工，2010年9月30日正式对外开放，2010年10月1日正式公开售票接待游客   。广州塔有5个功能区和多种游乐设施，包括户外观景平台、摩天轮、极速云霄游乐项目，有2个观光大厅，有悬空走廊，天梯，4D和3D动感影院，中西美食，会展设施，购物商场及科普展示厅。', '1');
INSERT INTO `article` VALUES ('2', '景点', '2019-04-22 15:21:42', '陈家祠 ', '这座清代宗祠又被称为“陈氏书院”，是广东地区规模最大、装饰华丽、保存完好的传统岭南祠堂式建筑，被誉为“岭南建筑艺术明珠”。到这里来，除了欣赏它那集木雕、砖雕、石雕、灰塑、陶塑、铜铁铸、彩绘于一体的广东民间建筑装饰艺术，还别忘了藏于它腹内的广东民间工艺博物馆。游客可以在这里欣赏到《广东传统雕刻艺术》、《广东象牙雕刻艺术》、《广东刺绣》、《百年陈氏书院》、《旧广州家居》等常设展览。', '1');
INSERT INTO `article` VALUES ('3', '美食', '2019-04-22 15:24:13', '马蹄糕', '马蹄糕是广东地区传统糕类名点，因为用荸荠粉制作而得名，因荸荠又名马蹄。此品在广州流行已久，但以泮溪酒家所制最为有名。该酒家地处泮圹，是盛产马蹄的地方。所产的马蹄粉，粉质细腻，结晶体大，制成成品质量亦佳。色泽茶黄，煎后金黄色，呈半透明状，可折而不裂不断，软、滑、爽、韧融为一起，味道香甜。', '1');
INSERT INTO `article` VALUES ('8', '美食', '2019-04-24 00:00:00', '白切鸡', '白切鸡好次', '1');
INSERT INTO `article` VALUES ('9', '景点', '2019-04-25 00:00:00', '白云山', '白云山美丽', '1');
INSERT INTO `article` VALUES ('10', '景点', '2019-04-25 00:00:00', '广州贸易', '广州贸易美啊', '1');
INSERT INTO `article` VALUES ('11', '景点', '2019-04-25 00:00:00', '广州塔', '广州塔美啊！', '1');
INSERT INTO `article` VALUES ('12', '景点', '2019-04-25 00:00:00', '海印大桥', '海印大桥美啊', '1');
INSERT INTO `article` VALUES ('13', '景点', '2019-04-25 00:00:00', '沙面岛', '沙面岛美啊', '1');
INSERT INTO `article` VALUES ('14', '景点', '2019-04-25 00:00:00', '越秀公园', '越秀公园美啊', '1');
INSERT INTO `article` VALUES ('15', '景点', '2019-04-25 00:00:00', '长隆野生动物园', '长隆野生动物园凶啊！', '1');
INSERT INTO `article` VALUES ('16', '美食', '2019-04-25 00:00:00', '白云猪手', '白云猪手好吃啊~', '1');
INSERT INTO `article` VALUES ('17', '美食', '2019-04-25 00:00:00', '煲仔饭', '煲仔饭好吃啊~', '1');
INSERT INTO `article` VALUES ('18', '美食', '2019-04-25 00:00:00', '肠粉', '肠粉好吃啊~', '1');
INSERT INTO `article` VALUES ('19', '美食', '2019-04-25 00:00:00', '炒田螺', '炒田螺好吃啊', '1');
INSERT INTO `article` VALUES ('20', '美食', '2019-04-25 00:00:00', '番薯糖水', '番薯糖水好吃啊！', '1');
INSERT INTO `article` VALUES ('21', '美食', '2019-04-25 00:00:00', '龟苓膏', '龟苓膏好吃啊~', '1');
INSERT INTO `article` VALUES ('22', '美食', '2019-04-25 00:00:00', '姜汁撞奶', '姜撞奶好吃啊~', '1');
INSERT INTO `article` VALUES ('23', '美食', '2019-04-25 00:00:00', '老火靓汤', '老火靓汤好吃啊~', '1');
INSERT INTO `article` VALUES ('24', '美食', '2019-04-25 00:00:00', '糯米鸡', '糯米鸡好吃啊~', '1');
INSERT INTO `article` VALUES ('25', '美食', '2019-04-25 00:00:00', '凉茶', '凉茶好吃啊~', '1');
INSERT INTO `article` VALUES ('26', '美食', '2019-04-25 00:00:00', '烧鹅', '烧鹅好吃啊~', '1');
INSERT INTO `article` VALUES ('27', '美食', '2019-04-25 00:00:00', '生滚粥', '生滚粥好吃啊~', '1');
INSERT INTO `article` VALUES ('28', '美食', '2019-04-25 00:00:00', '双皮奶', '双皮奶好吃啊~', '1');
INSERT INTO `article` VALUES ('29', '美食', '2019-04-25 00:00:00', '盐焗鸡', '盐焗鸡好吃啊~', '1');
INSERT INTO `article` VALUES ('30', '美食', '2019-04-25 00:00:00', '竹升面', '竹升面好吃啊~', '1');
INSERT INTO `article` VALUES ('31', '美食', '2019-04-25 00:00:00', '云吞面', '云吞面好吃啊~', '1');
INSERT INTO `article` VALUES ('32', '历史', '2019-04-25 00:00:00', '岭南印象', '岭南印象 美啊~', '1');

-- ----------------------------
-- Table structure for `food`
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `foodType` varchar(255) NOT NULL,
  `fwriteId` int(11) NOT NULL,
  `foodName` varchar(255) NOT NULL,
  `foodPhoto` varchar(255) NOT NULL,
  PRIMARY KEY (`foodId`) USING BTREE,
  KEY `fwriteId` (`fwriteId`) USING BTREE,
  CONSTRAINT `fwriteId` FOREIGN KEY (`fwriteId`) REFERENCES `article` (`writeId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('8', '风味小吃', '8', '白切鸡', 'uploads/1556181307251.jpg');
INSERT INTO `food` VALUES ('9', '特色美味', '16', '白切猪手', 'uploads/1556181327928.jpg');
INSERT INTO `food` VALUES ('10', '特色美味', '17', '煲仔饭', 'uploads/1556181344268.jpg');
INSERT INTO `food` VALUES ('11', '风味小吃', '3', '马蹄糕', 'uploads/1556181403551.jpg');
INSERT INTO `food` VALUES ('12', '特色美味', '18', '肠粉', 'uploads/1556181417561.jpg');
INSERT INTO `food` VALUES ('13', '风味小吃', '19', '炒田螺', 'uploads/1556181437021.png');
INSERT INTO `food` VALUES ('14', '甜味饮品', '20', '番薯糖水', 'uploads/1556181454067.jpg');
INSERT INTO `food` VALUES ('15', '甜味饮品', '21', '龟苓膏', 'uploads/1556181471112.jpg');
INSERT INTO `food` VALUES ('16', '甜味饮品', '22', '姜汁撞奶', 'uploads/1556181494841.jpg');
INSERT INTO `food` VALUES ('17', '风味小吃', '23', '老火靓汤', 'uploads/1556181514076.jpg');
INSERT INTO `food` VALUES ('18', '甜味饮品', '25', '凉茶', 'uploads/1556181528605.jpg');
INSERT INTO `food` VALUES ('19', '特色美味', '24', '糯米鸡', 'uploads/1556181549515.jpg');
INSERT INTO `food` VALUES ('20', '特色美味', '26', '烧鹅', 'uploads/1556181578308.jpg');
INSERT INTO `food` VALUES ('21', '特色美味', '27', '生滚粥', 'uploads/1556181595514.jpg');
INSERT INTO `food` VALUES ('22', '甜味饮品', '28', '双皮奶', 'uploads/1556181610212.jpg');
INSERT INTO `food` VALUES ('23', '特色美味', '29', '盐焗鸡', 'uploads/1556181624770.jpg');
INSERT INTO `food` VALUES ('24', '特色美味', '31', '云吞面', 'uploads/1556181646992.jpg');
INSERT INTO `food` VALUES ('25', '特色美味', '30', '竹升面', 'uploads/1556181668809.jpg');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) NOT NULL,
  `messTime` datetime DEFAULT NULL,
  `messType` varchar(255) NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '15555556666', '男', '杨信创', '你们介绍的信息很完整，谢谢你们', '2019-04-22 16:21:57', '表扬');
INSERT INTO `message` VALUES ('2', '16666667777', '女', '吴佳佳', '你们应该在多找些美丽的照片', '2019-04-22 16:22:58', '建议');
INSERT INTO `message` VALUES ('3', '17777778888', '男', '陆家学', '你们小蛮腰电视塔的照片较模糊', '2019-04-22 16:23:54', '批评');
INSERT INTO `message` VALUES ('4', '18888889999', '男', '独孤九剑', '你们介绍的地方很漂亮，但是我去不了', '2019-04-22 16:24:48', '举报');

-- ----------------------------
-- Table structure for `notic`
-- ----------------------------
DROP TABLE IF EXISTS `notic`;
CREATE TABLE `notic` (
  `noticId` int(11) NOT NULL AUTO_INCREMENT,
  `noticName` varchar(255) NOT NULL,
  `noticText` varchar(255) NOT NULL,
  `noticTime` datetime DEFAULT NULL,
  PRIMARY KEY (`noticId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of notic
-- ----------------------------
INSERT INTO `notic` VALUES ('1', '欢迎您', '非常欢迎各位游客的观看，如果喜欢，就请联系我们，为我们积极留言建议，若有不对的地方，请批评我们，若发现违法犯罪的信息，请举报', '2019-04-22 16:28:13');

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `peopleId` int(11) NOT NULL AUTO_INCREMENT,
  `peopleName` varchar(255) NOT NULL,
  `passWord` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `qq` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`peopleId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('1', '小一', '123', '1', '1799111111', 'conf@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('2', '小二', '123', '1', '1799222222', 'setof@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('3', '小三', '123', '1', '1799333333', 'bitef@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('4', '小四', '123', '1', '1799444444', 'uiui@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('5', '客一', '456', '2', '2792111111', 'keone@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('6', '客二', '456', '2', '2792222222', 'ketwo@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('7', '客三', '456', '2', '2792333333', 'kethree@qq.com', '广西钦州');
INSERT INTO `people` VALUES ('8', '管理员', '123', '1', '1111123111', '13213@qq.com', 'sef');

-- ----------------------------
-- Table structure for `spots`
-- ----------------------------
DROP TABLE IF EXISTS `spots`;
CREATE TABLE `spots` (
  `spotsId` int(255) NOT NULL AUTO_INCREMENT,
  `spotsType` varchar(255) NOT NULL,
  `swriteId` int(11) NOT NULL,
  `spotsName` varchar(255) NOT NULL,
  `spotsImage` varchar(255) NOT NULL,
  PRIMARY KEY (`spotsId`) USING BTREE,
  KEY `swriteId` (`swriteId`) USING BTREE,
  CONSTRAINT `swriteId` FOREIGN KEY (`swriteId`) REFERENCES `article` (`writeId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of spots
-- ----------------------------
INSERT INTO `spots` VALUES ('6', '观光游览', '1', '广州塔夜景', 'uploads/1556180883862.jpg');
INSERT INTO `spots` VALUES ('9', '观光游览', '1', '广州塔', 'uploads/1556180935956.jpg');
INSERT INTO `spots` VALUES ('12', '观光游览', '9', '白云山', 'uploads/1556180923054.jpg');
INSERT INTO `spots` VALUES ('15', '现代都市', '10', '广州贸易', 'uploads/1556180957072.jpg');
INSERT INTO `spots` VALUES ('18', '观光游览', '15', '长隆野生动物园', 'uploads/1556180981238.jpg');
INSERT INTO `spots` VALUES ('19', '观光游览', '14', '越秀公园', 'uploads/1556181003001.jpg');
INSERT INTO `spots` VALUES ('20', '历史古迹', '13', '沙面岛', 'uploads/1556181017577.jpg');
INSERT INTO `spots` VALUES ('21', '现代都市', '12', '海印大桥', 'uploads/1556181062441.jpg');
INSERT INTO `spots` VALUES ('22', '现代都市', '10', '城市夜景', 'uploads/1556181083536.jpg');
INSERT INTO `spots` VALUES ('23', '历史古迹', '9', '白云山风景区', 'uploads/1556181245931.jpg');

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `teamId` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`teamId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', '广西民族师范学院\r\n开发人员：\r\n武文霖\r\n马礼庆\r\n马德权');
