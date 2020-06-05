/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : db_online_exam

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-06-05 11:34:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('474', '1', '1');
INSERT INTO `authority` VALUES ('475', '1', '5');
INSERT INTO `authority` VALUES ('476', '1', '17');
INSERT INTO `authority` VALUES ('477', '1', '18');
INSERT INTO `authority` VALUES ('478', '1', '19');
INSERT INTO `authority` VALUES ('479', '1', '20');
INSERT INTO `authority` VALUES ('480', '1', '13');
INSERT INTO `authority` VALUES ('481', '1', '21');
INSERT INTO `authority` VALUES ('482', '1', '22');
INSERT INTO `authority` VALUES ('483', '1', '23');
INSERT INTO `authority` VALUES ('484', '1', '35');
INSERT INTO `authority` VALUES ('485', '1', '36');
INSERT INTO `authority` VALUES ('486', '1', '14');
INSERT INTO `authority` VALUES ('487', '1', '15');
INSERT INTO `authority` VALUES ('488', '1', '24');
INSERT INTO `authority` VALUES ('489', '1', '25');
INSERT INTO `authority` VALUES ('490', '1', '26');
INSERT INTO `authority` VALUES ('491', '1', '31');
INSERT INTO `authority` VALUES ('492', '1', '32');
INSERT INTO `authority` VALUES ('493', '1', '33');
INSERT INTO `authority` VALUES ('494', '1', '34');
INSERT INTO `authority` VALUES ('495', '1', '37');
INSERT INTO `authority` VALUES ('496', '1', '38');
INSERT INTO `authority` VALUES ('497', '1', '39');
INSERT INTO `authority` VALUES ('498', '1', '40');
INSERT INTO `authority` VALUES ('499', '1', '41');
INSERT INTO `authority` VALUES ('500', '1', '42');
INSERT INTO `authority` VALUES ('501', '1', '43');
INSERT INTO `authority` VALUES ('502', '1', '44');
INSERT INTO `authority` VALUES ('503', '1', '45');
INSERT INTO `authority` VALUES ('504', '1', '46');
INSERT INTO `authority` VALUES ('505', '1', '47');
INSERT INTO `authority` VALUES ('506', '1', '48');
INSERT INTO `authority` VALUES ('507', '1', '49');
INSERT INTO `authority` VALUES ('508', '1', '50');
INSERT INTO `authority` VALUES ('509', '1', '51');
INSERT INTO `authority` VALUES ('510', '1', '64');
INSERT INTO `authority` VALUES ('511', '1', '52');
INSERT INTO `authority` VALUES ('512', '1', '53');
INSERT INTO `authority` VALUES ('513', '1', '54');
INSERT INTO `authority` VALUES ('514', '1', '55');
INSERT INTO `authority` VALUES ('515', '1', '56');
INSERT INTO `authority` VALUES ('516', '1', '57');
INSERT INTO `authority` VALUES ('517', '1', '58');
INSERT INTO `authority` VALUES ('518', '1', '60');
INSERT INTO `authority` VALUES ('519', '1', '61');
INSERT INTO `authority` VALUES ('520', '1', '62');
INSERT INTO `authority` VALUES ('521', '1', '63');
INSERT INTO `authority` VALUES ('522', '1', '65');
INSERT INTO `authority` VALUES ('523', '1', '66');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `avaliableTime` int(8) NOT NULL,
  `questionNum` int(5) NOT NULL,
  `totalScore` int(5) NOT NULL,
  `passScore` int(5) NOT NULL,
  `singleQuestionNum` int(5) NOT NULL,
  `muiltQuestionNum` int(5) NOT NULL,
  `chargeQuestionNum` int(5) NOT NULL,
  `paperNum` int(5) NOT NULL DEFAULT '0',
  `examedNum` int(5) NOT NULL DEFAULT '0',
  `passNum` int(5) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('7', '软件测试一', '1', '2020-05-05 20:03:11', '2020-05-31 20:02:43', '60', '9', '24', '10', '3', '3', '3', '1', '1', '0', '2020-05-05 20:03:11');
INSERT INTO `exam` VALUES ('9', '软件测试二', '1', '2020-05-08 20:04:03', '2020-05-28 20:02:43', '60', '6', '16', '10', '2', '2', '2', '0', '0', '0', '2020-05-08 20:04:03');
INSERT INTO `exam` VALUES ('10', '软件测试三', '1', '2020-05-28 20:02:37', '2020-06-10 20:02:43', '60', '9', '24', '10', '3', '3', '3', '0', '0', '0', '2020-05-28 20:04:30');
INSERT INTO `exam` VALUES ('11', '英语测试一', '7', '2020-05-29 14:12:47', '2020-06-30 14:12:51', '60', '1', '2', '5', '1', '0', '0', '0', '0', '0', '2020-05-29 14:13:14');

-- ----------------------------
-- Table structure for `exampaper`
-- ----------------------------
DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE `exampaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `totalScore` int(5) NOT NULL DEFAULT '0',
  `score` int(5) NOT NULL DEFAULT '0',
  `startExamTime` datetime DEFAULT NULL,
  `endExamTime` datetime DEFAULT NULL,
  `useTime` int(8) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `examId` (`examId`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `exampaper_ibfk_1` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`),
  CONSTRAINT `exampaper_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exampaper
-- ----------------------------
INSERT INTO `exampaper` VALUES ('24', '7', '13', '1', '24', '2', '2020-05-28 20:06:06', '2020-05-28 20:06:33', '0', '2020-05-28 20:06:06');

-- ----------------------------
-- Table structure for `exampaperanswer`
-- ----------------------------
DROP TABLE IF EXISTS `exampaperanswer`;
CREATE TABLE `exampaperanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) NOT NULL,
  `examPaperId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL DEFAULT '0',
  `answer` varchar(32) DEFAULT '0',
  `isCorrect` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `examId` (`examPaperId`),
  KEY `studentId` (`studentId`),
  KEY `questionId` (`questionId`),
  KEY `examId_2` (`examId`),
  CONSTRAINT `exampaperanswer_ibfk_1` FOREIGN KEY (`examPaperId`) REFERENCES `exampaper` (`id`),
  CONSTRAINT `exampaperanswer_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `exampaperanswer_ibfk_3` FOREIGN KEY (`questionId`) REFERENCES `question` (`id`),
  CONSTRAINT `exampaperanswer_ibfk_4` FOREIGN KEY (`examId`) REFERENCES `exam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exampaperanswer
-- ----------------------------
INSERT INTO `exampaperanswer` VALUES ('110', '7', '24', '13', '13', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('111', '7', '24', '13', '15', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('112', '7', '24', '13', '2', 'A', '1');
INSERT INTO `exampaperanswer` VALUES ('113', '7', '24', '13', '1', 'B', '0');
INSERT INTO `exampaperanswer` VALUES ('114', '7', '24', '13', '21', 'C', '0');
INSERT INTO `exampaperanswer` VALUES ('115', '7', '24', '13', '20', 'C', '0');
INSERT INTO `exampaperanswer` VALUES ('116', '7', '24', '13', '17', 'A', '0');
INSERT INTO `exampaperanswer` VALUES ('117', '7', '24', '13', '18', 'A', '0');
INSERT INTO `exampaperanswer` VALUES ('118', '7', '24', '13', '5', 'B', '0');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('89', '�û���Ϊadmin���û���¼ʱ������֤�����!', '2020-05-28 19:53:15');
INSERT INTO `log` VALUES ('90', '�û���Ϊ{admin}����ɫΪ{超级管理员}���û���¼�ɹ�!', '2020-05-28 19:53:25');
INSERT INTO `log` VALUES ('91', '�û���Ϊ{admin}����ɫΪ{超级管理员}���û���¼�ɹ�!', '2020-05-28 20:07:17');
INSERT INTO `log` VALUES ('92', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-29 14:04:39');
INSERT INTO `log` VALUES ('93', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-30 13:44:15');
INSERT INTO `log` VALUES ('94', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-30 14:49:53');
INSERT INTO `log` VALUES ('95', '用户名为admin的用户登录时输入验证码错误!', '2020-06-05 10:47:39');
INSERT INTO `log` VALUES ('96', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-05 10:47:50');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '学科管理', '', 'icon-text-padding-left');
INSERT INTO `menu` VALUES ('38', '37', '学科列表', '../admin/subject/list', 'icon-application-view-columns');
INSERT INTO `menu` VALUES ('39', '38', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('42', '0', '考生管理', '', 'icon-users');
INSERT INTO `menu` VALUES ('43', '42', '考生列表', '../admin/student/list', 'icon-vcard');
INSERT INTO `menu` VALUES ('44', '43', '添加', 'openAdd()', 'icon-user-add');
INSERT INTO `menu` VALUES ('45', '43', '编辑', 'openEdit()', 'icon-user-edit');
INSERT INTO `menu` VALUES ('46', '43', '删除', 'remove()', 'icon-user-cross');
INSERT INTO `menu` VALUES ('47', '0', '试题管理', '', 'icon-date');
INSERT INTO `menu` VALUES ('48', '47', '试题列表', '../admin/question/list', 'icon-date-magnify');
INSERT INTO `menu` VALUES ('49', '48', '添加', 'openAdd()', 'icon-date-add');
INSERT INTO `menu` VALUES ('50', '48', '编辑', 'openEdit()', 'icon-date-edit');
INSERT INTO `menu` VALUES ('51', '48', '删除', 'remove()', 'icon-date-delete');
INSERT INTO `menu` VALUES ('52', '0', '考试管理', '', 'icon-map');
INSERT INTO `menu` VALUES ('53', '52', '考试列表', '../admin/exam/list', 'icon-map-magnify');
INSERT INTO `menu` VALUES ('54', '53', '添加', 'openAdd()', 'icon-map-add');
INSERT INTO `menu` VALUES ('55', '53', '编辑', 'openEdit()', 'icon-map-edit');
INSERT INTO `menu` VALUES ('56', '53', '删除', 'remove()', 'icon-map-delete');
INSERT INTO `menu` VALUES ('57', '0', '试卷管理', '', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('58', '57', '试卷列表', '../admin/examPaper/list', 'icon-page-white-stack');
INSERT INTO `menu` VALUES ('60', '58', '编辑', 'openEdit()', 'icon-page-white-edit');
INSERT INTO `menu` VALUES ('61', '58', '删除', 'remove()', 'icon-page-white-delete');
INSERT INTO `menu` VALUES ('62', '0', '答题管理', '', 'icon-building-edit');
INSERT INTO `menu` VALUES ('63', '62', '答题列表', '../admin/examPaperAnswer/list', 'icon-building');
INSERT INTO `menu` VALUES ('64', '48', '导入试题', 'openImport()', 'icon-note-go');
INSERT INTO `menu` VALUES ('65', '0', '成绩统计', '', 'icon-text-letter-omega');
INSERT INTO `menu` VALUES ('66', '65', '统计图表', '../admin/stats/exam_stats', 'icon-chart-line');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL DEFAULT '1',
  `questionType` int(2) NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL,
  `score` int(3) NOT NULL,
  `attrA` varchar(256) NOT NULL,
  `attrB` varchar(256) NOT NULL,
  `attrC` varchar(256) DEFAULT NULL,
  `attrD` varchar(256) DEFAULT NULL,
  `answer` varchar(16) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1', '1', '下列哪些是手机型号？', '4', 'iphone', '荣耀', '红米', 'vivo', 'ABCD', '2020-04-22 22:03:44');
INSERT INTO `question` VALUES ('2', '1', '0', '下列是手机系统的是？', '2', 'ios', 'Windows', 'Mac', 'Linux', 'A', '2020-04-22 22:10:05');
INSERT INTO `question` VALUES ('5', '1', '2', 'LOL是一款游戏', '2', '正确', '错误', '', '', 'A', '2020-04-22 22:19:22');
INSERT INTO `question` VALUES ('6', '1', '0', '下列哪个是计算机之父？', '2', '冯诺依曼', '乔布斯', '雷军', '马化腾', 'A', '2020-05-01 21:26:31');
INSERT INTO `question` VALUES ('13', '1', '0', 'C是什么？', '2', '编程语言', '不知道', '一个人', '一种动物', 'A', '2020-05-04 13:05:18');
INSERT INTO `question` VALUES ('14', '1', '0', '下列哪个不是社交软件？', '2', 'QQ', '微信', '开心消消乐', '微博', 'C', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('15', '1', '0', '下列哪个不是学习软件？', '2', '开心消消乐', '学习通', 'Mooc', '知道', 'A', '2020-05-05 13:21:54');
INSERT INTO `question` VALUES ('16', '1', '0', '下面哪个是条件语句的关键词', '2', 'while', 'do', 'if', 'for', 'C', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('17', '1', '2', '写程序有手就行', '2', '正确', '错误', '', '', 'B', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('18', '1', '2', 'ipad是一种手机', '2', '正确', '错误', '', '', 'B', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('19', '1', '2', 'java是一种高级语言', '2', '正确', '错误', '', '', 'A', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('20', '1', '1', '下列哪些属于软件工程要学的', '4', '高数', '诗经', '概率论', '离散数学', 'ACD', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('21', '1', '1', '下列那些是LPL的S赛冠军', '4', 'SKT', 'G2', 'IG', 'FPX', 'CD', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('22', '1', '1', '下列那些是LPL的上单选手', '4', 'zoom', 'let me', 'the shy', 'uzi', 'ABC', '2020-05-04 13:21:54');
INSERT INTO `question` VALUES ('25', '5', '0', '下面哪个是个位数', '2', '10', '234', '5', '6789', 'C', '2020-05-04 16:35:57');
INSERT INTO `question` VALUES ('26', '5', '1', '下列那些是数学专业要学的', '4', '高数', '诗经', '离散数学', '老人与海', 'AC', '2020-05-04 16:38:15');
INSERT INTO `question` VALUES ('27', '5', '2', '学数学要学线性代数', '2', '正确', '错误', '', '', 'A', '2020-05-04 16:39:00');
INSERT INTO `question` VALUES ('28', '6', '1', '下列哪些是质量单位', '4', 'm', 'kg', 'km', 'g', 'BD', '2020-05-04 16:41:43');
INSERT INTO `question` VALUES ('29', '6', '0', '牛顿第一定律是谁想出来的', '2', '牛顿', '爱因斯坦', '唐以鑫', '段增超', 'A', '2020-05-04 16:43:14');
INSERT INTO `question` VALUES ('30', '6', '2', '牛顿第二定律不是牛顿想出来的', '2', '正确', '错误', '', '', 'B', '2020-05-04 16:45:01');
INSERT INTO `question` VALUES ('31', '7', '0', 'Good morning my neighbor的下一句是什么', '2', 'yes', 'hi', 'no', 'good evening', 'B', '2020-05-04 16:46:42');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `trueName` varchar(32) DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '1', '杜思成', '123', '杜思成', '17858111060', '2020-04-21 20:40:48');
INSERT INTO `student` VALUES ('13', '1', 'dsc', '123456dsc', '杜思成', '17858111060', '2020-04-27 12:40:09');
INSERT INTO `student` VALUES ('14', '5', 'dsc1', '123456dsc', '杜思成', '123', '2020-05-20 21:17:26');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '软件工程', '软件工程专业');
INSERT INTO `subject` VALUES ('5', '数学专业', '数学专业');
INSERT INTO `subject` VALUES ('6', '物理专业', '');
INSERT INTO `subject` VALUES ('7', '英语专业', '');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '', '1', '20', '东北师范大学');
