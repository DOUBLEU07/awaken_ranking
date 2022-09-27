/*
 Navicat Premium Data Transfer

 Source Server         : awaken
 Source Server Type    : MariaDB
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : awaken

 Target Server Type    : MariaDB
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 27/09/2022 22:03:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for awaken_ranking
-- ----------------------------
DROP TABLE IF EXISTS `awaken_ranking`;
CREATE TABLE `awaken_ranking`  (
  `house` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `weapon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL DEFAULT 3
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of awaken_ranking
-- ----------------------------
INSERT INTO `awaken_ranking` VALUES ('two', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('first', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('first', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('first', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('first', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('two', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('two', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('two', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('three', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('three', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('three', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('three', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('four', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('four', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('four', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('four', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('five', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('five', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('five', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('five', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('six', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('six', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('six', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('six', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('seaven', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('seaven', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('seaven', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('seaven', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('eight', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('eight', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('eight', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('eight', 'WEAPON_KNUCKLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('nine', 'WEAPON_POOLCUERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('nine', 'WEAPON_MACHETERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('nine', 'WEAPON_BOTTLERANKING', 3);
INSERT INTO `awaken_ranking` VALUES ('nine', 'WEAPON_KNUCKLERANKING', 3);

SET FOREIGN_KEY_CHECKS = 1;
