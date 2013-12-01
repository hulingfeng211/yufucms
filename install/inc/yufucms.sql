/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : yufucms_qy_data

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2013-07-22 12:56:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `yufu_access`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_access`;
CREATE TABLE `yufu_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_access
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_announce`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_announce`;
CREATE TABLE `yufu_announce` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `siteid` (`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_announce
-- ----------------------------
INSERT INTO `yufu_announce` VALUES ('10', '鱼福CMS企业网站系统发布啦', '<p>鱼福CMS企业网站系统发布啦</p>', '1374280380', '1374280380', '1', '1374315317');

-- ----------------------------
-- Table structure for `yufu_article`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_article`;
CREATE TABLE `yufu_article` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) default NULL,
  `title` varchar(80) default NULL,
  `thumb` text,
  `keywords` varchar(255) default NULL,
  `description` text,
  `url` text,
  `content` text,
  `listorder` int(11) default '0',
  `create_time` int(11) default NULL,
  `update_time` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_article
-- ----------------------------
INSERT INTO `yufu_article` VALUES ('21', '1', '热烈祝贺“绵阳耳鼻喉医院”成功实施《千业医院管理系统》', null, '', null, null, '<p style=\"text-indent:2em;\">经过绵阳合作伙伴与总公司王经理的充分配合与协调下，经过2周时间对“绵阳耳鼻喉医院”成功实施了《千业医院管理系统》，顺利进行了安装、调试、二次开发及培训工作。</p><p><br /></p><p style=\"text-indent:2em;\">绵阳耳鼻喉医院是一家重点专科医院，此次千业HIS系统的成功实施，标志着《千业医院管理系统》由原来致力于综合性医院信息化解决方案提供者向具备极具专业性医院系统使用的融合。</p><p><br /></p>', '0', '1374315574', null, '1', '7');
INSERT INTO `yufu_article` VALUES ('22', '45', '移动端进销存软件 发展缓慢的三大原因', null, '', null, null, '<p>过去几年，移动计算发生了翻天覆地的变化，旧的智能手机和笨重的笔记本电脑被簇新的IOS和Android移动设备替代。我们已经有了4G、四核手机处理器、跟笔记本电脑一样大的内存，以及分辨率极高的移动屏幕，似乎，以前只能在PC机上操作的进销存软件完全可以搬到这些新生事物上来，目前，我们看到的现状并非如此，这背后有哪些原因呢？</p><p><br /></p><p> </p><p><br /></p><p>用户群不匹配。</p><p><br /></p><p> &nbsp; &nbsp;IOS和Android的用户群通常比较年轻化和城市化，虽然进销存软件的使用者通常也是在40岁以下，但你必须清楚什么人真正需要进销存软件。他们一般都是生意非常繁忙的老板们，他们关注更多的是软件统计出来的数据结果。你可以想象一下，他们在那一块小屏幕上翻来翻去寻找那些密密麻麻的数字的情景是多么滑稽！这可远远赶不上PC机上的浏览效果。所以说移动硬盘上细小的文本和虚拟键盘对这个人群来说非常的不友好。相对来讲传统PC端上运行效果比较好的傻瓜进销存一类的简洁易用型管理软件更受用户青睐。</p><p><br /></p><p>使用习惯不匹配</p><p><br /></p><p> &nbsp; &nbsp;进销存软件的录入者往往是驻店的店员，用PC机录入数据简单方便，再加上软件本身可以接入外部硬件设备，销售货物时，扫描枪一扫，数据自动填充入PC机上，即刻打印出机制小条给顾客，这些操作一个智能手机很难替代。至于企业管理者使用智能手机无非是身份与地位的象征，至于里面很多很细的操作问题，他既无兴趣也无时间去深入学习。这样的一款高性能的移动设备对于他们的功能仅限于接打电话收发短信而已。</p><p><br /></p><p>硬件条件</p><p><br /></p><p> &nbsp; &nbsp;即使是最新最酷的智能手机，在屏幕尺寸和内存等硬件条件上来说也无法与传统PC相比。今天的智能手机说实话依然不适合展示功能丰富的商业软件界面：太多的菜单、选项和键盘输入。你可以想象一个销售统计图表还要往下翻好几次才能看完，一组统计图被分成好几页，还如何方便的对比？如果你的手指比较肥大，在当今这些触摸屏手机上滑来滑去，也不能准确选定你想找的那一小行字，本身就是一件非常痛苦的事情。WIN8系统的推出也削弱了移动端的优势，傻瓜进销存2.596以上版本支持WIN8系统对移动端进销存软件冲击也非常巨大。</p><p><br /></p><p> &nbsp; &nbsp;以上这些原因都导致了移动端进销存软件发展较为缓慢，类似于傻瓜进销存一类的简洁易用型进销存软件从根本上解决企业管理难题，切实提高企业管理效率，更受中小企业用户的青睐。</p><p><br /></p>', '0', '1374317346', null, '1', '4');

-- ----------------------------
-- Table structure for `yufu_badword`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_badword`;
CREATE TABLE `yufu_badword` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `badword` char(20) character set utf8 NOT NULL,
  `level` tinyint(5) NOT NULL default '1',
  `replaceword` char(20) character set utf8 NOT NULL,
  `create_time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `badword` (`badword`),
  KEY `usetimes` (`replaceword`)
) ENGINE=MyISAM AUTO_INCREMENT=2872 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of yufu_badword
-- ----------------------------
INSERT INTO `yufu_badword` VALUES ('1', '法轮功', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('2', '李洪志', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('3', '大纪元', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('4', '新唐人', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('5', '肉棍', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('6', '淫靡', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('7', '淫水', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('8', '六四事件', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('9', '迷药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('10', '迷魂药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('11', '窃听器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('12', '六合彩', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('13', '买卖枪支', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('14', '退党', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('15', '三唑仑', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('16', '麻醉药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('17', '麻醉乙醚', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('18', '帝国之梦', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('19', '毛一鲜', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('20', '黎阳评', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('21', '色情服务', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('22', '出售枪支', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('23', '摇头丸', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('24', '天葬', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('25', '鬼村', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('26', '军长发威', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('27', 'PK黑社会', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('28', '恶搞晚会', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('29', '枪决女犯', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('30', '投毒杀人', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('31', '强硬发言', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('32', '出售假币', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('33', '监听王', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('34', '昏药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('35', '侦探设备', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('36', '麻醉钢枪', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('37', '反华', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('38', '官商勾结', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('39', '升达', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('40', '手机复制', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('41', '戴海静', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('42', '自杀指南', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('43', '自杀手册', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('44', '张小平', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('45', '安定片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('46', '蒙汗', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('47', '古方迷香', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('48', '失意药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('49', '迷歼药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('50', '透视眼镜', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('51', '远程偷拍', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('52', '自制手枪', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('53', '子女任职名单', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('54', '激情小电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('55', '黄色小电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('56', '色情小电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('57', '天鹅之旅', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('58', '盘古乐队', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('59', '高校暴乱', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('60', '群体事件', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('61', '大学骚乱', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('62', '高校骚乱', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('63', '催情药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('64', '拍肩神药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('65', '春药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('66', '窃听器材', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('67', '身份证生成', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('68', '枪决现场', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('69', '出售手枪', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('70', '麻醉枪', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('71', '办理证件', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('72', '办理文凭', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('73', '疆独', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('74', '藏独', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('75', '高干子弟', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('76', '高干子女', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('77', '枪支弹药', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('78', '血腥图片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('79', '反政府', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('80', '禁书', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('81', '无界', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('82', '特码', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('83', '反共', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('84', '成人片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('85', '成人电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('86', '换妻', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('87', '三级片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('88', '本拉登', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('89', '地下先烈', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('90', '领导财产公示', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('91', 'GPS预警器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('92', '毛主席复活', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('93', '防拍器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('94', '电子狗', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('95', '曝光王', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('96', '隐形喷剂', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('97', '催情水', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('98', '变声电话', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('99', '变声器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('100', '代开发票', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('101', '二奶大赛', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('102', '全国二奶', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('103', '死亡笔记', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('104', '死亡日志', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('105', '色情电视', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('106', '宋平顺', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('107', '四种当', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('108', '黄色图片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('109', '成人论坛', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('110', '性爱电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('111', '黄色电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('112', '成人图片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('113', '色情图片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('114', '成人网站', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('115', '成人小说', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('116', '激情视频', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('117', '激情图片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('118', '激情电影', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('119', '色情网站', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('120', '十八禁18禁', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('121', '淫荡', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('122', '成人贴图', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('123', '毛片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('124', '美女视频', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('125', '脱衣舞', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('126', '江姐问', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('127', '董存瑞问', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('128', '吴琼花问', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('129', '拉登熟知中国', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('130', '激情自拍', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('131', '淫书', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('132', '激情美女', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('133', '监听器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('134', '淫奸', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('135', '淫乱', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('136', '成人激情', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('137', '同居社区', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('138', '淫虫', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('139', '右派', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('140', '赌博专用', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('141', '透视器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('142', '核武器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('143', '透视照片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('144', '拦截器', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('145', '冰毒', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('146', 'K粉', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('147', '麻古', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('148', '万能钥匙', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('149', '赌博粉', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('150', '地磅仪', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('151', '无网界', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('152', '性网', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('153', '军火', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('154', '广安事件', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('155', '炒股国歌', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('156', '素女', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('157', '裸体', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('158', '乱伦', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('159', '嫖妓', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('160', '嫖鸡', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('161', '小穴', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('162', '淫魔', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('163', '做鸡', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('164', '口交', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('165', '粗口歌', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('166', 'a片', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('167', '性虐待', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('168', '女优', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('169', '包娃衣', '2', '', '1369460171');
INSERT INTO `yufu_badword` VALUES ('170', '耽美', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('171', '金瓶梅18N', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('172', '丝袜写真', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('173', '维多利亚包', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('174', '花花公子', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('175', '大禁', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('176', '美腿写真', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('177', 'H漫画', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('178', '隐私图片', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('179', 'H电影', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('180', 'H动漫', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('181', '龙虎豹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('182', '啄木鸟公司', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('183', '巴拉斯', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('184', '玉蒲团', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('185', '无码', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('186', 'PLAYBOY', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('187', '成人杂志', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('188', 'ANDREWBLAKE', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('189', '少儿不宜', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('190', '藏春阁', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('191', 'PRIVATE', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('192', '痴汉是犯罪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('193', '美女野球拳', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('194', '裸女对对碰', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('195', '偷窥有罪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('196', '伪装美女', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('197', '虎胆雄心', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('198', '买春堂', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('199', '护士24点', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('200', '成人配色', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('201', '秘密潜入', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('202', '欲望格斗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('203', '七宗罪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('204', '尾行', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('205', '冠军足球经理', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('206', '命令与征服', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('207', '性感扑克', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('208', '六月联盟', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('209', 'The3FeelOnline', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('210', '采花堂', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('211', '爱姐妹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('212', '露拉3D', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('213', '吸血莱恩', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('214', 'hcartoon', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('215', '梦幻麻将馆', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('216', '足球经理2005', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('217', '性福人生', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('218', '禁忌试玩', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('219', '沉默杀手', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('220', '惊悚空间', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('221', '美少女麻雀', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('222', '杨思敏', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('223', '人工少女', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('224', '电车之狼', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('225', 'Quake', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('226', '监禁', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('227', '臭作', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('228', '欲望之血', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('229', '性感沙滩', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('230', '遗作', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('231', '色狼网', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('232', 'ILLUSION', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('233', '红河谷论坛', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('234', 'AV麻将', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('235', '恐惧杀手', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('236', '波动少女', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('237', 'MC军团', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('238', '恐怖牢笼', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('239', '反雷达测速', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('240', '英语枪手', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('241', '假钞', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('242', '电话拦截', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('243', '探测狗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('244', '手机跟踪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('245', '监听宝', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('246', '针孔摄像', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('247', '迷魂香', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('248', '短信群发器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('249', '邮件群发器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('250', '信息群发器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('251', '反中游行', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('252', '中国断交', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('253', '大规模游行', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('254', '中国政治力量', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('255', '政府禁令', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('256', '听手机', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('257', '区长丑态', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('258', '考察视频曝光', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('259', '迷幻药', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('260', '手机监听', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('261', '手机窃听', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('262', '窃听手机', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('263', '强力迷魂', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('264', '强力迷药', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('265', '风流机械师', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('266', '证监会忠告', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('267', '别梦如灰', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('268', '别说任何话语', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('269', '梦里何时有雨', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('270', '如何才能偶遇', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('271', '灰色在阴霾里', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('272', '取消农业户口', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('273', '司马璐回忆录', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('274', '青年下战书', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('275', '林松岭', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('276', '鹿庆红', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('277', '股市欢迎你', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('278', '恶心的八大', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('279', '臭的蓝藻', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('280', '苏丹红炸鸡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('281', '没有不隆重', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('282', '一劝就躁', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('283', '腐败新民谣', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('284', '车仑工力', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('285', '电子磅遥控', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('286', '婚叫建', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('287', '合叫套', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('288', '类灭亡时', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('289', '英联邦解散', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('290', '奶粉s件', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('291', '三鹿委屈', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('292', '吉首爆发特', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('293', '奶粉事件', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('294', '扫黄队吃喝', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('295', '警察是革命', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('296', '三漉', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('297', '股市翠花', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('298', '婚恋如股市', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('299', '股市八荣八耻', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('300', '物价和主席', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('301', '杨佳性命', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('302', '奶业内幕', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('303', '识了敌敌', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('304', '识了苏丹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('305', '三鹿欢迎你', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('306', '王十的爷', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('307', '3lu奶', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('308', '任推给三鹿', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('309', '到股灾来', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('310', '庆林调政协', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('311', '锦涛忙着', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('312', '考前不收费', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('313', '手机卡复制', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('314', '司法考试答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('315', '石油配乐', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('316', '婴儿宴', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('317', '泽东在窗外', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('318', '小平多正经', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('319', '警察叹狗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('320', '邪教问题', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('321', '512288就是', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('322', '今年地震5月12', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('323', '星不能入党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('324', '考前答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('325', '瑞是毛主席', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('326', '大跌的真正', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('327', '德怀怎么还活', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('328', 'pe6拦截', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('329', '脑子脱线', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('330', '跟踪拦截器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('331', '拦截跟听', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('332', '病人的艳情', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('333', '毛主席的儿子', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('334', '撞其火車', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('335', '搶其火炬', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('336', '吃女婴', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('337', '婴儿汤', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('338', '各省黑社会', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('339', '张执新张执', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('340', '普宁杀人', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('341', '杀人卖尸', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('342', '医疗公平', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('343', '不光彩排名', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('344', '共产党说反腐', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('345', '改革提前送终', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('346', '告密的受信', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('347', '官被人民币', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('348', '局长裤链没', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('349', '考中答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('350', '胸主席', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('351', '代办回国', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('352', '奥运一路造假', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('353', '9个成语解释', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('354', '九个成语解释', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('355', '使猫吃辣椒', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('356', '想揍你小川', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('357', '小川管股市', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('358', '我能暴强', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('359', '党前干劲', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('360', '地被删贴', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('361', '论坛删帖', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('362', '歪批闭幕式', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('363', '甲奥运会结', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('364', '28铜100', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('365', '天把4拿', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('366', '克隆银行卡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('367', '复制银行卡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('368', '银行卡克隆', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('369', '银行卡复制', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('370', '雷尔教', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('371', '斯蒂梅德', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('372', '绿林大学毕业', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('373', '忽悠国家', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('374', '忽悠政府', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('375', '杀手培训', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('376', '腐败培训', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('377', '江主席出国', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('378', '高官在咆哮', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('379', '股民在哀号', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('380', '做巡航导弹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('381', '弹体气动', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('382', '包含舵机', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('383', '破网软件', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('384', '火凤凰fire', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('385', '谢亚龙翔子', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('386', '刘翔龙王', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('387', '李宁跑出画卷', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('388', '刻章', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('389', '开幕式搞笑', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('390', '内贾德哥们', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('391', '是油和米', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('392', '党员保鲜', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('393', '肚圆当代党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('394', '阿扁推翻', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('395', '杨子荣问土匪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('396', '数目512128', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('397', '杨佳传', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('398', '反对共产党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('399', '不怕捶坚', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('400', '魔王的选择', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('401', '官场段子', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('402', '官场日志', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('403', '公务员素描', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('404', '当代八乱', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('405', '任免在交易', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('406', '组织部长谁关', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('407', '官位难保批评', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('408', '硝酸甘油制法', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('409', '硝酸溶液氧化', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('410', '布什问锦涛', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('411', '部长华佗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('412', '主席李世民', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('413', '股股下流', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('414', '烂股盯半', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('415', '干部十大特征', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('416', '小姐把辈份', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('417', '民主评论整死', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('418', '下岗妹别流泪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('419', '反对执政党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('420', '邪党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('421', '售各种发票', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('422', '原子弹制作', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('423', '制作原子弹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('424', '妓女的口号', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('425', '超级代理服务器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('426', '仿真枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('427', '手机窃聽', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('428', '社会六大', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('429', '地震的时间', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('430', '这年头续集', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('431', '级就官位难', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('432', '股灾风光', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('433', '千点狂泻', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('434', '刘翔退赛一切', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('435', '四大会来事', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('436', '开会三要点', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('437', '逗逗小胡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('438', '涛哥靠害', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('439', '三大扯蛋', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('440', '四大怪事', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('441', '五大谎言', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('442', '六大成绩', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('443', '六四前后', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('444', '人是官倒', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('445', '十五等人', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('446', '出售手槍', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('447', '出售猎槍', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('448', '手槍出售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('449', '猎槍出售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('450', '温家宝唧唧', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('451', '水扁素闻', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('452', '套牢莽莽', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('453', '顿时逃逃', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('454', '福娃蟹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('455', '避运外出', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('456', '恭外运恭', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('457', '恶搞奥运', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('458', '奥运恶搞', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('459', '代办各种文凭', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('460', 'qie听器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('461', '政客我一', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('462', '公检法决不', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('463', '涛哥靠阴', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('464', '基金黑幕', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('465', '券商黑幕', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('466', '发行黑幕', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('467', '坐庄黑幕', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('468', '监管黑幕', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('469', '手機窃听', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('470', '布什逗逗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('471', '船桨涛', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('472', '名是油和米', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('473', '不育不运', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('474', '胡jin涛', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('475', '迷幻液', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('476', '小五当警察', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('477', '中国高干子弟', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('478', '高干子弟一览', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('479', '千名中国城管', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('480', '新人民公仆', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('481', '红旗代步还', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('482', '吾乃人民公仆', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('483', '证监会会歌', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('484', '队伍似豺狼', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('485', '手机智能监听', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('486', '起来还没有开户', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('487', '奏中狂搓麻将', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('488', '起立高呼胡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('489', '国情那帮狗日', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('490', '台湾想要单干', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('491', '东哥不愿', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('492', '临终前把小平', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('493', '致胡总书记', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('494', '千股醉人', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('495', '疯牛市', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('496', '散民猴捞', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('497', '股出圈钱百亿', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('498', '与道琼试比', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('499', '阴间来电', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('500', '地主都入党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('501', '炸弹制作', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('502', '制作炸弹', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('503', '公交车爆炸', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('504', '巴士爆炸', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('505', '政客我一分钱', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('506', '十大经典谎言', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('507', '夫君中石油', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('508', '五任老公是公安', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('509', '馬雅預言', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('510', '藏僧遥视', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('511', '玛雅预言', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('512', '万亿财富灰飞', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('513', '石油如此多娇', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('514', '十亿人民九亿骗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('515', '炸铁路抢银行', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('516', '台风狂扫闽琼', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('517', '北风带来疠气', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('518', '连州谁之过', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('519', 'k粉夜总会', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('520', '魅力似毛泽东', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('521', '金钱同三个代表', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('522', '像锦涛一样胡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('523', '2012年世界末日', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('524', '曾庆一样红', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('525', '罗一样干', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('526', '中山领导流浪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('527', '泽东领导穷光', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('528', '泽东导演的内战', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('529', '过来整蒯大富', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('530', '回首文革', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('531', '昔日六四', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('532', '六四名人', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('533', '可怕的预言', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('534', '作业出卖国土', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('535', '蟾蜍地震', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('536', '胡谁领导', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('537', '谁胡是中国', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('538', '赖斯科费', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('539', '布什头痛的胡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('540', '无辜女子被警察', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('541', '塞进jingche', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('542', '福娃恶搞', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('543', '恶搞福娃', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('544', '昆明爆炸', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('545', '西路云大医院', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('546', '昌源路与人民', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('547', '迷晕药', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('548', '拍肩型', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('549', '出售汽枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('550', '汽枪出售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('551', '销售汽枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('552', '汽枪销售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('553', '转让汽枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('554', '汽枪转让', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('555', '收购汽枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('556', '购买汽枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('557', '布什家里救拉登', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('558', '无限制浏览器', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('559', '慧莲功', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('560', '三三九乘元功', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('561', '自然特异功', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('562', '藏独人祸', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('563', '地震地灾', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('564', '济世灵文', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('565', '拐骗把钱赚', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('566', '受贿经常干', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('567', '官场顺口溜', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('568', '官场之最', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('569', '工厂变歌厅', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('570', '穷人富人论', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('571', '领导用过的叫文物', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('572', '级加码马到成', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('573', '最难捉摸的官话', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('574', '觉晓麻将声声', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('575', '收礼不受贿', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('576', '吸烟基本靠送', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('577', '喝酒基本靠贡', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('578', '小车一响乡长心慌', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('579', '酒杯一端政策放宽', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('580', '不拍不吹狗屁一堆', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('581', '资金管理是正道', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('582', '江恩的有关秘密', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('583', '上海杀警', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('584', '杀警案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('585', '上海袭警', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('586', '公交爆炸', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('587', '厅长徐其耀', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('588', '小姐自强歌', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('589', '历史上逢8', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('590', '逢8必灾', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('591', '一等jc刑侦', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('592', '三等jc特警', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('593', '骨头酥意志颓', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('594', '4万张麻将桌', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('595', '16万人在热血', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('596', '死难人数世界', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('597', '调查中国证监', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('598', '官媒曝震', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('599', '中华新民谣', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('600', '高级干部学泰森', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('601', '对群众谎言假语', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('602', '股市古诗词', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('603', '套牢不觉晓', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('604', '股市百丈冰', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('605', '股市打油诗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('606', '勐马镇', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('607', '上南村', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('608', '炸公交车', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('609', '炸超市', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('610', '邓爷爷的预言', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('611', '邓was', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('612', 'kie粉', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('613', '连发猎枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('614', '双管猎枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('615', '购买猎枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('616', '猎枪销售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('617', '销售猎枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('618', '手枪销售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('619', '销售手枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('620', '猎枪出售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('621', '出售猎枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('622', '手枪出售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('623', '社会民谣', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('624', '桑拿歌与酒', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('625', '裕后养狗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('626', '校园十八怪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('627', '克叫学文件', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('628', '革命小酒', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('629', '清官谣', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('630', '四小闹中华', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('631', '法x功', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('632', '做官难难做官', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('633', '亮才好搞公', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('634', '四森干部', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('635', '小姐要入党', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('636', '吃掉一千亿', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('637', '千万人齐下岗', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('638', '结果油价涨了', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('639', '结果房价涨了', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('640', '掌权的没天良', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('641', '工商税务两条狼', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('642', '龙醒了摇摇头', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('643', '题板是宋庆龄', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('644', '而出宋祖英', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('645', '党在搞社会', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('646', '崩盘的尸检', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('647', '最惨烈的崩盘', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('648', '股市梦魇', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('649', '忠源实验', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('650', '出自姬姓', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('651', '任司空', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('652', '聃被封', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('653', 'jiangzeming', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('654', '南政英', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('655', '丑妓', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('656', '天价帐篷', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('657', '气枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('658', '汽抢', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('659', 'qiqiang', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('660', 'qi枪', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('661', '汽qiang', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('662', '气qiang', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('663', 'weng安', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('664', '瓮an', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('665', '文凭制作', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('666', '发票出售', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('667', '代办国内文凭', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('668', '代办国内外文凭', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('669', '代办国外文凭', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('670', '赌博机', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('671', '卖血', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('672', '出售肾', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('673', '出售器官', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('674', '眼角膜', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('675', '求肾', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('676', '换肾', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('677', '有偿肾', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('678', '预测答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('679', '考前预测', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('680', '押题', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('681', '代写论文', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('682', '司考答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('683', '带考', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('684', '待考', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('685', '提供答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('686', '包过', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('687', '考后付款', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('688', '考题', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('689', '顺利过', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('690', '级答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('691', '传送答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('692', '替考', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('693', '助考', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('694', '保过', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('695', '六级', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('696', '无线耳机', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('697', '语音传送', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('698', '考试作弊', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('699', '考前密卷', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('700', '四六级答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('701', '漏题', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('702', '短信答案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('703', '轻松过', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('704', '四大舰队', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('705', '80部队', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('706', '防区和任务', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('707', '编成与基地', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('708', '空军部署', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('709', '陆军部署', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('710', '海军部署', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('711', '七个军区', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('712', '七大军区', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('713', '7个军区', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('714', '7大军区', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('715', '不办人事', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('716', '圣战组织', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('717', '劣等民族', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('718', '劣等人', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('719', '北大校园BBS', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('720', '回汉冲突', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('721', '民族冲突', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('722', '鞭满', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('723', '关塔摩', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('724', '民族问题', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('725', '伊斯兰', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('726', '惨案', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('727', '红客联盟', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('728', '靖国', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('729', '招收', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('730', '雇佣', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('731', '围攻', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('732', '参拜', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('733', '中特', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('734', '一肖', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('735', '报码', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('736', '香港彩', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('737', '彩宝', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('738', 'D轮盘', '2', '', '1369460172');
INSERT INTO `yufu_badword` VALUES ('739', 'liuhecai', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('740', '一码', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('741', '盗号', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('742', '盗取密码', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('743', '盗取qq', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('744', '买真枪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('745', '嗑药', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('746', '帮招人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('747', '社会混', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('748', '拜大哥', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('749', '电警棒', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('750', '帮人怀孕', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('751', '打手', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('752', '征兵计划', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('753', '切腹', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('754', '电鸡', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('755', '仿真手枪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('756', '做炸弹', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('757', '买枪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('758', '氯胺酮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('759', 'ONS', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('760', '走私车', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('761', '代孕', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('762', '史久武', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('763', '刘亚洲', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('764', '李登辉', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('765', '江猪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('766', '耀邦', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('767', '马英九', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('768', '胡锦', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('769', '邓矮子', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('770', 'xiaoping', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('771', '邓狗', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('772', '曾培炎', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('773', '俞正声', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('774', '张德江', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('775', '张立昌', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('776', '吴仪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('777', '刘淇', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('778', '回良玉', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('779', '王兆国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('780', '王乐泉', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('781', '徐才厚', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('782', '王刚', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('783', '贺国强', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('784', '周永康', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('785', '刘云山', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('786', '罗干', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('787', '曾庆红', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('788', '贾庆林', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('789', '吴邦国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('790', '活体取肾', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('791', '苏家屯', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('792', '九抨', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('793', '车仑大法', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('794', '李红痔', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('795', 'XX功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('796', '法仑功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('797', 'FL大法', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('798', 'zifen', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('799', '李大轮子', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('800', 'jiuping', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('801', '影子政府', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('802', '张宏堡', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('803', '张宏宝', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('804', '中功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('805', '李晓英', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('806', '董元辰', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('807', '大妓院', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('808', '法0功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('809', '法O功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('810', '9坪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('811', '法伦', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('812', '法L', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('813', 'fa轮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('814', '9评', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('815', '九凭', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('816', 'LHZ', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('817', '自焚', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('818', '藏字石', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('819', '李洪X', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('820', '9ping', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('821', '九ping', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('822', '自fen', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('823', '轮子功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('824', 'FL功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('825', 'flg', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('826', '法某功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('827', '东方闪电', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('828', '8集团军', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('829', '吾爾開希', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('830', '64时期', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('831', 'TAM', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('832', '紫阳', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('833', '北京风波', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('834', '政治风波', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('835', 'xuechao', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('836', '八九六四', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('837', '8964', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('838', 'liusi', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('839', '89风波', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('840', '4事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('841', '6四', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('842', '六4', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('843', '二十四事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('844', '历史的伤口', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('845', '年的事', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('846', '989年', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('847', '一九八九年', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('848', '年事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('849', '学生领袖', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('850', '学潮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('851', '杀害学生', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('852', 'tiananmen', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('853', '流血事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('854', '民主女神', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('855', '89之', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('856', '89事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('857', '7年前', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('858', '血染的风采', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('859', '广场事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('860', '屠杀学生', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('861', '暴行', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('862', '何新', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('863', '天安门事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('864', '六四信息', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('865', '官匪一家', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('866', '警匪一家', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('867', '暴力执法', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('868', '示wei', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('869', '袁伟民', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('870', '9.事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('871', '8.8事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('872', '瑞安事件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('873', '武装镇压', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('874', '武力镇压', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('875', '暴力袭警', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('876', '集体抗议', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('877', '警民冲突', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('878', '群众冲击', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('879', '复员', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('880', '造反', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('881', '信访', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('882', '军转', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('883', '聚集', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('884', '买断', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('885', '罢市', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('886', '维权', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('887', '上访', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('888', '示威', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('889', '陪聊', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('890', 'h图', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('891', 'h漫', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('892', '开苞', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('893', '找男', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('894', '找女', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('895', '口淫', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('896', '女士服务', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('897', '卖身', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('898', '元一夜', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('899', '男奴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('900', '女奴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('901', '电话交友', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('902', '激情交友', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('903', '激情电话', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('904', '看JJ', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('905', '幼交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('906', '性伙伴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('907', '有偿服务', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('908', '做台', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('909', '厕奴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('910', '骚女', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('911', '嫩逼', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('912', '一夜激情', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('913', '母子乱伦', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('914', '泡友', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('915', '富姐', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('916', '富婆', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('917', '足交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('918', '群交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('919', '阴户', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('920', '乳交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('921', '屁眼', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('922', '性服务', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('923', '性伴侣', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('924', '反社会主义', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('925', '现在的公安', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('926', '第二首都', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('927', '中国复兴党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('928', '共贼', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('929', '联盟党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('930', '同盟党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('931', '言论自由', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('932', '专政', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('933', '一党专政', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('934', '一党私利', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('935', '软弱外交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('936', '政府无能', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('937', '一党执政', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('938', '讨厌中国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('939', '张志新', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('940', '现在的党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('941', '外蒙回归', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('942', '香港独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('943', '上海独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('944', '北京独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('945', '民主还专政', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('946', '人权保护', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('947', '蒋公', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('948', '中正纪念歌', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('949', '中国人权', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('950', '台独', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('951', '台du', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('952', '国统纲领', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('953', '国统会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('954', '网络警察', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('955', '纪念文革', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('956', '共独', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('957', '陆独', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('958', '现在的社会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('959', '上海帮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('960', '现在的政府', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('961', '反对党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('962', '现在的共产党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('963', '铁血师', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('964', '现在的警察', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('965', '共产觉', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('966', '灭共', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('967', '社会主义灭亡', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('968', '不爱党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('969', '共X党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('970', '独夫民贼', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('971', '伪大', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('972', '伪政府', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('973', '第三次世界大战', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('974', '自由亚洲', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('975', '公产党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('976', '夺权', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('977', '网特', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('978', 'GONG党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('979', 'CCP', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('980', '中共洗脑', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('981', '反G', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('982', '死刑现场', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('983', '雍战胜', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('984', '校园改造工程', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('985', '记签', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('986', '王政', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('987', '华闻', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('988', '张文中', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('989', '饲养基地', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('990', '涿州', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('991', '集会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('992', '中组部前部长直言', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('993', '四川广安', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('994', '段桂清', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('995', '寂寞少妇', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('996', '有偿捐献', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('997', '6合', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('998', '六HE彩', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('999', '有码', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1000', '包养', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1001', '海洛因', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1002', '犬交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1003', '兽交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1004', '根浴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1005', '买肾', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1006', '卖肾', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1007', '肾源', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1008', '援交', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1009', '性息', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1010', '裸聊', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1011', '夫妻交换', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1012', '中石油国家电网倒数', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1013', '国办发', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1014', '中办发', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1015', '菊暴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1016', '菊爆', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1017', '暴菊', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1018', '爆菊', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1019', '小口径', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1020', '我虽死去', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1021', '我们自杀吧', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1022', '胡锦涛', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1023', '吃人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1024', 'GCD', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1025', '西藏作家组织', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1026', '自由西藏', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1027', '自由门', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1028', '自烧', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1029', '转法论', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1030', '转法轮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1031', '属灵教', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1032', '主神教', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1033', '重阳兵变', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1034', '中央黑幕', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1035', '中南海权力斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1036', '中南海黑幕', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1037', '中南海恩仇录', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1038', '中南海斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1039', '中南海的权力游戏', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1040', '中华养生益智气', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1041', '中华养生益智功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1042', '中华昆仑女神功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1043', '中国猪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1044', '中国支配下的朝鲜经济', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1045', '中国政府封锁消息', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1046', '中国正义党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1047', '中国舆论监督网周洪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1048', '中国网络审查', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1049', '中国贪官在海外', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1050', '中国实行血腥教育', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1051', '中国人民党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1052', '中国没有自由', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1053', '中国海外腐败兵团', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1054', '中国过渡政府', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1055', '中国官场情杀案', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1056', '中国共和党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1057', '中国高层权力斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1058', '中共政治游戏', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1059', '中共邪毒素', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1060', '中共邪党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1061', '中共退党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1062', '中共三大势力谁来执政', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1063', '中共任用', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1064', '中共权力斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1065', '中共恐惧', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1066', '中共近期权力斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1067', '中共解体', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1068', '中共黑帮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1069', '中共腐败', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1070', '中共封网', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1071', '中共封锁', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1072', '中共独裁', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1073', '中共第五代', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1074', '中共第六代', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1075', '中共帝国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1076', '中共的罪恶', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1077', '中共的血旗', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1078', '中共的腐败与残暴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1079', '中共党文化', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1080', '中共裁', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1081', '中共保命', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1082', '中共帮凶', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1083', '支那猪', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1084', '支持台湾独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1085', '政治人祸的源头', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1086', '政治局委员增加一倍', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1087', '政治局十七', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1088', '真善忍', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1089', '运动正名', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1090', '援藏网', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1091', '元极功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1092', '渊盖苏文', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1093', '宇宙主佛', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1094', '宇宙毁灭', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1095', '宇宙大法', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1096', '优化官员', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1097', '一中一台', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1098', '一通健康法', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1099', '一通功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1100', '一党独裁', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1101', '夜半加税', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1102', '业力轮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1103', '业力回报', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1104', '耶稣基督血水圣灵全备福音布道团', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1105', '燕玲论坛', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1106', '延安日记', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1107', '循环轮回论', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1108', '血腥清场', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1109', '血色京畿', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1110', '血色京机', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1111', '血溅人民天堂', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1112', '性奴集中营', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1113', '兴华论谈', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1114', '新中华战记', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1115', '新闻总署态度蛮横', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1116', '新搪人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1117', '新疆独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1118', '新疆暴乱', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1119', '小活佛', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1120', '消业之说', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1121', '向巴平措', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1122', '香功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1123', '西藏人民大起义运动', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1124', '西藏独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1125', '无人性的政权', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1126', '无官正', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1127', '无耻语录', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1128', '无帮国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1129', '乌云其木格', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1130', '瘟家宝', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1131', '温休曾退', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1132', '温下台', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1133', '温加饱', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1134', '魏京生', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1135', '未来的自由中国在民间', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1136', '伪基百科', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1137', '为党不为国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1138', '网络封锁', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1139', '网管办', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1140', '亡共者胡', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1141', '亡党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1142', '万法归一功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1143', '退h集会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1144', '推翻专制独裁的共产党', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1145', '突破网封索的软件', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1146', '统治术', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1147', '统一教', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1148', '挺胡', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1149', '天音功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1150', '天要亡', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1151', '天要灭', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1152', '天灭中共', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1153', '特务机构', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1154', '特别党费', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1155', '太王四神记', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1156', '台湾有权独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1157', '台湾应该独立', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1158', '台湾国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1159', '四二六社论', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1160', '四川朱昱', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1161', '四川大地震异象揭密', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1162', '税务总局致歉', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1163', '谁为腐败晚餐买单', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1164', '谁是新中国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1165', '谁是胡的接班人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1166', '双桨飞机', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1167', '树亲民形象不如推动政改', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1168', '世界之门', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1169', '世界以利亚福音宣教会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1170', '世界十大独裁者', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1171', '世界基督教统一神灵协会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1172', '实际神', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1173', '十七位老部长', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1174', '十七大人事安排', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1175', '十七大权力争霸战', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1176', '十八大接班人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1177', '师涛', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1178', '剩火', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1179', '圣灵重建教会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1180', '圣火护卫', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1181', '圣殿教', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1182', '生命树的分叉', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1183', '沈昌人体科技', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1184', '沈昌功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1185', '神州忏悔录', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1186', '神的教会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1187', '涉台政局', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1188', '沙皇李长春', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1189', '三脱', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1190', '三退', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1191', '三股势力', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1192', '三二二攻台作战计划', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1193', '三班仆人派', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1194', '赛克网', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1195', '萨斯病', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1196', '日月气功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1197', '人宇特能功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1198', '人民币恶搞', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1199', '人类罪恶论', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1200', '群体灭绝', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1201', '全范围教会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1202', '清华帮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1203', '清海无上师', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1204', '清海师父', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1205', '清官团', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1206', '清场内幕', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1207', '青海无上师', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1208', '沁园春血', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1209', '钦点接班人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1210', '侵犯国外专利', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1211', '亲共媒体', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1212', '亲共分子', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1213', '强烈抗议中共当局', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1214', '千禧弘法', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1215', '器官贩卖', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1216', '平反六四', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1217', '跑官要官', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1218', '派系斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1219', '女神教', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1220', '鸟巢最少死0', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1221', '内争人权', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1222', '牟新生', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1223', '漠视生命自私到了极点的中共政权', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1224', '末世论', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1225', '末世劫难', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1226', '魔难论', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1227', '明镜出版社', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1228', '明慧网', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1229', '明hui', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1230', '民主不能等待', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1231', '民运', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1232', '民殇', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1233', '迷失北京', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1234', '蒙古回归', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1235', '门徒会', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1236', '毛主席的嫡孙', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1237', '毛贼', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1238', '毛泽东侄子', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1239', '毛泽东复活', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1240', '毛时代大饥荒揭秘', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1241', '买官卖官', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1242', '轮子小报', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1243', '旅游新报', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1244', '龙虎斗', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1245', '六四资料馆', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1246', '六四受难者家属证辞', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1247', '六四内部日记', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1248', '六代接班人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1249', '留四进三', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1250', '流亡藏人', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1251', '领导忽悠百姓叫号召', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1252', '临震预报', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1253', '练功群众', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1254', '李伟信的笔供', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1255', '拉线飞机', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1256', '拉萨僧人接连抗议', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1257', '拉票贿选', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1258', '拉帮游说', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1259', '恐共', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1260', '空中民主墙', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1261', '抗议磁悬浮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1262', '开天目', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1263', '卡辛纳大道和三福大道交界处', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1264', '救度众生说', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1265', '京夫子', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1266', '津人治津', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1267', '解体中共', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1268', '解体的命运', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1269', '讲法传功', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1270', '江贼民', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1271', '江宰民', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1272', '江系人马', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1273', '江戏子', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1274', '江梳头', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1275', '江氏政治委员', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1276', '江氏政治局', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1277', '江氏家族', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1278', '江氏集团', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1279', '江三条腿', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1280', '江人马', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1281', '江泉集团', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1282', '江派人马', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1283', '江派和胡派', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1284', '江绵恒', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1285', '江驴', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1286', '江家帮', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1287', '江祸心', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1288', '江黑心', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1289', '江核心', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1290', '江蛤蟆', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1291', '江独裁', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1292', '江毒', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1293', '江嫡系', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1294', '江丑闻', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1295', '江z民', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1296', '监狱里的斗争', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1297', '监狱管理局', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1298', '纪念达赖喇嘛流亡49周年', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1299', '疾病业债说', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1300', '激流中国', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1301', '基督灵恩布道团', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1302', '积克馆', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1303', '活摘器官', '2', '', '1369460173');
INSERT INTO `yufu_badword` VALUES ('1304', '回忆六四', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1305', '回民猪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1306', '回民暴动', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1307', '黄菊遗孀', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1308', '话在肉身显现', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1309', '华藏功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1310', '护卫团', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1311', '胡下台', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1312', '胡温', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1313', '胡派人马', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1314', '胡派军委', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1315', '胡进涛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1316', '胡紧套', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1317', '胡紧掏', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1318', '胡江争斗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1319', '胡江曾', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1320', '胡江关系', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1321', '胡江风云', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1322', '红病历', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1323', '哈狗帮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1324', '观音法门', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1325', '共字玄机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1326', '共青团派', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1327', '共青背景', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1328', '共和国049', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1329', '共匪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1330', '共产主义黑皮书', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1331', '共产党专制', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1332', '共产党的末日', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1333', '共产党的报应', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1334', '个邪的党', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1335', '个人圆满说', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1336', '蛤蟆转世', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1337', '佛怀煽仇录', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1338', '芳香型智悟气功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1339', '反中共黑色暴力', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1340', '反共言论', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1341', '反共传单', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1342', '反攻大陆', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1343', '反腐总攻', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1344', '反对日本介入中国铁路工业', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1345', '反对共产主义', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1346', '反党', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1347', '珐(工力)学', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1348', '法西藏主义', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1349', '法能功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1350', '法论功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1351', '法轮义', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1352', '法轮公', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1353', '法轮工', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1354', '法轮佛法', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1355', '法轮大法', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1356', '法力像佛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1357', '法拉盛缅街', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1358', '法功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1359', '发轮功陈果', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1360', '发伦工', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1361', '发仑da发', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1362', '恶警', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1363', '恶搞人民币', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1364', '恶党', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1365', '对中共的姑息就是对死难者的残忍', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1366', '对共产党清算', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1367', '东伊运', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1368', '东突', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1369', '第五代接班梯队', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1370', '第五代红人', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1371', '递进民主', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1372', '抵制北京奥运', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1373', '邓颖超日记', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1374', '党内言事潮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1375', '党内危机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1376', '党内权争', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1377', '党内权力', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1378', '党禁', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1379', '党棍', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1380', '党风日下', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1381', '大圆满法', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1382', '大学暴动', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1383', '大法修炼者', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1384', '大法弟子', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1385', '打砸抢', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1386', '达米宣教会', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1387', '慈悲功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1388', '传九退三', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1389', '赤匪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1390', '成佛做主', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1391', '禅密功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1392', '踩江', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1393', '北美巡回讲法', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1394', '北京政坛清华名人', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1395', '北京市委黑幕', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1396', '北京黑幕', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1397', '北京帮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1398', '爱国者同盟网站', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1399', '爱国运动正名', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1400', 'www.cipfg.org', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1401', 'wenjiabao', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1402', 'VOA采访热比娅', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1403', 'tuidang', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1404', 'SevenYearsinTibet', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1405', 'RedCorner', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1406', 'PowertotheFalunGong', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1407', 'm功学', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1408', 'minghui', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1409', 'lihongzhi', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1410', 'huzhuxi', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1411', 'globalhumanrightstor', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1412', 'Fa轮功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1413', 'fanhua', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1414', 'fangong', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1415', 'falungong', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1416', 'falundafa', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1417', 'FaLun', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1418', 'bjork', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1419', '89学潮血腥屠杀', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1420', '89学潮大屠杀', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1421', '70天大事记', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1422', '64大屠杀', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1423', '《中国民主》', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1424', '《争鸣》', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1425', '《动向》', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1426', '脏独', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1427', '脏毒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1428', '西藏国家民主党', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1429', '藏青会', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1430', '自由西藏学生运动', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1431', '九十三运动', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1432', '藏妇会', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1433', '升达毕业证', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1434', '佳静安定片', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1435', '蒙汗药粉', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1436', '强效失忆药', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1437', '迷奸药', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1438', '透视眼睛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1439', '身份证生成器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1440', '最后圆满', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1441', '作弊器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1442', '治疗肿瘤', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1443', '治疗乙肝', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1444', '治疗性病', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1445', '治疗红斑狼疮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1446', '针孔摄像机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1447', '债务公司', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1448', '游戏机破解', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1449', '隐形摄像机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1450', '隐形耳机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1451', '隐蔽式摄像机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1452', '银行卡复制设备', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1453', '一卡多号', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1454', '遥控信号拦截器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1455', '信用卡套现', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1456', '消防枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1457', '消防灭火枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1458', '香港生子', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1459', '土炮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1460', '胎盘', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1461', '手机窃听器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1462', '手机魔卡', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1463', '手机卡复制器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1464', '手机监听器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1465', '手机跟踪定位器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1466', '容弹量', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1467', '枪模', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1468', '铅弹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1469', '汽狗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1470', '汽车走表器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1471', '气狗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1472', '普提功', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1473', '女伟哥', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1474', '纽扣摄像机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1475', '免电灯', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1476', '迷昏药', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1477', '卖QQ号码', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1478', '雷管', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1479', '康生丹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1480', '警徽', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1481', '假证件', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1482', '假文凭', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1483', '假发票', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1484', '假币出售', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1485', '加油机干扰器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1486', '记号扑克', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1487', '激光汽', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1488', '激光气', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1489', '红床', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1490', '狗友', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1491', '跟帖器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1492', '防身枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1493', '短信投票业务', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1494', '顶帖器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1495', '电子狗导航手机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1496', '电击枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1497', '电话追杀系统', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1498', '地磅遥控器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1499', '地磅解码器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1500', '弹种', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1501', '弹夹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1502', '代追债', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1503', '代讨债', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1504', '车用电子狗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1505', '避孕膜', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1506', '斑蝥', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1507', '暗访包', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1508', 'SIM卡复制器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1509', 'BB枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1510', 'BB弹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1511', '追债公司', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1512', '消声器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1513', '霰弹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1514', '卫星广播器材', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1515', '卫星高频头', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1516', '卫星电视', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1517', '土枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1518', '双筒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1519', '双桶', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1520', '手榴弹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1521', '人弹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1522', '麻醉弹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1523', '弓弩', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1524', '赴港生子', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1525', '电狗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1526', '导爆索', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1527', '长狗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1528', '爆炸物', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1529', '爆破', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1530', '左棍', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1531', '生孩子没屁眼', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1532', '傻逼', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1533', '日你妈', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1534', '妈了个逼', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1535', '贱人', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1536', '贱货', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1537', '狗日的', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1538', '狗娘养的', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1539', '粪青', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1540', '操你妈', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1541', '婊子', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1542', '淫兽', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1543', '阴毛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1544', '阴蒂', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1545', '阴道', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1546', '阴唇', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1547', '性交', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1548', '缩阴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1549', '少妇自拍', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1550', '色情片', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1551', '色情电影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1552', '三级电影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1553', '肉棒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1554', '免费电影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1555', '裸照', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1556', '奸杀', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1557', '禁网禁片', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1558', '肛交', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1559', '春宫图', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1560', 'SM用品', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1561', '自动群发', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1562', '证件公司', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1563', '网站推广软件', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1564', '网络推广扩散器', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1565', '私家侦探服务', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1566', '生意宝', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1567', '商务快车', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1568', '商务短信', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1569', '群发软件', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1570', '群发广告机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1571', '解密软件', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1572', '慧聪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1573', '供应发票', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1574', '发贴机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1575', '发贴工具', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1576', '发票代开', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1577', '短信猫', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1578', '顶贴机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1579', '点金商务', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1580', '士的宁', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1581', '士的年', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1582', '六合采', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1583', '乐透码', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1584', '皇家轮盘', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1585', '俄罗斯轮盘', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1586', '赌具', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1587', '彩票预测', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1588', '彩票选号机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1589', '包青天机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1590', '百乐二呓', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1591', '百家乐', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1592', '阿凡提机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1593', '6合彩', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1594', '祖母绿', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1595', '重亚硒酸钠', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1596', '粘氯酸', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1597', '原砷酸', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1598', '原藜芦碱A', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1599', '永伏虫', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1600', '蝇毒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1601', '罂粟籽', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1602', '罂粟壳', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1603', '银氰化钾', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1604', '因毒硫磷', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1605', '因毒磷', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1606', '异氰酸甲酯', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1607', '异氰酸苯酯', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1608', '异硫氰酸烯丙酯', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1609', '乙酰亚砷酸铜', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1610', '乙酰替硫脲', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1611', '乙烯甲醇', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1612', '乙酸亚铊', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1613', '乙酸铊', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1614', '乙酸三乙基锡', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1615', '乙酸三甲基锡', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1616', '乙酸甲氧基乙基汞', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1617', '乙酸汞', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1618', '乙硼烷', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1619', '乙醇腈', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1620', '乙撑亚胺', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1621', '乙撑氯醇', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1622', '伊皮恩', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1623', '一氧化汞', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1624', '一氧化二氟', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1625', '一氯乙醛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1626', '一氯丙酮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1627', '氧氯化磷', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1628', '氧化亚铊', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1629', '氧化铊', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1630', '氧化二丁基锡', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1631', '烟碱', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1632', '亚硝酰乙氧', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1633', '亚硝酸乙酯', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1634', '亚硒酸氢钠', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1635', '亚硒酸镁', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1636', '亚硒酸二钠', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1637', '亚砷酸钠', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1638', '亚砷酸钾', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1639', '亚砷（酸）酐', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1640', '菊花洞', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1641', '1夜情', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1642', '12次下跪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1643', '18岁以下勿看', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1644', '18岁以下勿入看', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1645', '27军', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1646', '27军军长', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1647', '54式', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1648', '64式', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1649', '77式', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1650', '92式', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1651', '97爱', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1652', '97色色', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1653', '97式', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1654', '97式防暴枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1655', 'AV出售', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1656', 'AV电影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1657', 'AV女', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1658', 'AV女优', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1659', 'A级', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1660', 'a片网', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1661', 'bt成人', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1662', 'b好痒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1663', 'b穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1664', 'b痒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1665', 'cosplay', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1666', 'e夜情', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1667', 'e夜温情', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1668', 'GCT工程硕士', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1669', 'go-vern-ment', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1670', 'Government', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1671', 'g情', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1672', 'g情图片', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1673', 'g情网站', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1674', 'H站', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1675', 'H片', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1676', 'jiqingshaofu', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1677', 'j巴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1678', 'j吧', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1679', 'ktv公主', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1680', 'mm穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1681', 'Party', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1682', 'PPK', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1683', 'PX项目', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1684', 'sex', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1685', 'SM虐待', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1686', 'todaynic', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1687', 'VIP伴游', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1688', 'vip公主', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1689', 'WP证书', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1690', 'x伴侣', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1691', '香港六', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1692', 'yindi', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1693', 'yinshui', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1694', 'yin部', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1695', 'yin道', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1696', 'yin毛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1697', 'y蒂', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1698', 'y户', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1699', 'y茎', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1700', 'zhuanfalu', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1701', '阿兵哥言语录', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1702', '阿里布达年代记', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1703', '爱神之传奇', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1704', '爱液', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1705', '瑷液', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1706', '安眠', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1707', '安眠药', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1708', '按摩小姐', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1709', '八背飞凫', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1710', '八奶', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1711', '罢餐', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1712', '罢吃', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1713', '罢饭', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1714', '罢食', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1715', '白小姐', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1716', '办证', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1717', '伴游私人', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1718', '包房公主', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1719', '包厢公主', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1720', '保钓', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1721', '爆乳', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1722', '被人干', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1723', '屄儿', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1724', '屄裏', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1725', '屄友', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1726', '逼好痒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1727', '逼毛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1728', '逼穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1729', '逼痒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1730', '毕业证书', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1731', '波波', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1732', '波佳达', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1733', '勃朗宁', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1734', '勃朗宁微型', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1735', '博白县', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1736', '博彩', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1737', '不良少女日记', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1738', '部巡查', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1739', '财税代理', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1740', '彩票机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1741', '沧澜曲', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1742', '操逼', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1743', '操比', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1744', '操我', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1745', '操小逼', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1746', '操穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1747', '肏屄', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1748', '肏干', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1749', '肏她', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1750', '肏妹妹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1751', '肏妳', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1752', '肏娘', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1753', '肏破', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1754', '肏入', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1755', '肏死', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1756', '肏我', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1757', '肏穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1758', '肏这', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1759', '插爆', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1760', '插逼', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1761', '插的好舒服', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1762', '插的好舒适', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1763', '插肛', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1764', '插进来', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1765', '插进你的下面', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1766', '插进你下面', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1767', '插进穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1768', '插妹妹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1769', '插你的下面', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1770', '插弄', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1771', '插女', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1772', '插肉', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1773', '插入穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1774', '插穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1775', '潮吹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1776', '车牌反光', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1777', '陈海石', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1778', '陈良宇罢官', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1779', '成人bt', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1780', '成人导航', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1781', '成人電影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1782', '成人俱乐部', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1783', '成人卡通', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1784', '成人聊天室', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1785', '成人漫画', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1786', '成人频道', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1787', '成人社区', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1788', '成人社區', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1789', '成人视频', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1790', '成人视频聊天', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1791', '成人图库', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1792', '成人卫星频道', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1793', '成人文学', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1794', '成人午夜场', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1795', '成人小电影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1796', '成人影视', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1797', '成人影院', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1798', '成人在线', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1799', '成人在线电影', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1800', '成人站', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1801', '吃角子老虎', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1802', '赤裸', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1803', '抽插', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1804', '抽捣', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1805', '抽弄', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1806', '抽送', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1807', '出墙红杏', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1808', '出售AV', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1809', '出售处男', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1810', '出售处女', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1811', '出售美女', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1812', '出售妹妹', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1813', '处男出售', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1814', '处女出售', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1815', '处女地', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1816', '处女穴', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1817', '處女', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1818', '處女膜', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1819', '传奇私服', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1820', '创世之子猎艳之旅', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1821', '吹箫', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1822', '春宵', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1823', '粗大的玩意', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1824', '崔英杰', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1825', '打KING', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1826', '打倒', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1827', '打飞机', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1828', '打炮', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1829', '大jj', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1830', '大紀元', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1831', '大揭露', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1832', '大陆当局', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1833', '大陆当权者', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1834', '大陆独裁者', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1835', '大陆官员', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1836', '大奶mm', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1837', '大腿内侧', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1838', '大学艳遇', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1839', '大学艳遇史', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1840', '代考', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1841', '代考建造师', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1842', '代考网', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1843', '代考业务', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1844', '代注', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1845', '戴安娜', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1846', '单发猎狗', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1847', '单管猎枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1848', '单管五连发', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1849', '单管五连发猎枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1850', '单双管平式猎枪', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1851', '党代', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1852', '盗版', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1853', '盗电', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1854', '盗窃', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1855', '道县公安', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1856', '等你插', '2', '', '1369460174');
INSERT INTO `yufu_badword` VALUES ('1857', '邓小平', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1858', '抵制家乐福', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1859', '抵制日货', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1860', '第十六次代表', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1861', '第十六屆', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1862', '第十六届', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1863', '第拾陆届', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1864', '第一次破处', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1865', '点对点裸聊', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1866', '电影色情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1867', '电子地磅解码器', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1868', '调情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1869', '丁香社区', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1870', '丁香五月天', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1871', '顶得好深', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1872', '东北风情熟女之惑', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1873', '动乱', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1874', '動乱', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1875', '豆蔻', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1876', '逗肛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1877', '逗乳', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1878', '毒米', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1879', '毒品', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1880', '买码', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1881', '卖码', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1882', '赌场', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1883', '赌城', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1884', '赌钱', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1885', '赌球', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1886', '赌骰子', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1887', '对日强硬', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1888', '多党执政', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1889', '多美康', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1890', '多美康安定片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1891', '多夜情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1892', '二奶大奖赛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1893', '二十次', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1894', '二十大', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1895', '发浪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1896', '发情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1897', '发骚', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1898', '法lun功', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1899', '法輪功', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1900', '反动', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1901', '反动2', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1902', '反革命', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1903', '反右题材', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1904', '仿54', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1905', '仿64', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1906', '仿六四', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1907', '仿五四', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1908', '仿真假钞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1909', '放入春药', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1910', '非标枪械', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1911', '肥东交警', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1912', '肥穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1913', '分裂国家', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1914', '分数修改', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1915', '粉红小b', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1916', '粉红小逼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1917', '丰满坚挺', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1918', '丰乳肥臀', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1919', '丰韵少妇', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1920', '风尘劫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1921', '风骚', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1922', '风骚侍女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1923', '风月大陆', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1924', '疯狂盗窃', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1925', '凤反展翅', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1926', '凤抬头', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1927', '凤啄水', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1928', '夫妇乐园', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1929', '夫妻友论坛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1930', '肤白胸大', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1931', '扶不起的阿斗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1932', '富婆包我', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1933', '富人与农民工', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1934', '干柴烈火', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1935', '干你娘', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1936', '敢坐飞机吗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1937', '赣江学院', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1938', '肛插', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1939', '肛恋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1940', '高潮', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1941', '高级伴游', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1942', '高级服务生', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1943', '高级职称评审', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1944', '高树三姐妹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1945', '高樹三姐妹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1946', '高校群体事件', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1947', '高薪服务人员', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1948', '高薪服务生', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1949', '高薪日结', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1950', '高莺莺', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1951', '睪丸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1952', '搞个处女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1953', '哥的jj', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1954', '哥哥兼职', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1955', '各种枪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1956', '工字牌气狗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1957', '公安部巡查', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1958', '公关兼职', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1959', '公关男', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1960', '公关女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1961', '公关小姐', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1962', '公关夜总会', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1963', '公关坐台', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1964', '公务员的工资', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1965', '公务员调资', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1966', '公务员工资', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1967', '公主ktv', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1968', '公主包厢', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1969', '攻击党政', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1970', '供应猎枪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1971', '共铲党', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1972', '够鳋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1973', '股市民谣', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1974', '官逼民反', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1975', '广安第二人民医院', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1976', '广东王', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1977', '龟缝', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1978', '龜頭', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1979', '国际足坛五大', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1980', '国家领导人', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1981', '国家领导人保镖', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1982', '国民党', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1983', '嗨妹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1984', '嗨药', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1985', '海盗的悠闲生活', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1986', '海乐神', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1987', '酣乐欣', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1988', '含鸡鸡', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1989', '韩国身份证', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1990', '和奸成瘾', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1991', '和弦', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1992', '黑天使', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1993', '黑星女侠', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1994', '黑窑奴役', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1995', '狠肏', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1996', '红wy', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1997', '红灯区', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1998', '红海湾', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('1999', '红楼绮梦', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2000', '后面插', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2001', '胡錦濤', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2002', '胡景涛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2003', '胡新宇', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2004', '胡耀', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2005', '胡主席', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2006', '虎牌猎狗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2007', '虎头牌双管平式', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2008', '护士的穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2009', '滑腻', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2010', '黃色小電影', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2011', '黄片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2012', '黄色激情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2013', '黄色免费电影', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2014', '黄色片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2015', '黄色网', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2016', '黄色小说', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2017', '黄色照片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2018', '黄小说', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2019', '黄站', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2020', '簧片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2021', '挥发型迷药', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2022', '会计从业资格', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2023', '会计上岗证', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2024', '會陰', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2025', '混蛋神风流史', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2026', '火药制作', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2027', '鸡巴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2028', '鸡吧', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2029', '激情成人', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2030', '激情短片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2031', '激情黄色', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2032', '激情聊天', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2033', '激情視頻', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2034', '激情网站', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2035', '激情文学', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2036', '激情文學', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2037', '激情小说', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2038', '激情秀', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2039', '激情淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2040', '激情诱惑', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2041', '激情在线', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2042', '雞八', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2043', '雞巴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2044', '雞雞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2045', '极景', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2046', '极品穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2047', '计生风暴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2048', '纪股票市场五卅惨案', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2049', '济南建设路', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2050', '甲基苯丙胺', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2051', '奸淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2052', '坚挺丰满的双峰', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2053', '兼职的妹妹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2054', '兼职哥哥', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2055', '兼职公关', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2056', '兼职美女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2057', '兼职妹妹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2058', '监理工程师证', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2059', '监听卡', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2060', '建造师证', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2061', '建筑师证', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2062', '践踏中国女性', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2063', '江湖淫娘', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2064', '江山美人志', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2065', '江西田园置业集团', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2066', '江泽民', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2067', '蒋彦永', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2068', '交换夫妻', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2069', '交奸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2070', '娇喘', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2071', '娇吟', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2072', '狡猾的风水相师', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2073', '搅珠', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2074', '叫床', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2075', '她的mm', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2076', '姐的穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2077', '姐开苞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2078', '姐穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2079', '金伯帆', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2080', '金伯帆崔英杰', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2081', '金鳞岂是池中物', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2082', '金麟岂是池中物', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2083', '紧窄', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2084', '进口猎狗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2085', '禁断少女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2086', '禁区', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2087', '茎精', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2088', '精液', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2089', '靓穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2090', '九评', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2091', '就爱色', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2092', '就去爱', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2093', '就去播播', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2094', '就去干', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2095', '就去色色', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2096', '菊花蕾', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2097', '菊花穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2098', '菊穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2099', '巨波', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2100', '巨额骗储', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2101', '巨乳', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2102', '军火价格', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2103', '军枪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2104', '军用', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2105', '军用54', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2106', '军用64', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2107', '军用77式', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2108', '军用M92式', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2109', '军用狗狗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2110', '军用手狗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2111', '开彩', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2112', '科技精英遇难', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2113', '抠b', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2114', '抠逼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2115', '口活', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2116', '口技', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2117', '口鉸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2118', '口头检查', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2119', '快餐美女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2120', '快餐小姐', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2121', '狂操', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2122', '狂插', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2123', '狂风暴雨', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2124', '狂穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2125', '狅操', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2126', '拉登说中国', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2127', '拉凳', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2128', '狼友', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2129', '狼友俱乐部', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2130', '浪叫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2131', '浪妻', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2132', '浪穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2133', '浪淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2134', '老虎机', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2135', '老师的穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2136', '老师穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2137', '雷明登来复枪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2138', '雷鸣登', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2139', '累积大奖', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2140', '黎阳平', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2141', '礼品机', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2142', '李宏志', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2143', '李沛瑶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2144', '李鹏', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2145', '力月西', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2146', '立式猎枪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2147', '俪影蝎心', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2148', '连线机', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2149', '梁保华', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2150', '两乳之间', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2151', '两性狂情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2152', '两性乐园', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2153', '两性生活', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2154', '两性私语', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2155', '两性屋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2156', '两性淫乱', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2157', '亮穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2158', '猎枪子弹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2159', '溜冰', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2160', '刘全喜', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2161', '流了好多的水', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2162', '流了好多水', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2163', '流氓无产者', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2164', '劉奇葆', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2165', '6和', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2166', '六合彩1', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2167', '六和采', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2168', '六和彩', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2169', '六九体位', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2170', '六决不', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2171', '六码', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2172', '六奶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2173', '六四母亲', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2174', '六四屠城', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2175', '六四屠杀', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2176', '六四学潮', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2177', '六四血案', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2178', '六四政变', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2179', '六四之', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2180', '露逼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2181', '露穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2182', '卢跃刚', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2183', '录取通知书', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2184', '卵蛋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2185', '乱伦熟女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2186', '乱淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2187', '亂倫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2188', '伦理片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2189', '轮奸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2190', '轮盘机', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2191', '裸聊合法', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2192', '裸陪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2193', '裸体写真', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2194', '裸體', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2195', '裸网', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2196', '骆冰淫传', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2197', '妈穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2198', '麻果', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2199', '麻醉酒', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2200', '马加爵', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2201', '卖逼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2202', '卖比', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2203', '卖骚', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2204', '卖淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2205', '满床春色', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2206', '毛都露出', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2207', '毛穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2208', '毛爷爷复活', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2209', '玫瑰园', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2210', '美屄', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2211', '美国凯德', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2212', '美国之音', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2213', '美女出售', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2214', '美女会所', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2215', '美女快餐', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2216', '美女裸体', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2217', '美女全套', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2218', '美少妇的哀羞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2219', '美穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2220', '妹开苞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2221', '妹妹出售', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2222', '妹妹的屄', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2223', '妹妹穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2224', '猛操', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2225', '猛插', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2226', '猛料', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2227', '梦中的女孩', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2228', '迷幻喷雾', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2229', '迷幻香烟', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2230', '迷情', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2231', '秘部', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2232', '秘處', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2233', '秘唇', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2234', '秘肉', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2235', '密码破解', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2236', '密穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2237', '蜜唇', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2238', '蜜洞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2239', '蜜壶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2240', '蜜穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2241', '免费a片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2242', '灭绝罪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2243', '民警当副院长', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2244', '民为法执', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2245', '民运分子', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2246', '摸奶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2247', '摸胸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2248', '模拟机', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2249', '内射', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2250', '奶子', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2251', '男公关', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2252', '男体图片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2253', '男性服务', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2254', '南京大屠杀', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2255', '南京大学法学院', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2256', '嫩b', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2257', '嫩屄', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2258', '嫩穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2259', '你敢上吗', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2260', '牛皮弹带', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2261', '弄穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2262', '奴事件', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2263', '奴役童工', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2264', '女ds', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2265', '女模招聘', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2266', '女男出售', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2267', '女人出售', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2268', '女人的胸男人为什么喜欢摸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2269', '女人穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2270', '女死囚', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2271', '女特服', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2272', '女体', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2273', '女体图片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2274', '女性服务', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2275', '女友坊', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2276', '虐恋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2277', '欧美色图', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2278', '歐美bt', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2279', '拍肩粉', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2280', '牌九', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2281', '炮片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2282', '炮图', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2283', '陪护私人', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2284', '陪裸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2285', '喷潮', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2286', '喷尿', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2287', '喷沙枪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2288', '喷雾型迷药', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2289', '喷血', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2290', '屁穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2291', '嫖娼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2292', '聘女ds', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2293', '平码', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2294', '破瓜之', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2295', '破解密码', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2296', '七奶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2297', '期货从业资格', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2298', '欺骗股民', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2299', '汽车爆炸案', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2300', '汽车解码器', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2301', '汽车拦截器', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2302', '千岛湖之旅', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2303', '枪淫少妇', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2304', '枪油', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2305', '枪支等违禁品', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2306', '强j', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2307', '强奸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2308', '强姦', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2309', '强效失意药', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2310', '亲jj', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2311', '亲蛋蛋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2312', '亲共行动', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2313', '亲吻蛋蛋', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2314', '秦青的幸福生活', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2315', '清华网管', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2316', '情感陪护', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2317', '情色', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2318', '情色论坛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2319', '情色贴图', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2320', '情色图片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2321', '情色网', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2322', '情色文学', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2323', '情色小说', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2324', '情色影片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2325', '情欲', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2326', '求救遭拒', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2327', '全套服务', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2328', '全套美女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2329', '群奸', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2330', '绕过封锁', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2331', '热辣', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2332', '人民报', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2333', '人妻', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2334', '人妻小说', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2335', '人权圣火', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2336', '人体艺术', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2337', '仁寿警方', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2338', '任你淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2339', '日本毒大米', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2340', '日本毒米', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2341', '日本小泉', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2342', '日批', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2343', '蹂躏', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2344', '肉屄', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2345', '肉洞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2346', '肉缝', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2347', '肉根', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2348', '肉壶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2349', '肉击', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2350', '肉茎', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2351', '肉具', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2352', '肉门', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2353', '肉丘', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2354', '肉圈', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2355', '肉体交融', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2356', '肉臀', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2357', '肉穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2358', '肉芽', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2359', '乳fan', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2360', '乳房', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2361', '乳球', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2362', '乳首', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2363', '乳晕', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2364', '赛马会', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2365', '三挫仑', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2366', '三角牌子弹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2367', '三句硬话', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2368', '三奶', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2369', '三陪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2370', '三肖', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2371', '三鱼比目', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2372', '搔穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2373', '骚屄', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2374', '骚逼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2375', '骚比', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2376', '骚婊', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2377', '骚货', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2378', '骚姐姐', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2379', '骚浪', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2380', '骚妹', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2381', '骚水', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2382', '骚穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2383', '骚痒', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2384', '骚姊姊', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2385', '騷逼', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2386', '騷穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2387', '色界论坛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2388', '色空寺', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2389', '色情导航', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2390', '色情六月天', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2391', '色情论坛', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2392', '色情五月天', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2393', '色情小说', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2394', '色情影视', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2395', '色情自拍', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2396', '色图亚洲', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2397', '色屋图片', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2398', '色淫', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2399', '色友', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2400', '色诱', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2401', '色欲', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2402', '杀猪粉', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2403', '山不过来', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2404', '山西黑砖窑', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2405', '山西洪洞', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2406', '汕頭頻傳擄童割器官', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2407', '汕尾事件', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2408', '商务陪伴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2409', '商务陪护', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2410', '商务陪游', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2411', '商務伴游', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2412', '上海交警', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2413', '少儿勿入', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2414', '少妇白洁', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2415', '少妇熟女', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2416', '少妇穴', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2417', '少年阿宾', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2418', '少女高潮', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2419', '少爷坐台', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2420', '舌头添', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2421', '舌头舔', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2422', '舌战法庭', '2', '', '1369460175');
INSERT INTO `yufu_badword` VALUES ('2423', '射出来', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2424', '射精', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2425', '射乳', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2426', '涉毒', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2427', '神雕外传之郭襄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2428', '沈阳公安', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2429', '生成身份证', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2430', '声色场所', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2431', '声优', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2432', '绳虐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2433', '失身', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2434', '湿穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2435', '十八次', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2436', '十八山羊对树', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2437', '十景缎', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2438', '十九次', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2439', '十九大', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2440', '十临坛竹', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2441', '十六大', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2442', '十七次', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2443', '視頻表演', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2444', '手机定', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2445', '手机游戏', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2446', '手机注册', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2447', '手淫', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2448', '熟女俱乐部', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2449', '双管立式猎枪', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2450', '双腿叉开', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2451', '双腿间的禁地', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2452', '双鞋的故事', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2453', '双性恋', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2454', '爽电影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2455', '爽片', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2456', '水晶冰凤', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2457', '睡着的武神', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2458', '私密处', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2459', '私人伴游', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2460', '私人陪护', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2461', '死刑过程', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2462', '死刑枪毙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2463', '四海龙女', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2464', '四六级考题', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2465', '四奶', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2466', '四我周', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2467', '松花江污染', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2468', '苏东解体', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2469', '他妈的', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2470', '台湾身份证', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2471', '台湾性虎', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2472', '唐人电视台', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2473', '逃亡艳旅', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2474', '套弄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2475', '套牌', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2476', '套图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2477', '提供小姐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2478', '天浴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2479', '添逼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2480', '添你下面', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2481', '添阴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2482', '舔xue', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2483', '舔逼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2484', '舔便', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2485', '舔遍', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2486', '舔肛', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2487', '舔花苞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2488', '舔奶', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2489', '舔弄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2490', '舔批', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2491', '舔舐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2492', '舔吮', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2493', '舔下面', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2494', '舔穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2495', '舔阴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2496', '厅房公主', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2497', '同性服务', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2498', '同性恋吧', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2499', '同淫', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2500', '同志服务', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2501', '童奴工', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2502', '痛批政法委', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2503', '偷电', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2504', '投注', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2505', '凸点装', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2506', '秃鹰', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2507', '突破封锁', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2508', '臀洞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2509', '臀沟', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2510', '臀孔', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2511', '臀丘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2512', '脱台', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2513', '外挂', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2514', '外海军火出售', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2515', '萬人暴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2516', '王毓彬', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2517', '王子淫传', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2518', '网监', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2519', '网友自拍', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2520', '往事追忆录', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2521', '卫星锅', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2522', '卫星接收器', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2523', '卫星器', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2524', '卫星遭黑客攻击', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2525', '温家保', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2526', '温家堡', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2527', '温切斯特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2528', '我包富婆', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2529', '我操', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2530', '我的性启蒙老师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2531', '我周容', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2532', '无病毒无木马', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2533', '无毒无马', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2534', '无界浏览', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2535', '无界浏览器', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2536', '无码片', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2537', '无碼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2538', '無碼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2539', '五奶', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2540', '五奶小青', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2541', '午夜激情', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2542', '武警', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2543', '西藏暴动', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2544', '西藏天葬', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2545', '吸食', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2546', '吸舔', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2547', '下面的水', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2548', '厦门PX', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2549', '厦门大游行', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2550', '先烈的电话', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2551', '现代艳帝传奇', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2552', '限制级', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2553', '限制片', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2554', '相奸', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2555', '香港GHB水', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2556', '香港马会', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2557', '香舌', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2558', '想不到的黑幕', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2559', '销魂', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2560', '小jj', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2561', '小屄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2562', '小洞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2563', '小姐快餐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2564', '小姐招募', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2565', '小姐招聘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2566', '小姐招收', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2567', '小姐坐台', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2568', '小口径步枪', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2569', '小泉恶搞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2570', '小姨子穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2571', '校花沉沦记', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2572', '校園文學', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2573', '邪恶的党', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2574', '泄题', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2575', '蟹骰', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2576', '新疆分裂主义', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2577', '新生网', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2578', '新诗年鉴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2579', '信号复制器', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2580', '信号干扰器', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2581', '星光伴我淫', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2582', '刑警', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2583', '性爱教育', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2584', '性爱日记', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2585', '性爱网', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2586', '性爱文学', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2587', '性愛', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2588', '性吧', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2589', '性电影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2590', '性服务工作者', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2591', '性高潮', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2592', '性教官', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2593', '性开放的', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2594', '性开放俱乐部', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2595', '性奴营', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2596', '性器', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2597', '性色社区', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2598', '性事', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2599', '性学教授', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2600', '性游戏', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2601', '性友谊', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2602', '性欲', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2603', '性欲泛滥', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2604', '性欲较强', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2605', '徐和柴学友', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2606', '穴洞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2607', '穴口', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2608', '穴里', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2609', '穴前庭', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2610', '穴肉', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2611', '穴穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2612', '穴淫', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2613', '学生暴动', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2614', '学生与警察', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2615', '学位证书', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2616', '学校内部档案', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2617', '学运', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2618', '学运分子', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2619', '鸭子', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2620', '亚洲色图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2621', '亞洲bt', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2622', '亞洲圖區', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2623', '艳狐软件', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2624', '艳门照', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2625', '艳情电影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2626', '艳舞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2627', '艳欲', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2628', '艳照门', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2629', '阳精', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2630', '阳具', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2631', '阳物', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2632', '杨林', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2633', '杨元元', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2634', '遥想当年春衫薄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2635', '野外激情', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2636', '叶倩彤', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2637', '夜场兼职', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2638', '夜场女模特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2639', '夜场招聘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2640', '夜场直招', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2641', '夜总会公关', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2642', '夜总会模特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2643', '夜总会招聘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2644', '葉倩彤', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2645', '一安士海洛', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2646', '一波中特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2647', '一蚕缠', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2648', '一码中特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2649', '一四我', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2650', '一肖中特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2651', '一夜情', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2652', '医师资格证', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2653', '医用乙醚', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2654', '倚天屠龙别记', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2655', '阴chun', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2656', '阴dao', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2657', '阴di', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2658', '阴壁', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2659', '阴部', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2660', '阴纯', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2661', '阴阜', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2662', '阴核', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2663', '阴护', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2664', '阴茎', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2665', '阴丘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2666', '阴水', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2667', '阴穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2668', '陰部', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2669', '陰唇', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2670', '陰道', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2671', '陰蒂', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2672', '陰核', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2673', '陰戶', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2674', '陰户', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2675', '陰茎', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2676', '陰莖', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2677', '陰毛', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2678', '陰穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2679', '婬水', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2680', '淫b', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2681', '淫暴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2682', '淫屄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2683', '淫逼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2684', '淫唇', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2685', '淫荡妈', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2686', '淫荡妹妹', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2687', '淫荡少妇', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2688', '淫荡娃娃', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2689', '淫蕩少婦', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2690', '淫蕩丗家', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2691', '淫蕩孕婦', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2692', '淫道', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2693', '淫电影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2694', '淫洞', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2695', '淫妇', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2696', '淫棍', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2697', '淫秽词语', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2698', '淫间道', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2699', '淫叫', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2700', '淫浪', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2701', '淫乱电影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2702', '淫亂', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2703', '淫美贴图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2704', '淫妹', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2705', '淫民', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2706', '淫魔舞会', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2707', '淫男', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2708', '淫女', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2709', '淫虐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2710', '淫片', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2711', '淫妻', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2712', '淫情女教师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2713', '淫情贴图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2714', '淫色', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2715', '淫色网站', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2716', '淫声', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2717', '淫兽学园', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2718', '淫术炼金士', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2719', '淫贴图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2720', '淫图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2721', '淫臀', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2722', '淫穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2723', '淫液', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2724', '淫阴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2725', '淫影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2726', '淫影片', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2727', '淫影院', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2728', '淫欲', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2729', '淫汁', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2730', '莹穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2731', '赢钱', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2732', '油田总部', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2733', '有码片', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2734', '有碼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2735', '幼b', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2736', '幼逼', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2737', '幼女', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2738', '幼穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2739', '幼幼诱女', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2740', '诱惑电影', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2741', '诱惑视频', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2742', '诱奸', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2743', '诱人双峰', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2744', '娱乐城诚聘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2745', '娱乐城招聘', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2746', '玉杵捣花径', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2747', '玉女吹箫', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2748', '玉穴', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2749', '欲生欲死', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2750', '欲仙欲死', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2751', '愈快乐愈堕落', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2752', '云雨图', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2753', '遭警察殴打', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2754', '造价工程师证', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2755', '曾道人', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2756', '张大权', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2757', '张开双腿', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2758', '招募小姐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2759', '招女ds', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2760', '招女模', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2761', '招聘av', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2762', '招聘公主', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2763', '招聘兼职美女', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2764', '招聘模特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2765', '招聘女模', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2766', '招聘小姐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2767', '招聘坐台少爷', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2768', '招聘坐台小姐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2769', '招收小姐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2770', '招坐台少爷', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2771', '招坐台小姐', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2772', '赵紫阳', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2773', '趙紫陽', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2774', '这年头就这样', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2775', '针对台湾', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2776', '镇压学生', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2777', '证券从业资格', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2778', '证书办理', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2779', '执业药师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2780', '执业医师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2781', '执业证书', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2782', '智能H3', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2783', '智能Ｈ３', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2784', '中高级会计师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2785', '中共独枭', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2786', '中共监狱', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2787', '中共警察', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2788', '中共流氓特务', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2789', '中共流氓政府', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2790', '中共流氓政权', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2791', '中共媒体', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2792', '中共迫害', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2793', '中共特务组织', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2794', '中共网特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2795', '中共专制', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2796', '中国共产党亡', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2797', '中国军用运输机', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2798', '中国人都在上的四大当', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2799', '中级会计职称', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2800', '中央军委', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2801', '中原油田', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2802', '重题工', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2803', '周容重', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2804', '朱蒙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2805', '朱镕基', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2806', '注册安全工程师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2807', '注册备案资料', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2808', '注册会计师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2809', '注册设备监理师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2810', '注册税务师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2811', '注册咨询工程师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2812', '注册资产评估师', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2813', '专项整治', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2814', '追踪手机', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2815', '自拍区', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2816', '自慰', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2817', '自由亚州', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2818', '自制枪', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2819', '总统的讲话', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2820', '走光', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2821', '阻无通畅', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2822', '最牛钉子户', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2823', '最新黄站', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2824', '最淫官员', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2825', '作爱', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2826', '坐台公关', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2827', '做ai', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2828', '做爱', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2829', '做愛', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2830', '做要带套', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2831', '彩开', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2832', '彩资料', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2833', '内部单双', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2834', '彩曾', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2835', '100%包中', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2836', '四肖一码', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2837', '杀黑庄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2838', '彩特', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2839', '码中心', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2840', '彩公司', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2841', '一肖彩经', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2842', '杀庄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2843', '一肖新', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2844', '发财二码', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2845', '码主', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2846', '码庄', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2847', '传奇一条龙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2848', 'mir一条龙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2849', '传奇游戏一条龙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2850', '香港六合彩', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2851', '香港六和彩', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2852', '香港六和采', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2853', '香港六合采', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2854', '六合彩网', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2855', '六和彩网', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2856', '六和采网', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2857', '六合采网', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2858', '赚钱私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2859', '私服赚钱', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2860', '开私服时', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2861', '专业传奇一条龙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2862', '私服一条龙', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2863', '劲舞团私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2864', '劲舞私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2865', '赌博系统', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2866', '魔兽私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2867', '魔域私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2868', '传世私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2869', '奇迹私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2870', '盛大私服', '2', '', '1369460176');
INSERT INTO `yufu_badword` VALUES ('2871', '巨人私服', '2', '', '1369460176');

-- ----------------------------
-- Table structure for `yufu_category`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_category`;
CREATE TABLE `yufu_category` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `modelname` varchar(50) default NULL,
  `catname` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `level` int(11) default NULL,
  `listorder` int(11) default '0',
  `title` varchar(225) default NULL,
  `keywords` varchar(225) default NULL,
  `description` text,
  `status` tinyint(1) default NULL,
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_category
-- ----------------------------
INSERT INTO `yufu_category` VALUES ('1', '0', 'Article', '新闻中心', '0', '1', '36', '新闻中心', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('12', '0', 'Product', '产品展示', '0', '1', '2', '产品展示', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('27', '0', 'Content', '联系我们', '0', '1', '46', '联系我们', '', '', '1', '<p>XXX科技有限公司 </p><p>地址：XX市XX路XX大厦</p><p>咨询热线：029-88888888</p><p>咨询QQ：315231371</p><p>邮编：710045</p><p>乘车线路：14路, 21路, 23路, 118路, 214路, 222路, 309路, 410路, 501路, 508路, 710路, k609路空调, 教育专线 XX站下车 XX路十字向东100米</p><p>网址：www.yufu5.com</p><p><img src=\"/yufucms_qy/Uploads/20130722/13744651383418.jpg\" title=\"a.jpg\" style=\"float:none;\" /><br /></p>');
INSERT INTO `yufu_category` VALUES ('44', '0', 'Photo', '经典案例', '0', '1', '44', '经典案例', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('45', '0', 'Article', '解决方案', '0', '1', '45', '解决方案', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('36', '0', 'Content', '公司介绍', '0', '1', '1', '公司介绍', '', '', '1', '<p><span style=\"color:#333333;font-family:宋体, arial, verdana;font-size:14px;line-height:28px;\"><img src=\"/yufucms_qy/Uploads//20130720/13743090875948.jpg\" title=\"QQ截图20130314131513.jpg\" style=\"float:left;\" hspace=\"5\" /> &nbsp; &nbsp;<span style=\"color:#333333;font-family:宋体, arial, verdana;font-size:12px;line-height:28px;\">XXX科技有限公司，简称：<a href=\"http://www.yufu5.com\" target=\"_blank\">XX科技</a>,成立2007年，主</span><span style=\"color:#333333;font-family:宋体, arial, verdana;font-size:12px;line-height:28px;\">要面向广大海内外客户提供域名注册、虚拟主机、网站建站、企业软件、电商培训等丰富的网络产品服务。</span></span><br style=\"margin:0px;padding:0px;color:#333333;font-family:宋体, arial, verdana;font-size:14px;line-height:28px;\" /><span style=\"color:#333333;font-family:宋体, arial, verdana;font-size:12px;line-height:28px;\"> &nbsp; &nbsp;XX的快速发展与其企业文化密不可分，XX人秉持“团结互助、敬业负责、恪守信誉、积极进取、勇于创新”的企业文化，汇聚了行业内的大量专业人士。核心团队均为该行业从业多年的专业人士，拥有丰富行业经验和较高威望，并不断改革创新，以满足客户多元化需求为己任，不断进取。 同时，XX坚守“专业品质、服务为本、诚信经营、恪守信誉”的核心价值观，为客户提供多样、安全、稳定、放心的产品。</span><br /></p>');
INSERT INTO `yufu_category` VALUES ('37', '12', 'Product', '产品分类一', '0-12', '2', '5', '产品分类一', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('38', '12', 'Product', '产品分类二', '0-12', '2', '6', '产品分类二', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('39', '12', 'Product', '产品分类三', '0-12', '2', '7', '产品分类三', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('40', '12', 'Product', '产品分类四', '0-12', '2', '8', '产品分类四', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('41', '37', 'Product', '产品分类1', '0-12-37', '3', '9', '产品分类1', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('42', '38', 'Product', '产品分类2', '0-12-38', '3', '10', '产品分类2', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('43', '39', 'Product', '产品分类3', '0-12-39', '3', '11', '产品分类3', '', '', '1', '');
INSERT INTO `yufu_category` VALUES ('48', '0', 'Content', '手机APP下载', '0', '1', '80', '', '', '', '0', '<p><br /></p><p>扫一扫二维码，通过手机浏览</p><p><img src=\"/yufucms_qy/Uploads/qrcode.png\" /><br /></p><p><br /></p><p>Android客户端下载地址：<a href=\"http://localhost/yufucms_dg/admin/index.php/Content/Uploads/yufucms.apk\" target=\"_self\" textvalue=\"点击下载\">点击下载</a><br /></p>');

-- ----------------------------
-- Table structure for `yufu_chain`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_chain`;
CREATE TABLE `yufu_chain` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` varchar(50) default NULL,
  `url` varchar(255) default NULL,
  `number` int(11) default NULL,
  `target` varchar(20) default NULL,
  `status` int(11) default NULL,
  `create_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_chain
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_download`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_download`;
CREATE TABLE `yufu_download` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) default NULL,
  `title` varchar(255) default NULL,
  `thumb` text,
  `keywords` varchar(50) default NULL,
  `description` text,
  `url` text,
  `content` text,
  `listorder` int(11) default NULL,
  `create_time` int(11) default NULL,
  `update_time` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `hits` int(11) default NULL,
  `file1` varchar(255) default NULL,
  `file2` varchar(255) default NULL,
  `file3` varchar(255) default NULL,
  `file4` varchar(255) default NULL,
  `file5` varchar(255) default NULL,
  `file_url1` varchar(255) default NULL,
  `file_url2` varchar(255) default NULL,
  `file_url3` varchar(255) default NULL,
  `file_url4` varchar(255) default NULL,
  `file_url5` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_download
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_link`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_link`;
CREATE TABLE `yufu_link` (
  `id` int(11) NOT NULL auto_increment,
  `linktype` tinyint(1) NOT NULL,
  `type` int(11) default NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `listorder` smallint(5) NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_link
-- ----------------------------
INSERT INTO `yufu_link` VALUES ('18', '0', '0', '鱼福网', 'http://www.yufu5.com', '', '0', '1369371472');
INSERT INTO `yufu_link` VALUES ('19', '0', '0', '鱼福CMS', 'http://www.yufu5.com', '', '3', '1370057621');
INSERT INTO `yufu_link` VALUES ('20', '0', '0', '淘客导购CMS', 'http://demo.yufu5.net/dg', '', '6', '1369396473');
INSERT INTO `yufu_link` VALUES ('21', '0', '0', '微信导航CMS', 'http://demo.yufu5.net/wx', '', '6', '1369396500');
INSERT INTO `yufu_link` VALUES ('22', '0', '0', '二维码CMS', 'http://demo.yufu5.net/ewm', '', '12', '1369396529');
INSERT INTO `yufu_link` VALUES ('23', '0', '0', '企业CMS', 'http://demo.yufu5.net/qy', '', '15', '1369396558');
INSERT INTO `yufu_link` VALUES ('24', '0', '0', '搞笑CMS', 'http://demo.yufu5.net/gx', '', '10', '1369396819');

-- ----------------------------
-- Table structure for `yufu_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_logistics`;
CREATE TABLE `yufu_logistics` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(11) default NULL,
  `lxrname` varchar(50) default NULL,
  `lxaddress` varchar(255) default NULL,
  `lxtel` varchar(50) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_logistics
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_member`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_member`;
CREATE TABLE `yufu_member` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `last_login_time` int(11) unsigned default '0',
  `last_login_ip` varchar(40) default NULL,
  `login_count` mediumint(8) unsigned default '0',
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) default NULL,
  `role_id` mediumint(9) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `account` USING BTREE (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_member
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_membergroup`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_membergroup`;
CREATE TABLE `yufu_membergroup` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `status` tinyint(1) default NULL,
  `remark` varchar(255) default NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_membergroup
-- ----------------------------
INSERT INTO `yufu_membergroup` VALUES ('9', '高级会员', '1', '', '1358056215', '0');
INSERT INTO `yufu_membergroup` VALUES ('10', '中级会员', '1', '', '1358057056', '0');
INSERT INTO `yufu_membergroup` VALUES ('11', '初级会员', '1', '', '1358057227', '0');
INSERT INTO `yufu_membergroup` VALUES ('15', '新手上路', '1', '', '1358060231', '0');

-- ----------------------------
-- Table structure for `yufu_message`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_message`;
CREATE TABLE `yufu_message` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `tel` varchar(50) default NULL,
  `qq` varchar(50) default NULL,
  `email` varchar(30) default NULL,
  `sex` tinyint(1) default NULL,
  `content` text,
  `reply` text,
  `ip` varchar(30) default NULL,
  `status` tinyint(1) default NULL,
  `create_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_message
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_model`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_model`;
CREATE TABLE `yufu_model` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) default NULL,
  `table` varchar(80) default NULL,
  `listrows` int(11) default NULL,
  `header` varchar(80) default NULL,
  `prev` varchar(80) default NULL,
  `next` varchar(80) default NULL,
  `first` varchar(80) default NULL,
  `last` varchar(80) default NULL,
  `theme` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_model
-- ----------------------------
INSERT INTO `yufu_model` VALUES ('1', '文章模型', 'Article', '18', '条数据', '上一页', '下一页', '首页', '末页', '<ul><li>%first%</li><li>%upPage%</li><li>%linkPage%</li><li>%downPage%</li><li>%end%</li><li><span class=\\\\\\\"pageinfo\\\\\\\">共 <strong>%totalRow%</strong> %header% <strong>%nowPage%/%totalPage%</strong>页</span></li></ul>');
INSERT INTO `yufu_model` VALUES ('2', '产品模型', 'Product', '12', '条数据', '上一页', '下一页', '首页', '末页', '<ul><li>%first%</li><li>%upPage%</li><li>%linkPage%</li><li>%downPage%</li><li>%end%</li><li><span class=\\\"pageinfo\\\">共 <strong>%totalRow%</strong> %header% <strong>%nowPage%/%totalPage%</strong>页</span></li></ul>');
INSERT INTO `yufu_model` VALUES ('3', '下载模型', 'Download', '10', '条数据', '上一页', '下一页', '首页', '末页', '<ul><li>%first%</li><li>%upPage%</li><li>%linkPage%</li><li>%downPage%</li><li>%end%</li><li><span class=\\\"pageinfo\\\">共 <strong>%totalRow%</strong> %header% <strong>%nowPage%/%totalPage%</strong>页</span></li></ul>');
INSERT INTO `yufu_model` VALUES ('4', '图片模型', 'Photo', '12', '条数据', '上一页', '下一页', '首页', '末页', '<ul><li>%first%</li><li>%upPage%</li><li>%linkPage%</li><li>%downPage%</li><li>%end%</li><li><span class=\\\"pageinfo\\\">共 <strong>%totalRow%</strong> %header% <strong>%nowPage%/%totalPage%</strong>页</span></li></ul>');
INSERT INTO `yufu_model` VALUES ('5', '单页模型', 'Content', '10', '条数据', '上一页', '下一页', '首页', '末页', '<ul><li>%first%</li><li>%upPage%</li><li>%linkPage%</li><li>%downPage%</li><li>%end%</li><li><span class=\"pageinfo\"><strong>%totalRow%</strong>%header% 共<strong>%nowPage%/%totalPage%</strong>页</span></li></ul>');

-- ----------------------------
-- Table structure for `yufu_node`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_node`;
CREATE TABLE `yufu_node` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) default NULL,
  `status` tinyint(1) default '0',
  `remark` varchar(255) default NULL,
  `sort` smallint(6) unsigned default NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_node
-- ----------------------------
INSERT INTO `yufu_node` VALUES ('49', 'read', '查看', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('40', 'Index', '我的信息', '1', null, '1', '91', '2', '0');
INSERT INTO `yufu_node` VALUES ('39', 'index', '列表', '-1', null, '0', '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('37', 'resume', '恢复', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('36', 'forbid', '禁用', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('35', 'foreverdelete', '删除', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('34', 'update', '更新', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('33', 'edit', '修改', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('32', 'insert', '写入', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('31', 'add', '添加', '-1', null, null, '30', '3', '0');
INSERT INTO `yufu_node` VALUES ('30', 'Public', '公共模块', '-1', null, '2', '91', '2', '0');
INSERT INTO `yufu_node` VALUES ('69', 'Article', '文章管理', '-1', null, '1', '87', '2', '0');
INSERT INTO `yufu_node` VALUES ('7', 'User', '管理员管理', '1', '', '7', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('6', 'Role', '权限组管理', '1', '', '9', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('2', 'Node', '菜单管理', '1', '', '11', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('92', 'index', '列表', '1', null, null, '7', '3', '0');
INSERT INTO `yufu_node` VALUES ('50', 'index', '系统信息', '1', null, '0', '40', '3', '0');
INSERT INTO `yufu_node` VALUES ('83', 'Category', '栏目管理', '-1', null, '1', '87', '2', '0');
INSERT INTO `yufu_node` VALUES ('84', 'Link', '友情链接', '1', '', '0', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('87', 'Content', '内容管理', '-1', null, '1', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('86', 'Set', '站点设置', '1', null, '0', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('88', 'Model', '模块管理', '1', null, '2', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('89', 'System', '系统管理', '1', null, '4', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('90', 'Vip', '会员管理', '-1', null, '3', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('91', 'Home', '起始页', '0', '', '0', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('93', 'add', '添加', '-1', null, '0', '83', '3', '0');
INSERT INTO `yufu_node` VALUES ('94', 'add', '添加', '-1', null, '0', '69', '3', '0');
INSERT INTO `yufu_node` VALUES ('95', 'edit', '修改', '-1', null, '1', '69', '3', '0');
INSERT INTO `yufu_node` VALUES ('96', 'edit', '修改', '-1', null, '0', '83', '3', '0');
INSERT INTO `yufu_node` VALUES ('97', 'add', '添加', '1', null, '0', '84', '3', '0');
INSERT INTO `yufu_node` VALUES ('98', 'Vip', '会员管理', '-1', null, '0', '90', '2', '0');
INSERT INTO `yufu_node` VALUES ('99', 'lobal', '全局', '-1', null, '0', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('100', '', null, '-1', null, '0', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('101', 'Download', '下载管理', '-1', null, '1', '87', '2', '0');
INSERT INTO `yufu_node` VALUES ('102', 'Pic', '图片管理', '-1', null, '2', '87', '2', '0');
INSERT INTO `yufu_node` VALUES ('103', 'Category', '栏目管理', '1', '', '5', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('104', 'Message', '留言管理', '1', '', '0', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('105', 'Databack', '数据备份', '1', '', '13', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('106', 'Datarecover', '数据恢复', '1', '', '15', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('107', 'Announce', '公告管理', '1', '', '3', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('108', 'Other', '扩展功能', '1', '', '9', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('109', 'Sitemap', 'sitemap', '1', '', '5', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('110', 'Tag', '基本标签', '-1', '', '8', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('111', 'App', '手机APP', '1', '', '3', '0', '1', '0');
INSERT INTO `yufu_node` VALUES ('112', 'Appmodel', 'APP模板设置', '1', '', '0', '111', '2', '0');
INSERT INTO `yufu_node` VALUES ('113', 'Appcreate', 'APP生成下载', '1', '', '1', '111', '2', '0');
INSERT INTO `yufu_node` VALUES ('114', 'Pageset', '分页设置', '1', '', '10', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('182', 'add', '添加', '1', null, '0', '178', '3', '0');
INSERT INTO `yufu_node` VALUES ('116', 'Annex', '附件管理', '1', '', '10', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('117', 'Member', '会员管理', '1', '', '11', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('118', 'Membergroup', '会员组管理', '1', '', '13', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('119', 'Order', '订单管理', '1', '', '0', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('120', 'index', '列表', '1', null, '0', '84', '3', '0');
INSERT INTO `yufu_node` VALUES ('121', 'edit', '修改', '1', null, '0', '84', '3', '0');
INSERT INTO `yufu_node` VALUES ('122', 'add', '添加', '1', null, '0', '107', '3', '0');
INSERT INTO `yufu_node` VALUES ('123', 'foreverdelete', '删除', '1', null, '0', '84', '3', '0');
INSERT INTO `yufu_node` VALUES ('124', 'index', '列表', '1', null, '0', '107', '3', '0');
INSERT INTO `yufu_node` VALUES ('125', 'edit', '修改', '1', null, '0', '107', '3', '0');
INSERT INTO `yufu_node` VALUES ('126', 'foreverdelete', '删除', '1', null, '0', '107', '3', '0');
INSERT INTO `yufu_node` VALUES ('127', 'add', '添加', '1', null, '0', '104', '3', '0');
INSERT INTO `yufu_node` VALUES ('128', 'foreverdelete', '删除', '1', null, '0', '104', '3', '0');
INSERT INTO `yufu_node` VALUES ('129', 'edit', '回复', '1', null, '0', '104', '3', '0');
INSERT INTO `yufu_node` VALUES ('130', 'checkPass', '批准', '1', null, '0', '104', '3', '0');
INSERT INTO `yufu_node` VALUES ('131', 'index', '列表', '1', null, '0', '104', '3', '0');
INSERT INTO `yufu_node` VALUES ('132', 'index', '列表', '1', null, '0', '119', '3', '0');
INSERT INTO `yufu_node` VALUES ('133', 'checkPass', '发货', '1', null, '0', '119', '3', '0');
INSERT INTO `yufu_node` VALUES ('134', 'over', '已收到货', '1', null, '0', '119', '3', '0');
INSERT INTO `yufu_node` VALUES ('135', 'forbid', '退货', '1', null, '0', '119', '3', '0');
INSERT INTO `yufu_node` VALUES ('136', 'edit', '查看订单详细', '1', null, '0', '119', '3', '0');
INSERT INTO `yufu_node` VALUES ('137', 'index', '生成', '1', null, '0', '109', '3', '0');
INSERT INTO `yufu_node` VALUES ('138', 'add', '添加', '1', null, '0', '108', '3', '0');
INSERT INTO `yufu_node` VALUES ('139', 'index', '列表', '1', null, '0', '108', '3', '0');
INSERT INTO `yufu_node` VALUES ('140', 'edit', '修改', '1', null, '0', '108', '3', '0');
INSERT INTO `yufu_node` VALUES ('141', 'foreverdelete', '删除', '1', null, '0', '108', '3', '0');
INSERT INTO `yufu_node` VALUES ('142', 'add', '添加', '1', null, '0', '117', '3', '0');
INSERT INTO `yufu_node` VALUES ('143', 'index', '列表', '1', null, '0', '117', '3', '0');
INSERT INTO `yufu_node` VALUES ('144', 'edit', '修改', '1', null, '0', '117', '3', '0');
INSERT INTO `yufu_node` VALUES ('145', 'foreverdelete', '删除', '1', null, '0', '117', '3', '0');
INSERT INTO `yufu_node` VALUES ('146', 'add', '添加', '1', null, '0', '118', '3', '0');
INSERT INTO `yufu_node` VALUES ('147', 'index', '列表', '1', null, '0', '118', '3', '0');
INSERT INTO `yufu_node` VALUES ('148', 'edit', '修改', '1', null, '0', '118', '3', '0');
INSERT INTO `yufu_node` VALUES ('149', 'foreverdelete', '删除', '1', null, '0', '118', '3', '0');
INSERT INTO `yufu_node` VALUES ('150', 'index', '选择模板', '1', null, '0', '112', '3', '0');
INSERT INTO `yufu_node` VALUES ('151', 'index', 'app生成', '1', null, '0', '113', '3', '0');
INSERT INTO `yufu_node` VALUES ('152', 'index', '查看', '1', null, '0', '86', '3', '0');
INSERT INTO `yufu_node` VALUES ('153', 'add', '添加', '1', null, '0', '103', '3', '0');
INSERT INTO `yufu_node` VALUES ('154', 'index', '列表', '1', null, '0', '103', '3', '0');
INSERT INTO `yufu_node` VALUES ('155', 'edit', '修改', '1', null, '0', '103', '3', '0');
INSERT INTO `yufu_node` VALUES ('156', 'foreverdelete', '删除', '1', null, '0', '103', '3', '0');
INSERT INTO `yufu_node` VALUES ('157', 'add', '添加', '1', null, '0', '7', '3', '0');
INSERT INTO `yufu_node` VALUES ('158', 'edit', '修改', '1', null, '0', '7', '3', '0');
INSERT INTO `yufu_node` VALUES ('159', 'foreverdelete', '删除', '1', null, '0', '7', '3', '0');
INSERT INTO `yufu_node` VALUES ('160', 'index', '列表', '1', null, '0', '6', '3', '0');
INSERT INTO `yufu_node` VALUES ('161', 'add', '添加', '1', null, '0', '6', '3', '0');
INSERT INTO `yufu_node` VALUES ('162', 'edit', '修改', '1', null, '0', '6', '3', '0');
INSERT INTO `yufu_node` VALUES ('163', 'foreverdelete', '删除', '1', null, '0', '6', '3', '0');
INSERT INTO `yufu_node` VALUES ('164', 'index', '设置', '1', null, '0', '114', '3', '0');
INSERT INTO `yufu_node` VALUES ('165', 'role', '授权', '1', null, '0', '6', '3', '0');
INSERT INTO `yufu_node` VALUES ('166', 'index', '设置', '1', null, '0', '116', '3', '0');
INSERT INTO `yufu_node` VALUES ('167', 'index', '列表', '1', null, '0', '2', '3', '0');
INSERT INTO `yufu_node` VALUES ('168', 'add', '添加', '1', null, '0', '2', '3', '0');
INSERT INTO `yufu_node` VALUES ('169', 'edit', '修改', '1', null, '0', '2', '3', '0');
INSERT INTO `yufu_node` VALUES ('170', 'foreverdelete', '删除', '1', null, '0', '2', '3', '0');
INSERT INTO `yufu_node` VALUES ('171', 'index', '显示', '1', null, '0', '105', '3', '0');
INSERT INTO `yufu_node` VALUES ('172', 'back', '备份', '1', null, '0', '105', '3', '0');
INSERT INTO `yufu_node` VALUES ('173', 'index', '列表', '1', null, '0', '106', '3', '0');
INSERT INTO `yufu_node` VALUES ('174', 'recover', '恢复', '1', null, '0', '106', '3', '0');
INSERT INTO `yufu_node` VALUES ('175', 'deletebak', '删除', '1', null, '0', '106', '3', '0');
INSERT INTO `yufu_node` VALUES ('176', 'downloadBak', '下载', '1', null, '0', '106', '3', '0');
INSERT INTO `yufu_node` VALUES ('181', 'index', '查看', '1', null, '0', '178', '3', '0');
INSERT INTO `yufu_node` VALUES ('178', 'Chain', '内链优化', '1', null, '4', '88', '2', '0');
INSERT INTO `yufu_node` VALUES ('180', 'Clearcache', '清除缓存', '1', null, '25', '89', '2', '0');
INSERT INTO `yufu_node` VALUES ('183', 'edit', '修改', '1', null, '0', '178', '3', '0');
INSERT INTO `yufu_node` VALUES ('184', 'foreverdelete', '删除', '1', null, '0', '178', '3', '0');
INSERT INTO `yufu_node` VALUES ('185', 'Slide', '幻灯片管理', '1', '', '4', '88', '2', '0');

-- ----------------------------
-- Table structure for `yufu_order`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_order`;
CREATE TABLE `yufu_order` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` varchar(50) default NULL,
  `memberid` int(11) default NULL,
  `ip` varchar(30) default NULL,
  `name` varchar(30) default NULL,
  `tel` varchar(50) default NULL,
  `address` varchar(255) default NULL,
  `email` varchar(30) default NULL,
  `totalprice` float(9,2) default NULL,
  `remark` text,
  `status` tinyint(1) default NULL,
  `create_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_order
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_orderdetail`;
CREATE TABLE `yufu_orderdetail` (
  `id` int(11) NOT NULL auto_increment,
  `orderid` int(11) default NULL,
  `proid` int(11) default NULL,
  `price` float(9,2) default NULL,
  `num` int(11) default NULL,
  `allprice` float(9,2) default NULL,
  `status` int(11) default NULL,
  `create_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_other`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_other`;
CREATE TABLE `yufu_other` (
  `id` int(11) NOT NULL auto_increment,
  `setname` varchar(80) default NULL,
  `settag` varchar(80) default NULL,
  `setvalue` text,
  `setexplain` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_other
-- ----------------------------
INSERT INTO `yufu_other` VALUES ('1', 'CNZZ流量统计', 'cnzzstatistics', '', '');
INSERT INTO `yufu_other` VALUES ('3', '51啦流量统计', 'lastatistics', '', '');
INSERT INTO `yufu_other` VALUES ('4', '365webcall在线客服', 'services', '', '');
INSERT INTO `yufu_other` VALUES ('5', '加为收藏', 'collect', '<a href=\"javascript:window.external.AddFavorite(\'http://www.yufu5.com\',\'鱼福网\')\"><img src=\"/yufucms_qy/Apps/Tpl/default/Public/images/jrsc.jpg\"></a>', '');
INSERT INTO `yufu_other` VALUES ('6', '设为首页', 'homepage', '<a href=\" \" onclick=\"this.style.behavior=\'url(#default#homepage)\';this.setHomePage(\'http://www.yufu5.com\');\"><img src=\"/yufucms_qy/Apps/Tpl/default/Public/images/swsy.jpg\" /></a>', '');
INSERT INTO `yufu_other` VALUES ('9', '网站底部版权信息等', 'footer', '<font face=\"宋体\">版权所有：<a href=\"http://www.yufu5.com\" target=\"_self\">鱼福网</a> 地址：XX市XX路XX街 售前咨询：400-888-8888 <br>售后服务：400-888-8888 传真：029-88888888 技术支持：<a href=\"http://www.yufu5.com\" target=\"_self\" >鱼福网</a></font>', '');
INSERT INTO `yufu_other` VALUES ('8', '全国统一服务热线', 'lxdh', '<span style=\"padding-bottom:10px;\">全国统一服务热线：</span><span style=\"color:red;font-size:25px;font-weight: bold\">400-888-8888</span>', '');
INSERT INTO `yufu_other` VALUES ('10', '手机版二维码', 'appclient', '<a href=\"index.php?m=content&a=index&id=48\" target=\"_blank\"><img src=\"./Uploads/qrcode.png\" /></a>', '');
INSERT INTO `yufu_other` VALUES ('11', '百度分享插件', 'bdshare', '<!-- Baidu Button BEGIN -->\r\n<script type=\"text/javascript\" id=\"bdshare_js\" data=\"type=slide&amp;img=2&amp;pos=left&amp;uid=6598355\" ></script>\r\n<script type=\"text/javascript\" id=\"bdshell_js\"></script>\r\n<script type=\"text/javascript\">\r\ndocument.getElementById(\"bdshell_js\").src = \"http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=\" + Math.ceil(new Date()/3600000);\r\n</script>\r\n<!-- Baidu Button END -->', '');
INSERT INTO `yufu_other` VALUES ('17', '售后客服QQ', 'qq2', '<a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=315231371&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:315231371:41 &r=0.3571578827686608\" alt=\"点击这里给我发消息\" title=\"点击这里给我发消息\"></a>', '');
INSERT INTO `yufu_other` VALUES ('18', '售前咨询QQ', 'qq1', '<a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&uin=315231371&site=qq&menu=yes\"><img border=\"0\" src=\"http://wpa.qq.com/pa?p=2:315231371:41 &r=0.3571578827686608\" alt=\"点击这里给我发消息\" title=\"点击这里给我发消息\"></a>', '');

-- ----------------------------
-- Table structure for `yufu_photo`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_photo`;
CREATE TABLE `yufu_photo` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) default NULL,
  `title` varchar(255) default NULL,
  `thumb` text,
  `keywords` varchar(50) default NULL,
  `description` text,
  `url` text,
  `content` text,
  `listorder` int(11) default NULL,
  `create_time` int(11) default NULL,
  `update_time` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `hits` int(11) default NULL,
  `photo1` varchar(255) default NULL,
  `photo2` varchar(255) default NULL,
  `photo3` varchar(255) default NULL,
  `photo4` varchar(255) default NULL,
  `photo5` varchar(255) default NULL,
  `photo_url1` varchar(255) default NULL,
  `photo_url2` varchar(255) default NULL,
  `photo_url3` varchar(255) default NULL,
  `photo_url4` varchar(255) default NULL,
  `photo_url5` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_photo
-- ----------------------------
INSERT INTO `yufu_photo` VALUES ('7', '44', '经典案例1', '/2013/07/20/51ea67302a049.jpg', '', null, null, '<p style=\"text-indent:2em;\">经过绵阳合作伙伴与总公司王经理的充分配合与协调下，经过2周时间对“绵阳耳鼻喉医院”成功实施了《千业医院管理系统》，顺利进行了安装、调试、二次开发及培训工作。</p><p><br /></p><p style=\"text-indent:2em;\">绵阳耳鼻喉医院是一家重点专科医院，此次千业HIS系统的成功实施，标志着《千业医院管理系统》由原来致力于综合性医院信息化解决方案提供者向具备极具专业性医院系统使用的融合。</p><p><br /></p>', null, '1374316336', null, '1', '10', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `yufu_product`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_product`;
CREATE TABLE `yufu_product` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) default NULL,
  `title` varchar(80) default NULL,
  `thumb` text,
  `price` float(13,2) default NULL,
  `guige` varchar(80) default NULL,
  `description` text,
  `url` text,
  `content` text,
  `listorder` int(11) default '0',
  `create_time` int(11) default NULL,
  `update_time` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_product
-- ----------------------------
INSERT INTO `yufu_product` VALUES ('21', '41', '产品名称1', '/2013/07/20/51ea4db94474c.jpg', '1880.00', '', null, null, '<p style=\"text-indent:2em;\">千业医院管理系统是根据卫生部《医院信息系统功能规范》而研发设计，围绕三大业务中心（医疗管理中心、经济中心和管理决策中心），产品全面覆盖医院管理的各个业务层面和环节，合理组织医院管理流程，提高工作效率，提升对病人的服务质量。是专门针对大中小型医院、乡镇卫生院和个体诊所而量身定做的信息化管理系统。<br /></p><p style=\"text-indent:2em;\">产品分为两个大类：千业医院管理信息系统V3.0和千业门诊管理系统。安装简单，操作方便，人性化设计，公司在强调数据安全性的同时，秉承“一看就懂，一学就会”的开发理念，强调软件的实用性和易用性的完美结合。五年以来，千业科技为数百家医院进行了成功的信息化实施，产品都保持了非常好的稳定性。<br /></p><p style=\"text-indent:0em;\"><br /></p><p style=\"text-indent:0em;\">千业医院管理系统的主要功能模块：<br /></p><ol style=\"list-style-type:decimal;\"><li><p>门诊收费子系统：门诊划价收费子系统 、门诊收费 </p></li><li><p>住院管理子系统：入/出院管理子系统、住院收费子系统、病床管理子系统</p></li><li><p>药库管理子系统：药品管理子系统</p></li><li><p>药房管理子系统：处方管理子系统、药品管理子系统</p></li><li><p>病案管理子系统：病案档案管理子系统、手术信息管理子系统、病案统计子系统</p></li><li><p>财务监管子系统：收费员发票管理子系统、收费员结帐子系统、查询统计子系统</p></li><li><p>院长查询子系统：院长查询系统</p></li><li><p>社保接口子系统：与当地社保系统的数据接口</p></li><li><p>系统设置子系统：系统设置子系统</p></li><li><p>医生工作站子系统：门诊医生子系统、住院医生子系统。</p></li><li><p>护士工作站子系统：护士工作站管理</p></li><li><p>物资库房管理系统：物资库房的管理 </p></li></ol><p style=\"text-indent:0em;\"><br /></p>', '0', '1365566192', '1374309817', '1', '5');
INSERT INTO `yufu_product` VALUES ('22', '42', '产品名称2', '/2013/07/20/51ea4e3506c19.jpg', '1880.00', '', null, null, '<p style=\"text-indent:2em;\">千业医院管理系统是根据卫生部《医院信息系统功能规范》而研发设计，围绕三大业务中心（医疗管理中心、经济中心和管理决策中心），产品全面覆盖医院管理的各个业务层面和环节，合理组织医院管理流程，提高工作效率，提升对病人的服务质量。是专门针对大中小型医院、乡镇卫生院和个体诊所而量身定做的信息化管理系统。</p><p><br /></p><p style=\"text-indent:2em;\">产品分为两个大类：千业医院管理信息系统V3.0和千业门诊管理系统。安装简单，操作方便，人性化设计，公司在强调数据安全性的同时，秉承“一看就懂，一学就会”的开发理念，强调软件的实用性和易用性的完美结合。五年以来，千业科技为数百家医院进行了成功的信息化实施，产品都保持了非常好的稳定性。</p><p><br /></p><p>千业医院管理系统的主要功能模块：</p><ol style=\"list-style-type:decimal;\"><li><p>门诊收费子系统：门诊划价收费子系统 、门诊收费 </p></li><li><p>住院管理子系统：入/出院管理子系统、住院收费子系统、病床管理子系统</p></li><li><p>药库管理子系统：药品管理子系统</p></li><li><p>药房管理子系统：处方管理子系统、药品管理子系统</p></li><li><p>病案管理子系统：病案档案管理子系统、手术信息管理子系统、病案统计子系统</p></li><li><p>财务监管子系统：收费员发票管理子系统、收费员结帐子系统、查询统计子系统</p></li><li><p>院长查询子系统：院长查询系统</p></li><li><p>社保接口子系统：与当地社保系统的数据接口</p></li><li><p>系统设置子系统：系统设置子系统</p></li><li><p>医生工作站子系统：门诊医生子系统、住院医生子系统。</p></li><li><p>护士工作站子系统：护士工作站管理</p></li><li><p>物资库房管理系统：物资库房的管理 </p></li></ol><p><br /></p>', '0', '1374309941', null, '1', '4');
INSERT INTO `yufu_product` VALUES ('23', '43', '产品名称3', '/2013/07/20/51ea509dc6b03.jpg', '1880.00', '', null, null, '<p style=\"text-indent:2em;\">千业医院管理系统是根据卫生部《医院信息系统功能规范》而研发设计，围绕三大业务中心（医疗管理中心、经济中心和管理决策中心），产品全面覆盖医院管理的各个业务层面和环节，合理组织医院管理流程，提高工作效率，提升对病人的服务质量。是专门针对大中小型医院、乡镇卫生院和个体诊所而量身定做的信息化管理系统。</p><p><br /></p><p style=\"text-indent:2em;\">产品分为两个大类：千业医院管理信息系统V3.0和千业门诊管理系统。安装简单，操作方便，人性化设计，公司在强调数据安全性的同时，秉承“一看就懂，一学就会”的开发理念，强调软件的实用性和易用性的完美结合。五年以来，千业科技为数百家医院进行了成功的信息化实施，产品都保持了非常好的稳定性。</p><p><br /></p><p>千业医院管理系统的主要功能模块：</p><ol style=\"list-style-type:decimal;\"><li><p>门诊收费子系统：门诊划价收费子系统 、门诊收费 </p></li><li><p>住院管理子系统：入/出院管理子系统、住院收费子系统、病床管理子系统</p></li><li><p>药库管理子系统：药品管理子系统</p></li><li><p>药房管理子系统：处方管理子系统、药品管理子系统</p></li><li><p>病案管理子系统：病案档案管理子系统、手术信息管理子系统、病案统计子系统</p></li><li><p>财务监管子系统：收费员发票管理子系统、收费员结帐子系统、查询统计子系统</p></li><li><p>院长查询子系统：院长查询系统</p></li><li><p>社保接口子系统：与当地社保系统的数据接口</p></li><li><p>系统设置子系统：系统设置子系统</p></li><li><p>医生工作站子系统：门诊医生子系统、住院医生子系统。</p></li><li><p>护士工作站子系统：护士工作站管理</p></li><li><p>物资库房管理系统：物资库房的管理 </p></li></ol><p><br /></p>', '0', '1374310557', null, '1', '11');

-- ----------------------------
-- Table structure for `yufu_role`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_role`;
CREATE TABLE `yufu_role` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `status` tinyint(1) default NULL,
  `remark` varchar(255) default NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_role
-- ----------------------------
INSERT INTO `yufu_role` VALUES ('8', '系统管理员', '1', null, '1358056022', '0');
INSERT INTO `yufu_role` VALUES ('9', '普通管理员', '1', null, '1358056215', '0');

-- ----------------------------
-- Table structure for `yufu_set`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_set`;
CREATE TABLE `yufu_set` (
  `id` int(11) NOT NULL auto_increment,
  `errorcount` int(11) default NULL,
  `errorinterval` int(11) default NULL,
  `messageinterval` int(11) default '0',
  `verifykey` varchar(255) default NULL,
  `verifyurl` varchar(500) default NULL,
  `logo` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_set
-- ----------------------------
INSERT INTO `yufu_set` VALUES ('21', '5', '300', '60', null, null, '/2013/07/20/51ea4a3d95f24.gif');

-- ----------------------------
-- Table structure for `yufu_shopcart`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_shopcart`;
CREATE TABLE `yufu_shopcart` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(11) default NULL,
  `proid` int(11) default NULL,
  `num` int(11) default NULL,
  `status` int(11) default NULL,
  `create_time` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_slide`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_slide`;
CREATE TABLE `yufu_slide` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `img` varchar(500) default NULL,
  `url` varchar(500) default NULL,
  `listorder` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_slide
-- ----------------------------
INSERT INTO `yufu_slide` VALUES ('10', '广告位1', '/2013/07/20/51ea3ee64ac41.jpg', '#', '0', '1');
INSERT INTO `yufu_slide` VALUES ('11', '广告位2', '/2013/07/20/51ea3ef5ede02.jpg', '#', '0', '1');
INSERT INTO `yufu_slide` VALUES ('12', '广告位3', '/2013/07/20/51ea3f0790b27.jpg', '#', '0', '1');
INSERT INTO `yufu_slide` VALUES ('13', '广告位4', '/2013/07/20/51ea3f17ee102.png', '#', '0', '1');

-- ----------------------------
-- Table structure for `yufu_tjdate`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_tjdate`;
CREATE TABLE `yufu_tjdate` (
  `id` int(11) NOT NULL auto_increment,
  `create_date` int(11) default NULL,
  `create_num` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_tjdate
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_tjurl`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_tjurl`;
CREATE TABLE `yufu_tjurl` (
  `id` int(11) NOT NULL auto_increment,
  `create_url` varchar(255) default NULL,
  `create_num` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_tjurl
-- ----------------------------

-- ----------------------------
-- Table structure for `yufu_user`
-- ----------------------------
DROP TABLE IF EXISTS `yufu_user`;
CREATE TABLE `yufu_user` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `last_login_time` int(11) unsigned default '0',
  `last_login_ip` varchar(40) default NULL,
  `login_count` mediumint(8) unsigned default '0',
  `error_count` mediumint(8) default '0',
  `error_login_time` int(11) default NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) default NULL,
  `role_id` mediumint(9) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `account` USING BTREE (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yufu_user
-- ----------------------------
