/*
 Navicat Premium Data Transfer

 Source Server         : 47.100.242.77-mysql8
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 47.100.242.77:3306
 Source Schema         : ueboot-shiro

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 01/03/2019 16:46:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` bigint(20) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_code` varchar(255) DEFAULT NULL,
  `parent_path` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `type` enum('机构','部门') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_code` varchar(255) DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  `created_by` varchar(40) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(40) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK73ogamir4f5eqt48s14524sdt` (`resource_code`),
  KEY `FKaoemqa19twbb9o8e5xq6am0c7` (`role_code`),
  KEY `FKcv8ki936tcaenkg3s8oc8j52n` (`resource_id`),
  KEY `FKk9ru2110pc5m5ja96jh0dth0j` (`role_id`),
  CONSTRAINT `FKcv8ki936tcaenkg3s8oc8j52n` FOREIGN KEY (`resource_id`) REFERENCES `sys_resources` (`id`),
  CONSTRAINT `FKk9ru2110pc5m5ja96jh0dth0j` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` VALUES (388, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 3, 1);
INSERT INTO `sys_permission` VALUES (389, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 4, 1);
INSERT INTO `sys_permission` VALUES (390, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 8, 1);
INSERT INTO `sys_permission` VALUES (391, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 9, 1);
INSERT INTO `sys_permission` VALUES (392, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 10, 1);
INSERT INTO `sys_permission` VALUES (393, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 20, 1);
INSERT INTO `sys_permission` VALUES (394, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 21, 1);
INSERT INTO `sys_permission` VALUES (395, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 5, 1);
INSERT INTO `sys_permission` VALUES (396, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 11, 1);
INSERT INTO `sys_permission` VALUES (397, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 12, 1);
INSERT INTO `sys_permission` VALUES (398, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 13, 1);
INSERT INTO `sys_permission` VALUES (399, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 22, 1);
INSERT INTO `sys_permission` VALUES (400, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 23, 1);
INSERT INTO `sys_permission` VALUES (401, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 24, 1);
INSERT INTO `sys_permission` VALUES (402, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 6, 1);
INSERT INTO `sys_permission` VALUES (403, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 14, 1);
INSERT INTO `sys_permission` VALUES (404, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 15, 1);
INSERT INTO `sys_permission` VALUES (405, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 16, 1);
INSERT INTO `sys_permission` VALUES (406, NULL, NULL, 'root', '2018-10-23 23:38:40', 'root', '2018-10-23 23:38:40', 25, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `rank_` bigint(20) DEFAULT NULL,
  `resource_type` enum('菜单组','菜单','功能','其他') DEFAULT NULL,
  `theme_json` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(20) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKglxcbhp7kn357vaor242fuj8c` (`parent_id`),
  CONSTRAINT `FKglxcbhp7kn357vaor242fuj8c` FOREIGN KEY (`parent_id`) REFERENCES `sys_resources` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
BEGIN;
INSERT INTO `sys_resources` VALUES (3, b'1', '权限管理', NULL, 1, '菜单组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_resources` VALUES (4, b'1', '用户管理', 'ueboot:user:read', 999, '菜单', NULL, '/ueboot/shiro/User', NULL, NULL, 'root', '2018-09-08 09:55:51', '权限管理', 3);
INSERT INTO `sys_resources` VALUES (5, b'1', '角色管理', 'ueboot:role:read', 998, '菜单', NULL, '/ueboot/shiro/Role', NULL, NULL, 'root', '2018-09-08 09:55:58', '权限管理', 3);
INSERT INTO `sys_resources` VALUES (6, b'1', '资源管理', 'ueboot:resources:read', 997, '菜单', NULL, '/ueboot/shiro/Resources', NULL, NULL, 'root', '2018-09-08 09:56:05', '权限管理', 3);
INSERT INTO `sys_resources` VALUES (8, b'1', '查询', 'ueboot:user:read', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '用户管理', 4);
INSERT INTO `sys_resources` VALUES (9, b'1', '添加与修改', 'ueboot:user:save', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '用户管理', 4);
INSERT INTO `sys_resources` VALUES (10, b'1', '删除', 'ueboot:user:delete', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '用户管理', 4);
INSERT INTO `sys_resources` VALUES (11, b'1', '查询', 'ueboot:role:read', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
INSERT INTO `sys_resources` VALUES (12, b'1', '添加与修改', 'ueboot:role:save', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
INSERT INTO `sys_resources` VALUES (13, b'1', '删除', 'ueboot:role:delete', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
INSERT INTO `sys_resources` VALUES (25, b'1', '角色授权', 'ueboot:permission:read,ueboot:permission:save,ueboot:permission:delete', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
INSERT INTO `sys_resources` VALUES (14, b'1', '查询', 'ueboot:resources:read', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '资源管理', 6);
INSERT INTO `sys_resources` VALUES (15, b'1', '添加与修改', 'ueboot:resources:save', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '资源管理', 6);
INSERT INTO `sys_resources` VALUES (16, b'1', '删除', 'ueboot:resources:delete', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '资源管理', 6);
INSERT INTO `sys_resources` VALUES (20, b'1', '角色查询', 'ueboot:role:read', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '用户管理', 4);
INSERT INTO `sys_resources` VALUES (21, b'1', '分配角色', 'ueboot:userRole:save', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '用户管理', 4);
INSERT INTO `sys_resources` VALUES (22, b'1', '资源列表查询', 'ueboot:resources:read', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
INSERT INTO `sys_resources` VALUES (23, b'1', '权限查询', 'ueboot:userRole:read', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
INSERT INTO `sys_resources` VALUES (24, b'1', '权限分配', 'ueboot:userRole:save', NULL, '功能', NULL, NULL, NULL, NULL, NULL, NULL, '角色管理', 5);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `org_code` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_plpigyqwsqfn7mn66npgf9ftp` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, NULL, NULL, NULL, NULL, b'1', NULL, '最高用户权限', '超级管理员', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(20) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(20) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `org_code` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `credential_expired_date` datetime DEFAULT NULL,
  `is_locked` bit(1) DEFAULT NULL,
  `role_names` varchar(255) DEFAULT NULL,
  `role_ids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

alter table sys_user
	add valid bit default 1 null comment '是否有效';

-- ----------------------------
-- Records of sys_user
-- 默认用户名：root 密码:111111
-- ----------------------------

BEGIN;
INSERT INTO `sys_user` VALUES (1, NULL, NULL, 'root', '2018-10-13 23:50:51', NULL, 'd71e762f824bd6f39c505fa6804a3a20f3dc7e2fd8b4a0a5691bfd5326c061e2d84a0ee306a864955599f92c03840c5db3706a21484e8a0ee35539951e1f042b', 'root', '2099-03-30 14:18:21', b'0', '超级管理员', '1,2,',b'1');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhh52n8vd4ny9ff4x9fb8v65qx` (`role_id`),
  KEY `FKb40xxfch70f5qnyfw8yme1n1s` (`user_id`),
  CONSTRAINT `FKb40xxfch70f5qnyfw8yme1n1s` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKhh52n8vd4ny9ff4x9fb8v65qx` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (33, 1, 1, 'root', '2018-10-13 23:50:51', 'root', '2018-10-13 23:50:51');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
