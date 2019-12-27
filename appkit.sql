/*
Navicat MySQL Data Transfer

Source Server         : hongchen
Source Server Version : 50644
Source Host           : 49.235.87.152:3306
Source Database       : appkit

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2019-12-27 10:13:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kit_about
-- ----------------------------
DROP TABLE IF EXISTS `kit_about`;
CREATE TABLE `kit_about` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `about_pic` varchar(255) NOT NULL COMMENT '图片',
  `about_title` varchar(50) NOT NULL COMMENT '标题',
  `about_content` varchar(255) NOT NULL COMMENT '内容',
  `about_views` int(3) NOT NULL DEFAULT '1' COMMENT '是否展示 1展示 2不展示',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='about';

-- ----------------------------
-- Records of kit_about
-- ----------------------------
INSERT INTO `kit_about` VALUES ('6', '/uploads/20190723\\5ddd07a6b8add9383d7f5cd71969745d.png', 'pc端开发', '企业官网开发、商城开发、管理系统开发、', '1', '2019-07-23 12:01:28', '2019-07-23 12:01:28');
INSERT INTO `kit_about` VALUES ('7', '/uploads/20190723\\d858e6bfe88ebae780fb0204fdcfb531.png', '运营及策划', '新媒体运营、产品设计、产品规划、UI设计、原型设计', '1', '2019-07-23 13:09:36', '2019-07-23 13:09:36');
INSERT INTO `kit_about` VALUES ('8', '/uploads/20190723\\6c3e2d7b60af28fb64ab7030df57393e.png', '移动端开发', 'APP开发、微信公众号开发、微信小程序开发、移动端网站开发', '1', '2019-07-23 15:46:15', '2019-07-23 15:46:15');

-- ----------------------------
-- Table structure for kit_access
-- ----------------------------
DROP TABLE IF EXISTS `kit_access`;
CREATE TABLE `kit_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `access_name` varchar(50) NOT NULL COMMENT '权限名称',
  `access_url` varchar(100) NOT NULL COMMENT '权限的地址',
  `access_prent_id` int(11) NOT NULL COMMENT '上级权限',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kit_access
-- ----------------------------

-- ----------------------------
-- Table structure for kit_contact_tool
-- ----------------------------
DROP TABLE IF EXISTS `kit_contact_tool`;
CREATE TABLE `kit_contact_tool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_tool_name` varchar(50) NOT NULL COMMENT '联系工具名称',
  `contact_tool_value` varchar(255) NOT NULL COMMENT '联系工具 代码值',
  `contact_tool_img` varchar(255) NOT NULL COMMENT '联系工具图标',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='联系工具表';

-- ----------------------------
-- Records of kit_contact_tool
-- ----------------------------
INSERT INTO `kit_contact_tool` VALUES ('1', 'twitte', 'fab fa-twitter', '/lcon\\20190724172703.png', '2019-07-24 16:48:10', '2019-07-24 16:48:13');
INSERT INTO `kit_contact_tool` VALUES ('2', 'facebook', 'fab fa-facebook-f', '/lcon\\20190724172710.png', '2019-07-24 16:48:10', '2019-07-24 16:48:13');
INSERT INTO `kit_contact_tool` VALUES ('3', 'github', 'fab fa-github', '/lcon\\20190724172713.png', '2019-07-24 16:48:10', '2019-07-24 16:48:13');
INSERT INTO `kit_contact_tool` VALUES ('4', 'dribbble', 'fab fa-dribbble', '/lcon\\20190724172717.png', '2019-07-24 16:48:10', '2019-07-24 16:48:13');
INSERT INTO `kit_contact_tool` VALUES ('5', 'globe', 'fas fa-globe', '/lcon\\20190724172725.png', '2019-07-24 16:48:10', '2019-07-24 16:48:13');
INSERT INTO `kit_contact_tool` VALUES ('6', 'medium', 'fab fa-medium-m', '/lcon\\20190724172722.png', '2019-07-24 16:48:10', '2019-07-24 16:48:13');

-- ----------------------------
-- Table structure for kit_features
-- ----------------------------
DROP TABLE IF EXISTS `kit_features`;
CREATE TABLE `kit_features` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `features_img` varchar(255) NOT NULL COMMENT '功能图片',
  `features_des` varchar(255) NOT NULL COMMENT '功能描述',
  `features_lcon_id` int(11) NOT NULL COMMENT '功能图标预留',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='feature功能表';

-- ----------------------------
-- Records of kit_features
-- ----------------------------
INSERT INTO `kit_features` VALUES ('12', '/uploads/20190808\\b9372994d7f3ac2770799d535eda2519.png', '新媒体运营案例', '2', '2019-07-24 15:17:27', '2019-08-08 13:28:30');
INSERT INTO `kit_features` VALUES ('13', '/uploads/20190808\\6504c84b175c3162ab928bbecf7354c2.png', '硬件开发案例', '3', '2019-07-24 15:18:04', '2019-08-08 13:25:50');
INSERT INTO `kit_features` VALUES ('14', '/uploads/20190808\\0e14efdc26f0f4fb7c28cefea41460a8.png', '视觉设计案例', '4', '2019-07-29 15:55:14', '2019-08-08 13:23:34');
INSERT INTO `kit_features` VALUES ('15', '/uploads/20190808\\da26637f7e9d8206f82505c6161fc9ba.png', '电商开发案例', '5', '2019-07-29 15:55:57', '2019-08-08 13:22:47');
INSERT INTO `kit_features` VALUES ('16', '/uploads/20190808\\d2bebda80e205defc643fb481ebd72d2.png', '微信开发案例', '6', '2019-07-29 15:56:23', '2019-08-08 13:21:52');
INSERT INTO `kit_features` VALUES ('17', '/uploads/20190808\\4905260f6008814ac25ceeba4572032f.png', '网站案例', '7', '2019-07-29 15:56:55', '2019-08-08 13:19:57');
INSERT INTO `kit_features` VALUES ('18', '/uploads/20190808\\e2750b7678f1c499f56fd821c8d7b7cb.png', 'APP案例', '8', '2019-07-29 15:57:21', '2019-08-08 13:16:46');

-- ----------------------------
-- Table structure for kit_introduction
-- ----------------------------
DROP TABLE IF EXISTS `kit_introduction`;
CREATE TABLE `kit_introduction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `introduction_title` varchar(50) NOT NULL COMMENT '简介标题',
  `introduction_content` varchar(1000) NOT NULL COMMENT '简介内容',
  `introduction_img` varchar(255) NOT NULL COMMENT '简介图片',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='introduction 表';

-- ----------------------------
-- Records of kit_introduction
-- ----------------------------
INSERT INTO `kit_introduction` VALUES ('4', ' ', ' ', '/uploads/20190808\\145fb3a586fa051295433a58b48a2dc9.jpg', '2019-07-29 09:19:11', '2019-08-08 14:30:17');
INSERT INTO `kit_introduction` VALUES ('5', ' ', ' ', '/uploads/20190808\\81d5ef099b70d797d4bc82d45ebfa102.jpg', '2019-07-29 09:34:41', '2019-08-08 14:28:01');
INSERT INTO `kit_introduction` VALUES ('6', ' ', ' ', '/uploads/20190808\\11fc1b9fb1abf995a114dbd5575380ed.jpg', '2019-07-29 09:48:13', '2019-08-08 14:29:05');

-- ----------------------------
-- Table structure for kit_lcon
-- ----------------------------
DROP TABLE IF EXISTS `kit_lcon`;
CREATE TABLE `kit_lcon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lcon_value` varchar(255) NOT NULL COMMENT '功能样式值',
  `lcon_pic` varchar(255) NOT NULL COMMENT '功能样式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='feature 功能小图';

-- ----------------------------
-- Records of kit_lcon
-- ----------------------------
INSERT INTO `kit_lcon` VALUES ('1', 'fas fa-magic mr-2', '/lcon\\20190723170811.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('2', 'fas fa-cubes mr-2', '/lcon\\20190723170737.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('3', 'fas fa-chart-bar mr-2', '/lcon\\20190723170806.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('4', 'fas fa-code mr-2', '/lcon\\20190723170817.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('5', 'fas fa-rocket mr-2', '/lcon\\20190723170834.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('6', 'fas fa-mobile-alt mr-2', '/lcon\\20190723170840.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('7', 'fas fa-star mr-2', '/lcon\\20190723170846.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');
INSERT INTO `kit_lcon` VALUES ('8', 'fas fa-heart mr-2', '/lcon\\20190723170851.png', '2019-07-23 17:12:29', '2019-07-23 17:12:35');

-- ----------------------------
-- Table structure for kit_pricing
-- ----------------------------
DROP TABLE IF EXISTS `kit_pricing`;
CREATE TABLE `kit_pricing` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pricing_title` varchar(50) NOT NULL COMMENT '标题',
  `pricing_licences_type` varchar(50) NOT NULL COMMENT '许可证类型',
  `pricing_money` varchar(20) NOT NULL COMMENT '金额',
  `pricing_single_Installation` int(3) NOT NULL DEFAULT '1' COMMENT 'pricing_single_Installation 1是  2否',
  `pricing_multiple_installations` int(3) NOT NULL DEFAULT '1' COMMENT ' Multiple installations 1是  2否',
  `pricing_link` int(3) NOT NULL DEFAULT '1' COMMENT ' Use without attribution link 1是 2否',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='pricing 表';

-- ----------------------------
-- Records of kit_pricing
-- ----------------------------
INSERT INTO `kit_pricing` VALUES ('1', 'FREE', 'CC BY 3.0', '0', '1', '1', '2', '2019-07-26 09:27:21', '2019-07-26 09:27:25');
INSERT INTO `kit_pricing` VALUES ('2', 'Single Application', 'Commercial License', '56', '1', '1', '2', '0000-00-00 00:00:00', '2019-07-26 10:26:36');
INSERT INTO `kit_pricing` VALUES ('3', 'Multiple Applications', 'Commercial License', '26', '2', '1', '1', '0000-00-00 00:00:00', '2019-07-26 10:10:16');

-- ----------------------------
-- Table structure for kit_team
-- ----------------------------
DROP TABLE IF EXISTS `kit_team`;
CREATE TABLE `kit_team` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `team_user_name` varchar(50) NOT NULL COMMENT '用户名',
  `team_user_img` varchar(255) NOT NULL COMMENT '员工头像',
  `team_user_postion` varchar(255) NOT NULL COMMENT '职位',
  `team_user_contact_tool` varchar(50) NOT NULL COMMENT '沟通、联系工具',
  `team_user_des` varchar(1000) NOT NULL COMMENT '人员描述',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='team团队';

-- ----------------------------
-- Records of kit_team
-- ----------------------------
INSERT INTO `kit_team` VALUES ('8', 'Xiaoying Riley', '/uploads/20190725\\d716ced6cfe40dedf4b3b497918e4946.png', 'Full-Stack Designer', 'twitte,facebook,github,dribbble', 'Xiaoying is the UX/UI designer behind AppKit Landing. She makes free Bootstrap themes for developers. You can find her sharing useful UX and webdev related content on Twitter and Facebook. Follow her if you like what she does!', '2019-07-25 17:53:59', '2019-07-26 09:11:55');
INSERT INTO `kit_team` VALUES ('9', 'Tomasz Najdek', '/uploads/20190729\\0c544a6c6b1a0f8c35b95cdd07b687a0.png', 'Full-Stack Developer', 'facebook,github,dribbble', 'Tom is a full-stack developer specialising in building large, scalable and user-friendly web apps. Follow him on Twitter for fresh developer tips and check out his Github for useful open-source tools.', '2019-07-25 17:54:41', '2019-07-29 09:29:10');

-- ----------------------------
-- Table structure for kit_testimonials
-- ----------------------------
DROP TABLE IF EXISTS `kit_testimonials`;
CREATE TABLE `kit_testimonials` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `testimonials_name` varchar(50) NOT NULL COMMENT 'testimonials名字',
  `testimonials_img` varchar(255) NOT NULL COMMENT 'testimonials头像',
  `testimonials_address` varchar(50) NOT NULL COMMENT 'testimonials 地址',
  `testimonials_comment` varchar(1000) NOT NULL COMMENT 'testimonials_评语',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`,`testimonials_img`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='testimonials 表';

-- ----------------------------
-- Records of kit_testimonials
-- ----------------------------
INSERT INTO `kit_testimonials` VALUES ('3', '服务到位', '/uploads/20190726\\2e34563ce5dc5825f90f892fca9dbbf2.png', ' ', '一站式服务能全面准确的把握客户企业的整体需求，从而为每个客户提供专属的高端定制化服务，最大程度的规避业务功能模块之间的冲突\n', '2019-07-26 13:51:58', '2019-08-08 14:05:14');
INSERT INTO `kit_testimonials` VALUES ('4', '自主核心技术', '/uploads/20190726\\cf5dd3d4c8978af666a0035ead5ada9f.png', ' ', '凯拓是一家拥有45人开发团队的互联网软件开发公司，人均从业实际4年。拥有10年以上软件开发工程师5人，团队成员教授、硕士、学士28人。\n', '2019-07-26 14:09:07', '2019-08-08 14:21:35');
INSERT INTO `kit_testimonials` VALUES ('5', '人才配备齐全', '/uploads/20190729\\e2c8d1ddbb506bed735bd180983a0585.png', ' ', '我们拥有一批优秀的高度职业化专业化的经营管理人才和专业技术人才\n', '2019-07-29 15:50:57', '2019-08-08 14:04:20');
INSERT INTO `kit_testimonials` VALUES ('6', '管理体制完善', '/uploads/20190729\\e995a6e904acb34360b82efb0a8b3ace.png', ' ', '我们拥有丰富的项目管理经验，具备完善的管理制度体系\n', '2019-07-29 15:51:26', '2019-08-08 14:05:27');

-- ----------------------------
-- Table structure for kit_tico
-- ----------------------------
DROP TABLE IF EXISTS `kit_tico`;
CREATE TABLE `kit_tico` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tico_modular` varchar(50) NOT NULL COMMENT '模块',
  `tico_title` varchar(50) NOT NULL COMMENT '标题',
  `tico_content` varchar(1000) NOT NULL COMMENT '内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='tico';

-- ----------------------------
-- Records of kit_tico
-- ----------------------------
INSERT INTO `kit_tico` VALUES ('2', 'About', '业务范围', '天津凯拓科技是一家软件开发、电商运营、新媒体运营、智能硬件开发为主要业务的互联网科技型公司！', '2019-07-29 14:14:13', '2019-08-08 13:58:18');
INSERT INTO `kit_tico` VALUES ('3', 'Testimonials', '企业优势', '我们拥有专业的开发团队，经验丰富的管理人员', '2019-07-29 14:14:13', '2019-08-08 14:02:25');
INSERT INTO `kit_tico` VALUES ('4', 'Features', '精选案例展示', '我司业务案例展示，更多精彩案例请与我们联系获取！', '2019-07-29 14:14:13', '2019-08-08 13:33:33');
INSERT INTO `kit_tico` VALUES ('5', 'Team', '团队介绍', '凯拓软件现有成员45人，作为一个由年轻人组成的团队，具备了新一代年轻人应有的态度，创造力、学习力、认真、朝气蓬勃。面对工作一丝不苟，面对困难咬牙坚持。是一个有发展有未来的团队。\n\n', '2019-07-29 14:14:13', '2019-08-08 14:36:50');
INSERT INTO `kit_tico` VALUES ('6', 'Pricing', 'Pricing', 'AppKit Landing\'s future updates are 100% FREE for existing customers', '2019-07-29 14:14:13', '2019-07-29 15:06:13');
INSERT INTO `kit_tico` VALUES ('7', 'ContentUs', '业务联系', '请您与我们联系，为您提供专业的服务和咨询！', '2019-07-29 14:14:13', '2019-08-08 13:44:51');

-- ----------------------------
-- Table structure for kit_tikeco
-- ----------------------------
DROP TABLE IF EXISTS `kit_tikeco`;
CREATE TABLE `kit_tikeco` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tikeco_title` varchar(100) NOT NULL COMMENT '标题',
  `tikeco_keywords` varchar(100) NOT NULL COMMENT '关键词',
  `tikeco_content` varchar(255) NOT NULL COMMENT '描述',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kit_tikeco
-- ----------------------------
INSERT INTO `kit_tikeco` VALUES ('1', '软件定制开发|一体化软件开发服务公司-天津凯拓软件', '天津软件开发|天津系统开发|软件外包开发', '天津凯拓软件是一家软硬件外包开发，承接天津软件开发、APP开发、小程序开发、网站开发、微信开发、系统开发、物联网系统开发、工厂信息化改造等外包开发业务的互联网科技型企业。', '2019-07-31 16:51:35', '2019-08-08 14:40:28');

-- ----------------------------
-- Table structure for kit_user
-- ----------------------------
DROP TABLE IF EXISTS `kit_user`;
CREATE TABLE `kit_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `user_city` varchar(50) DEFAULT '' COMMENT '城市',
  `user_sex` int(3) NOT NULL DEFAULT '1' COMMENT '性别 1男 2女 ',
  `user_phone` varchar(20) NOT NULL COMMENT '手机号',
  `user_password` varchar(50) NOT NULL COMMENT '用户密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of kit_user
-- ----------------------------
INSERT INTO `kit_user` VALUES ('1', 'admin', '', '1', '1563885124', '5b9c56ff3fcaeb43beb5afc289cfa673', '2019-07-18 14:49:58', '2019-07-18 14:50:03');
INSERT INTO `kit_user` VALUES ('2', 'test', '', '2', '1563665458', '5b9c56ff3fcaeb43beb5afc289cfa673', '2019-07-18 14:50:06', '2019-07-18 14:50:09');
INSERT INTO `kit_user` VALUES ('5', 'admin1', '', '2', '1234', '5b9c56ff3fcaeb43beb5afc289cfa673', '2019-07-22 11:46:42', '2019-07-22 13:02:22');
