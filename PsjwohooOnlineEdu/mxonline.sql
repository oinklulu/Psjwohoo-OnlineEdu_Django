/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : mxonline

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 01/08/2018 12:32:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add 用户信息', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (20, 'Can change 用户信息', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 用户信息', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (23, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 9, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 9, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 9, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can add 课程', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (29, 'Can change 课程', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 课程', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (31, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (32, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (35, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程资源', 13, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程资源', 13, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程资源', 13, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (40, 'Can add 城市', 14, 'add_citydict');
INSERT INTO `auth_permission` VALUES (41, 'Can change 城市', 14, 'change_citydict');
INSERT INTO `auth_permission` VALUES (42, 'Can delete 城市', 14, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (43, 'Can add 课程机构', 15, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (44, 'Can change 课程机构', 15, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 课程机构', 15, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (46, 'Can add 教师', 16, 'add_teacher');
INSERT INTO `auth_permission` VALUES (47, 'Can change 教师', 16, 'change_teacher');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 教师', 16, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户咨询', 17, 'add_userask');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户咨询', 17, 'change_userask');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户咨询', 17, 'delete_userask');
INSERT INTO `auth_permission` VALUES (52, 'Can add 课程评论', 18, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (53, 'Can change 课程评论', 18, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 课程评论', 18, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (55, 'Can add 用户收藏', 19, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (56, 'Can change 用户收藏', 19, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 用户收藏', 19, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (58, 'Can add 用户消息', 20, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (59, 'Can change 用户消息', 20, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 用户消息', 20, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户课程', 21, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户课程', 21, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户课程', 21, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (64, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (65, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (66, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (67, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (68, 'Can view 课程', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (69, 'Can view 课程资源', 13, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (70, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (71, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (72, 'Can view 课程评论', 18, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (73, 'Can view 用户咨询', 17, 'view_userask');
INSERT INTO `auth_permission` VALUES (74, 'Can view 用户课程', 21, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (75, 'Can view 用户收藏', 19, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (76, 'Can view 用户消息', 20, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (77, 'Can view 城市', 14, 'view_citydict');
INSERT INTO `auth_permission` VALUES (78, 'Can view 课程机构', 15, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (79, 'Can view 教师', 16, 'view_teacher');
INSERT INTO `auth_permission` VALUES (80, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (81, 'Can view 轮播图', 9, 'view_banner');
INSERT INTO `auth_permission` VALUES (82, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (83, 'Can view 用户信息', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (84, 'Can add Bookmark', 22, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can change Bookmark', 22, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can delete Bookmark', 22, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Setting', 23, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Setting', 23, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Setting', 23, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 22, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view User Setting', 23, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (96, 'Can add log entry', 25, 'add_log');
INSERT INTO `auth_permission` VALUES (97, 'Can change log entry', 25, 'change_log');
INSERT INTO `auth_permission` VALUES (98, 'Can delete log entry', 25, 'delete_log');
INSERT INTO `auth_permission` VALUES (99, 'Can view log entry', 25, 'view_log');
INSERT INTO `auth_permission` VALUES (100, 'Can add captcha store', 26, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (101, 'Can change captcha store', 26, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (102, 'Can delete captcha store', 26, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (103, 'Can view captcha store', 26, 'view_captchastore');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (49, 'DGDF', 'dgdf', '9b870bbdd0aa093a33281f071bc43868c2700c89', '2018-06-08 13:19:05.441000');
INSERT INTO `captcha_captchastore` VALUES (50, 'SLWC', 'slwc', 'a02be56238a60e3656eb8fc9e009bab79026ba6f', '2018-06-08 13:19:19.281000');
INSERT INTO `captcha_captchastore` VALUES (51, 'FKIX', 'fkix', 'cdfd6fbd71b25b2cc438e78e1fa57360df4a54aa', '2018-06-08 13:19:25.151000');
INSERT INTO `captcha_captchastore` VALUES (52, 'WPHX', 'wphx', '975079c2dbfb441bf0aaa5f5c1ff7f0e20f0cc06', '2018-06-08 13:20:04.491000');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `you_need_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_11456c5a`(`course_org_id`) USING BTREE,
  INDEX `courses_course_d9614d40`(`teacher_id`) USING BTREE,
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, '2018-05-31 13:37:00.000000', '444', 113, 'cj', 'django入门', 3, 'courses/2018/06/445fe2aee4259788-0484564e858476f0-0df9738992ecc8c085374c3c058d0c44_OEVUb5m.jpg', 0, 12, 'django入门', 2, 'python', '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', '<p style=\"text-align: center;\"><span style=\"text-decoration: underline;\"><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=116.402951,39.911759&zoom=16&width=530&height=340&markers=116.402951,39.911759\"/> </span><span style=\"text-decoration: underline;\"><br/> </span></p><p><span style=\"text-decoration: underline;\"><br/> </span></p><p><span style=\"text-decoration: underline;\">&nbsp;&nbsp; django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门django入门</span> </p>', 5, 11);
INSERT INTO `courses_course` VALUES (2, '2018-06-12 16:27:00.000000', '444', 6, 'zj', 'django提高', 0, 'courses/2018/06/xiaokuihua_DUXimig.png', 0, 200, 'django提高', 0, 'python', '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 'django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高django提高', 6, NULL);
INSERT INTO `courses_course` VALUES (3, '2018-06-14 17:13:00.000000', '444', 94, 'zj', 'django课程系列1', 0, 'courses/2018/06/20141126142230_iBnjT.thumb.700_0_EDsaau2.jpeg', 0, 30, 'django课程系列1', 0, 'python', '按时交作业,不然叫家长', '一颗勤学的心是本课程必要前提', 'django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1django课程系列1', 5, NULL);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_ea134da7`(`course_id`) USING BTREE,
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (1, '2018-06-15 12:39:00.000000', 1, 'course/resource/2018/06/gx.png', '课程资料');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_ea134da7`(`course_id`) USING BTREE,
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '2018-05-31 13:40:00.000000', 1, '第一节');
INSERT INTO `courses_lesson` VALUES (2, '2018-06-15 12:20:00.000000', 1, '第二节');
INSERT INTO `courses_lesson` VALUES (3, '2018-06-15 12:20:00.000000', 1, '第三节');
INSERT INTO `courses_lesson` VALUES (4, '2018-06-15 12:20:00.000000', 1, '第四节');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `learn_times` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_55174b7b`(`lesson_id`) USING BTREE,
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, 28, '2018-06-15 12:28:00.000000', 1, '第一集', 'http://pajt4ewfa.bkt.clouddn.com/%E6%A8%B1%E6%A1%83%E5%B0%8F%E4%B8%B8%E5%AD%901%E9%9B%86_640x384_www.ihd4.com_iHD4%E8%A7%86%E9%A2%91%E7%BD%91.mp4');
INSERT INTO `courses_video` VALUES (2, 23, '2018-06-15 12:35:00.000000', 1, '第二集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (3, 34, '2018-06-15 12:36:00.000000', 1, '第三集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (4, 33, '2018-06-15 12:36:00.000000', 2, '第一集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (5, 24, '2018-06-15 12:36:00.000000', 2, '第二集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (6, 23, '2018-06-15 12:37:00.000000', 3, '第一集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (7, 33, '2018-06-15 12:37:00.000000', 3, '第二集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (8, 27, '2018-06-15 12:37:00.000000', 3, '第三集', 'http://blog.mtianyan.cn/');
INSERT INTO `courses_video` VALUES (9, 29, '2018-06-15 12:38:00.000000', 3, '第四集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (10, 43, '2018-06-15 12:38:00.000000', 4, '第一集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');
INSERT INTO `courses_video` VALUES (11, 33, '2018-06-15 12:38:00.000000', 4, '第二集', 'http://www.iqiyi.com/v_19rrami7ys.html?vfm=m_502_sgss&fromvsogou=1');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (26, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (9, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (25, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-05-29 01:35:04.553000');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-05-29 01:35:05.496000');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-05-29 01:35:05.714000');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-05-29 01:35:05.771000');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-05-29 01:35:05.962000');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-05-29 01:35:06.058000');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-05-29 01:35:06.163000');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-05-29 01:35:06.203000');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-05-29 01:35:06.333000');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-05-29 01:35:06.338000');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-29 01:35:06.366000');
INSERT INTO `django_migrations` VALUES (12, 'sessions', '0001_initial', '2018-05-29 01:35:06.437000');
INSERT INTO `django_migrations` VALUES (13, 'users', '0001_initial', '2018-05-29 02:30:43.909000');
INSERT INTO `django_migrations` VALUES (14, 'courses', '0001_initial', '2018-05-30 00:32:46.045000');
INSERT INTO `django_migrations` VALUES (15, 'courses', '0002_auto_20180530_0826', '2018-05-30 00:32:47.871000');
INSERT INTO `django_migrations` VALUES (16, 'operation', '0001_initial', '2018-05-30 00:32:48.036000');
INSERT INTO `django_migrations` VALUES (17, 'operation', '0002_auto_20180530_0826', '2018-05-30 00:32:48.315000');
INSERT INTO `django_migrations` VALUES (18, 'organization', '0001_initial', '2018-05-30 00:32:48.576000');
INSERT INTO `django_migrations` VALUES (19, 'organization', '0002_auto_20180530_0826', '2018-05-30 00:32:48.726000');
INSERT INTO `django_migrations` VALUES (20, 'users', '0002_auto_20180529_2026', '2018-05-30 00:32:48.799000');
INSERT INTO `django_migrations` VALUES (21, 'users', '0003_auto_20180530_0826', '2018-05-30 00:32:48.928000');
INSERT INTO `django_migrations` VALUES (22, 'xadmin', '0001_initial', '2018-05-30 09:57:42.166000');
INSERT INTO `django_migrations` VALUES (23, 'xadmin', '0002_log', '2018-05-30 13:24:01.631000');
INSERT INTO `django_migrations` VALUES (24, 'xadmin', '0003_auto_20160715_0100', '2018-05-30 13:24:01.746000');
INSERT INTO `django_migrations` VALUES (25, 'courses', '0003_course_detail', '2018-05-31 13:15:38.966000');
INSERT INTO `django_migrations` VALUES (26, 'captcha', '0001_initial', '2018-06-04 13:49:28.664000');
INSERT INTO `django_migrations` VALUES (27, 'organization', '0003_auto_20180612_1701', '2018-06-12 17:01:59.699000');
INSERT INTO `django_migrations` VALUES (28, 'organization', '0004_auto_20180612_1854', '2018-06-12 18:54:37.639000');
INSERT INTO `django_migrations` VALUES (29, 'courses', '0004_course_course_org', '2018-06-12 18:54:38.015000');
INSERT INTO `django_migrations` VALUES (30, 'operation', '0003_userfavorite_user', '2018-06-14 13:25:34.675000');
INSERT INTO `django_migrations` VALUES (31, 'operation', '0004_auto_20180614_2208', '2018-06-14 22:09:00.300000');
INSERT INTO `django_migrations` VALUES (32, 'operation', '0005_auto_20180614_2217', '2018-06-14 22:18:01.768000');
INSERT INTO `django_migrations` VALUES (33, 'courses', '0005_course_teacher', '2018-06-16 14:18:59.630000');
INSERT INTO `django_migrations` VALUES (34, 'operation', '0006_auto_20180616_1522', '2018-06-16 15:22:35.762000');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('68zbehhufttnbtyjjjuxlx74whsc0a72', 'YmE0ZGU3NjEzNTkzZGFiYjMyMDRlM2VhYzQ5NDliYmM1OTY0NThkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwibmF2X21lbnUiOiJbe1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMSwgXCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMiwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1NjczYVx1Njc4NFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vdGVhY2hlci9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTMsIFwidGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIn1dLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL2NpdHlkaWN0L1wiLCBcInRpdGxlXCI6IFwiXHU2NzNhXHU2Nzg0XHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvdXNlcnByb2ZpbGUvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNCwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vdXNlcmNvdXJzZS9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogMTUsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxNiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NmQ4OFx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE3LCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU4YmM0XHU4YmJhXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyZmF2b3JpdGUvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDE4LCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NTM2XHU4NWNmXCJ9XSwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyY291cnNlL1wiLCBcInRpdGxlXCI6IFwiXHU3NTI4XHU2MjM3XHU2NGNkXHU0ZjVjXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiAyMCwgXCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyLCBcInRpdGxlXCI6IFwiXHU3ZWM0XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDQsIFwidGl0bGVcIjogXCJcdTY3NDNcdTk2NTBcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9ncm91cC9cIiwgXCJ0aXRsZVwiOiBcIlx1OGJhNFx1OGJjMVx1NTQ4Y1x1NjM4OFx1Njc0M1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9jb3Vyc2UvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDcsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9sZXNzb24vXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDgsIFwidGl0bGVcIjogXCJcdTdhZTBcdTgyODJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy92aWRlby9cIiwgXCJpY29uXCI6IG51bGwsIFwib3JkZXJcIjogOSwgXCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiAxMCwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGQ0NFx1NmU5MFwifV0sIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU3YmExXHU3NDA2XCJ9XSIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ2ZDQ4MDM4MmFhYTI0ZDJiOTAxMTJhZmRmMzlhMTY4MjIzNjljOGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=', '2018-07-03 20:30:04.125000');
INSERT INTO `django_session` VALUES ('nn6yy59jc6c9n6gxiiqh5olu1qmvk4ou', 'NjViYzM2MWNiNzUxNzM0ODI0MTM0ZTE4YmU4ZTBjOWE4ODRlZmRkNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJkNmQ0ODAzODJhYWEyNGQyYjkwMTEyYWZkZjM5YTE2ODIyMzY5YzhjIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2018-06-29 00:14:41.069000');
INSERT INTO `django_session` VALUES ('o6htpx36iw0863lh62tbwiq9xc7fzr0u', 'NTdjNzA4YTNiN2MyYmJkMThmMGYyNjk0MjM2MTc3OTYwNTUzMTYzNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImFwcHMudXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIkxJU1RfUVVFUlkiOltbInVzZXJzIiwidXNlcnByb2ZpbGUiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6ImQ2ZDQ4MDM4MmFhYTI0ZDJiOTAxMTJhZmRmMzlhMTY4MjIzNjljOGMiLCJfYXV0aF91c2VyX2lkIjoiMSJ9', '2018-06-15 17:46:10.692000');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `comments` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_coursecomments_e8701ad4`(`user_id`) USING BTREE,
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (2, '2018-06-16 15:24:43.588000', 'dfd', 1, 1);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (1, '2018-06-12 16:19:41.983000', 'django1', '15755558888', 'pengshaoju');
INSERT INTO `operation_userask` VALUES (2, '2018-06-12 16:19:41.984000', 'django1', '15755558888', 'pengshaoju');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_e8701ad4`(`user_id`) USING BTREE,
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2018-06-14 22:14:00.000000', 1, 1);
INSERT INTO `operation_usercourse` VALUES (2, '2018-06-14 22:16:00.000000', 3, 1);
INSERT INTO `operation_usercourse` VALUES (3, '2018-06-14 22:29:00.000000', 1, 39);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_e8701ad4`(`user_id`) USING BTREE,
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (2, 2, 2, '2018-06-17 22:21:18.534000', 1);
INSERT INTO `operation_userfavorite` VALUES (3, 11, 3, '2018-06-17 22:21:41.500000', 1);
INSERT INTO `operation_userfavorite` VALUES (4, 3, 1, '2018-06-17 22:21:46.343000', 1);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 0, '欢迎来到我的小站', 0, '2018-06-17 23:06:00.000000');
INSERT INTO `operation_usermessage` VALUES (2, 1, '1', 1, '2018-06-17 23:09:00.000000');
INSERT INTO `operation_usermessage` VALUES (3, 1, '3', 1, '2018-06-17 23:13:00.000000');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '北京市', '北京市', '2018-06-09 17:37:00.000000');
INSERT INTO `organization_citydict` VALUES (2, '上海市', '上海市', '2018-06-09 17:42:00.000000');
INSERT INTO `organization_citydict` VALUES (4, '广州市', '广州市', '2018-06-09 17:42:00.000000');
INSERT INTO `organization_citydict` VALUES (5, '深圳市', '深圳市', '2018-06-09 17:43:00.000000');
INSERT INTO `organization_citydict` VALUES (7, '天津市', '天津市', '2018-06-09 17:55:00.000000');
INSERT INTO `organization_citydict` VALUES (8, '杭州市', '杭州市', '2018-06-10 10:41:00.000000');
INSERT INTO `organization_citydict` VALUES (9, '昆明市', '昆明市', '2018-06-10 10:43:00.000000');
INSERT INTO `organization_citydict` VALUES (10, '广州市', '广州市', '2018-06-10 10:49:00.000000');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_course_city_id_4a842f85_fk_organization_citydict_id`(`city_id`) USING BTREE,
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (2, '北京大学', '北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学北京大学', 'gx', '国内名校', 133, 0, 'org/2018/06/beijingdaxue.png', '北京市', 0, 0, '2018-06-10 10:37:00.000000', 1);
INSERT INTO `organization_courseorg` VALUES (3, '浙江大学', '浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学浙江大学', 'gx', '国内名校', 4, 0, 'org/2018/06/zju.png', '杭州市', 0, 0, '2018-06-10 10:41:00.000000', 8);
INSERT INTO `organization_courseorg` VALUES (4, '云南大学', '云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学云南大学', 'gx', '国内名校', 0, 0, 'org/2018/06/ynu_70oImVZ.png', '昆明市', 0, 0, '2018-06-10 10:42:00.000000', 9);
INSERT INTO `organization_courseorg` VALUES (5, 'psjwohoo培训教育', 'psjwohoo培训教育', 'pxjg', '国内名校', 5, 0, 'org/2018/06/QQ截图20180610100748.jpg', '上海市', 0, 2, '2018-06-10 10:43:00.000000', 2);
INSERT INTO `organization_courseorg` VALUES (6, 'psjwohoo在线网', 'psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网psjwohoo在线网', 'gr', '国内名校', 1, 0, 'org/2018/06/QQ截图20180610100748_o0RI52B.jpg', '上海市', 0, 0, '2018-06-10 10:45:00.000000', 2);
INSERT INTO `organization_courseorg` VALUES (7, '复旦大学', '复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学复旦大学', 'gx', '国内名校', 0, 0, 'org/2018/06/fudan.png', '上海市', 0, 0, '2018-06-10 10:46:00.000000', 2);
INSERT INTO `organization_courseorg` VALUES (8, '深圳大学', '深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学深圳大学', 'gx', '国内名校', 0, 0, 'org/2018/06/shenzhen.png', '深圳市', 0, 0, '2018-06-10 10:48:00.000000', 5);
INSERT INTO `organization_courseorg` VALUES (9, '暨南大学', '暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学暨南大学', 'gx', '国内名校', 0, 0, 'org/2018/06/jinan_1geI1yp.png', '广州市', 0, 0, '2018-06-10 10:49:00.000000', 10);
INSERT INTO `organization_courseorg` VALUES (10, '清华大学', '清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学清华大学', 'gx', '国内名校', 0, 0, 'org/2018/06/Tsinghua.png', '北京市', 0, 0, '2018-06-10 10:50:00.000000', 1);

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id`(`org_id`) USING BTREE,
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (11, 'teacher/2018/06/aobama_rGZ8hZh.png', 'psj1', 3, 25, '公司1', 'coder1', '认真严谨', 5, 0, '2018-06-12 18:36:00.000000', 5);
INSERT INTO `organization_teacher` VALUES (12, 'teacher/2018/06/300.jpg', 'psj2', 3, 26, '公司2', 'coder2', '哎哟，厉害哦', 0, 0, '2018-06-12 18:38:00.000000', 6);
INSERT INTO `organization_teacher` VALUES (13, 'teacher/2018/06/gj.png', 'nick', 8, 33, '北1', '北1', '北1', 0, 0, '2018-06-13 13:34:00.000000', 2);
INSERT INTO `organization_teacher` VALUES (14, 'teacher/2018/06/gx.png', 'Baby', 6, 34, '浙1', '浙1老师', '认真负责，幽默风趣', 0, 0, '2018-06-13 13:35:00.000000', 3);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '图1', 'banner/2018/05/course-mtianyan_xLnzxsy.png', 'http://www.baidu.com', 1, '2018-05-30 16:49:00.000000');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (2, '123456', '123456@qq.com', 'register', '2018-05-30 13:25:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES (3, '234567', '234567@126.com', 'forget', '2018-05-30 16:20:00.000000');
INSERT INTO `users_emailverifyrecord` VALUES (4, 'pcdhgdsLxgj21OmJ', '464382798@qq.com', 'register', '2018-06-06 13:28:18.536000');
INSERT INTO `users_emailverifyrecord` VALUES (5, 'MNnzlV6fIPSaNYXo', '2222@qq.com', 'register', '2018-06-06 13:34:46.782000');
INSERT INTO `users_emailverifyrecord` VALUES (6, '2oSNPxEO2vULhT6S', '3323@qq.com', 'register', '2018-06-06 13:37:48.964000');
INSERT INTO `users_emailverifyrecord` VALUES (7, 'wHsO01y5pwvuJrgN', '342424@qq.com', 'register', '2018-06-06 13:54:00.883000');
INSERT INTO `users_emailverifyrecord` VALUES (8, 'y8rgcmApSPgmrVtE', '33232323@qq.com', 'register', '2018-06-06 13:55:16.263000');
INSERT INTO `users_emailverifyrecord` VALUES (9, 'P5C1Uw7YF169lS9K', 'werwerwr@qq.com', 'register', '2018-06-06 14:13:58.978000');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'Ahz2GU9RkYEE09c3', 'Nonewerwrew@qq.com', 'register', '2018-06-06 14:19:41.216000');
INSERT INTO `users_emailverifyrecord` VALUES (11, '1TSwRonVRSRbmGde', 'Nonefdsdfs@qq.com', 'register', '2018-06-06 14:29:37.281000');
INSERT INTO `users_emailverifyrecord` VALUES (12, '6tiwMXWvWhtcynfz', 'sdfsdfsdfsf@qq.com', 'register', '2018-06-06 14:31:24.698000');
INSERT INTO `users_emailverifyrecord` VALUES (13, 'bVZRK4rZs4jDfghv', 'dfdfgdfgd@qq.com', 'register', '2018-06-06 14:31:53.820000');
INSERT INTO `users_emailverifyrecord` VALUES (14, '7JdkpiIGiOPuqeUC', 'sdfsdfs@qq.com', 'register', '2018-06-06 14:34:48.185000');
INSERT INTO `users_emailverifyrecord` VALUES (15, 'SfwMjDSYCEhalJkD', 'Nonefdsfsfsdfs@qq.com', 'register', '2018-06-06 14:48:43.925000');
INSERT INTO `users_emailverifyrecord` VALUES (16, 'NaEjJ4mR3jNcp9e6', 'Nonesdfsdfddd@qq.com', 'register', '2018-06-06 14:50:30.042000');
INSERT INTO `users_emailverifyrecord` VALUES (17, 'x33tEc4g6pDb5wUE', 'Nonesdfsdf@qq.com', 'register', '2018-06-06 14:51:29.527000');
INSERT INTO `users_emailverifyrecord` VALUES (18, '63Vn4W1tgW1NmpKc', 'Nonedffgnhh@qq.com', 'register', '2018-06-06 15:41:12.966000');
INSERT INTO `users_emailverifyrecord` VALUES (19, 'OXOPSjyE3srDaQGr', 'None@qq.com', 'register', '2018-06-06 15:46:38.174000');
INSERT INTO `users_emailverifyrecord` VALUES (20, 'CLMfd6Zr1afZSbE3', 'Noneghgjhgghjh@qq.com', 'register', '2018-06-06 16:29:25.382000');
INSERT INTO `users_emailverifyrecord` VALUES (21, '0s4C4I3KQfiIlVJn', 'sdfsdf@qq.com', 'register', '2018-06-06 16:43:14.232000');
INSERT INTO `users_emailverifyrecord` VALUES (22, 'Wx8FC5Y0mpcrdMl1', 'Noneasdasd@qq.com', 'register', '2018-06-06 16:44:18.275000');
INSERT INTO `users_emailverifyrecord` VALUES (23, '8yRNXRiUuC1j48av', 'sedsfd@qq.com', 'register', '2018-06-06 21:14:01.381000');
INSERT INTO `users_emailverifyrecord` VALUES (24, '5Rms6kMd3SirIp0l', 'Nonesdfsdfsd@wss.com', 'register', '2018-06-06 21:16:25.303000');
INSERT INTO `users_emailverifyrecord` VALUES (25, 'cUTsV0JCcH28jbay', 'Nonesdfsd@sds.com', 'register', '2018-06-06 21:29:11.604000');
INSERT INTO `users_emailverifyrecord` VALUES (26, 'Mj0g2ofuFsmuU99H', 'Noneddd@qq.com', 'register', '2018-06-06 21:35:42.648000');
INSERT INTO `users_emailverifyrecord` VALUES (27, 'oaiIYuRRTQfqV3Rd', 'Nonesdfsdfsdf@qq.com', 'register', '2018-06-06 21:37:20.320000');
INSERT INTO `users_emailverifyrecord` VALUES (28, 'jPPgiXh0H3qONkNS', 'Nonexvsdff@qq.com', 'register', '2018-06-06 21:39:15.246000');
INSERT INTO `users_emailverifyrecord` VALUES (29, 'UNBXqy8lWn6Ik3CJ', 'sedd@qq.com', 'register', '2018-06-07 08:44:09.927000');
INSERT INTO `users_emailverifyrecord` VALUES (30, 'hKsiVhJ2AOzXPAPa', 'Noneddd@qq.vom', 'register', '2018-06-07 08:48:39.495000');
INSERT INTO `users_emailverifyrecord` VALUES (31, '1DqhCvTAw3PPcLnj', 'Noneererrrrr@qq.com', 'register', '2018-06-07 09:11:14.537000');
INSERT INTO `users_emailverifyrecord` VALUES (32, 'Ljo7nJDaat9ocUml', 'sfsdfsf@ass.com', 'register', '2018-06-07 10:31:48.331000');
INSERT INTO `users_emailverifyrecord` VALUES (33, 'ax9DwvvyVhivZJE7', '843180818@qq.com', 'register', '2018-06-07 10:33:43.538000');
INSERT INTO `users_emailverifyrecord` VALUES (34, '2qR3bNQzdmrjbMKC', '843180818@qq.com', 'register', '2018-06-07 11:53:31.781000');
INSERT INTO `users_emailverifyrecord` VALUES (35, 'a6yXbR2WeVEUfTtJ', '1055785485@qq.com', 'register', '2018-06-07 11:58:17.454000');
INSERT INTO `users_emailverifyrecord` VALUES (36, 'jQnchzLlqBNVdSzy', 'sdsfsdfs@qq.com', 'register', '2018-06-07 12:00:41.998000');
INSERT INTO `users_emailverifyrecord` VALUES (37, 'IKaXHI69UiqbunfO', '464382798@qq.com', 'register', '2018-06-07 15:32:39.809000');
INSERT INTO `users_emailverifyrecord` VALUES (38, 'CX75JhbVE5xWStYW', '464382798@qq.com', 'register', '2018-06-07 15:45:55.320000');
INSERT INTO `users_emailverifyrecord` VALUES (39, 'IrCipPSJFrC8KNDg', '10557895485@qq.com', 'register', '2018-06-07 22:09:44.421000');
INSERT INTO `users_emailverifyrecord` VALUES (41, 'jJBA0VpuEFDFuFhY', '843180818@qq.com', 'register', '2018-06-07 23:09:29.371000');
INSERT INTO `users_emailverifyrecord` VALUES (42, 'kmhXesjrtnX23V3T', '464382798@qq.com', 'forget', '2018-06-08 13:15:14.660000');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$24000$2yXTP5lZ7gD9$0HfKyuFopHgixxsvGpa2Q2Do2ZiiAF++3s/zrlhKoHo=', '2018-06-19 10:41:02.042000', 1, 'psjwohoo', '', '', 'psj_wohoo@126.com', 1, 1, '2018-05-30 00:55:58.172000', '彭XX', '1993-06-17', 'male', 'xx', '1333333333', 'image/2018/06/timg0000_Dnqa2fE.jpg');
INSERT INTO `users_userprofile` VALUES (36, 'pbkdf2_sha256$24000$AwIyil9GGWwe$XNUjkxaqqyyjPnIQ8GCqzZPidm2YoTrSy+jdvaKWhgE=', '2018-06-08 14:56:27.381000', 0, '464382798@qq.com', '', '', '464382798@qq.com', 0, 1, '2018-06-07 15:45:52.922000', '8', NULL, 'female', '', NULL, 'courses/2018/06/20141126142230_iBnjT.thumb.700_0_EDsaau2.jpeg');
INSERT INTO `users_userprofile` VALUES (39, 'pbkdf2_sha256$24000$waXBNFIwzeE6$lCBJLkU7lf/o02tvy0FXEWiC8PoNHHRzLXKqmWJlkDg=', '2018-06-07 23:37:53.273000', 0, '843180818@qq.com', '', '', '843180818@qq.com', 0, 1, '2018-06-07 23:09:29.174000', 'psjwohoo', NULL, 'female', '', NULL, 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_permissions_userprofile_id_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2018-05-30 13:25:34.654000', '127.0.0.1', '2', '123456(123456@qq.com)', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-05-30 16:21:19.224000', '127.0.0.1', '3', '234567(234567@126.com)', 'create', '已添加', 8, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-05-30 16:52:03.245000', '127.0.0.1', '1', 'Banner object', 'create', '已添加', 9, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-05-31 13:38:29.798000', '127.0.0.1', '1', 'Course object', 'create', '已添加', 10, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-05-31 15:53:46.265000', '127.0.0.1', '1', 'Lesson object', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-06-09 17:37:42.821000', '127.0.0.1', '1', 'CityDict object', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-06-09 17:41:21.580000', '127.0.0.1', '1', '北京', 'change', '已修改 name 。', 14, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-06-09 17:42:43.172000', '127.0.0.1', '2', '上海市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-06-09 17:42:52.737000', '127.0.0.1', '3', '天津市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-06-09 17:43:11.354000', '127.0.0.1', '4', '广州市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-06-09 17:43:19.133000', '127.0.0.1', '5', '深圳市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-06-09 17:47:23.772000', '127.0.0.1', '6', '合肥市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-06-09 17:55:23.976000', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 城市', NULL, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-06-09 17:55:48.221000', '127.0.0.1', '7', '天津市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-06-10 10:34:10.007000', '127.0.0.1', '1', '慕课网1', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-06-10 10:37:29.107000', '127.0.0.1', '1', '慕课网', 'change', '已修改 name 。', 15, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-06-10 10:38:27.005000', '127.0.0.1', '2', '北京大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-06-10 10:40:57.817000', '127.0.0.1', '1', '北京市', 'change', '已修改 name 。', 14, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-06-10 10:41:30.469000', '127.0.0.1', '8', '杭州市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-06-10 10:42:21.063000', '127.0.0.1', '3', '浙江大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-06-10 10:43:05.044000', '127.0.0.1', '4', '云南大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-06-10 10:43:21.491000', '127.0.0.1', '9', '昆明市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-06-10 10:43:32.202000', '127.0.0.1', '4', '云南大学', 'change', '已修改 city 。', 15, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-06-10 10:44:59.897000', '127.0.0.1', '5', 'psjwohoo培训教育', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-06-10 10:46:08.320000', '127.0.0.1', '6', 'psjwohoo在线网', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-06-10 10:47:42.225000', '127.0.0.1', '7', '复旦大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-06-10 10:48:12.969000', '127.0.0.1', '5', 'psjwohoo培训教育', 'change', '已修改 category 。', 15, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-06-10 10:48:59.485000', '127.0.0.1', '8', '深圳大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (29, '2018-06-10 10:49:20.604000', '127.0.0.1', '10', '广州市', 'create', '已添加', 14, 1);
INSERT INTO `xadmin_log` VALUES (30, '2018-06-10 10:50:21.006000', '127.0.0.1', '9', '暨南大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (31, '2018-06-10 10:50:51.914000', '127.0.0.1', '10', '清华大学', 'create', '已添加', 15, 1);
INSERT INTO `xadmin_log` VALUES (32, '2018-06-10 16:15:05.762000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 课程机构', NULL, 1);
INSERT INTO `xadmin_log` VALUES (33, '2018-06-12 16:27:18.079000', '127.0.0.1', '1', 'django入门', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (34, '2018-06-12 16:28:59.217000', '127.0.0.1', '2', 'django提高', 'create', '已添加', 10, 1);
INSERT INTO `xadmin_log` VALUES (35, '2018-06-12 16:31:08.490000', '127.0.0.1', '1', 'psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (36, '2018-06-12 16:33:13.212000', '127.0.0.1', '2', 'psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (37, '2018-06-12 16:37:53.439000', '127.0.0.1', '3', 'psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (38, '2018-06-12 16:41:51.412000', '127.0.0.1', '4', 'psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (39, '2018-06-12 16:44:39.590000', '127.0.0.1', '5', '2', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (40, '2018-06-12 16:47:20.668000', '127.0.0.1', '6', '实打实', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (41, '2018-06-12 17:03:12.316000', '127.0.0.1', '7', 'psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (42, '2018-06-12 17:07:09.628000', '127.0.0.1', '8', 'psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (43, '2018-06-12 17:13:17.833000', '127.0.0.1', '9', '教师: 第一节', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (44, '2018-06-12 17:40:45.247000', '127.0.0.1', '10', '教师: 第一节', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (45, '2018-06-12 18:36:49.923000', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 教师', NULL, 1);
INSERT INTO `xadmin_log` VALUES (46, '2018-06-12 18:37:40.358000', '127.0.0.1', '11', '教师: psj1', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (47, '2018-06-12 18:40:18.128000', '127.0.0.1', '12', '教师: psj2', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (48, '2018-06-12 18:55:40.832000', '127.0.0.1', '1', 'django入门', 'change', '已修改 course_org，desc 和 detail 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (49, '2018-06-12 18:55:48.743000', '127.0.0.1', '2', 'django提高', 'change', '已修改 course_org 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (50, '2018-06-13 13:35:53.045000', '127.0.0.1', '13', '教师: nick', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (51, '2018-06-13 13:36:59.391000', '127.0.0.1', '14', '教师: Baby', 'create', '已添加', 16, 1);
INSERT INTO `xadmin_log` VALUES (52, '2018-06-13 13:37:19.212000', '127.0.0.1', '14', '教师: Baby', 'change', '已修改 work_years 和 age 。', 16, 1);
INSERT INTO `xadmin_log` VALUES (53, '2018-06-13 14:08:12.741000', '127.0.0.1', '1', 'django入门', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (54, '2018-06-13 17:06:31.486000', '127.0.0.1', '2', 'django提高', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (55, '2018-06-13 17:06:37.363000', '127.0.0.1', '1', 'django入门', 'change', '没有字段被修改。', 10, 1);
INSERT INTO `xadmin_log` VALUES (56, '2018-06-14 17:22:10.191000', '127.0.0.1', '3', 'django课程系列1', 'create', '已添加', 10, 1);
INSERT INTO `xadmin_log` VALUES (57, '2018-06-14 17:43:18.190000', '127.0.0.1', '3', 'django课程系列1', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (58, '2018-06-14 17:58:25.764000', '127.0.0.1', '3', 'django课程系列1', 'change', '已修改 image 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (59, '2018-06-14 22:15:26.339000', '127.0.0.1', '1', 'UserCourse object', 'create', '已添加', 21, 1);
INSERT INTO `xadmin_log` VALUES (60, '2018-06-14 22:16:31.418000', '127.0.0.1', '2', 'UserCourse object', 'create', '已添加', 21, 1);
INSERT INTO `xadmin_log` VALUES (61, '2018-06-14 22:29:57.730000', '127.0.0.1', '3', 'UserCourse object', 'create', '已添加', 21, 1);
INSERT INTO `xadmin_log` VALUES (62, '2018-06-14 22:57:56.306000', '127.0.0.1', '3', 'django课程系列1', 'change', '已修改 course_org 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (63, '2018-06-14 22:58:01.264000', '127.0.0.1', '2', 'django提高', 'change', '没有字段被修改。', 10, 1);
INSERT INTO `xadmin_log` VALUES (64, '2018-06-14 22:58:11.112000', '127.0.0.1', '3', 'django课程系列1', 'change', '已修改 course_org 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (65, '2018-06-15 00:14:25.583000', '127.0.0.1', '3', 'django课程系列1', 'change', '已修改 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (66, '2018-06-15 00:14:32.726000', '127.0.0.1', '1', 'django入门', 'change', '已修改 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (67, '2018-06-15 00:14:40.759000', '127.0.0.1', '2', 'django提高', 'change', '已修改 tag 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (68, '2018-06-15 12:20:20.088000', '127.0.0.1', '1', '第一节', 'change', '没有字段被修改。', 11, 1);
INSERT INTO `xadmin_log` VALUES (69, '2018-06-15 12:20:41.518000', '127.0.0.1', '2', '第二节', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (70, '2018-06-15 12:20:47.423000', '127.0.0.1', '3', '第三节', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (71, '2018-06-15 12:20:52.911000', '127.0.0.1', '4', '第四节', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (72, '2018-06-15 12:21:00.215000', '127.0.0.1', '5', '第五节', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (73, '2018-06-15 12:21:09.968000', '127.0.0.1', '6', '第六节', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (74, '2018-06-15 12:21:15.092000', '127.0.0.1', '7', '第七节', 'create', '已添加', 11, 1);
INSERT INTO `xadmin_log` VALUES (75, '2018-06-15 12:25:22.701000', '127.0.0.1', NULL, '', 'delete', '批量删除 3 个 章节', NULL, 1);
INSERT INTO `xadmin_log` VALUES (76, '2018-06-15 12:35:12.710000', '127.0.0.1', '1', '第一集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (77, '2018-06-15 12:35:56.282000', '127.0.0.1', '1', '第一集', 'change', '没有字段被修改。', 12, 1);
INSERT INTO `xadmin_log` VALUES (78, '2018-06-15 12:36:19.000000', '127.0.0.1', '2', '第二集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (79, '2018-06-15 12:36:42.500000', '127.0.0.1', '3', '第三集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (80, '2018-06-15 12:36:58.667000', '127.0.0.1', '4', '第一集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (81, '2018-06-15 12:37:14.027000', '127.0.0.1', '5', '第二集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (82, '2018-06-15 12:37:33.892000', '127.0.0.1', '6', '第一集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (83, '2018-06-15 12:37:47.560000', '127.0.0.1', '7', '第二集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (84, '2018-06-15 12:38:03.627000', '127.0.0.1', '8', '第三集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (85, '2018-06-15 12:38:18.490000', '127.0.0.1', '9', '第四集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (86, '2018-06-15 12:38:34.584000', '127.0.0.1', '10', '第一集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (87, '2018-06-15 12:38:50.281000', '127.0.0.1', '11', '第二集', 'create', '已添加', 12, 1);
INSERT INTO `xadmin_log` VALUES (88, '2018-06-15 12:39:40.502000', '127.0.0.1', '1', 'CourseResource object', 'create', '已添加', 13, 1);
INSERT INTO `xadmin_log` VALUES (89, '2018-06-16 14:35:35.252000', '127.0.0.1', '1', 'django入门', 'change', '已修改 teacher 。', 10, 1);
INSERT INTO `xadmin_log` VALUES (90, '2018-06-17 23:08:05.832000', '127.0.0.1', '1', 'UserMessage object', 'create', '已添加', 20, 1);
INSERT INTO `xadmin_log` VALUES (91, '2018-06-17 23:10:00.786000', '127.0.0.1', '2', 'UserMessage object', 'create', '已添加', 20, 1);
INSERT INTO `xadmin_log` VALUES (92, '2018-06-17 23:10:47.103000', '127.0.0.1', '1', 'UserMessage object', 'change', '已修改 message 。', 20, 1);
INSERT INTO `xadmin_log` VALUES (93, '2018-06-17 23:13:07.590000', '127.0.0.1', '3', 'UserMessage object', 'create', '已添加', 20, 1);
INSERT INTO `xadmin_log` VALUES (94, '2018-06-19 10:42:14.982000', '127.0.0.1', '1', '第一集', 'change', '已修改 url 。', 12, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
