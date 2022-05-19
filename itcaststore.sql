/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50701
Source Host           : localhost:3306
Source Database       : itcaststore

Target Server Type    : MYSQL
Target Server Version : 50701
File Encoding         : 65001

Date: 2022-05-09 09:27:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL,
  `ptime` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'asd', 'Hello World!', '2022-04-19-12:57:43');
INSERT INTO `message` VALUES ('2', 'liuxa', '找一本书，《百年孤独》，有书的朋友请分享一下，谢谢!', '2022-04-19-18:01:12');
INSERT INTO `message` VALUES ('3', 'asd', '求一本书，《百年孤独》，有书的朋友希望可以分享一下，谢谢！', '2022-04-19-18:04:42');
INSERT INTO `message` VALUES ('4', 'asd', '求一本书，《百年孤独》，有书的朋友请分享一下，谢谢！', '2022-04-19-18:17:58');
INSERT INTO `message` VALUES ('5', 'asd', 'hello', '2022-04-19-21:47:44');
INSERT INTO `message` VALUES ('6', 'asd', 'hello world', '2022-04-19-21:47:56');
INSERT INTO `message` VALUES ('7', 'liuxa', '有没有朋友有《webrtc实战教程》这本书？如果有的话分享一下，多谢了,真的很需要', '2022-04-21-11:34:50');
INSERT INTO `message` VALUES ('8', 'wxl', '大家好，求一本书《三体》，有没有书友有这本书？', '2022-04-21-21:29:48');
INSERT INTO `message` VALUES ('9', 'wxl', '大家好，我在书城上传了《三体合集》资源，感兴趣的朋友可以自行搜索购买', '2022-04-22-16:50:09');
INSERT INTO `message` VALUES ('12', 'liuxa', '简单总结下来，没经验转岗产品经理，不是完全无解。\r\n\r\n对于转岗，从一个面试官的角度来坎，我的建议是——\r\n\r\n没有经验不重要，重要的是：是否有适应岗位的思维能力和产出能力；\r\n转岗 ≠ 从零开始，结合过往经验发展的π型人才正是一家好公司需要的；\r\n所以，现阶段没有经验，但是想尝试转岗产品经理的朋友，可以尝试——\r\n\r\n先深入了解产品岗和用人单位要求\r\n梳理过往经验与求职优势\r\n学习产品专业知识，提升产品思维；再去积累产品相关的作品集，以具体体现自己具备的思维能力和产出能力。\r\n那么，如何做到以上这几点呢？\r\n\r\n推荐你们一门直播课，由前美团产品专家@James主讲，将从产品经理入行能力要求、用人单位对转岗求职者的考核标准，帮助大家梳理过往经历，对照产品经理的岗位需求，有针对性的提升自己的能力，提高转岗成功率。', '2022-04-26-19:18:46');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `n_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('5', '网站升级公告', '尊敬的各位用户，由于本网站正在升级重构中，所以部分功能可能无法正常使用，敬请谅解，谢谢配合！', '2022-04-19-11-48-11');
INSERT INTO `notice` VALUES ('6', '网站使用说明', '详情请看网站帮助', '2022-04-19-11:49:13');
INSERT INTO `notice` VALUES ('7', '网站升级公告', '本网站页面最近进行了升级重构，部分功能有所变动，如果在使用本网站的过程中遇到什么问题，请进入帮助中心寻求帮助。多谢您的使用！', '2022-04-23-22:58:01');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('05a1379b-0240-4fbd-84d8-b195ec1b7e69', 'adc06981-0dc9-4006-b763-e6413ee93ac1', '1');
INSERT INTO `orderitem` VALUES ('0c0796f2-0124-4a13-a891-5efbb63b04f9', '79bbe618-d2f8-4081-b35a-62ebbe938b64', '1');
INSERT INTO `orderitem` VALUES ('1271aa07-fc1e-4848-a423-0132c026c4cb', '26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '1');
INSERT INTO `orderitem` VALUES ('141643ce-9fd0-4666-8a46-85e1358cd812', 'adc06981-0dc9-4006-b763-e6413ee93ac1', '1');
INSERT INTO `orderitem` VALUES ('141643ce-9fd0-4666-8a46-85e1358cd812', 'cb22386f-0b77-454c-976f-d6417ad72613', '1');
INSERT INTO `orderitem` VALUES ('215f8030-0ef8-4856-847d-3631c204d163', '84c842da-16b6-4e87-953e-859a1ca62bab', '1');
INSERT INTO `orderitem` VALUES ('305a7870-3820-4079-b6f9-5d2b63cbcd2a', '72c52302-cd1e-4a22-8ac8-dc300a915be5', '1');
INSERT INTO `orderitem` VALUES ('34213866-3db9-4d7b-95f4-eb0ecfe201d2', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '2');
INSERT INTO `orderitem` VALUES ('34213866-3db9-4d7b-95f4-eb0ecfe201d2', '79bbe618-d2f8-4081-b35a-62ebbe938b64', '2');
INSERT INTO `orderitem` VALUES ('34213866-3db9-4d7b-95f4-eb0ecfe201d2', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('3a751f79-ac87-47c0-a654-8bd63920da7b', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('3a751f79-ac87-47c0-a654-8bd63920da7b', 'cb22386f-0b77-454c-976f-d6417ad72613', '1');
INSERT INTO `orderitem` VALUES ('3a751f79-ac87-47c0-a654-8bd63920da7b', 'd6dccb34-c74f-4436-a600-110722999cca', '-1');
INSERT INTO `orderitem` VALUES ('3e409dc2-5963-406d-8841-a03f29ecb606', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('3e409dc2-5963-406d-8841-a03f29ecb606', 'd6676e80-b8b1-4b29-9709-af6d4d1b9dd5', '1');
INSERT INTO `orderitem` VALUES ('4decf326-15ac-413d-ae63-39169b7f7ae8', 'cb22386f-0b77-454c-976f-d6417ad72613', '1');
INSERT INTO `orderitem` VALUES ('4decf326-15ac-413d-ae63-39169b7f7ae8', 'd6dccb34-c74f-4436-a600-110722999cca', '-1');
INSERT INTO `orderitem` VALUES ('4f62abb6-12ae-4019-9b60-e23f9313ec38', '1ff45035-12b3-4d9f-a73d-8b0279a34379', '1');
INSERT INTO `orderitem` VALUES ('52c70cda-c48f-4893-9d30-8c3bb6ed912d', '1ff45035-12b3-4d9f-a73d-8b0279a34379', '1');
INSERT INTO `orderitem` VALUES ('52c70cda-c48f-4893-9d30-8c3bb6ed912d', '26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '1');
INSERT INTO `orderitem` VALUES ('52c70cda-c48f-4893-9d30-8c3bb6ed912d', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('611f80fa-4273-4674-be09-9530b6276e15', '84c842da-16b6-4e87-953e-859a1ca62bab', '1');
INSERT INTO `orderitem` VALUES ('677a7314-0e16-4e18-8aec-552f848e0d75', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('677a7314-0e16-4e18-8aec-552f848e0d75', 'bf66a00c-4a78-458b-93c8-08896ee14976', '1');
INSERT INTO `orderitem` VALUES ('6f591522-7a2a-4a31-899d-ef1181c72f5f', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('71b0a234-0fb8-4ce8-9c3e-e0f21bb4b723', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '4');
INSERT INTO `orderitem` VALUES ('7ae96e6d-4600-41a5-bc5d-143b34ba61db', 'bdb32537-8f2c-4ba2-a752-94fdc0e9a250', '1');
INSERT INTO `orderitem` VALUES ('7d3cda06-9dee-4771-b039-214b4d63fbd2', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '2');
INSERT INTO `orderitem` VALUES ('7d3cda06-9dee-4771-b039-214b4d63fbd2', '79bbe618-d2f8-4081-b35a-62ebbe938b64', '2');
INSERT INTO `orderitem` VALUES ('83a9e158-7660-487a-a47e-fa90b5df8289', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('87f98332-4c71-4a3c-9ccb-183c203d04e4', 'adc06981-0dc9-4006-b763-e6413ee93ac1', '1');
INSERT INTO `orderitem` VALUES ('9e8c1a1e-eaf3-4d69-9cfc-573d278bbafb', '4dbac6bb-ac2a-4ea0-a62f-ea5a2fc2b3c2', '1');
INSERT INTO `orderitem` VALUES ('a17ecdfe-c8bf-466d-a87e-efeb3d74cf42', '8740bee0-bfb8-4ba1-8f6e-b69310617db9', '1');
INSERT INTO `orderitem` VALUES ('a597d877-34bc-4715-91c4-dcf5af9ae2f1', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('a5bfb13d-9085-4374-94d9-4864b4d618ab', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('b11713d7-3f78-4228-b857-d419eee4b9c1', 'adc06981-0dc9-4006-b763-e6413ee93ac1', '1');
INSERT INTO `orderitem` VALUES ('b11713d7-3f78-4228-b857-d419eee4b9c1', 'cb22386f-0b77-454c-976f-d6417ad72613', '1');
INSERT INTO `orderitem` VALUES ('b11713d7-3f78-4228-b857-d419eee4b9c1', 'd6dccb34-c74f-4436-a600-110722999cca', '1');
INSERT INTO `orderitem` VALUES ('b2012899-3b3f-4e17-8d7c-eafddb9e0650', '79bbe618-d2f8-4081-b35a-62ebbe938b64', '4');
INSERT INTO `orderitem` VALUES ('b242e213-ed3e-428f-ac9a-22cb61344493', '3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '2');
INSERT INTO `orderitem` VALUES ('b242e213-ed3e-428f-ac9a-22cb61344493', '72c52302-cd1e-4a22-8ac8-dc300a915be5', '1');
INSERT INTO `orderitem` VALUES ('b242e213-ed3e-428f-ac9a-22cb61344493', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('b3ee2e19-17c2-4133-9fb1-ea0417c9541b', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('bbacb4f9-cd8e-4b50-b813-26f36ea4a9d3', '9a7af97e-deea-417e-ad66-23ea755d2a51', '1');
INSERT INTO `orderitem` VALUES ('c29e18fd-f433-4282-ad13-3f8ba9dcabc0', 'adc06981-0dc9-4006-b763-e6413ee93ac1', '1');
INSERT INTO `orderitem` VALUES ('c2de1bd8-d0b4-4a67-9735-e82584f64f57', '3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '1');
INSERT INTO `orderitem` VALUES ('c4b2bfff-1694-4e28-bcf8-fa7169bfc978', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '2');
INSERT INTO `orderitem` VALUES ('c4b2bfff-1694-4e28-bcf8-fa7169bfc978', '79bbe618-d2f8-4081-b35a-62ebbe938b64', '2');
INSERT INTO `orderitem` VALUES ('d1cb6413-18f8-44b9-8a8d-0b570d4fee5f', 'd6dccb34-c74f-4436-a600-110722999cca', '1');
INSERT INTO `orderitem` VALUES ('d52170e7-6d44-4ee8-a715-b26fcaaff66d', '26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '3');
INSERT INTO `orderitem` VALUES ('d52170e7-6d44-4ee8-a715-b26fcaaff66d', 'acf3fdbf-b321-40c3-bd63-717db90f9cd0', '1');
INSERT INTO `orderitem` VALUES ('d52170e7-6d44-4ee8-a715-b26fcaaff66d', 'd6dccb34-c74f-4436-a600-110722999cca', '1');
INSERT INTO `orderitem` VALUES ('d6fa29ab-5414-48ad-a290-558596afa47b', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('d88d75cd-15e3-4622-801d-4cad902aeaa1', '3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '1');
INSERT INTO `orderitem` VALUES ('e7f8708f-c2be-484d-9521-428077f1083b', '9a7af97e-deea-417e-ad66-23ea755d2a51', '3');
INSERT INTO `orderitem` VALUES ('ebd8c5d6-c04a-44fe-9b3f-cf0bef20e81c', '1ff45035-12b3-4d9f-a73d-8b0279a34379', '1');
INSERT INTO `orderitem` VALUES ('ebd8c5d6-c04a-44fe-9b3f-cf0bef20e81c', '26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '2');
INSERT INTO `orderitem` VALUES ('ebd8c5d6-c04a-44fe-9b3f-cf0bef20e81c', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');
INSERT INTO `orderitem` VALUES ('ef4b9a69-e59a-4d9a-b624-14f9a8f07796', '036b60db-e1a1-4e08-af5a-25b44d47089f', '1');
INSERT INTO `orderitem` VALUES ('f3e13757-1e16-4baf-819b-56bcd716853a', '8740bee0-bfb8-4ba1-8f6e-b69310617db9', '2');
INSERT INTO `orderitem` VALUES ('fb8c5eca-c4a0-4c07-9e07-3d7374b1599e', '036b60db-e1a1-4e08-af5a-25b44d47089f', '1');
INSERT INTO `orderitem` VALUES ('ffcb9e10-888f-41bd-b675-a99b7ae8acbf', '3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT '0',
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('05a1379b-0240-4fbd-84d8-b195ec1b7e69', '20', '河南省驻马店市', 'aaa', '13592671904', '1', '2022-04-27 12:09:16', '25');
INSERT INTO `orders` VALUES ('0c0796f2-0124-4a13-a891-5efbb63b04f9', '44.5', '北京市昌平区金燕龙办公楼', 'hanyongmeng', '15207545526', '1', '2016-05-18 10:36:36', '4');
INSERT INTO `orders` VALUES ('1271aa07-fc1e-4848-a423-0132c026c4cb', '50', '河南省驻马店市', 'aaa', '13592671904', '1', '2022-04-27 12:03:38', '25');
INSERT INTO `orders` VALUES ('141643ce-9fd0-4666-8a46-85e1358cd812', '40', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:15:41', '23');
INSERT INTO `orders` VALUES ('215f8030-0ef8-4856-847d-3631c204d163', '89', '河南省驻马店市', 'aaa', '13592671904', '1', '2022-04-27 12:20:14', '25');
INSERT INTO `orders` VALUES ('305a7870-3820-4079-b6f9-5d2b63cbcd2a', '59', '北京市昌平区建材城西路金燕龙办公楼', 'huangyun', '13041019968', '0', '2016-01-13 15:14:54', '3');
INSERT INTO `orders` VALUES ('34213866-3db9-4d7b-95f4-eb0ecfe201d2', '154', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 11:07:43', '22');
INSERT INTO `orders` VALUES ('3a751f79-ac87-47c0-a654-8bd63920da7b', '-10', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:24:40', '23');
INSERT INTO `orders` VALUES ('3e409dc2-5963-406d-8841-a03f29ecb606', '75', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:05:18', '23');
INSERT INTO `orders` VALUES ('4decf326-15ac-413d-ae63-39169b7f7ae8', '-30', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:22:27', '23');
INSERT INTO `orders` VALUES ('4f62abb6-12ae-4019-9b60-e23f9313ec38', '30', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-23 22:48:16', '22');
INSERT INTO `orders` VALUES ('52c70cda-c48f-4893-9d30-8c3bb6ed912d', '100', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 10:33:50', '22');
INSERT INTO `orders` VALUES ('611f80fa-4273-4674-be09-9530b6276e15', '89', '北京市海淀区清河永泰园5号楼501', 'huangyun', '13041019968', '1', '2016-01-10 18:00:36', '3');
INSERT INTO `orders` VALUES ('677a7314-0e16-4e18-8aec-552f848e0d75', '65', '北京市昌平区', 'hanyongmeng', '15207545526', '0', '2016-05-18 11:33:25', '4');
INSERT INTO `orders` VALUES ('6f591522-7a2a-4a31-899d-ef1181c72f5f', '25', '北京市昌平区金燕龙办公楼一层传智播客', 'madan', '13269219270', '0', '2016-01-10 18:00:36', '2');
INSERT INTO `orders` VALUES ('71b0a234-0fb8-4ce8-9c3e-e0f21bb4b723', '80', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-27 16:54:08', '22');
INSERT INTO `orders` VALUES ('7ae96e6d-4600-41a5-bc5d-143b34ba61db', '35', '北京市昌平区建材城西路', 'madan', '13269219270', '0', '2016-02-25 10:44:56', '2');
INSERT INTO `orders` VALUES ('7d3cda06-9dee-4771-b039-214b4d63fbd2', '129', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 11:03:52', '22');
INSERT INTO `orders` VALUES ('83a9e158-7660-487a-a47e-fa90b5df8289', '25', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-27 11:37:16', '22');
INSERT INTO `orders` VALUES ('87f98332-4c71-4a3c-9ccb-183c203d04e4', '20', '河南省驻马店市', 'aaa', '13592671904', '1', '2022-04-27 12:16:54', '25');
INSERT INTO `orders` VALUES ('9e8c1a1e-eaf3-4d69-9cfc-573d278bbafb', '54', 'asd', 'admin', '13041019968', '0', '2022-04-18 16:17:10', '1');
INSERT INTO `orders` VALUES ('a17ecdfe-c8bf-466d-a87e-efeb3d74cf42', '26', '深圳', 'liuxa', '13592671904', '1', '2022-04-22 12:29:05', '22');
INSERT INTO `orders` VALUES ('a597d877-34bc-4715-91c4-dcf5af9ae2f1', '20', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 10:32:18', '22');
INSERT INTO `orders` VALUES ('a5bfb13d-9085-4374-94d9-4864b4d618ab', '25', '海淀区圆明园西路', 'hanyongmeng', '13455260812', '1', '2016-02-25 10:43:40', '4');
INSERT INTO `orders` VALUES ('b11713d7-3f78-4228-b857-d419eee4b9c1', '90', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:17:52', '23');
INSERT INTO `orders` VALUES ('b2012899-3b3f-4e17-8d7c-eafddb9e0650', '178', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 10:54:32', '22');
INSERT INTO `orders` VALUES ('b242e213-ed3e-428f-ac9a-22cb61344493', '134', '深圳', 'asd', '13242346752', '1', '2022-04-06 18:36:17', '16');
INSERT INTO `orders` VALUES ('b3ee2e19-17c2-4133-9fb1-ea0417c9541b', '20', '河南省驻马店市', 'aaa', '18790121436', '0', '2022-04-29 12:18:40', '25');
INSERT INTO `orders` VALUES ('bbacb4f9-cd8e-4b50-b813-26f36ea4a9d3', '25', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:03:39', '23');
INSERT INTO `orders` VALUES ('c29e18fd-f433-4282-ad13-3f8ba9dcabc0', '20', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:13:11', '23');
INSERT INTO `orders` VALUES ('c2de1bd8-d0b4-4a67-9735-e82584f64f57', '25', '深圳', 'asd', '13592671904', '1', '2022-04-06 18:31:40', '16');
INSERT INTO `orders` VALUES ('c4b2bfff-1694-4e28-bcf8-fa7169bfc978', '129', '北京市昌平区北七家镇', 'hanyongmeng', '15207545526', '1', '2016-05-18 10:36:22', '4');
INSERT INTO `orders` VALUES ('d1cb6413-18f8-44b9-8a8d-0b570d4fee5f', '50', '河南省驻马店市', 'admin', '13041019968', '0', '2022-04-26 18:42:40', '1');
INSERT INTO `orders` VALUES ('d52170e7-6d44-4ee8-a715-b26fcaaff66d', '233', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-22 11:22:27', '23');
INSERT INTO `orders` VALUES ('d6fa29ab-5414-48ad-a290-558596afa47b', '20', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-27 22:42:56', '22');
INSERT INTO `orders` VALUES ('d88d75cd-15e3-4622-801d-4cad902aeaa1', '25', '北京市昌平区建材城西路金燕龙办公楼', 'hanyongmeng', '13848399998', '1', '2016-02-25 10:44:23', '4');
INSERT INTO `orders` VALUES ('e7f8708f-c2be-484d-9521-428077f1083b', '75', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:00:09', '23');
INSERT INTO `orders` VALUES ('ebd8c5d6-c04a-44fe-9b3f-cf0bef20e81c', '150', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 10:48:34', '22');
INSERT INTO `orders` VALUES ('ef4b9a69-e59a-4d9a-b624-14f9a8f07796', '50', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 10:59:21', '23');
INSERT INTO `orders` VALUES ('f3e13757-1e16-4baf-819b-56bcd716853a', '52', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-23 22:48:23', '22');
INSERT INTO `orders` VALUES ('fb8c5eca-c4a0-4c07-9e07-3d7374b1599e', '50', '河南省驻马店市', 'wxl', '13592671904', '1', '2022-04-27 11:01:58', '23');
INSERT INTO `orders` VALUES ('ffcb9e10-888f-41bd-b675-a99b7ae8acbf', '20', '河南省驻马店市', 'liuxa', '13592671904', '1', '2022-04-28 10:20:41', '22');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `user` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1ff45035-12b3-4d9f-a73d-8b0279a34379', '莫泊桑短篇小说集', '30', '文学', '0', '/productImg/11/9/e1df6554-bba6-4acc-9df3-9c54b0b40fda.jpg', '莫泊桑出身于一个没落贵族之家，母亲醉心文艺。他受老师、诗人路易·布那影响，开始多种体裁的文学习作，后在福楼拜亲自指导下练习写作，参加了以左拉为首的自然主义作家集团的活动。他以《羊脂球》（1880）入选《梅塘晚会》短篇小说集，一跃登上法国文坛，其创作盛期是80年代。\r\n\r\n莫泊桑短篇小说布局结构的精巧，典型细节的选用、叙事抒情的手法以及行云流水般的自然文笔，都给后世作家提供了楷模。', 'aaa');
INSERT INTO `products` VALUES ('26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '.net设计规范', '50', '计算机', '9', '/productImg/12/13/bba5ddf2-2a56-4a88-9d1b-abc8e0202ec9.jpg', '', 'aaa');
INSERT INTO `products` VALUES ('3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '网管员必备宝典', '20', '计算机', '0', '/productImg/4/3/0270eba2-2b48-48df-956b-0341204384d9.jpg', '计算机类', 'wxl');
INSERT INTO `products` VALUES ('3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '学会宽容', '25', '文学', '2', '/productImg/6/5/a2da626c-c72d-4972-83de-cf48405c5563.jpg', '该书阐述了宽容是一种智慧和力量，是对生命的洞悉，是成长的绿荫，更是家庭幸福的秘诀。常用宽容的眼光看世界，事业、家庭和友谊才能稳固和长久。', 'liuxa');
INSERT INTO `products` VALUES ('450303f4-1b7e-4f61-b526-fdbe0c9d04c0', '三体2', '33', '科技', '3', '/productImg/1/5/3b68d2d8-3d4b-43f4-a4cc-1ed793837b59.webp', '', 'liuxa');
INSERT INTO `products` VALUES ('48ebd3c9-c779-4769-bf08-e74a5fc1e803', '三体合集', '33', '社科', '3', '/productImg/1/14/0269506b-2b19-472d-8071-5c4a6ebaa93d.webp', '二十世纪六十年代的时候美苏争霸，中国参与其中并提出了红岸计划，军方探寻外星文明的绝密计划“红岸工程”取得了突破性进展，一位名叫叶文洁（张静初饰）的天体物理学家以太阳为天线向宇宙发出了信号，信息以光速向宇宙深处飞驰，但历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫三体文明逃离母星，这时他们收到了地球的信息。叶文洁在8年后收到了来自三体人的回复，她回复了三体人并引来了三体人对地球的侵略。在运用超技术锁死地球人的基础科学之后，一场未来的浩劫摆在人类面前', 'wxl');
INSERT INTO `products` VALUES ('4dbac6bb-ac2a-4ea0-a62f-ea5a2fc2b3c2', '杜拉拉升职记', '54', '原版', '197', '/productImg/5/8/c4ab442f-95c7-4d6f-a57e-3eb7dc6b83c4.jpg', '职场生活', 'wxl');
INSERT INTO `products` VALUES ('67a44950-935a-4dac-953d-515fd92d8174', '时空穿行', '42', '科技', '200', '/productImg/12/12/6cc3c25b-2475-496e-9ad7-5e9491e7aaf8.jpg', '《时空穿行(中国乡村人类学世纪回访)》对20世纪80年代以来中国云南大理西镇、广东潮州凤凰村、华南茶山等八个代表性乡村田野进行调查，探讨了中国乡村文化的多样性、宗族制度、农民社会等课题。', 'wxl');
INSERT INTO `products` VALUES ('72c52302-cd1e-4a22-8ac8-dc300a915be5', '培育男孩', '59', '社科', '93', '/productImg/3/1/81967f4f-0a39-4b03-8ecc-053365a35605.jpg', '如何教育孩子', 'admin');
INSERT INTO `products` VALUES ('79bbe618-d2f8-4081-b35a-62ebbe938b64', 'Java基础入门', '44.5', '计算机', '-1', '/productImg/9/0/697a23d6-225a-41a3-8c20-7ab624265ecc.png', '《Java基础入门》从初学者的角度详细讲解了Java开发中重点用到的多种技术。全书共11章，包括Java开发环境的搭建及其运行机制、基本语法、面向对象的思想，采用典型翔实的例子、通俗易懂的语言阐述面向对象中的抽象概念。在多线程、常用API、集合、IO、GUI、网络编程章节中，通过剖析案例、分析代码结构含义、解决常见问题等方式，帮助初学者培养良好的编程习惯。最后，讲解了Eclipse开发工具，帮助初学者熟悉开发工具的使用。', 'admin');
INSERT INTO `products` VALUES ('84c842da-16b6-4e87-953e-859a1ca62bab', '赢在影响力', '89', '励志', '46', '/productImg/2/8/acc9d557-f8c9-426b-9aec-50a5a7cf3960.jpg', '《赢在影响力：人际交往的学问》创造了全球出版史上空前的发行记录。它深深地触动着读者的神经，满足了他们在人性方面的需要，因此成为经济萧条后期超越流行的读物。它居高不下的销售记录一直持续至20世纪80年代，经历了几乎半个世纪。', 'wxl');
INSERT INTO `products` VALUES ('8740bee0-bfb8-4ba1-8f6e-b69310617db9', '大勇和小花的欧洲日记', '26', '生活百科', '97', '/productImg/3/0/3253aeee-5462-47d0-991c-afb568ab3b03.jpg', '《大勇和小花的欧洲日记》串起了欧洲文明的溯源之旅。从屹立在近现代艺术之巅的巴黎拾级而下，依次是蓬皮杜博物馆（现代艺术）、奥塞博物馆（印象派艺术）、卢浮宫博物馆（古典主义）。在这里，蒙娜丽莎向文艺复兴的故乡微笔，那是意大利的佛罗伦萨。达芬奇、米开朗琪罗、拉菲尔等巨匠们开创了文艺复兴运动，他们心中的圣地是希腊，似乎已到了起源。然而，这并未到头，与这源头对接的还有遥远的希腊神话，其中有大西洲的传说。在希腊小岛圣托里尼，你看见Atlantica酒店吗？那是人们为大西洲刻下的念想。', 'liuxa');
INSERT INTO `products` VALUES ('880fdb00-6798-4302-962b-f337f3393802', 'Java Web程序开发入门', '44.5', '计算机', '100', '/productImg/9/3/eac105d4-4ab5-4af9-9061-e255016b79d9.png', '本书为Java Web开发入门教材，让初学者达到能够灵活使用Java语言开发Web应用程序的程度。为了让初学者易于学习，本书力求内容通俗易懂，讲解寓教于乐，同时针对书中的每个知识点，都精心设计了经典案例，让初学者真正理解这些知识点在实际工作中如何去运用。', 'wxl');
INSERT INTO `products` VALUES ('8c19d2e2-1020-425d-aeeb-56d3c1bc0a81', '谁动了我的奶酪', '26', '少儿', '200', '/productImg/14/11/ebcee924-7d42-43f8-b974-fbdb900bdb58.jpg', '儿童作品', 'wxl');
INSERT INTO `products` VALUES ('968df3a0-be4d-473e-85a8-d3466b4ca7c2', '别做正常的傻瓜', '18', '励志', '2', '/productImg/14/1/792116e7-6d83-4be4-b3e5-4dd11b0b4565.jpg', '本书结合了作者十余年的教学经验，融合了诺贝尔奖得主及其他学者数十年的研究成果，用深入浅出的方法帮助你发现自己决策中的误区，从而使你比大多数人少几分正常，多几分理性，本书所涉及的决策范围广，包括购买什么商品，和什么人结婚，雇用哪些员工，投资什么股票等等。除非你从不做决策，否则本书对你一定有所借鉴。', 'wxl');
INSERT INTO `products` VALUES ('9a7af97e-deea-417e-ad66-23ea755d2a51', '培育男孩', '25', '生活', '0', '/productImg/2/7/7ede11f8-3ff9-4c12-ad58-b1d5e0e72032.jpg', '本书是美国著名家庭问题和儿童教育问题专家、畅销书作家詹姆士·杜布森的新作。全书围绕值得令人类关注的培育男孩问题，讨论了家庭教育、学校教育、父母关爱，以及整个社会文化对男孩成长的影响。针对美国社会普遍存在的男孩教育问题，如父亲缺席、母亲上班、暴力泛滥、单亲家庭、同性恋、学校对男孩特点的忽视等等，提出了自己的看法和解决思路，具有很强的指导性和可操作性，是父母、教师和青年工作者的必读参考书。', 'wxl');
INSERT INTO `products` VALUES ('acf3fdbf-b321-40c3-bd63-717db90f9cd0', '生活的故事', '33', '生活', '0', '/productImg/6/3/804a8b6d-e44e-4c33-a141-a3a4a4757f98.jpg', '本书为康•帕乌斯托夫斯基的自传体纪实长篇小说，共分为《遥远的年代》《动荡的青春》《未知世纪的开端》《满怀希望的时期》《投身南方》《漂泊的篇章》六卷。书中既有对往昔岁月的追溯回望、对创作历程的思考探索，亦有对大自然空灵淡远的诗化描绘，作者更是艺术化地书写了与之 同时代的作家 ，诸如布尔加科夫、巴别尔、谢维里亚宁等人的生平轶事。此外还着力刻画了船夫、马车夫等普通人物群像，行文间流溢着生活的厚重感和纯美诗意。从中可探寻作者的内心世界，也可一窥19世纪末到20世纪初从沙皇俄国到苏联时期的社会历史图景。\r\n\r\n', 'liuxa');
INSERT INTO `products` VALUES ('ad6fb781-24fa-45e3-a617-91141d48b191', '马克思主义经济学', '50', '社科', '3', '/productImg/11/8/7bb76545-5d08-4d61-a986-bd03bd25aa3c.jpg', '《马克思主义经济学：唯物史观方法及运用研究》以马克思主义经济学唯物史观方法的研究运用为主线，对马克思主义经济学同唯物史观的关系、唯物史观本身、马克思主义经济学的理论体系、研究对象、研究方法做出总体讨论，对从原始社会生产方式到资本主义生产方式的整个人类社会历史的发展变迁过程，以及商品经济或市场经济的基本理论进行研究和说明，展望当代资本主义发展趋势和未来新社会生产方式实现的可能性和必然性。', 'aaa');
INSERT INTO `products` VALUES ('adc06981-0dc9-4006-b763-e6413ee93ac1', 'travelbook', '20', '外语', '15', '/productImg/15/1/5394df32-ed6e-4203-b9c0-fc175cfc187e.jpg', '', 'admin');
INSERT INTO `products` VALUES ('bdb32537-8f2c-4ba2-a752-94fdc0e9a250', '经济案例解析', '35', '经营', '98', '/productImg/11/1/8efe720f-fa72-435b-a3c3-69230f9677cc.jpg', '', 'admin');
INSERT INTO `products` VALUES ('bf66a00c-4a78-458b-93c8-08896ee14976', '美国纽约摄影学院摄影教材', '45', '艺术', '99', '/productImg/13/2/20788b05-d298-4a7c-91d9-370fb056f6a5.jpg', '艺术教材', 'liuxa');
INSERT INTO `products` VALUES ('c85d68d3-5758-494e-8dcf-f4f84d852949', '系统分析师教程', '54', '考试', '300', '/productImg/5/11/e4d290ce-3355-466f-a51e-13c62552d2cb.jpg', '系统分析师', 'liuxa');
INSERT INTO `products` VALUES ('cb22386f-0b77-454c-976f-d6417ad72613', '中国国家地理', '20', '学术', '16', '/productImg/2/0/2105fbe5-400f-4193-a7db-d7ebac389550.jpg', '《中国国家地理》，原名《地理知识》，是关于地理的月刊，该刊的文章和图片经常被中央及地方媒体转载。具有很强的可读性和收藏价值，国内外很多家图书馆已经把该刊作为重点收藏期刊。内容以中国地理为主，兼具世界各地不同区域的自然、人文景观和事件，并揭示其背景和奥秘，另亦涉及天文、生物、历史和考古等领域。是中国大陆著名的有关地理的杂志。因该社隶属中国科学院，有一大批自然地理和人文地理的专家学者作为该社顾问，同时还有许多战斗在科考第一线的工作者与杂志社保持着密切联系，因此具有很强的独家性和权威性。', 'liuxa');
INSERT INTO `products` VALUES ('d12a59b5-7b73-4f8e-8233-1b262ef90bc7', '三体3', '33', '科技', '3', '/productImg/5/14/ed440e84-54d4-4473-8108-5c3c68a3e2f0.webp', '三体3，死神永生', 'liuxa');
INSERT INTO `products` VALUES ('d6676e80-b8b1-4b29-9709-af6d4d1b9dd5', '算法导论', '50', '计算机', '0', '/productImg/2/2/f11853c4-0615-4b21-89d7-5c8567e2829e.jpg', '在有关算法的书中，有一些叙述非常严谨，但不够全面；另一些涉及了大量的题材，但又缺乏严谨性。本书将严谨性和全面性融为一体，深入讨论各类算法，并着力使这些算法的设计和分析能为各个层次的读者接受。全书各章自成体系，可以作为独立的学习单元；算法以英语和伪代码的形式描述，具备初步程序设计经验的人就能看懂；说明和解释力求浅显易懂，不失深度和数学严谨性。', 'liuxa');
INSERT INTO `products` VALUES ('d6dccb34-c74f-4436-a600-110722999cca', '上下五千年', '50', '学术', '0', '/productImg/4/11/35f7da6b-649a-446f-b8e5-0ef5d79f7246.jpg', '《上下五千年》是一套故事化的历史读物。 在这套书中，作者选择重要和著名的人物和事件，根据史籍材料，加以组织和剪裁，用通俗的现代语言写出来，不加铺叙和描写，基本上没有虚构。这样，在情节的生动性方面，不能不受到史料的限制；而对读者了解历史，提供的材料是比较可靠的，有根据的。', 'wxl');
INSERT INTO `products` VALUES ('dcce8b33-5516-4af7-a748-f6b13fe48971', '三体', '33', '科技', '3', '/productImg/11/12/74f2a5b3-3708-400a-a6fe-72a82e253c9e.webp', '《三体》是刘慈欣创作的系列长篇科幻小说，由《三体》《三体2：黑暗森林》《三体3：死神永生》组成，第一部于2006年5月起在《科幻世界》杂志上连载，第二部于2008年5月首次出版，第三部则于2010年11月出版。\r\n作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过刘宇昆翻译后获得了第73届雨果奖最佳长篇小说奖 [1]  。', 'liuxa');
INSERT INTO `products` VALUES ('e40125fc-0534-49c7-90fe-c7939cd5318b', '飞鸟集', '50', '文学', '3', '/productImg/9/13/83ba9c86-03ca-44f5-939c-e777c73c6714.jpg', '《飞鸟集》是泰戈尔的代表作之一，也是世界上最杰出的诗集之一。白昼和黑夜、溪流和海洋、自由和背叛，都在泰戈尔的笔下合而为一，短小的语句道出了深刻的人生哲理，引领世人探寻真理和智慧的源泉。初读这些诗篇，如同在暴风雨过后的初夏清晨，推开卧室的窗户，看到一个淡泊清透的世界，一切都是那样清新、亮丽，可是其中的韵味却很厚实，耐人寻味。', 'liuxa');
INSERT INTO `products` VALUES ('f933dff2-e1a1-4cae-801a-20aa21e83c14', '百年孤独', '50', '文学', '1', '/productImg/12/5/262e3b30-6d2a-4180-80d3-e3bdafd5c112.jpg', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', 'liuxa');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `role` varchar(10) DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `balance` double(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '男', 'liuxiancong123456@163.com', '12345648978', '我是超级管理员，我可以登录后台管理系统', '49338fdc-d8c9-46fa-8391-0fac7bf09707', '1', '超级用户', '2022-04-30 17:19:15', '71.20');
INSERT INTO `user` VALUES ('22', 'liuxa', '123456', '男', 'liuxiancong123456@163.com', '13592671904', '我是后台开发者', '82092d84-698c-4ada-8945-c7eb7abc50f0', '1', '普通用户', '2022-04-28 11:07:42', '998969.25');
INSERT INTO `user` VALUES ('23', 'wxl', '123456', '男', '3117188561@qq.com', '13592671904', '我是前端开发者', '2fe22560-d4d6-427e-84e6-493fe906b2f9', '1', '普通用户', '2022-04-28 11:07:43', '52.00');
INSERT INTO `user` VALUES ('25', 'aaa', '123456', '男', '3117188561@qq.com', '18790121436   ', '大家好，我是测试人员,aaa,正在对网站进行测试', 'ea652261-7385-435c-8af2-dc2b8430360a', '1', '普通用户', '2022-04-29 12:19:42', '10.25');
INSERT INTO `user` VALUES ('26', 'bbb', '123456', '男', 'liuxiancong123456@163.com', '13592671904', '大家好，我是测试人员二号', '7119cea1-e27f-4d35-97ee-83affadc6f5c', '1', '普通用户', '2022-04-29 12:40:23', '0.00');
INSERT INTO `user` VALUES ('27', 'aaa', '123456', '男', '3117188561@qq.com', '13592671904', '', 'c35f71d6-970c-4683-ac18-816d7fb952f1', '0', '普通用户', '2022-04-30 11:30:03', '0.00');
INSERT INTO `user` VALUES ('28', 'cc', '123456', '男', '3117188561@qq.com', '13592671904', '', 'e0afcad3-68c8-44d2-8170-0aa1e62851da', '0', '普通用户', '2022-04-30 11:38:04', '0.00');
INSERT INTO `user` VALUES ('29', 'ddd', '123456', '男', '3117188561@qq.com', '13592671904', '', 'aa0c7eb3-34e9-4880-9ac6-b7fda612a35d', '0', '普通用户', '2022-04-30 11:47:00', '0.00');
INSERT INTO `user` VALUES ('30', 'someone', '123456', '男', 'liuxiancong123456@163.com', '13592671904', '', '0a9e963c-5253-442e-95fc-2029b44c0298', '0', '普通用户', '2022-04-30 11:52:55', '0.00');
