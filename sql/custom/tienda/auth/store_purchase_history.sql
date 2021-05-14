/*
 Navicat Premium Data Transfer

 Source Server         : MySQL2
 Source Server Type    : MySQL
 Source Server Version : 100313
 Source Host           : localhost:3308
 Source Schema         : legion_auth2

 Target Server Type    : MySQL
 Target Server Version : 100313
 File Encoding         : 65001

 Date: 09/05/2020 22:19:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for store_purchase_history
-- ----------------------------
DROP TABLE IF EXISTS `store_purchase_history`;
CREATE TABLE `store_purchase_history`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account` int(11) UNSIGNED NOT NULL,
  `bnetaccountId` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `charGuid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `charLevel` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `productId` int(11) NOT NULL DEFAULT 0,
  `balanceInitial` int(11) UNSIGNED NOT NULL,
  `balanceEnd` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `charRace` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charFaction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DatePurchase` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `account`(`account`) USING BTREE,
  INDEX `bnet_account`(`bnetaccountId`) USING BTREE,
  INDEX `char_guid`(`charGuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
