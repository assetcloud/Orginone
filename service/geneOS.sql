/*
 Navicat Premium Data Transfer

 Source Server         : jgd_local
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : asset-platform-idm-prod

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 01/03/2021 21:26:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for act_adm_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_adm_databasechangelog`;
CREATE TABLE `act_adm_databasechangelog`  (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_adm_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_adm_databasechangeloglock`;
CREATE TABLE `act_adm_databasechangeloglock`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_adm_server_config
-- ----------------------------
DROP TABLE IF EXISTS `act_adm_server_config`;
CREATE TABLE `act_adm_server_config`  (
  `ID_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NAME_` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SERVER_ADDRESS_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PORT_` int(11) NULL DEFAULT NULL,
  `CONTEXT_ROOT_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `REST_ROOT_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `USER_NAME_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PASSWORD_` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ENDPOINT_TYPE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_id_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_id_bytearray`;
CREATE TABLE `act_id_bytearray`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_id_priv
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv`;
CREATE TABLE `act_id_priv`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PRIV_NAME`(`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_id_priv_mapping
-- ----------------------------
DROP TABLE IF EXISTS `act_id_priv_mapping`;
CREATE TABLE `act_id_priv_mapping`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_PRIV_MAPPING`(`PRIV_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_id_property
-- ----------------------------
DROP TABLE IF EXISTS `act_id_property`;
CREATE TABLE `act_id_property`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for act_id_token
-- ----------------------------
DROP TABLE IF EXISTS `act_id_token`;
CREATE TABLE `act_id_token`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `IP_ADDRESS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_AGENT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_agency_job
-- ----------------------------
DROP TABLE IF EXISTS `as_agency_job`;
CREATE TABLE `as_agency_job`  (
  `agency_id` bigint(20) NOT NULL COMMENT '部门id',
  `job_id` bigint(20) NOT NULL COMMENT '岗位id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门岗位关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_agency_person
-- ----------------------------
DROP TABLE IF EXISTS `as_agency_person`;
CREATE TABLE `as_agency_person`  (
  `agency_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `person_id` bigint(20) NULL DEFAULT NULL COMMENT '人员id',
  `zcy_person_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'zcy1.0personid',
  `zcy_depid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'zcy1.0部门id',
  INDEX `zcydep`(`zcy_depid`) USING BTREE,
  INDEX `zcy`(`zcy_person_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for as_agency_user
-- ----------------------------
DROP TABLE IF EXISTS `as_agency_user`;
CREATE TABLE `as_agency_user`  (
  `agency_id` bigint(20) NOT NULL COMMENT '部门id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `zcy_userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1.0id',
  `zcy_depid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1.0id',
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `agency_id`(`agency_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门用户关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_all_group
-- ----------------------------
DROP TABLE IF EXISTS `as_all_group`;
CREATE TABLE `as_all_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主码',
  `tenant_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租户编码(管理租户，默认为创建租户)',
  `group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '集团名称',
  `group_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '集团描述',
  `group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '集团编码',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `depth` bigint(20) NULL DEFAULT NULL COMMENT '深度',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '类型（1-集团，2-虚节点）',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1364152977578074114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_api_data_source
-- ----------------------------
DROP TABLE IF EXISTS `as_api_data_source`;
CREATE TABLE `as_api_data_source`  (
  `id` int(11) NOT NULL,
  `source_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'api名称',
  `source_type` tinyint(4) NOT NULL COMMENT '数据源对应数据类型（1：无；2：组织数据；3：用户数据）',
  `tenant_code` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '租户编码',
  `api_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'api地址',
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数集合',
  `api_method` tinyint(4) NOT NULL COMMENT '访问方式：get和post',
  `api_type` tinyint(4) NULL DEFAULT 1 COMMENT 'api类型',
  `api_header` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'api请求头',
  `api_cookie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'cookie',
  `content_type` tinyint(4) NULL DEFAULT 1 COMMENT '请求的与实体对应的MIME信息（依赖数据字典）',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新用户',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建用户',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_api_database_source
-- ----------------------------
DROP TABLE IF EXISTS `as_api_database_source`;
CREATE TABLE `as_api_database_source`  (
  `id` int(11) NOT NULL COMMENT 'id',
  `tenant_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '场景id（若是总管理员创建的，则为null）',
  `source_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '数据库源对应数据类型（1：无；2：组织数据；3：用户数据）',
  `source_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据源名称',
  `database_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库名称',
  `db_type` int(11) NOT NULL COMMENT '数据库类型，依赖数据字典，key->db-type',
  `db_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库url',
  `db_driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库驱动',
  `db_username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库用户名',
  `db_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库密码（是否加密？）',
  `sql_query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行的sql语句',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_api_param_mapping
-- ----------------------------
DROP TABLE IF EXISTS `as_api_param_mapping`;
CREATE TABLE `as_api_param_mapping`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `api_source_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库源id',
  `remote_user_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户id',
  `remote_user_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户登录账号',
  `remote_user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户姓名',
  `remote_user_phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户手机号码',
  `remote_user_extension` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户扩展属性',
  `remote_user_unit_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户所属部门id',
  `remote_unit_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程部门id',
  `remote_unit_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程部门名称',
  `remote_parent_unit_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程部门父节点id',
  `add_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_database_param_mapping
-- ----------------------------
DROP TABLE IF EXISTS `as_database_param_mapping`;
CREATE TABLE `as_database_param_mapping`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_base_source_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '数据库源id',
  `remote_user_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户id',
  `remote_user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户姓名',
  `remote_user_account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户登录账号',
  `remote_user_phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户手机号码',
  `remote_user_extension` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户扩展属性',
  `remote_user_unit_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程用户所属部门id',
  `remote_unit_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程部门id',
  `remote_unit_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程部门名称',
  `remote_parent_unit_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '远程部门父节点id',
  `add_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_dict
-- ----------------------------
DROP TABLE IF EXISTS `as_dict`;
CREATE TABLE `as_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父主键',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典码',
  `dict_key` int(11) NULL DEFAULT NULL COMMENT '字典值',
  `dict_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典备注',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  `currversion` int(11) NULL DEFAULT NULL COMMENT '当前版本号',
  `version` int(11) NULL DEFAULT NULL COMMENT '版本号',
  `dictparent_id` int(11) NULL DEFAULT NULL COMMENT '枚举父节点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1364390709617303554 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_dict_bak_20200917_1433
-- ----------------------------
DROP TABLE IF EXISTS `as_dict_bak_20200917_1433`;
CREATE TABLE `as_dict_bak_20200917_1433`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT '主键',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父主键',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典码',
  `dict_key` int(11) NULL DEFAULT NULL COMMENT '字典值',
  `dict_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典备注',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  `currversion` int(11) NULL DEFAULT NULL COMMENT '当前版本号',
  `version` int(11) NULL DEFAULT NULL COMMENT '版本号',
  `dictparent_id` int(11) NULL DEFAULT NULL COMMENT '枚举父节点'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_group
-- ----------------------------
DROP TABLE IF EXISTS `as_group`;
CREATE TABLE `as_group`  (
  `id` bigint(20) NOT NULL,
  `tenant_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `group_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '集团名称',
  `group_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '集团描述',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '数据状态 0-不可用  1-可用 ； 101-审核中',
  `apply_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请理由',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `is_deleted`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_group_tenant_relations
-- ----------------------------
DROP TABLE IF EXISTS `as_group_tenant_relations`;
CREATE TABLE `as_group_tenant_relations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父集团或租户id',
  `son_id` bigint(20) NULL DEFAULT NULL COMMENT '子集团或租户id',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '类型（1-集团，2-租户）',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `serial` bigint(20) NULL DEFAULT NULL COMMENT '序列号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '审核状态（101-申请中，102-审核通过，103-审核失败，104-取消申请）',
  `group_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '集团编码',
  `expires_time` datetime(0) NULL DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365900051985965058 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_inner_agency
-- ----------------------------
DROP TABLE IF EXISTS `as_inner_agency`;
CREATE TABLE `as_inner_agency`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `agency_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门编码(系统生成）',
  `tenant_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属租户ID',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父Id',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除；0-有效；1-删除；',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  `zcy_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1.0id',
  `zcy_parent_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1.0parentid',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`, `is_deleted`) USING BTREE,
  INDEX `zcypa`(`zcy_parent_id`) USING BTREE,
  INDEX `zcy`(`zcy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365195406791647235 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '内设机构表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_input_data
-- ----------------------------
DROP TABLE IF EXISTS `as_input_data`;
CREATE TABLE `as_input_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '导入的文件名称',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表名称',
  `type` int(2) NULL DEFAULT 0 COMMENT '导入类型 0-文件 1-数据',
  `status` int(11) NULL DEFAULT 1 COMMENT '文件导入状态 0-导入中，1-成功； 2-失败',
  `t_count` int(11) NULL DEFAULT 0 COMMENT '数据成功导入条数',
  `f_count` int(11) NULL DEFAULT 0 COMMENT '数据失败导入条数',
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '数据失败原因',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间（即开始导入时间）',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否有效 0-有效  1-删除',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `total_time` double(6, 3) NULL DEFAULT NULL COMMENT '总共耗时（单位s）',
  `file_id` bigint(20) NULL DEFAULT NULL COMMENT '关联导入文件id',
  `import_type` int(11) NULL DEFAULT NULL,
  `tenant_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365909245665452035 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for as_job
-- ----------------------------
DROP TABLE IF EXISTS `as_job`;
CREATE TABLE `as_job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `job_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `tenant_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '租户编码',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态',
  `zcy_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '1.0id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365553458342502402 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_job_person
-- ----------------------------
DROP TABLE IF EXISTS `as_job_person`;
CREATE TABLE `as_job_person`  (
  `person_id` bigint(20) NULL DEFAULT NULL,
  `job_id` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for as_layer
-- ----------------------------
DROP TABLE IF EXISTS `as_layer`;
CREATE TABLE `as_layer`  (
  `id` bigint(20) NOT NULL COMMENT '主码',
  `layer` bigint(20) NULL DEFAULT NULL COMMENT '层级',
  `width` bigint(20) NULL DEFAULT NULL COMMENT '宽度',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '集团id',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app`;
CREATE TABLE `as_market_app`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用图标',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用版本',
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人联系方式',
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人姓名',
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用描述',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署文件',
  `sale_status` int(11) NULL DEFAULT NULL COMMENT '上下架状态：0-下架，1-上架',
  `tenant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传应用租户ID',
  `platform` int(11) NULL DEFAULT NULL COMMENT '适配平台：1-pc，2-移动端，3-自适应',
  `target_user` int(11) NULL DEFAULT NULL COMMENT '目标用户：1-个人，2-单位，3-集团',
  `status` int(11) NULL DEFAULT NULL COMMENT '审核状态：0-注册申请，1-注册通过，2-注册拒绝，3-部署申请，4-部署通过，5-部署拒绝，6-发布申请，7-发布通过，8-发布拒绝',
  `deploy_status` int(11) NULL DEFAULT NULL COMMENT '部署状态：0-未部署，1-部署中，2-已部署',
  `deploy_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署地址',
  `deploy_type` int(11) NULL DEFAULT NULL COMMENT '部署方式：0-集成部署，1-独立部署',
  `publish_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `app_type` int(11) NULL DEFAULT NULL COMMENT '应用类型',
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `app_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用地址',
  `app_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用邮箱',
  `app_photo` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用照片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365125041855897602 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app_apply
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app_apply`;
CREATE TABLE `as_market_app_apply`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称，申请时填写',
  `app_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用说明，申请时填写',
  `developer_id` bigint(20) NULL DEFAULT NULL COMMENT '开发者id',
  `apply_date` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `license_date` datetime(0) NULL DEFAULT NULL COMMENT '许可开始时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（申请、许可生效、许可注销、申请失败）',
  `feedback` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批反馈',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用申请表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app_group_distribution
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app_group_distribution`;
CREATE TABLE `as_market_app_group_distribution`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用id',
  `tenant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被分配租户id',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '集团id',
  `if_used` tinyint(1) NULL DEFAULT 0 COMMENT '0：非常用应用；1：常用应用',
  `use_status` tinyint(1) NULL DEFAULT NULL COMMENT '0：停用；1：启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365126412550250498 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app_group_distribution_relation
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app_group_distribution_relation`;
CREATE TABLE `as_market_app_group_distribution_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用id',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '集团id',
  `relation_id` bigint(20) NULL DEFAULT NULL COMMENT '被分配租户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365126182115188739 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app_key_secret
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app_key_secret`;
CREATE TABLE `as_market_app_key_secret`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT 'app_id主键',
  `app_key` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用id，随机生成',
  `app_secret` char(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用加密密钥，随机生成',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（申请、许可生效、许可注销、申请失败）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365125117621805058 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用密钥表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app_purchase
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app_purchase`;
CREATE TABLE `as_market_app_purchase`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用主键',
  `tenant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租户id',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '集团id',
  `if_used` tinyint(1) NULL DEFAULT 0 COMMENT '0：非常用应用；1：常用应用',
  `use_status` tinyint(1) NULL DEFAULT NULL COMMENT '0：停用；1：启用',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365841030662823939 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_app_role
-- ----------------------------
DROP TABLE IF EXISTS `as_market_app_role`;
CREATE TABLE `as_market_app_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365125945891987458 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_menu
-- ----------------------------
DROP TABLE IF EXISTS `as_market_menu`;
CREATE TABLE `as_market_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级菜单',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单url',
  `menu_column` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单字段',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365125946424664066 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_role_distribution
-- ----------------------------
DROP TABLE IF EXISTS `as_market_role_distribution`;
CREATE TABLE `as_market_role_distribution`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `agency_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `job_id` bigint(20) NULL DEFAULT NULL COMMENT '岗位id',
  `tenant_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tenant_code`(`tenant_code`, `role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365941235982770179 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_market_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `as_market_role_menu`;
CREATE TABLE `as_market_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365125946521133059 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_menu
-- ----------------------------
DROP TABLE IF EXISTS `as_menu`;
CREATE TABLE `as_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单别名(拼音自动生成)',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `sort` int(2) NULL DEFAULT NULL COMMENT '排序值',
  `category` bigint(20) NOT NULL DEFAULT 1 COMMENT '菜单类型',
  `is_open` int(2) NULL DEFAULT NULL COMMENT '是否打开新页面',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '数据状态',
  `is_deleted` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否被删除',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` bigint(20) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1356165536799858691 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_menu_attr
-- ----------------------------
DROP TABLE IF EXISTS `as_menu_attr`;
CREATE TABLE `as_menu_attr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attr_id` int(11) NOT NULL COMMENT '租户属性编号',
  `menu_id` int(11) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `as_menu_role`;
CREATE TABLE `as_menu_role`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单编号',
  `role_id` bigint(20) NOT NULL COMMENT '角色编号'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_meta_ref
-- ----------------------------
DROP TABLE IF EXISTS `as_meta_ref`;
CREATE TABLE `as_meta_ref`  (
  `id` int(11) NOT NULL COMMENT '主键id',
  `source_table` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '源数据库表名',
  `source_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '源数据库表列名',
  `meta_data_id` int(11) NOT NULL COMMENT '元数据对应id',
  `target_table` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目标数据库表名',
  `target_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标数据库列名',
  `is_deleted` int(11) NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `create_user` int(11) NOT NULL,
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` int(11) NOT NULL,
  `status` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_nb_unit
-- ----------------------------
DROP TABLE IF EXISTS `as_nb_unit`;
CREATE TABLE `as_nb_unit`  (
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zzjb_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shifmjjd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for as_person
-- ----------------------------
DROP TABLE IF EXISTS `as_person`;
CREATE TABLE `as_person`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户代码',
  `tenant_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '真实姓名',
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号码',
  `gender` bigint(20) NULL DEFAULT NULL COMMENT '性别：\r\n1、男\r\n2、女',
  `user_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_photo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户照片',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最后一次更新时间戳',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '添加者',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改者',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 1：有效 0：无效',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '用户状态：0-不可用 1-审核中 2-可用',
  `user_id` bigint(20) NOT NULL COMMENT '对应用户数据id',
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户手机号',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户code',
  `zcy_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '1.0id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `real_name`(`tenant_code`, `real_name`) USING BTREE,
  INDEX `phone_number`(`tenant_code`, `phone_number`) USING BTREE,
  INDEX `user_id`(`tenant_code`, `user_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `zcy`(`zcy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365914176413736962 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '人员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_person_copy1
-- ----------------------------
DROP TABLE IF EXISTS `as_person_copy1`;
CREATE TABLE `as_person_copy1`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户代码',
  `tenant_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号码',
  `gender` bigint(20) NULL DEFAULT NULL COMMENT '性别：\r\n1、男\r\n2、女',
  `user_birthday` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_photo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户照片',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最后一次更新时间戳',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '添加者',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改者',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 1：有效 0：无效',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '用户状态：0-不可用 1-审核中 2-可用',
  `user_id` bigint(20) NOT NULL COMMENT '对应用户数据id',
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户手机号',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户code',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tenant_code`(`tenant_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1313760061879427074 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '人员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_properties
-- ----------------------------
DROP TABLE IF EXISTS `as_properties`;
CREATE TABLE `as_properties`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `properties_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `group_id` bigint(20) NOT NULL COMMENT '租户id',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1301411616814768131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_properties_distribution
-- ----------------------------
DROP TABLE IF EXISTS `as_properties_distribution`;
CREATE TABLE `as_properties_distribution`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `properties_id` bigint(20) NOT NULL COMMENT '性质id',
  `tenant_id` bigint(20) NOT NULL COMMENT '租户id',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1301411616852516867 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_redeploy_data
-- ----------------------------
DROP TABLE IF EXISTS `as_redeploy_data`;
CREATE TABLE `as_redeploy_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用id',
  `application` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '应用详情',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态(0-申请，1-通过，2-拒绝)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1364832214370459651 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_role
-- ----------------------------
DROP TABLE IF EXISTS `as_role`;
CREATE TABLE `as_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `role_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色别名（角色名的首字母拼音），可用于接口鉴权，自动生成',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名',
  `role_description` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色描述',
  `update_user` bigint(20) NOT NULL DEFAULT 0 COMMENT '更新用户',
  `create_user` bigint(20) NOT NULL DEFAULT 0 COMMENT '添加用户',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '数据状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_role_group
-- ----------------------------
DROP TABLE IF EXISTS `as_role_group`;
CREATE TABLE `as_role_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_group_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `scene_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_role_job
-- ----------------------------
DROP TABLE IF EXISTS `as_role_job`;
CREATE TABLE `as_role_job`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `job_id` bigint(20) NOT NULL COMMENT '岗位id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_tenant
-- ----------------------------
DROP TABLE IF EXISTS `as_tenant`;
CREATE TABLE `as_tenant`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tenant_code` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '' COMMENT '租户编码（系统生成）',
  `tenant_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户id',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `tenant_type` bigint(20) NULL DEFAULT 1 COMMENT '租户类型（1普通租户；2区划租户；3超管租户）',
  `status` int(11) NULL DEFAULT NULL COMMENT '租户状态（2-可用；1-审核中；0-不可用）',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否被删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tenant_name`(`tenant_name`) USING BTREE,
  INDEX `tenant_code`(`tenant_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1364486556891942915 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_tenant_attr
-- ----------------------------
DROP TABLE IF EXISTS `as_tenant_attr`;
CREATE TABLE `as_tenant_attr`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `attr_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'tenantType对应的名字，也就是租户类型的名字',
  `attr_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型备注',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_tenant_attr_role
-- ----------------------------
DROP TABLE IF EXISTS `as_tenant_attr_role`;
CREATE TABLE `as_tenant_attr_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `attr_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_default` int(11) NULL DEFAULT 0 COMMENT '是否为默认角色；1-为默认，',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '租户组-角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_tenant_icon
-- ----------------------------
DROP TABLE IF EXISTS `as_tenant_icon`;
CREATE TABLE `as_tenant_icon`  (
  `id` bigint(20) NOT NULL COMMENT '主码',
  `tenant_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租户编码',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '创建用户',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '更新用户',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否被删除',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_unit
-- ----------------------------
DROP TABLE IF EXISTS `as_unit`;
CREATE TABLE `as_unit`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `unit_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '单位名称',
  `unit_name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位英文名称',
  `organization_form` int(11) NULL DEFAULT NULL COMMENT '组织形式：\r\n10、公司制企业（11.国有独资企业 12.其他有限责任公司 13.上市股份有限公司 股票代码 14。非上市股份有限公司）20.公司制企业（21.非公司制独资企业 22.其他非公司制企业） 30.企业化管理事业单位 40。其他',
  `unit_type` int(11) NULL DEFAULT NULL COMMENT '单位分类\r\n1、主管部门 \r\n2、二级单位 \r\n3、基层单位 \r\n\r\n100、政府财政事务 \r\n200、安全管理事务 \r\n300、',
  `parent_node_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级单位名称',
  `charge_section_id` bigint(20) NULL DEFAULT NULL COMMENT '主管部门id',
  `charge_section_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主管部门code',
  `charge_section_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主管部门名称',
  `local_financial_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本级财政代码',
  `local_financial_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本级财政名称',
  `local_financial_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本级财政id',
  `office_administration_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本级机关事务管理局代码',
  `office_administration_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本级机关事务管理局名称',
  `administration_division_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政区划代码',
  `administration_division_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政区划名称',
  `budget_code` int(11) NULL DEFAULT NULL COMMENT '财政预算代码：\r\n编码方法：采用层次码，用数字表示,代码结构为每3位一层。一级单位3位码,二级单位6位码,……,七级单位21位码。其中，预算单位本级由该预算单位的单位层次码加上001表示。中央一级预算单位统一的3位代码表见表5。 \r\n应用范围：中央使用,地方参照。 \r\n\r\n代码	名称 \r\n101	国务院办公厅 \r\n102	国家发展和改革委员会 \r\n105	教育部 \r\n106	科学技术部 \r\n107	国家国防科技工业局 \r\n108	国家民族事务委员会 \r\n109	国家体育总局 \r\n110	国家人口和计划生育委员会 \r\n111	公安部 \r\n112	国家安全部 \r\n113	司法部 \r\n114	外交部 \r\n115	监察部 \r\n117	人力资源和社会保障部 \r\n118	民政部 \r\n119	财政部 \r\n120	住房和城乡建设部 \r\n121	国土资源部 \r\n122	铁道部 \r\n123	交通运输部 \r\n124	工业和信息化部 \r\n125	农业部 \r\n126	水利部 \r\n127	全国社会保障基金理事会',
  `college_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '高等院校代码\r\n院校代号即院校代码或学校代码，为全国各高校录取时为方便考生填报志愿而加注的由数字组成的代号串。院校代码就如同是学校的一个身份证号，方便查询学校信息，教育部为高校编排的代码有5位（此代码全国通用），各省教育考试院为高校编排代码有4位（此代码一般作填报高考志愿用，同一所高校在不同省份代码也不一样），由于高校办学情况每年都有变动，所以高校代码也有变化。 \r\n\r\n10001 北京大学 北京医科大学并入 ',
  `organization_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构代码\r\n组织机构代码按照强制性国家标准GB11714《全国组织机构代码编制规则》编制，由八位数字(或大写拉丁字母)本体代码和一位数字(或大写拉丁字母)校验码组成。组织机构代码证组织机构代码证书包括正本、副本和电子副本(IC卡)，代码登记部门在为组织机构赋码发证的同时，还要采集28项基础信息，并按照国家标准对这些信息进行编码，将这些信息存入代码数据库和代码证电子副本(IC卡)中，供代码应用部门使用。代码登记部门所采集的基础信息包括:机构名称、机构地址、机构类型、经济性质、行业分类、规模、法人代表等。',
  `unit_type_code` int(11) NULL DEFAULT NULL COMMENT '单位类型名称\r\n代码	名称	说明 \r\n1	行政	指依宪法和有关组织法的规定设置的，行使国家行政职权，负责对国家各项行政事务进行组织、管理、监督和指挥的国家机关。这里包括行政、立法、司法、军队、党务等按公务员法管理的单位。 \r\n2	事业	为了社会公益目的，从事教育、文化、卫生、科技等活动并以非盈利性为主的社会服务组织。 \r\n3	参公	参照公务员法管理的单位。 \r\n4、 企业 企业单位 \r\n9	其他	除上述行政、事业外的其他单位。',
  `unit_type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位类型名称\r\n代码	名称	说明 \r\n1	行政	指依宪法和有关组织法的规定设置的，行使国家行政职权，负责对国家各项行政事务进行组织、管理、监督和指挥的国家机关。这里包括行政、立法、司法、军队、党务等按公务员法管理的单位。 \r\n2	事业	为了社会公益目的，从事教育、文化、卫生、科技等活动并以非盈利性为主的社会服务组织。 \r\n3	参公	参照公务员法管理的单位。 \r\n4、 企业 企业单位 \r\n9	其他	除上述行政、事业外的其他单位。',
  `unit_basic_property` int(11) NULL DEFAULT NULL COMMENT '单位基本性质',
  `social_credit_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统一社会信用代码',
  `budget_unit_name` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预算单位级次名称\r\n代码	名称 \r\n1	一级 \r\n2	二级 \r\n3	三级 \r\n4	四级 \r\n5	五级 \r\n6	六级 \r\n7	七级',
  `budget_unit_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预算单位级次代码',
  `budget_management_level` int(11) NULL DEFAULT NULL COMMENT '预算管理级次\r\n1、中央级 \r\n2、省级 \r\n3、地（市）级 \r\n4、县级 \r\n5、乡镇级',
  `firm_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业名称\r\n采用国家标准GB/T 4754《国民经济行业分类》。 \r\n编码方法：采用层次码，第1位英文字母表示门类；第2、3位数字表示大类；第4位数字表示中类；第5位数字表示小类。 \r\n\r\n经营性国有资产、行政事业性国有资产、金融性国有资产和资源性国有资产的主体分类是否可以按照这个标准出。',
  `firm_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行业代码\r\n代码	名称 \r\nA	农、林、牧、渔业 \r\nA01	农业 \r\nA011	种植业 \r\n…	…… \r\nA019	其他农业 \r\n…	…… \r\nB	采掘业 \r\n…	…… \r\nC	制造业 \r\n…	… \r\nC13	食品加工业 \r\nC131	粮食及饲料加工业 \r\nC1311	碾米业 ',
  `telephone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `fax_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真号码',
  `email_address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县',
  `street_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '街道地址',
  `postal_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `fund_supply_mode_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fund_supply_mode_code` int(11) NULL DEFAULT NULL COMMENT '经费供给方式代码：\r\n代码	名称	说明 \r\n1	全额	指由财政供应全部经费的预算单位。 \r\n2	差额	指财政按单位收支差额供应经费的预算单位。 \r\n3	自收自支	不靠财政供应经费的预算单位。 \r\n9	其他	指财政按其他方式供应经费的预算单位。',
  `administration_level_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `administration_level_type` int(11) NULL DEFAULT NULL COMMENT '行政单位部门性质分类代码',
  `department_category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_department_classification_code` int(11) NULL DEFAULT NULL COMMENT '事业单位部门性质分类代码：\r\n代码	名称 \r\n1	行政单位 \r\n11	共产党机关 \r\n12	政府机关 \r\n13	人大机关 \r\n14	政协机关 \r\n15	民主党派机关 \r\n16	群众团体 \r\n2	公检法司 \r\n21	公安 \r\n22	检察 \r\n23	法院 \r\n24	司法行政 \r\n25	监狱 \r\n26	劳教 \r\n29	其他 \r\n3	驻外机构 \r\n\r\n代码	名称 \r\n1	农、林、牧、渔业 \r\n2	交通运输、仓储和邮政业 \r\n3	科学研究、技术服务和地质勘查业 \r\n4	水利、环境和公共设施管理业 \r\n5	教育 \r\n6	卫生、社会保障和社会福利业 \r\n7	文化、体育和娱乐业 \r\n9	其他',
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `corporate_representative` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `economic_type` int(11) NULL DEFAULT NULL COMMENT '经济类型：\r\n10、国有及国有控股（是否中外合资合作企业 11.是 12，否） \r\n20、厂办大集体（21 中央企厂办大集体 22、中央下放企业厂办大集体；23、地方企业厂办大集体） 30.其他城镇计提',
  `financial_affiliation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财务隶属关系（行政隶属关系代码-部门标识代码）',
  `financial_unit` tinyint(1) NULL DEFAULT NULL COMMENT '是否财政单位',
  `vertical_unit` tinyint(1) NULL DEFAULT NULL COMMENT '是否垂管单位',
  `virtual_unit` tinyint(1) NULL DEFAULT NULL COMMENT '是否虚拟单位',
  `accounting_system` int(11) NULL DEFAULT NULL COMMENT '单位执行会计制度:\r\n10.行政单位会计制度 \r\n20.事业单位会计制度 \r\n21.科学事业单位会计制度 \r\n22.中小学校会计制度 \r\n23.高等学校会计制度 \r\n24.医院会计制度 \r\n25.基层医疗卫生机构会计制度 \r\n26.测绘事业单位会计制度 \r\n27.地质勘查单位会计制度 \r\n28.彩票机构会计制度 \r\n30.民间非营利组织会计制度 \r\n50.其他',
  `corporate_tag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业标志',
  `maintainer_mark` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维修商标志',
  `supplier_mark` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供应商标志',
  `manufacture_mark` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '制造商标志',
  `asset_disposal_agency_tag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资产处置代理机构标志',
  `state_asset_management_company` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国有资产经营公司标志',
  `institution_number` int(11) NULL DEFAULT NULL COMMENT '事业编制人数',
  `authorized_number` int(11) NULL DEFAULT NULL COMMENT '行政编制人数',
  `institution_authority` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事业编制',
  `administration_authority` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行政编制',
  `enable_time` datetime(0) NULL DEFAULT NULL COMMENT '启用时间',
  `disable_time` datetime(0) NULL DEFAULT NULL COMMENT '停用时间',
  `seal_time` datetime(0) NULL DEFAULT NULL COMMENT '封存时间',
  `unit_remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `asset_download_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资产数据下载状态',
  `latitude_and_longitude` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'GPS经纬度',
  `sort` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '排序',
  `organ_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织（单位）编码',
  `update_user` bigint(20) NULL DEFAULT NULL,
  `create_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '插入时间',
  `is_deleted` int(11) NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '状态 1：有效 0：无效',
  `had_inner_number` int(11) NULL DEFAULT NULL COMMENT '实有内设机构数量',
  `approve_inner_number` int(11) NULL DEFAULT NULL COMMENT '批准内设机构数量',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位logo',
  `link_man` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位联系人',
  `link_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位管理员联系方式',
  `tenant_id` bigint(20) NULL DEFAULT NULL COMMENT '租户id',
  `unit_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位编码',
  `charge_section_id_zcy` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主管部门zcy1.0id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `unit_name`(`unit_name`, `is_deleted`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1364486560188665858 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_units_relation
-- ----------------------------
DROP TABLE IF EXISTS `as_units_relation`;
CREATE TABLE `as_units_relation`  (
  `source_id` bigint(20) NOT NULL COMMENT '源单位节点',
  `target_id` bigint(20) NOT NULL COMMENT '目标单位节点',
  `create_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '生效时间',
  `type` bigint(20) NOT NULL COMMENT '边的类型（关联枚举字典）',
  `expires_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '失效时间',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '集团id',
  `create_user` bigint(20) NULL DEFAULT NULL,
  `update_user` bigint(20) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `is_deleted` int(11) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0 COMMENT '0-不可用； 1-可用；101-审核中；102激活中；103-全部的',
  INDEX `type`(`group_id`, `type`) USING BTREE,
  INDEX `target_id`(`group_id`, `type`, `target_id`) USING BTREE,
  INDEX `status`(`group_id`, `type`, `target_id`, `status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '单位关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_user
-- ----------------------------
DROP TABLE IF EXISTS `as_user`;
CREATE TABLE `as_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户代码',
  `tenant_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '租户id',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机号码',
  `is_admin` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否是超级管理员',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最后一次更新时间戳',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `create_user` bigint(20) NULL DEFAULT NULL COMMENT '添加者',
  `update_user` bigint(20) NULL DEFAULT NULL COMMENT '修改者',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 1：有效 0：无效',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '用户状态：0-不可用 1-审核中 2-可用',
  `tenant_applying_state` int(11) NULL DEFAULT 0 COMMENT '与租户的隶属关系： 0-注册,新增来的，1-申请的并在审核中的，2-审核通过的（已加入的）3 审核拒绝的，4-全部的 5-0和2的集合',
  `is_master` tinyint(4) NULL DEFAULT NULL COMMENT '主从关系：1->主；0->从；',
  `is_created` tinyint(2) NULL DEFAULT 3 COMMENT '0-租户创建者，1-租户单位管理员，2-既是租户创建者又是单位管理员，3-都不是',
  `zcy_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '1.0id',
  `open_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '移动端openid',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户姓名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_name`(`tenant_code`, `user_name`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `phone_number2`(`phone_number`) USING BTREE,
  INDEX `tenant_code2`(`id`, `tenant_code`) USING BTREE,
  INDEX `is_deleted2`(`id`, `is_deleted`) USING BTREE,
  INDEX `status`(`id`, `is_deleted`, `status`) USING BTREE,
  INDEX `tenphis`(`tenant_code`, `phone_number`, `is_deleted`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1365931717350576130 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_user_job
-- ----------------------------
DROP TABLE IF EXISTS `as_user_job`;
CREATE TABLE `as_user_job`  (
  `job_id` bigint(20) NOT NULL COMMENT '岗位id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_user_login_time
-- ----------------------------
DROP TABLE IF EXISTS `as_user_login_time`;
CREATE TABLE `as_user_login_time`  (
  `user_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `cur_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `before_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_user_role
-- ----------------------------
DROP TABLE IF EXISTS `as_user_role`;
CREATE TABLE `as_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `zcy_userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1.0id',
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `zcy`(`zcy_userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_uuuu
-- ----------------------------
DROP TABLE IF EXISTS `as_uuuu`;
CREATE TABLE `as_uuuu`  (
  `单位名称` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `统一信用代码` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `单位性质` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `主管部门` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `级次` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `区划` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `编制` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `实有` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for as_zone_tree
-- ----------------------------
DROP TABLE IF EXISTS `as_zone_tree`;
CREATE TABLE `as_zone_tree`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zone_all_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划全称',
  `zone_short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划简称',
  `layer` tinyint(4) NULL DEFAULT NULL COMMENT '行政区划级别：0-国；1-省；2-市；3-县；4-乡；5-村；6-组；',
  `organ_parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存的是实体树是父节点id',
  `child_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存的是实体树中一级子节点id',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '区划中的父id',
  `zone_ad_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划行政代码',
  `change_type` tinyint(4) NULL DEFAULT NULL COMMENT '1-创建；2-更名；3-拆分；4-合并',
  `update_time` datetime(4) NULL DEFAULT NULL COMMENT '更新时间',
  `start_time` datetime(4) NULL DEFAULT NULL COMMENT '开始时间（从2001-01-01开始）',
  `create_time` datetime(4) NULL DEFAULT NULL COMMENT '创建时间',
  `un_merge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合并前所有id',
  `splited_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '拆分后的所有id',
  `un_change_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更前id',
  `changed_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更后id',
  `is_deleted` tinyint(4) NULL DEFAULT NULL COMMENT '是否删除：0-可用；1-删除；',
  `zone_type` tinyint(4) NULL DEFAULT NULL COMMENT '区划类型（预留）；1- ；2- ；，，，',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态：1正常；0不可用',
  `zone_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '区划组织树' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for as_zone_tree_copy1
-- ----------------------------
DROP TABLE IF EXISTS `as_zone_tree_copy1`;
CREATE TABLE `as_zone_tree_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zone_all_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划全称',
  `zone_short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划简称',
  `layer` tinyint(4) NULL DEFAULT NULL COMMENT '行政区划级别：0-国；1-省；2-市；3-县；4-乡；5-村；6-组；',
  `organ_parent_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存的是实体树是父节点id',
  `child_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存的是实体树中一级子节点id',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '区划中的父id',
  `zone_ad_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划行政代码',
  `change_type` tinyint(4) NULL DEFAULT NULL COMMENT '1-创建；2-更名；3-拆分；4-合并',
  `update_time` datetime(4) NULL DEFAULT NULL COMMENT '更新时间',
  `start_time` datetime(4) NULL DEFAULT NULL COMMENT '开始时间（从2001-01-01开始）',
  `create_time` datetime(4) NULL DEFAULT NULL COMMENT '创建时间',
  `un_merge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '合并前所有id',
  `splited_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '拆分后的所有id',
  `un_change_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更前id',
  `changed_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '变更后id',
  `is_deleted` tinyint(4) NULL DEFAULT NULL COMMENT '是否删除：0-可用；1-删除；',
  `zone_type` tinyint(4) NULL DEFAULT NULL COMMENT '区划类型（预留）；1- ；2- ；，，，',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态：1正常；0不可用',
  `zone_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '区划代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '区划组织树' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for basedata_assetclass
-- ----------------------------
DROP TABLE IF EXISTS `basedata_assetclass`;
CREATE TABLE `basedata_assetclass`  (
  `RECID` bigint(20) NOT NULL,
  `RECVER` bigint(20) NULL DEFAULT NULL,
  `OLDID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SHIFOUMJJD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_` decimal(20, 2) NULL DEFAULT NULL,
  `JILIANGDW` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ZICHANDLID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SHORTNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LEVEL` decimal(20, 2) NULL DEFAULT NULL,
  `PARENTID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` int(11) NULL DEFAULT NULL,
  `fenLeiGBidId` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SHIYNX` float NULL DEFAULT NULL,
  `ZUIGAOSYNX` float(19, 2) NULL DEFAULT NULL,
  `STYLEID` bigint(20) NULL DEFAULT NULL,
  `ORGID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`RECID`) USING BTREE,
  INDEX ```RECID``, ``OLDID``, ``CODE```(`RECID`, `OLDID`, `CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for basedata_assetsort_gb
-- ----------------------------
DROP TABLE IF EXISTS `basedata_assetsort_gb`;
CREATE TABLE `basedata_assetsort_gb`  (
  `RECID` bigint(20) NOT NULL,
  `RECVER` bigint(20) NULL DEFAULT NULL,
  `OLDID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SHIFOUMJJD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_` decimal(20, 2) NULL DEFAULT NULL,
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SHORTNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `UNUSED_STATE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENTID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` int(11) NULL DEFAULT NULL,
  `ORGID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`RECID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for basedata_clpp
-- ----------------------------
DROP TABLE IF EXISTS `basedata_clpp`;
CREATE TABLE `basedata_clpp`  (
  `RECID` bigint(20) NOT NULL,
  `RECVER` bigint(20) NULL DEFAULT NULL,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME` varchar(70) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `STATE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORDER_` decimal(20, 2) NULL DEFAULT NULL,
  `OLDID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SHORTNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENTID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SHIFOUMJJD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LEVEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ORGID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`RECID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for basedata_landclassuse
-- ----------------------------
DROP TABLE IF EXISTS `basedata_landclassuse`;
CREATE TABLE `basedata_landclassuse`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATE` tinyint(1) NULL DEFAULT NULL,
  `ORDER_` float(19, 2) NULL DEFAULT NULL,
  `OLDID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SHORTNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PARENTID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SHIFOUMJJD` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LEVEL` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RECID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RECVER` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ORGID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for blade_blog
-- ----------------------------
DROP TABLE IF EXISTS `blade_blog`;
CREATE TABLE `blade_blog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blog_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `is_deleted` int(11) NULL DEFAULT 0,
  `testclo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_client
-- ----------------------------
DROP TABLE IF EXISTS `blade_client`;
CREATE TABLE `blade_client`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `client_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户端id',
  `client_secret` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户端密钥',
  `resource_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源集合',
  `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权范围',
  `authorized_grant_types` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '授权类型',
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回调地址',
  `authorities` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限',
  `access_token_validity` int(11) NOT NULL COMMENT '令牌过期秒数',
  `refresh_token_validity` int(11) NOT NULL COMMENT '刷新令牌过期秒数',
  `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '附加说明',
  `autoapprove` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '自动授权',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NOT NULL COMMENT '状态',
  `is_deleted` int(11) NOT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_code
-- ----------------------------
DROP TABLE IF EXISTS `blade_code`;
CREATE TABLE `blade_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `service_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务名称',
  `code_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模块名称',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表名',
  `table_prefix` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表前缀',
  `pk_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主键名',
  `package_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '后端包名',
  `api_path` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '后端路径',
  `web_path` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '前端路径',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_dept
-- ----------------------------
DROP TABLE IF EXISTS `blade_dept`;
CREATE TABLE `blade_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tenant_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户编号',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父主键',
  `dept_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名',
  `full_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门全称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_dict
-- ----------------------------
DROP TABLE IF EXISTS `blade_dict`;
CREATE TABLE `blade_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父主键',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典码',
  `dict_key` int(11) NULL DEFAULT NULL COMMENT '字典值',
  `dict_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '字典备注',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_log_api
-- ----------------------------
DROP TABLE IF EXISTS `blade_log_api`;
CREATE TABLE `blade_log_api`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户ID',
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务ID',
  `server_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器名',
  `server_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器IP地址',
  `env` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器环境',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '日志标题',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作方式',
  `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求URI',
  `user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理',
  `remote_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `method_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法类',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作提交的数据',
  `time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '接口日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_log_error
-- ----------------------------
DROP TABLE IF EXISTS `blade_log_error`;
CREATE TABLE `blade_log_error`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户ID',
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务ID',
  `server_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器名',
  `server_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器IP地址',
  `env` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统环境',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作方式',
  `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求URI',
  `user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理',
  `stack_trace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '堆栈',
  `exception_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常名',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '异常信息',
  `line_number` int(11) NULL DEFAULT NULL COMMENT '错误行数',
  `remote_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `method_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法类',
  `file_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作提交的数据',
  `time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '错误日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_log_usual
-- ----------------------------
DROP TABLE IF EXISTS `blade_log_usual`;
CREATE TABLE `blade_log_usual`  (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `tenant_id` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户ID',
  `service_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务ID',
  `server_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器名',
  `server_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器IP地址',
  `env` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统环境',
  `log_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志级别',
  `log_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志业务id',
  `log_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '日志数据',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作方式',
  `request_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求URI',
  `remote_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `method_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法类',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '方法名',
  `user_agent` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理',
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '操作提交的数据',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '执行时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通用日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_menu
-- ----------------------------
DROP TABLE IF EXISTS `blade_menu`;
CREATE TABLE `blade_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父级菜单',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单别名',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求地址',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单资源',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `category` int(11) NULL DEFAULT NULL COMMENT '菜单类型',
  `action` int(11) NULL DEFAULT 0 COMMENT '操作按钮类型',
  `is_open` int(11) NULL DEFAULT 1 COMMENT '是否打开新页面',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_notice
-- ----------------------------
DROP TABLE IF EXISTS `blade_notice`;
CREATE TABLE `blade_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tenant_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `category` int(11) NULL DEFAULT NULL COMMENT '类型',
  `release_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '内容',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_param
-- ----------------------------
DROP TABLE IF EXISTS `blade_param`;
CREATE TABLE `blade_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `param_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数名',
  `param_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数键',
  `param_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '参数值',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_role
-- ----------------------------
DROP TABLE IF EXISTS `blade_role`;
CREATE TABLE `blade_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tenant_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户编号',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父主键',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `role_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色别名',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `blade_role_menu`;
CREATE TABLE `blade_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) NULL DEFAULT NULL COMMENT '菜单id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_tenant
-- ----------------------------
DROP TABLE IF EXISTS `blade_tenant`;
CREATE TABLE `blade_tenant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tenant_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '租户编号',
  `tenant_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '租户名称',
  `linkman` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系地址',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for blade_user
-- ----------------------------
DROP TABLE IF EXISTS `blade_user`;
CREATE TABLE `blade_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tenant_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '000000' COMMENT '租户编号',
  `account` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '真名',
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `birthday` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `sex` smallint(6) NULL DEFAULT NULL COMMENT '性别',
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色id',
  `dept_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门id',
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT 0 COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_act_history
-- ----------------------------
DROP TABLE IF EXISTS `core_act_history`;
CREATE TABLE `core_act_history`  (
  `recid` bigint(20) NOT NULL,
  `todotitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `todocontent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pcformlink` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mobileformlink` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `launshperson` bigint(20) NULL DEFAULT NULL,
  `launshunit` bigint(20) NULL DEFAULT NULL,
  `launshdepartment` bigint(20) NULL DEFAULT NULL,
  `launshappid` bigint(20) NULL DEFAULT NULL,
  `launshappname` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `starttime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `finishtime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `procid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ifread` tinyint(1) NULL DEFAULT NULL,
  `taskid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `launshSendPerson` bigint(20) NULL DEFAULT NULL,
  `launshSendTenantCode` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送人所在租户',
  PRIMARY KEY (`recid`) USING BTREE,
  INDEX `launshperson`(`launshperson`) USING BTREE,
  INDEX `launshSendPerson`(`launshSendTenantCode`, `launshSendPerson`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_act_todo
-- ----------------------------
DROP TABLE IF EXISTS `core_act_todo`;
CREATE TABLE `core_act_todo`  (
  `recid` bigint(20) NOT NULL,
  `todotitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `todocontent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `todotype` int(11) NULL DEFAULT NULL COMMENT '1、待办；2、已办',
  `pcformlink` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mobileformlink` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `todotime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `todoperson` bigint(20) NULL DEFAULT NULL,
  `todounit` bigint(20) NULL DEFAULT NULL,
  `tododepartment` bigint(20) NULL DEFAULT NULL,
  `todoappid` bigint(20) NULL DEFAULT NULL,
  `todoappname` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `finishtime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `ifread` tinyint(1) NULL DEFAULT NULL,
  `procid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `taskid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `todoSendPerson` bigint(20) NULL DEFAULT NULL,
  `todoSendTenantCode` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送人所在租户',
  PRIMARY KEY (`recid`) USING BTREE,
  INDEX `todoperson`(`todoperson`) USING BTREE,
  INDEX `todoSendPerson`(`todoSendTenantCode`, `todoSendPerson`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_contain
-- ----------------------------
DROP TABLE IF EXISTS `core_contain`;
CREATE TABLE `core_contain`  (
  `recid` bigint(20) NOT NULL,
  `contain_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contain_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  `height` float(10, 2) NULL DEFAULT NULL,
  `contain_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`recid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_field
-- ----------------------------
DROP TABLE IF EXISTS `core_field`;
CREATE TABLE `core_field`  (
  `id` bigint(20) NOT NULL,
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TITLE` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `datatype` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mt_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `length` int(11) NULL DEFAULT NULL,
  `precision_` int(11) NULL DEFAULT NULL,
  `dict_identfy` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '枚举字典对应',
  `t_order` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `p_version` int(11) NULL DEFAULT NULL,
  `p_dataversion` int(11) NULL DEFAULT NULL,
  `modifytime` datetime(0) NULL DEFAULT NULL,
  `modifyuser` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `createuser` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mastertable` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for core_portal
-- ----------------------------
DROP TABLE IF EXISTS `core_portal`;
CREATE TABLE `core_portal`  (
  `recid` bigint(20) NOT NULL,
  `portal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `portal_type` int(11) NULL DEFAULT NULL,
  `portal_remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`recid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_portalcontain
-- ----------------------------
DROP TABLE IF EXISTS `core_portalcontain`;
CREATE TABLE `core_portalcontain`  (
  `recid` bigint(20) NOT NULL,
  `portal_id` bigint(20) NULL DEFAULT NULL,
  `contain_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  `height` float(10, 2) NULL DEFAULT NULL,
  `contain_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `relate_width` int(11) NULL DEFAULT NULL,
  `relate_height` float(10, 2) NULL DEFAULT NULL,
  `contain_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`recid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_roleportal
-- ----------------------------
DROP TABLE IF EXISTS `core_roleportal`;
CREATE TABLE `core_roleportal`  (
  `recid` bigint(20) NOT NULL,
  `port_id` bigint(20) NULL DEFAULT NULL,
  `isrole` int(11) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`recid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for core_zc_cardmodule
-- ----------------------------
DROP TABLE IF EXISTS `core_zc_cardmodule`;
CREATE TABLE `core_zc_cardmodule`  (
  `RECID` bigint(20) NOT NULL,
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `TYPE` int(11) NULL DEFAULT NULL COMMENT '类型',
  `MODIFYTIME` datetime(0) NULL DEFAULT NULL,
  `MODIFYUSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATETIME` datetime(0) NULL DEFAULT NULL,
  `CREATEUSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARKS` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `STATE` tinyint(1) NULL DEFAULT NULL COMMENT '是否启用，1启用，0不启用',
  `T_ORDER` int(11) NULL DEFAULT NULL,
  `PARENTID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`RECID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for core_zc_cardstyle
-- ----------------------------
DROP TABLE IF EXISTS `core_zc_cardstyle`;
CREATE TABLE `core_zc_cardstyle`  (
  `RECID` bigint(20) NOT NULL,
  `NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `TYPE` int(11) NULL DEFAULT NULL COMMENT '类型',
  `MODIFYTIME` datetime(0) NULL DEFAULT NULL,
  `MODIFYUSER` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATETIME` datetime(0) NULL DEFAULT NULL,
  `CREATEUSER` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REMARKS` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `PARENTID` bigint(20) NULL DEFAULT NULL COMMENT '父节点',
  `STATE` tinyint(1) NULL DEFAULT NULL COMMENT '是否启用，1启用，0不启用',
  `T_ORDER` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`RECID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------
DROP TABLE IF EXISTS `flyway_schema_history`;
CREATE TABLE `flyway_schema_history`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `flyway_schema_history_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for market_portal
-- ----------------------------
DROP TABLE IF EXISTS `market_portal`;
CREATE TABLE `market_portal`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL,
  `app_id` bigint(20) NULL DEFAULT NULL,
  `order_number` int(11) NULL DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  `is_deleted` int(11) NULL DEFAULT NULL COMMENT '是否已删除',
  `tenant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for of_org_department
-- ----------------------------
DROP TABLE IF EXISTS `of_org_department`;
CREATE TABLE `of_org_department`  (
  `ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `NAME` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `DESCRIPTION` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `PARENT_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父节点ID',
  `PARENT_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级部门编码',
  `LEVEL_NUM` int(11) NOT NULL COMMENT '当前级次',
  `IS_LEAF` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否叶子节点',
  `MANAGER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门负责人',
  `MANAGER_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门负责人',
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电邮',
  `MOB` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `YEAR` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年度',
  `HEADCOUNT` int(11) NULL DEFAULT NULL COMMENT '编制人数',
  `REALCOUNT` int(11) NULL DEFAULT NULL COMMENT '其中行政编制人数',
  `VERSION` int(11) NOT NULL COMMENT '版本号',
  `ID1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID2` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID3` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID4` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID5` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID6` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID7` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID8` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID9` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ID10` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态1 正常 0 停用 （建议与启用，停用日期关联，查询时可不检查启用、停用日期）',
  `STARTDATE` date NULL DEFAULT NULL COMMENT '启用日期',
  `ENDDATE` date NULL DEFAULT NULL COMMENT '停用日期',
  `ORG_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位ID',
  `ORG_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位编码',
  `CREATOR_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人员ID',
  `CREATOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人员',
  `CREATIONTIME` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `MODIFIER_ID` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人员ID',
  `MODIFIER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人员',
  `MODIFIEDTIME` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改日期',
  `REMARK` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `CODE_YEAR_ORG_ID`(`CODE`, `YEAR`, `ORG_ID`) USING BTREE,
  INDEX `IS_LEAF`(`ORG_ID`, `STATUS`, `IS_LEAF`, `YEAR`, `CODE`, `NAME`) USING BTREE,
  INDEX `CREATIONTIME`(`CREATIONTIME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织架构 - 部门' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp`  (
  `tablename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LieName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for zam_core_data_dict_20200917_2005
-- ----------------------------
DROP TABLE IF EXISTS `zam_core_data_dict_20200917_2005`;
CREATE TABLE `zam_core_data_dict_20200917_2005`  (
  `recid` bigint(20) NOT NULL,
  `recver` bigint(20) NULL DEFAULT NULL,
  `objectid` bigint(20) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `dict_identty` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `t_order` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `startflag` int(11) NULL DEFAULT NULL,
  `p_version` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `modifytime` datetime(0) NULL DEFAULT NULL,
  `modifyuser` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `createuser` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `creattime` datetime(0) NULL DEFAULT NULL,
  `isdefault` int(11) NULL DEFAULT NULL,
  `OLDID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`recid`) USING BTREE,
  INDEX `tableidref`(`recid`, `objectid`, `OLDID`, `recver`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for 单户表上报单位情况表
-- ----------------------------
DROP TABLE IF EXISTS `单户表上报单位情况表`;
CREATE TABLE `单户表上报单位情况表`  (
  `附件2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 平台现有树形
-- ----------------------------
DROP TABLE IF EXISTS `平台现有树形`;
CREATE TABLE `平台现有树形`  (
  `嘉善县财政监管集团` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `汇总` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 汇总表上报单位情况表
-- ----------------------------
DROP TABLE IF EXISTS `汇总表上报单位情况表`;
CREATE TABLE `汇总表上报单位情况表`  (
  `附件1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for 预建 (2)
-- ----------------------------
DROP TABLE IF EXISTS `预建 (2)`;
CREATE TABLE `预建 (2)`  (
  `嘉善县财政监管集团` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `汇总` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `f3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Procedure structure for getDataByDbName
-- ----------------------------
DROP PROCEDURE IF EXISTS `getDataByDbName`;
delimiter ;;
CREATE PROCEDURE `getDataByDbName`(in dbName VARCHAR(255),IN ziduan VARCHAR(255))
BEGIN
DECLARE num INT;
SET @STMT =CONCAT("SELECT COUNT(*) FROM ",dbName," WHERE `",ziduan,"` LIKE BINARY '%测试单位%' INTO @num;");
PREPARE STMT FROM @STMT;
EXECUTE STMT;
IF(@num>0) THEN
    INSERT INTO temp VALUES (dbName,ziduan);
END IF;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for processquanjusou
-- ----------------------------
DROP PROCEDURE IF EXISTS `processquanjusou`;
delimiter ;;
CREATE PROCEDURE `processquanjusou`()
BEGIN
DECLARE done BOOLEAN DEFAULT 0;
DECLARE biao VARCHAR (255);
DECLARE ziduan VARCHAR (255);
DECLARE indexss CURSOR
FOR
SELECT TABLE_NAME,COLUMN_NAME FROM information_schema.COLUMNS WHERE TABLE_SCHEMA='asset-platform-idm' ;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done=1;
OPEN indexss;
repeat
FETCH indexss INTO biao,ziduan;
call  getDataByDbName(biao,ziduan);
UNTIL done END repeat;
CLOSE indexss;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
