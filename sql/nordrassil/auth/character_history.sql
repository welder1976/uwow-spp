/*
 Navicat Premium Data Transfer

 Source Server         : MySQL2
 Source Server Type    : MySQL
 Source Server Version : 100313
 Source Host           : localhost:3308
 Source Schema         : legion_auth

 Target Server Type    : MySQL
 Target Server Version : 100313
 File Encoding         : 65001

 Date: 07/06/2020 01:27:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for character_history
-- ----------------------------
DROP TABLE IF EXISTS `character_history`;
CREATE TABLE `character_history`  (
  `id` double NOT NULL,
  `account` double(255, 0) NOT NULL,
  `action` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `characterName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `characterGuid` double NOT NULL,
  `characterLevel` int(255) NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
