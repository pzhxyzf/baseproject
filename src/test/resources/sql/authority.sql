/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50139
Source Host           : localhost:3306
Source Database       : authority

Target Server Type    : MYSQL
Target Server Version : 50139
File Encoding         : 65001

Date: 2017-07-26 16:35:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gps_car
-- ----------------------------
DROP TABLE IF EXISTS `gps_car`;
CREATE TABLE `gps_car` (
  `id` char(32) NOT NULL,
  `carno` varchar(10) DEFAULT NULL,
  `tell` varchar(11) DEFAULT NULL,
  `devno` varchar(11) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gps_car
-- ----------------------------
INSERT INTO `gps_car` VALUES ('1', '川A12345', '18664840001', '100000001', '1');
INSERT INTO `gps_car` VALUES ('10', '川A11117', '18664840010', '100000010', '0');
INSERT INTO `gps_car` VALUES ('11', '川A11118', '18664840011', '100000011', '0');
INSERT INTO `gps_car` VALUES ('12', '川AEV047', '13408401276', '14150455334', '1');
INSERT INTO `gps_car` VALUES ('2', '川A1A34B', '18664840002', '100000002', '1');
INSERT INTO `gps_car` VALUES ('3', '川A1BB4A', '18664840003', '100000003', '1');

-- ----------------------------
-- Table structure for gps_hisotry_track
-- ----------------------------
DROP TABLE IF EXISTS `gps_hisotry_track`;
CREATE TABLE `gps_hisotry_track` (
  `id` char(32) NOT NULL,
  `carno` varchar(10) DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `uptime` varchar(50) DEFAULT NULL,
  `mile` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gps_hisotry_track
-- ----------------------------
INSERT INTO `gps_hisotry_track` VALUES ('002eda6eb16b4ba48d0746d58c46482c', '川A1A34B', '104.075', '30.5764', '2017-04-28 10:21:52:064', null);
INSERT INTO `gps_hisotry_track` VALUES ('005cf396e6aa4341b3f8bcb50b3a1ce8', '川A12345', '104.032', '30.6757', '2017-04-28 10:21:02:745', null);
INSERT INTO `gps_hisotry_track` VALUES ('006c4b68a4a1411caeed608fc6dbc01c', '川A1BB4A', '104.079', '30.5718', '2017-04-28 10:22:55:174', null);
INSERT INTO `gps_hisotry_track` VALUES ('007a977025fd46649707a0d7e1b95cbb', '川A12345', '104.074', '30.612', '2017-04-28 10:20:38:696', null);
INSERT INTO `gps_hisotry_track` VALUES ('00ae43c1c8d24661a53f110ffff1d318', '川A12345', '104.058', '30.6292', '2017-04-28 10:20:47:822', null);
INSERT INTO `gps_hisotry_track` VALUES ('00cf3e32a2814866a296b9fd7725162f', '川A1BB4A', '104.212', '30.564', '2017-04-28 10:22:41:317', null);
INSERT INTO `gps_hisotry_track` VALUES ('00d271ddfc0d40c58e90e24452362ba3', '川A12345', '104.028', '30.6763', '2017-04-28 10:21:02:030', null);
INSERT INTO `gps_hisotry_track` VALUES ('00f6c426df6348dc81586997a7804c3e', '川A1A34B', '104.073', '30.6567', '2017-04-28 10:22:10:830', null);
INSERT INTO `gps_hisotry_track` VALUES ('0129b7ca65564f2eb6284b0b224375b1', '川A12345', '104.03', '30.676', '2017-04-28 10:21:02:370', null);
INSERT INTO `gps_hisotry_track` VALUES ('01520b30b0a34440b6c064b3528b8cda', '川A1BB4A', '103.894', '30.703', '2017-04-28 10:23:25:294', null);
INSERT INTO `gps_hisotry_track` VALUES ('0164102020624e43b2c65d6fd515f5a8', '川A1BB4A', '104.234', '30.5551', '2017-04-28 10:22:38:939', null);
INSERT INTO `gps_hisotry_track` VALUES ('0173947d173041419543d857eb3b7da6', '川A1A34B', '104.078', '30.6825', '2017-04-28 10:22:19:398', null);
INSERT INTO `gps_hisotry_track` VALUES ('017e01f6fa4d47b2a4953c1fefdbfdb1', '川A1BB4A', '103.907', '30.7024', '2017-04-28 10:23:24:265', null);
INSERT INTO `gps_hisotry_track` VALUES ('01bba247126340498ed35919b0544f89', '川A12345', '104.074', '30.6086', '2017-04-28 10:20:38:078', null);
INSERT INTO `gps_hisotry_track` VALUES ('01d8a43e6c5b4ad5abf46095d45a641e', '川A1BB4A', '103.968', '30.6076', '2017-04-28 10:23:07:292', null);
INSERT INTO `gps_hisotry_track` VALUES ('0210500bdc534ec9b4f27d12a9d98e87', '川A1A34B', '104.076', '30.6808', '2017-04-28 10:22:18:524', null);
INSERT INTO `gps_hisotry_track` VALUES ('023a2a2b64f545c492014ab1f9b4ea0a', '川A12345', '104.054', '30.6311', '2017-04-28 10:20:49:381', null);
INSERT INTO `gps_hisotry_track` VALUES ('02579218a32543eab42b719831385282', '川A1BB4A', '104.037', '30.5805', '2017-04-28 10:22:58:646', null);
INSERT INTO `gps_hisotry_track` VALUES ('02649028416a4dd78af06d95e638120b', '川A1BB4A', '103.868', '30.7046', '2017-04-28 10:23:33:145', null);
INSERT INTO `gps_hisotry_track` VALUES ('026d9b109a204c399b4e13698e934725', '川A1BB4A', '104.147', '30.576', '2017-04-28 10:22:49:861', null);
INSERT INTO `gps_hisotry_track` VALUES ('028bd1b3fe7e4ff1a144ba2ca42badb6', '川A1BB4A', '104.099', '30.5742', '2017-04-28 10:22:53:319', null);
INSERT INTO `gps_hisotry_track` VALUES ('02cc0d5811d547e3b02f89fe6a1b99e9', '川A1BB4A', '104.078', '30.5718', '2017-04-28 10:22:55:312', null);
INSERT INTO `gps_hisotry_track` VALUES ('02e4e760b1e140f4994992d8b261fd36', '川A1A34B', '104.073', '30.6473', '2017-04-28 10:22:09:106', null);
INSERT INTO `gps_hisotry_track` VALUES ('02e7d47a0c6d4d669b9e42faf638ad9e', '川A1A34B', '104.076', '30.5067', '2017-04-28 10:21:45:504', null);
INSERT INTO `gps_hisotry_track` VALUES ('02fa6b56a7a740c7afdecaa88ef70adb', '川A12345', '104.029', '30.654', '2017-04-28 10:20:56:763', null);
INSERT INTO `gps_hisotry_track` VALUES ('030dc238cd26408aa3503b7af2fba088', '川A1BB4A', '103.897', '30.7032', '2017-04-28 10:23:25:139', null);
INSERT INTO `gps_hisotry_track` VALUES ('032120b85dff44028c46bf42818f0723', '川A1A34B', '104.077', '30.6815', '2017-04-28 10:22:19:072', null);
INSERT INTO `gps_hisotry_track` VALUES ('0346d6b2394a4e3ca5e717d8784d0dbd', '川A1A34B', '104.074', '30.6085', '2017-04-28 10:21:58:606', null);
INSERT INTO `gps_hisotry_track` VALUES ('03a723f2187347c6b473cee448c07033', '川A12345', '104.028', '30.6679', '2017-04-28 10:20:58:995', null);
INSERT INTO `gps_hisotry_track` VALUES ('040ed8af54c34a099b51244b28cc70c5', '川A1A34B', '104.074', '30.6157', '2017-04-28 10:22:00:705', null);
INSERT INTO `gps_hisotry_track` VALUES ('0419db1c7b9d453b8a0987edfbcdff9f', '川A1A34B', '104.075', '30.5739', '2017-04-28 10:21:51:979', null);
INSERT INTO `gps_hisotry_track` VALUES ('043ee64ae9ca4aa980ec8d820adae30b', '川A12345', '104.074', '30.6261', '2017-04-28 10:20:41:738', null);
INSERT INTO `gps_hisotry_track` VALUES ('044c0eb0d84f491f8697f53eaa74947c', '川A1BB4A', '104.172', '30.5824', '2017-04-28 10:22:47:723', null);
INSERT INTO `gps_hisotry_track` VALUES ('0465c32e3ad04745816f0b5741e295bf', '川A1A34B', '104.074', '30.6645', '2017-04-28 10:22:13:825', null);
INSERT INTO `gps_hisotry_track` VALUES ('04b277c8719f475d9f52d554875c7432', '川A1A34B', '104.074', '30.4974', '2017-04-28 10:21:44:260', null);
INSERT INTO `gps_hisotry_track` VALUES ('04eef033327645ee9f2052c729574e92', '川A1A34B', '104.08', '30.6975', '2017-04-28 10:22:22:569', null);
INSERT INTO `gps_hisotry_track` VALUES ('051043f6997a49b0847a4c4f1b6b9f87', '川A1BB4A', '104.238', '30.5606', '2017-04-28 10:22:35:302', null);
INSERT INTO `gps_hisotry_track` VALUES ('051c8f53da1a4338a62cc90234713efa', '川A1BB4A', '103.901', '30.7033', '2017-04-28 10:23:25:074', null);
INSERT INTO `gps_hisotry_track` VALUES ('05619dc7d02c49c18ce1c18ed448efd0', '川A1A34B', '104.073', '30.6588', '2017-04-28 10:22:11:432', null);
INSERT INTO `gps_hisotry_track` VALUES ('057c4de80afc469389213674fcc6b4b0', '川A1BB4A', '103.952', '30.6289', '2017-04-28 10:23:10:055', null);
INSERT INTO `gps_hisotry_track` VALUES ('057f98c4cbce45abb26e800faf37b755', '川A1A34B', '104.077', '30.5263', '2017-04-28 10:21:47:869', null);
INSERT INTO `gps_hisotry_track` VALUES ('058a2ac6b62a41e09afba3cb9548b25c', '川A1BB4A', '103.973', '30.6055', '2017-04-28 10:23:06:463', null);
INSERT INTO `gps_hisotry_track` VALUES ('05962718949d46ee8906d76e6427d7f7', '川A12345', '104.05', '30.6332', '2017-04-28 10:20:50:897', null);
INSERT INTO `gps_hisotry_track` VALUES ('05e348a4dafd44fe8aace1410c68ed4d', '川A1BB4A', '103.873', '30.7065', '2017-04-28 10:23:30:149', null);
INSERT INTO `gps_hisotry_track` VALUES ('060f46fd41a34e24964ce0e3192a0932', '川A12345', '104.074', '30.617', '2017-04-28 10:20:40:088', null);
INSERT INTO `gps_hisotry_track` VALUES ('061bbf8c5bff46a7820f46a2c3c165c3', '川A1BB4A', '104.213', '30.5637', '2017-04-28 10:22:41:269', null);
INSERT INTO `gps_hisotry_track` VALUES ('061db01d5e5f46e98d203b55329d506b', '川A1A34B', '104.076', '30.506', '2017-04-28 10:21:45:399', null);
INSERT INTO `gps_hisotry_track` VALUES ('0694f919baf44406bc30f702acb93c82', '川A1BB4A', '103.873', '30.705', '2017-04-28 10:23:27:497', null);
INSERT INTO `gps_hisotry_track` VALUES ('06d078844e5f4a469797b3fe8125cbed', '川A1BB4A', '103.946', '30.6581', '2017-04-28 10:23:13:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('06e0ca93fc254a25825b5dfd35964866', '川A1BB4A', '103.851', '30.7005', '2017-04-28 10:23:36:891', null);
INSERT INTO `gps_hisotry_track` VALUES ('070f2fa076604571977056a93d398049', '川A1BB4A', '103.914', '30.701', '2017-04-28 10:23:24:019', null);
INSERT INTO `gps_hisotry_track` VALUES ('07151ee43a32448c896d5eddcc6ca710', '川A12345', '104.075', '30.6264', '2017-04-28 10:20:43:887', null);
INSERT INTO `gps_hisotry_track` VALUES ('0738e634af3646308a7d55af904b2801', '川A1BB4A', '104.173', '30.5832', '2017-04-28 10:22:47:387', null);
INSERT INTO `gps_hisotry_track` VALUES ('074b0e5c321543b8b7fe1fb87a5bbfa9', '川A1BB4A', '103.939', '30.6986', '2017-04-28 10:23:18:579', null);
INSERT INTO `gps_hisotry_track` VALUES ('075dd6c5f94f41688d4015ee72939acd', '川A1A34B', '104.072', '30.6705', '2017-04-28 10:22:15:525', null);
INSERT INTO `gps_hisotry_track` VALUES ('07cf537604b7427e9bc3b2db535a93d0', '川A1A34B', '104.075', '30.5697', '2017-04-28 10:21:51:480', null);
INSERT INTO `gps_hisotry_track` VALUES ('07fc4a9d21cf4012adea649f1898185b', '川A1BB4A', '104.115', '30.574', '2017-04-28 10:22:51:886', null);
INSERT INTO `gps_hisotry_track` VALUES ('07fe377a2ea148b1a57596793d911466', '川A12345', '104.031', '30.6493', '2017-04-28 10:20:54:072', null);
INSERT INTO `gps_hisotry_track` VALUES ('082b2f0acc374e6495cae170c909fec7', '川A12345', '104.071', '30.6263', '2017-04-28 10:20:45:410', null);
INSERT INTO `gps_hisotry_track` VALUES ('082c103bf88b4e91b09cae2c91f16cf7', '川A1BB4A', '104.044', '30.5783', '2017-04-28 10:22:58:096', null);
INSERT INTO `gps_hisotry_track` VALUES ('083feb3f7c5f4aaf99d2bfa7300e77f4', '川A1BB4A', '104.117', '30.5739', '2017-04-28 10:22:51:695', null);
INSERT INTO `gps_hisotry_track` VALUES ('085d1d05e8a543e0bcb892fe4c1ca80f', '川A1A34B', '104.077', '30.5308', '2017-04-28 10:21:48:061', null);
INSERT INTO `gps_hisotry_track` VALUES ('086513d622314d60b475cb996f26bd0c', '川A1A34B', '104.073', '30.6397', '2017-04-28 10:22:06:998', null);
INSERT INTO `gps_hisotry_track` VALUES ('0871b0d26afc4b97bb8a529fbd6cc102', '川A1BB4A', '104.127', '30.5742', '2017-04-28 10:22:50:694', null);
INSERT INTO `gps_hisotry_track` VALUES ('0890d04af88f4c3a8929623327fc757b', '川A1BB4A', '103.855', '30.6971', '2017-04-28 10:23:36:121', null);
INSERT INTO `gps_hisotry_track` VALUES ('08b2dad5eb114ac2ad5f13fe64c3951e', '川A1BB4A', '104.085', '30.5722', '2017-04-28 10:22:53:828', null);
INSERT INTO `gps_hisotry_track` VALUES ('08cb7a224c4944b0abd18dd87a5a41c4', '川A1A34B', '104.076', '30.5345', '2017-04-28 10:21:49:086', null);
INSERT INTO `gps_hisotry_track` VALUES ('09753d8023bd4f26b954809fa11e09b4', '川A1BB4A', '103.964', '30.6095', '2017-04-28 10:23:07:538', null);
INSERT INTO `gps_hisotry_track` VALUES ('09d10f2f65d84042b336d85e00d7ecf2', '川A1BB4A', '103.882', '30.702', '2017-04-28 10:23:26:269', null);
INSERT INTO `gps_hisotry_track` VALUES ('09db589ca99f4735b5f337375edd98e1', '川A1BB4A', '104.205', '30.5677', '2017-04-28 10:22:42:218', null);
INSERT INTO `gps_hisotry_track` VALUES ('09e5dab745724a928a4c250fd227e9ff', '川A1A34B', '104.075', '30.5616', '2017-04-28 10:21:50:338', null);
INSERT INTO `gps_hisotry_track` VALUES ('0a0c8f8e783844d7b540b5b620a0e785', '川A1A34B', '104.072', '30.6743', '2017-04-28 10:22:16:645', null);
INSERT INTO `gps_hisotry_track` VALUES ('0a3f7c7b23d84e9fa970ddb4871466f9', '川A1A34B', '104.074', '30.6654', '2017-04-28 10:22:14:107', null);
INSERT INTO `gps_hisotry_track` VALUES ('0a4de15d405f4156a5cec420ca2ec2ba', '川A1BB4A', '103.874', '30.7065', '2017-04-28 10:23:30:406', null);
INSERT INTO `gps_hisotry_track` VALUES ('0a6c4a4f300c4dc5a68d176e2a8201c6', '川A1A34B', '104.077', '30.5233', '2017-04-28 10:21:47:662', null);
INSERT INTO `gps_hisotry_track` VALUES ('0ade9c0deb7a41fc910a397894a57cc3', '川A1BB4A', '103.94', '30.6983', '2017-04-28 10:23:20:377', null);
INSERT INTO `gps_hisotry_track` VALUES ('0afe6de2aab94e1e840962e54245e724', '川A1A34B', '104.074', '30.6203', '2017-04-28 10:22:02:247', null);
INSERT INTO `gps_hisotry_track` VALUES ('0b3bef06c4544518ac81cf74d1b05b83', '川A1BB4A', '104.247', '30.5725', '2017-04-28 10:22:30:297', null);
INSERT INTO `gps_hisotry_track` VALUES ('0b652403cafb4ee0a6714f1a2aede491', '川A1BB4A', '103.969', '30.6071', '2017-04-28 10:23:07:169', null);
INSERT INTO `gps_hisotry_track` VALUES ('0bc0f63698294d2a81cd340f3541425f', '川A1BB4A', '103.933', '30.7001', '2017-04-28 10:23:22:713', null);
INSERT INTO `gps_hisotry_track` VALUES ('0bc4fe8e0d9841e5853a28b7b45efb3d', '川A1A34B', '104.074', '30.6646', '2017-04-28 10:22:13:891', null);
INSERT INTO `gps_hisotry_track` VALUES ('0bd255701c854154b0b346ca5fe73beb', '川A1BB4A', '103.987', '30.5976', '2017-04-28 10:23:04:888', null);
INSERT INTO `gps_hisotry_track` VALUES ('0beb106402a94fe1a5d4c6856adf9256', '川A1A34B', '104.08', '30.7009', '2017-04-28 10:22:23:994', null);
INSERT INTO `gps_hisotry_track` VALUES ('0bf9e0db847c4b809db97112c1535d87', '川A1BB4A', '103.894', '30.7031', '2017-04-28 10:23:25:207', null);
INSERT INTO `gps_hisotry_track` VALUES ('0bffeb690cae4c21bf33cb4e7e9ba0d1', '川A12345', '104.075', '30.6264', '2017-04-28 10:20:43:673', null);
INSERT INTO `gps_hisotry_track` VALUES ('0c07dc7f9987453d9cc2f71f062aa815', '川A12345', '104.075', '30.5875', '2017-04-28 10:20:34:595', null);
INSERT INTO `gps_hisotry_track` VALUES ('0c29adc041c14b31b517517c2f205983', '川A1BB4A', '103.874', '30.7058', '2017-04-28 10:23:32:070', null);
INSERT INTO `gps_hisotry_track` VALUES ('0c6e705d6f2f44c8bc2e7f97d3372c34', '川A1A34B', '104.076', '30.5397', '2017-04-28 10:21:49:329', null);
INSERT INTO `gps_hisotry_track` VALUES ('0c9c68cdc2d445799a5a3b532fb7cb10', '川A1BB4A', '103.948', '30.6446', '2017-04-28 10:23:11:763', null);
INSERT INTO `gps_hisotry_track` VALUES ('0cb72317147e476ba399284aa1273a46', '川A1BB4A', '104.133', '30.5747', '2017-04-28 10:22:50:444', null);
INSERT INTO `gps_hisotry_track` VALUES ('0cc72d84027248de8e5282ea3a998030', '川A1BB4A', '104.04', '30.5793', '2017-04-28 10:22:58:312', null);
INSERT INTO `gps_hisotry_track` VALUES ('0d42a49ddc754f508581f729d357025a', '川A12345', '104.074', '30.61', '2017-04-28 10:20:38:321', null);
INSERT INTO `gps_hisotry_track` VALUES ('0d6be9c5940e4bc9b68d83e3422ebe28', '川A1BB4A', '104', '30.5919', '2017-04-28 10:23:03:455', null);
INSERT INTO `gps_hisotry_track` VALUES ('0d922a0288534dc48c503a0e0cae083a', '川A1BB4A', '103.865', '30.7038', '2017-04-28 10:23:33:664', null);
INSERT INTO `gps_hisotry_track` VALUES ('0d97cd0425134d788508e71dd98cd388', '川A1BB4A', '103.865', '30.7038', '2017-04-28 10:23:33:734', null);
INSERT INTO `gps_hisotry_track` VALUES ('0dc78b077ac84ad582f2666dd3158395', '川A1A34B', '104.078', '30.6827', '2017-04-28 10:22:19:574', null);
INSERT INTO `gps_hisotry_track` VALUES ('0e7e8d2cf33b45d9a2c79c45697ec428', '川A1A34B', '104.072', '30.6701', '2017-04-28 10:22:15:392', null);
INSERT INTO `gps_hisotry_track` VALUES ('0eaaa032e7d94cf7b45af723a7471ae0', '川A1A34B', '104.079', '30.6899', '2017-04-28 10:22:21:475', null);
INSERT INTO `gps_hisotry_track` VALUES ('0eb9b72af377465785e59aba41b3427e', '川A1BB4A', '103.862', '30.7022', '2017-04-28 10:23:35:041', null);
INSERT INTO `gps_hisotry_track` VALUES ('0ee8c6dbb9d04df092e47e8ca9929031', '川A1BB4A', '103.94', '30.6989', '2017-04-28 10:23:19:773', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f016cdfe4f84ddfbfb399c45e092710', '川A1BB4A', '104.229', '30.5573', '2017-04-28 10:22:40:075', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f1f4374f821410180543aaa3ccd021c', '川A1A34B', '104.08', '30.701', '2017-04-28 10:22:24:109', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f24e627f1aa47e9be53177088399c09', '川A1A34B', '104.073', '30.6317', '2017-04-28 10:22:05:281', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f2796215c3b41aeb2e59bf46738518a', '川A1BB4A', '103.94', '30.6989', '2017-04-28 10:23:19:825', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f343bec5bd3471781a99e4352d766b2', '川A1BB4A', '103.916', '30.7008', '2017-04-28 10:23:23:903', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f3e239dd51c48fda3981165f8b40aec', '川A1BB4A', '103.878', '30.7029', '2017-04-28 10:23:27:257', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f47b5d8bf2d45e69e310d097f482d9f', '川A1A34B', '104.075', '30.5017', '2017-04-28 10:21:44:886', null);
INSERT INTO `gps_hisotry_track` VALUES ('0f4ea28da9154cd8ac1f957f4cb8b824', '川A1A34B', '104.074', '30.6201', '2017-04-28 10:22:02:197', null);
INSERT INTO `gps_hisotry_track` VALUES ('0fae2666767e454488e75ecefd02ea54', '川A1A34B', '104.08', '30.6976', '2017-04-28 10:22:22:650', null);
INSERT INTO `gps_hisotry_track` VALUES ('0fb72821f6d645268f410dccc6cb999e', '川A12345', '104.044', '30.6363', '2017-04-28 10:20:51:868', null);
INSERT INTO `gps_hisotry_track` VALUES ('100118f83779433081c3fa8308ef4c4a', '川A12345', '104.074', '30.6239', '2017-04-28 10:20:41:124', null);
INSERT INTO `gps_hisotry_track` VALUES ('1080888f74c04c2686f012f513dfdbdb', '川A1BB4A', '104.077', '30.5718', '2017-04-28 10:22:55:438', null);
INSERT INTO `gps_hisotry_track` VALUES ('10a7bb3fb1974219b7a4d65705629261', '川A12345', '104.039', '30.6416', '2017-04-28 10:20:52:813', null);
INSERT INTO `gps_hisotry_track` VALUES ('11289c3a176e41eda2a7ef581225df29', '川A12345', '104.028', '30.6663', '2017-04-28 10:20:58:914', null);
INSERT INTO `gps_hisotry_track` VALUES ('1190d187c2434fe4ae35f71ca57b8ca6', '川A12345', '104.075', '30.5943', '2017-04-28 10:20:35:579', null);
INSERT INTO `gps_hisotry_track` VALUES ('119ab4e0b1a04b0a9708d11e79b01794', '川A1A34B', '104.076', '30.6801', '2017-04-28 10:22:18:374', null);
INSERT INTO `gps_hisotry_track` VALUES ('11bd77cebab34998b6a08ccc263a8170', '川A1A34B', '104.074', '30.4945', '2017-04-28 10:21:43:954', null);
INSERT INTO `gps_hisotry_track` VALUES ('11e2b230af324bf8a716694dd0d9aa61', '川A1BB4A', '103.851', '30.701', '2017-04-28 10:23:36:965', null);
INSERT INTO `gps_hisotry_track` VALUES ('1215ece203584e3484c784580a728284', '川A1BB4A', '104.038', '30.5801', '2017-04-28 10:22:58:546', null);
INSERT INTO `gps_hisotry_track` VALUES ('1219cdbdbb7c43abbe042cc2cc4b2b77', '川A12345', '104.07', '30.6262', '2017-04-28 10:20:45:817', null);
INSERT INTO `gps_hisotry_track` VALUES ('124c1612ad7f4ca4a6fd3438dbdcf44d', '川A1BB4A', '104.186', '30.5773', '2017-04-28 10:22:45:559', null);
INSERT INTO `gps_hisotry_track` VALUES ('12d62bc2b7fb4adba51283fce361f5cb', '川A1A34B', '104.076', '30.5435', '2017-04-28 10:21:49:621', null);
INSERT INTO `gps_hisotry_track` VALUES ('12fa19e921694e8a8a43d5a6b0e20abe', '川A1BB4A', '104.039', '30.5797', '2017-04-28 10:22:58:475', null);
INSERT INTO `gps_hisotry_track` VALUES ('131e955b9529440d8f7cfcb6f140d3da', '川A1BB4A', '103.986', '30.5979', '2017-04-28 10:23:04:936', null);
INSERT INTO `gps_hisotry_track` VALUES ('133224af01834b359677f6d8f0693802', '川A12345', '104.029', '30.6515', '2017-04-28 10:20:55:868', null);
INSERT INTO `gps_hisotry_track` VALUES ('1342604c5f0f4d5e9e2a7720cdb20791', '川A1BB4A', '104.035', '30.581', '2017-04-28 10:22:58:860', null);
INSERT INTO `gps_hisotry_track` VALUES ('136e20da2ed5456c9db090d8f2263771', '川A1BB4A', '104.256', '30.5702', '2017-04-28 10:22:29:134', null);
INSERT INTO `gps_hisotry_track` VALUES ('1374cb484b974a058c69c63de08f1fb8', '川A1BB4A', '103.941', '30.6789', '2017-04-28 10:23:15:637', null);
INSERT INTO `gps_hisotry_track` VALUES ('138df98046e94669ab8ce8f87b364987', '川A1A34B', '104.074', '30.6149', '2017-04-28 10:22:00:555', null);
INSERT INTO `gps_hisotry_track` VALUES ('13bf750f9959416daac315cb8dcf1474', '川A1A34B', '104.074', '30.6225', '2017-04-28 10:22:02:625', null);
INSERT INTO `gps_hisotry_track` VALUES ('13c1df36e8da4537b05e9e4dcedb2b4f', '川A1BB4A', '103.94', '30.6986', '2017-04-28 10:23:20:123', null);
INSERT INTO `gps_hisotry_track` VALUES ('13fb46dc5d35465d9dc22bd825f39c72', '川A1BB4A', '103.872', '30.7057', '2017-04-28 10:23:28:313', null);
INSERT INTO `gps_hisotry_track` VALUES ('140a98d617984ecbb80fa95c5f774ba0', '川A1BB4A', '103.94', '30.6987', '2017-04-28 10:23:20:007', null);
INSERT INTO `gps_hisotry_track` VALUES ('142792df9b23473da26f689d5a0b64e1', '川A1A34B', '104.074', '30.6653', '2017-04-28 10:22:14:041', null);
INSERT INTO `gps_hisotry_track` VALUES ('145c34d21ec845a38288a6501b4f2ec7', '川A1A34B', '104.074', '30.4991', '2017-04-28 10:21:44:652', null);
INSERT INTO `gps_hisotry_track` VALUES ('1479c45fac464a3487c124a27b2e95ba', '川A1BB4A', '103.865', '30.704', '2017-04-28 10:23:33:481', null);
INSERT INTO `gps_hisotry_track` VALUES ('14a2439374a9469887db8c3324a58008', '川A12345', '104.029', '30.6531', '2017-04-28 10:20:56:398', null);
INSERT INTO `gps_hisotry_track` VALUES ('14f4067ea9614f45b8b6db657decf4e8', '川A12345', '104.028', '30.6687', '2017-04-28 10:20:59:478', null);
INSERT INTO `gps_hisotry_track` VALUES ('151152ec9d00400c803319babe25ff3d', '川A1A34B', '104.073', '30.6535', '2017-04-28 10:22:10:215', null);
INSERT INTO `gps_hisotry_track` VALUES ('155caf4faf5043f7b703ceaf60b94b00', '川A1BB4A', '104.175', '30.5828', '2017-04-28 10:22:46:986', null);
INSERT INTO `gps_hisotry_track` VALUES ('1561e9c1c0b142f68e0d8bdfc6b0238c', '川A1A34B', '104.076', '30.5574', '2017-04-28 10:21:50:076', null);
INSERT INTO `gps_hisotry_track` VALUES ('15b592646a624324a3f43ff5730ed0b0', '川A1BB4A', '103.874', '30.7066', '2017-04-28 10:23:30:242', null);
INSERT INTO `gps_hisotry_track` VALUES ('15b73ee82f4e4673a56d479128805f72', '川A1A34B', '104.074', '30.4944', '2017-04-28 10:21:43:813', null);
INSERT INTO `gps_hisotry_track` VALUES ('15c3dc603edc48a28d598f8daa193e98', '川A12345', '104.029', '30.6518', '2017-04-28 10:20:55:964', null);
INSERT INTO `gps_hisotry_track` VALUES ('15dbce6fb9994521a19026f038b195ff', '川A1A34B', '104.074', '30.6259', '2017-04-28 10:22:03:398', null);
INSERT INTO `gps_hisotry_track` VALUES ('15e105de47fb49629e04dd1caf736e97', '川A1BB4A', '103.865', '30.7039', '2017-04-28 10:23:33:604', null);
INSERT INTO `gps_hisotry_track` VALUES ('1601019a904443e0adc939ad0e7f8bd3', '川A12345', '104.043', '30.6373', '2017-04-28 10:20:52:115', null);
INSERT INTO `gps_hisotry_track` VALUES ('168b87ca79eb40b39837104f541ea0c3', '川A12345', '104.031', '30.6758', '2017-04-28 10:21:02:655', null);
INSERT INTO `gps_hisotry_track` VALUES ('1696c66052334fba877c0ac88ce8ce30', '川A12345', '104.074', '30.6179', '2017-04-28 10:20:40:336', null);
INSERT INTO `gps_hisotry_track` VALUES ('16bb6b0031e94c1885bc894fec9abc87', '川A1BB4A', '103.96', '30.6117', '2017-04-28 10:23:07:838', null);
INSERT INTO `gps_hisotry_track` VALUES ('16e4946d3c3942b3bf257fbbc63fc23a', '川A12345', '104.075', '30.5854', '2017-04-28 10:20:34:544', null);
INSERT INTO `gps_hisotry_track` VALUES ('1721e3a0bea849b281fdcfe2976f45d3', '川A12345', '104.074', '30.6256', '2017-04-28 10:20:41:571', null);
INSERT INTO `gps_hisotry_track` VALUES ('17401b2c88fc4f59a2e94f8f8416b8c3', '川A1A34B', '104.074', '30.4968', '2017-04-28 10:21:44:211', null);
INSERT INTO `gps_hisotry_track` VALUES ('176c02bc2222476b92c2b20a32dd9e34', '川A1BB4A', '104.029', '30.5837', '2017-04-28 10:22:59:776', null);
INSERT INTO `gps_hisotry_track` VALUES ('17a03ee329494a669e345f5b6aad7ed8', '川A12345', '104.032', '30.6483', '2017-04-28 10:20:53:856', null);
INSERT INTO `gps_hisotry_track` VALUES ('17a60581c3b64d479a3385fc46613243', '川A1BB4A', '104.171', '30.582', '2017-04-28 10:22:47:873', null);
INSERT INTO `gps_hisotry_track` VALUES ('17b7e07dbc864a5fac8971d1ca846ceb', '川A1BB4A', '104.032', '30.5822', '2017-04-28 10:22:59:233', null);
INSERT INTO `gps_hisotry_track` VALUES ('17d186e11c4d4322909ae9e80da9d35a', '川A1BB4A', '103.939', '30.6988', '2017-04-28 10:23:18:749', null);
INSERT INTO `gps_hisotry_track` VALUES ('17d511c13d0a465d9076913f3847497e', '川A1BB4A', '103.95', '30.6372', '2017-04-28 10:23:10:722', null);
INSERT INTO `gps_hisotry_track` VALUES ('1819e67a63374b18beed631ef4a75bd1', '川A1A34B', '104.075', '30.5781', '2017-04-28 10:21:52:588', null);
INSERT INTO `gps_hisotry_track` VALUES ('18357aa486104095a8d6da331f6a2c81', '川A1BB4A', '103.85', '30.7025', '2017-04-28 10:23:37:143', null);
INSERT INTO `gps_hisotry_track` VALUES ('184b7714e9244fd198bae11c688ed1d8', '川A1BB4A', '103.871', '30.7052', '2017-04-28 10:23:33:000', null);
INSERT INTO `gps_hisotry_track` VALUES ('18bcf48934434e56a21180d97af8d295', '川A1BB4A', '103.938', '30.6983', '2017-04-28 10:23:22:188', null);
INSERT INTO `gps_hisotry_track` VALUES ('1918c5cf7e3b449f93b377806636db55', '川A1BB4A', '104.015', '30.592', '2017-04-28 10:23:01:963', null);
INSERT INTO `gps_hisotry_track` VALUES ('1939e4492aca4b9fb2848113405d5370', '川A12345', '104.074', '30.6214', '2017-04-28 10:20:40:923', null);
INSERT INTO `gps_hisotry_track` VALUES ('19731fff3bbf4ef28889349c188e299c', '川A12345', '104.028', '30.6713', '2017-04-28 10:21:00:340', null);
INSERT INTO `gps_hisotry_track` VALUES ('19747199a6104ab7a5ffd3b2c690c3b4', '川A1A34B', '104.076', '30.5419', '2017-04-28 10:21:49:543', null);
INSERT INTO `gps_hisotry_track` VALUES ('19b924d2a3ec4040a74931bc2d9d543e', '川A1BB4A', '103.995', '30.5928', '2017-04-28 10:23:03:746', null);
INSERT INTO `gps_hisotry_track` VALUES ('1a70c7357a224195b428eedfe249329b', '川A1BB4A', '103.954', '30.6202', '2017-04-28 10:23:09:355', null);
INSERT INTO `gps_hisotry_track` VALUES ('1a989ab61f9144e59b0876dde4884f3a', '川A1BB4A', '104.216', '30.5622', '2017-04-28 10:22:41:023', null);
INSERT INTO `gps_hisotry_track` VALUES ('1a9e161f563044329a0fbb384469fb77', '川A1BB4A', '104.234', '30.5551', '2017-04-28 10:22:38:352', null);
INSERT INTO `gps_hisotry_track` VALUES ('1aa40a4b03d647de983ccbff276ed915', '川A1BB4A', '104.195', '30.5728', '2017-04-28 10:22:43:886', null);
INSERT INTO `gps_hisotry_track` VALUES ('1aa49782ed40442dbcf6474a62c8841b', '川A1A34B', '104.074', '30.6211', '2017-04-28 10:22:02:313', null);
INSERT INTO `gps_hisotry_track` VALUES ('1aa5e7491acb4443b469746a2bbef1ed', '川A1BB4A', '103.924', '30.7011', '2017-04-28 10:23:23:440', null);
INSERT INTO `gps_hisotry_track` VALUES ('1ae9117a56484a44bfc853f88bede6cd', '川A1A34B', '104.073', '30.6475', '2017-04-28 10:22:09:398', null);
INSERT INTO `gps_hisotry_track` VALUES ('1b1327431a47467fb343db1ab6899b2a', '川A1BB4A', '103.902', '30.7033', '2017-04-28 10:23:24:932', null);
INSERT INTO `gps_hisotry_track` VALUES ('1b743900102540e1bedf267e66fe527a', '川A1A34B', '104.077', '30.5261', '2017-04-28 10:21:47:837', null);
INSERT INTO `gps_hisotry_track` VALUES ('1b7679336ce5457d85239f93dec96995', '川A12345', '104.075', '30.5884', '2017-04-28 10:20:34:705', null);
INSERT INTO `gps_hisotry_track` VALUES ('1bc69332d98745ecaaff6c0fc4f97ce4', '川A12345', '104.074', '30.602', '2017-04-28 10:20:36:513', null);
INSERT INTO `gps_hisotry_track` VALUES ('1bd34a56dd984e81b8aa8b9219c259a1', '川A1A34B', '104.074', '30.6018', '2017-04-28 10:21:56:439', null);
INSERT INTO `gps_hisotry_track` VALUES ('1be31883fb824d369b685d563f60f0c7', '川A1A34B', '104.077', '30.5141', '2017-04-28 10:21:47:187', null);
INSERT INTO `gps_hisotry_track` VALUES ('1be7e84bf8d64326b8d38d5d037e6782', '川A1BB4A', '104.029', '30.5839', '2017-04-28 10:22:59:900', null);
INSERT INTO `gps_hisotry_track` VALUES ('1c042c2cbf0347efa9593bce4f187953', '川A1BB4A', '104.112', '30.5742', '2017-04-28 10:22:52:401', null);
INSERT INTO `gps_hisotry_track` VALUES ('1c04f2f8c43f42229346526a35ac93d8', '川A1BB4A', '104.04', '30.5794', '2017-04-28 10:22:58:416', null);
INSERT INTO `gps_hisotry_track` VALUES ('1c154ecb17984adfa9f8f0850f4ca6ce', '川A1A34B', '104.079', '30.6863', '2017-04-28 10:22:21:250', null);
INSERT INTO `gps_hisotry_track` VALUES ('1c9df0a3e3b74eda8cfafc4ec9696352', '川A1BB4A', '103.893', '30.7029', '2017-04-28 10:23:25:574', null);
INSERT INTO `gps_hisotry_track` VALUES ('1d53c1ef1fb9481782d0a225858b50bf', '川A1A34B', '104.075', '30.5721', '2017-04-28 10:21:51:838', null);
INSERT INTO `gps_hisotry_track` VALUES ('1d7b649b76174d88a2f3d3237ecef19d', '川A12345', '104.075', '30.585', '2017-04-28 10:20:34:378', null);
INSERT INTO `gps_hisotry_track` VALUES ('1d983ff9d4594985b45dd6e08c6402da', '川A1A34B', '104.073', '30.644', '2017-04-28 10:22:08:363', null);
INSERT INTO `gps_hisotry_track` VALUES ('1e83fac023f349e2bbd5aa42f6745c48', '川A1BB4A', '104.117', '30.5738', '2017-04-28 10:22:51:644', null);
INSERT INTO `gps_hisotry_track` VALUES ('1ea017208f424df8b4125ffaa6224b0b', '川A12345', '104.032', '30.6483', '2017-04-28 10:20:53:905', null);
INSERT INTO `gps_hisotry_track` VALUES ('1fa79d91ed6d415fb4aca87ffd86ae6f', '川A1BB4A', '103.953', '30.6237', '2017-04-28 10:23:09:759', null);
INSERT INTO `gps_hisotry_track` VALUES ('1fbc62d253384159b43172263f1c0991', '川A1A34B', '104.073', '30.6486', '2017-04-28 10:22:09:480', null);
INSERT INTO `gps_hisotry_track` VALUES ('2003265ad83346488c6714bd2bdf5c03', '川A1BB4A', '104.023', '30.5882', '2017-04-28 10:23:01:142', null);
INSERT INTO `gps_hisotry_track` VALUES ('20295c14f5eb4fb4b3f63dc951548a57', '川A1BB4A', '103.981', '30.6014', '2017-04-28 10:23:05:326', null);
INSERT INTO `gps_hisotry_track` VALUES ('209b225319ec41e7b3cb709d4ca7c0ba', '川A1A34B', '104.08', '30.7007', '2017-04-28 10:22:23:491', null);
INSERT INTO `gps_hisotry_track` VALUES ('20eb91f57de9446c8d1ba2f9822d65a9', '川A12345', '104.063', '30.6268', '2017-04-28 10:20:47:530', null);
INSERT INTO `gps_hisotry_track` VALUES ('210847d9880845d1b0173059465d2a13', '川A1A34B', '104.073', '30.6434', '2017-04-28 10:22:08:090', null);
INSERT INTO `gps_hisotry_track` VALUES ('211701b42833405da9388571944e2873', '川A12345', '104.074', '30.6254', '2017-04-28 10:20:41:394', null);
INSERT INTO `gps_hisotry_track` VALUES ('215af738cde34fab94849f45f6e9e588', '川A12345', '104.074', '30.6148', '2017-04-28 10:20:39:595', null);
INSERT INTO `gps_hisotry_track` VALUES ('215dd2e232814d3c97ce117e9457f83a', '川A12345', '104.058', '30.6294', '2017-04-28 10:20:48:280', null);
INSERT INTO `gps_hisotry_track` VALUES ('21708c08d7944cde9764ce5710e9fae4', '川A1BB4A', '104.214', '30.5631', '2017-04-28 10:22:41:221', null);
INSERT INTO `gps_hisotry_track` VALUES ('21beccdc71aa495da22a134b958c855e', '川A1A34B', '104.075', '30.5947', '2017-04-28 10:21:54:996', null);
INSERT INTO `gps_hisotry_track` VALUES ('21e4a6668c994af0bd159c8e414b1741', '川A1A34B', '104.077', '30.6817', '2017-04-28 10:22:19:259', null);
INSERT INTO `gps_hisotry_track` VALUES ('21f5c75aafe04793b10e7c9c6b6c65a7', '川A1BB4A', '104.241', '30.567', '2017-04-28 10:22:33:152', null);
INSERT INTO `gps_hisotry_track` VALUES ('2214ab54716248a6a2a15cd5c81b873e', '川A1A34B', '104.074', '30.626', '2017-04-28 10:22:03:473', null);
INSERT INTO `gps_hisotry_track` VALUES ('2217eb6bdc19411d9e937aa4215e95fd', '川A12345', '104.074', '30.6028', '2017-04-28 10:20:36:571', null);
INSERT INTO `gps_hisotry_track` VALUES ('22317fd7d3d3449e8d42329f8a317949', '川A1BB4A', '104.017', '30.5916', '2017-04-28 10:23:01:863', null);
INSERT INTO `gps_hisotry_track` VALUES ('22c7234025064f698f68580dd418834e', '川A1BB4A', '103.858', '30.6992', '2017-04-28 10:23:35:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('22d22ea70d244c5f914b31e568baa24d', '川A1BB4A', '104.171', '30.582', '2017-04-28 10:22:47:919', null);
INSERT INTO `gps_hisotry_track` VALUES ('22f6ddf5749f4f758849ebd20afb62ea', '川A1BB4A', '104.192', '30.5743', '2017-04-28 10:22:44:273', null);
INSERT INTO `gps_hisotry_track` VALUES ('2309df82a4474a8b899ec1f3fceff519', '川A1A34B', '104.075', '30.5786', '2017-04-28 10:21:52:853', null);
INSERT INTO `gps_hisotry_track` VALUES ('2311549dda0e402c8c82b16fd3a9b97d', '川A1BB4A', '104.118', '30.5738', '2017-04-28 10:22:51:285', null);
INSERT INTO `gps_hisotry_track` VALUES ('231be12d23ec4fd88b065eca452332aa', '川A1BB4A', '103.862', '30.7026', '2017-04-28 10:23:34:859', null);
INSERT INTO `gps_hisotry_track` VALUES ('2320d41877ae4e4082807203656f664f', '川A1BB4A', '103.925', '30.701', '2017-04-28 10:23:23:032', null);
INSERT INTO `gps_hisotry_track` VALUES ('23539b8c56d74f448478703420772b68', '川A1A34B', '104.072', '30.6686', '2017-04-28 10:22:14:915', null);
INSERT INTO `gps_hisotry_track` VALUES ('235f1232a2c44f938be9a86c5581f71e', '川A1A34B', '104.074', '30.6659', '2017-04-28 10:22:14:225', null);
INSERT INTO `gps_hisotry_track` VALUES ('237eaf8471bc4df489e6ab6c4269118b', '川A12345', '104.028', '30.6756', '2017-04-28 10:21:01:707', null);
INSERT INTO `gps_hisotry_track` VALUES ('23e768cfb9d8443184ecf15b1e05b013', '川A12345', '104.074', '30.6115', '2017-04-28 10:20:38:638', null);
INSERT INTO `gps_hisotry_track` VALUES ('2442a3a7c00e405ca0657a29ba1dbc4b', '川A1BB4A', '104.124', '30.5739', '2017-04-28 10:22:50:854', null);
INSERT INTO `gps_hisotry_track` VALUES ('24476e1b20ee4344bd275235d2325d0f', '川A1BB4A', '104.257', '30.57', '2017-04-28 10:22:28:720', null);
INSERT INTO `gps_hisotry_track` VALUES ('2468e60df9084abbb7033279e1733550', '川A1BB4A', '103.894', '30.703', '2017-04-28 10:23:25:382', null);
INSERT INTO `gps_hisotry_track` VALUES ('2538928ff2aa4239b3b4bee452435a28', '川A1BB4A', '104.234', '30.5554', '2017-04-28 10:22:39:419', null);
INSERT INTO `gps_hisotry_track` VALUES ('2544788510c24882b943ec7d6d7e9ce8', '川A1A34B', '104.075', '30.5777', '2017-04-28 10:21:52:263', null);
INSERT INTO `gps_hisotry_track` VALUES ('258383fb679b42dabeee966a293cfbd1', '川A1BB4A', '103.874', '30.7061', '2017-04-28 10:23:31:542', null);
INSERT INTO `gps_hisotry_track` VALUES ('25eb034aa5c3408a892e5c06c80f95d1', '川A1BB4A', '103.946', '30.664', '2017-04-28 10:23:14:025', null);
INSERT INTO `gps_hisotry_track` VALUES ('264424eb058e48d8b7e2bcaf1f7c16ac', '川A12345', '104.034', '30.6755', '2017-04-28 10:21:03:182', null);
INSERT INTO `gps_hisotry_track` VALUES ('2667f3a6a8ed456bbb411c7ef3accec4', '川A1BB4A', '104.211', '30.5645', '2017-04-28 10:22:41:852', null);
INSERT INTO `gps_hisotry_track` VALUES ('268c1a2ef59a450d8e34a8109735b60b', '川A1BB4A', '104.098', '30.5742', '2017-04-28 10:22:53:403', null);
INSERT INTO `gps_hisotry_track` VALUES ('26bc457d27bf4dc9ad21d5c6c3ba5ca6', '川A1A34B', '104.075', '30.5916', '2017-04-28 10:21:54:291', null);
INSERT INTO `gps_hisotry_track` VALUES ('26dc021d9d9d4bd0989da33fc1147b16', '川A1BB4A', '103.94', '30.699', '2017-04-28 10:23:19:704', null);
INSERT INTO `gps_hisotry_track` VALUES ('26ede807cbc54566bf4ff5392216f44e', '川A12345', '104.057', '30.6295', '2017-04-28 10:20:48:387', null);
INSERT INTO `gps_hisotry_track` VALUES ('27235d77c6f9441e8e2020c0f4665559', '川A1BB4A', '103.987', '30.5974', '2017-04-28 10:23:04:688', null);
INSERT INTO `gps_hisotry_track` VALUES ('27634881e5bc4e90bea0be57ca29f46a', '川A1BB4A', '104.244', '30.5731', '2017-04-28 10:22:31:356', null);
INSERT INTO `gps_hisotry_track` VALUES ('2778920440f34531af123c666ea73ef0', '川A12345', '104.074', '30.6266', '2017-04-28 10:20:42:305', null);
INSERT INTO `gps_hisotry_track` VALUES ('27936b563f3648208bb18ba37d3750b1', '川A1BB4A', '104.259', '30.5696', '2017-04-28 10:22:28:359', null);
INSERT INTO `gps_hisotry_track` VALUES ('27d529695d864440a06373e3821839bf', '川A1BB4A', '103.94', '30.6831', '2017-04-28 10:23:15:840', null);
INSERT INTO `gps_hisotry_track` VALUES ('280587b74db7481185a5a2a592ffe297', '川A12345', '104.038', '30.6421', '2017-04-28 10:20:52:882', null);
INSERT INTO `gps_hisotry_track` VALUES ('281ae030e2b946779372429c0f8d7f31', '川A1BB4A', '103.951', '30.6339', '2017-04-28 10:23:10:500', null);
INSERT INTO `gps_hisotry_track` VALUES ('2831441e8a1f4a9988982b85bf9dd327', '川A1BB4A', '103.942', '30.6751', '2017-04-28 10:23:14:973', null);
INSERT INTO `gps_hisotry_track` VALUES ('2847b821847d4d839c8ba2054a539487', '川A1A34B', '104.074', '30.606', '2017-04-28 10:21:58:263', null);
INSERT INTO `gps_hisotry_track` VALUES ('287e946b1bd84999b100afa49229aa90', '川A1A34B', '104.073', '30.6536', '2017-04-28 10:22:10:353', null);
INSERT INTO `gps_hisotry_track` VALUES ('287f1749398f4f969fba0f4580fcba0b', '川A1BB4A', '103.874', '30.7065', '2017-04-28 10:23:30:358', null);
INSERT INTO `gps_hisotry_track` VALUES ('289d53c10e4e406fb2f25b0d520adcda', '川A12345', '104.028', '30.6746', '2017-04-28 10:21:01:407', null);
INSERT INTO `gps_hisotry_track` VALUES ('28fa1656abe346ab8ddd2a62610f7cea', '川A1BB4A', '104.249', '30.572', '2017-04-28 10:22:29:654', null);
INSERT INTO `gps_hisotry_track` VALUES ('291f3b6e35f34188bc82dc108592ec80', '川A12345', '104.028', '30.6727', '2017-04-28 10:21:00:564', null);
INSERT INTO `gps_hisotry_track` VALUES ('296d13c7100b4c0ba4f14a8f4e884654', '川A1BB4A', '104.028', '30.5849', '2017-04-28 10:23:00:180', null);
INSERT INTO `gps_hisotry_track` VALUES ('297a90f6a01c45238d74d898f52e492b', '川A1BB4A', '103.874', '30.7057', '2017-04-28 10:23:32:408', null);
INSERT INTO `gps_hisotry_track` VALUES ('29a7f38420ac4949ba5a7013c1f601d3', '川A12345', '104.056', '30.6301', '2017-04-28 10:20:49:069', null);
INSERT INTO `gps_hisotry_track` VALUES ('29d2cae50a104deaa8544f7e73cca967', '川A12345', '104.074', '30.6141', '2017-04-28 10:20:39:135', null);
INSERT INTO `gps_hisotry_track` VALUES ('29f4b33a40b849ba991695f91965e6e5', '川A12345', '104.066', '30.6262', '2017-04-28 10:20:46:346', null);
INSERT INTO `gps_hisotry_track` VALUES ('2a34ec78e37c4db5befb74026ac65c4b', '川A1BB4A', '104.186', '30.577', '2017-04-28 10:22:45:402', null);
INSERT INTO `gps_hisotry_track` VALUES ('2a408359c5664819bb93514a8676a581', '川A1A34B', '104.076', '30.5342', '2017-04-28 10:21:48:638', null);
INSERT INTO `gps_hisotry_track` VALUES ('2ab65673e90342148c0e4422a33a0405', '川A12345', '104.043', '30.6374', '2017-04-28 10:20:52:189', null);
INSERT INTO `gps_hisotry_track` VALUES ('2adaeddf01584f16aafcfcb911b4119a', '川A1BB4A', '103.874', '30.706', '2017-04-28 10:23:31:667', null);
INSERT INTO `gps_hisotry_track` VALUES ('2b03b8e110664c4991951e289dc8ad35', '川A1BB4A', '103.945', '30.6667', '2017-04-28 10:23:14:323', null);
INSERT INTO `gps_hisotry_track` VALUES ('2b53d12451d14ab4827a93a17a6ccb29', '川A1A34B', '104.075', '30.5617', '2017-04-28 10:21:50:419', null);
INSERT INTO `gps_hisotry_track` VALUES ('2b5beb7595f249cea4e5b92df75aaf95', '川A1A34B', '104.073', '30.6398', '2017-04-28 10:22:07:322', null);
INSERT INTO `gps_hisotry_track` VALUES ('2b985c6e47d64b6e81969694dea60649', '川A1BB4A', '103.882', '30.7019', '2017-04-28 10:23:26:204', null);
INSERT INTO `gps_hisotry_track` VALUES ('2bdf81c6a8f14aa3a7498dae458991e3', '川A1A34B', '104.073', '30.6299', '2017-04-28 10:22:04:907', null);
INSERT INTO `gps_hisotry_track` VALUES ('2be2f57e15144dccbbd2295f9ec18720', '川A1BB4A', '104.02', '30.5901', '2017-04-28 10:23:01:547', null);
INSERT INTO `gps_hisotry_track` VALUES ('2c51984d4d684917b5f0545d4fd2e4ad', '川A12345', '104.064', '30.6265', '2017-04-28 10:20:47:372', null);
INSERT INTO `gps_hisotry_track` VALUES ('2c633a67d43b441580c084fe6c4f00d2', '川A12345', '104.075', '30.5902', '2017-04-28 10:20:34:986', null);
INSERT INTO `gps_hisotry_track` VALUES ('2c81eaf24906460eb17150e6482ae881', '川A1BB4A', '103.939', '30.698', '2017-04-28 10:23:18:229', null);
INSERT INTO `gps_hisotry_track` VALUES ('2ca9e5a7c9da47c3825cc0af111b1ae8', '川A1A34B', '104.077', '30.5108', '2017-04-28 10:21:46:687', null);
INSERT INTO `gps_hisotry_track` VALUES ('2cc8f3a037d842f385bbe657f22e8ba7', '川A12345', '104.046', '30.6348', '2017-04-28 10:20:51:163', null);
INSERT INTO `gps_hisotry_track` VALUES ('2d321bac03594981871216591a1a855a', '川A1BB4A', '104.185', '30.5776', '2017-04-28 10:22:45:761', null);
INSERT INTO `gps_hisotry_track` VALUES ('2d4345e85c07461bb3fb8e0ab28b459d', '川A1BB4A', '103.951', '30.6358', '2017-04-28 10:23:10:643', null);
INSERT INTO `gps_hisotry_track` VALUES ('2d5bbbac67db434e96857958292eeb2b', '川A1BB4A', '104.245', '30.5729', '2017-04-28 10:22:30:897', null);
INSERT INTO `gps_hisotry_track` VALUES ('2d6293e1b2ca4f2aaf60ce2369cf9891', '川A12345', '104.039', '30.6409', '2017-04-28 10:20:52:693', null);
INSERT INTO `gps_hisotry_track` VALUES ('2d6c394d33ef49e2a87b40f35836c5b1', '川A1A34B', '104.073', '30.6397', '2017-04-28 10:22:06:697', null);
INSERT INTO `gps_hisotry_track` VALUES ('2d6e87381d264dc09ee1e50250b28c77', '川A1A34B', '104.074', '30.612', '2017-04-28 10:21:59:722', null);
INSERT INTO `gps_hisotry_track` VALUES ('2dd83a90ce6c48b69d912bb47f1674d2', '川A1BB4A', '103.939', '30.693', '2017-04-28 10:23:16:523', null);
INSERT INTO `gps_hisotry_track` VALUES ('2ded2002502946789a375722aeb221c5', '川A1BB4A', '104.142', '30.5755', '2017-04-28 10:22:50:054', null);
INSERT INTO `gps_hisotry_track` VALUES ('2df3eab231374cdd8c24e4b09e006a06', '川A1BB4A', '104.241', '30.5659', '2017-04-28 10:22:33:843', null);
INSERT INTO `gps_hisotry_track` VALUES ('2e3959fc2c2f4be4a89e27b49e97c76d', '川A1BB4A', '104.262', '30.5687', '2017-04-28 10:22:27:746', null);
INSERT INTO `gps_hisotry_track` VALUES ('2e6baf73d28d4ca2b93898981f326364', '川A1BB4A', '103.94', '30.6989', '2017-04-28 10:23:19:890', null);
INSERT INTO `gps_hisotry_track` VALUES ('2e84ac1f1fc74dd89dd2a19c55054d6d', '川A1A34B', '104.072', '30.6706', '2017-04-28 10:22:15:572', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f0ee770f5784506a82e768d9c97ef42', '川A1BB4A', '104.192', '30.5746', '2017-04-28 10:22:44:492', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f11ccb5f47d43d094b6c3a1eba35085', '川A1BB4A', '103.939', '30.6985', '2017-04-28 10:23:18:519', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f1e407fe4b34e18b396f4f63407846a', '川A1BB4A', '103.939', '30.6987', '2017-04-28 10:23:18:640', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f247fc75f5e490bae868eaa18f41448', '川A12345', '104.064', '30.6264', '2017-04-28 10:20:46:996', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f308f7c654d419db4ea86dff67fcd74', '川A12345', '104.033', '30.6756', '2017-04-28 10:21:03:012', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f58baf36fa846bf8d8dccf467a7844a', '川A1A34B', '104.074', '30.6643', '2017-04-28 10:22:13:468', null);
INSERT INTO `gps_hisotry_track` VALUES ('2f7b89c90c444e2ba5edb0d8a77a6369', '川A1A34B', '104.073', '30.6378', '2017-04-28 10:22:05:866', null);
INSERT INTO `gps_hisotry_track` VALUES ('2fbece9d691c4da6982dc8d3de3d6460', '川A1BB4A', '103.884', '30.702', '2017-04-28 10:23:26:057', null);
INSERT INTO `gps_hisotry_track` VALUES ('2ffcd8e7e3b748cea761f4eb7367ccb1', '川A1BB4A', '103.94', '30.6982', '2017-04-28 10:23:20:440', null);
INSERT INTO `gps_hisotry_track` VALUES ('301158188cd8488689483f6b0b7e3e83', '川A1A34B', '104.074', '30.6059', '2017-04-28 10:21:58:171', null);
INSERT INTO `gps_hisotry_track` VALUES ('306b6943369046ac9eb92bb17c90e366', '川A1BB4A', '103.889', '30.7025', '2017-04-28 10:23:25:682', null);
INSERT INTO `gps_hisotry_track` VALUES ('30b464a9b8b04d1dbc3adef8d3b71ef2', '川A1BB4A', '104.025', '30.5866', '2017-04-28 10:23:00:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('30d0171dc6c24936a9053a52fdf3571c', '川A1A34B', '104.073', '30.6474', '2017-04-28 10:22:09:170', null);
INSERT INTO `gps_hisotry_track` VALUES ('30e3b1e350f441aa95832313e5071cdb', '川A1A34B', '104.073', '30.6394', '2017-04-28 10:22:06:123', null);
INSERT INTO `gps_hisotry_track` VALUES ('316b099f5fc443eebdc13431a42582eb', '川A1A34B', '104.075', '30.5902', '2017-04-28 10:21:54:099', null);
INSERT INTO `gps_hisotry_track` VALUES ('31833a18aedd4369820fb9ded1d5e1b8', '川A1BB4A', '104.234', '30.5551', '2017-04-28 10:22:38:561', null);
INSERT INTO `gps_hisotry_track` VALUES ('31b2b2cb3c244e848c94bbc1b46eaac9', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:798', null);
INSERT INTO `gps_hisotry_track` VALUES ('322cd8395ce442708c92a1c5127aef10', '川A1A34B', '104.079', '30.6854', '2017-04-28 10:22:21:042', null);
INSERT INTO `gps_hisotry_track` VALUES ('3262021c4bc9486487ae0fe315e3ae47', '川A1BB4A', '104.032', '30.5824', '2017-04-28 10:22:59:529', null);
INSERT INTO `gps_hisotry_track` VALUES ('328060bf91714ba7a4b8528509051d21', '川A1A34B', '104.076', '30.6803', '2017-04-28 10:22:18:445', null);
INSERT INTO `gps_hisotry_track` VALUES ('328cda2f8855412181da71d97660595e', '川A1BB4A', '104.238', '30.5616', '2017-04-28 10:22:35:073', null);
INSERT INTO `gps_hisotry_track` VALUES ('32a5a33a9cc3454db48ca8db2c332ce0', '川A1BB4A', '103.989', '30.5962', '2017-04-28 10:23:04:633', null);
INSERT INTO `gps_hisotry_track` VALUES ('33029e2659c24a418db8f966ba074d8e', '川A1A34B', '104.075', '30.5787', '2017-04-28 10:21:52:921', null);
INSERT INTO `gps_hisotry_track` VALUES ('33833178771f4421bf1c87cc575a75dc', '川A12345', '104.028', '30.6695', '2017-04-28 10:20:59:882', null);
INSERT INTO `gps_hisotry_track` VALUES ('33d671b0ac114472aafaa5863528bdb4', '川A12345', '104.056', '30.6302', '2017-04-28 10:20:49:177', null);
INSERT INTO `gps_hisotry_track` VALUES ('33dc2b70d617463ea3ea5cf9cc57570a', '川A1A34B', '104.08', '30.7005', '2017-04-28 10:22:23:178', null);
INSERT INTO `gps_hisotry_track` VALUES ('3488e98f88a7478b8ed1aaa9f14efedd', '川A1BB4A', '103.954', '30.6205', '2017-04-28 10:23:09:419', null);
INSERT INTO `gps_hisotry_track` VALUES ('348e7899ebfd43ebaf87097e3936b3ac', '川A1BB4A', '104.069', '30.5718', '2017-04-28 10:22:56:050', null);
INSERT INTO `gps_hisotry_track` VALUES ('3492e5acfe7b456fa74cb9f519f5aff6', '川A12345', '104.074', '30.6097', '2017-04-28 10:20:38:265', null);
INSERT INTO `gps_hisotry_track` VALUES ('34b74d372b50440694afc788f053eff3', '川A1A34B', '104.075', '30.6786', '2017-04-28 10:22:17:870', null);
INSERT INTO `gps_hisotry_track` VALUES ('34b864f835c0455493afd3ef3d8713cc', '川A12345', '104.074', '30.6263', '2017-04-28 10:20:41:888', null);
INSERT INTO `gps_hisotry_track` VALUES ('34c18583b1594cbe9d954295fbb96e5d', '川A12345', '104.071', '30.5849', '2017-04-28 10:20:33:746', null);
INSERT INTO `gps_hisotry_track` VALUES ('34e1fd3adc9442f492c92b9823139719', '川A1A34B', '104.078', '30.6844', '2017-04-28 10:22:20:623', null);
INSERT INTO `gps_hisotry_track` VALUES ('34fddf2ffef74629b28c41979301b977', '川A1BB4A', '103.86', '30.7005', '2017-04-28 10:23:35:429', null);
INSERT INTO `gps_hisotry_track` VALUES ('350749c6be1b4f9480c5d3f70cdb858e', '川A12345', '104.074', '30.6038', '2017-04-28 10:20:36:916', null);
INSERT INTO `gps_hisotry_track` VALUES ('35277851b41e4b87ad2bb7e4678180c5', '川A1BB4A', '104.025', '30.5869', '2017-04-28 10:23:00:988', null);
INSERT INTO `gps_hisotry_track` VALUES ('352ce21bd54f4ed7b182e6d7296d8ac8', '川A12345', '104.036', '30.6752', '2017-04-28 10:21:03:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('353caf889d9a4b3c84b0cf0573da240c', '川A1A34B', '104.073', '30.6419', '2017-04-28 10:22:07:815', null);
INSERT INTO `gps_hisotry_track` VALUES ('35eae50a08584658b9e9fe86ddaf3739', '川A1BB4A', '103.939', '30.6972', '2017-04-28 10:23:17:704', null);
INSERT INTO `gps_hisotry_track` VALUES ('3633b0965e194cfcaa051902776811c0', '川A1A34B', '104.074', '30.6044', '2017-04-28 10:21:57:659', null);
INSERT INTO `gps_hisotry_track` VALUES ('363935f0a83b4fa497962d7d6163fb18', '川A1A34B', '104.073', '30.6474', '2017-04-28 10:22:09:282', null);
INSERT INTO `gps_hisotry_track` VALUES ('3641599963054658b3ad6256c8ec5f5f', '川A1A34B', '104.078', '30.6837', '2017-04-28 10:22:20:214', null);
INSERT INTO `gps_hisotry_track` VALUES ('36535c94f21b4328baeb4eea8a3bf936', '川A12345', '104.07', '30.6262', '2017-04-28 10:20:45:726', null);
INSERT INTO `gps_hisotry_track` VALUES ('3658086bc76e443da4f139c135b9c19e', '川A1BB4A', '103.874', '30.706', '2017-04-28 10:23:31:767', null);
INSERT INTO `gps_hisotry_track` VALUES ('366fa5847924431d985a7d9ecf974855', '川A1A34B', '104.072', '30.6692', '2017-04-28 10:22:15:023', null);
INSERT INTO `gps_hisotry_track` VALUES ('368c33fdb756400b8b96471258032ed1', '川A1BB4A', '103.969', '30.6071', '2017-04-28 10:23:07:246', null);
INSERT INTO `gps_hisotry_track` VALUES ('36eea9cf32134e8da1acfae5bd7d5ac7', '川A1A34B', '104.075', '30.5664', '2017-04-28 10:21:50:924', null);
INSERT INTO `gps_hisotry_track` VALUES ('38064db7d414468ea293090dd1d144d3', '川A1BB4A', '103.941', '30.6806', '2017-04-28 10:23:15:794', null);
INSERT INTO `gps_hisotry_track` VALUES ('384116920ad04b4db53bf3d9218cd75b', '川A1A34B', '104.077', '30.5292', '2017-04-28 10:21:47:967', null);
INSERT INTO `gps_hisotry_track` VALUES ('3873c0ae58a84549856441be6258a0e4', '川A1A34B', '104.073', '30.6311', '2017-04-28 10:22:05:067', null);
INSERT INTO `gps_hisotry_track` VALUES ('387c9ab836ee4fa3a53cc3263efd3340', '川A1BB4A', '103.941', '30.6781', '2017-04-28 10:23:15:540', null);
INSERT INTO `gps_hisotry_track` VALUES ('38ad5752398c44cdb01079beb376a7b1', '川A1BB4A', '103.872', '30.706', '2017-04-28 10:23:29:349', null);
INSERT INTO `gps_hisotry_track` VALUES ('38b6d94dfb3a40b8ba7a699561f2b986', '川A1A34B', '104.074', '30.6625', '2017-04-28 10:22:12:465', null);
INSERT INTO `gps_hisotry_track` VALUES ('38cc15806ce34c85bf6efc2cc228f154', '川A1A34B', '104.074', '30.6087', '2017-04-28 10:21:58:791', null);
INSERT INTO `gps_hisotry_track` VALUES ('38ce9abf293a4106bfd30cd4782231d1', '川A1A34B', '104.074', '30.6053', '2017-04-28 10:21:58:045', null);
INSERT INTO `gps_hisotry_track` VALUES ('39176212248247dc9d5d8114fd268c8d', '川A1BB4A', '103.938', '30.6983', '2017-04-28 10:23:22:066', null);
INSERT INTO `gps_hisotry_track` VALUES ('391d142d35b449469ef0c5a28384d936', '川A1A34B', '104.08', '30.6911', '2017-04-28 10:22:21:576', null);
INSERT INTO `gps_hisotry_track` VALUES ('392944be7f3347e1a66010d405fde505', '川A1BB4A', '104.157', '30.5776', '2017-04-28 10:22:49:228', null);
INSERT INTO `gps_hisotry_track` VALUES ('393be437e4e74fa5b2c383e9896d9d39', '川A1BB4A', '104.227', '30.5581', '2017-04-28 10:22:40:127', null);
INSERT INTO `gps_hisotry_track` VALUES ('39498b9ea745443aa6fac40841981ffd', '川A1A34B', '104.074', '30.6148', '2017-04-28 10:22:00:489', null);
INSERT INTO `gps_hisotry_track` VALUES ('399590b6d7a74886b3734ed2984f7d0f', '川A1BB4A', '104.212', '30.5641', '2017-04-28 10:22:41:360', null);
INSERT INTO `gps_hisotry_track` VALUES ('39aa1cca8bbb44639fad410a529666c4', '川A1BB4A', '104.079', '30.5718', '2017-04-28 10:22:55:099', null);
INSERT INTO `gps_hisotry_track` VALUES ('39c198a43fe64f46940c769647ed40e7', '川A12345', '104.041', '30.6395', '2017-04-28 10:20:52:634', null);
INSERT INTO `gps_hisotry_track` VALUES ('39c44a99b48a41a68a74b06122879f57', '川A1BB4A', '104.168', '30.581', '2017-04-28 10:22:48:267', null);
INSERT INTO `gps_hisotry_track` VALUES ('39e3c84891b24e9ea468a76ca68825d7', '川A1BB4A', '104.19', '30.5756', '2017-04-28 10:22:45:157', null);
INSERT INTO `gps_hisotry_track` VALUES ('3a0a0dd14a3a485e9a9555867db666c1', '川A1BB4A', '104.193', '30.5739', '2017-04-28 10:22:44:102', null);
INSERT INTO `gps_hisotry_track` VALUES ('3aa37c5d14be4a498741d60b1f311fd9', '川A1A34B', '104.073', '30.639', '2017-04-28 10:22:06:039', null);
INSERT INTO `gps_hisotry_track` VALUES ('3ab788246ae84bc4a53dcbf961da6164', '川A1BB4A', '103.949', '30.6413', '2017-04-28 10:23:11:188', null);
INSERT INTO `gps_hisotry_track` VALUES ('3acdd030a52440a5b330184bce16e4db', '川A12345', '104.029', '30.6539', '2017-04-28 10:20:56:637', null);
INSERT INTO `gps_hisotry_track` VALUES ('3b216a7bb141491386d0988a7de4e554', '川A1BB4A', '104.212', '30.5642', '2017-04-28 10:22:41:669', null);
INSERT INTO `gps_hisotry_track` VALUES ('3b72c07989464e1588a20c78ed4266ba', '川A1A34B', '104.075', '30.5659', '2017-04-28 10:21:50:638', null);
INSERT INTO `gps_hisotry_track` VALUES ('3be42bd442e745a4a139eaf0268b32f2', '川A1BB4A', '104.035', '30.5809', '2017-04-28 10:22:58:692', null);
INSERT INTO `gps_hisotry_track` VALUES ('3bf2f9d3a7554d83a5b4d1bc16b4cc5d', '川A1BB4A', '104.198', '30.5715', '2017-04-28 10:22:43:668', null);
INSERT INTO `gps_hisotry_track` VALUES ('3c34f2766cc04e6488effd6b74884c32', '川A1A34B', '104.08', '30.6998', '2017-04-28 10:22:22:951', null);
INSERT INTO `gps_hisotry_track` VALUES ('3c3f82309c39466b87eceb780b9438ba', '川A1BB4A', '103.94', '30.698', '2017-04-28 10:23:20:709', null);
INSERT INTO `gps_hisotry_track` VALUES ('3c40f0eeb4af4ed3adc28bf7e26590a3', '川A1A34B', '104.074', '30.6651', '2017-04-28 10:22:13:966', null);
INSERT INTO `gps_hisotry_track` VALUES ('3c95391663094d7a981b27b5016b87d6', '川A1BB4A', '104.052', '30.576', '2017-04-28 10:22:56:927', null);
INSERT INTO `gps_hisotry_track` VALUES ('3cb3580417804800aa60f20078e33e43', '川A1A34B', '104.073', '30.6358', '2017-04-28 10:22:05:656', null);
INSERT INTO `gps_hisotry_track` VALUES ('3cc9bb20e58d4cd99adb2486ac76c0ef', '川A1BB4A', '103.874', '30.7058', '2017-04-28 10:23:32:179', null);
INSERT INTO `gps_hisotry_track` VALUES ('3cd72153ea40415cba004cf8ac36a887', '川A1BB4A', '103.939', '30.6979', '2017-04-28 10:23:21:544', null);
INSERT INTO `gps_hisotry_track` VALUES ('3ce18417b6b840ae85211ceecb00b720', '川A12345', '104.074', '30.6225', '2017-04-28 10:20:41:070', null);
INSERT INTO `gps_hisotry_track` VALUES ('3cee44115de64543bd9964e7a2c21c2d', '川A12345', '104.053', '30.6318', '2017-04-28 10:20:50:047', null);
INSERT INTO `gps_hisotry_track` VALUES ('3d38db78f84d4d30a4186f0f141203a4', '川A1BB4A', '104.17', '30.5816', '2017-04-28 10:22:48:059', null);
INSERT INTO `gps_hisotry_track` VALUES ('3d86411da49946ed895dfac21075df11', '川A1A34B', '104.077', '30.5204', '2017-04-28 10:21:47:499', null);
INSERT INTO `gps_hisotry_track` VALUES ('3d8ed4cbfb0846f2bc7190b0243d7d66', '川A1A34B', '104.073', '30.6471', '2017-04-28 10:22:09:013', null);
INSERT INTO `gps_hisotry_track` VALUES ('3d914760157b459d918b6f92fb231146', '川A1A34B', '104.077', '30.5066', '2017-04-28 10:21:45:805', null);
INSERT INTO `gps_hisotry_track` VALUES ('3de28d0cbc5344ccabfe314de66d948b', '川A1BB4A', '103.939', '30.6979', '2017-04-28 10:23:21:598', null);
INSERT INTO `gps_hisotry_track` VALUES ('3e11a87320ad47f9a2190e7206c37d23', '川A1BB4A', '103.873', '30.7066', '2017-04-28 10:23:30:198', null);
INSERT INTO `gps_hisotry_track` VALUES ('3eb67f2fe8924118ab2440b956cf576e', '川A1BB4A', '103.939', '30.6967', '2017-04-28 10:23:17:440', null);
INSERT INTO `gps_hisotry_track` VALUES ('3f01dd05c2da446095c4adc581549b92', '川A1BB4A', '103.872', '30.7057', '2017-04-28 10:23:28:365', null);
INSERT INTO `gps_hisotry_track` VALUES ('3f2fe5c29ca34cf6a001c9357e24ddde', '川A1BB4A', '103.952', '30.6317', '2017-04-28 10:23:10:264', null);
INSERT INTO `gps_hisotry_track` VALUES ('3f6f7639d4de459ebc54b4bb17f1364e', '川A1A34B', '104.072', '30.6609', '2017-04-28 10:22:11:813', null);
INSERT INTO `gps_hisotry_track` VALUES ('3fa53af6e8224c708fe0771292f4961c', '川A1BB4A', '103.965', '30.6089', '2017-04-28 10:23:07:483', null);
INSERT INTO `gps_hisotry_track` VALUES ('3fdbaa6d29f04327bdc388508f10faec', '川A1A34B', '104.073', '30.6395', '2017-04-28 10:22:06:189', null);
INSERT INTO `gps_hisotry_track` VALUES ('400b2606bbe5485098699e1e62a27325', '川A1BB4A', '104.164', '30.5797', '2017-04-28 10:22:48:573', null);
INSERT INTO `gps_hisotry_track` VALUES ('4017bfd4cc174b76803c93a927b5b6ee', '川A1BB4A', '103.978', '30.6031', '2017-04-28 10:23:05:811', null);
INSERT INTO `gps_hisotry_track` VALUES ('401f29a6b6b144c1a80c76a7223bc806', '川A1A34B', '104.073', '30.6301', '2017-04-28 10:22:04:995', null);
INSERT INTO `gps_hisotry_track` VALUES ('407dddd8cbc546e795e774f0e31ab561', '川A1BB4A', '103.858', '30.6991', '2017-04-28 10:23:35:600', null);
INSERT INTO `gps_hisotry_track` VALUES ('409e6e9cbaee47d69e16c1ebb698c43d', '川A1BB4A', '104.201', '30.5699', '2017-04-28 10:22:42:674', null);
INSERT INTO `gps_hisotry_track` VALUES ('40b8c3fc932b455d88d815e147857b9e', '川A12345', '104.051', '30.6325', '2017-04-28 10:20:50:488', null);
INSERT INTO `gps_hisotry_track` VALUES ('40e3ff884b89475098a5e95786cca17d', '川A1A34B', '104.08', '30.692', '2017-04-28 10:22:22:100', null);
INSERT INTO `gps_hisotry_track` VALUES ('41207f3f19f14a0c9446c7ebb194fe71', '川A1BB4A', '103.903', '30.7031', '2017-04-28 10:23:24:360', null);
INSERT INTO `gps_hisotry_track` VALUES ('4139d777d479466da1fe53b79dd526d4', '川A12345', '104.074', '30.6005', '2017-04-28 10:20:36:212', null);
INSERT INTO `gps_hisotry_track` VALUES ('41ac58263e244e539d902f9796688c0f', '川A1BB4A', '103.872', '30.7059', '2017-04-28 10:23:29:080', null);
INSERT INTO `gps_hisotry_track` VALUES ('42140bb7524541bf8435b26431fb29fd', '川A1A34B', '104.074', '30.6644', '2017-04-28 10:22:13:667', null);
INSERT INTO `gps_hisotry_track` VALUES ('421caf45a8ab435e8659bcb478d91296', '川A1A34B', '104.073', '30.6559', '2017-04-28 10:22:10:650', null);
INSERT INTO `gps_hisotry_track` VALUES ('422349057f6f419aa14b0224b78ea03a', '川A1BB4A', '104.187', '30.5768', '2017-04-28 10:22:45:351', null);
INSERT INTO `gps_hisotry_track` VALUES ('42268e10b3da45f7a914da70c5a388d6', '川A12345', '104.034', '30.6755', '2017-04-28 10:21:03:231', null);
INSERT INTO `gps_hisotry_track` VALUES ('42345b2b54854441b0fe96fd21b4b939', '川A1BB4A', '104.063', '30.5729', '2017-04-28 10:22:56:579', null);
INSERT INTO `gps_hisotry_track` VALUES ('427a023876e549e0b207f2e80e820d77', '川A1BB4A', '103.857', '30.6981', '2017-04-28 10:23:35:795', null);
INSERT INTO `gps_hisotry_track` VALUES ('42a694fdcc6648d09c473b94f932ada0', '川A1BB4A', '104.059', '30.574', '2017-04-28 10:22:56:625', null);
INSERT INTO `gps_hisotry_track` VALUES ('42c1106f432741d49bdbbc22e0be6a23', '川A1BB4A', '104.199', '30.5708', '2017-04-28 10:22:43:342', null);
INSERT INTO `gps_hisotry_track` VALUES ('430b80f5dab3486bbf8db36dca0c67cf', '川A1BB4A', '103.948', '30.6436', '2017-04-28 10:23:11:594', null);
INSERT INTO `gps_hisotry_track` VALUES ('433b0db158704118bc682c707c79da5b', '川A12345', '104.07', '30.6262', '2017-04-28 10:20:45:887', null);
INSERT INTO `gps_hisotry_track` VALUES ('433e2f1379e44c9bb468fc0ee0e333a1', '川A1A34B', '104.072', '30.6738', '2017-04-28 10:22:16:563', null);
INSERT INTO `gps_hisotry_track` VALUES ('4349aa0f05d54da3b00b6f649715bab9', '川A12345', '104.03', '30.6501', '2017-04-28 10:20:54:541', null);
INSERT INTO `gps_hisotry_track` VALUES ('43630c35ce13474392e438e177379c72', '川A1BB4A', '104.016', '30.5919', '2017-04-28 10:23:01:908', null);
INSERT INTO `gps_hisotry_track` VALUES ('4372fe7085ba450f8d21033dafbce84e', '川A1BB4A', '103.86', '30.7006', '2017-04-28 10:23:35:359', null);
INSERT INTO `gps_hisotry_track` VALUES ('43bfc9632843446f9a969fcbf8a0493d', '川A12345', '104.029', '30.651', '2017-04-28 10:20:55:227', null);
INSERT INTO `gps_hisotry_track` VALUES ('44365ddc014e4317891feded6647ff83', '川A12345', '104.054', '30.6313', '2017-04-28 10:20:49:755', null);
INSERT INTO `gps_hisotry_track` VALUES ('4451c2c5a9374b43b763658d479951c1', '川A1BB4A', '104.241', '30.5665', '2017-04-28 10:22:33:458', null);
INSERT INTO `gps_hisotry_track` VALUES ('44d59e7e19d54c79a20b0c952523c791', '川A1A34B', '104.08', '30.7013', '2017-04-28 10:22:24:206', null);
INSERT INTO `gps_hisotry_track` VALUES ('44dcef6dfeef441d824915b7a134b7c4', '川A1BB4A', '104.222', '30.5598', '2017-04-28 10:22:40:902', null);
INSERT INTO `gps_hisotry_track` VALUES ('455f7c35d1934314a46d02abfa276f4b', '川A12345', '104.029', '30.6588', '2017-04-28 10:20:57:265', null);
INSERT INTO `gps_hisotry_track` VALUES ('45993d6fcc264c55b8399e9c3b233bbd', '川A1BB4A', '103.966', '30.6085', '2017-04-28 10:23:07:392', null);
INSERT INTO `gps_hisotry_track` VALUES ('45b9fb650ca64e0880aa451aa16951e5', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:721', null);
INSERT INTO `gps_hisotry_track` VALUES ('45d6078474964238b96b431ba3c452be', '川A12345', '104.075', '30.6263', '2017-04-28 10:20:44:147', null);
INSERT INTO `gps_hisotry_track` VALUES ('4636292b4e11442c975e0ec68c0d0285', '川A1BB4A', '104.03', '30.5836', '2017-04-28 10:22:59:713', null);
INSERT INTO `gps_hisotry_track` VALUES ('4655f73a73f24b7897f0ac074312b6df', '川A12345', '104.074', '30.6256', '2017-04-28 10:20:41:514', null);
INSERT INTO `gps_hisotry_track` VALUES ('46f8fe841500413ca07f46649f03b631', '川A1A34B', '104.074', '30.6179', '2017-04-28 10:22:01:856', null);
INSERT INTO `gps_hisotry_track` VALUES ('4715ee8cd6bf41f7b7e26573f903b53d', '川A1A34B', '104.074', '30.4948', '2017-04-28 10:21:44:077', null);
INSERT INTO `gps_hisotry_track` VALUES ('4732bca91b5048578802789eea65b4f5', '川A1BB4A', '104.234', '30.5552', '2017-04-28 10:22:39:232', null);
INSERT INTO `gps_hisotry_track` VALUES ('4738029d0fd4419d943c905939f5a818', '川A1A34B', '104.073', '30.6402', '2017-04-28 10:22:07:659', null);
INSERT INTO `gps_hisotry_track` VALUES ('47391c114f034d42b5d5b7de2a7956d5', '川A1BB4A', '104.075', '30.5718', '2017-04-28 10:22:55:754', null);
INSERT INTO `gps_hisotry_track` VALUES ('47436615cb3b4feea38963d7a6f2830e', '川A1BB4A', '103.971', '30.6061', '2017-04-28 10:23:06:600', null);
INSERT INTO `gps_hisotry_track` VALUES ('476498eb7eff417689cc0938c48185cf', '川A12345', '104.074', '30.6263', '2017-04-28 10:20:44:230', null);
INSERT INTO `gps_hisotry_track` VALUES ('4795e49673d14d81b2dcad4ab81a3f82', '川A1BB4A', '104.235', '30.5552', '2017-04-28 10:22:37:899', null);
INSERT INTO `gps_hisotry_track` VALUES ('480e0366a67e47df9af8d8a2e748610e', '川A1BB4A', '103.949', '30.6412', '2017-04-28 10:23:11:086', null);
INSERT INTO `gps_hisotry_track` VALUES ('481a1987559f4b3b95b955337b634a0f', '川A1BB4A', '104.003', '30.5919', '2017-04-28 10:23:03:194', null);
INSERT INTO `gps_hisotry_track` VALUES ('483f3d9f63d5466fb3beb08768c048c8', '川A1BB4A', '103.954', '30.6211', '2017-04-28 10:23:09:480', null);
INSERT INTO `gps_hisotry_track` VALUES ('4842f737d28e4e0ab7f297030a7515ed', '川A1A34B', '104.075', '30.5953', '2017-04-28 10:21:55:677', null);
INSERT INTO `gps_hisotry_track` VALUES ('4861212560494096968a0299867a82f4', '川A1A34B', '104.073', '30.6372', '2017-04-28 10:22:05:706', null);
INSERT INTO `gps_hisotry_track` VALUES ('48a0c40abc754fa680086a31ad619ac8', '川A1BB4A', '103.979', '30.6023', '2017-04-28 10:23:05:375', null);
INSERT INTO `gps_hisotry_track` VALUES ('48cb80af1ee74c2085f3e325e1e07c3c', '川A1A34B', '104.075', '30.5717', '2017-04-28 10:21:51:664', null);
INSERT INTO `gps_hisotry_track` VALUES ('48d74635ed25476fbb5c0c109db5479d', '川A1A34B', '104.074', '30.6139', '2017-04-28 10:22:00:028', null);
INSERT INTO `gps_hisotry_track` VALUES ('48e04fcc7a9c4ae9bd475a7bc8075b24', '川A12345', '104.035', '30.645', '2017-04-28 10:20:53:107', null);
INSERT INTO `gps_hisotry_track` VALUES ('494323dd0eeb43b0b25ac87f6a9a6ebe', '川A12345', '104.033', '30.6755', '2017-04-28 10:21:03:090', null);
INSERT INTO `gps_hisotry_track` VALUES ('4985ea6631b84db2b6a27a77a7f8e82e', '川A12345', '104.051', '30.6327', '2017-04-28 10:20:50:741', null);
INSERT INTO `gps_hisotry_track` VALUES ('49ab5e63568c4feb80a655fe015cd89b', '川A1BB4A', '104.241', '30.5664', '2017-04-28 10:22:33:657', null);
INSERT INTO `gps_hisotry_track` VALUES ('49acc779282c4c718780bdf0570601de', '川A1A34B', '104.079', '30.6883', '2017-04-28 10:22:21:418', null);
INSERT INTO `gps_hisotry_track` VALUES ('49b96af5c16b4f56bdffc9947028f23a', '川A1BB4A', '103.946', '30.6527', '2017-04-28 10:23:13:064', null);
INSERT INTO `gps_hisotry_track` VALUES ('49d76708024847c6ba383f8bcc771d19', '川A1BB4A', '103.94', '30.6988', '2017-04-28 10:23:19:952', null);
INSERT INTO `gps_hisotry_track` VALUES ('49f944eaeecb4efba4c8e0cda771a8cf', '川A1BB4A', '103.939', '30.6955', '2017-04-28 10:23:17:285', null);
INSERT INTO `gps_hisotry_track` VALUES ('4a025701ce73408dac4a83605d8600e2', '川A1BB4A', '103.953', '30.6256', '2017-04-28 10:23:09:813', null);
INSERT INTO `gps_hisotry_track` VALUES ('4a0cc0e5ef4f48ea9bb2c5d3b6c48396', '川A1A34B', '104.08', '30.7007', '2017-04-28 10:22:23:560', null);
INSERT INTO `gps_hisotry_track` VALUES ('4a1da14a61f24447906e8f0413994783', '川A1BB4A', '103.94', '30.698', '2017-04-28 10:23:20:598', null);
INSERT INTO `gps_hisotry_track` VALUES ('4a4e608d1d1840299cba1078fcc399dc', '川A1A34B', '104.074', '30.663', '2017-04-28 10:22:13:124', null);
INSERT INTO `gps_hisotry_track` VALUES ('4a50f2f2ddea4c8e9c98579d80baad64', '川A1BB4A', '104.235', '30.5552', '2017-04-28 10:22:38:131', null);
INSERT INTO `gps_hisotry_track` VALUES ('4aa1da51493c48c1aeb478f5a235247d', '川A1BB4A', '103.864', '30.7036', '2017-04-28 10:23:33:834', null);
INSERT INTO `gps_hisotry_track` VALUES ('4ada11ffe93b4a6f9c524f0101ba33aa', '川A1BB4A', '104.041', '30.5791', '2017-04-28 10:22:58:212', null);
INSERT INTO `gps_hisotry_track` VALUES ('4b13bca94635431aa6e38383110c290c', '川A1A34B', '104.075', '30.585', '2017-04-28 10:21:53:598', null);
INSERT INTO `gps_hisotry_track` VALUES ('4b20ca8edb81417f95b4e9b233edc2c3', '川A12345', '104.07', '30.6262', '2017-04-28 10:20:46:080', null);
INSERT INTO `gps_hisotry_track` VALUES ('4b86bee36f294237bc6b942532813ba7', '川A1BB4A', '103.872', '30.7062', '2017-04-28 10:23:29:913', null);
INSERT INTO `gps_hisotry_track` VALUES ('4ba4bab3e3ee4ab48e592369d2edcb27', '川A1A34B', '104.074', '30.6041', '2017-04-28 10:21:57:323', null);
INSERT INTO `gps_hisotry_track` VALUES ('4bc3c56b682c414fab29ff4f4712c066', '川A1BB4A', '103.925', '30.7011', '2017-04-28 10:23:23:281', null);
INSERT INTO `gps_hisotry_track` VALUES ('4be07e7997414bef92c06ccb8bc80c6e', '川A1BB4A', '103.94', '30.6979', '2017-04-28 10:23:21:237', null);
INSERT INTO `gps_hisotry_track` VALUES ('4bf21d56fa4f470eab6f8317812e970a', '川A1A34B', '104.074', '30.611', '2017-04-28 10:21:59:466', null);
INSERT INTO `gps_hisotry_track` VALUES ('4c00d391fa014691b948f024c8c63d2d', '川A1BB4A', '103.881', '30.702', '2017-04-28 10:23:26:582', null);
INSERT INTO `gps_hisotry_track` VALUES ('4c032d1968334cc09838e6fc94f7b9ec', '川A1BB4A', '104.191', '30.5751', '2017-04-28 10:22:44:756', null);
INSERT INTO `gps_hisotry_track` VALUES ('4c0cc2fb68f940819d89982fc26f8913', '川A1BB4A', '104.123', '30.5738', '2017-04-28 10:22:50:994', null);
INSERT INTO `gps_hisotry_track` VALUES ('4c69c8cceb8442e2b26d5c6657993f8d', '川A1BB4A', '103.874', '30.7061', '2017-04-28 10:23:31:497', null);
INSERT INTO `gps_hisotry_track` VALUES ('4ca9ca9fd8cd465ea5fa2e6795c8fb32', '川A1A34B', '104.074', '30.602', '2017-04-28 10:21:56:522', null);
INSERT INTO `gps_hisotry_track` VALUES ('4cff420bf2bd4026a9cb54a0e462de70', '川A1A34B', '104.075', '30.592', '2017-04-28 10:21:54:612', null);
INSERT INTO `gps_hisotry_track` VALUES ('4d1ebee4c460496cab5f09bcb6814022', '川A1BB4A', '104.022', '30.5887', '2017-04-28 10:23:01:204', null);
INSERT INTO `gps_hisotry_track` VALUES ('4d3bd39c2ab745548e48d88e0d9deeac', '川A1BB4A', '104.184', '30.5777', '2017-04-28 10:22:45:923', null);
INSERT INTO `gps_hisotry_track` VALUES ('4d59fe15f0c04fe1b48edbaf235c2993', '川A12345', '104.063', '30.6269', '2017-04-28 10:20:47:613', null);
INSERT INTO `gps_hisotry_track` VALUES ('4d8ad472901e417fb4446a83614fd115', '川A1BB4A', '103.852', '30.6988', '2017-04-28 10:23:36:423', null);
INSERT INTO `gps_hisotry_track` VALUES ('4dbcb8711b3547dc9183141c219cbff2', '川A1BB4A', '104.249', '30.572', '2017-04-28 10:22:29:700', null);
INSERT INTO `gps_hisotry_track` VALUES ('4e1ce8a05fc34e80902ef72d52b9eaa9', '川A1BB4A', '103.939', '30.6978', '2017-04-28 10:23:18:138', null);
INSERT INTO `gps_hisotry_track` VALUES ('4f28407da4ac4b619806861e0d3c58fc', '川A12345', '104.074', '30.606', '2017-04-28 10:20:37:687', null);
INSERT INTO `gps_hisotry_track` VALUES ('4f2867662007414080860b10476a5191', '川A1BB4A', '103.995', '30.5929', '2017-04-28 10:23:03:938', null);
INSERT INTO `gps_hisotry_track` VALUES ('4f54cee4d3984f1fbb19c0ebf79d4e87', '川A12345', '104.074', '30.6034', '2017-04-28 10:20:36:727', null);
INSERT INTO `gps_hisotry_track` VALUES ('4ff0d742c0fb4c08ac6c7f5377fda2f8', '川A1A34B', '104.074', '30.5995', '2017-04-28 10:21:56:134', null);
INSERT INTO `gps_hisotry_track` VALUES ('4ff5cda2bfe14344959f91cd84ff2f1e', '川A1BB4A', '103.939', '30.6989', '2017-04-28 10:23:19:017', null);
INSERT INTO `gps_hisotry_track` VALUES ('50158175469a41cf9399ec3e5cdd4c1f', '川A1A34B', '104.077', '30.5219', '2017-04-28 10:21:47:579', null);
INSERT INTO `gps_hisotry_track` VALUES ('50219982bfab45ff8e64f1e1fcf67c11', '川A12345', '104.074', '30.6042', '2017-04-28 10:20:37:112', null);
INSERT INTO `gps_hisotry_track` VALUES ('506a7413d6dd42ec958c102e3a57db80', '川A12345', '104.071', '30.5834', '2017-04-28 10:20:33:516', null);
INSERT INTO `gps_hisotry_track` VALUES ('50a9211f6ca64c438d6ede46e7bf1391', '川A12345', '104.052', '30.6324', '2017-04-28 10:20:50:437', null);
INSERT INTO `gps_hisotry_track` VALUES ('50c52f1195e94d119228596adf064972', '川A1BB4A', '103.941', '30.6778', '2017-04-28 10:23:15:438', null);
INSERT INTO `gps_hisotry_track` VALUES ('50e54947535a4c3e98e1cee296807556', '川A1BB4A', '104.176', '30.5813', '2017-04-28 10:22:46:627', null);
INSERT INTO `gps_hisotry_track` VALUES ('50ea0353c3e6448195f6e6d9eb173c57', '川A1BB4A', '104.26', '30.5692', '2017-04-28 10:22:28:179', null);
INSERT INTO `gps_hisotry_track` VALUES ('5100089364514b9ba69a2f385e768268', '川A1BB4A', '103.872', '30.7053', '2017-04-28 10:23:32:939', null);
INSERT INTO `gps_hisotry_track` VALUES ('513192b3e3ce460faf2e32780696351c', '川A12345', '104.058', '30.629', '2017-04-28 10:20:47:751', null);
INSERT INTO `gps_hisotry_track` VALUES ('5135882a9a464d778d75ef7cd3e09cd9', '川A1BB4A', '103.982', '30.6005', '2017-04-28 10:23:05:171', null);
INSERT INTO `gps_hisotry_track` VALUES ('515e9c8140e8404ca1d9a9b9a3d82d30', '川A1BB4A', '103.949', '30.6403', '2017-04-28 10:23:10:947', null);
INSERT INTO `gps_hisotry_track` VALUES ('518f62985ec547d9b8e9487baed9023e', '川A1A34B', '104.077', '30.5071', '2017-04-28 10:21:46:187', null);
INSERT INTO `gps_hisotry_track` VALUES ('51ae31d7e52f41d7bcc50ac62a6d08d4', '川A1A34B', '104.072', '30.6623', '2017-04-28 10:22:12:009', null);
INSERT INTO `gps_hisotry_track` VALUES ('51d6d9de37034640b1e95b6d73ccf3ea', '川A1BB4A', '103.99', '30.5952', '2017-04-28 10:23:04:571', null);
INSERT INTO `gps_hisotry_track` VALUES ('51d7be094d634cef8b86875376f7cf6b', '川A12345', '104.072', '30.5849', '2017-04-28 10:20:33:823', null);
INSERT INTO `gps_hisotry_track` VALUES ('5206a26b289b4d38a7441f36ecb39602', '川A1BB4A', '104.262', '30.5687', '2017-04-28 10:22:27:840', null);
INSERT INTO `gps_hisotry_track` VALUES ('5232d56ac71d4b8ea38c7bd69509c670', '川A1A34B', '104.077', '30.5103', '2017-04-28 10:21:46:496', null);
INSERT INTO `gps_hisotry_track` VALUES ('523af9d4377d411da8edfa9dec1ed900', '川A12345', '104.075', '30.585', '2017-04-28 10:20:34:335', null);
INSERT INTO `gps_hisotry_track` VALUES ('5252cc1db7864704b22952d572950e36', '川A1A34B', '104.076', '30.5329', '2017-04-28 10:21:48:212', null);
INSERT INTO `gps_hisotry_track` VALUES ('525d6f0c1c59434c9dc4b3aefc768f5d', '川A12345', '104.072', '30.6263', '2017-04-28 10:20:45:326', null);
INSERT INTO `gps_hisotry_track` VALUES ('528bdaed0222469295229d8129ef35a1', '川A1A34B', '104.074', '30.6239', '2017-04-28 10:22:02:755', null);
INSERT INTO `gps_hisotry_track` VALUES ('52cba7367b3a4c4fa4b37a8f21bb3be9', '川A1BB4A', '103.939', '30.6981', '2017-04-28 10:23:21:664', null);
INSERT INTO `gps_hisotry_track` VALUES ('53b5eea281d1456f9c944edbfeb6db17', '川A1BB4A', '104.249', '30.5719', '2017-04-28 10:22:29:576', null);
INSERT INTO `gps_hisotry_track` VALUES ('5448bde5d48c49b4b5437cda5eab5beb', '川A1A34B', '104.074', '30.6783', '2017-04-28 10:22:17:772', null);
INSERT INTO `gps_hisotry_track` VALUES ('5460c6a7877d4ec7a8b999af1100c77a', '川A1BB4A', '103.944', '30.6702', '2017-04-28 10:23:14:484', null);
INSERT INTO `gps_hisotry_track` VALUES ('547062e0d94d43d3b0936f92826f793c', '川A1BB4A', '103.946', '30.6624', '2017-04-28 10:23:13:827', null);
INSERT INTO `gps_hisotry_track` VALUES ('54a0fdb0e7cc4c988c3e34aa59a53731', '川A12345', '104.033', '30.6756', '2017-04-28 10:21:02:939', null);
INSERT INTO `gps_hisotry_track` VALUES ('54b5ec2025934fee9686d78603fe895b', '川A1BB4A', '103.872', '30.7053', '2017-04-28 10:23:27:798', null);
INSERT INTO `gps_hisotry_track` VALUES ('54d7d7178116461b9af4b9b7c474d05c', '川A12345', '104.056', '30.63', '2017-04-28 10:20:48:928', null);
INSERT INTO `gps_hisotry_track` VALUES ('54f76423ff8c436ea829715cc3921908', '川A1BB4A', '103.877', '30.7033', '2017-04-28 10:23:27:319', null);
INSERT INTO `gps_hisotry_track` VALUES ('5500eefbab1941c5b0d8b3f0516b56af', '川A1A34B', '104.074', '30.6042', '2017-04-28 10:21:57:414', null);
INSERT INTO `gps_hisotry_track` VALUES ('551e2220ac8449e3b719da775e56954a', '川A1BB4A', '103.939', '30.6881', '2017-04-28 10:23:16:140', null);
INSERT INTO `gps_hisotry_track` VALUES ('55277a84eac140fa95122f3c98562cec', '川A12345', '104.071', '30.5835', '2017-04-28 10:20:33:611', null);
INSERT INTO `gps_hisotry_track` VALUES ('552d7fac5759453fb13b5f8e640b364a', '川A1BB4A', '104.02', '30.5898', '2017-04-28 10:23:01:479', null);
INSERT INTO `gps_hisotry_track` VALUES ('552e55ef6f6e4dbcbcd2d02e574c9488', '川A1A34B', '104.075', '30.5943', '2017-04-28 10:21:54:903', null);
INSERT INTO `gps_hisotry_track` VALUES ('553dfef67613448b8b947652db1e2135', '川A1A34B', '104.073', '30.6497', '2017-04-28 10:22:09:622', null);
INSERT INTO `gps_hisotry_track` VALUES ('554f169e9bf141cdaf0d3ff26ecdc37c', '川A1BB4A', '103.852', '30.6993', '2017-04-28 10:23:36:659', null);
INSERT INTO `gps_hisotry_track` VALUES ('5561e23443754b0e9f09b540156245ef', '川A12345', '104.074', '30.611', '2017-04-28 10:20:38:529', null);
INSERT INTO `gps_hisotry_track` VALUES ('5591cc254dc64f75a176e604c6be6cb6', '川A12345', '104.074', '30.6175', '2017-04-28 10:20:40:163', null);
INSERT INTO `gps_hisotry_track` VALUES ('55cde6729f3040bb97a7cb1e16aaf999', '川A1BB4A', '104.054', '30.5755', '2017-04-28 10:22:56:750', null);
INSERT INTO `gps_hisotry_track` VALUES ('55ceead6d02244a294affb2b078fb1c8', '川A1BB4A', '104.258', '30.5697', '2017-04-28 10:22:28:440', null);
INSERT INTO `gps_hisotry_track` VALUES ('55f1c453f5e044f88489aa103cb6f512', '川A1BB4A', '103.946', '30.6578', '2017-04-28 10:23:13:457', null);
INSERT INTO `gps_hisotry_track` VALUES ('5650124c111e45b98bad858332703701', '川A12345', '104.03', '30.6505', '2017-04-28 10:20:55:046', null);
INSERT INTO `gps_hisotry_track` VALUES ('5651238fd5a6491984ce19e588dc3126', '川A1BB4A', '103.939', '30.6977', '2017-04-28 10:23:18:056', null);
INSERT INTO `gps_hisotry_track` VALUES ('565d25629ba34d4c93c998dcd77757c0', '川A1A34B', '104.072', '30.6726', '2017-04-28 10:22:15:900', null);
INSERT INTO `gps_hisotry_track` VALUES ('5696084571b54c9dac57084cd2f96279', '川A1BB4A', '104.225', '30.5588', '2017-04-28 10:22:40:686', null);
INSERT INTO `gps_hisotry_track` VALUES ('56befa76db5f4587978d743ef627940c', '川A1BB4A', '104.241', '30.5658', '2017-04-28 10:22:34:134', null);
INSERT INTO `gps_hisotry_track` VALUES ('56cdb6e0e47c42cabb614956c09dba39', '川A1BB4A', '104.186', '30.5771', '2017-04-28 10:22:45:465', null);
INSERT INTO `gps_hisotry_track` VALUES ('57094d41fee74231b81fc96fd86a1095', '川A1BB4A', '103.862', '30.7026', '2017-04-28 10:23:34:698', null);
INSERT INTO `gps_hisotry_track` VALUES ('571fb11829934c12b6c9896c8624bb94', '川A1BB4A', '103.947', '30.6472', '2017-04-28 10:23:12:218', null);
INSERT INTO `gps_hisotry_track` VALUES ('572cfdbcf31a4f62929d4168747b5816', '川A1BB4A', '104.178', '30.5803', '2017-04-28 10:22:46:344', null);
INSERT INTO `gps_hisotry_track` VALUES ('573db10a44b04f01b294f537929859aa', '川A1BB4A', '103.851', '30.7022', '2017-04-28 10:23:37:036', null);
INSERT INTO `gps_hisotry_track` VALUES ('5767c29c66a446d4bdf27a14fb14c8d5', '川A1BB4A', '103.851', '30.7001', '2017-04-28 10:23:36:799', null);
INSERT INTO `gps_hisotry_track` VALUES ('5771895720834109a3c8fb0474928465', '川A1BB4A', '104.067', '30.572', '2017-04-28 10:22:56:167', null);
INSERT INTO `gps_hisotry_track` VALUES ('578c529fbfe44c99ae8fbe6feee70934', '川A1BB4A', '103.878', '30.7029', '2017-04-28 10:23:27:194', null);
INSERT INTO `gps_hisotry_track` VALUES ('57a3bd4d44e7462aa83b11a70f458db3', '川A1A34B', '104.074', '30.6774', '2017-04-28 10:22:17:603', null);
INSERT INTO `gps_hisotry_track` VALUES ('57cee78656e14435ac937719c0cf3e45', '川A1A34B', '104.077', '30.5168', '2017-04-28 10:21:47:386', null);
INSERT INTO `gps_hisotry_track` VALUES ('57da3a0a5ecc47f1a5cc829558cba692', '川A12345', '104.074', '30.6263', '2017-04-28 10:20:44:590', null);
INSERT INTO `gps_hisotry_track` VALUES ('5833072779df43368f71f24b27c61e29', '川A1BB4A', '103.949', '30.6405', '2017-04-28 10:23:11:038', null);
INSERT INTO `gps_hisotry_track` VALUES ('587569d418e94120aa79648edd38bfe3', '川A1BB4A', '104.174', '30.5831', '2017-04-28 10:22:47:215', null);
INSERT INTO `gps_hisotry_track` VALUES ('588a3646923b4791a9f98cb290059543', '川A12345', '104.074', '30.5961', '2017-04-28 10:20:36:030', null);
INSERT INTO `gps_hisotry_track` VALUES ('58d9ec83ca5247449eee35829dd449dc', '川A1BB4A', '103.874', '30.7058', '2017-04-28 10:23:32:133', null);
INSERT INTO `gps_hisotry_track` VALUES ('58e93596a1954dd2905956f255f9259e', '川A1A34B', '104.075', '30.5949', '2017-04-28 10:21:55:524', null);
INSERT INTO `gps_hisotry_track` VALUES ('591257eef1134358986e2b0b5f05c0b0', '川A1BB4A', '104.237', '30.5596', '2017-04-28 10:22:35:673', null);
INSERT INTO `gps_hisotry_track` VALUES ('59126e88e3004e45a10ab7a691e26e45', '川A1BB4A', '103.955', '30.6173', '2017-04-28 10:23:08:909', null);
INSERT INTO `gps_hisotry_track` VALUES ('593491d1bf584a60aac884d415d85e4b', '川A12345', '104.074', '30.6146', '2017-04-28 10:20:39:471', null);
INSERT INTO `gps_hisotry_track` VALUES ('599bb92d7d874fd8adb575b8e5f29b0e', '川A12345', '104.028', '30.668', '2017-04-28 10:20:59:115', null);
INSERT INTO `gps_hisotry_track` VALUES ('59a5b4c5ff454df99a163da38b68bd67', '川A12345', '104.074', '30.6265', '2017-04-28 10:20:42:171', null);
INSERT INTO `gps_hisotry_track` VALUES ('59e4a731b47a47539b781a0c7efd9f56', '川A12345', '104.034', '30.6462', '2017-04-28 10:20:53:470', null);
INSERT INTO `gps_hisotry_track` VALUES ('59e8b58d79c84c04918e779fe96dce19', '川A1BB4A', '103.874', '30.7062', '2017-04-28 10:23:31:006', null);
INSERT INTO `gps_hisotry_track` VALUES ('5a4b6d3fcab34d48a1ca9395a0c6660d', '川A1A34B', '104.074', '30.6269', '2017-04-28 10:22:04:374', null);
INSERT INTO `gps_hisotry_track` VALUES ('5a56d0606d0641db8540d68f21ebf40e', '川A1A34B', '104.08', '30.7009', '2017-04-28 10:22:24:050', null);
INSERT INTO `gps_hisotry_track` VALUES ('5a87d9ff0ba24082922682597abf2500', '川A1BB4A', '103.874', '30.7059', '2017-04-28 10:23:31:812', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ad26e9084e84a1fbd19ab48f9c25d7d', '川A1BB4A', '103.991', '30.5945', '2017-04-28 10:23:04:388', null);
INSERT INTO `gps_hisotry_track` VALUES ('5b46a3ad0d6e4719b94d1700f2969d40', '川A1BB4A', '104.189', '30.5761', '2017-04-28 10:22:45:228', null);
INSERT INTO `gps_hisotry_track` VALUES ('5bc7c3afb73942519043e5ad9cee917d', '川A1BB4A', '103.911', '30.7017', '2017-04-28 10:23:24:204', null);
INSERT INTO `gps_hisotry_track` VALUES ('5c068fef751e4c318514400825f1c629', '川A1BB4A', '103.938', '30.6983', '2017-04-28 10:23:22:411', null);
INSERT INTO `gps_hisotry_track` VALUES ('5c350a0936ba4ed09b3a932f4ffaddda', '川A12345', '104.074', '30.6089', '2017-04-28 10:20:38:170', null);
INSERT INTO `gps_hisotry_track` VALUES ('5c83bd77926348db89aa59e78c98b5b6', '川A12345', '104.074', '30.6265', '2017-04-28 10:20:42:263', null);
INSERT INTO `gps_hisotry_track` VALUES ('5c94e3bdbded4b328e6992811e3818a2', '川A1BB4A', '104.035', '30.5812', '2017-04-28 10:22:59:022', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ca5861621174230aa0d137de3d9159d', '川A1A34B', '104.073', '30.6674', '2017-04-28 10:22:14:520', null);
INSERT INTO `gps_hisotry_track` VALUES ('5cb6ee553c9c4153abdad8f17f0d6c07', '川A12345', '104.029', '30.6543', '2017-04-28 10:20:56:814', null);
INSERT INTO `gps_hisotry_track` VALUES ('5d91e36a276c4330be97396178aaccf7', '川A1BB4A', '103.96', '30.612', '2017-04-28 10:23:07:883', null);
INSERT INTO `gps_hisotry_track` VALUES ('5de344ddf39645a39978f1e394721753', '川A12345', '104.053', '30.632', '2017-04-28 10:20:50:119', null);
INSERT INTO `gps_hisotry_track` VALUES ('5e7678cd847f44f28b7f5eb9269ffc4c', '川A1A34B', '104.075', '30.6787', '2017-04-28 10:22:18:034', null);
INSERT INTO `gps_hisotry_track` VALUES ('5e7ba4e17888409db99e807526f5a9f4', '川A1BB4A', '104.212', '30.5643', '2017-04-28 10:22:41:783', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ed4424b93e646198db2ecfbaa4e435f', '川A1BB4A', '104.014', '30.5921', '2017-04-28 10:23:02:096', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ed50803329a43cb85e139ad7448f473', '川A1A34B', '104.072', '30.6622', '2017-04-28 10:22:11:938', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ef0916b477a4a668efc1c3f08a52f94', '川A1A34B', '104.074', '30.6179', '2017-04-28 10:22:01:781', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ef2bcff398046118723ae63e095916c', '川A1BB4A', '104.012', '30.5922', '2017-04-28 10:23:02:261', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ef7d366f0734cf4ac19f17ce8998e73', '川A1BB4A', '104.026', '30.586', '2017-04-28 10:23:00:355', null);
INSERT INTO `gps_hisotry_track` VALUES ('5f67ae1142e44a09922a4e0fde3cf8e1', '川A1A34B', '104.078', '30.6836', '2017-04-28 10:22:20:092', null);
INSERT INTO `gps_hisotry_track` VALUES ('5f7e4bbddb0e47ebbd0c55ec3c9f7751', '川A12345', '104.045', '30.6358', '2017-04-28 10:20:51:712', null);
INSERT INTO `gps_hisotry_track` VALUES ('5fd1e014a4124a1a8b00391f98105ae7', '川A12345', '104.03', '30.6505', '2017-04-28 10:20:54:958', null);
INSERT INTO `gps_hisotry_track` VALUES ('5ff51478219b4f318efe48df1d34a4c1', '川A1BB4A', '104.091', '30.573', '2017-04-28 10:22:53:654', null);
INSERT INTO `gps_hisotry_track` VALUES ('60427d32ac40495caebff2b9cc03a02a', '川A1BB4A', '104.244', '30.5728', '2017-04-28 10:22:31:939', null);
INSERT INTO `gps_hisotry_track` VALUES ('608bd613bbf34af9bb9c5a4b9c5fb99f', '川A1A34B', '104.072', '30.6716', '2017-04-28 10:22:15:769', null);
INSERT INTO `gps_hisotry_track` VALUES ('60c6741df9514ea9812acd1d74ef5c5c', '川A1A34B', '104.075', '30.5818', '2017-04-28 10:21:53:332', null);
INSERT INTO `gps_hisotry_track` VALUES ('60e777bf28a64d8983ae3d1f94818a21', '川A1A34B', '104.078', '30.684', '2017-04-28 10:22:20:400', null);
INSERT INTO `gps_hisotry_track` VALUES ('60fedaa258cb4e18b26679ab41860c24', '川A1BB4A', '104.241', '30.5671', '2017-04-28 10:22:32:693', null);
INSERT INTO `gps_hisotry_track` VALUES ('614c5cba419c464cbb59915b6cd60d54', '川A12345', '104.074', '30.5995', '2017-04-28 10:20:36:151', null);
INSERT INTO `gps_hisotry_track` VALUES ('6192f3d6367046b18965de5e81a0bbd5', '川A12345', '104.074', '30.6104', '2017-04-28 10:20:38:387', null);
INSERT INTO `gps_hisotry_track` VALUES ('61ad20ad9f3a4cf4aecd7534bf49705a', '川A1BB4A', '103.999', '30.592', '2017-04-28 10:23:03:529', null);
INSERT INTO `gps_hisotry_track` VALUES ('61ef0cf2f6c8437987f8b1ded2ef18f1', '川A1A34B', '104.08', '30.6926', '2017-04-28 10:22:22:314', null);
INSERT INTO `gps_hisotry_track` VALUES ('61f07c82f7864cdabc120d74e63ccb6d', '川A1BB4A', '104.262', '30.5688', '2017-04-28 10:22:28:052', null);
INSERT INTO `gps_hisotry_track` VALUES ('6205e14111d54edf87fb92ead02dbfec', '川A1A34B', '104.073', '30.6543', '2017-04-28 10:22:10:480', null);
INSERT INTO `gps_hisotry_track` VALUES ('6268875bf0c8426bbb7be0cdf153b0d6', '川A1BB4A', '104.23', '30.5569', '2017-04-28 10:22:39:961', null);
INSERT INTO `gps_hisotry_track` VALUES ('6283baa7f7944915b29276b41f1f6122', '川A1BB4A', '103.874', '30.7062', '2017-04-28 10:23:31:272', null);
INSERT INTO `gps_hisotry_track` VALUES ('6338ea1d8d4b4c28b1baecc33170fc5d', '川A1BB4A', '103.928', '30.7008', '2017-04-28 10:23:22:923', null);
INSERT INTO `gps_hisotry_track` VALUES ('63cdc14798524f9b9b11988c760d20b1', '川A1A34B', '104.074', '30.6066', '2017-04-28 10:21:58:513', null);
INSERT INTO `gps_hisotry_track` VALUES ('6402325af47c44d6a5e25b09522020eb', '川A1BB4A', '104.105', '30.5746', '2017-04-28 10:22:52:794', null);
INSERT INTO `gps_hisotry_track` VALUES ('64349031d43e45c88496fd2ad0a5434b', '川A1BB4A', '103.874', '30.7061', '2017-04-28 10:23:31:453', null);
INSERT INTO `gps_hisotry_track` VALUES ('647c5185618b4e61a202c10d5c017a82', '川A12345', '104.074', '30.6044', '2017-04-28 10:20:37:296', null);
INSERT INTO `gps_hisotry_track` VALUES ('6490755d610f4572939458a701275f31', '川A1BB4A', '104.235', '30.5554', '2017-04-28 10:22:37:138', null);
INSERT INTO `gps_hisotry_track` VALUES ('6493200f86b44742bb71b9ecd80cc49f', '川A1A34B', '104.08', '30.6953', '2017-04-28 10:22:22:475', null);
INSERT INTO `gps_hisotry_track` VALUES ('649cc61282d1429c8fc5d4984a12648b', '川A1BB4A', '103.956', '30.6163', '2017-04-28 10:23:08:824', null);
INSERT INTO `gps_hisotry_track` VALUES ('64a075ec9e6448d6a2a363d163a946ba', '川A12345', '104.029', '30.6539', '2017-04-28 10:20:56:520', null);
INSERT INTO `gps_hisotry_track` VALUES ('64b531baa19d481394f00e530249376f', '川A1BB4A', '104.225', '30.5587', '2017-04-28 10:22:40:639', null);
INSERT INTO `gps_hisotry_track` VALUES ('64b5a3f4464644578e3cdb466a5017b1', '川A1BB4A', '104.023', '30.588', '2017-04-28 10:23:01:096', null);
INSERT INTO `gps_hisotry_track` VALUES ('64f3a013a8564bc4b2f649ea5d65cb41', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:570', null);
INSERT INTO `gps_hisotry_track` VALUES ('65162f09c2f146af924532e6c8d6856b', '川A1BB4A', '104.081', '30.5719', '2017-04-28 10:22:54:904', null);
INSERT INTO `gps_hisotry_track` VALUES ('652a0f75dba54a739994d4f250cbeb86', '川A12345', '104.071', '30.5849', '2017-04-28 10:20:33:661', null);
INSERT INTO `gps_hisotry_track` VALUES ('652de027404c4d8faecb3095d052a7ca', '川A1BB4A', '103.882', '30.702', '2017-04-28 10:23:26:340', null);
INSERT INTO `gps_hisotry_track` VALUES ('6551bb4def5f41268b3c39ea97e01f22', '川A1A34B', '104.074', '30.6064', '2017-04-28 10:21:58:382', null);
INSERT INTO `gps_hisotry_track` VALUES ('659e6092b2f04b9f92671964cf21dae3', '川A1A34B', '104.072', '30.6747', '2017-04-28 10:22:16:725', null);
INSERT INTO `gps_hisotry_track` VALUES ('65e5aa13f9c641259baccc3f59d5eef9', '川A1A34B', '104.072', '30.6695', '2017-04-28 10:22:15:125', null);
INSERT INTO `gps_hisotry_track` VALUES ('65e89fb6d16f4f4ba3d03b4cbb262a6b', '川A1A34B', '104.076', '30.553', '2017-04-28 10:21:49:861', null);
INSERT INTO `gps_hisotry_track` VALUES ('661e77aee6c443df8e198d375eb25cd3', '川A1BB4A', '103.872', '30.7054', '2017-04-28 10:23:32:781', null);
INSERT INTO `gps_hisotry_track` VALUES ('663dd07f16c44f2396a138fbafa6dc2c', '川A1A34B', '104.077', '30.5254', '2017-04-28 10:21:47:762', null);
INSERT INTO `gps_hisotry_track` VALUES ('66ddf9b4542648e0b31ba3cb1aaec231', '川A1A34B', '104.075', '30.5847', '2017-04-28 10:21:53:454', null);
INSERT INTO `gps_hisotry_track` VALUES ('670aaa125e5d4ec3ab972f70da09a137', '川A12345', '104.028', '30.6741', '2017-04-28 10:21:01:146', null);
INSERT INTO `gps_hisotry_track` VALUES ('67183e63d99d44db80db88220c9df422', '川A12345', '104.063', '30.6267', '2017-04-28 10:20:47:438', null);
INSERT INTO `gps_hisotry_track` VALUES ('672d4f35c45b4770b73d91876ad9fade', '川A1BB4A', '104.013', '30.5922', '2017-04-28 10:23:02:196', null);
INSERT INTO `gps_hisotry_track` VALUES ('675e1c35f16d4604a2036e85f6156f5a', '川A1A34B', '104.078', '30.6846', '2017-04-28 10:22:20:841', null);
INSERT INTO `gps_hisotry_track` VALUES ('677b3941193a4b049cd667309f091175', '川A1A34B', '104.073', '30.6334', '2017-04-28 10:22:05:389', null);
INSERT INTO `gps_hisotry_track` VALUES ('67fe8264202c4c84b3c44bc6d40e85c7', '川A1BB4A', '104.025', '30.5867', '2017-04-28 10:23:00:854', null);
INSERT INTO `gps_hisotry_track` VALUES ('682f0237f8e44fea991cc24c5a01b3f9', '川A1BB4A', '103.952', '30.6307', '2017-04-28 10:23:10:163', null);
INSERT INTO `gps_hisotry_track` VALUES ('686ba18d23124f4e9d9873dd5fed5196', '川A1BB4A', '103.957', '30.6142', '2017-04-28 10:23:08:571', null);
INSERT INTO `gps_hisotry_track` VALUES ('68ede20578ce4ab4b0ee0344345d5e2f', '川A1BB4A', '104.25', '30.5718', '2017-04-28 10:22:29:521', null);
INSERT INTO `gps_hisotry_track` VALUES ('68f8a9baac45483a977a55291ae25cab', '川A1BB4A', '103.94', '30.699', '2017-04-28 10:23:19:614', null);
INSERT INTO `gps_hisotry_track` VALUES ('6915aa8ea8f04786b835105eb74aa63a', '川A1BB4A', '104.047', '30.5774', '2017-04-28 10:22:57:815', null);
INSERT INTO `gps_hisotry_track` VALUES ('69534dc4de3a476a80e94d8819e60e6c', '川A1BB4A', '103.946', '30.6523', '2017-04-28 10:23:13:023', null);
INSERT INTO `gps_hisotry_track` VALUES ('6958044c48ec4a568e45c08247e870a4', '川A1BB4A', '103.881', '30.7021', '2017-04-28 10:23:26:857', null);
INSERT INTO `gps_hisotry_track` VALUES ('698c6b0c4b804d9cbb6b19c8a74bdc07', '川A1A34B', '104.078', '30.6845', '2017-04-28 10:22:20:692', null);
INSERT INTO `gps_hisotry_track` VALUES ('69c00e73cc3d4892b8addb3de86d2049', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:613', null);
INSERT INTO `gps_hisotry_track` VALUES ('69d7c379b65c4d82af62fa3dd0e785f6', '川A1BB4A', '103.939', '30.6905', '2017-04-28 10:23:16:355', null);
INSERT INTO `gps_hisotry_track` VALUES ('6a1950329c3749c28bedeb2becffe64e', '川A1BB4A', '104.253', '30.5709', '2017-04-28 10:22:29:340', null);
INSERT INTO `gps_hisotry_track` VALUES ('6a1cba77b84145f0a6b1217d10824ccd', '川A1A34B', '104.073', '30.6488', '2017-04-28 10:22:09:540', null);
INSERT INTO `gps_hisotry_track` VALUES ('6a27a3a914de4c73a78f07e05b34c629', '川A12345', '104.052', '30.6324', '2017-04-28 10:20:50:372', null);
INSERT INTO `gps_hisotry_track` VALUES ('6acc7c726b534675bbb719ea14293f2a', '川A12345', '104.033', '30.6475', '2017-04-28 10:20:53:748', null);
INSERT INTO `gps_hisotry_track` VALUES ('6ada3342730e4f1c9a7a0cd361b0d719', '川A1A34B', '104.074', '30.614', '2017-04-28 10:22:00:112', null);
INSERT INTO `gps_hisotry_track` VALUES ('6b4b9b9aaaaa49af9edda47c2535127e', '川A12345', '104.031', '30.6495', '2017-04-28 10:20:54:322', null);
INSERT INTO `gps_hisotry_track` VALUES ('6b9b1f6df34c44d5952b9888a0f7dc0c', '川A1BB4A', '103.939', '30.6973', '2017-04-28 10:23:17:558', null);
INSERT INTO `gps_hisotry_track` VALUES ('6c16ff1a8e0d4e23ab2c54efe6608d45', '川A1BB4A', '104.244', '30.5729', '2017-04-28 10:22:31:725', null);
INSERT INTO `gps_hisotry_track` VALUES ('6c3d08fd4cc7402591d5801b6c8ae3db', '川A1BB4A', '103.924', '30.7011', '2017-04-28 10:23:23:530', null);
INSERT INTO `gps_hisotry_track` VALUES ('6c544b04279c42abaf4b469560a28c9a', '川A1BB4A', '104.053', '30.5757', '2017-04-28 10:22:56:812', null);
INSERT INTO `gps_hisotry_track` VALUES ('6ce0f79e8d7e4ea89bdc14bd4b05f06c', '川A12345', '104.053', '30.6318', '2017-04-28 10:20:49:953', null);
INSERT INTO `gps_hisotry_track` VALUES ('6d0454c4ce574db2a7442c4b18d7021e', '川A1BB4A', '103.941', '30.6777', '2017-04-28 10:23:15:298', null);
INSERT INTO `gps_hisotry_track` VALUES ('6d1772ce9aa344b6b146e724341b1b2e', '川A1A34B', '104.076', '30.553', '2017-04-28 10:21:49:938', null);
INSERT INTO `gps_hisotry_track` VALUES ('6d2f9942efea43f68e3da9b8f3790113', '川A12345', '104.034', '30.6462', '2017-04-28 10:20:53:231', null);
INSERT INTO `gps_hisotry_track` VALUES ('6d5766ab67d0495fa8725c97a555f9b9', '川A1A34B', '104.075', '30.5011', '2017-04-28 10:21:44:827', null);
INSERT INTO `gps_hisotry_track` VALUES ('6dd9af2880764834bd2eb78b6bc4d1d8', '川A1BB4A', '104.075', '30.5718', '2017-04-28 10:22:55:691', null);
INSERT INTO `gps_hisotry_track` VALUES ('6e0e96586a974d46994b4f2fed1e5128', '川A1A34B', '104.079', '30.6857', '2017-04-28 10:22:21:127', null);
INSERT INTO `gps_hisotry_track` VALUES ('6e10946432e042d387788ac4b8d673b5', '川A12345', '104.036', '30.6438', '2017-04-28 10:20:53:005', null);
INSERT INTO `gps_hisotry_track` VALUES ('6e19afbc662d45f5a0cd91bfa19d724b', '川A12345', '104.029', '30.6612', '2017-04-28 10:20:57:868', null);
INSERT INTO `gps_hisotry_track` VALUES ('6e620f6fe18d4f2aafa309c6138c05c1', '川A1BB4A', '103.893', '30.703', '2017-04-28 10:23:25:503', null);
INSERT INTO `gps_hisotry_track` VALUES ('6e9ca755adb64f738e98611e09990981', '川A1A34B', '104.073', '30.6554', '2017-04-28 10:22:10:551', null);
INSERT INTO `gps_hisotry_track` VALUES ('6ebb8e1771ab4e31b6d0635cb92d2a43', '川A1BB4A', '104.014', '30.5921', '2017-04-28 10:23:02:142', null);
INSERT INTO `gps_hisotry_track` VALUES ('6ed34268cfc9441083cee770952b42ff', '川A1BB4A', '104.113', '30.5741', '2017-04-28 10:22:52:182', null);
INSERT INTO `gps_hisotry_track` VALUES ('6edd8f7fc3634c259cf5a112db4814b4', '川A12345', '104.054', '30.6313', '2017-04-28 10:20:49:570', null);
INSERT INTO `gps_hisotry_track` VALUES ('6eea459acd6b48e18cb45acfd54db711', '川A1BB4A', '104.082', '30.572', '2017-04-28 10:22:54:434', null);
INSERT INTO `gps_hisotry_track` VALUES ('6f159749c0b54d41b961a221a1a9933b', '川A12345', '104.074', '30.6018', '2017-04-28 10:20:36:430', null);
INSERT INTO `gps_hisotry_track` VALUES ('6f4a11a03167458c82fb3ab4791b1d14', '川A12345', '104.074', '30.6259', '2017-04-28 10:20:41:620', null);
INSERT INTO `gps_hisotry_track` VALUES ('6f599264bb2e4840b903d1adff4b48e2', '川A1BB4A', '103.945', '30.6682', '2017-04-28 10:23:14:377', null);
INSERT INTO `gps_hisotry_track` VALUES ('6fa676b497ac49e0a2a00d67e6b1d960', '川A1BB4A', '104.019', '30.5907', '2017-04-28 10:23:01:629', null);
INSERT INTO `gps_hisotry_track` VALUES ('6fa7ad4bc45441dcbfaf3b4d0643fc6f', '川A12345', '104.074', '30.6146', '2017-04-28 10:20:39:373', null);
INSERT INTO `gps_hisotry_track` VALUES ('6fcfbdda50ea424fb95ee884fdb7b63a', '川A1A34B', '104.072', '30.6752', '2017-04-28 10:22:17:024', null);
INSERT INTO `gps_hisotry_track` VALUES ('7020b84ce8d946c5bc2c68e47445a8d2', '川A1BB4A', '104.226', '30.5584', '2017-04-28 10:22:40:385', null);
INSERT INTO `gps_hisotry_track` VALUES ('7065d6580e5e4c3483c1dd1016bcc37b', '川A1BB4A', '103.938', '30.6982', '2017-04-28 10:23:21:996', null);
INSERT INTO `gps_hisotry_track` VALUES ('706a26dedcd34797be2d51202e16fb0f', '川A1BB4A', '103.874', '30.7062', '2017-04-28 10:23:31:103', null);
INSERT INTO `gps_hisotry_track` VALUES ('708f23c9791744ef9ccced2a6e872774', '川A1BB4A', '104.174', '30.5832', '2017-04-28 10:22:47:269', null);
INSERT INTO `gps_hisotry_track` VALUES ('70abdcf115e1418cba780bd1491b8fbe', '川A1A34B', '104.073', '30.6407', '2017-04-28 10:22:07:731', null);
INSERT INTO `gps_hisotry_track` VALUES ('70b46ef8974a4bbc99b7023e54b0df89', '川A1BB4A', '103.946', '30.6527', '2017-04-28 10:23:13:179', null);
INSERT INTO `gps_hisotry_track` VALUES ('70b7e2b629df4d66acafaa7d79147e83', '川A1BB4A', '103.859', '30.7001', '2017-04-28 10:23:35:473', null);
INSERT INTO `gps_hisotry_track` VALUES ('710207de6b9b40e78316d3c377037197', '川A1BB4A', '104.052', '30.576', '2017-04-28 10:22:57:107', null);
INSERT INTO `gps_hisotry_track` VALUES ('712e0e8c92b64303a232e88d379f04fa', '川A1BB4A', '104.169', '30.5814', '2017-04-28 10:22:48:156', null);
INSERT INTO `gps_hisotry_track` VALUES ('714eea3e61a641f58ee2ae0e99a09811', '川A1A34B', '104.074', '30.6146', '2017-04-28 10:22:00:395', null);
INSERT INTO `gps_hisotry_track` VALUES ('7153a95eaf8a44478ab56506d610bbfd', '川A1A34B', '104.075', '30.5771', '2017-04-28 10:21:52:129', null);
INSERT INTO `gps_hisotry_track` VALUES ('715a8b0b6fca420080b28cab6b125842', '川A1BB4A', '104.192', '30.5747', '2017-04-28 10:22:44:605', null);
INSERT INTO `gps_hisotry_track` VALUES ('718b7a1e5c024a9b90ef3faa4a3b20b2', '川A12345', '104.028', '30.6689', '2017-04-28 10:20:59:630', null);
INSERT INTO `gps_hisotry_track` VALUES ('71a95727af824f8897982332fec0ca9c', '川A1BB4A', '103.851', '30.7002', '2017-04-28 10:23:36:843', null);
INSERT INTO `gps_hisotry_track` VALUES ('71d335c73f2f43e3ab40208a3e2a9527', '川A1BB4A', '103.874', '30.7063', '2017-04-28 10:23:30:841', null);
INSERT INTO `gps_hisotry_track` VALUES ('72143ca9a26c487b846e2f0f105c3797', '川A12345', '104.028', '30.6708', '2017-04-28 10:21:00:160', null);
INSERT INTO `gps_hisotry_track` VALUES ('721712b019b0450080441b2b1384ebcc', '川A1BB4A', '104.029', '30.584', '2017-04-28 10:23:00:005', null);
INSERT INTO `gps_hisotry_track` VALUES ('72677f09f110452783fb647d1dd5cb2b', '川A1BB4A', '104.027', '30.585', '2017-04-28 10:23:00:272', null);
INSERT INTO `gps_hisotry_track` VALUES ('727bce69a5a14b9eb0942131eb717c8d', '川A12345', '104.028', '30.666', '2017-04-28 10:20:58:800', null);
INSERT INTO `gps_hisotry_track` VALUES ('7291148e946f48af8dc8fe20e91b2139', '川A12345', '104.074', '30.6157', '2017-04-28 10:20:39:781', null);
INSERT INTO `gps_hisotry_track` VALUES ('72988e49f5224cfb84b881c1b03edc42', '川A1A34B', '104.078', '30.6838', '2017-04-28 10:22:20:301', null);
INSERT INTO `gps_hisotry_track` VALUES ('72eba226dac8423aa1bb20685d40fcf9', '川A12345', '104.075', '30.5949', '2017-04-28 10:20:35:847', null);
INSERT INTO `gps_hisotry_track` VALUES ('732c8c47ccad4ad4843d1d34fc509dab', '川A1BB4A', '103.872', '30.7055', '2017-04-28 10:23:27:961', null);
INSERT INTO `gps_hisotry_track` VALUES ('733622c9a9fe42cb80933a06d1c7caea', '川A12345', '104.074', '30.6152', '2017-04-28 10:20:39:728', null);
INSERT INTO `gps_hisotry_track` VALUES ('73aab1566d4543c5999312ac76c68542', '川A12345', '104.035', '30.6753', '2017-04-28 10:21:03:466', null);
INSERT INTO `gps_hisotry_track` VALUES ('73c629b918cf48a4a46c8e92d230a13f', '川A1A34B', '104.073', '30.6356', '2017-04-28 10:22:05:578', null);
INSERT INTO `gps_hisotry_track` VALUES ('73e0dac2b4484a06aa622e7dffbd8a35', '川A1BB4A', '103.969', '30.607', '2017-04-28 10:23:06:725', null);
INSERT INTO `gps_hisotry_track` VALUES ('7401334d9980427b92612dfe07c24aee', '川A1BB4A', '103.853', '30.6981', '2017-04-28 10:23:36:271', null);
INSERT INTO `gps_hisotry_track` VALUES ('7419d2b8fd8246729ea248d146332c31', '川A1A34B', '104.078', '30.6834', '2017-04-28 10:22:19:882', null);
INSERT INTO `gps_hisotry_track` VALUES ('74351348fd534d3b82e15fadb958f939', '川A1BB4A', '104.147', '30.576', '2017-04-28 10:22:49:942', null);
INSERT INTO `gps_hisotry_track` VALUES ('7448ae5bccbf42f3a3a0e7ef42d0bf2e', '川A1BB4A', '103.885', '30.7022', '2017-04-28 10:23:25:815', null);
INSERT INTO `gps_hisotry_track` VALUES ('7449b55d5b4141e8b6b53115a4e3d093', '川A1BB4A', '104.099', '30.5742', '2017-04-28 10:22:53:220', null);
INSERT INTO `gps_hisotry_track` VALUES ('744a576234164e5e91df791492f64350', '川A1BB4A', '103.953', '30.6229', '2017-04-28 10:23:09:713', null);
INSERT INTO `gps_hisotry_track` VALUES ('7491e459620640f3b6de2f1a22aa8fcd', '川A1A34B', '104.077', '30.5067', '2017-04-28 10:21:46:123', null);
INSERT INTO `gps_hisotry_track` VALUES ('74970eb031fa456f9a78239dac39f1eb', '川A12345', '104.051', '30.6325', '2017-04-28 10:20:50:579', null);
INSERT INTO `gps_hisotry_track` VALUES ('74bd7a28c90047d4aaba326f8921ba62', '川A1A34B', '104.072', '30.6684', '2017-04-28 10:22:14:700', null);
INSERT INTO `gps_hisotry_track` VALUES ('74c08cda60914619b6f38df13ac39d64', '川A1BB4A', '104.235', '30.5553', '2017-04-28 10:22:37:690', null);
INSERT INTO `gps_hisotry_track` VALUES ('74c0bbd232a04ec4a75bb1307b25ff9e', '川A1BB4A', '103.939', '30.6974', '2017-04-28 10:23:17:994', null);
INSERT INTO `gps_hisotry_track` VALUES ('74c39ed0917b47679afcb01d5bb05ff6', '川A1A34B', '104.074', '30.6044', '2017-04-28 10:21:57:716', null);
INSERT INTO `gps_hisotry_track` VALUES ('74e5a9e39fc8451fa13c8b8f514c2d17', '川A1BB4A', '103.934', '30.6998', '2017-04-28 10:23:22:621', null);
INSERT INTO `gps_hisotry_track` VALUES ('74e9d4547de84bc689f2413ea27b4e2e', '川A1BB4A', '103.983', '30.6004', '2017-04-28 10:23:05:117', null);
INSERT INTO `gps_hisotry_track` VALUES ('75281940424b40c183e2531bb97e0b5d', '川A1BB4A', '103.864', '30.7036', '2017-04-28 10:23:33:779', null);
INSERT INTO `gps_hisotry_track` VALUES ('756eb6bae28840f7af50bb2e57731208', '川A1BB4A', '103.872', '30.7059', '2017-04-28 10:23:28:855', null);
INSERT INTO `gps_hisotry_track` VALUES ('7575d082f8214a77950dc9cca5fb0c73', '川A12345', '104.074', '30.6053', '2017-04-28 10:20:37:486', null);
INSERT INTO `gps_hisotry_track` VALUES ('757ef647e4c1408989fc75e45749de0b', '川A1BB4A', '104.041', '30.5792', '2017-04-28 10:22:58:258', null);
INSERT INTO `gps_hisotry_track` VALUES ('758444fdd66848b489159c7db6b6b415', '川A1BB4A', '103.856', '30.6968', '2017-04-28 10:23:36:060', null);
INSERT INTO `gps_hisotry_track` VALUES ('76548cbd646a4537887d66cfe59d390a', '川A1BB4A', '104.103', '30.5746', '2017-04-28 10:22:52:866', null);
INSERT INTO `gps_hisotry_track` VALUES ('76866422d0d04452bd721228c59e98a8', '川A1BB4A', '103.915', '30.7009', '2017-04-28 10:23:23:974', null);
INSERT INTO `gps_hisotry_track` VALUES ('7698e7f3f07d408498fc8a2f8483bc61', '川A1BB4A', '103.946', '30.6501', '2017-04-28 10:23:12:906', null);
INSERT INTO `gps_hisotry_track` VALUES ('76991e636eb44c3b954be518bb23e079', '川A1BB4A', '104.244', '30.573', '2017-04-28 10:22:31:666', null);
INSERT INTO `gps_hisotry_track` VALUES ('769ff0d6557945448b1e42cdba6420c1', '川A1BB4A', '103.879', '30.7024', '2017-04-28 10:23:27:124', null);
INSERT INTO `gps_hisotry_track` VALUES ('76cc53b7ff784f1088aff35d20130c11', '川A12345', '104.074', '30.6048', '2017-04-28 10:20:37:438', null);
INSERT INTO `gps_hisotry_track` VALUES ('76e98f3b7c8148a3bcb456d4ee68566b', '川A1BB4A', '103.916', '30.7008', '2017-04-28 10:23:23:857', null);
INSERT INTO `gps_hisotry_track` VALUES ('770f2bdfcbc74f059dccbddb75011376', '川A1BB4A', '103.864', '30.7034', '2017-04-28 10:23:34:094', null);
INSERT INTO `gps_hisotry_track` VALUES ('771617c4797c46aa9f78e7aeafcdcc5a', '川A12345', '104.029', '30.6592', '2017-04-28 10:20:57:314', null);
INSERT INTO `gps_hisotry_track` VALUES ('7746157b48fe4632bc98088f6979153e', '川A12345', '104.07', '30.6263', '2017-04-28 10:20:45:641', null);
INSERT INTO `gps_hisotry_track` VALUES ('77799aa02a794e298a8d3057f539d658', '川A1BB4A', '103.939', '30.6926', '2017-04-28 10:23:16:437', null);
INSERT INTO `gps_hisotry_track` VALUES ('7885f5f5819e4a32a5294afa84b27f4b', '川A1BB4A', '103.852', '30.699', '2017-04-28 10:23:36:542', null);
INSERT INTO `gps_hisotry_track` VALUES ('7891d41c5bed42e6b5300b532e163bce', '川A12345', '104.066', '30.6262', '2017-04-28 10:20:46:447', null);
INSERT INTO `gps_hisotry_track` VALUES ('78a3c1a10ef243d199e7b2d04372b9e8', '川A1BB4A', '104.012', '30.5922', '2017-04-28 10:23:02:367', null);
INSERT INTO `gps_hisotry_track` VALUES ('78bb5b8e8cdc438da9b4f83a9d9c6a62', '川A12345', '104.075', '30.6265', '2017-04-28 10:20:42:830', null);
INSERT INTO `gps_hisotry_track` VALUES ('78bef4bcb2814bf9835f5bec1cb94df7', '川A12345', '104.03', '30.6502', '2017-04-28 10:20:54:837', null);
INSERT INTO `gps_hisotry_track` VALUES ('78df24a64bc54936b651c0f1ec004f17', '川A12345', '104.028', '30.6684', '2017-04-28 10:20:59:290', null);
INSERT INTO `gps_hisotry_track` VALUES ('78f9cf2bf8a34c00877f439f83b36e78', '川A1A34B', '104.078', '30.6842', '2017-04-28 10:22:20:475', null);
INSERT INTO `gps_hisotry_track` VALUES ('792c8f4aabb84751957bb4a17c010869', '川A1A34B', '104.076', '30.5416', '2017-04-28 10:21:49:393', null);
INSERT INTO `gps_hisotry_track` VALUES ('797a1579c45142c68ce56e70623f127c', '川A12345', '104.074', '30.6183', '2017-04-28 10:20:40:553', null);
INSERT INTO `gps_hisotry_track` VALUES ('798998cce2a14b0885eefe5169a4fe2b', '川A1BB4A', '103.973', '30.6053', '2017-04-28 10:23:06:417', null);
INSERT INTO `gps_hisotry_track` VALUES ('79a856c63c2d49ca848b023e191b3219', '川A1BB4A', '104.032', '30.5822', '2017-04-28 10:22:59:300', null);
INSERT INTO `gps_hisotry_track` VALUES ('79b2b2d2cfc045488b0882956e9ddbde', '川A12345', '104.064', '30.6264', '2017-04-28 10:20:47:199', null);
INSERT INTO `gps_hisotry_track` VALUES ('79ca8e2257d444c899c73153f0d6025d', '川A1A34B', '104.074', '30.6085', '2017-04-28 10:21:58:655', null);
INSERT INTO `gps_hisotry_track` VALUES ('7a73d99a4787409fa83afd4eb837b732', '川A1BB4A', '104.188', '30.5765', '2017-04-28 10:22:45:273', null);
INSERT INTO `gps_hisotry_track` VALUES ('7a8d1cde3f61465ca6d3564f58103526', '川A1BB4A', '104.002', '30.5918', '2017-04-28 10:23:03:270', null);
INSERT INTO `gps_hisotry_track` VALUES ('7abfa4e1acaf4a0ba9eb55d34185e8f3', '川A1A34B', '104.075', '30.679', '2017-04-28 10:22:18:159', null);
INSERT INTO `gps_hisotry_track` VALUES ('7b262e0f457f4308bd0b948f6dfa2ed8', '川A1BB4A', '104.077', '30.5718', '2017-04-28 10:22:55:384', null);
INSERT INTO `gps_hisotry_track` VALUES ('7b8ebf71d07342de90a5b1089a8f74a6', '川A1BB4A', '103.922', '30.701', '2017-04-28 10:23:23:670', null);
INSERT INTO `gps_hisotry_track` VALUES ('7bc070f1b45a407ea13e2670766e8a4b', '川A1BB4A', '104.14', '30.5753', '2017-04-28 10:22:50:182', null);
INSERT INTO `gps_hisotry_track` VALUES ('7beea4fc7b8d4e28b019adb4d27d0c6d', '川A1BB4A', '103.958', '30.614', '2017-04-28 10:23:08:446', null);
INSERT INTO `gps_hisotry_track` VALUES ('7bf6a38a9cca484c93e3688f0d4891c8', '川A12345', '104.029', '30.6525', '2017-04-28 10:20:56:200', null);
INSERT INTO `gps_hisotry_track` VALUES ('7c2a41d48ed44599a48b5237f7e8784c', '川A1BB4A', '104.085', '30.5722', '2017-04-28 10:22:54:251', null);
INSERT INTO `gps_hisotry_track` VALUES ('7c535817049443a9a3e8d33ea6193e7c', '川A1A34B', '104.075', '30.5673', '2017-04-28 10:21:51:415', null);
INSERT INTO `gps_hisotry_track` VALUES ('7c68340a42e548d7b3cdae475f49fb96', '川A12345', '104.028', '30.669', '2017-04-28 10:20:59:807', null);
INSERT INTO `gps_hisotry_track` VALUES ('7ca3078cd88342939302d0b3e7dc2525', '川A1A34B', '104.074', '30.6263', '2017-04-28 10:22:03:941', null);
INSERT INTO `gps_hisotry_track` VALUES ('7d502cee9973495f976c6a02bd3c31c3', '川A1A34B', '104.074', '30.6115', '2017-04-28 10:21:59:546', null);
INSERT INTO `gps_hisotry_track` VALUES ('7d7682aad47848c187801b68c9815bd2', '川A1A34B', '104.076', '30.5324', '2017-04-28 10:21:48:121', null);
INSERT INTO `gps_hisotry_track` VALUES ('7dac7be72ac342bc857a3e00bf9de260', '川A1A34B', '104.073', '30.6526', '2017-04-28 10:22:09:961', null);
INSERT INTO `gps_hisotry_track` VALUES ('7de6b72dd43442d39c28195910dbc2ee', '川A1BB4A', '104.191', '30.5748', '2017-04-28 10:22:44:694', null);
INSERT INTO `gps_hisotry_track` VALUES ('7ded4a9f305342b5b9bd20033111941b', '川A1A34B', '104.077', '30.5102', '2017-04-28 10:21:46:436', null);
INSERT INTO `gps_hisotry_track` VALUES ('7e0e936221ae433399a60eb8655080c0', '川A1BB4A', '104.223', '30.5597', '2017-04-28 10:22:40:836', null);
INSERT INTO `gps_hisotry_track` VALUES ('7e6c23f46e424d708c641f49d303ae93', '川A1A34B', '104.075', '30.585', '2017-04-28 10:21:53:540', null);
INSERT INTO `gps_hisotry_track` VALUES ('7e8bc2c8fd3b459dad28d9283d1ba0a0', '川A1BB4A', '104.125', '30.5739', '2017-04-28 10:22:50:794', null);
INSERT INTO `gps_hisotry_track` VALUES ('7ecbdfdd2c2c4aabb6da1d913b3ab9ae', '川A1BB4A', '103.852', '30.6987', '2017-04-28 10:23:36:375', null);
INSERT INTO `gps_hisotry_track` VALUES ('7f0251290a19456499444781d4d4300d', '川A1BB4A', '103.852', '30.6986', '2017-04-28 10:23:36:331', null);
INSERT INTO `gps_hisotry_track` VALUES ('7f1e679f455a496d8cae8817a9b3b9eb', '川A1A34B', '104.074', '30.6181', '2017-04-28 10:22:01:955', null);
INSERT INTO `gps_hisotry_track` VALUES ('7f2177c69a37423ebe347a31f76681b9', '川A1A34B', '104.074', '30.6269', '2017-04-28 10:22:04:456', null);
INSERT INTO `gps_hisotry_track` VALUES ('7f2a43949f1849f7b9abc6b7a7e5535a', '川A12345', '104.036', '30.6444', '2017-04-28 10:20:53:069', null);
INSERT INTO `gps_hisotry_track` VALUES ('7f62241536e74a31ab4769d4d97716d8', '川A1A34B', '104.074', '30.6633', '2017-04-28 10:22:13:317', null);
INSERT INTO `gps_hisotry_track` VALUES ('7fb000c2c3dc4723a4ee240cb7db0723', '川A1A34B', '104.072', '30.6756', '2017-04-28 10:22:17:299', null);
INSERT INTO `gps_hisotry_track` VALUES ('7fcd62e05b774803a135666e3441bd95', '川A12345', '104.038', '30.6421', '2017-04-28 10:20:52:959', null);
INSERT INTO `gps_hisotry_track` VALUES ('7fe68ae4829d4d5bbeaac2d94d03b1ec', '川A12345', '104.074', '30.6087', '2017-04-28 10:20:38:138', null);
INSERT INTO `gps_hisotry_track` VALUES ('800af0cd95ad4314bf0c1b0155b0ed25', '川A1BB4A', '104.244', '30.573', '2017-04-28 10:22:31:601', null);
INSERT INTO `gps_hisotry_track` VALUES ('804219753d03452ca390314086373b84', '川A1BB4A', '104.226', '30.5584', '2017-04-28 10:22:40:577', null);
INSERT INTO `gps_hisotry_track` VALUES ('80568da5c7274777a9e839532967f84d', '川A1BB4A', '104.196', '30.5725', '2017-04-28 10:22:43:823', null);
INSERT INTO `gps_hisotry_track` VALUES ('808ba6d28f554f60bcbdf920b9756b23', '川A1A34B', '104.074', '30.6256', '2017-04-28 10:22:03:206', null);
INSERT INTO `gps_hisotry_track` VALUES ('80bc1858044449739988ce7590c0d9d7', '川A1BB4A', '104.244', '30.5731', '2017-04-28 10:22:31:508', null);
INSERT INTO `gps_hisotry_track` VALUES ('80e3fdce915f4156ad83e92fee7d1be9', '川A12345', '104.074', '30.6203', '2017-04-28 10:20:40:763', null);
INSERT INTO `gps_hisotry_track` VALUES ('80ea918acb68441598f85db87fd381ff', '川A12345', '104.074', '30.6211', '2017-04-28 10:20:40:837', null);
INSERT INTO `gps_hisotry_track` VALUES ('8132786a1cd94bf39f626ac4fc43c090', '川A1BB4A', '103.934', '30.6996', '2017-04-28 10:23:22:573', null);
INSERT INTO `gps_hisotry_track` VALUES ('8156fabcc55d487f9643dae6e02067a2', '川A1BB4A', '103.874', '30.7059', '2017-04-28 10:23:31:892', null);
INSERT INTO `gps_hisotry_track` VALUES ('818a1b96442148cc9cd68ad2063eea23', '川A1A34B', '104.075', '30.5003', '2017-04-28 10:21:44:693', null);
INSERT INTO `gps_hisotry_track` VALUES ('81fb7fd014a847ba8208ee451387e9cb', '川A12345', '104.029', '30.6761', '2017-04-28 10:21:02:124', null);
INSERT INTO `gps_hisotry_track` VALUES ('8228a6db96e342c4aceca54fc4e47bac', '川A1A34B', '104.073', '30.6382', '2017-04-28 10:22:05:989', null);
INSERT INTO `gps_hisotry_track` VALUES ('82430a77151d465696447210aee52eb5', '川A1BB4A', '104.19', '30.5753', '2017-04-28 10:22:44:953', null);
INSERT INTO `gps_hisotry_track` VALUES ('827eebb38ab94c598952daabaf246b5b', '川A1A34B', '104.077', '30.5259', '2017-04-28 10:21:47:794', null);
INSERT INTO `gps_hisotry_track` VALUES ('82903fa75cc84d45a2d109ce8733539a', '川A1A34B', '104.073', '30.6587', '2017-04-28 10:22:11:057', null);
INSERT INTO `gps_hisotry_track` VALUES ('8304bdd4f21d4479af357504f90f8ad6', '川A1A34B', '104.079', '30.6871', '2017-04-28 10:22:21:350', null);
INSERT INTO `gps_hisotry_track` VALUES ('832a1c3a7b5247bea043b553df910af4', '川A1BB4A', '103.874', '30.7058', '2017-04-28 10:23:32:010', null);
INSERT INTO `gps_hisotry_track` VALUES ('83309cb118974030aac00fbfc61b4f8a', '川A1BB4A', '103.902', '30.7033', '2017-04-28 10:23:24:757', null);
INSERT INTO `gps_hisotry_track` VALUES ('8357d2015c6c495d9202a06b032b9bf0', '川A1BB4A', '103.861', '30.7017', '2017-04-28 10:23:35:131', null);
INSERT INTO `gps_hisotry_track` VALUES ('83e5f8fa96ed4da9ad482c312561d281', '川A1BB4A', '103.992', '30.5939', '2017-04-28 10:23:04:296', null);
INSERT INTO `gps_hisotry_track` VALUES ('8403072307634b47861bbd8d1f38fddf', '川A1BB4A', '103.943', '30.6729', '2017-04-28 10:23:14:648', null);
INSERT INTO `gps_hisotry_track` VALUES ('8419153830a449c69b03a22c63f6a488', '川A12345', '104.064', '30.6264', '2017-04-28 10:20:47:085', null);
INSERT INTO `gps_hisotry_track` VALUES ('8424692580bf401aaf2e067b2e31a072', '川A1BB4A', '104.241', '30.5672', '2017-04-28 10:22:32:418', null);
INSERT INTO `gps_hisotry_track` VALUES ('84753443aea241c9aa781113b3dea703', '川A1BB4A', '103.945', '30.6657', '2017-04-28 10:23:14:273', null);
INSERT INTO `gps_hisotry_track` VALUES ('847b21bba6874cd5b9ab83cfa26b837e', '川A1A34B', '104.074', '30.4942', '2017-04-28 10:21:43:753', null);
INSERT INTO `gps_hisotry_track` VALUES ('8483f77ac3e74227917b2c7a39b8b619', '川A1BB4A', '103.887', '30.7023', '2017-04-28 10:23:25:730', null);
INSERT INTO `gps_hisotry_track` VALUES ('84a3b892778c4f45a415a37f0e504f43', '川A1BB4A', '104.063', '30.5729', '2017-04-28 10:22:56:514', null);
INSERT INTO `gps_hisotry_track` VALUES ('84b4280e44384c2a9951c297b41a523f', '川A12345', '104.033', '30.6755', '2017-04-28 10:21:03:139', null);
INSERT INTO `gps_hisotry_track` VALUES ('84baf1b3474b47a49713bb1c0c5223f7', '川A12345', '104.028', '30.6733', '2017-04-28 10:21:00:715', null);
INSERT INTO `gps_hisotry_track` VALUES ('84eb55696976459fbea8ec946249393c', '川A1BB4A', '104.155', '30.5771', '2017-04-28 10:22:49:381', null);
INSERT INTO `gps_hisotry_track` VALUES ('8527d64d818a4cd6aa4040a645110df8', '川A1BB4A', '103.917', '30.7007', '2017-04-28 10:23:23:804', null);
INSERT INTO `gps_hisotry_track` VALUES ('8542a1ebe13843299859d733179c563c', '川A1BB4A', '104.1', '30.5744', '2017-04-28 10:22:53:020', null);
INSERT INTO `gps_hisotry_track` VALUES ('85459aaa55bc40b0bf3884099add82f1', '川A1BB4A', '104.184', '30.5777', '2017-04-28 10:22:45:842', null);
INSERT INTO `gps_hisotry_track` VALUES ('85652dd0f3ff4d858eaf6b1ae877aec9', '川A1A34B', '104.076', '30.5575', '2017-04-28 10:21:50:146', null);
INSERT INTO `gps_hisotry_track` VALUES ('862e97588d6448dab24dffd78d947bdb', '川A1BB4A', '103.858', '30.6985', '2017-04-28 10:23:35:681', null);
INSERT INTO `gps_hisotry_track` VALUES ('867ef7a4acee413192b731338bb71f61', '川A1BB4A', '103.94', '30.6985', '2017-04-28 10:23:20:185', null);
INSERT INTO `gps_hisotry_track` VALUES ('868014700ad44f039bd13736c7a44931', '川A1A34B', '104.074', '30.6262', '2017-04-28 10:22:03:657', null);
INSERT INTO `gps_hisotry_track` VALUES ('86ab84bb9b4e4c948644c03c4c5bc14b', '川A1A34B', '104.076', '30.5327', '2017-04-28 10:21:48:153', null);
INSERT INTO `gps_hisotry_track` VALUES ('87239b42381c4763b1d1831d67bf2077', '川A1BB4A', '104.253', '30.5709', '2017-04-28 10:22:29:281', null);
INSERT INTO `gps_hisotry_track` VALUES ('8734dac1d04042f0a976210c2f14a7ee', '川A12345', '104.028', '30.6756', '2017-04-28 10:21:01:648', null);
INSERT INTO `gps_hisotry_track` VALUES ('8754a4a1be18449382e115b1157b5cc9', '川A1BB4A', '104.242', '30.5694', '2017-04-28 10:22:32:149', null);
INSERT INTO `gps_hisotry_track` VALUES ('876a5a2272e7413da0e34896fae5afec', '川A12345', '104.029', '30.6611', '2017-04-28 10:20:57:673', null);
INSERT INTO `gps_hisotry_track` VALUES ('87893597d9e743a1b91995b695b5a897', '川A1BB4A', '103.94', '30.6981', '2017-04-28 10:23:20:485', null);
INSERT INTO `gps_hisotry_track` VALUES ('87c49ac8f402473183b9dfc272ca12b8', '川A12345', '104.074', '30.6064', '2017-04-28 10:20:37:754', null);
INSERT INTO `gps_hisotry_track` VALUES ('87ce32d46e0c467aae8498e3d2100e25', '川A1BB4A', '103.954', '30.6198', '2017-04-28 10:23:09:213', null);
INSERT INTO `gps_hisotry_track` VALUES ('8812d27a5c1e4585bda6c9ac32da9b3c', '川A1A34B', '104.077', '30.5105', '2017-04-28 10:21:46:633', null);
INSERT INTO `gps_hisotry_track` VALUES ('88243628002543459e66a780946f174d', '川A12345', '104.053', '30.6316', '2017-04-28 10:20:49:885', null);
INSERT INTO `gps_hisotry_track` VALUES ('884f0627db45480e9cb7d67867b74330', '川A12345', '104.075', '30.5908', '2017-04-28 10:20:35:095', null);
INSERT INTO `gps_hisotry_track` VALUES ('88b2a09d7af34eb1a83303037908ff7a', '川A1BB4A', '103.958', '30.6135', '2017-04-28 10:23:08:011', null);
INSERT INTO `gps_hisotry_track` VALUES ('88b8e38f6e894cc5a6b563071c71c1b6', '川A12345', '104.052', '30.6322', '2017-04-28 10:20:50:314', null);
INSERT INTO `gps_hisotry_track` VALUES ('88c3baa8e5764ef6b0e4d6201c52875e', '川A12345', '104.028', '30.6716', '2017-04-28 10:21:00:398', null);
INSERT INTO `gps_hisotry_track` VALUES ('88c729548a6c40848f52a6d4419f47af', '川A12345', '104.029', '30.6544', '2017-04-28 10:20:56:857', null);
INSERT INTO `gps_hisotry_track` VALUES ('88e79e286184448ea9f54fea55f61602', '川A1A34B', '104.073', '30.6584', '2017-04-28 10:22:10:903', null);
INSERT INTO `gps_hisotry_track` VALUES ('88fb6662f49c4497b0cc75ea1c4b44f2', '川A1BB4A', '103.917', '30.7007', '2017-04-28 10:23:23:746', null);
INSERT INTO `gps_hisotry_track` VALUES ('89138af328ce48aeb4da25c06ae5ca0f', '川A1A34B', '104.073', '30.6502', '2017-04-28 10:22:09:681', null);
INSERT INTO `gps_hisotry_track` VALUES ('8915e328d9bc4903b8fa22d5d82d109a', '川A1BB4A', '104.248', '30.5722', '2017-04-28 10:22:29:761', null);
INSERT INTO `gps_hisotry_track` VALUES ('89462f767a2f452292690f0dfd7d7ccc', '川A1A34B', '104.076', '30.5483', '2017-04-28 10:21:49:783', null);
INSERT INTO `gps_hisotry_track` VALUES ('89b99cff2e984b3dbc51a971ae805ee3', '川A1A34B', '104.074', '30.6146', '2017-04-28 10:22:00:355', null);
INSERT INTO `gps_hisotry_track` VALUES ('89c598dbc6654187a74a3ba50851caaa', '川A12345', '104.031', '30.6759', '2017-04-28 10:21:02:533', null);
INSERT INTO `gps_hisotry_track` VALUES ('89e14d32e7f24207b86cea99d39d449e', '川A1BB4A', '104.073', '30.5718', '2017-04-28 10:22:55:950', null);
INSERT INTO `gps_hisotry_track` VALUES ('8a019fe4d5d14467960dbffbb34547d2', '川A1BB4A', '103.962', '30.6103', '2017-04-28 10:23:07:600', null);
INSERT INTO `gps_hisotry_track` VALUES ('8a6cf9abbfd64d2eb623a13da1b66895', '川A12345', '104.064', '30.6264', '2017-04-28 10:20:47:281', null);
INSERT INTO `gps_hisotry_track` VALUES ('8abff6844c534879a842a494aaff9d2a', '川A1BB4A', '103.862', '30.7023', '2017-04-28 10:23:34:967', null);
INSERT INTO `gps_hisotry_track` VALUES ('8ac9c06a3d814bc5bfdf4725e8129bfc', '川A1BB4A', '103.939', '30.699', '2017-04-28 10:23:19:232', null);
INSERT INTO `gps_hisotry_track` VALUES ('8b2716fc422a4217a85a36bb49ddf944', '川A1BB4A', '103.958', '30.6137', '2017-04-28 10:23:08:107', null);
INSERT INTO `gps_hisotry_track` VALUES ('8bd0ed931a0242bba18b40ae4efd9c42', '川A12345', '104.075', '30.5952', '2017-04-28 10:20:35:895', null);
INSERT INTO `gps_hisotry_track` VALUES ('8bd572f45e054d78a94b9bc03e5c17d8', '川A1BB4A', '103.867', '30.7042', '2017-04-28 10:23:33:435', null);
INSERT INTO `gps_hisotry_track` VALUES ('8be7717ced594212a57f7f2dfc33d47d', '川A1BB4A', '103.94', '30.6984', '2017-04-28 10:23:20:332', null);
INSERT INTO `gps_hisotry_track` VALUES ('8c23583e6a9941b98da90a79f9f36809', '川A1A34B', '104.073', '30.647', '2017-04-28 10:22:08:876', null);
INSERT INTO `gps_hisotry_track` VALUES ('8c433dfc2f6249fbba2e93e788467617', '川A12345', '104.029', '30.6513', '2017-04-28 10:20:55:561', null);
INSERT INTO `gps_hisotry_track` VALUES ('8cdabb06a2b845e49ea27eff998bbe59', '川A12345', '104.074', '30.626', '2017-04-28 10:20:41:663', null);
INSERT INTO `gps_hisotry_track` VALUES ('8ce6cb9a8eeb4d708583363c8dd756fc', '川A12345', '104.028', '30.6614', '2017-04-28 10:20:57:948', null);
INSERT INTO `gps_hisotry_track` VALUES ('8ce8f8b9b7be4df0990c05a27523d2d6', '川A1BB4A', '104.216', '30.5625', '2017-04-28 10:22:41:094', null);
INSERT INTO `gps_hisotry_track` VALUES ('8d0ea5fcb3134cb8b3ec16ce75af0173', '川A1A34B', '104.075', '30.5817', '2017-04-28 10:21:53:213', null);
INSERT INTO `gps_hisotry_track` VALUES ('8d16f7dfa6de4d76a1e9311d1cbaf485', '川A12345', '104.057', '30.6296', '2017-04-28 10:20:48:578', null);
INSERT INTO `gps_hisotry_track` VALUES ('8d6e6f59b83748249161236b9f13892d', '川A1A34B', '104.078', '30.6847', '2017-04-28 10:22:20:951', null);
INSERT INTO `gps_hisotry_track` VALUES ('8db43bad11aa4c7793a0d493a8ce1c8d', '川A1BB4A', '104.01', '30.5921', '2017-04-28 10:23:02:508', null);
INSERT INTO `gps_hisotry_track` VALUES ('8db4cb42a5f34f7d96a42405b34ca5e6', '川A1A34B', '104.074', '30.603', '2017-04-28 10:21:56:997', null);
INSERT INTO `gps_hisotry_track` VALUES ('8df2ab81986446aab170253efcc07469', '川A1BB4A', '104.199', '30.5707', '2017-04-28 10:22:43:201', null);
INSERT INTO `gps_hisotry_track` VALUES ('8dfc5e0ef1cd4bcb96f08083c7abcd12', '川A1BB4A', '103.872', '30.706', '2017-04-28 10:23:29:273', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e202580c3504518806047aee776a018', '川A1A34B', '104.074', '30.6105', '2017-04-28 10:21:59:371', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e2204469bb7436bac878676a5927983', '川A12345', '104.043', '30.6367', '2017-04-28 10:20:52:020', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e2eb360a8e94a6ca1df28bdf57d23ce', '川A1BB4A', '103.872', '30.7061', '2017-04-28 10:23:29:716', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e2fda38fa65456f8fca178a7caa689d', '川A12345', '104.032', '30.6757', '2017-04-28 10:21:02:857', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e43babbef86469f84c2df74bded9e3e', '川A1BB4A', '104.177', '30.5808', '2017-04-28 10:22:46:509', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e64def89349423d8ea2113aff703b90', '川A1A34B', '104.073', '30.6539', '2017-04-28 10:22:10:408', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e7c29c973a046a09c6a87437b8558c0', '川A1A34B', '104.078', '30.6831', '2017-04-28 10:22:19:689', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e7cb36574c64fbebba9da23b8808d9d', '川A1BB4A', '104.19', '30.5755', '2017-04-28 10:22:45:085', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e83d7406f8945d2a04ffa049842d470', '川A1BB4A', '103.975', '30.6044', '2017-04-28 10:23:06:038', null);
INSERT INTO `gps_hisotry_track` VALUES ('8e8dd86368b243dd93c0d03f3f36807f', '川A12345', '104.028', '30.6744', '2017-04-28 10:21:01:315', null);
INSERT INTO `gps_hisotry_track` VALUES ('8eefe9d1bfa340b5aade3e0ba1b30daf', '川A12345', '104.045', '30.6356', '2017-04-28 10:20:51:516', null);
INSERT INTO `gps_hisotry_track` VALUES ('8f20e3b1981549aa8b3e7f820fdfbd76', '川A1BB4A', '104.101', '30.5744', '2017-04-28 10:22:52:928', null);
INSERT INTO `gps_hisotry_track` VALUES ('8f242c8c10624812b303c53232aae892', '川A1BB4A', '104.137', '30.575', '2017-04-28 10:22:50:353', null);
INSERT INTO `gps_hisotry_track` VALUES ('8f2ede75d20a49e5a9c8d92e9a1b0c3f', '川A1BB4A', '104.18', '30.5794', '2017-04-28 10:22:45:977', null);
INSERT INTO `gps_hisotry_track` VALUES ('8f34e78882514f8d9fe94a9f3f021370', '川A1BB4A', '103.939', '30.699', '2017-04-28 10:23:19:521', null);
INSERT INTO `gps_hisotry_track` VALUES ('8f97f26b68114b31a201df716f12b5fa', '川A1A34B', '104.074', '30.6175', '2017-04-28 10:22:01:580', null);
INSERT INTO `gps_hisotry_track` VALUES ('8faacd870f2b48a782db96d4e23f4c30', '川A1A34B', '104.072', '30.6621', '2017-04-28 10:22:11:884', null);
INSERT INTO `gps_hisotry_track` VALUES ('8fbd8c25989d4dadb2c80945b606bef4', '川A1BB4A', '103.88', '30.7021', '2017-04-28 10:23:26:954', null);
INSERT INTO `gps_hisotry_track` VALUES ('8fca4ce868074178be8bf7ffc5861d4d', '川A1BB4A', '103.94', '30.6979', '2017-04-28 10:23:21:404', null);
INSERT INTO `gps_hisotry_track` VALUES ('8fe56ae6f4654180a15b56ba90a921d6', '川A1A34B', '104.075', '30.5718', '2017-04-28 10:21:51:766', null);
INSERT INTO `gps_hisotry_track` VALUES ('8ffe8f1664e24033aa45bab1e9d10496', '川A12345', '104.074', '30.6085', '2017-04-28 10:20:38:021', null);
INSERT INTO `gps_hisotry_track` VALUES ('907eac4631a943e999f7f4b18d387e68', '川A1A34B', '104.075', '30.5737', '2017-04-28 10:21:51:929', null);
INSERT INTO `gps_hisotry_track` VALUES ('909421545b514243b2bb367a77695f20', '川A1BB4A', '104.046', '30.5776', '2017-04-28 10:22:58:020', null);
INSERT INTO `gps_hisotry_track` VALUES ('90a1b6a9ec6648f6b045cf2ea2b0027a', '川A12345', '104.028', '30.6728', '2017-04-28 10:21:00:624', null);
INSERT INTO `gps_hisotry_track` VALUES ('90c514de042e4fa68d9a96b5568ce711', '川A12345', '104.074', '30.6042', '2017-04-28 10:20:37:162', null);
INSERT INTO `gps_hisotry_track` VALUES ('914845251d934278863268764f722596', '川A1BB4A', '104.086', '30.5723', '2017-04-28 10:22:53:711', null);
INSERT INTO `gps_hisotry_track` VALUES ('916dc220528b480ca51cbeae9ea53c0c', '川A1A34B', '104.074', '30.4962', '2017-04-28 10:21:44:161', null);
INSERT INTO `gps_hisotry_track` VALUES ('9174af3fbd804ed0bd2b33c2c735012b', '川A1BB4A', '103.959', '30.613', '2017-04-28 10:23:07:944', null);
INSERT INTO `gps_hisotry_track` VALUES ('9193fadbeca2495cb07128cb50dbd17d', '川A1BB4A', '104.118', '30.5738', '2017-04-28 10:22:51:448', null);
INSERT INTO `gps_hisotry_track` VALUES ('91f3b49412944e2d8d1fa1e18dd0c10c', '川A1BB4A', '103.996', '30.5925', '2017-04-28 10:23:03:663', null);
INSERT INTO `gps_hisotry_track` VALUES ('9229b998a3ee4443af68b8a86d6624d6', '川A1BB4A', '103.954', '30.6199', '2017-04-28 10:23:09:300', null);
INSERT INTO `gps_hisotry_track` VALUES ('92317b45d65f4296a27743040c8e1353', '川A1BB4A', '103.863', '30.7032', '2017-04-28 10:23:34:150', null);
INSERT INTO `gps_hisotry_track` VALUES ('92586c3fd69741e0be869023f611a6a5', '川A1A34B', '104.073', '30.6331', '2017-04-28 10:22:05:330', null);
INSERT INTO `gps_hisotry_track` VALUES ('926294fba3f24d26aec7103031cc21cf', '川A1A34B', '104.077', '30.5129', '2017-04-28 10:21:46:846', null);
INSERT INTO `gps_hisotry_track` VALUES ('9280ac03d7374d77a631ada845a756c0', '川A1BB4A', '104.198', '30.5716', '2017-04-28 10:22:43:755', null);
INSERT INTO `gps_hisotry_track` VALUES ('92b83248f8a54d448bc6adb6cbfb9ce5', '川A12345', '104.028', '30.6717', '2017-04-28 10:21:00:447', null);
INSERT INTO `gps_hisotry_track` VALUES ('92bcc5e4d7c44fc583028baf410edf01', '川A12345', '104.075', '30.5947', '2017-04-28 10:20:35:704', null);
INSERT INTO `gps_hisotry_track` VALUES ('92eada970bd445e9a67cc6e30a92a7ca', '川A1BB4A', '104.119', '30.5738', '2017-04-28 10:22:51:201', null);
INSERT INTO `gps_hisotry_track` VALUES ('92fdba04ab4b486cb12a1b9acbfdd98e', '川A1A34B', '104.073', '30.6588', '2017-04-28 10:22:11:181', null);
INSERT INTO `gps_hisotry_track` VALUES ('936a21176f084004a87813670ad38c26', '川A1BB4A', '103.939', '30.6979', '2017-04-28 10:23:21:482', null);
INSERT INTO `gps_hisotry_track` VALUES ('938d4ee5047b454ba89450c31e8f3afb', '川A1BB4A', '103.95', '30.6388', '2017-04-28 10:23:10:803', null);
INSERT INTO `gps_hisotry_track` VALUES ('938f44f8b8c74aeab2b9a89e2634ee37', '川A1BB4A', '104.258', '30.5698', '2017-04-28 10:22:28:488', null);
INSERT INTO `gps_hisotry_track` VALUES ('93cc5878132b411cb163185556cdc7ee', '川A12345', '104.075', '30.6266', '2017-04-28 10:20:42:563', null);
INSERT INTO `gps_hisotry_track` VALUES ('93f186d0e9c342aba180f99f7dfac579', '川A1A34B', '104.074', '30.625', '2017-04-28 10:22:02:931', null);
INSERT INTO `gps_hisotry_track` VALUES ('9404a2c075824a8dab879112dcf52e6c', '川A12345', '104.074', '30.6181', '2017-04-28 10:20:40:504', null);
INSERT INTO `gps_hisotry_track` VALUES ('942d4d73dd754034ae77547a1f4427e2', '川A1BB4A', '104.236', '30.5573', '2017-04-28 10:22:36:403', null);
INSERT INTO `gps_hisotry_track` VALUES ('9445c6cd96154a3f83bb8018ec5334d4', '川A1BB4A', '103.956', '30.6155', '2017-04-28 10:23:08:721', null);
INSERT INTO `gps_hisotry_track` VALUES ('946a3e8df86b4f5c8c4b21a94e8f9721', '川A12345', '104.075', '30.6263', '2017-04-28 10:20:43:996', null);
INSERT INTO `gps_hisotry_track` VALUES ('9491ec40a48e415daa0593589e414e25', '川A1BB4A', '104.029', '30.5839', '2017-04-28 10:22:59:838', null);
INSERT INTO `gps_hisotry_track` VALUES ('94af604efbbd480bb6f6472e9de8ee69', '川A1BB4A', '104.034', '30.5814', '2017-04-28 10:22:59:105', null);
INSERT INTO `gps_hisotry_track` VALUES ('94c55b013e4b45d2aa243253bafab17a', '川A1A34B', '104.074', '30.6086', '2017-04-28 10:21:58:719', null);
INSERT INTO `gps_hisotry_track` VALUES ('94c6021a43924e478abdfe1c998eeccc', '川A12345', '104.028', '30.6689', '2017-04-28 10:20:59:711', null);
INSERT INTO `gps_hisotry_track` VALUES ('94fdc402e2f34020af5da2346361cb48', '川A1A34B', '104.072', '30.6698', '2017-04-28 10:22:15:189', null);
INSERT INTO `gps_hisotry_track` VALUES ('953d97cfca8248acb6c0b0e02b9f0619', '川A1BB4A', '103.872', '30.7056', '2017-04-28 10:23:28:228', null);
INSERT INTO `gps_hisotry_track` VALUES ('954e7f72c00b4f698faef0a22bea3143', '川A1BB4A', '104.12', '30.5738', '2017-04-28 10:22:51:098', null);
INSERT INTO `gps_hisotry_track` VALUES ('9558cc1ecfc644b5881693b49588690e', '川A1BB4A', '103.948', '30.6437', '2017-04-28 10:23:11:665', null);
INSERT INTO `gps_hisotry_track` VALUES ('95b86445db1b4d7d91ae27bb14a76486', '川A1BB4A', '103.875', '30.7043', '2017-04-28 10:23:27:374', null);
INSERT INTO `gps_hisotry_track` VALUES ('95bb77e6567644d584aeb1f2a02c722f', '川A1BB4A', '103.987', '30.5975', '2017-04-28 10:23:04:841', null);
INSERT INTO `gps_hisotry_track` VALUES ('95fad385fa084a5b85a0b0ac9df99b4b', '川A12345', '104.049', '30.6335', '2017-04-28 10:20:50:951', null);
INSERT INTO `gps_hisotry_track` VALUES ('960aae7c032046359503322ffba4571a', '川A1BB4A', '103.949', '30.6415', '2017-04-28 10:23:11:230', null);
INSERT INTO `gps_hisotry_track` VALUES ('9631660d0bf34aeaa9af5d4a247eb5dc', '川A1BB4A', '103.962', '30.6105', '2017-04-28 10:23:07:694', null);
INSERT INTO `gps_hisotry_track` VALUES ('969e70f4ea014e37b5611099b7d91cef', '川A12345', '104.031', '30.649', '2017-04-28 10:20:53:980', null);
INSERT INTO `gps_hisotry_track` VALUES ('97085cee41c0448dbf536619454fe70d', '川A1BB4A', '103.978', '30.603', '2017-04-28 10:23:05:729', null);
INSERT INTO `gps_hisotry_track` VALUES ('970f86b8b0764635a7ddeb31693641e2', '川A1A34B', '104.074', '30.6256', '2017-04-28 10:22:03:274', null);
INSERT INTO `gps_hisotry_track` VALUES ('972cb0c1adcc436593e5666001642382', '川A1BB4A', '104.086', '30.5723', '2017-04-28 10:22:53:773', null);
INSERT INTO `gps_hisotry_track` VALUES ('978d18d4f13343f4a964c9c4a1dad9b2', '川A12345', '104.028', '30.6726', '2017-04-28 10:21:00:490', null);
INSERT INTO `gps_hisotry_track` VALUES ('97c0cb1869424c599b68da4f6271bea1', '川A12345', '104.058', '30.6293', '2017-04-28 10:20:48:005', null);
INSERT INTO `gps_hisotry_track` VALUES ('97cc333a9214446aa944a6417fc24037', '川A1BB4A', '103.863', '30.703', '2017-04-28 10:23:34:351', null);
INSERT INTO `gps_hisotry_track` VALUES ('97d2af59fff2475da89631589b8867b3', '川A1A34B', '104.073', '30.6588', '2017-04-28 10:22:11:288', null);
INSERT INTO `gps_hisotry_track` VALUES ('97d5739f7c1940219807e522d2dfea50', '川A1A34B', '104.075', '30.6787', '2017-04-28 10:22:17:982', null);
INSERT INTO `gps_hisotry_track` VALUES ('98060dd524da4fc3b9aa02d5c6b8a0ba', '川A1BB4A', '103.913', '30.7013', '2017-04-28 10:23:24:113', null);
INSERT INTO `gps_hisotry_track` VALUES ('980da82d56eb42e798eb20fb59b646df', '川A1A34B', '104.072', '30.6704', '2017-04-28 10:22:15:447', null);
INSERT INTO `gps_hisotry_track` VALUES ('9843deca637442488dff778f7746a3b4', '川A1A34B', '104.08', '30.7005', '2017-04-28 10:22:23:300', null);
INSERT INTO `gps_hisotry_track` VALUES ('98475097dc1f45fb814971681b027257', '川A1BB4A', '104.158', '30.5779', '2017-04-28 10:22:49:165', null);
INSERT INTO `gps_hisotry_track` VALUES ('98982f4d65d94c878ba424a6a93bee1e', '川A1A34B', '104.074', '30.6141', '2017-04-28 10:22:00:171', null);
INSERT INTO `gps_hisotry_track` VALUES ('98ab5550fb324fffad2d1e1644436480', '川A1A34B', '104.074', '30.6138', '2017-04-28 10:21:59:906', null);
INSERT INTO `gps_hisotry_track` VALUES ('99795df56d294661ba92fe31633d0b3c', '川A1A34B', '104.075', '30.5714', '2017-04-28 10:21:51:571', null);
INSERT INTO `gps_hisotry_track` VALUES ('9981717eb0344b0baff588318acb02db', '川A1A34B', '104.074', '30.6089', '2017-04-28 10:21:58:981', null);
INSERT INTO `gps_hisotry_track` VALUES ('99878d5c01dc4db78f3e0a50df308f49', '川A1A34B', '104.074', '30.6017', '2017-04-28 10:21:56:354', null);
INSERT INTO `gps_hisotry_track` VALUES ('99fae99d465c462db8f430e38cfb44fd', '川A1BB4A', '103.945', '30.6656', '2017-04-28 10:23:14:164', null);
INSERT INTO `gps_hisotry_track` VALUES ('99fe90325561477e8eb04f2110de5d76', '川A1BB4A', '104.118', '30.5738', '2017-04-28 10:22:51:582', null);
INSERT INTO `gps_hisotry_track` VALUES ('9a10b5eeb33049439f7bab284efbab76', '川A1BB4A', '104.107', '30.5745', '2017-04-28 10:22:52:707', null);
INSERT INTO `gps_hisotry_track` VALUES ('9a460a0359e34636a5918ba5a8639a36', '川A12345', '104.074', '30.6017', '2017-04-28 10:20:36:312', null);
INSERT INTO `gps_hisotry_track` VALUES ('9a4836ef446747f594b71a9e07d01d92', '川A1BB4A', '104.064', '30.5725', '2017-04-28 10:22:56:404', null);
INSERT INTO `gps_hisotry_track` VALUES ('9a830d3059ab4284be82d4924cb0cfaa', '川A12345', '104.028', '30.663', '2017-04-28 10:20:58:098', null);
INSERT INTO `gps_hisotry_track` VALUES ('9aa7239af6124e63a15c3f24e9ef2137', '川A1BB4A', '103.857', '30.6982', '2017-04-28 10:23:35:741', null);
INSERT INTO `gps_hisotry_track` VALUES ('9ab79c97236e4342a12d14974ef3c4b2', '川A1BB4A', '104.176', '30.581', '2017-04-28 10:22:46:556', null);
INSERT INTO `gps_hisotry_track` VALUES ('9ab7df1325f04577b6c5608ea6b323f5', '川A1BB4A', '103.947', '30.6479', '2017-04-28 10:23:12:338', null);
INSERT INTO `gps_hisotry_track` VALUES ('9ac4a256fd6f4cd49bd0bb9a38619168', '川A1A34B', '104.074', '30.6097', '2017-04-28 10:21:59:080', null);
INSERT INTO `gps_hisotry_track` VALUES ('9afbf2cd86a0442c9a95927de575fe5d', '川A1BB4A', '104.185', '30.5775', '2017-04-28 10:22:45:624', null);
INSERT INTO `gps_hisotry_track` VALUES ('9baac9e58d064789add01456b769ea29', '川A1BB4A', '104.195', '30.5728', '2017-04-28 10:22:43:931', null);
INSERT INTO `gps_hisotry_track` VALUES ('9bbaa14c6682439e8cc03077bed6ceaf', '川A1BB4A', '104.15', '30.5764', '2017-04-28 10:22:49:667', null);
INSERT INTO `gps_hisotry_track` VALUES ('9bf33859d93c49528fd917f3b92df019', '川A1A34B', '104.075', '30.5027', '2017-04-28 10:21:45:133', null);
INSERT INTO `gps_hisotry_track` VALUES ('9bfdfe8477c64176865a62adf3c81d1b', '川A12345', '104.067', '30.6262', '2017-04-28 10:20:46:304', null);
INSERT INTO `gps_hisotry_track` VALUES ('9c03b7f28e3a4d72a0d28ddd1dd9bc87', '川A1A34B', '104.075', '30.6789', '2017-04-28 10:22:18:105', null);
INSERT INTO `gps_hisotry_track` VALUES ('9c114df475844c52a1f7d93e0a79d89b', '川A12345', '104.074', '30.6197', '2017-04-28 10:20:40:613', null);
INSERT INTO `gps_hisotry_track` VALUES ('9c850f9211014a45baf30891ffe72391', '川A12345', '104.074', '30.6263', '2017-04-28 10:20:41:988', null);
INSERT INTO `gps_hisotry_track` VALUES ('9d3f59ec784e4e60a03490b4f44448a3', '川A12345', '104.073', '30.6263', '2017-04-28 10:20:45:272', null);
INSERT INTO `gps_hisotry_track` VALUES ('9db3361822264d4fbdada26fd2739b8a', '川A12345', '104.074', '30.6041', '2017-04-28 10:20:37:045', null);
INSERT INTO `gps_hisotry_track` VALUES ('9dc4726b5e6d47788873e57b2a7c495b', '川A1A34B', '104.074', '30.6272', '2017-04-28 10:22:04:583', null);
INSERT INTO `gps_hisotry_track` VALUES ('9dd383932a6f49df889a029124ef85ed', '川A1BB4A', '104.258', '30.5698', '2017-04-28 10:22:28:588', null);
INSERT INTO `gps_hisotry_track` VALUES ('9e32b9e5504e456191ddba7a1120cf6c', '川A12345', '104.031', '30.6493', '2017-04-28 10:20:54:211', null);
INSERT INTO `gps_hisotry_track` VALUES ('9e7443ec89944f3f96a723a96e82e3f2', '川A1A34B', '104.075', '30.5894', '2017-04-28 10:21:53:980', null);
INSERT INTO `gps_hisotry_track` VALUES ('9ed463b03e9c4154829cb7da756c2b41', '川A1A34B', '104.073', '30.6625', '2017-04-28 10:22:12:315', null);
INSERT INTO `gps_hisotry_track` VALUES ('9f4680b8d64d4554b95e8452978e351a', '川A1BB4A', '104.075', '30.5718', '2017-04-28 10:22:55:800', null);
INSERT INTO `gps_hisotry_track` VALUES ('9f62570726414a519535cd1bcc099be2', '川A12345', '104.034', '30.6462', '2017-04-28 10:20:53:297', null);
INSERT INTO `gps_hisotry_track` VALUES ('9f6caa1f9a1d432cb413039fe9266922', '川A1BB4A', '104.094', '30.5735', '2017-04-28 10:22:53:569', null);
INSERT INTO `gps_hisotry_track` VALUES ('9f99f99ca7ea479fb4f6162e10a7d0ea', '川A12345', '104.028', '30.6739', '2017-04-28 10:21:01:002', null);
INSERT INTO `gps_hisotry_track` VALUES ('9fa35415ae3445aea9ae8c0023aa6c61', '川A12345', '104.029', '30.6529', '2017-04-28 10:20:56:347', null);
INSERT INTO `gps_hisotry_track` VALUES ('9fecbf29ec6c4c40b9189ac29e81454c', '川A1A34B', '104.074', '30.6042', '2017-04-28 10:21:57:524', null);
INSERT INTO `gps_hisotry_track` VALUES ('a00c90b0a06b4e0ea2182f7153456845', '川A1A34B', '104.073', '30.6595', '2017-04-28 10:22:11:640', null);
INSERT INTO `gps_hisotry_track` VALUES ('a01c3744c6d043fc8e104c3a24fb87cd', '川A1BB4A', '104.051', '30.5764', '2017-04-28 10:22:57:415', null);
INSERT INTO `gps_hisotry_track` VALUES ('a01e2a70fdad49e79724100ea40b273c', '川A12345', '104.074', '30.6251', '2017-04-28 10:20:41:271', null);
INSERT INTO `gps_hisotry_track` VALUES ('a045711789e5473dbcec9eb46f670d51', '川A12345', '104.074', '30.5849', '2017-04-28 10:20:34:195', null);
INSERT INTO `gps_hisotry_track` VALUES ('a0475413cb0d42c782a768e4b56ec5ce', '川A12345', '104.033', '30.6477', '2017-04-28 10:20:53:797', null);
INSERT INTO `gps_hisotry_track` VALUES ('a060ac281f954fecbccc2ddae7c8370d', '川A12345', '104.07', '30.6262', '2017-04-28 10:20:46:163', null);
INSERT INTO `gps_hisotry_track` VALUES ('a068bc217d3046c2b4964119af52e3b3', '川A12345', '104.075', '30.6266', '2017-04-28 10:20:42:629', null);
INSERT INTO `gps_hisotry_track` VALUES ('a0819c0558154e90b4eee82eb9f1e236', '川A1BB4A', '103.874', '30.7063', '2017-04-28 10:23:30:933', null);
INSERT INTO `gps_hisotry_track` VALUES ('a0de758b2dbb43329939648336962f66', '川A1BB4A', '104.017', '30.5914', '2017-04-28 10:23:01:808', null);
INSERT INTO `gps_hisotry_track` VALUES ('a11623ea7cf4479ba31cced0928d74b0', '川A12345', '104.073', '30.5849', '2017-04-28 10:20:34:096', null);
INSERT INTO `gps_hisotry_track` VALUES ('a11e47d6b9f14420845389191f6cf7b9', '川A1BB4A', '104.07', '30.5717', '2017-04-28 10:22:56:004', null);
INSERT INTO `gps_hisotry_track` VALUES ('a152222b901f430ea218be0bb542366a', '川A1BB4A', '104.2', '30.5703', '2017-04-28 10:22:42:936', null);
INSERT INTO `gps_hisotry_track` VALUES ('a15bc930e2c5479b8d57c1e7277f287e', '川A1BB4A', '103.872', '30.7058', '2017-04-28 10:23:28:546', null);
INSERT INTO `gps_hisotry_track` VALUES ('a1a7295e0d7d4d2e9f203722d96fafa7', '川A12345', '104.074', '30.6139', '2017-04-28 10:20:38:855', null);
INSERT INTO `gps_hisotry_track` VALUES ('a1da42edd5da4727af45ddf5fe6a3790', '川A1BB4A', '104.175', '30.583', '2017-04-28 10:22:47:086', null);
INSERT INTO `gps_hisotry_track` VALUES ('a1ea134645c4444086adb8e7390bcd83', '川A12345', '104.074', '30.6178', '2017-04-28 10:20:40:263', null);
INSERT INTO `gps_hisotry_track` VALUES ('a208597a4ad149b8bad71cd679560563', '川A1BB4A', '104.192', '30.5744', '2017-04-28 10:22:44:386', null);
INSERT INTO `gps_hisotry_track` VALUES ('a22ccc76399b4a63b30f2ec36c16d014', '川A1BB4A', '104.075', '30.5718', '2017-04-28 10:22:55:525', null);
INSERT INTO `gps_hisotry_track` VALUES ('a267851788a844218b6e15f571780839', '川A1BB4A', '104.13', '30.5745', '2017-04-28 10:22:50:553', null);
INSERT INTO `gps_hisotry_track` VALUES ('a2d6da31486541ac9a1ddd52472644a2', '川A1A34B', '104.077', '30.5152', '2017-04-28 10:21:47:219', null);
INSERT INTO `gps_hisotry_track` VALUES ('a2de34959c3d421993bcf25a48f5594a', '川A1A34B', '104.078', '30.6833', '2017-04-28 10:22:19:792', null);
INSERT INTO `gps_hisotry_track` VALUES ('a2f70e9bfda84f1cac86a30e803f532c', '川A1BB4A', '104.175', '30.5825', '2017-04-28 10:22:46:889', null);
INSERT INTO `gps_hisotry_track` VALUES ('a2faab7e0d1a4b069f8a89693bb4e9aa', '川A1BB4A', '104.238', '30.5598', '2017-04-28 10:22:35:442', null);
INSERT INTO `gps_hisotry_track` VALUES ('a30c42307a124ea0a22c1644873a5530', '川A12345', '104.049', '30.6337', '2017-04-28 10:20:51:013', null);
INSERT INTO `gps_hisotry_track` VALUES ('a30e94f202734c02896d04e2e538bc35', '川A1BB4A', '103.953', '30.6272', '2017-04-28 10:23:09:936', null);
INSERT INTO `gps_hisotry_track` VALUES ('a3574458fb2e4e1e8e8d1086595d402a', '川A12345', '104.031', '30.6489', '2017-04-28 10:20:53:948', null);
INSERT INTO `gps_hisotry_track` VALUES ('a36177e47a594cf19585cf1953320dc6', '川A1BB4A', '104.052', '30.5759', '2017-04-28 10:22:56:858', null);
INSERT INTO `gps_hisotry_track` VALUES ('a38133be28d14ecb937c32bff89e739c', '川A1A34B', '104.077', '30.5291', '2017-04-28 10:21:47:912', null);
INSERT INTO `gps_hisotry_track` VALUES ('a3a152278470448ea1cff36cd18c3fd8', '川A1A34B', '104.074', '30.6662', '2017-04-28 10:22:14:288', null);
INSERT INTO `gps_hisotry_track` VALUES ('a3b2da4a1def498a981e24bb8b2dca2e', '川A1A34B', '104.076', '30.5343', '2017-04-28 10:21:48:996', null);
INSERT INTO `gps_hisotry_track` VALUES ('a3f0ba72551b4e5b9bdc3f2e0f68792e', '川A1BB4A', '104.159', '30.5782', '2017-04-28 10:22:49:103', null);
INSERT INTO `gps_hisotry_track` VALUES ('a428ad6895404b3e94b1ce608a87e58f', '川A1A34B', '104.076', '30.5579', '2017-04-28 10:21:50:238', null);
INSERT INTO `gps_hisotry_track` VALUES ('a456384a30304fd3b5c2865ee13debef', '川A1BB4A', '104.176', '30.5814', '2017-04-28 10:22:46:673', null);
INSERT INTO `gps_hisotry_track` VALUES ('a47eb16f379640e580395ae5cd68e272', '川A1BB4A', '104.009', '30.5921', '2017-04-28 10:23:02:854', null);
INSERT INTO `gps_hisotry_track` VALUES ('a4a73910c575418b87152e595974d854', '川A1A34B', '104.08', '30.7008', '2017-04-28 10:22:23:850', null);
INSERT INTO `gps_hisotry_track` VALUES ('a4c264d2d0174f048a1d24e04ad4f106', '川A1BB4A', '103.938', '30.6983', '2017-04-28 10:23:22:249', null);
INSERT INTO `gps_hisotry_track` VALUES ('a5126989240b40c7b519a514d62a184e', '川A1A34B', '104.073', '30.6766', '2017-04-28 10:22:17:434', null);
INSERT INTO `gps_hisotry_track` VALUES ('a53649f2721543548ac699346024118d', '川A1BB4A', '104.258', '30.5698', '2017-04-28 10:22:28:543', null);
INSERT INTO `gps_hisotry_track` VALUES ('a574f528610e48bf8c4786069e44f433', '川A12345', '104.054', '30.6312', '2017-04-28 10:20:49:451', null);
INSERT INTO `gps_hisotry_track` VALUES ('a58bd6ba4267496ba031e6caec62274d', '川A12345', '104.028', '30.6638', '2017-04-28 10:20:58:539', null);
INSERT INTO `gps_hisotry_track` VALUES ('a59b20c67d2f46fa909c9883db804b4a', '川A1A34B', '104.08', '30.7006', '2017-04-28 10:22:23:400', null);
INSERT INTO `gps_hisotry_track` VALUES ('a59f13a378ea4ac19443bbb0a2c077d1', '川A1A34B', '104.073', '30.6396', '2017-04-28 10:22:06:310', null);
INSERT INTO `gps_hisotry_track` VALUES ('a5cc1153c71b4679acb20b2837e70d36', '川A12345', '104.074', '30.6262', '2017-04-28 10:20:41:845', null);
INSERT INTO `gps_hisotry_track` VALUES ('a5cf1637c2f74fa290b38a234a040f35', '川A1BB4A', '104.035', '30.581', '2017-04-28 10:22:58:955', null);
INSERT INTO `gps_hisotry_track` VALUES ('a635f0613c6743878f0d524c62f68b8f', '川A1BB4A', '103.874', '30.7066', '2017-04-28 10:23:30:314', null);
INSERT INTO `gps_hisotry_track` VALUES ('a6994dc69623483885f51771970f70d7', '川A1BB4A', '103.874', '30.7064', '2017-04-28 10:23:30:497', null);
INSERT INTO `gps_hisotry_track` VALUES ('a6996e6c919e404ca06c60284a1e14ac', '川A1BB4A', '104.236', '30.5571', '2017-04-28 10:22:36:701', null);
INSERT INTO `gps_hisotry_track` VALUES ('a6a9142ad47647fdb15579209f0141f5', '川A12345', '104.072', '30.5849', '2017-04-28 10:20:33:970', null);
INSERT INTO `gps_hisotry_track` VALUES ('a6f0a4feac2348439d0e9510bc579b78', '川A1A34B', '104.073', '30.6589', '2017-04-28 10:22:11:540', null);
INSERT INTO `gps_hisotry_track` VALUES ('a7248e65449e49d6ac6a8f491c25e4b5', '川A12345', '104.031', '30.6759', '2017-04-28 10:21:02:458', null);
INSERT INTO `gps_hisotry_track` VALUES ('a750f5ed597745e4ac0717be6e3642ee', '川A1BB4A', '104.068', '30.5719', '2017-04-28 10:22:56:104', null);
INSERT INTO `gps_hisotry_track` VALUES ('a764319244944e3aa91dd91fb787b04f', '川A1BB4A', '104.095', '30.5737', '2017-04-28 10:22:53:518', null);
INSERT INTO `gps_hisotry_track` VALUES ('a77e7642cfba44d686e88ea3af3df608', '川A1BB4A', '104.082', '30.5719', '2017-04-28 10:22:54:593', null);
INSERT INTO `gps_hisotry_track` VALUES ('a7f595f1c4e84c6ea40d944137700315', '川A1A34B', '104.08', '30.7007', '2017-04-28 10:22:23:633', null);
INSERT INTO `gps_hisotry_track` VALUES ('a8418249a5444055b448bfce70deb6b2', '川A1BB4A', '104.262', '30.5687', '2017-04-28 10:22:27:982', null);
INSERT INTO `gps_hisotry_track` VALUES ('a848d507aeff4171a40f0ef70baafd96', '川A1BB4A', '103.946', '30.6497', '2017-04-28 10:23:12:680', null);
INSERT INTO `gps_hisotry_track` VALUES ('a8647a0d98b440dc8426388d25d6d9e7', '川A1BB4A', '104.171', '30.5822', '2017-04-28 10:22:47:777', null);
INSERT INTO `gps_hisotry_track` VALUES ('a896f161bb55427793fc4e49913dd66f', '川A1A34B', '104.074', '30.6263', '2017-04-28 10:22:03:842', null);
INSERT INTO `gps_hisotry_track` VALUES ('a8e9b1dafd694cf98211cf80073659da', '川A1BB4A', '103.925', '30.701', '2017-04-28 10:23:23:079', null);
INSERT INTO `gps_hisotry_track` VALUES ('a90ffbd506094ac7ae11362c821c0a52', '川A1BB4A', '103.998', '30.5921', '2017-04-28 10:23:03:588', null);
INSERT INTO `gps_hisotry_track` VALUES ('a916a9cba58d4f0299a04c12382f67d7', '川A1A34B', '104.076', '30.5379', '2017-04-28 10:21:49:244', null);
INSERT INTO `gps_hisotry_track` VALUES ('a91debf577334d8f8769bb6d5c162a5f', '川A1A34B', '104.073', '30.6512', '2017-04-28 10:22:09:764', null);
INSERT INTO `gps_hisotry_track` VALUES ('a9729964f61342b3af91b7763501b6ff', '川A1A34B', '104.076', '30.5334', '2017-04-28 10:21:48:481', null);
INSERT INTO `gps_hisotry_track` VALUES ('a981dd44af404173b10754a440f25a83', '川A1BB4A', '103.872', '30.7063', '2017-04-28 10:23:30:024', null);
INSERT INTO `gps_hisotry_track` VALUES ('a9c4942b0fea442ebf6b02b9a321a699', '川A1BB4A', '103.874', '30.7064', '2017-04-28 10:23:30:600', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa45f5354b574c0cbedd2be58a30cf1c', '川A1BB4A', '104.179', '30.5798', '2017-04-28 10:22:46:094', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa4e717dea544f7b94a7bfd1e55c6b2d', '川A1BB4A', '104.028', '30.5847', '2017-04-28 10:23:00:079', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa597a663850496dbc3cb85e53a2182f', '川A1BB4A', '104.172', '30.5826', '2017-04-28 10:22:47:504', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa61594f95054d01bc186f1fbbc590ab', '川A12345', '104.029', '30.6579', '2017-04-28 10:20:57:173', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa64fa98ba3e4162a2fd2f35c4d1edd6', '川A1BB4A', '103.932', '30.7002', '2017-04-28 10:23:22:807', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa72244526d741798ad675ed1e09887d', '川A1BB4A', '104.052', '30.576', '2017-04-28 10:22:56:971', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa8d1cbb6cec437a950e1bfc88f28657', '川A12345', '104.029', '30.6578', '2017-04-28 10:20:57:103', null);
INSERT INTO `gps_hisotry_track` VALUES ('aa92431f056844d19df9801afe3e22ff', '川A1BB4A', '104.074', '30.5718', '2017-04-28 10:22:55:904', null);
INSERT INTO `gps_hisotry_track` VALUES ('aaa0626d9a794e8d863342633c7b0a3b', '川A1BB4A', '103.938', '30.6983', '2017-04-28 10:23:22:357', null);
INSERT INTO `gps_hisotry_track` VALUES ('aaea3f8053cf43448f9c72244a7da008', '川A1BB4A', '104.031', '30.5831', '2017-04-28 10:22:59:629', null);
INSERT INTO `gps_hisotry_track` VALUES ('ab3191c3561d45208a4936a5bdb2ed02', '川A12345', '104.029', '30.6512', '2017-04-28 10:20:55:407', null);
INSERT INTO `gps_hisotry_track` VALUES ('ab7e92eb8186438981725268f0e81308', '川A1BB4A', '104.009', '30.5921', '2017-04-28 10:23:02:679', null);
INSERT INTO `gps_hisotry_track` VALUES ('abca2a64ea6f422e805c1cab1a7d3fbb', '川A12345', '104.051', '30.6328', '2017-04-28 10:20:50:823', null);
INSERT INTO `gps_hisotry_track` VALUES ('abd9c4f77bee4d21bf235548cce6be00', '川A12345', '104.058', '30.6294', '2017-04-28 10:20:48:147', null);
INSERT INTO `gps_hisotry_track` VALUES ('abf653b20e064225bfd75dedb8a642f1', '川A12345', '104.074', '30.6263', '2017-04-28 10:20:41:920', null);
INSERT INTO `gps_hisotry_track` VALUES ('ac2486933e0d4673befb972f65e0151c', '川A12345', '104.052', '30.6321', '2017-04-28 10:20:50:198', null);
INSERT INTO `gps_hisotry_track` VALUES ('ac627e63aa3143c3bc46b9bf699e870a', '川A12345', '104.074', '30.6059', '2017-04-28 10:20:37:578', null);
INSERT INTO `gps_hisotry_track` VALUES ('ac681b8fb0b641e49a5c8d133c9c97ff', '川A1BB4A', '104.014', '30.5921', '2017-04-28 10:23:02:033', null);
INSERT INTO `gps_hisotry_track` VALUES ('acdc84a230454b0ea26ed3e7140ca1f9', '川A1A34B', '104.074', '30.6104', '2017-04-28 10:21:59:282', null);
INSERT INTO `gps_hisotry_track` VALUES ('ad3ad37deba541af8ec3cd30092b3878', '川A1A34B', '104.08', '30.6941', '2017-04-28 10:22:22:409', null);
INSERT INTO `gps_hisotry_track` VALUES ('ad427be5b39c4ed385660929bdb66322', '川A1A34B', '104.074', '30.6223', '2017-04-28 10:22:02:496', null);
INSERT INTO `gps_hisotry_track` VALUES ('ad6d0804348f489b88b2875d1f8fcee2', '川A12345', '104.074', '30.6143', '2017-04-28 10:20:39:285', null);
INSERT INTO `gps_hisotry_track` VALUES ('ad96cecb77bb4ae1b3f51f941f3bfd01', '川A12345', '104.074', '30.603', '2017-04-28 10:20:36:647', null);
INSERT INTO `gps_hisotry_track` VALUES ('ad99e514b28349b3ba43f2c45cc6aee9', '川A1BB4A', '104.221', '30.5602', '2017-04-28 10:22:40:977', null);
INSERT INTO `gps_hisotry_track` VALUES ('add738fa05ac4a18b1ded4e8f7b76a81', '川A12345', '104.046', '30.6349', '2017-04-28 10:20:51:212', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae004cbf858e42d89565000e509bd53d', '川A1BB4A', '103.903', '30.7032', '2017-04-28 10:23:24:663', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae041a04ff14449c813554377b9c8b88', '川A1BB4A', '103.874', '30.7057', '2017-04-28 10:23:32:486', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae1f78e5944544f7a94cd7e4bc514ef0', '川A12345', '104.028', '30.6631', '2017-04-28 10:20:58:172', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae220807e22c4908a667a490582c8604', '川A1BB4A', '104.26', '30.5693', '2017-04-28 10:22:28:286', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae7c57cb16444a9e995c0c050112747a', '川A12345', '104.074', '30.6264', '2017-04-28 10:20:42:054', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae8903d706c5439aa28226fbee1c7f0c', '川A12345', '104.028', '30.6653', '2017-04-28 10:20:58:669', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae8b996f0156464a97610302bc265416', '川A1BB4A', '103.872', '30.7054', '2017-04-28 10:23:32:855', null);
INSERT INTO `gps_hisotry_track` VALUES ('ae916ff8a5c54499a587559695d9cc7d', '川A1A34B', '104.077', '30.5093', '2017-04-28 10:21:46:219', null);
INSERT INTO `gps_hisotry_track` VALUES ('aeeaeb371e8e4df3845e638d2cbb3000', '川A1BB4A', '103.874', '30.7063', '2017-04-28 10:23:30:889', null);
INSERT INTO `gps_hisotry_track` VALUES ('aeff7e4e92e54273a4e046dd3a88aac9', '川A12345', '104.054', '30.6313', '2017-04-28 10:20:49:704', null);
INSERT INTO `gps_hisotry_track` VALUES ('af0d269804f94a2b8e04670e7c756063', '川A1BB4A', '104.1', '30.5743', '2017-04-28 10:22:53:069', null);
INSERT INTO `gps_hisotry_track` VALUES ('af4a8aa67f764cbfb745d1485b4e1bdb', '川A1BB4A', '103.94', '30.6985', '2017-04-28 10:23:20:278', null);
INSERT INTO `gps_hisotry_track` VALUES ('af8310862d50447a8e07c5d0349e1a24', '川A1BB4A', '104.185', '30.5775', '2017-04-28 10:22:45:703', null);
INSERT INTO `gps_hisotry_track` VALUES ('afc44f2ffdb94fb484fb15ca5246ae00', '川A1BB4A', '103.962', '30.6104', '2017-04-28 10:23:07:646', null);
INSERT INTO `gps_hisotry_track` VALUES ('b005b4a2f7e44776a040b2cec710f19c', '川A1BB4A', '103.946', '30.6606', '2017-04-28 10:23:13:671', null);
INSERT INTO `gps_hisotry_track` VALUES ('b041067101e14463982f83e1482a14c2', '川A1BB4A', '104.23', '30.557', '2017-04-28 10:22:40:029', null);
INSERT INTO `gps_hisotry_track` VALUES ('b080e56f069c4260ad248b30060e1759', '川A1BB4A', '103.949', '30.6418', '2017-04-28 10:23:11:388', null);
INSERT INTO `gps_hisotry_track` VALUES ('b0ac3d2a9899480580f3871377dc971e', '川A12345', '104.028', '30.6631', '2017-04-28 10:20:58:365', null);
INSERT INTO `gps_hisotry_track` VALUES ('b104d1ca30f74ad89bff3e07f4ef703e', '川A1A34B', '104.077', '30.5307', '2017-04-28 10:21:48:029', null);
INSERT INTO `gps_hisotry_track` VALUES ('b117c15ead0a46be8e7b54ca8eaf1896', '川A1A34B', '104.077', '30.5223', '2017-04-28 10:21:47:611', null);
INSERT INTO `gps_hisotry_track` VALUES ('b1404fa8df984d0e826054784f248760', '川A1BB4A', '103.975', '30.6046', '2017-04-28 10:23:06:219', null);
INSERT INTO `gps_hisotry_track` VALUES ('b15680e53d1a456ab8c6babd964bdacd', '川A1BB4A', '103.991', '30.5946', '2017-04-28 10:23:04:433', null);
INSERT INTO `gps_hisotry_track` VALUES ('b185221611ac43b08b0871eff3077555', '川A1A34B', '104.074', '30.617', '2017-04-28 10:22:01:489', null);
INSERT INTO `gps_hisotry_track` VALUES ('b1bc2fae8adb48b29b4edef86643919a', '川A1BB4A', '104.075', '30.5718', '2017-04-28 10:22:55:627', null);
INSERT INTO `gps_hisotry_track` VALUES ('b1eada7b35cb4ab49e7d0890cf52908f', '川A12345', '104.049', '30.6337', '2017-04-28 10:20:51:099', null);
INSERT INTO `gps_hisotry_track` VALUES ('b22337a631724cf78fb64b299472bc1f', '川A1A34B', '104.074', '30.6264', '2017-04-28 10:22:04:098', null);
INSERT INTO `gps_hisotry_track` VALUES ('b24c95b6383e4ebe8e8a4d6fe2ebd57d', '川A1BB4A', '104.065', '30.5724', '2017-04-28 10:22:56:304', null);
INSERT INTO `gps_hisotry_track` VALUES ('b24d2e88980e4d49b7195c5060373c5f', '川A1BB4A', '103.951', '30.6356', '2017-04-28 10:23:10:555', null);
INSERT INTO `gps_hisotry_track` VALUES ('b25721165f744b949849ac823775eb96', '川A1BB4A', '104.079', '30.5718', '2017-04-28 10:22:54:959', null);
INSERT INTO `gps_hisotry_track` VALUES ('b258d299917c41cba353549339966f10', '川A1BB4A', '104.179', '30.5798', '2017-04-28 10:22:46:028', null);
INSERT INTO `gps_hisotry_track` VALUES ('b289186f22924fe5839a6339271c0d06', '川A1A34B', '104.074', '30.6147', '2017-04-28 10:22:00:438', null);
INSERT INTO `gps_hisotry_track` VALUES ('b2eec9881d084f66b72fd8327c0a4395', '川A1BB4A', '104.058', '30.5744', '2017-04-28 10:22:56:679', null);
INSERT INTO `gps_hisotry_track` VALUES ('b32f7d39d45b404997c59ae11c9a1fd6', '川A1A34B', '104.074', '30.4978', '2017-04-28 10:21:44:441', null);
INSERT INTO `gps_hisotry_track` VALUES ('b383d9cb7c06499fa64803a3db33b42f', '川A1BB4A', '104.152', '30.5767', '2017-04-28 10:22:49:457', null);
INSERT INTO `gps_hisotry_track` VALUES ('b3b5617f360446d9b57b2e641d498bc3', '川A1A34B', '104.075', '30.5884', '2017-04-28 10:21:53:913', null);
INSERT INTO `gps_hisotry_track` VALUES ('b3e266052c094e538e4838d109702733', '川A1BB4A', '104.173', '30.5831', '2017-04-28 10:22:47:436', null);
INSERT INTO `gps_hisotry_track` VALUES ('b40908d4f2e6470bb943d1739192900b', '川A12345', '104.074', '30.6044', '2017-04-28 10:20:37:221', null);
INSERT INTO `gps_hisotry_track` VALUES ('b473cffbe44c43369d4a3f147af583d3', '川A1BB4A', '104.049', '30.5769', '2017-04-28 10:22:57:654', null);
INSERT INTO `gps_hisotry_track` VALUES ('b4a39ea705374935b45a100b373b1c3a', '川A1A34B', '104.074', '30.6152', '2017-04-28 10:22:00:639', null);
INSERT INTO `gps_hisotry_track` VALUES ('b4b156622b714ee08b852696dfdf4f67', '川A12345', '104.028', '30.6706', '2017-04-28 10:20:59:972', null);
INSERT INTO `gps_hisotry_track` VALUES ('b4bfe6597ad94b209c0890ed8ae57aaf', '川A1BB4A', '104.007', '30.592', '2017-04-28 10:23:02:963', null);
INSERT INTO `gps_hisotry_track` VALUES ('b4d54dab39544e679d4e08500b1e0f8a', '川A1A34B', '104.08', '30.6919', '2017-04-28 10:22:21:991', null);
INSERT INTO `gps_hisotry_track` VALUES ('b4da1f3a13c74ec0860ca77e94b96611', '川A1BB4A', '104.226', '30.5584', '2017-04-28 10:22:40:494', null);
INSERT INTO `gps_hisotry_track` VALUES ('b51487cbf73f47ccb4faae6c6ef731de', '川A12345', '104.074', '30.6105', '2017-04-28 10:20:38:472', null);
INSERT INTO `gps_hisotry_track` VALUES ('b52c9e8f26eb48a1860692bab649ff31', '川A1A34B', '104.075', '30.5816', '2017-04-28 10:21:53:055', null);
INSERT INTO `gps_hisotry_track` VALUES ('b538846c90194b34a1b08a8b8ca50bfb', '川A1BB4A', '103.954', '30.6187', '2017-04-28 10:23:09:113', null);
INSERT INTO `gps_hisotry_track` VALUES ('b552083f96d54113a4b6b41d30929aaf', '川A1BB4A', '103.972', '30.606', '2017-04-28 10:23:06:511', null);
INSERT INTO `gps_hisotry_track` VALUES ('b62e6331b2ed4c5cb4a31d68c38a1768', '川A1A34B', '104.073', '30.6566', '2017-04-28 10:22:10:696', null);
INSERT INTO `gps_hisotry_track` VALUES ('b66c8b96ef5d4b078e9c59f9eead69d4', '川A1A34B', '104.075', '30.5665', '2017-04-28 10:21:51:204', null);
INSERT INTO `gps_hisotry_track` VALUES ('b67427dc5e7e409380da35e955d6424b', '川A12345', '104.066', '30.6263', '2017-04-28 10:20:46:521', null);
INSERT INTO `gps_hisotry_track` VALUES ('b6a35a75c8434264a465f6fb7fd01bd0', '川A1BB4A', '104.193', '30.574', '2017-04-28 10:22:44:205', null);
INSERT INTO `gps_hisotry_track` VALUES ('b6bc28296d2449bf8027aaf9d04491e9', '川A12345', '104.028', '30.6753', '2017-04-28 10:21:01:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('b6d1054467ba4303ba0ebbf5b7042b96', '川A12345', '104.029', '30.6526', '2017-04-28 10:20:56:281', null);
INSERT INTO `gps_hisotry_track` VALUES ('b6d5149f7f8446a79c273715de50c66b', '川A1BB4A', '103.939', '30.6981', '2017-04-28 10:23:18:302', null);
INSERT INTO `gps_hisotry_track` VALUES ('b6ee8d476fd1468e8297d86ec78cac6f', '川A1BB4A', '104.132', '30.5746', '2017-04-28 10:22:50:492', null);
INSERT INTO `gps_hisotry_track` VALUES ('b730ae4001ba48ec9c8db94a56d9602c', '川A1BB4A', '104.049', '30.5768', '2017-04-28 10:22:57:578', null);
INSERT INTO `gps_hisotry_track` VALUES ('b737933078c4471a94a68a6946db493b', '川A1BB4A', '103.946', '30.6582', '2017-04-28 10:23:13:623', null);
INSERT INTO `gps_hisotry_track` VALUES ('b76cc71db3dc4872af294f715e232088', '川A12345', '104.074', '30.625', '2017-04-28 10:20:41:221', null);
INSERT INTO `gps_hisotry_track` VALUES ('b78d30355736432790693152f2fda1d4', '川A1BB4A', '103.993', '30.5936', '2017-04-28 10:23:04:213', null);
INSERT INTO `gps_hisotry_track` VALUES ('b7aea36224e44b8995a05a3ddffb756b', '川A1BB4A', '104.043', '30.5786', '2017-04-28 10:22:58:141', null);
INSERT INTO `gps_hisotry_track` VALUES ('b7d72779056242838e76ebc9f453a7e5', '川A12345', '104.028', '30.6742', '2017-04-28 10:21:01:242', null);
INSERT INTO `gps_hisotry_track` VALUES ('b7f8f57aa21b44babcf698a6d326b138', '川A1BB4A', '103.872', '30.7064', '2017-04-28 10:23:30:103', null);
INSERT INTO `gps_hisotry_track` VALUES ('b801ee5c9a1c4eefa053368c42cc219e', '川A1BB4A', '103.892', '30.7029', '2017-04-28 10:23:25:635', null);
INSERT INTO `gps_hisotry_track` VALUES ('b81a7bc70f2c468890b623b8fe4851c6', '川A12345', '104.074', '30.6147', '2017-04-28 10:20:39:521', null);
INSERT INTO `gps_hisotry_track` VALUES ('b8253dbc9af24470b130f2b634486292', '川A1BB4A', '104.047', '30.5774', '2017-04-28 10:22:57:912', null);
INSERT INTO `gps_hisotry_track` VALUES ('b82804a28a884dff89869db4060c218d', '川A12345', '104.075', '30.5894', '2017-04-28 10:20:34:902', null);
INSERT INTO `gps_hisotry_track` VALUES ('b834c860ea15473986cc473387bcb6eb', '川A12345', '104.046', '30.635', '2017-04-28 10:20:51:263', null);
INSERT INTO `gps_hisotry_track` VALUES ('b844d0fb501d41a69d9fee02105d543b', '川A1BB4A', '103.932', '30.7003', '2017-04-28 10:23:22:869', null);
INSERT INTO `gps_hisotry_track` VALUES ('b846c149514f4f4eb3036f3cab7826c5', '川A1A34B', '104.075', '30.5822', '2017-04-28 10:21:53:403', null);
INSERT INTO `gps_hisotry_track` VALUES ('b886157acb2f4dddb2c3067378157552', '川A1BB4A', '104.193', '30.5738', '2017-04-28 10:22:44:019', null);
INSERT INTO `gps_hisotry_track` VALUES ('b8978fa00049471786a6d26cf82e38e9', '川A1A34B', '104.073', '30.6625', '2017-04-28 10:22:12:366', null);
INSERT INTO `gps_hisotry_track` VALUES ('b8abd0afc33649d49e130d8122d32ce5', '川A1BB4A', '104.004', '30.5919', '2017-04-28 10:23:03:146', null);
INSERT INTO `gps_hisotry_track` VALUES ('b93e466c93b3440b9510cda6c09f9815', '川A12345', '104.071', '30.6263', '2017-04-28 10:20:45:487', null);
INSERT INTO `gps_hisotry_track` VALUES ('b96694be893041398f98baff9bed6657', '川A1A34B', '104.073', '30.646', '2017-04-28 10:22:08:720', null);
INSERT INTO `gps_hisotry_track` VALUES ('b98b09bbf2c24ae4ad857ba5e161f8b0', '川A12345', '104.075', '30.5849', '2017-04-28 10:20:34:286', null);
INSERT INTO `gps_hisotry_track` VALUES ('b9c416db8e2a479ca3418bad518b3244', '川A1A34B', '104.073', '30.6424', '2017-04-28 10:22:07:956', null);
INSERT INTO `gps_hisotry_track` VALUES ('b9eedba0f37d4bcdac75905e040fcf17', '川A12345', '104.058', '30.6292', '2017-04-28 10:20:47:887', null);
INSERT INTO `gps_hisotry_track` VALUES ('ba56b513005e42b498943ea02dce1395', '川A1BB4A', '103.864', '30.7035', '2017-04-28 10:23:33:917', null);
INSERT INTO `gps_hisotry_track` VALUES ('ba675be181804881826d67fef6f443d2', '川A1BB4A', '104.226', '30.5583', '2017-04-28 10:22:40:192', null);
INSERT INTO `gps_hisotry_track` VALUES ('bae2e9395da04bffa8be2d046a0b27ff', '川A1BB4A', '103.951', '30.6338', '2017-04-28 10:23:10:432', null);
INSERT INTO `gps_hisotry_track` VALUES ('bb0c9de9d80d4653afc09267c1d53e74', '川A1A34B', '104.074', '30.6115', '2017-04-28 10:21:59:633', null);
INSERT INTO `gps_hisotry_track` VALUES ('bb7d74df87e64a99864e740b84be6254', '川A1A34B', '104.076', '30.5054', '2017-04-28 10:21:45:212', null);
INSERT INTO `gps_hisotry_track` VALUES ('bb858584bbdb4e2bac4b35ff4619395d', '川A1BB4A', '103.949', '30.6422', '2017-04-28 10:23:11:463', null);
INSERT INTO `gps_hisotry_track` VALUES ('bb9a5dbd10cf42cc83811f8333fdbb8f', '川A12345', '104.042', '30.6381', '2017-04-28 10:20:52:483', null);
INSERT INTO `gps_hisotry_track` VALUES ('bba1833ea1d44788bbafadb043867820', '川A1A34B', '104.08', '30.6922', '2017-04-28 10:22:22:200', null);
INSERT INTO `gps_hisotry_track` VALUES ('bbad1d3adda54aec8f927a589926c851', '川A1A34B', '104.08', '30.7008', '2017-04-28 10:22:23:758', null);
INSERT INTO `gps_hisotry_track` VALUES ('bbf5ee3975c749a49b865959dcf1745b', '川A1A34B', '104.073', '30.6374', '2017-04-28 10:22:05:790', null);
INSERT INTO `gps_hisotry_track` VALUES ('bc06d47dd8b849769f2519fa37bf65c2', '川A1A34B', '104.076', '30.5482', '2017-04-28 10:21:49:694', null);
INSERT INTO `gps_hisotry_track` VALUES ('bca2cfc830c946e3950073f87fb9f3d6', '川A1A34B', '104.075', '30.5026', '2017-04-28 10:21:45:020', null);
INSERT INTO `gps_hisotry_track` VALUES ('bcde40a9f25c470295d98a860ae03687', '川A1BB4A', '104.263', '30.5686', '2017-04-28 10:22:27:637', null);
INSERT INTO `gps_hisotry_track` VALUES ('bcfeaafe61964e48b5aa86b90b983a45', '川A1A34B', '104.077', '30.5238', '2017-04-28 10:21:47:696', null);
INSERT INTO `gps_hisotry_track` VALUES ('bd2716b087224f0ea44cc6976e5474b9', '川A1A34B', '104.074', '30.6784', '2017-04-28 10:22:17:817', null);
INSERT INTO `gps_hisotry_track` VALUES ('bd45b5d852454b3788b2530fe212b4ff', '川A1BB4A', '103.94', '30.6987', '2017-04-28 10:23:20:068', null);
INSERT INTO `gps_hisotry_track` VALUES ('bd6943d7dcf54cecb2630c6b7d4ae027', '川A12345', '104.033', '30.6472', '2017-04-28 10:20:53:672', null);
INSERT INTO `gps_hisotry_track` VALUES ('bdd021a9a15547eebcc9ab35b530bfad', '川A1A34B', '104.077', '30.5158', '2017-04-28 10:21:47:279', null);
INSERT INTO `gps_hisotry_track` VALUES ('bdd9104116a74f10ae7f84d0f3cdec73', '川A1BB4A', '104.021', '30.5894', '2017-04-28 10:23:01:428', null);
INSERT INTO `gps_hisotry_track` VALUES ('bde7f017c90243a3815d00e019197b12', '川A1BB4A', '103.867', '30.7043', '2017-04-28 10:23:33:389', null);
INSERT INTO `gps_hisotry_track` VALUES ('be2e787978484c3690da364301ecea06', '川A1BB4A', '104.237', '30.5593', '2017-04-28 10:22:35:837', null);
INSERT INTO `gps_hisotry_track` VALUES ('be83ffab67104c0b92240e3a1106b1af', '川A1A34B', '104.076', '30.5331', '2017-04-28 10:21:48:337', null);
INSERT INTO `gps_hisotry_track` VALUES ('be9a2edabc20464b8383b10995c17816', '川A1A34B', '104.073', '30.6677', '2017-04-28 10:22:14:617', null);
INSERT INTO `gps_hisotry_track` VALUES ('be9c085b5a6647ceafa310727cb97a20', '川A1A34B', '104.075', '30.562', '2017-04-28 10:21:50:489', null);
INSERT INTO `gps_hisotry_track` VALUES ('bec1793233c1472aaa8604a8051fceea', '川A1BB4A', '104.078', '30.5718', '2017-04-28 10:22:55:269', null);
INSERT INTO `gps_hisotry_track` VALUES ('becf4f62aeaa4ef5a5b93ce797615956', '川A1A34B', '104.074', '30.6048', '2017-04-28 10:21:57:796', null);
INSERT INTO `gps_hisotry_track` VALUES ('bf1080c7c0964d5081dbdd77d0f4a873', '川A1A34B', '104.08', '30.699', '2017-04-28 10:22:22:860', null);
INSERT INTO `gps_hisotry_track` VALUES ('bf66ca3d42d143ce87586b37396ca7e0', '川A1A34B', '104.076', '30.5343', '2017-04-28 10:21:48:755', null);
INSERT INTO `gps_hisotry_track` VALUES ('bf7485d16c6549bcbac1f0861c910d9a', '川A1BB4A', '103.941', '30.6804', '2017-04-28 10:23:15:706', null);
INSERT INTO `gps_hisotry_track` VALUES ('bf9cdb72207f4a889d71268e617f0b9d', '川A1BB4A', '103.923', '30.701', '2017-04-28 10:23:23:590', null);
INSERT INTO `gps_hisotry_track` VALUES ('bfc64168b21f4325b057a5a9ada2a02b', '川A1BB4A', '103.94', '30.6867', '2017-04-28 10:23:16:078', null);
INSERT INTO `gps_hisotry_track` VALUES ('bff72268c24f4be49bf5130a46715008', '川A1BB4A', '103.943', '30.6739', '2017-04-28 10:23:14:874', null);
INSERT INTO `gps_hisotry_track` VALUES ('c0239e1b11824b97a6f91ae545add74c', '川A1A34B', '104.072', '30.672', '2017-04-28 10:22:15:838', null);
INSERT INTO `gps_hisotry_track` VALUES ('c038513bfe7b49c98413e849aa8515ca', '川A1A34B', '104.072', '30.6624', '2017-04-28 10:22:12:097', null);
INSERT INTO `gps_hisotry_track` VALUES ('c039cc3f4d264a7d88f478ce86a7ec6b', '川A1BB4A', '104.174', '30.5833', '2017-04-28 10:22:47:315', null);
INSERT INTO `gps_hisotry_track` VALUES ('c0522e740cb2418e8ccdad7d5bbb2bbc', '川A1BB4A', '104.17', '30.5816', '2017-04-28 10:22:48:011', null);
INSERT INTO `gps_hisotry_track` VALUES ('c05f06e01a2f459ea026b3399a2e2055', '川A1A34B', '104.075', '30.5875', '2017-04-28 10:21:53:804', null);
INSERT INTO `gps_hisotry_track` VALUES ('c0770222f619404ea0157314ae96dc32', '川A1BB4A', '103.874', '30.706', '2017-04-28 10:23:31:712', null);
INSERT INTO `gps_hisotry_track` VALUES ('c09db97a52764cf18c8542cae4d43736', '川A1BB4A', '103.881', '30.702', '2017-04-28 10:23:26:446', null);
INSERT INTO `gps_hisotry_track` VALUES ('c0a6df99adb74115a273b1498bab35ab', '川A1A34B', '104.074', '30.6251', '2017-04-28 10:22:03:039', null);
INSERT INTO `gps_hisotry_track` VALUES ('c0a9324358824d37bbaf0a0ff4c1bc32', '川A1A34B', '104.074', '30.6645', '2017-04-28 10:22:13:740', null);
INSERT INTO `gps_hisotry_track` VALUES ('c0ad633914ce41f284efde7b49ce14cd', '川A1A34B', '104.075', '30.5908', '2017-04-28 10:21:54:180', null);
INSERT INTO `gps_hisotry_track` VALUES ('c10524d6ba1d4794af0bd9d098d35ae5', '川A1BB4A', '103.939', '30.6984', '2017-04-28 10:23:18:441', null);
INSERT INTO `gps_hisotry_track` VALUES ('c2000763b6964e36b0a2667fa0c48589', '川A1BB4A', '104.12', '30.5738', '2017-04-28 10:22:51:154', null);
INSERT INTO `gps_hisotry_track` VALUES ('c22247b73fde4d9d9d608b1cd660aaa5', '川A1A34B', '104.074', '30.6005', '2017-04-28 10:21:56:246', null);
INSERT INTO `gps_hisotry_track` VALUES ('c22a37cc47864c63877fda3f3c40ac8c', '川A1A34B', '104.072', '30.6608', '2017-04-28 10:22:11:742', null);
INSERT INTO `gps_hisotry_track` VALUES ('c2527a1a43d44709a838df213859e2ab', '川A1A34B', '104.074', '30.6267', '2017-04-28 10:22:04:216', null);
INSERT INTO `gps_hisotry_track` VALUES ('c26704375f4a4d1d8c37572832ae3263', '川A1A34B', '104.074', '30.6254', '2017-04-28 10:22:03:140', null);
INSERT INTO `gps_hisotry_track` VALUES ('c33eb4a8c73844f287d8a1cc247cbd1c', '川A12345', '104.054', '30.6314', '2017-04-28 10:20:49:804', null);
INSERT INTO `gps_hisotry_track` VALUES ('c35b01b2c61944de9442686f433d0109', '川A1BB4A', '104.023', '30.588', '2017-04-28 10:23:01:033', null);
INSERT INTO `gps_hisotry_track` VALUES ('c361b9e478ff47209f4ff0a3f51f74c8', '川A12345', '104.028', '30.6681', '2017-04-28 10:20:59:223', null);
INSERT INTO `gps_hisotry_track` VALUES ('c38a5420c7cc416c85042444013d2f8d', '川A1BB4A', '104.116', '30.5739', '2017-04-28 10:22:51:753', null);
INSERT INTO `gps_hisotry_track` VALUES ('c438d0e30bcb4b6785a887fd54b2e17c', '川A1A34B', '104.074', '30.6627', '2017-04-28 10:22:12:707', null);
INSERT INTO `gps_hisotry_track` VALUES ('c45b963e1870494da03afcc5291e1055', '川A1BB4A', '103.969', '30.6071', '2017-04-28 10:23:07:063', null);
INSERT INTO `gps_hisotry_track` VALUES ('c4730ce15df742109d50b65998e77900', '川A1A34B', '104.074', '30.6261', '2017-04-28 10:22:03:567', null);
INSERT INTO `gps_hisotry_track` VALUES ('c492f0e07d51450a9bb0aa502acd602a', '川A1BB4A', '103.873', '30.7052', '2017-04-28 10:23:27:682', null);
INSERT INTO `gps_hisotry_track` VALUES ('c4b68cbd70a04fb98da9ed0fd5950eea', '川A1BB4A', '103.994', '30.5932', '2017-04-28 10:23:04:104', null);
INSERT INTO `gps_hisotry_track` VALUES ('c4c15d07412b4b97aa182f5dafe49e17', '川A12345', '104.029', '30.6602', '2017-04-28 10:20:57:537', null);
INSERT INTO `gps_hisotry_track` VALUES ('c517fd3120064d5996d21bc481e4933d', '川A12345', '104.075', '30.592', '2017-04-28 10:20:35:286', null);
INSERT INTO `gps_hisotry_track` VALUES ('c54f92b47ed141a9b8f8581289fbb711', '川A1A34B', '104.074', '30.6038', '2017-04-28 10:21:57:141', null);
INSERT INTO `gps_hisotry_track` VALUES ('c552ecd47cbd4114b8ea354bfb5711a3', '川A1A34B', '104.074', '30.6626', '2017-04-28 10:22:12:633', null);
INSERT INTO `gps_hisotry_track` VALUES ('c553dd64cb3f42558ccb4445ba56bfa6', '川A1BB4A', '103.97', '30.6068', '2017-04-28 10:23:06:680', null);
INSERT INTO `gps_hisotry_track` VALUES ('c5836c98739e4238bb4bb4263010a7d3', '川A1BB4A', '104.118', '30.5738', '2017-04-28 10:22:51:361', null);
INSERT INTO `gps_hisotry_track` VALUES ('c606137dc401442f9731a7fcfab000f9', '川A1BB4A', '103.982', '30.6006', '2017-04-28 10:23:05:235', null);
INSERT INTO `gps_hisotry_track` VALUES ('c6380b1f1cdb4c4fa5afe24972d9125e', '川A12345', '104.075', '30.585', '2017-04-28 10:20:34:479', null);
INSERT INTO `gps_hisotry_track` VALUES ('c641bb12d5c94cad8ed958db1c22bf7c', '川A12345', '104.074', '30.6262', '2017-04-28 10:20:41:796', null);
INSERT INTO `gps_hisotry_track` VALUES ('c64f042dd29a48e69ad7674eee888feb', '川A12345', '104.074', '30.616', '2017-04-28 10:20:39:921', null);
INSERT INTO `gps_hisotry_track` VALUES ('c6600710505448ffbf8d987815e84eb5', '川A1BB4A', '103.961', '30.6112', '2017-04-28 10:23:07:767', null);
INSERT INTO `gps_hisotry_track` VALUES ('c6979e0fb75e49e2b32b6df84e1943d4', '川A1BB4A', '103.885', '30.7021', '2017-04-28 10:23:25:899', null);
INSERT INTO `gps_hisotry_track` VALUES ('c6c2705b88944e68b6644575b024fa10', '川A1BB4A', '103.883', '30.702', '2017-04-28 10:23:26:124', null);
INSERT INTO `gps_hisotry_track` VALUES ('c7a7b489d8214d74b4a06415e2babcfb', '川A1A34B', '104.074', '30.6268', '2017-04-28 10:22:04:288', null);
INSERT INTO `gps_hisotry_track` VALUES ('c7c3b6f8a81d4267a7d9800c67bd484c', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:937', null);
INSERT INTO `gps_hisotry_track` VALUES ('c7d6decf0dff4f1597f23790ffc9ffd8', '川A12345', '104.043', '30.6375', '2017-04-28 10:20:52:322', null);
INSERT INTO `gps_hisotry_track` VALUES ('c8270b82b61b4f85aaec5ff19e3bb125', '川A12345', '104.028', '30.6709', '2017-04-28 10:21:00:257', null);
INSERT INTO `gps_hisotry_track` VALUES ('c82cb92477664720b118da0f54b9685b', '川A12345', '104.045', '30.6356', '2017-04-28 10:20:51:646', null);
INSERT INTO `gps_hisotry_track` VALUES ('c82e68b71c6f437bbb5b26de0e3a44ce', '川A12345', '104.075', '30.6265', '2017-04-28 10:20:42:680', null);
INSERT INTO `gps_hisotry_track` VALUES ('c8399b865b1e4566881a2f5fd2b79c6c', '川A1A34B', '104.074', '30.616', '2017-04-28 10:22:01:255', null);
INSERT INTO `gps_hisotry_track` VALUES ('c89daa8f2f1e4cb1b13e6cc495ce8b1d', '川A1BB4A', '103.925', '30.7011', '2017-04-28 10:23:23:357', null);
INSERT INTO `gps_hisotry_track` VALUES ('c8a759b0eff64beb8a2b399da45cac6e', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:645', null);
INSERT INTO `gps_hisotry_track` VALUES ('c8f506d42c9c46dbb9637dbc9d10922c', '川A1A34B', '104.074', '30.678', '2017-04-28 10:22:17:683', null);
INSERT INTO `gps_hisotry_track` VALUES ('c9019c296c98438fa6657ee01299f450', '川A1A34B', '104.074', '30.5961', '2017-04-28 10:21:55:887', null);
INSERT INTO `gps_hisotry_track` VALUES ('c921f00c7623487798f0444af5c9df7a', '川A1A34B', '104.075', '30.567', '2017-04-28 10:21:51:275', null);
INSERT INTO `gps_hisotry_track` VALUES ('c9253b2b27b8449ead2f734951b8d179', '川A12345', '104.075', '30.5949', '2017-04-28 10:20:35:779', null);
INSERT INTO `gps_hisotry_track` VALUES ('c958fe7b91214ad28f8055604f2f98ca', '川A1A34B', '104.074', '30.6629', '2017-04-28 10:22:12:919', null);
INSERT INTO `gps_hisotry_track` VALUES ('c971afe34cb145ea8deef0c7bfa34758', '川A12345', '104.046', '30.6352', '2017-04-28 10:20:51:312', null);
INSERT INTO `gps_hisotry_track` VALUES ('c97fff2367e344cc9f1090a9c5e453a4', '川A12345', '104.035', '30.6457', '2017-04-28 10:20:53:191', null);
INSERT INTO `gps_hisotry_track` VALUES ('c988dd43095d4457b0aacfa4d357ee69', '川A1A34B', '104.075', '30.5854', '2017-04-28 10:21:53:682', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca162cd0f4654e6794e937f10f523f8a', '川A12345', '104.074', '30.6266', '2017-04-28 10:20:42:392', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca17efbc81ea44a49972946b6935a822', '川A1BB4A', '104.033', '30.5819', '2017-04-28 10:22:59:186', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca19988f7d8a4eac9f5255ac4ed7c996', '川A1A34B', '104.077', '30.5067', '2017-04-28 10:21:46:015', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca234abe7be546a69a1d3bdc7be8920a', '川A1BB4A', '104.233', '30.5556', '2017-04-28 10:22:39:794', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca25ed0d6c884a3483d42959d08a43d3', '川A12345', '104.028', '30.6687', '2017-04-28 10:20:59:549', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca7f152359c246d78f577a5d94f6aacb', '川A12345', '104.074', '30.6179', '2017-04-28 10:20:40:438', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca846d27922f46a0b649c4f86cbf727f', '川A1BB4A', '104.15', '30.5763', '2017-04-28 10:22:49:781', null);
INSERT INTO `gps_hisotry_track` VALUES ('ca9b8b3b5a49458db442b1204e3911e8', '川A1A34B', '104.077', '30.5164', '2017-04-28 10:21:47:354', null);
INSERT INTO `gps_hisotry_track` VALUES ('caa103afb3cf4f0fa83fdf2e880a76e9', '川A1A34B', '104.073', '30.6298', '2017-04-28 10:22:04:842', null);
INSERT INTO `gps_hisotry_track` VALUES ('cb13a56b408a4f50b1a75d31326d7cf6', '川A1A34B', '104.074', '30.6028', '2017-04-28 10:21:56:838', null);
INSERT INTO `gps_hisotry_track` VALUES ('cb20ddb9515e4312a04ee22003193b7f', '川A1A34B', '104.074', '30.4942', '2017-04-28 10:21:43:569', null);
INSERT INTO `gps_hisotry_track` VALUES ('cb583edf56ba4b23b00bbd6049914322', '川A1A34B', '104.075', '30.5664', '2017-04-28 10:21:51:124', null);
INSERT INTO `gps_hisotry_track` VALUES ('cb7689bed0324ee3a974919506fa8022', '川A12345', '104.075', '30.5924', '2017-04-28 10:20:35:512', null);
INSERT INTO `gps_hisotry_track` VALUES ('cb915b30923143338ccc522039a6c44b', '川A1BB4A', '103.939', '30.6989', '2017-04-28 10:23:19:155', null);
INSERT INTO `gps_hisotry_track` VALUES ('cc155cf29c08499988a3ee5cec2cc0ca', '川A12345', '104.033', '30.647', '2017-04-28 10:20:53:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('cc6016be68bc491c8803136f80131b79', '川A1A34B', '104.072', '30.6714', '2017-04-28 10:22:15:615', null);
INSERT INTO `gps_hisotry_track` VALUES ('cc6450a57bf7404cb7f27cbf0154b818', '川A1BB4A', '103.958', '30.6138', '2017-04-28 10:23:08:294', null);
INSERT INTO `gps_hisotry_track` VALUES ('cc7d4cd77a0d4fa8a6de4bd003be1c86', '川A1A34B', '104.074', '30.6159', '2017-04-28 10:22:01:092', null);
INSERT INTO `gps_hisotry_track` VALUES ('ccef488ba3f24da694ebd511a4b791a6', '川A12345', '104.074', '30.6149', '2017-04-28 10:20:39:663', null);
INSERT INTO `gps_hisotry_track` VALUES ('cd1992be1b0d4687907b3457ebbc4ec1', '川A1BB4A', '104.021', '30.5893', '2017-04-28 10:23:01:396', null);
INSERT INTO `gps_hisotry_track` VALUES ('cdce2c21ed584d8e839fc277011004e0', '川A12345', '104.075', '30.6266', '2017-04-28 10:20:42:512', null);
INSERT INTO `gps_hisotry_track` VALUES ('cdd21e8d990441b8a7aac99225d0a93e', '川A12345', '104.075', '30.5947', '2017-04-28 10:20:35:646', null);
INSERT INTO `gps_hisotry_track` VALUES ('cdeacf35c5894ea3b5e02cc6b60f490a', '川A1BB4A', '104.162', '30.5789', '2017-04-28 10:22:48:661', null);
INSERT INTO `gps_hisotry_track` VALUES ('ce143d8d953946108ce6f56ede43e774', '川A1BB4A', '104.199', '30.5708', '2017-04-28 10:22:43:462', null);
INSERT INTO `gps_hisotry_track` VALUES ('ce29a420eba14ea1aee9cad4ef80d451', '川A1BB4A', '104.123', '30.5738', '2017-04-28 10:22:50:901', null);
INSERT INTO `gps_hisotry_track` VALUES ('ce634f81f0864dea869230fa10c5993b', '川A1BB4A', '103.94', '30.6979', '2017-04-28 10:23:21:365', null);
INSERT INTO `gps_hisotry_track` VALUES ('ce710c9bd07d4a69b6c5b94c465626c6', '川A1BB4A', '104.255', '30.5704', '2017-04-28 10:22:29:179', null);
INSERT INTO `gps_hisotry_track` VALUES ('ceab9fa6224f4a85b3bfa537ed2d3283', '川A1BB4A', '103.87', '30.7049', '2017-04-28 10:23:33:045', null);
INSERT INTO `gps_hisotry_track` VALUES ('ced508f72beb4d99926ac76b68397b99', '川A1BB4A', '104.064', '30.5725', '2017-04-28 10:22:56:462', null);
INSERT INTO `gps_hisotry_track` VALUES ('ced63dc9fefb40ac81753000b3bb25bd', '川A1BB4A', '103.867', '30.7043', '2017-04-28 10:23:33:221', null);
INSERT INTO `gps_hisotry_track` VALUES ('cf36a1486e9441eeaaab8db6285977d1', '川A1BB4A', '103.94', '30.6837', '2017-04-28 10:23:15:887', null);
INSERT INTO `gps_hisotry_track` VALUES ('cf888eb42cfe4f969f71585cbb1e831c', '川A1BB4A', '104.025', '30.5868', '2017-04-28 10:23:00:925', null);
INSERT INTO `gps_hisotry_track` VALUES ('cfe049844e0a472eb4496957c9ed64c1', '川A12345', '104.031', '30.6492', '2017-04-28 10:20:54:023', null);
INSERT INTO `gps_hisotry_track` VALUES ('d07720c9c12c455284d54762f3d029f0', '川A1BB4A', '103.854', '30.6976', '2017-04-28 10:23:36:209', null);
INSERT INTO `gps_hisotry_track` VALUES ('d0e1274fc3034009bafb53b7e2efe4ec', '川A1A34B', '104.077', '30.5099', '2017-04-28 10:21:46:280', null);
INSERT INTO `gps_hisotry_track` VALUES ('d147ad31cebf40fa9a0752cf7a777492', '川A1BB4A', '104.005', '30.5919', '2017-04-28 10:23:03:079', null);
INSERT INTO `gps_hisotry_track` VALUES ('d1870f94311745cfb8616c8569c91dff', '川A12345', '104.031', '30.6759', '2017-04-28 10:21:02:590', null);
INSERT INTO `gps_hisotry_track` VALUES ('d1a572de426944d4aee5681e90514699', '川A1BB4A', '103.872', '30.7055', '2017-04-28 10:23:28:105', null);
INSERT INTO `gps_hisotry_track` VALUES ('d1e2be5943f448ff861be4bb995aac59', '川A1BB4A', '104.084', '30.572', '2017-04-28 10:22:54:312', null);
INSERT INTO `gps_hisotry_track` VALUES ('d1e879d5fa27429e9368aeaaee56ca9c', '川A1BB4A', '103.95', '30.6389', '2017-04-28 10:23:10:882', null);
INSERT INTO `gps_hisotry_track` VALUES ('d1f21ca2bc794abfbd311ec09ee18b20', '川A1BB4A', '104.025', '30.5865', '2017-04-28 10:23:00:467', null);
INSERT INTO `gps_hisotry_track` VALUES ('d1ff1454bbc34f6cade5bb84a4bc9f80', '川A1BB4A', '103.969', '30.607', '2017-04-28 10:23:06:874', null);
INSERT INTO `gps_hisotry_track` VALUES ('d2853e33a212474fadf3c605d7a95e36', '川A12345', '104.028', '30.675', '2017-04-28 10:21:01:457', null);
INSERT INTO `gps_hisotry_track` VALUES ('d2a4a913181741469879a0733d2f3894', '川A1BB4A', '103.967', '30.608', '2017-04-28 10:23:07:346', null);
INSERT INTO `gps_hisotry_track` VALUES ('d2aab84527324c05aca6b8adc681163b', '川A1BB4A', '104.174', '30.5831', '2017-04-28 10:22:47:169', null);
INSERT INTO `gps_hisotry_track` VALUES ('d2d53cbe20ed4481af7bbd281fc64bb7', '川A1BB4A', '103.939', '30.699', '2017-04-28 10:23:19:340', null);
INSERT INTO `gps_hisotry_track` VALUES ('d31fb9f51bb94f42a1f8c8debe9c617b', '川A12345', '104.058', '30.6293', '2017-04-28 10:20:48:072', null);
INSERT INTO `gps_hisotry_track` VALUES ('d33e138bec6648f39d77dc5256e06c15', '川A1BB4A', '104.241', '30.5656', '2017-04-28 10:22:34:412', null);
INSERT INTO `gps_hisotry_track` VALUES ('d3470396d68642769c73172c3f140066', '川A1A34B', '104.074', '30.4975', '2017-04-28 10:21:44:333', null);
INSERT INTO `gps_hisotry_track` VALUES ('d3706a38893841f5af13f6c81f2fc15b', '川A1BB4A', '104.04', '30.5794', '2017-04-28 10:22:58:358', null);
INSERT INTO `gps_hisotry_track` VALUES ('d384e38e39ea463e863cf90ccdc97d6a', '川A1A34B', '104.077', '30.5066', '2017-04-28 10:21:45:712', null);
INSERT INTO `gps_hisotry_track` VALUES ('d3a6e7e85661457fab65dfdd39c2daec', '川A1BB4A', '103.947', '30.6482', '2017-04-28 10:23:12:448', null);
INSERT INTO `gps_hisotry_track` VALUES ('d3c1ffe6e4b74993b2e27c3145c145b9', '川A1BB4A', '104.233', '30.5556', '2017-04-28 10:22:39:908', null);
INSERT INTO `gps_hisotry_track` VALUES ('d3db0222753d4ec390f75a6dd770885b', '川A12345', '104.074', '30.604', '2017-04-28 10:20:36:996', null);
INSERT INTO `gps_hisotry_track` VALUES ('d3f84121255c4a38b13e2ebd2d2a4d7f', '川A1BB4A', '104.177', '30.5806', '2017-04-28 10:22:46:428', null);
INSERT INTO `gps_hisotry_track` VALUES ('d40134794f05486fa44d981a95a8aad9', '川A1A34B', '104.075', '30.6797', '2017-04-28 10:22:18:324', null);
INSERT INTO `gps_hisotry_track` VALUES ('d407a65695b749ecbc410367d5d9d493', '川A1BB4A', '104.172', '30.5824', '2017-04-28 10:22:47:668', null);
INSERT INTO `gps_hisotry_track` VALUES ('d40ec8fc62f14f2693d7ca3d6b243fb7', '川A12345', '104.074', '30.6223', '2017-04-28 10:20:41:004', null);
INSERT INTO `gps_hisotry_track` VALUES ('d44617996eba4396ba182aa9660b3b60', '川A1BB4A', '103.94', '30.6851', '2017-04-28 10:23:15:998', null);
INSERT INTO `gps_hisotry_track` VALUES ('d462f0cd4a2c46b0b750322f7f00f411', '川A1A34B', '104.077', '30.5163', '2017-04-28 10:21:47:311', null);
INSERT INTO `gps_hisotry_track` VALUES ('d46472138c7549539bba9ee78b67c4f1', '川A12345', '104.028', '30.6685', '2017-04-28 10:20:59:368', null);
INSERT INTO `gps_hisotry_track` VALUES ('d48457e9caca4ea0933b7f51a2739308', '川A1BB4A', '103.874', '30.7064', '2017-04-28 10:23:30:676', null);
INSERT INTO `gps_hisotry_track` VALUES ('d48f10c0f37740fdb47d638052d98f6d', '川A12345', '104.044', '30.6361', '2017-04-28 10:20:51:797', null);
INSERT INTO `gps_hisotry_track` VALUES ('d4e078fb0cbd47fbb1ee681fe6dd5b13', '川A1A34B', '104.074', '30.6178', '2017-04-28 10:22:01:661', null);
INSERT INTO `gps_hisotry_track` VALUES ('d4ea761a329b4bd5b3164757066fb278', '川A1A34B', '104.075', '30.5924', '2017-04-28 10:21:54:788', null);
INSERT INTO `gps_hisotry_track` VALUES ('d4f97ac930be423e8de004fdcae9f47f', '川A1BB4A', '104.168', '30.5808', '2017-04-28 10:22:48:359', null);
INSERT INTO `gps_hisotry_track` VALUES ('d5116e82608747d9a343035aad916774', '川A1BB4A', '104.262', '30.5687', '2017-04-28 10:22:27:792', null);
INSERT INTO `gps_hisotry_track` VALUES ('d51abb3515f143879b1b6dd3b200b6bc', '川A12345', '104.074', '30.6048', '2017-04-28 10:20:37:371', null);
INSERT INTO `gps_hisotry_track` VALUES ('d51d588580ee4dfd86ff89b52e88dfa0', '川A1BB4A', '103.974', '30.6051', '2017-04-28 10:23:06:313', null);
INSERT INTO `gps_hisotry_track` VALUES ('d5566c15ea9e466594d6c6d40ec323d3', '川A12345', '104.074', '30.5971', '2017-04-28 10:20:36:096', null);
INSERT INTO `gps_hisotry_track` VALUES ('d559bf127d6d41db8e7ace53f3f03326', '川A1BB4A', '104.212', '30.5642', '2017-04-28 10:22:41:572', null);
INSERT INTO `gps_hisotry_track` VALUES ('d565f0de361e41fc9708f61a7bbd6553', '川A12345', '104.074', '30.6066', '2017-04-28 10:20:37:838', null);
INSERT INTO `gps_hisotry_track` VALUES ('d5f0971e2c9c4169bf28798ea781737a', '川A12345', '104.028', '30.6745', '2017-04-28 10:21:01:364', null);
INSERT INTO `gps_hisotry_track` VALUES ('d5fc3fda9cda42a081484eb23a6a5a19', '川A1A34B', '104.074', '30.6262', '2017-04-28 10:22:03:743', null);
INSERT INTO `gps_hisotry_track` VALUES ('d6180d8395c3466a8fb7c4eb66a5c2b8', '川A1A34B', '104.074', '30.6664', '2017-04-28 10:22:14:441', null);
INSERT INTO `gps_hisotry_track` VALUES ('d6202cfae848475b9e349368562b0b99', '川A1BB4A', '104.176', '30.5816', '2017-04-28 10:22:46:736', null);
INSERT INTO `gps_hisotry_track` VALUES ('d63bb22d783a4cadbc556ec50cf9c09e', '川A1A34B', '104.076', '30.5055', '2017-04-28 10:21:45:302', null);
INSERT INTO `gps_hisotry_track` VALUES ('d656892762df4a80ac4de487782f598b', '川A12345', '104.074', '30.6159', '2017-04-28 10:20:39:871', null);
INSERT INTO `gps_hisotry_track` VALUES ('d66d3869802a408d808ad983ff65f7f6', '川A1BB4A', '104.032', '30.5824', '2017-04-28 10:22:59:380', null);
INSERT INTO `gps_hisotry_track` VALUES ('d6789c9798f44e0e9271103bfae9bed2', '川A12345', '104.075', '30.6264', '2017-04-28 10:20:43:396', null);
INSERT INTO `gps_hisotry_track` VALUES ('d68a2751550b40bc97e199620994db9b', '川A12345', '104.028', '30.6763', '2017-04-28 10:21:01:912', null);
INSERT INTO `gps_hisotry_track` VALUES ('d68ae9c8b92e433c9e256c5e469eb6dc', '川A1BB4A', '103.912', '30.7014', '2017-04-28 10:23:24:157', null);
INSERT INTO `gps_hisotry_track` VALUES ('d6ad5cd42843480580bda5d40afb6b9c', '川A1A34B', '104.075', '30.5006', '2017-04-28 10:21:44:761', null);
INSERT INTO `gps_hisotry_track` VALUES ('d6c17a28b5ef4a4887347ca8b01659fb', '川A1BB4A', '103.939', '30.695', '2017-04-28 10:23:17:074', null);
INSERT INTO `gps_hisotry_track` VALUES ('d7131d137a6b4cb18dae59b9a22e191c', '川A1BB4A', '103.953', '30.6228', '2017-04-28 10:23:09:650', null);
INSERT INTO `gps_hisotry_track` VALUES ('d73cf9976e3647638c86ee88d1a7787f', '川A1BB4A', '104.051', '30.5761', '2017-04-28 10:22:57:270', null);
INSERT INTO `gps_hisotry_track` VALUES ('d755ae02d3234ce3ae1711c506485ff9', '川A1A34B', '104.075', '30.5949', '2017-04-28 10:21:55:418', null);
INSERT INTO `gps_hisotry_track` VALUES ('d7a4ec938b844bf2a4d79efd15da7d70', '川A1BB4A', '104.208', '30.5663', '2017-04-28 10:22:41:963', null);
INSERT INTO `gps_hisotry_track` VALUES ('d7b02732b692433fbd456b94da5db67b', '川A1BB4A', '104.085', '30.5722', '2017-04-28 10:22:53:951', null);
INSERT INTO `gps_hisotry_track` VALUES ('d7b10008c99048239022d64d3f455148', '川A1BB4A', '103.874', '30.706', '2017-04-28 10:23:31:614', null);
INSERT INTO `gps_hisotry_track` VALUES ('d7bae17aa8d5404da457f37a45a2ca84', '川A12345', '104.071', '30.5818', '2017-04-28 10:20:33:431', null);
INSERT INTO `gps_hisotry_track` VALUES ('d7fe66d8263045f48319b103c3e81480', '川A12345', '104.074', '30.6115', '2017-04-28 10:20:38:562', null);
INSERT INTO `gps_hisotry_track` VALUES ('d81d4e0606ac48a29f31fbfd5c9a0fea', '川A1BB4A', '104.186', '30.5772', '2017-04-28 10:22:45:512', null);
INSERT INTO `gps_hisotry_track` VALUES ('d82b995776164b0da048954c241418dc', '川A12345', '104.028', '30.6756', '2017-04-28 10:21:01:847', null);
INSERT INTO `gps_hisotry_track` VALUES ('d83b7bf5fd7d44a49d311affc9929b71', '川A1BB4A', '103.945', '30.6686', '2017-04-28 10:23:14:414', null);
INSERT INTO `gps_hisotry_track` VALUES ('d87d24ce25dc47efa1386f1cd85b7586', '川A12345', '104.075', '30.6263', '2017-04-28 10:20:44:063', null);
INSERT INTO `gps_hisotry_track` VALUES ('d8879e3ddd164c358447d0c19cee84aa', '川A1A34B', '104.076', '30.5339', '2017-04-28 10:21:48:548', null);
INSERT INTO `gps_hisotry_track` VALUES ('d90aed36e7f54e9e9cf6dfc8e5f4b938', '川A1BB4A', '104.018', '30.591', '2017-04-28 10:23:01:700', null);
INSERT INTO `gps_hisotry_track` VALUES ('d9107a3db29a49949e861b3d9b7c986a', '川A12345', '104.051', '30.6325', '2017-04-28 10:20:50:672', null);
INSERT INTO `gps_hisotry_track` VALUES ('d9403d7a623f4fefbc9adb7cb69c454d', '川A1A34B', '104.073', '30.6534', '2017-04-28 10:22:10:143', null);
INSERT INTO `gps_hisotry_track` VALUES ('d95f00641e524d82afff415231d36343', '川A1BB4A', '103.937', '30.6988', '2017-04-28 10:23:22:529', null);
INSERT INTO `gps_hisotry_track` VALUES ('d97783bb05c84adabe7b57c8b858eac7', '川A12345', '104.045', '30.6353', '2017-04-28 10:20:51:389', null);
INSERT INTO `gps_hisotry_track` VALUES ('d99bc88e4a674a4bb13ff232cf8abc7e', '川A1BB4A', '104.108', '30.5745', '2017-04-28 10:22:52:619', null);
INSERT INTO `gps_hisotry_track` VALUES ('d9b5280f30574cbe801ec81b7d1e33d9', '川A1A34B', '104.074', '30.6143', '2017-04-28 10:22:00:271', null);
INSERT INTO `gps_hisotry_track` VALUES ('d9eda89f33264ce6afa593a59936c0cb', '川A1A34B', '104.08', '30.7007', '2017-04-28 10:22:23:690', null);
INSERT INTO `gps_hisotry_track` VALUES ('da0023069114462cba05c973822d0f44', '川A1BB4A', '104.168', '30.5809', '2017-04-28 10:22:48:311', null);
INSERT INTO `gps_hisotry_track` VALUES ('da7a22a83dde4c21b5154cdeecf0ee1d', '川A1BB4A', '103.946', '30.6613', '2017-04-28 10:23:13:734', null);
INSERT INTO `gps_hisotry_track` VALUES ('da7b0a59de3a471e8022ebdeb0d92030', '川A1A34B', '104.075', '30.5947', '2017-04-28 10:21:55:116', null);
INSERT INTO `gps_hisotry_track` VALUES ('db46a9b1a04b4d518226ef89a871134e', '川A12345', '104.03', '30.6761', '2017-04-28 10:21:02:216', null);
INSERT INTO `gps_hisotry_track` VALUES ('db85e00f213a4c10bf1412644d7ede3b', '川A1A34B', '104.072', '30.6625', '2017-04-28 10:22:12:192', null);
INSERT INTO `gps_hisotry_track` VALUES ('dbd7c63eb6dc4cd581e702966b02f4c1', '川A1BB4A', '103.939', '30.6981', '2017-04-28 10:23:21:740', null);
INSERT INTO `gps_hisotry_track` VALUES ('dbf577f10bff48029e0fd9c8255a42ec', '川A12345', '104.034', '30.6755', '2017-04-28 10:21:03:331', null);
INSERT INTO `gps_hisotry_track` VALUES ('dc3c33b6041a4b319b0b4259fa0cccb4', '川A1BB4A', '103.946', '30.6638', '2017-04-28 10:23:13:914', null);
INSERT INTO `gps_hisotry_track` VALUES ('dc5a98cd9a8e4320a198c8e27f277856', '川A1BB4A', '104.115', '30.5739', '2017-04-28 10:22:51:823', null);
INSERT INTO `gps_hisotry_track` VALUES ('dc7e545d8850430388010d3abaaeacd0', '川A1A34B', '104.072', '30.6727', '2017-04-28 10:22:15:997', null);
INSERT INTO `gps_hisotry_track` VALUES ('dc8833ad53774c6c9088c67e06fa0c13', '川A1BB4A', '104.007', '30.592', '2017-04-28 10:23:02:900', null);
INSERT INTO `gps_hisotry_track` VALUES ('dca2fcb8aa774bc19bcf87b2b237062c', '川A12345', '104.028', '30.6707', '2017-04-28 10:21:00:065', null);
INSERT INTO `gps_hisotry_track` VALUES ('dcd85f2598ab44a686c251c2411e2962', '川A1BB4A', '104.237', '30.5592', '2017-04-28 10:22:36:102', null);
INSERT INTO `gps_hisotry_track` VALUES ('dce1e455eb76411caecead06458b8aa3', '川A1A34B', '104.074', '30.6625', '2017-04-28 10:22:12:582', null);
INSERT INTO `gps_hisotry_track` VALUES ('dd13c127278749e6aa0b8797c7a32fec', '川A1A34B', '104.074', '30.604', '2017-04-28 10:21:57:232', null);
INSERT INTO `gps_hisotry_track` VALUES ('dd4332d3003f456194c792b63874239d', '川A1BB4A', '103.874', '30.7063', '2017-04-28 10:23:30:742', null);
INSERT INTO `gps_hisotry_track` VALUES ('dd594a7629374b6eae0d982f5ecf5709', '川A12345', '104.029', '30.6512', '2017-04-28 10:20:55:329', null);
INSERT INTO `gps_hisotry_track` VALUES ('dd6055e85249471d9dee2213f66d7316', '川A1A34B', '104.075', '30.5812', '2017-04-28 10:21:52:972', null);
INSERT INTO `gps_hisotry_track` VALUES ('dda57802fd82401c9a8657165564bc3f', '川A1A34B', '104.074', '30.6287', '2017-04-28 10:22:04:708', null);
INSERT INTO `gps_hisotry_track` VALUES ('ddd8147a90e849368cc5d53e97397996', '川A1BB4A', '104.109', '30.5743', '2017-04-28 10:22:52:544', null);
INSERT INTO `gps_hisotry_track` VALUES ('de043b4d6171470ab121d6a0477f6ffe', '川A1A34B', '104.076', '30.5417', '2017-04-28 10:21:49:445', null);
INSERT INTO `gps_hisotry_track` VALUES ('de140b3f2f5e46ec83e52ee36f0750b9', '川A12345', '104.065', '30.6263', '2017-04-28 10:20:46:887', null);
INSERT INTO `gps_hisotry_track` VALUES ('de62115823914df9802d7dbae93dc208', '川A12345', '104.055', '30.6308', '2017-04-28 10:20:49:238', null);
INSERT INTO `gps_hisotry_track` VALUES ('deb06a8a5f6d4898ba0fa06fd6b43f26', '川A1A34B', '104.078', '30.6835', '2017-04-28 10:22:19:949', null);
INSERT INTO `gps_hisotry_track` VALUES ('df04cdb0863148528d403e6878309d9e', '川A1BB4A', '104.155', '30.5772', '2017-04-28 10:22:49:291', null);
INSERT INTO `gps_hisotry_track` VALUES ('df259c782f314baeac9a60815097ac51', '川A1BB4A', '103.874', '30.7062', '2017-04-28 10:23:31:058', null);
INSERT INTO `gps_hisotry_track` VALUES ('df3d4dda1fe64082b6cd72952be79dcf', '川A1BB4A', '103.863', '30.703', '2017-04-28 10:23:34:481', null);
INSERT INTO `gps_hisotry_track` VALUES ('df624fff9fe94960907b4bbc9f82894b', '川A1A34B', '104.074', '30.6183', '2017-04-28 10:22:02:039', null);
INSERT INTO `gps_hisotry_track` VALUES ('df6a745579e545dcb0c1908ff2b987ed', '川A1BB4A', '104.025', '30.5867', '2017-04-28 10:23:00:630', null);
INSERT INTO `gps_hisotry_track` VALUES ('dfa4eb91b41e47dc97233d81846b6f6c', '川A1BB4A', '104.037', '30.5803', '2017-04-28 10:22:58:592', null);
INSERT INTO `gps_hisotry_track` VALUES ('e07d2215f87842a4a3cc54601c82a728', '川A12345', '104.029', '30.6568', '2017-04-28 10:20:56:905', null);
INSERT INTO `gps_hisotry_track` VALUES ('e0836f3a8ebf450488504d21f31e2247', '川A1BB4A', '103.863', '30.7028', '2017-04-28 10:23:34:607', null);
INSERT INTO `gps_hisotry_track` VALUES ('e0e3df68e2a14a74aafbe7cb0f052973', '川A1A34B', '104.073', '30.6315', '2017-04-28 10:22:05:215', null);
INSERT INTO `gps_hisotry_track` VALUES ('e0f89ee328c44ef2870855f5e46708ec', '川A1BB4A', '103.939', '30.699', '2017-04-28 10:23:19:400', null);
INSERT INTO `gps_hisotry_track` VALUES ('e177540d870c48e1995afed0dd22791d', '川A1BB4A', '103.942', '30.6771', '2017-04-28 10:23:15:223', null);
INSERT INTO `gps_hisotry_track` VALUES ('e1f81eeccd4f417f80dbcb7de4ae3fe3', '川A1BB4A', '104.239', '30.5632', '2017-04-28 10:22:34:621', null);
INSERT INTO `gps_hisotry_track` VALUES ('e2330c32e45a4510bd26d39830c092bc', '川A1BB4A', '103.872', '30.7061', '2017-04-28 10:23:29:839', null);
INSERT INTO `gps_hisotry_track` VALUES ('e2369d9af2d645d1a2fc800bd068bedf', '川A1A34B', '104.072', '30.6735', '2017-04-28 10:22:16:486', null);
INSERT INTO `gps_hisotry_track` VALUES ('e248b4ecb3bb43e7a5f89c9e2e052c25', '川A1A34B', '104.072', '30.6732', '2017-04-28 10:22:16:221', null);
INSERT INTO `gps_hisotry_track` VALUES ('e24c57957e4d4743880638fc25ba6b25', '川A1BB4A', '103.944', '30.6702', '2017-04-28 10:23:14:539', null);
INSERT INTO `gps_hisotry_track` VALUES ('e25aaf5c51b64d14abea5669cb23fad7', '川A1BB4A', '103.939', '30.6898', '2017-04-28 10:23:16:206', null);
INSERT INTO `gps_hisotry_track` VALUES ('e2b1f7598cd0412890f1ba2b972564d6', '川A12345', '104.029', '30.6568', '2017-04-28 10:20:56:965', null);
INSERT INTO `gps_hisotry_track` VALUES ('e2f4ca3306714d259d69282161531dff', '川A1BB4A', '103.939', '30.6979', '2017-04-28 10:23:18:198', null);
INSERT INTO `gps_hisotry_track` VALUES ('e2ffe13390a9480d82ca5669806b5509', '川A1A34B', '104.076', '30.5378', '2017-04-28 10:21:49:168', null);
INSERT INTO `gps_hisotry_track` VALUES ('e38a380cd4ce4da191eba1d3b43ed752', '川A1A34B', '104.08', '30.7009', '2017-04-28 10:22:23:925', null);
INSERT INTO `gps_hisotry_track` VALUES ('e3984c77f9a84f78b462a66f5f0af5d2', '川A1BB4A', '104.075', '30.5718', '2017-04-28 10:22:55:579', null);
INSERT INTO `gps_hisotry_track` VALUES ('e46ce88933c84f0b8a76fbf69525c1e8', '川A1BB4A', '103.946', '30.6568', '2017-04-28 10:23:13:390', null);
INSERT INTO `gps_hisotry_track` VALUES ('e4788d0af34449d799b95e41f4d8cb84', '川A12345', '104.075', '30.5916', '2017-04-28 10:20:35:186', null);
INSERT INTO `gps_hisotry_track` VALUES ('e47adf14c88840c3bb3ba48d6c7a71de', '川A1A34B', '104.074', '30.6197', '2017-04-28 10:22:02:113', null);
INSERT INTO `gps_hisotry_track` VALUES ('e4e0ac8921ac4316a625cbfe3a5d7c6a', '川A1A34B', '104.073', '30.6442', '2017-04-28 10:22:08:556', null);
INSERT INTO `gps_hisotry_track` VALUES ('e4efb8712aa844af98af173fdd82fb99', '川A1A34B', '104.072', '30.6625', '2017-04-28 10:22:12:250', null);
INSERT INTO `gps_hisotry_track` VALUES ('e4efd9e9bcbc4e7083724a1537d995b3', '川A12345', '104.028', '30.6763', '2017-04-28 10:21:01:984', null);
INSERT INTO `gps_hisotry_track` VALUES ('e500d6cdae0d4b50972f22dcef2d2436', '川A1A34B', '104.077', '30.5213', '2017-04-28 10:21:47:536', null);
INSERT INTO `gps_hisotry_track` VALUES ('e52a93f6afbc435d84b3b246b47d401d', '川A12345', '104.028', '30.6632', '2017-04-28 10:20:58:449', null);
INSERT INTO `gps_hisotry_track` VALUES ('e581021b7f894bc0bd9bd1a1d617768b', '川A1A34B', '104.08', '30.6984', '2017-04-28 10:22:22:733', null);
INSERT INTO `gps_hisotry_track` VALUES ('e5919179b6e24527997817618132a304', '川A1BB4A', '103.902', '30.7033', '2017-04-28 10:23:25:013', null);
INSERT INTO `gps_hisotry_track` VALUES ('e5a549789e2f4011bf031feb3c04add0', '川A1A34B', '104.073', '30.6533', '2017-04-28 10:22:10:015', null);
INSERT INTO `gps_hisotry_track` VALUES ('e5c310ad865e4b50858f51b5973bcf46', '川A1A34B', '104.075', '30.5952', '2017-04-28 10:21:55:588', null);
INSERT INTO `gps_hisotry_track` VALUES ('e5cefd3662994428b7caaadb72e122a1', '川A1BB4A', '104.239', '30.5632', '2017-04-28 10:22:34:827', null);
INSERT INTO `gps_hisotry_track` VALUES ('e62a3a4cf42d482da0b28c67fc7ee1d1', '川A1BB4A', '104.136', '30.575', '2017-04-28 10:22:50:401', null);
INSERT INTO `gps_hisotry_track` VALUES ('e647eefcaa154dcb9da46e883bfe1660', '川A1A34B', '104.075', '30.5781', '2017-04-28 10:21:52:696', null);
INSERT INTO `gps_hisotry_track` VALUES ('e658aa02cc194a75abc6e0cc4bf731a6', '川A1BB4A', '104.018', '30.591', '2017-04-28 10:23:01:763', null);
INSERT INTO `gps_hisotry_track` VALUES ('e6ba045fdca6407999b1370e522b03ba', '川A1A34B', '104.08', '30.6918', '2017-04-28 10:22:21:700', null);
INSERT INTO `gps_hisotry_track` VALUES ('e6ca4d0c21f74497aacaf0d2a1b74514', '川A1BB4A', '104.205', '30.5675', '2017-04-28 10:22:42:095', null);
INSERT INTO `gps_hisotry_track` VALUES ('e73972c92edc41ceac550e4c2b4d0e8d', '川A1BB4A', '103.873', '30.705', '2017-04-28 10:23:27:560', null);
INSERT INTO `gps_hisotry_track` VALUES ('e75f4a23add54ece990c8a0b22ae0897', '川A1BB4A', '104.118', '30.5738', '2017-04-28 10:22:51:511', null);
INSERT INTO `gps_hisotry_track` VALUES ('e7aa9c9e0ed645dd9c691699a233a132', '川A1BB4A', '104.144', '30.5757', '2017-04-28 10:22:50:007', null);
INSERT INTO `gps_hisotry_track` VALUES ('e7ad040aa50446859e1ba655dac9ef6d', '川A1BB4A', '103.869', '30.7047', '2017-04-28 10:23:33:101', null);
INSERT INTO `gps_hisotry_track` VALUES ('e7c7d2313745496ba931b0edd6b7d351', '川A1BB4A', '103.874', '30.7059', '2017-04-28 10:23:31:938', null);
INSERT INTO `gps_hisotry_track` VALUES ('e7fb4348fd6248c1be71da5fc1dff9f9', '川A1BB4A', '103.944', '30.6702', '2017-04-28 10:23:14:601', null);
INSERT INTO `gps_hisotry_track` VALUES ('e8571219353c4208af2e67a7ba046e5a', '川A1BB4A', '104.006', '30.592', '2017-04-28 10:23:03:004', null);
INSERT INTO `gps_hisotry_track` VALUES ('e8996ddc8f5444dea845e05dca1e7b00', '川A1BB4A', '104.097', '30.5739', '2017-04-28 10:22:53:448', null);
INSERT INTO `gps_hisotry_track` VALUES ('e946b2da8262484c863d83339775a431', '川A1BB4A', '103.977', '30.6037', '2017-04-28 10:23:05:953', null);
INSERT INTO `gps_hisotry_track` VALUES ('e981d3f81f4d48cea0e9be4e4524896d', '川A1A34B', '104.076', '30.5331', '2017-04-28 10:21:48:267', null);
INSERT INTO `gps_hisotry_track` VALUES ('e98d2e6a42f84d339a0f5556bf4d66f7', '川A12345', '104.028', '30.6756', '2017-04-28 10:21:01:798', null);
INSERT INTO `gps_hisotry_track` VALUES ('e9a0035148b747c49638f79f7a7774fa', '川A12345', '104.074', '30.6266', '2017-04-28 10:20:42:446', null);
INSERT INTO `gps_hisotry_track` VALUES ('ea206f94f13c44e48cc46b15d51a4d40', '川A1BB4A', '103.872', '30.7058', '2017-04-28 10:23:28:412', null);
INSERT INTO `gps_hisotry_track` VALUES ('ea4f0bad3a7d462080ec494df64a26aa', '川A1BB4A', '104.175', '30.582', '2017-04-28 10:22:46:803', null);
INSERT INTO `gps_hisotry_track` VALUES ('ea71dd7262a54f49a8d64ef8ab78636f', '川A1A34B', '104.077', '30.5139', '2017-04-28 10:21:47:098', null);
INSERT INTO `gps_hisotry_track` VALUES ('ea8241470a48473b81e907934cc06339', '川A1BB4A', '104.256', '30.5701', '2017-04-28 10:22:29:021', null);
INSERT INTO `gps_hisotry_track` VALUES ('ea97fc34af164b15a4a6573af67acee9', '川A1BB4A', '104.14', '30.5753', '2017-04-28 10:22:50:101', null);
INSERT INTO `gps_hisotry_track` VALUES ('eaf5597f056d4e6e9b20965b1022bcf5', '川A1BB4A', '103.88', '30.7022', '2017-04-28 10:23:27:041', null);
INSERT INTO `gps_hisotry_track` VALUES ('eaf83e2a316a4261a8d19e41f0234fc1', '川A1A34B', '104.075', '30.5772', '2017-04-28 10:21:52:197', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb00189ef14e4033a4333acb24d6f178', '川A1BB4A', '103.857', '30.6976', '2017-04-28 10:23:35:839', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb0596c93d8e4c2a871384bb4bf07c1c', '川A1BB4A', '103.873', '30.7056', '2017-04-28 10:23:32:694', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb1cf5f19e584f6883c425f683f3f488', '川A1BB4A', '104.257', '30.57', '2017-04-28 10:22:28:928', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb26bf9c8c194dfba209cb97c6192e1d', '川A1A34B', '104.074', '30.6625', '2017-04-28 10:22:12:516', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb3dfb7422e24768b11d5df98f07a619', '川A1BB4A', '103.984', '30.5994', '2017-04-28 10:23:05:071', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb6524d7e46945fe9b3ed102c5152668', '川A1BB4A', '103.946', '30.6543', '2017-04-28 10:23:13:248', null);
INSERT INTO `gps_hisotry_track` VALUES ('eb84795913064ad9ae0c68550d8eceff', '川A1A34B', '104.075', '30.5816', '2017-04-28 10:21:53:140', null);
INSERT INTO `gps_hisotry_track` VALUES ('eba6122dbb7042b6b80183c2a2a16704', '川A1A34B', '104.073', '30.6339', '2017-04-28 10:22:05:473', null);
INSERT INTO `gps_hisotry_track` VALUES ('ec1f59c078614fe08b1ef6e4b62e4aa2', '川A1A34B', '104.075', '30.5622', '2017-04-28 10:21:50:572', null);
INSERT INTO `gps_hisotry_track` VALUES ('ec54e9814174436aab39a7513499a811', '川A12345', '104.042', '30.6381', '2017-04-28 10:20:52:529', null);
INSERT INTO `gps_hisotry_track` VALUES ('ec871a8cc50e45d79a66de47ae536f1c', '川A1A34B', '104.074', '30.4982', '2017-04-28 10:21:44:533', null);
INSERT INTO `gps_hisotry_track` VALUES ('ec9e3d67611846ec8faf881dfdc8417c', '川A12345', '104.074', '30.6161', '2017-04-28 10:20:39:987', null);
INSERT INTO `gps_hisotry_track` VALUES ('ecdd86fd650d4e0cae5401882cc62ab9', '川A1BB4A', '104.152', '30.5766', '2017-04-28 10:22:49:519', null);
INSERT INTO `gps_hisotry_track` VALUES ('ed20430b2c8243ea83c96e01c8ebe910', '川A1A34B', '104.074', '30.61', '2017-04-28 10:21:59:205', null);
INSERT INTO `gps_hisotry_track` VALUES ('ed205437b449475981f3a6ddcbd747be', '川A12345', '104.074', '30.614', '2017-04-28 10:20:38:957', null);
INSERT INTO `gps_hisotry_track` VALUES ('ed2b8646c9754393b85aa3b6dbea5598', '川A12345', '104.074', '30.6085', '2017-04-28 10:20:37:946', null);
INSERT INTO `gps_hisotry_track` VALUES ('ed8779ed639e4417a6855f5a7c28e6d1', '川A1BB4A', '103.958', '30.6137', '2017-04-28 10:23:08:197', null);
INSERT INTO `gps_hisotry_track` VALUES ('edbe6846acb34e629efccb062f6aeb66', '川A1A34B', '104.072', '30.6732', '2017-04-28 10:22:16:375', null);
INSERT INTO `gps_hisotry_track` VALUES ('edc330b993334785b80744b54e727af7', '川A1BB4A', '103.874', '30.7058', '2017-04-28 10:23:32:317', null);
INSERT INTO `gps_hisotry_track` VALUES ('edeac4f021a44d0eaef76a41768df3ff', '川A1A34B', '104.075', '30.5781', '2017-04-28 10:21:52:410', null);
INSERT INTO `gps_hisotry_track` VALUES ('eea163d26547431e89b0265a44a2ee43', '川A12345', '104.07', '30.6262', '2017-04-28 10:20:45:938', null);
INSERT INTO `gps_hisotry_track` VALUES ('eeacea09da4a4dc1b36ad901b12548e1', '川A1BB4A', '103.947', '30.6469', '2017-04-28 10:23:12:088', null);
INSERT INTO `gps_hisotry_track` VALUES ('eefd45d7b38d46a4bd9d5288532ca6c6', '川A1BB4A', '104.236', '30.5566', '2017-04-28 10:22:36:971', null);
INSERT INTO `gps_hisotry_track` VALUES ('ef0aa92620b544b9b207d7ee2326d7de', '川A1A34B', '104.075', '30.5661', '2017-04-28 10:21:50:724', null);
INSERT INTO `gps_hisotry_track` VALUES ('ef29ca1fa34844eea8e729c65d605d0b', '川A1BB4A', '104.137', '30.5751', '2017-04-28 10:22:50:272', null);
INSERT INTO `gps_hisotry_track` VALUES ('ef54cbc6e4a84ab0a4f5a65f8009e245', '川A1BB4A', '104.022', '30.589', '2017-04-28 10:23:01:331', null);
INSERT INTO `gps_hisotry_track` VALUES ('ef5d11972c56486f8948d4e5a4027e49', '川A12345', '104.073', '30.6263', '2017-04-28 10:20:45:126', null);
INSERT INTO `gps_hisotry_track` VALUES ('efaeba397bcd4875a31eef9f4fd3f408', '川A12345', '104.028', '30.6626', '2017-04-28 10:20:58:036', null);
INSERT INTO `gps_hisotry_track` VALUES ('efdd68195ad24b4a83614aad62ac5cec', '川A12345', '104.043', '30.6367', '2017-04-28 10:20:51:968', null);
INSERT INTO `gps_hisotry_track` VALUES ('eff8af5d826d4fc3b4216f47d21a253e', '川A1A34B', '104.075', '30.5664', '2017-04-28 10:21:50:989', null);
INSERT INTO `gps_hisotry_track` VALUES ('f0482ab77a784ba2b8425457e71b2420', '川A1BB4A', '104', '30.5919', '2017-04-28 10:23:03:356', null);
INSERT INTO `gps_hisotry_track` VALUES ('f0589dcd393b44b48f8647890809b92f', '川A1BB4A', '103.995', '30.5929', '2017-04-28 10:23:03:854', null);
INSERT INTO `gps_hisotry_track` VALUES ('f0ccd685dca64009ac25d7752fba5eef', '川A1BB4A', '104.168', '30.5811', '2017-04-28 10:22:48:203', null);
INSERT INTO `gps_hisotry_track` VALUES ('f10058f5ed8341478908c06e5e64dc0a', '川A1BB4A', '103.939', '30.6983', '2017-04-28 10:23:18:357', null);
INSERT INTO `gps_hisotry_track` VALUES ('f1309a2f82934ca0b657bde7619b8bf5', '川A1BB4A', '103.957', '30.6153', '2017-04-28 10:23:08:645', null);
INSERT INTO `gps_hisotry_track` VALUES ('f1771c443fea43ca8c3ee4cbad5467fb', '川A1BB4A', '104.258', '30.5698', '2017-04-28 10:22:28:667', null);
INSERT INTO `gps_hisotry_track` VALUES ('f1b61fbbb9184da8a7954dfd77d9bc32', '川A1BB4A', '103.946', '30.6513', '2017-04-28 10:23:12:964', null);
INSERT INTO `gps_hisotry_track` VALUES ('f1b90bdcaa3e43fb9efa60adaa836ad9', '川A12345', '104.029', '30.6601', '2017-04-28 10:20:57:420', null);
INSERT INTO `gps_hisotry_track` VALUES ('f1f9ef38650d42779e46890da4635e46', '川A1BB4A', '103.856', '30.6968', '2017-04-28 10:23:35:950', null);
INSERT INTO `gps_hisotry_track` VALUES ('f2331178869c4c9ba395ad4c6572d26f', '川A1A34B', '104.072', '30.67', '2017-04-28 10:22:15:284', null);
INSERT INTO `gps_hisotry_track` VALUES ('f2430dfc383d426eaa2998f596e78fac', '川A1BB4A', '103.947', '30.6453', '2017-04-28 10:23:11:962', null);
INSERT INTO `gps_hisotry_track` VALUES ('f2aa455f169a41d1a44ec9f12175f989', '川A1A34B', '104.076', '30.5571', '2017-04-28 10:21:50:013', null);
INSERT INTO `gps_hisotry_track` VALUES ('f2bca1c572484524895ff587778a6f59', '川A12345', '104.029', '30.6587', '2017-04-28 10:20:57:222', null);
INSERT INTO `gps_hisotry_track` VALUES ('f2f1bb93da584aa695adcf8a082650b1', '川A1BB4A', '103.933', '30.7001', '2017-04-28 10:23:22:665', null);
INSERT INTO `gps_hisotry_track` VALUES ('f34636ddb3e943a7b49ab150add726a2', '川A1BB4A', '104.248', '30.5723', '2017-04-28 10:22:29:931', null);
INSERT INTO `gps_hisotry_track` VALUES ('f34a40f4a1864069b07346a9745245f6', '川A12345', '104.028', '30.6729', '2017-04-28 10:21:00:672', null);
INSERT INTO `gps_hisotry_track` VALUES ('f3ec6e0e135f4af09a2e0d587ab207a2', '川A1BB4A', '104.234', '30.5551', '2017-04-28 10:22:38:708', null);
INSERT INTO `gps_hisotry_track` VALUES ('f41671b3ef53469eb37186927a98b02f', '川A1BB4A', '103.874', '30.7062', '2017-04-28 10:23:31:392', null);
INSERT INTO `gps_hisotry_track` VALUES ('f41e80f81e474932b9b1c5d6103d36ae', '川A1BB4A', '103.955', '30.6177', '2017-04-28 10:23:09:020', null);
INSERT INTO `gps_hisotry_track` VALUES ('f440ef53c9264624b63c24fa73752cb0', '川A1BB4A', '103.874', '30.7064', '2017-04-28 10:23:30:450', null);
INSERT INTO `gps_hisotry_track` VALUES ('f461b9b03ee7495a823526983d4a49ab', '川A1A34B', '104.08', '30.6963', '2017-04-28 10:22:22:517', null);
INSERT INTO `gps_hisotry_track` VALUES ('f4fa842c06ea4e51870468d0f72aa839', '川A12345', '104.067', '30.6262', '2017-04-28 10:20:46:255', null);
INSERT INTO `gps_hisotry_track` VALUES ('f51f189055124e96bb43594994e8a014', '川A1BB4A', '103.986', '30.5984', '2017-04-28 10:23:05:008', null);
INSERT INTO `gps_hisotry_track` VALUES ('f5a03817d10c40f7971f5eae6f4eb2c9', '川A1BB4A', '103.926', '30.701', '2017-04-28 10:23:22:985', null);
INSERT INTO `gps_hisotry_track` VALUES ('f5a3f257f8ae4287806a1b360a13109b', '川A1BB4A', '104.2', '30.5704', '2017-04-28 10:22:43:054', null);
INSERT INTO `gps_hisotry_track` VALUES ('f5dec3587ea34758beaa7140f63d6cfd', '川A1BB4A', '103.873', '30.7051', '2017-04-28 10:23:27:639', null);
INSERT INTO `gps_hisotry_track` VALUES ('f5f225cfa17d49178b35f91434a2c2ad', '川A1BB4A', '103.99', '30.5951', '2017-04-28 10:23:04:508', null);
INSERT INTO `gps_hisotry_track` VALUES ('f63b6aac72774489ac57ae2eb749aee4', '川A1BB4A', '104.13', '30.5744', '2017-04-28 10:22:50:640', null);
INSERT INTO `gps_hisotry_track` VALUES ('f6421c5ff9394a08b168cc63cca49025', '川A12345', '104.054', '30.631', '2017-04-28 10:20:49:314', null);
INSERT INTO `gps_hisotry_track` VALUES ('f65b08f2dcb04e6499c89c672eaf7ec2', '川A12345', '104.074', '30.6265', '2017-04-28 10:20:42:120', null);
INSERT INTO `gps_hisotry_track` VALUES ('f6b0ac2743ca4df49ecfaba8a8d26887', '川A1A34B', '104.074', '30.6161', '2017-04-28 10:22:01:430', null);
INSERT INTO `gps_hisotry_track` VALUES ('f6b762fb020041a096a7e725c453405a', '川A1BB4A', '103.872', '30.7053', '2017-04-28 10:23:27:730', null);
INSERT INTO `gps_hisotry_track` VALUES ('f6be11cc39044f07808f3c9550106f79', '川A1BB4A', '103.874', '30.7057', '2017-04-28 10:23:32:567', null);
INSERT INTO `gps_hisotry_track` VALUES ('f714da1c3a404eefa1abbf8a02a28c90', '川A1BB4A', '103.867', '30.7043', '2017-04-28 10:23:33:326', null);
INSERT INTO `gps_hisotry_track` VALUES ('f774aaf6c85b4e6c85ec46edd6308a6d', '川A1A34B', '104.076', '30.5067', '2017-04-28 10:21:45:596', null);
INSERT INTO `gps_hisotry_track` VALUES ('f7804563e0d540f7972884b2ebc3701d', '川A12345', '104.029', '30.6575', '2017-04-28 10:20:57:030', null);
INSERT INTO `gps_hisotry_track` VALUES ('f7c3bf0b4044432d856f8b69e9d0f41b', '川A1BB4A', '103.861', '30.7011', '2017-04-28 10:23:35:267', null);
INSERT INTO `gps_hisotry_track` VALUES ('f7f1d69a87c742e6b1eb77bf5fdf095c', '川A12345', '104.073', '30.6263', '2017-04-28 10:20:44:697', null);
INSERT INTO `gps_hisotry_track` VALUES ('f7fa7fa4c9fd48fcb8c77f237a9d2449', '川A12345', '104.054', '30.6313', '2017-04-28 10:20:49:656', null);
INSERT INTO `gps_hisotry_track` VALUES ('f82d6feb4a3742ffab0eeacbf6a3bc75', '川A1BB4A', '103.952', '30.632', '2017-04-28 10:23:10:325', null);
INSERT INTO `gps_hisotry_track` VALUES ('f856488d5ff24c2694137fbc8e9a9130', '川A1BB4A', '103.953', '30.6266', '2017-04-28 10:23:09:867', null);
INSERT INTO `gps_hisotry_track` VALUES ('f872eb783d17465bae678c863bbd957b', '川A1A34B', '104.077', '30.5066', '2017-04-28 10:21:45:938', null);
INSERT INTO `gps_hisotry_track` VALUES ('f88e9a2b76014ab9b7ae104b2c2be078', '川A1A34B', '104.074', '30.6214', '2017-04-28 10:22:02:364', null);
INSERT INTO `gps_hisotry_track` VALUES ('f8a385e615034fa9bc2756362b73ae95', '川A1BB4A', '104.201', '30.5697', '2017-04-28 10:22:42:434', null);
INSERT INTO `gps_hisotry_track` VALUES ('f8b8a23f15ec4a5a97b9779a9d6dc1a5', '川A1A34B', '104.072', '30.6731', '2017-04-28 10:22:16:058', null);
INSERT INTO `gps_hisotry_track` VALUES ('f8c05b0cc1ab4190a29be5265dfc87e3', '川A1BB4A', '104.254', '30.5707', '2017-04-28 10:22:29:234', null);
INSERT INTO `gps_hisotry_track` VALUES ('f8eddf7a626a464a929517a593e9c833', '川A1A34B', '104.074', '30.6034', '2017-04-28 10:21:57:055', null);
INSERT INTO `gps_hisotry_track` VALUES ('f8f88ff3679c4ca7b4f44e8b91cabde9', '川A1BB4A', '103.946', '30.6565', '2017-04-28 10:23:13:306', null);
INSERT INTO `gps_hisotry_track` VALUES ('f905f3db47c640b980240bdb9f72f3e5', '川A12345', '104.028', '30.6735', '2017-04-28 10:21:00:893', null);
INSERT INTO `gps_hisotry_track` VALUES ('f96948883ee5494f8797c263f1382310', '川A1BB4A', '103.865', '30.7039', '2017-04-28 10:23:33:526', null);
INSERT INTO `gps_hisotry_track` VALUES ('f9989ca967e3465385f1a9a9d891e9ac', '川A1BB4A', '104.172', '30.5825', '2017-04-28 10:22:47:586', null);
INSERT INTO `gps_hisotry_track` VALUES ('f9a31e202eb1477d97056b47c293a76c', '川A1BB4A', '104.253', '30.5711', '2017-04-28 10:22:29:459', null);
INSERT INTO `gps_hisotry_track` VALUES ('fa8b9f8edcf84c3e98c1a20cec0ff210', '川A12345', '104.059', '30.6285', '2017-04-28 10:20:47:679', null);
INSERT INTO `gps_hisotry_track` VALUES ('fa8bbd2c461e45d9827b84d28d9c22df', '川A1A34B', '104.08', '30.6919', '2017-04-28 10:22:21:834', null);
INSERT INTO `gps_hisotry_track` VALUES ('fb0e815eb42c44d6826997599ea30dd8', '川A1BB4A', '104.179', '30.58', '2017-04-28 10:22:46:264', null);
INSERT INTO `gps_hisotry_track` VALUES ('fb2b36d3bf374ec59997add66a6cf9dd', '川A1BB4A', '104.161', '30.5786', '2017-04-28 10:22:48:741', null);
INSERT INTO `gps_hisotry_track` VALUES ('fba1a5e4ec254014a9ee21d1a226e78b', '川A1BB4A', '104.235', '30.5553', '2017-04-28 10:22:37:461', null);
INSERT INTO `gps_hisotry_track` VALUES ('fc0131c2a9d94ad8aafa1d62445b39fe', '川A1BB4A', '104.215', '30.5628', '2017-04-28 10:22:41:140', null);
INSERT INTO `gps_hisotry_track` VALUES ('fc12e99fad0f481ca009778dcfb414eb', '川A12345', '104.074', '30.6201', '2017-04-28 10:20:40:671', null);
INSERT INTO `gps_hisotry_track` VALUES ('fc28d6c58e57451c85c32035e43eee4f', '川A1A34B', '104.073', '30.6523', '2017-04-28 10:22:09:856', null);
INSERT INTO `gps_hisotry_track` VALUES ('fc2b7dffbbff449d96b0bb93220abef8', '川A12345', '104.028', '30.6756', '2017-04-28 10:21:01:755', null);
INSERT INTO `gps_hisotry_track` VALUES ('fc9660f51bff440b9c03332cbd3830de', '川A1BB4A', '104.17', '30.5816', '2017-04-28 10:22:47:967', null);
INSERT INTO `gps_hisotry_track` VALUES ('fc99becd37344986a13abfbb0efe4b24', '川A1A34B', '104.08', '30.7002', '2017-04-28 10:22:23:008', null);
INSERT INTO `gps_hisotry_track` VALUES ('fd1c17f5d7ea4041b2e52733aa2ba6a8', '川A1A34B', '104.073', '30.6435', '2017-04-28 10:22:08:173', null);
INSERT INTO `gps_hisotry_track` VALUES ('fd471e99018a45b6b1cf0a55dff23215', '川A1BB4A', '103.953', '30.6224', '2017-04-28 10:23:09:563', null);
INSERT INTO `gps_hisotry_track` VALUES ('fd6ba5bde07b455ca1c4b2dadbf863dd', '川A12345', '104.074', '30.6138', '2017-04-28 10:20:38:789', null);
INSERT INTO `gps_hisotry_track` VALUES ('fd6bd01fba7b4de68adf7f8be69238e3', '川A1A34B', '104.074', '30.5971', '2017-04-28 10:21:55:980', null);
INSERT INTO `gps_hisotry_track` VALUES ('fd84397dbbd3440e992b2f78e365568c', '川A1BB4A', '103.852', '30.6994', '2017-04-28 10:23:36:722', null);
INSERT INTO `gps_hisotry_track` VALUES ('fdeeb9266fcd4cb3a7284cfa823458f0', '川A12345', '104.053', '30.6318', '2017-04-28 10:20:50:013', null);
INSERT INTO `gps_hisotry_track` VALUES ('fe6159632409400a97a5294b394c9d11', '川A1BB4A', '103.939', '30.6941', '2017-04-28 10:23:16:585', null);
INSERT INTO `gps_hisotry_track` VALUES ('fe6e0c6c50ff4d708154292ab7e5299e', '川A12345', '104.029', '30.6611', '2017-04-28 10:20:57:590', null);
INSERT INTO `gps_hisotry_track` VALUES ('fe8ac95c9a4c40849a5b8ac38a0fbaa6', '川A1BB4A', '103.872', '30.7054', '2017-04-28 10:23:27:899', null);
INSERT INTO `gps_hisotry_track` VALUES ('feb67bc6712a42518ab184a0816312b2', '川A1BB4A', '104.025', '30.5867', '2017-04-28 10:23:00:749', null);
INSERT INTO `gps_hisotry_track` VALUES ('feba80d8f1314369a674039ef50f5b48', '川A12345', '104.075', '30.5953', '2017-04-28 10:20:35:971', null);
INSERT INTO `gps_hisotry_track` VALUES ('fed884a7fafd4c7da40a64a5075c4e54', '川A1BB4A', '104.165', '30.58', '2017-04-28 10:22:48:427', null);
INSERT INTO `gps_hisotry_track` VALUES ('fefe44e9684f45d9a3360f7216b91589', '川A1A34B', '104.074', '30.6048', '2017-04-28 10:21:57:895', null);
INSERT INTO `gps_hisotry_track` VALUES ('ff0f8914662e42ddaf906708b9e6df3e', '川A1A34B', '104.08', '30.7005', '2017-04-28 10:22:23:092', null);
INSERT INTO `gps_hisotry_track` VALUES ('ff4be29ed92d459cafd0978956995c1c', '川A1BB4A', '104.247', '30.5725', '2017-04-28 10:22:30:585', null);
INSERT INTO `gps_hisotry_track` VALUES ('ff78d8c2c54f4a85990d1a7014fd7ae8', '川A1BB4A', '103.881', '30.7021', '2017-04-28 10:23:26:691', null);
INSERT INTO `gps_hisotry_track` VALUES ('ff8beac1103f49388bd85d9719a1131c', '川A1BB4A', '104.226', '30.5583', '2017-04-28 10:22:40:264', null);
INSERT INTO `gps_hisotry_track` VALUES ('fff5983d0d034ec79f9ee97b6142bfc9', '川A1BB4A', '103.938', '30.6982', '2017-04-28 10:23:21:865', null);

-- ----------------------------
-- Table structure for oam_app
-- ----------------------------
DROP TABLE IF EXISTS `oam_app`;
CREATE TABLE `oam_app` (
  `id` char(36) NOT NULL COMMENT '主键',
  `full_name` varchar(100) DEFAULT NULL COMMENT '应用全名',
  `simple_name` varchar(100) DEFAULT NULL COMMENT '应用简称',
  `pinyin` varchar(30) DEFAULT NULL COMMENT '拼音',
  `domain_id` char(36) DEFAULT NULL COMMENT '访问域名',
  `use_evn` varchar(5) DEFAULT NULL COMMENT '生产环境 或者 测试环境',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用系统信息表';

-- ----------------------------
-- Records of oam_app
-- ----------------------------
INSERT INTO `oam_app` VALUES ('085c22bc-d385-4625-a509-c32f1444c84f', '政务网和市州分平台', '', '', '', 'sc', '', '马云', '2017-03-09 14:08:55', null, null);
INSERT INTO `oam_app` VALUES ('264ecd24-c5ab-4bfe-9a8e-3349f5a75e8c', '公司办公OA系统', '公司办公OA系统', '', 'c43f2a96-a80c-49d1-89af-3cd486965e73', 'sc', '', '管理员', '2017-03-01 10:33:25', '管理员', '2017-03-02 10:54:28');
INSERT INTO `oam_app` VALUES ('668b2b41-dd8a-44ba-b906-68d5bc006676', '四川电子口岸', '四川电子口岸', '', '468040e7-4f9c-4523-8aa7-3be6ae4668f8', 'sc', '', '管理员', '2017-03-01 10:32:53', '管理员', '2017-03-02 10:54:41');
INSERT INTO `oam_app` VALUES ('fcee3756-b280-4cae-9e35-16c833c37732', '禅道服务器', '禅道', 'cdfwq', '468040e7-4f9c-4523-8aa7-3be6ae4668f8', 'sc', '', '管理员', '2017-03-01 09:46:13', '管理员', '2017-03-02 10:53:46');

-- ----------------------------
-- Table structure for oam_app_user
-- ----------------------------
DROP TABLE IF EXISTS `oam_app_user`;
CREATE TABLE `oam_app_user` (
  `id` char(36) NOT NULL COMMENT '主键',
  `app_id` char(36) DEFAULT NULL COMMENT '关联appID',
  `login_name` varchar(50) DEFAULT NULL COMMENT '登录名称',
  `login_password` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `role` varchar(50) DEFAULT NULL COMMENT '角色',
  `enable` varchar(5) DEFAULT NULL COMMENT '是否可用',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='app登录用户记录';

-- ----------------------------
-- Records of oam_app_user
-- ----------------------------

-- ----------------------------
-- Table structure for oam_back
-- ----------------------------
DROP TABLE IF EXISTS `oam_back`;
CREATE TABLE `oam_back` (
  `id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '备品名称',
  `arg` varchar(255) DEFAULT NULL COMMENT '规格参数',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `buytime` varchar(20) DEFAULT NULL COMMENT '购买日期',
  `quality` varchar(10) DEFAULT NULL COMMENT '质保',
  `seq` int(11) DEFAULT NULL COMMENT '序号',
  `remark` varchar(5000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='备品备件表';

-- ----------------------------
-- Records of oam_back
-- ----------------------------
INSERT INTO `oam_back` VALUES ('260714e8799b4ada823e515e27b1ccc6', '联想硬盘', '2.5寸 SAS 6GB 10K', '4', '2017-03-03', '3年', '2', '');
INSERT INTO `oam_back` VALUES ('6e445f1c6ee146c4b79493bbf9998ad7', 'Dell硬盘', '3.5寸 SAS 6GB 15K', '6', '2017-03-03', '3年', '1', '三十');

-- ----------------------------
-- Table structure for oam_database
-- ----------------------------
DROP TABLE IF EXISTS `oam_database`;
CREATE TABLE `oam_database` (
  `id` char(36) NOT NULL COMMENT '主键',
  `app_id` char(36) DEFAULT NULL COMMENT '应用app ID',
  `device_id` char(36) DEFAULT NULL COMMENT '部署设备',
  `ip_id` char(36) DEFAULT NULL,
  `install_time` datetime DEFAULT NULL COMMENT '安装到设备上的时间',
  `install_user` varchar(50) DEFAULT NULL COMMENT '安装人员',
  `database_type` varchar(50) DEFAULT NULL COMMENT '数据库类型 oracle mysql sqlserver',
  `use_type` varchar(10) DEFAULT NULL COMMENT '使用类型 主机 备机',
  `soft_server` varchar(100) DEFAULT NULL COMMENT '服务器端安装包名称',
  `soft_client` varchar(100) DEFAULT NULL COMMENT '客户器端安装包名称',
  `sid` varchar(50) DEFAULT NULL COMMENT '数据库实例名称',
  `space_data` varchar(50) DEFAULT NULL COMMENT '表空间数据名称',
  `space_temp` varchar(50) DEFAULT NULL COMMENT '表空间临时数据名称',
  `port` int(11) DEFAULT NULL COMMENT '数据库端口',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库系统信息表 ';

-- ----------------------------
-- Records of oam_database
-- ----------------------------
INSERT INTO `oam_database` VALUES ('6a4593cc-0be0-4d8d-b039-b5e9cf68e5a5', '085c22bc-d385-4625-a509-c32f1444c84f', '57d57ce4-9f25-45f7-9323-89b1c29ead2c', 'b06d998b-d053-41b9-b652-4740522d3907', '2017-02-27 00:00:00', '马云', 'mysql', 'zj', 'MySQL-server-advanced-5.6.19-1.el6.x86_64', 'MySQL-client-advanced-5.6.19-1.el6.x86_64', '', '', '', '3306', null, '2017-03-09 14:09:08', null, '马云', '');

-- ----------------------------
-- Table structure for oam_database_user
-- ----------------------------
DROP TABLE IF EXISTS `oam_database_user`;
CREATE TABLE `oam_database_user` (
  `id` char(36) NOT NULL COMMENT '主键',
  `database_id` char(36) DEFAULT NULL COMMENT '数据库id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `userpd` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `role` varchar(20) DEFAULT NULL COMMENT '角色 管理员 普通账户',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库用户表';

-- ----------------------------
-- Records of oam_database_user
-- ----------------------------
INSERT INTO `oam_database_user` VALUES ('320a9a44-551c-4f0c-8467-ca91627f6914', '6a4593cc-0be0-4d8d-b039-b5e9cf68e5a5', 'website', 'UjRuakYyN0g4d0RHQ3IzYQ==', 'normal', '');

-- ----------------------------
-- Table structure for oam_device
-- ----------------------------
DROP TABLE IF EXISTS `oam_device`;
CREATE TABLE `oam_device` (
  `id` char(36) NOT NULL COMMENT '主键',
  `serial_no` varchar(50) DEFAULT NULL COMMENT '设备序列号',
  `fixed_no` varchar(50) DEFAULT NULL COMMENT '固定资产编号',
  `name` varchar(50) DEFAULT NULL COMMENT '设备名称',
  `manufacturer` varchar(50) DEFAULT NULL COMMENT '厂商',
  `model` varchar(50) DEFAULT NULL COMMENT '型号',
  `position` varchar(255) DEFAULT NULL COMMENT '位置',
  `size` int(11) DEFAULT '0' COMMENT '尺寸',
  `type` varchar(10) DEFAULT NULL COMMENT '类型：服务器硬件 (yj) 虚拟机(xlj) 阿里云(aly) 网络和安全(ns)',
  `host_id` char(36) DEFAULT NULL COMMENT '宿主机，供虚拟机使用',
  `ns_type` varchar(5) DEFAULT NULL COMMENT '网络或安全设备类型',
  `dept_id` char(36) DEFAULT NULL COMMENT '使用部门',
  `rxn_num` int(11) DEFAULT '0' COMMENT '光口数量',
  `ta_num` int(11) DEFAULT '0' COMMENT '管理网口数量',
  `cos_num` int(11) DEFAULT '0' COMMENT 'console口数量',
  `lan_num` int(11) DEFAULT '0' COMMENT 'lan口数量',
  `use_contition` varchar(5) DEFAULT NULL COMMENT '使用情况',
  `buy_time` date DEFAULT NULL COMMENT '购入日期',
  `over_time` date DEFAULT NULL COMMENT '过保日期',
  `os` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `os_legal` varchar(5) DEFAULT NULL COMMENT '操作系统是否正版',
  `use_type` varchar(5) DEFAULT NULL COMMENT '主机或者备机',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务器硬件基础信息表';

-- ----------------------------
-- Records of oam_device
-- ----------------------------
INSERT INTO `oam_device` VALUES ('2ffe6d93-c701-46ac-8aaf-7b7c577d9b2b', null, null, '四川省物流公共信息平台WEB', null, null, '互联网', null, 'xlj', '', null, '', null, null, null, null, 'zy', null, null, 'centos6.5', '', '', '系统盘：100G\r\n云盘：600G\r\nCPU核心数：8\r\n内存：16G', '马云', '2017-03-09 12:28:46', '马云', '2017-03-09 13:40:07');
INSERT INTO `oam_device` VALUES ('31187716-eba0-4625-818c-04d7c8da52a9', '', '', '', '天融信', 'R320', '四川出入境检验检疫局', null, 'yj', null, null, '', null, null, null, null, 'zy', null, null, '', '', '', '', '马云', '2017-03-09 14:55:24', '', null);
INSERT INTO `oam_device` VALUES ('57d57ce4-9f25-45f7-9323-89b1c29ead2c', 'F4J0322', '', '', '戴尔', 'R720', '第二生产网', '2', 'yj', '', null, 'c4b19160-4439-494a-b54f-60f1eea8a4cd', '1', null, null, null, 'xz', null, null, 'win7', 'yes', 'zj', '', '马云', '2017-03-09 09:57:40', '马云', '2017-03-09 10:28:53');
INSERT INTO `oam_device` VALUES ('5a91e32d-6698-43da-901b-5010ba15905d', '2102352354DMF6000673', 'SCWL-HW-SW-151010-002', '三层交换机', '华为', 'S5700-52C-EI', '2F-HLWE-C-05', '1', 'wlsb', '', null, 'c4b19160-4439-494a-b54f-60f1eea8a4cd', null, null, null, null, 'zy', '2015-10-10', '2017-10-10', '', '', 'zj', '', '马云', '2017-03-09 10:39:12', '马云', '2017-03-09 10:39:27');
INSERT INTO `oam_device` VALUES ('64bfb581-9ca7-4a58-b95e-f1f3be534600', 'K1005010352', 'SCWL-VPN-151009-001', 'VPN', '天融信', 'SJW11-C-S', '2F-HLWE-B-05', '1', 'wlsb', null, null, 'b4851049-edc0-4455-a099-fe0e5b8f4b40', null, null, null, null, 'zy', '2015-10-10', '2017-10-10', null, null, '', '', '马云', '2017-03-09 13:35:59', '', null);
INSERT INTO `oam_device` VALUES ('8d679637-9402-48b8-b012-cb2b1860e004', '8LH0322', '', '', '戴尔', 'R720', '温江光华机房3Fk3', '2', 'yj', null, null, 'c4b19160-4439-494a-b54f-60f1eea8a4cd', null, null, null, null, 'zy', null, null, '', '', '', '', '马云', '2017-03-09 11:47:40', '马云', '2017-03-09 13:32:54');
INSERT INTO `oam_device` VALUES ('93b28d40-98f9-49f9-b88a-ebcaab5e0732', '', '', '', '华为', 'HP1', '第二生产网', null, 'wlsb', null, null, '', null, null, null, null, 'zy', null, null, null, null, '', '', '马云', '2017-03-09 14:58:08', '马云', '2017-03-09 14:58:13');
INSERT INTO `oam_device` VALUES ('9d802729-702b-4820-aa85-a2c63978936f', null, null, '阿里云主机', null, null, '华南 1 可用区 A', null, 'aly', null, null, '', null, null, null, null, 'zy', null, '2017-11-12', 'CentOS 7.2 64位', 'yes', '', '', '马云', '2017-03-09 10:43:50', '马云', '2017-03-09 13:38:17');
INSERT INTO `oam_device` VALUES ('aa60de66-64a6-4bfa-b515-a669d6bc46e3', '', '', '', '华为', '', '', null, 'yj', null, null, '', null, null, null, null, 'zy', null, null, '', '', '', '', '马云', '2017-03-09 14:48:11', '', null);
INSERT INTO `oam_device` VALUES ('b0ee4374-a62c-4c38-b866-6f2acd4f0d48', null, null, '阿里云', null, null, '华东 1', null, 'aly', null, null, '', null, null, null, null, 'zy', null, '2017-11-19', 'win2008 R2  企业版 64', '', '', '', '马云', '2017-03-09 13:37:58', '', null);
INSERT INTO `oam_device` VALUES ('cd0c2c9c-c80d-491d-8f25-da3189633517', null, null, '', null, null, '2F-HLWE-C-05', null, 'xlj', '5a91e32d-6698-43da-901b-5010ba15905d', null, 'c4b19160-4439-494a-b54f-60f1eea8a4cd', null, null, null, null, 'zy', null, null, '', '', '', '', '马云', '2017-03-09 15:04:52', '', null);

-- ----------------------------
-- Table structure for oam_device_app
-- ----------------------------
DROP TABLE IF EXISTS `oam_device_app`;
CREATE TABLE `oam_device_app` (
  `id` char(36) NOT NULL COMMENT '主键',
  `app_id` char(36) DEFAULT NULL COMMENT '关联应用',
  `device_id` char(36) DEFAULT NULL COMMENT '关联设备',
  `ip_id` char(36) DEFAULT NULL COMMENT '关联ip',
  `port` int(11) DEFAULT NULL COMMENT '占用端口',
  `enable` varchar(10) DEFAULT NULL COMMENT '是否启用',
  `use_type` varchar(10) DEFAULT NULL COMMENT '使用类型 主机 备机',
  `container` varchar(100) DEFAULT NULL COMMENT '容器类型',
  `env` varchar(100) DEFAULT NULL COMMENT '运行环境',
  `path` varchar(100) DEFAULT NULL COMMENT '部署路径',
  `deploy_user` varchar(50) DEFAULT NULL COMMENT '项目部署人员',
  `deploy_time` datetime DEFAULT NULL COMMENT '部署时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '记录创建人员',
  `create_time` datetime DEFAULT NULL COMMENT '记录创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '记录更新人员',
  `update_time` datetime DEFAULT NULL COMMENT '记录更新时间',
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用部署到服务器信息记录表';

-- ----------------------------
-- Records of oam_device_app
-- ----------------------------
INSERT INTO `oam_device_app` VALUES ('f7e44c6c-ec21-4500-8b04-93b72e2317e3', '085c22bc-d385-4625-a509-c32f1444c84f', '9d802729-702b-4820-aa85-a2c63978936f', '7328b9b5-0d0f-4ae7-8a4f-451f19b4c745', '8080', 'yes', 'zj', '.net4.0', 'jdk1.7.0_71', 'F:\\WEB\\QYDWEB', '马云', '2017-03-09 14:11:58', null, null, '马云', '2017-03-09 14:24:07', '');

-- ----------------------------
-- Table structure for oam_device_attr
-- ----------------------------
DROP TABLE IF EXISTS `oam_device_attr`;
CREATE TABLE `oam_device_attr` (
  `id` char(36) NOT NULL COMMENT '主键',
  `device_id` char(36) DEFAULT NULL COMMENT '设备ID',
  `cpu_model` varchar(50) DEFAULT NULL COMMENT 'cpu型号',
  `cpu_num` int(11) DEFAULT NULL COMMENT 'cpu数量',
  `disk_brand` varchar(100) DEFAULT NULL COMMENT '磁盘品牌',
  `disk_model` varchar(50) DEFAULT NULL COMMENT '磁盘型号',
  `disk_capacity` int(11) DEFAULT NULL COMMENT '磁盘容量',
  `disk_size` float DEFAULT NULL COMMENT '磁盘尺寸',
  `disk_convolution` int(11) DEFAULT NULL COMMENT '磁盘转速',
  `disk_raid_model` varchar(100) DEFAULT NULL COMMENT '磁盘阵列卡型号',
  `disk_raid_type` varchar(255) DEFAULT NULL COMMENT '磁盘阵列类型',
  `disk_num` int(11) DEFAULT NULL COMMENT '磁盘数量',
  `ram_brand` varchar(50) DEFAULT NULL COMMENT '内存品牌',
  `ram_model` varchar(50) DEFAULT NULL COMMENT '内存型号',
  `ram_ddr` varchar(5) DEFAULT NULL COMMENT '内存代数',
  `ram_capacity` int(11) DEFAULT NULL COMMENT '内存容量',
  `ram_hz` int(11) DEFAULT NULL COMMENT '内存频率',
  `ram_num` int(11) DEFAULT NULL COMMENT '内存数量',
  `nm_band` int(11) DEFAULT NULL COMMENT '网口带宽',
  `nm_num` int(11) DEFAULT NULL COMMENT '网口数量',
  `power_kw` int(11) DEFAULT NULL COMMENT '电源功率',
  `power_num` int(11) DEFAULT NULL COMMENT '电源数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备属性';

-- ----------------------------
-- Records of oam_device_attr
-- ----------------------------
INSERT INTO `oam_device_attr` VALUES ('6010c4e5-0be9-45c3-bb9f-9a71ce515bd8', '8d679637-9402-48b8-b012-cb2b1860e004', 'E5-2620 0', '2', '', '', '600', '3.5', '15', 'h310', '', '2', '', '', '3', '16', '1333', '2', '1000', '4', '495', '2', null);
INSERT INTO `oam_device_attr` VALUES ('74e25d6c-0780-4824-b751-89da0952474e', '57d57ce4-9f25-45f7-9323-89b1c29ead2c', 'E5-2620 0', '2', '', '', '600', '3.5', '15', 'h310', '', '4', '', '', '3', '16', '1333', '2', '1000', '4', '495', '2', null);
INSERT INTO `oam_device_attr` VALUES ('7c9309dd-4ada-4ad8-b9e6-110cf302555f', 'aa60de66-64a6-4bfa-b515-a669d6bc46e3', '', null, '', '', null, null, null, '', '', null, '', '', '', null, null, null, null, null, null, null, null);
INSERT INTO `oam_device_attr` VALUES ('a5189026-df72-406c-ac04-abdd777f0ec8', '31187716-eba0-4625-818c-04d7c8da52a9', '', null, '', '', null, null, null, '', '', null, '', '', '', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for oam_device_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `oam_device_upgrade`;
CREATE TABLE `oam_device_upgrade` (
  `id` char(36) NOT NULL,
  `device_id` char(36) DEFAULT NULL,
  `login_name` varchar(50) DEFAULT NULL,
  `login_password` varchar(64) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oam_device_upgrade
-- ----------------------------
INSERT INTO `oam_device_upgrade` VALUES ('f51db6cf-d134-4341-aa40-7805c0fd994f', '5a91e32d-6698-43da-901b-5010ba15905d', '', null, 'http://www.rj-itop.com', '自己到网站上去下载更新固件并更新');

-- ----------------------------
-- Table structure for oam_device_user
-- ----------------------------
DROP TABLE IF EXISTS `oam_device_user`;
CREATE TABLE `oam_device_user` (
  `id` char(36) NOT NULL COMMENT '主键',
  `device_id` char(36) DEFAULT NULL COMMENT '服务器ID或者网络安全ID',
  `login_name` varchar(50) DEFAULT NULL COMMENT '系统登录名称',
  `login_password` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `type` varchar(10) DEFAULT NULL COMMENT '类型：bios密码(bipa) 操作系统密码(ospa) 网络安全设备(nspa)',
  `enable` varchar(255) DEFAULT NULL COMMENT '是否可用',
  `manage_url` varchar(100) DEFAULT NULL COMMENT '管理地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备登录密码(服务器硬件设备，操作系统，网络安全设备的密码)';

-- ----------------------------
-- Records of oam_device_user
-- ----------------------------
INSERT INTO `oam_device_user` VALUES ('2ad1119e-0b59-497d-ac70-9877c7a996ad', '57d57ce4-9f25-45f7-9323-89b1c29ead2c', 'administrator', 'MTIzNDU2', 'ospa', 'yes', '', '');

-- ----------------------------
-- Table structure for oam_domain
-- ----------------------------
DROP TABLE IF EXISTS `oam_domain`;
CREATE TABLE `oam_domain` (
  `id` char(36) NOT NULL COMMENT '主键',
  `domain_bus` varchar(50) DEFAULT NULL COMMENT '域名商',
  `domain` varchar(100) DEFAULT NULL COMMENT '域名',
  `end_time` date DEFAULT NULL COMMENT '到期时间',
  `bus_account` varchar(50) DEFAULT NULL COMMENT '域名商账号',
  `bus_password` varchar(50) DEFAULT NULL COMMENT '域名商密码',
  `mail` varchar(50) DEFAULT NULL COMMENT '验证邮箱',
  `tell` varchar(11) DEFAULT NULL COMMENT '注册手机',
  `ownner` varchar(50) DEFAULT NULL COMMENT '有效持有人',
  `remark` varchar(500) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT '公网ip',
  `mask` varchar(20) DEFAULT NULL COMMENT '公网掩码',
  `getway` varchar(20) DEFAULT NULL COMMENT '公网网关',
  `port` int(11) DEFAULT NULL COMMENT '占用端口',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='域名信息';

-- ----------------------------
-- Records of oam_domain
-- ----------------------------
INSERT INTO `oam_domain` VALUES ('4168df14-0c59-4d38-b664-c21b39231e33', '', 'www.baidu.com', null, '', '', '', '', '', '', '125.64.5.52', '255.255.255.192', '125.64.5.1', '808');
INSERT INTO `oam_domain` VALUES ('468040e7-4f9c-4523-8aa7-3be6ae4668f8', '', 'https://www.66tx.cn', null, '', '', '', '', '', '', null, null, null, null);
INSERT INTO `oam_domain` VALUES ('7bbd8271-0d8e-4fb0-8c4f-09cfca2317e7', '', 'https://www.baidu.com', null, '', '', '', '', '', '', null, null, null, null);
INSERT INTO `oam_domain` VALUES ('c43f2a96-a80c-49d1-89af-3cd486965e73', '', 'https://www.sina.com', null, '', '', '', '', '', '', null, null, null, null);

-- ----------------------------
-- Table structure for oam_ip
-- ----------------------------
DROP TABLE IF EXISTS `oam_ip`;
CREATE TABLE `oam_ip` (
  `id` char(36) NOT NULL COMMENT '主键',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `device_id` char(36) DEFAULT NULL COMMENT '关联的设备ID',
  `mask` varchar(20) DEFAULT NULL COMMENT '掩码',
  `dns1` varchar(20) DEFAULT NULL,
  `dns2` varchar(20) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL COMMENT '网关',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ip管理表';

-- ----------------------------
-- Records of oam_ip
-- ----------------------------
INSERT INTO `oam_ip` VALUES ('4e91c12c-ddeb-4ce9-818b-1c738faf21b8', '118.178.185.67', 'b0ee4374-a62c-4c38-b866-6f2acd4f0d48', '', '', '', '', null, '马云', '2017-03-09 13:37:58', null, null, 'Network');
INSERT INTO `oam_ip` VALUES ('51e464bf-a84f-4799-86ee-94b4570a376e', '192.168.19.1', '2ffe6d93-c701-46ac-8aaf-7b7c577d9b2b', '', '', '', '', null, '马云', '2017-03-09 13:40:07', null, null, 'intranet');
INSERT INTO `oam_ip` VALUES ('7328b9b5-0d0f-4ae7-8a4f-451f19b4c745', '120.24.59.115', '9d802729-702b-4820-aa85-a2c63978936f', '', 'd1', 'd2', '', null, '马云', '2017-03-09 10:43:50', '马云', '2017-03-09 13:38:17', 'Network');
INSERT INTO `oam_ip` VALUES ('9065e1a9-c79a-4ebd-b195-a048eef975d0', '10.27.102.70', 'b0ee4374-a62c-4c38-b866-6f2acd4f0d48', '', '', '', '', null, '马云', '2017-03-09 13:37:58', null, null, 'intranet');
INSERT INTO `oam_ip` VALUES ('b06d998b-d053-41b9-b652-4740522d3907', '10.0.100.74', '57d57ce4-9f25-45f7-9323-89b1c29ead2c', '', '', '', '', null, '马云', '2017-03-09 10:02:00', '马云', '2017-03-09 10:28:53', null);
INSERT INTO `oam_ip` VALUES ('e1addaae-b131-43c5-b2df-760896e4788e', '10.169.96.251', '9d802729-702b-4820-aa85-a2c63978936f', '', 'a1', 'a2', '', null, '马云', '2017-03-09 10:43:50', '马云', '2017-03-09 13:38:17', 'intranet');
INSERT INTO `oam_ip` VALUES ('ee45cca9-0a1e-46b8-85b4-b5ec4a70f255', '10.0.100.211', '8d679637-9402-48b8-b012-cb2b1860e004', '', '', '', '', null, '马云', '2017-03-09 11:47:40', '马云', '2017-03-09 13:32:54', 'intranet');

-- ----------------------------
-- Table structure for oam_ipport
-- ----------------------------
DROP TABLE IF EXISTS `oam_ipport`;
CREATE TABLE `oam_ipport` (
  `id` char(32) NOT NULL COMMENT '主键',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP号',
  `lan` varchar(20) DEFAULT NULL COMMENT '服务器网卡',
  `swit` varchar(100) DEFAULT NULL COMMENT '交换机名称',
  `port` varchar(20) DEFAULT NULL COMMENT '端口号',
  `ipid` char(36) DEFAULT NULL COMMENT '预留字段',
  `seq` int(11) DEFAULT NULL COMMENT '序号',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='端口对应表@20160511';

-- ----------------------------
-- Records of oam_ipport
-- ----------------------------
INSERT INTO `oam_ipport` VALUES ('b4028447f3bd472cb5a3bcccf5e40eb8', '172.16.1.30', 'lan1', 'C05_5.250', 'G0/0/1', null, '1', '');
INSERT INTO `oam_ipport` VALUES ('f6d54f06f39c4744a830b0db170983bb', '172.16.3.24', '', '', '', null, '2', '');

-- ----------------------------
-- Table structure for oam_line
-- ----------------------------
DROP TABLE IF EXISTS `oam_line`;
CREATE TABLE `oam_line` (
  `id` char(36) NOT NULL COMMENT '主键',
  `ddmc` varchar(255) DEFAULT NULL COMMENT '端点名称',
  `lxbh` varchar(50) DEFAULT NULL COMMENT '线路编号',
  `bdip` varchar(200) DEFAULT NULL COMMENT '本端IP',
  `ddip` varchar(200) DEFAULT NULL COMMENT '对端IP及其分支名',
  `mstpjhj` varchar(50) DEFAULT NULL COMMENT 'MSTP交换机',
  `vlan` varchar(50) DEFAULT NULL COMMENT '所属MSTP交换机VLAN',
  `jhjjk` varchar(50) DEFAULT NULL COMMENT 'MSTP交换机接口',
  `bz` varchar(1000) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专线资源明细';

-- ----------------------------
-- Records of oam_line
-- ----------------------------
INSERT INTO `oam_line` VALUES ('dd3568ff-4116-4e09-85e7-272427b9841c', '本端MSTP交换机', '770100126182', '172.16.4.4/24', '172.16.4.3/24国检三一个  172.16.4.7/24国检跨境电商', '172.16.4.4', 'VLAN40', 'G0/0/32', '');

-- ----------------------------
-- Table structure for oam_soft_asset
-- ----------------------------
DROP TABLE IF EXISTS `oam_soft_asset`;
CREATE TABLE `oam_soft_asset` (
  `id` char(36) NOT NULL COMMENT '主键',
  `soft_name` varchar(100) DEFAULT NULL COMMENT '软件名称',
  `brand` varchar(50) DEFAULT NULL COMMENT '品牌',
  `buy_num` int(11) DEFAULT NULL COMMENT '购买个数',
  `used` varchar(5) DEFAULT NULL COMMENT '是否已使用',
  `install_detail` varchar(255) DEFAULT NULL COMMENT '安装情况',
  `dept_id` char(36) DEFAULT NULL COMMENT '使用部门',
  `service_tell` varchar(11) DEFAULT NULL COMMENT '客服电话',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='软件资产表';

-- ----------------------------
-- Records of oam_soft_asset
-- ----------------------------

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `id` char(36) NOT NULL COMMENT '主键',
  `btn_name` varchar(50) DEFAULT NULL COMMENT '按钮名称',
  `btn_icon` varchar(50) DEFAULT NULL,
  `btn_script` varchar(255) DEFAULT NULL COMMENT '按钮参数',
  `menu_id` char(36) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按钮权限表';

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('0658a118-5c5d-45c5-843b-12c347cc209a', '新增菜单', null, 'sys:menu:add', 'c13685c1-5353-483d-be5f-e8185f5f6b6f');
INSERT INTO `sys_button` VALUES ('0a072c52-4b27-49c1-8d2b-5bacfebd2d2c', '修改升级信息', null, 'oam:upgrade:alter', '352d1e73-b62e-4576-86a8-0b17969f304c');
INSERT INTO `sys_button` VALUES ('0d90a77e-4917-437f-bc77-ead7b0312a30', '修改角色', null, 'sys:role:alter', 'f31328d2-0deb-4ed9-b9f4-8086ca87bdfe');
INSERT INTO `sys_button` VALUES ('0f4fe87a-7a80-4cc4-b866-562202cc4d92', 'IP删除', null, 'oam:ip:del', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('0fa4f3d0-291b-4f90-aa4a-1bd667643416', '专线删除', null, 'oam:line:del', '6240ca27-0a2b-4b0f-9005-4bb46d0ac41c');
INSERT INTO `sys_button` VALUES ('1073816c-1225-4cc2-bd98-5925baec08ff', '删除数据库', null, 'oam:database:del', 'b30b3bbd-d35c-402f-80c7-e7f355582ed8');
INSERT INTO `sys_button` VALUES ('10e61768-c9a0-4c0e-825c-027f9427a4f9', '新增角色', null, 'sys:role:add', 'f31328d2-0deb-4ed9-b9f4-8086ca87bdfe');
INSERT INTO `sys_button` VALUES ('11a661c7-13d8-446a-8ea2-9e435135a67c', '新增字典类型', null, 'sys:dictType:add', '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e');
INSERT INTO `sys_button` VALUES ('1427844b-c7b8-4911-8387-ac3b297b3ced', '修改端口对应', null, 'oam:ipport:alter', '653c4e3b-fc46-4b89-8976-b9129eecab1b');
INSERT INTO `sys_button` VALUES ('18bfa357-ea02-4dab-b0e7-bae3c19c0c75', '文件新增', null, 'sys:file:add', 'd5d15098-96ed-4aad-bd68-b870908546b0');
INSERT INTO `sys_button` VALUES ('198540f3-0d0a-417c-8f3e-4b1f09c5365c', '设备查询', null, 'oam:device:query', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('1a4b8d7a-1cfc-4be8-8f60-4d95d7117857', '修改菜单', null, 'sys:menu:alter', 'c13685c1-5353-483d-be5f-e8185f5f6b6f');
INSERT INTO `sys_button` VALUES ('1ba556b5-9d59-495c-8b18-35c8565df80d', '新增应用', null, 'oam:app:add', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('234bd4e8-0374-4270-b743-dd6c87f3cc35', '新增部门', null, 'sys:dept:add', '9d250246-fc1f-4385-be2b-136e12037be6');
INSERT INTO `sys_button` VALUES ('3531453d-a4f1-48c4-ab2f-c124ab8b934d', '设备修改', null, 'oam:device:alter', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('39ee533d-06f6-4f0f-bd37-742200d61478', '文件编辑', null, 'sys:file:alter', 'd5d15098-96ed-4aad-bd68-b870908546b0');
INSERT INTO `sys_button` VALUES ('3f1c11e8-64d4-4f7e-b489-8b6b82b0dba1', '新增字典明细', null, 'sys:dictEntry:add', '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e');
INSERT INTO `sys_button` VALUES ('40a100bd-a32e-41d7-925b-59dfd9bdf164', '文件删除', null, 'sys:file:del', 'd5d15098-96ed-4aad-bd68-b870908546b0');
INSERT INTO `sys_button` VALUES ('4285c669-dc4b-46a8-afbd-3404665f2359', '设备新增', null, 'oam:device:add', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('49aecaa4-6a9b-4fff-ad63-70fbc75838b7', '新增资产', null, 'oam:softasset:add', 'eb34d376-16b8-4d5d-8ad5-5a3209f70b70');
INSERT INTO `sys_button` VALUES ('4f84ed86-9c59-4eff-9b4e-b7b99aef87e0', '登录用户修改', null, 'oam:appuser:alter', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('51f4cbee-516c-4484-be79-d0b6c5fb2302', '查询人员', null, 'sys:user:query', 'cfed1731-63b7-4a41-8d06-7ab010d43471');
INSERT INTO `sys_button` VALUES ('52fe9b22-68ff-4416-9e64-08b7509d612e', '设备用户新增', null, 'oam:deviceuser:add', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('5c1268b7-7adf-412b-a0e3-9b6a5e5145c8', '设备用户修改', null, 'oam:deviceuser:alter', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('5d9b49f0-489c-4295-8e76-475330718c3d', '修改数据库', null, 'oam:database:alter', 'b30b3bbd-d35c-402f-80c7-e7f355582ed8');
INSERT INTO `sys_button` VALUES ('631a6172-c509-4307-984b-f3bf6f5db7d2', '修改部门', null, 'sys:dept:alter', '9d250246-fc1f-4385-be2b-136e12037be6');
INSERT INTO `sys_button` VALUES ('65a8deb3-c9f5-4db5-a032-655c90480ad6', '删除人员', null, 'sys:user:del', 'cfed1731-63b7-4a41-8d06-7ab010d43471');
INSERT INTO `sys_button` VALUES ('66b28452-f0ed-4397-9168-8b37434dbad6', '设备用户删除', null, 'oam:deviceuser:del', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('68cce5ee-5965-4211-8c13-729ae4af1979', '专线新增', null, 'oam:line:add', '6240ca27-0a2b-4b0f-9005-4bb46d0ac41c');
INSERT INTO `sys_button` VALUES ('6d307351-3e7f-4624-862c-0bf83933fac3', '删除应用', null, 'oam:app:del', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('6d7a8911-c893-4515-bd3a-b27c6181ea68', '新增备品', null, 'oam:back:add', 'af923c25-e071-416e-a042-20ba183fbeeb');
INSERT INTO `sys_button` VALUES ('6fb427d3-6029-4ed0-ab43-fc9206871497', '修改应用', null, 'oam:app:alter', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('72b6941b-bffd-427b-9add-4c4ab0de2d4b', '设备删除', null, 'oam:device:del', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('73f75537-bdc7-4d5e-92c2-40bb0c13bc02', '删除备品', null, 'oam:back:del', 'af923c25-e071-416e-a042-20ba183fbeeb');
INSERT INTO `sys_button` VALUES ('75c0e674-af27-4b39-85fb-f9aa4acc05d7', '新增人员', null, 'sys:user:add', 'cfed1731-63b7-4a41-8d06-7ab010d43471');
INSERT INTO `sys_button` VALUES ('7c49de28-0402-4197-b8aa-8006c8bcf451', '新增域名', null, 'oam:domain:add', '697efabe-1d52-4db9-9248-f7bc47acaff8');
INSERT INTO `sys_button` VALUES ('8237480a-dc08-43fc-912f-82d62b0837ff', '修改备品', null, 'oam:back:alter', 'af923c25-e071-416e-a042-20ba183fbeeb');
INSERT INTO `sys_button` VALUES ('82afd599-5280-4ad3-ac49-e8c5422ea8cd', '删除字典明细', null, 'sys:dictEntry:del', '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e');
INSERT INTO `sys_button` VALUES ('835e0a65-3714-4bb5-9bd1-a54ee9bf577c', '文件查询', null, 'sys:file:query', 'd5d15098-96ed-4aad-bd68-b870908546b0');
INSERT INTO `sys_button` VALUES ('841eee3b-e3c4-47f7-9239-f5f6e746f14d', '修改域名', null, 'oam:domain:alter', '697efabe-1d52-4db9-9248-f7bc47acaff8');
INSERT INTO `sys_button` VALUES ('85423e41-c7de-4c30-bb07-d490dbb2391b', '专线修改', null, 'oam:line:alter', '6240ca27-0a2b-4b0f-9005-4bb46d0ac41c');
INSERT INTO `sys_button` VALUES ('895e196f-0b1a-4011-a077-94b2c2127cb7', '删除字典类型', null, 'sys:dictType:del', '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e');
INSERT INTO `sys_button` VALUES ('8e397129-0920-47dc-b44f-2b4c4546ba17', '删除用户', null, 'oam:databaseuser:del', 'b30b3bbd-d35c-402f-80c7-e7f355582ed8');
INSERT INTO `sys_button` VALUES ('8feb8daa-31d0-49b6-b93e-41a87191a341', '登录用户新增', null, 'oam:appuser:add', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('96e0ff2b-1230-484c-b102-aaa0d6fa7f30', '删除部署', null, 'oam:devapp:del', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('a05c5136-471a-4f5a-992c-892fc272cded', '删除升级信息', null, 'oam:upgrade:del', '352d1e73-b62e-4576-86a8-0b17969f304c');
INSERT INTO `sys_button` VALUES ('a0d37fef-3979-4647-882e-6c042a72dc59', '删除域名', null, 'oam:domain:del', '697efabe-1d52-4db9-9248-f7bc47acaff8');
INSERT INTO `sys_button` VALUES ('a4fd7efe-9b05-4129-8154-042438cb1f90', '查询角色', null, 'sys:role:query', 'f31328d2-0deb-4ed9-b9f4-8086ca87bdfe');
INSERT INTO `sys_button` VALUES ('a96d72a8-488d-4432-ab06-fb40991dba2e', '查询菜单', null, 'sys:menu:query', 'c13685c1-5353-483d-be5f-e8185f5f6b6f');
INSERT INTO `sys_button` VALUES ('aa20a4d9-9bcb-4bd6-83da-c8865199c3d8', '删除部门', null, 'sys:dept:del', '9d250246-fc1f-4385-be2b-136e12037be6');
INSERT INTO `sys_button` VALUES ('bee74dbe-05c5-4457-8738-2c5265877983', '新增端口对应', null, 'oam:ipport:add', '653c4e3b-fc46-4b89-8976-b9129eecab1b');
INSERT INTO `sys_button` VALUES ('c1242656-c20a-4bde-bfa1-33df51ec8baf', '修改部署', null, 'oam:devapp:alter', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('c2302239-9a00-40b8-a8c9-71b8e732c1e1', '删除菜单', null, 'sys:menu:del', 'c13685c1-5353-483d-be5f-e8185f5f6b6f');
INSERT INTO `sys_button` VALUES ('c93673d6-359a-4d2a-9efb-989360716063', '删除角色', null, 'sys:role:del', 'f31328d2-0deb-4ed9-b9f4-8086ca87bdfe');
INSERT INTO `sys_button` VALUES ('cd628a35-6e99-47b9-8d16-83098a02d29d', '新增数据库', null, 'oam:database:add', 'b30b3bbd-d35c-402f-80c7-e7f355582ed8');
INSERT INTO `sys_button` VALUES ('d336c900-6505-4bfe-90a0-7b5dc7b015f1', '设备用户查询', null, 'oam:deviceuser:query', '17771dcb-d168-4b06-84bc-9a997e09e815');
INSERT INTO `sys_button` VALUES ('dbe117c0-501d-4f3a-9c6d-f0f89f23e6c4', '修改资产', null, 'oam:softasset:alter', 'eb34d376-16b8-4d5d-8ad5-5a3209f70b70');
INSERT INTO `sys_button` VALUES ('de3fc7d1-7f21-467e-a9e5-b313a5b89999', '删除端口对应', null, 'oam:ipport:del', '653c4e3b-fc46-4b89-8976-b9129eecab1b');
INSERT INTO `sys_button` VALUES ('dee44fae-47a7-4709-816d-53453e822245', '修改字典类型', null, 'sys:dictType:alter', '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e');
INSERT INTO `sys_button` VALUES ('e5a6a76a-0cbe-4987-87f8-7dfcf8da2f89', '密码重置', null, 'sys:user:resetpwd', 'cfed1731-63b7-4a41-8d06-7ab010d43471');
INSERT INTO `sys_button` VALUES ('e5cd18a4-0102-4227-a897-ca15ab43c7c7', '登录用户查询', null, 'oam:appuser:query', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('ea9f5e1a-5366-47db-8bd5-6162f281f064', '删除资产', null, 'oam:softasset:del', 'eb34d376-16b8-4d5d-8ad5-5a3209f70b70');
INSERT INTO `sys_button` VALUES ('ec30029d-15af-433d-821f-c7aa6152b0de', '部署应用', null, 'oam:devapp:add', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('ecefd32a-f085-4ec0-bede-06de88e007c4', '修改人员', null, 'sys:user:alter', 'cfed1731-63b7-4a41-8d06-7ab010d43471');
INSERT INTO `sys_button` VALUES ('ee41a1da-ee16-4567-8df2-2ca3d3ace99a', '新增升级信息', null, 'oam:upgrade:add', '352d1e73-b62e-4576-86a8-0b17969f304c');
INSERT INTO `sys_button` VALUES ('f54acf47-dcb2-4832-bb19-6853848d7bf3', '查询部门', null, 'sys:dept:query', '9d250246-fc1f-4385-be2b-136e12037be6');
INSERT INTO `sys_button` VALUES ('fd43e621-1a48-45a2-ac46-d0039b721903', '登录用户删除', null, 'oam:appuser:del', '90c15bc6-70c1-4175-8646-c92e39dd9a43');
INSERT INTO `sys_button` VALUES ('ff67690d-4102-492f-af8a-892c39d52839', '修改字典明细', null, 'sys:dictEntry:alter', '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `id` char(36) NOT NULL COMMENT '主键',
  `dept_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `dept_code` varchar(11) DEFAULT NULL COMMENT '显示序号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门信息';

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES ('519902c9-2786-441e-884d-d5d3402fe3d7', '项目部', '2', '2017-02-24', '未来领导人物');
INSERT INTO `sys_department` VALUES ('82abb923-e2b9-400b-94b3-273a7d1c9d36', '研发部', '4', '2017-02-24', '公司重要部门');
INSERT INTO `sys_department` VALUES ('b4851049-edc0-4455-a099-fe0e5b8f4b40', '电子口岸', '6', '2017-03-09', '');
INSERT INTO `sys_department` VALUES ('c4b19160-4439-494a-b54f-60f1eea8a4cd', '物流信息平台', '5', '2017-03-09', '');
INSERT INTO `sys_department` VALUES ('fc621d3d-a728-47ce-8473-15957649e4ed', '综合部', '1', '2017-02-24', '美女众多');

-- ----------------------------
-- Table structure for sys_dict_entry
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_entry`;
CREATE TABLE `sys_dict_entry` (
  `dict_type` varchar(50) NOT NULL,
  `dict_code` varchar(100) NOT NULL,
  `dict_name` varchar(100) NOT NULL,
  `dict_order` int(11) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `system` int(11) DEFAULT '0',
  PRIMARY KEY (`dict_type`,`dict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict_entry
-- ----------------------------
INSERT INTO `sys_dict_entry` VALUES ('container', '.net4.0', '.net4.0', null, '', '0');
INSERT INTO `sys_dict_entry` VALUES ('container', 'tomcat6', 'tomcat6', null, '', '0');
INSERT INTO `sys_dict_entry` VALUES ('container', 'tomcat7', 'tomcat7', null, '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'HP1', 'HP1', '9', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'HP2', 'HP2', '10', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'R320', 'R320', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'R420', 'R420', '5', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'R620', 'R620', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'R630', 'R630', '6', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'R720', 'R720', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'R820', 'R820', '4', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'RD540', 'RD540', '8', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('cpxh', 'RQ940', 'RQ940', '7', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbrole', 'admin', '管理员', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbrole', 'normal', '普通用户', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbrole', 'super', '超级管理员', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'db2', 'db2', '4', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'fastdb', 'fastdb', '7', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'memcached', 'memcached', '6', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'mongodb', 'mongodb', '5', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'mysql', 'mysql', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'oracle', 'oracle', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'redis', 'redis', '5', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('dbtype', 'sqlserver', 'sqlserver', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('devustype', 'bipa', 'bios', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('devustype', 'nspa', '网络安全设备', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('devustype', 'ospa', '操作系统', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('enable', 'no', '禁用', '2', '', '1');
INSERT INTO `sys_dict_entry` VALUES ('enable', 'yes', '启用', '1', '', '1');
INSERT INTO `sys_dict_entry` VALUES ('env', 'jdk1.7.0_71', 'jdk1.7.0_71', null, '', '0');
INSERT INTO `sys_dict_entry` VALUES ('filetype', 'bmwj', '保密文件', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('filetype', 'jmwj', '绝密文件', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('filetype', 'ptwj', '普通文件', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', 'rose', 'rose', '16', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '依讯', '依讯', '4', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '北京国舜', '北京国舜', '11', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '华为', '华为', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '同方', '同方', '15', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '图腾', '图腾', '10', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '天融信', '天融信', '5', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '微软', '微软', '13', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '惠普', '惠普', '12', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '戴尔', '戴尔', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '榕基', '榕基', '6', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '深信服', '深信服', '8', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '网御', '网御', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '联想', '联想', '9', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('fws', '西信机房', '西信机房', '7', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('iptype', 'intranet', '内网', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('iptype', 'Network', '公网', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('ok', 'no', '否', '2', '', '1');
INSERT INTO `sys_dict_entry` VALUES ('ok', 'yes', '是', '1', '', '1');
INSERT INTO `sys_dict_entry` VALUES ('sblx', 'aly', '云主机', '3', null, '0');
INSERT INTO `sys_dict_entry` VALUES ('sblx', 'aqsb', '安全设备', '5', null, '0');
INSERT INTO `sys_dict_entry` VALUES ('sblx', 'wlsb', '网络设备', '4', null, '0');
INSERT INTO `sys_dict_entry` VALUES ('sblx', 'xlj', '虚拟机', '2', null, '0');
INSERT INTO `sys_dict_entry` VALUES ('sblx', 'yj', '服务器硬件', '1', null, '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '2F-HLWE-B-04', '2F-HLWE-B-04', '3', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '2F-HLWE-B-05', '2F-HLWE-B-05', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '2F-HLWE-B-15', '2F-HLWE-B-15', '4', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '2F-HLWE-C-05', '2F-HLWE-C-05', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '2F-HLWE-C-07', '2F-HLWE-C-07', '5', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '合作单位', '合作单位', '7', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '四川出入境检验检疫局', '四川出入境检验检疫局', '8', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '四川工商局', '四川工商局', '10', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '成都市海关总局', '成都市海关总局', '9', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '温江光华机房3Fk3', '温江光华机房3Fk3', '11', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sbszwz', '第二生产网', '第二生产网', '6', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sex', 'f', '女', '2', '', '1');
INSERT INTO `sys_dict_entry` VALUES ('sex', 'm', '男', '1', '', '1');
INSERT INTO `sys_dict_entry` VALUES ('syhj', 'cs', '测试环境', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('syhj', 'sc', '生产环境', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sylx', 'bj', '备机', '2', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('sylx', 'zj', '主机', '1', '', '0');
INSERT INTO `sys_dict_entry` VALUES ('syqk', 'xz', '闲置', '2', null, '0');
INSERT INTO `sys_dict_entry` VALUES ('syqk', 'zy', '在用', '1', null, '0');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_type` varchar(50) NOT NULL,
  `dict_desc` varchar(200) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `system` int(11) DEFAULT '0',
  PRIMARY KEY (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('container', '容器类型', '', '0');
INSERT INTO `sys_dict_type` VALUES ('cpxh', '产品型号', '', '0');
INSERT INTO `sys_dict_type` VALUES ('dbrole', '数据库用户角色', '', '0');
INSERT INTO `sys_dict_type` VALUES ('dbtype', '数据库类型', '', '0');
INSERT INTO `sys_dict_type` VALUES ('devustype', '登录账户类型', '', '0');
INSERT INTO `sys_dict_type` VALUES ('enable', '是否可用', null, '1');
INSERT INTO `sys_dict_type` VALUES ('env', '运行环境', '', '0');
INSERT INTO `sys_dict_type` VALUES ('filetype', '文件类型', '', '0');
INSERT INTO `sys_dict_type` VALUES ('fws', '服务商', '', '0');
INSERT INTO `sys_dict_type` VALUES ('iptype', 'IP类型', '', '0');
INSERT INTO `sys_dict_type` VALUES ('ok', '是否显示', null, '0');
INSERT INTO `sys_dict_type` VALUES ('sblx', '设备类型', null, '0');
INSERT INTO `sys_dict_type` VALUES ('sbszwz', '设备所在位置', '', '0');
INSERT INTO `sys_dict_type` VALUES ('sex', '性别', null, '1');
INSERT INTO `sys_dict_type` VALUES ('syhj', '应用环境', '生产环境或者测试环境', '0');
INSERT INTO `sys_dict_type` VALUES ('sylx', '使用类型', null, '0');
INSERT INTO `sys_dict_type` VALUES ('syqk', '使用情况', null, '0');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` char(32) NOT NULL COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '文件名',
  `uptime` datetime DEFAULT NULL COMMENT '上传时间',
  `upuser` varchar(50) DEFAULT NULL COMMENT '上传人员',
  `remark` varchar(5000) DEFAULT NULL COMMENT '备注',
  `type` varchar(20) DEFAULT NULL COMMENT '文件类型',
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应急文件处理';

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('3874a791a5744da098a4f017d7fc9b7e', 'Axway配置简明教程.doc', '2017-03-09 14:34:06', '马云', '', 'ptwj', 'E:\\projects\\20170217\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\authority\\files\\2017-03-09\\3874a791a5744da098a4f017d7fc9b7e.doc');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` char(36) NOT NULL COMMENT '主键',
  `parent_id` char(36) DEFAULT NULL COMMENT '上级菜单主键',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单地址',
  `menu_order` int(11) DEFAULT NULL COMMENT '菜单序号',
  `menu_icon` varchar(100) DEFAULT NULL COMMENT '菜单显示图标',
  `isparent` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0588773c-715e-4470-baf1-d32bb23a1765', '8d169d97-188b-40c3-9c7a-4ae936e1c733', '轨迹监控', 'menu/toAny?path=gps/carLocation', '1', '', 'no');
INSERT INTO `sys_menu` VALUES ('0c568b7a-8193-453f-877f-cebf2791aedd', '', '应用管理', '', '2', 'icon-android', 'yes');
INSERT INTO `sys_menu` VALUES ('17771dcb-d168-4b06-84bc-9a997e09e815', 'ed013347-5c0d-4652-9965-3d83cc54ec7e', '服务器硬件', 'menu/toAny?path=oam/device/deviceList', '1', '', 'no');
INSERT INTO `sys_menu` VALUES ('18af5cb1-ea7b-4902-bfa7-a7a8e390efe6', '8d169d97-188b-40c3-9c7a-4ae936e1c733', '历史轨迹(静态)', 'menu/toAny?path=gps/historyGJ', '3', 'icon-weibo', 'no');
INSERT INTO `sys_menu` VALUES ('1e556919-863d-45a4-822f-8dff3c2fe15a', '8d169d97-188b-40c3-9c7a-4ae936e1c733', '历史轨迹', 'menu/toAny?path=gps/historyTrack', '2', 'icon-weibo', 'no');
INSERT INTO `sys_menu` VALUES ('31c2da82-2964-43fc-89d6-c8615b4075b7', 'ab6364a3-048b-4409-b4f4-8818243ab240', '个人信息', 'user/toPersonalInfo', '6', '', 'no');
INSERT INTO `sys_menu` VALUES ('352d1e73-b62e-4576-86a8-0b17969f304c', 'ed013347-5c0d-4652-9965-3d83cc54ec7e', '网络安全设备', 'menu/toAny?path=oam/device/deviceNetList', '2', '', 'no');
INSERT INTO `sys_menu` VALUES ('6240ca27-0a2b-4b0f-9005-4bb46d0ac41c', '0c568b7a-8193-453f-877f-cebf2791aedd', '专线资源明细', 'menu/toAny?path=oam/line/lineList', '6', '', 'no');
INSERT INTO `sys_menu` VALUES ('653c4e3b-fc46-4b89-8976-b9129eecab1b', '0c568b7a-8193-453f-877f-cebf2791aedd', '端口对应表', 'menu/toAny?path=oam/other/ipportList', '8', '', 'no');
INSERT INTO `sys_menu` VALUES ('697efabe-1d52-4db9-9248-f7bc47acaff8', '0c568b7a-8193-453f-877f-cebf2791aedd', '域名管理', 'menu/toAny?path=oam/domain/domainList', '3', '', 'no');
INSERT INTO `sys_menu` VALUES ('8d169d97-188b-40c3-9c7a-4ae936e1c733', '', '定位系统', '', '10', 'icon-weibo', 'yes');
INSERT INTO `sys_menu` VALUES ('90c15bc6-70c1-4175-8646-c92e39dd9a43', '0c568b7a-8193-453f-877f-cebf2791aedd', '应用维护', 'menu/toAny?path=oam/app/appList', '2', '', 'no');
INSERT INTO `sys_menu` VALUES ('938b8c5e-e3eb-4f47-8df4-048b8f68bd7e', 'ab6364a3-048b-4409-b4f4-8818243ab240', '数据字典', 'menu/toAny?path=system/dict/dictList', '4', '', 'no');
INSERT INTO `sys_menu` VALUES ('9d250246-fc1f-4385-be2b-136e12037be6', 'ab6364a3-048b-4409-b4f4-8818243ab240', '部门管理', 'dept/toPage', '1', '', 'no');
INSERT INTO `sys_menu` VALUES ('ab6364a3-048b-4409-b4f4-8818243ab240', '', '系统管理', '', '3', 'icon-group', 'yes');
INSERT INTO `sys_menu` VALUES ('af923c25-e071-416e-a042-20ba183fbeeb', '0c568b7a-8193-453f-877f-cebf2791aedd', '备品备件', 'menu/toAny?path=oam/other/backList', '7', '', 'no');
INSERT INTO `sys_menu` VALUES ('b30b3bbd-d35c-402f-80c7-e7f355582ed8', '0c568b7a-8193-453f-877f-cebf2791aedd', '数据库管理', 'menu/toAny?path=oam/database/databaseList', '1', '', 'no');
INSERT INTO `sys_menu` VALUES ('c13685c1-5353-483d-be5f-e8185f5f6b6f', 'ab6364a3-048b-4409-b4f4-8818243ab240', '菜单列表', 'menu/toPage', '5', '', 'no');
INSERT INTO `sys_menu` VALUES ('ca8ca4f5-c4db-4d9e-8efe-4ed43cd0d407', 'ed013347-5c0d-4652-9965-3d83cc54ec7e', '云主机', 'menu/toAny?path=oam/device/deviceCloudList', '4', '', 'no');
INSERT INTO `sys_menu` VALUES ('cfed1731-63b7-4a41-8d06-7ab010d43471', 'ab6364a3-048b-4409-b4f4-8818243ab240', '人员管理', 'user/toPage', '2', '', 'no');
INSERT INTO `sys_menu` VALUES ('d5d15098-96ed-4aad-bd68-b870908546b0', '0c568b7a-8193-453f-877f-cebf2791aedd', '文件管理', 'menu/toAny?path=system/file/fileList', '4', '', 'no');
INSERT INTO `sys_menu` VALUES ('eb34d376-16b8-4d5d-8ad5-5a3209f70b70', '0c568b7a-8193-453f-877f-cebf2791aedd', '软件资产', 'menu/toAny?path=oam/soft/softAssetList', '5', '', 'no');
INSERT INTO `sys_menu` VALUES ('ed013347-5c0d-4652-9965-3d83cc54ec7e', '', '设备管理', '', '1', 'icon-list', 'yes');
INSERT INTO `sys_menu` VALUES ('f31328d2-0deb-4ed9-b9f4-8086ca87bdfe', 'ab6364a3-048b-4409-b4f4-8818243ab240', '角色管理', 'role/toPage', '3', '', 'no');
INSERT INTO `sys_menu` VALUES ('fa11faea-4c36-4769-9ae7-7bfe9bab7b05', 'ed013347-5c0d-4652-9965-3d83cc54ec7e', '虚拟机', 'menu/toAny?path=oam/device/deviceVMList', '3', '', 'no');

-- ----------------------------
-- Table structure for sys_privilege
-- ----------------------------
DROP TABLE IF EXISTS `sys_privilege`;
CREATE TABLE `sys_privilege` (
  `id` char(36) NOT NULL COMMENT '主键',
  `masteru` char(1) DEFAULT NULL COMMENT '用户u 角色 r',
  `masteru_id` char(36) DEFAULT NULL COMMENT '用户或角色ID',
  `enable` varchar(5) DEFAULT NULL COMMENT 'no 不可用 yes 可用',
  `button_id` char(36) DEFAULT NULL COMMENT '功能或者菜单id',
  `button` char(1) DEFAULT NULL COMMENT '功能b或者菜单m',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限表';

-- ----------------------------
-- Records of sys_privilege
-- ----------------------------
INSERT INTO `sys_privilege` VALUES ('0733a8b8-c8cf-4c57-a57d-e5e32ef4ec1e', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '895e196f-0b1a-4011-a077-94b2c2127cb7', 'b');
INSERT INTO `sys_privilege` VALUES ('177f389b-3295-4a00-8634-c36321dce101', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '0588773c-715e-4470-baf1-d32bb23a1765', 'm');
INSERT INTO `sys_privilege` VALUES ('19cb48f9-1e38-45a8-abbe-6c29c9c1ebf3', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '938b8c5e-e3eb-4f47-8df4-048b8f68bd7e', 'm');
INSERT INTO `sys_privilege` VALUES ('1a583c68-cdb7-4463-a2ae-d0c3e4bcab95', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '31c2da82-2964-43fc-89d6-c8615b4075b7', 'm');
INSERT INTO `sys_privilege` VALUES ('1ae0fe3e-5336-4b9d-acee-e6cddbd5745b', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '234bd4e8-0374-4270-b743-dd6c87f3cc35', 'b');
INSERT INTO `sys_privilege` VALUES ('1fbc8464-cd16-48e6-92eb-03b7bdf7fe46', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '631a6172-c509-4307-984b-f3bf6f5db7d2', 'b');
INSERT INTO `sys_privilege` VALUES ('2201e6fb-5606-4f68-8afb-8c27f35efe9f', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'f31328d2-0deb-4ed9-b9f4-8086ca87bdfe', 'm');
INSERT INTO `sys_privilege` VALUES ('289fea26-ffb0-4b23-b463-1292bffd1027', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '1a4b8d7a-1cfc-4be8-8f60-4d95d7117857', 'b');
INSERT INTO `sys_privilege` VALUES ('2c80705e-e6a6-412e-b47a-ea5747e2519a', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'a4fd7efe-9b05-4129-8154-042438cb1f90', 'b');
INSERT INTO `sys_privilege` VALUES ('30f0c89d-9bd8-43f1-b5a9-5e68f375ce93', 'r', '01efae4e-f911-420d-aad8-7e47c1bf43a3', null, 'ab6364a3-048b-4409-b4f4-8818243ab240', 'm');
INSERT INTO `sys_privilege` VALUES ('319f06d1-ef25-4201-a8c2-1b3e43425fd0', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '51f4cbee-516c-4484-be79-d0b6c5fb2302', 'b');
INSERT INTO `sys_privilege` VALUES ('33d0d1ba-d85e-4529-bbfc-b5abdf1e40fe', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '9d250246-fc1f-4385-be2b-136e12037be6', 'm');
INSERT INTO `sys_privilege` VALUES ('38764bc7-3104-43d8-b526-9b932d5d3259', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'e5a6a76a-0cbe-4987-87f8-7dfcf8da2f89', 'b');
INSERT INTO `sys_privilege` VALUES ('3df88523-be7f-4443-abba-1ed12a31d9d4', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'ff67690d-4102-492f-af8a-892c39d52839', 'b');
INSERT INTO `sys_privilege` VALUES ('47a82ca7-cc75-45ff-b113-e498c3ab303f', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '0658a118-5c5d-45c5-843b-12c347cc209a', 'b');
INSERT INTO `sys_privilege` VALUES ('5537341e-a1f7-45f2-9bc0-839f23b93884', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'aa20a4d9-9bcb-4bd6-83da-c8865199c3d8', 'b');
INSERT INTO `sys_privilege` VALUES ('58361424-28a4-4506-948d-fb9323022ea3', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'a96d72a8-488d-4432-ab06-fb40991dba2e', 'b');
INSERT INTO `sys_privilege` VALUES ('5d510550-4570-45b2-a7e4-ff34f9ee5b98', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'ab6364a3-048b-4409-b4f4-8818243ab240', 'm');
INSERT INTO `sys_privilege` VALUES ('5ec5734e-5817-48d9-b484-d2d22f01f7a0', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '0d90a77e-4917-437f-bc77-ead7b0312a30', 'b');
INSERT INTO `sys_privilege` VALUES ('5fd6966b-e490-4897-9ca4-8fbb15d942f2', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'dee44fae-47a7-4709-816d-53453e822245', 'b');
INSERT INTO `sys_privilege` VALUES ('7e6b380c-7b6d-4f9a-b7df-53e7c4dc6ad7', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '82afd599-5280-4ad3-ac49-e8c5422ea8cd', 'b');
INSERT INTO `sys_privilege` VALUES ('88dd5967-c150-4b07-8a4f-2f5d71dc886a', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'cfed1731-63b7-4a41-8d06-7ab010d43471', 'm');
INSERT INTO `sys_privilege` VALUES ('97ca1cd2-b9c4-4270-adc1-3e56abad6557', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '65a8deb3-c9f5-4db5-a032-655c90480ad6', 'b');
INSERT INTO `sys_privilege` VALUES ('9cf121fe-9d78-42c7-b0b3-159cbd696560', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'c2302239-9a00-40b8-a8c9-71b8e732c1e1', 'b');
INSERT INTO `sys_privilege` VALUES ('9f000122-cf37-4db1-b9a9-81a41acaa2a1', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'c93673d6-359a-4d2a-9efb-989360716063', 'b');
INSERT INTO `sys_privilege` VALUES ('adb69d72-d55b-4bc9-939d-46373452977b', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'ecefd32a-f085-4ec0-bede-06de88e007c4', 'b');
INSERT INTO `sys_privilege` VALUES ('ae3138d7-9224-4e75-9aa8-2842bb59156e', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'c13685c1-5353-483d-be5f-e8185f5f6b6f', 'm');
INSERT INTO `sys_privilege` VALUES ('b3140e6d-6ef3-456f-bb3f-e29864f34525', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '3f1c11e8-64d4-4f7e-b489-8b6b82b0dba1', 'b');
INSERT INTO `sys_privilege` VALUES ('b877da8b-c8f5-4da3-923b-32e78654601f', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '8d169d97-188b-40c3-9c7a-4ae936e1c733', 'm');
INSERT INTO `sys_privilege` VALUES ('bf8980a7-dc05-4e51-824d-d9f7fce736f0', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, 'f54acf47-dcb2-4832-bb19-6853848d7bf3', 'b');
INSERT INTO `sys_privilege` VALUES ('c3872521-118d-4086-a576-1bd699bb684b', 'r', '01efae4e-f911-420d-aad8-7e47c1bf43a3', null, '31c2da82-2964-43fc-89d6-c8615b4075b7', 'm');
INSERT INTO `sys_privilege` VALUES ('c4a1b0bb-ae90-4073-b32c-36c1f15b5b29', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '11a661c7-13d8-446a-8ea2-9e435135a67c', 'b');
INSERT INTO `sys_privilege` VALUES ('c8f7c900-2edf-407c-af21-6c3ee08744b2', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '75c0e674-af27-4b39-85fb-f9aa4acc05d7', 'b');
INSERT INTO `sys_privilege` VALUES ('f8b5d927-ba9d-425d-bc06-6c73bac65999', 'r', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', null, '10e61768-c9a0-4c0e-825c-027f9427a4f9', 'b');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` char(36) NOT NULL COMMENT '主键',
  `role_name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `role_desc` int(11) DEFAULT NULL COMMENT '排序序号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('01efae4e-f911-420d-aad8-7e47c1bf43a3', '普通用户', null, '2017-02-24 15:41:21', '');
INSERT INTO `sys_role` VALUES ('8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3', '超级管理员', '1', '2017-02-24 12:16:24', '');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` char(36) NOT NULL COMMENT '主键',
  `login_name` varchar(30) DEFAULT NULL COMMENT '登录名称',
  `login_password` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `dept_id` char(36) DEFAULT NULL COMMENT '部门ID',
  `real_name` varchar(30) DEFAULT NULL COMMENT '证实名称',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  `enable` varchar(5) DEFAULT NULL COMMENT '是否可用',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(11) DEFAULT NULL COMMENT '联系QQ',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '0947a897b8fe68895ffb86b3ecb1d3d6', '82abb923-e2b9-400b-94b3-273a7d1c9d36', '马云', 'm', 'yes', '15228966969', '是是是', '15228966969', '2017-02-26 18:20:22', '');
INSERT INTO `sys_user` VALUES ('365156dc-00aa-49bf-9c18-65591e589023', 'dqw', '1d55ee310c3d8a42785b40cf9aadfa86', '82abb923-e2b9-400b-94b3-273a7d1c9d36', '段青伟', 'm', 'yes', '18202885897', '', '', '2017-02-26 10:40:41', '');
INSERT INTO `sys_user` VALUES ('9bb51cd8-639c-44f5-a60a-033c9d1acd63', 'zx', '12bcb93fa3dd3922dbd7485983b6868e', '82abb923-e2b9-400b-94b3-273a7d1c9d36', '周翔', '', 'yes', 's', '', '', '2017-03-03 17:49:05', '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` char(36) NOT NULL COMMENT '主键',
  `user_id` char(36) DEFAULT NULL COMMENT '用户主键',
  `role_id` char(36) DEFAULT NULL COMMENT '角色主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色权限关系表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('c25989d4-63c7-4348-88a5-42bbe2f09b09', '365156dc-00aa-49bf-9c18-65591e589023', '01efae4e-f911-420d-aad8-7e47c1bf43a3');
INSERT INTO `sys_user_role` VALUES ('d944b23c-143c-4b8f-80cd-839d65f49220', '1', '8bbd6b8e-fc6e-42cd-9179-d997c91a5ec3');
INSERT INTO `sys_user_role` VALUES ('f2287c32-bb56-439c-b859-307d99dd691a', '9bb51cd8-639c-44f5-a60a-033c9d1acd63', '01efae4e-f911-420d-aad8-7e47c1bf43a3');
