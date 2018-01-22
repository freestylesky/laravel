# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.31)
# Database: laraveladmin
# Generation Time: 2018-01-22 06:20:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Administrator','admin@admin.com','$2y$10$wGtUiFetdsDQGYRzGnG4buQKSsD02Qg1Qo3L.5fCFk9HWnOKqvL06','kfZZUKt49ULsYPREnHVKpn5816xyyhhJXFhoCyyebH46Px01h7K3m4XBTFX8','2018-01-12 09:47:50','2018-01-16 17:06:39'),
	(2,'Editor','editor@editor.com','$2y$10$W9jniWNSf.tNkwcYZ9isuuoUonPTJPtO/.nlMrMlAGHJuZmlyb.Yi',NULL,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(3,'wangxinyu','1456031230@qq.com','$2y$10$UxQMyoSjcK1.bhpBMyQUCutizFy0tCuTQ54e1QtP8zdljGWhtXDzS','4xgFAVUfbQ3zKQ32N8uh2l7gKxVi7m1QTeZHasVmZt5eTT1Q1E8dkSk5CcIU','2018-01-12 10:16:08','2018-01-18 11:34:10'),
	(4,'skysea','308510447@qq.com','$2y$10$WyLFEtJnKb/n.kQOsa5nYOzLlLLmbeynvGdgfagTwPdNJmgWRL7CS',NULL,'2018-01-12 11:23:26','2018-01-12 11:23:26');

/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单链接',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父级菜单id',
  `heightlight_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单高亮',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `url`, `slug`, `icon`, `parent_id`, `heightlight_url`, `sort`, `created_at`, `updated_at`)
VALUES
	(1,'系统','admin/menus','system.manage','fa fa-cogs',0,'',0,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(2,'后台目录管理','admin/menus','menus.list','',1,'',0,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(3,'后台用户管理','admin/adminuser','adminuser.list','',1,'',0,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(4,'权限管理','admin/permission','permission.list','',1,'',0,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(5,'角色管理','admin/role','role.list','',1,'',0,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(6,'用户管理','user/all','user.all','',0,'',0,'2018-01-12 09:56:57','2018-01-12 09:58:33'),
	(7,'用户添加','admin/user','user.add','',6,'',0,'2018-01-12 09:57:44','2018-01-12 15:27:37'),
	(9,'测试管理','admin/school','school.all','',0,'',0,'2018-01-16 14:43:29','2018-01-16 14:48:28'),
	(10,'测试列表','admin/school','school.index','',9,'',0,'2018-01-16 14:44:29','2018-01-16 14:49:39');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2014_10_12_000000_create_users_tables',1),
	('2014_10_12_100000_create_password_resets_table',1),
	('2017_06_02_131817_create_menus_table',1),
	('2017_06_29_024954_entrust_setup_tables',1),
	('2014_02_10_145728_notification_categories',2),
	('2014_08_01_210813_create_notification_groups_table',2),
	('2014_08_01_211045_create_notification_category_notification_group_table',2),
	('2015_05_05_212549_create_notifications_table',2),
	('2015_06_06_211555_add_expire_time_column_to_notification_table',2),
	('2015_06_06_211555_change_type_to_extra_in_notifications_table',2),
	('2015_06_07_211555_alter_category_name_to_unique',2),
	('2016_04_19_200827_make_notification_url_nullable',2),
	('2016_05_19_144531_add_stack_id_to_notifications',2),
	('2016_07_01_153156_update_version4_notifications_table',2),
	('2016_11_02_193415_drop_version4_unused_tables',2),
	('2018_01_17_132709_create_jobs_table',3),
	('2018_01_17_132718_create_failed_jobs_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notification_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification_categories`;

CREATE TABLE `notification_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notification_categories_name_unique` (`name`),
  KEY `notification_categories_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `notification_categories` WRITE;
/*!40000 ALTER TABLE `notification_categories` DISABLE KEYS */;

INSERT INTO `notification_categories` (`id`, `name`, `text`)
VALUES
	(1,'user.follow','Hello {to.name}, {from.name} is now following you and want to let you know \"{extra.message}\".');

/*!40000 ALTER TABLE `notification_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` bigint(20) unsigned DEFAULT NULL,
  `from_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_id` bigint(20) unsigned NOT NULL,
  `to_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `stack_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_from_id_index` (`from_id`),
  KEY `notifications_from_type_index` (`from_type`),
  KEY `notifications_to_id_index` (`to_id`),
  KEY `notifications_to_type_index` (`to_type`),
  KEY `notifications_category_id_index` (`category_id`),
  CONSTRAINT `notifications_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `notification_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(18,3),
	(19,3),
	(20,3),
	(21,3),
	(1,4),
	(2,4),
	(3,4),
	(4,4),
	(6,4),
	(7,4),
	(8,4),
	(10,4),
	(11,4),
	(12,4),
	(14,4),
	(15,4),
	(16,4),
	(18,4),
	(19,4),
	(20,4),
	(21,4);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'system.manage','系统管理','系统管理','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(2,'menus.list','目录列表','目录列表','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(3,'menus.add','添加目录','添加目录','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(4,'menus.edit','修改目录','修改目录','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(5,'menus.delete','删除目录','删除目录','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(6,'adminuser.list','后台用户列表','后台用户列表','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(7,'adminuser.add','添加后台用户','添加后台用户','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(8,'adminuser.edit','修改后台用户','修改后台用户','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(9,'adminuser.delete','删除后台用户','删除后台用户','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(10,'permission.list','权限列表','权限列表','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(11,'permission.add','添加权限','添加权限','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(12,'permission.edit','修改权限','修改权限','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(13,'permission.delete','删除权限','删除权限','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(14,'role.list','角色列表','角色列表','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(15,'role.add','添加角色','添加角色','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(16,'role.edit','修改角色','修改角色','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(17,'role.delete','删除角色','删除角色','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(18,'user.add','用户添加','用户添加','2018-01-12 10:04:31','2018-01-12 10:04:31'),
	(19,'user.all','用户管理','用户所有管理','2018-01-12 10:06:22','2018-01-12 10:06:22'),
	(20,'school.all','测试管理','test','2018-01-16 14:47:03','2018-01-16 14:47:22'),
	(21,'school.index','测试列表','index','2018-01-16 14:47:57','2018-01-16 14:47:57');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_admin`;

CREATE TABLE `role_admin` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_admin_role_id_foreign` (`role_id`),
  CONSTRAINT `role_admin_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `role_admin` WRITE;
/*!40000 ALTER TABLE `role_admin` DISABLE KEYS */;

INSERT INTO `role_admin` (`user_id`, `role_id`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4);

/*!40000 ALTER TABLE `role_admin` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'SuperAdmin','超级管理员','管理后台的角色','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(2,'editor','编辑','编辑','2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(3,'test','测试','测试','2018-01-12 10:15:37','2018-01-12 10:15:37'),
	(4,'客服','talk','客服','2018-01-12 11:06:45','2018-01-12 11:06:45');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schools`;

CREATE TABLE `schools` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `kind` int(10) NOT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;

INSERT INTO `schools` (`username`, `password`, `domain`, `kind`, `id`)
VALUES
	('10335','123456','career.zju.edu.cn',111110,1),
	('10075','123456','hbu.edu.cn',101010,2),
	('10076','123456','hebeu.edu.cn',101010,3),
	('10109','123456','tyust.edu.cn',111010,4),
	('10357','123456','job.ahu.edu.cn',101110,5),
	('10033','123456','cuc.edu.cn',111010,6),
	('12050','123456','sbs.edu.cn',101010,7),
	('10284','123456','nju.edu.cn',111110,8),
	('10288','123456','njust.edu.cn',111110,9),
	('13575','123456','hncst.edu.cn',101000,10),
	('10284','123456','nju.edu.cn:9081',111110,11),
	('12616','123456','cqucc.com.cn:8005',101010,12),
	('10102','123456','sjzc.edu.cn',111110,13),
	('12755','123456','cqeec.com',101010,14),
	('10062','123456','tmu.edu.cn',101010,15),
	('10360','123456','ahut.edu.cn',111010,16),
	('10294','123456','91job.gov.cn',111110,17),
	('10316','123456','91job.gov.cn',111010,18),
	('13576','123456','jy.huplc.com',111010,19),
	('10065','123456','tjnu.edu.cn',101010,20),
	('10055','123456','nankai.edu.cn',111110,21),
	('10354','123456','zjxu.edu.cn',111010,22),
	('10635','123456','swu.edu.cn',101010,23),
	('10655','123456','scfai.edu.cn',101000,24),
	('10637','123456','cqnu.edu.cn',101010,25),
	('10057','123456','tust.edu.cn',101010,26),
	('10504','123456','hzau.edu.cn',101010,27),
	('10361','123456','aust.edu.cn',111010,28),
	('10876','123456','zwu.edu.cn',101010,29),
	('10354','123456','zjxu.edu.cn',111010,30),
	('13510','123456','nwnu.edu.cn',111110,31),
	('13286','123456','hzbu.edu.cn',111010,32),
	('11057','123456','zust.edu.cn',111110,33),
	('10286','123456','seu.edu.cn',111110,34),
	('12863','123456','zj-art.com',111010,35),
	('12871','123456','zjipc.com',111010,36),
	('14119','123456','imuchuangye.cn',101010,37),
	('10008','123456','ustb.edu.cn',111110,38),
	('10344','123456','zjtcm.net',101010,39),
	('10512','123456','hubu.edu.cn',101010,40),
	('10611','123456','job.cqu.edu.cn',111110,41),
	('10500','123456','hbut.edu.cn',101010,42),
	('12867','123456','tourzj.edu.cn',101010,43),
	('12215','123456','cqipc.net',101010,44),
	('14206','123456','tjzj.edu.cn',101010,45),
	('10475','123456','henu.edu.cn',101010,46),
	('13757','123456','good-edu.cn',101000,47),
	('13030','123456','wxpoly.cn',101010,48),
	('13764','123456','mbu.cn',101010,49),
	('13735','123456','cqoa.org',101010,50),
	('10386','123456','fjrclh.com',101110,51),
	('12759','123456','cqvie.edu.cn',101010,52),
	('13784','123456','university-hr.com',101000,53),
	('13470','123456','fdzcxy.com',101000,54),
	('10876','123456','zwu.edu.cn',101010,55),
	('10129','123456','imau.edu.cn',101010,56),
	('14245','123456','xxvtc.edu.cn',101000,57),
	('13514','123456','bowenedu.cn',111110,58),
	('10057','123456','tust.edu.cn',101010,59),
	('10337','123456','zjut.edu.cn',111110,60),
	('13514','123456','bowenedu.cn',101010,61),
	('10487','123456','hust.edu.cn',101010,62),
	('13515','123456','lutcte.cn',101000,63),
	('10126','123456','imu.edu.cn',101010,64),
	('13902','123456','university-hr.cn',101010,65),
	('10351','123456','wzu.edu.cn',111110,66),
	('10631','123456','cqmu.edu.cn',101000,67),
	('10248','123456','job.sjtu.edu.cn',100010,68),
	('10151','123456','dlmu.edu.cn',101000,69),
	('10551','123456','huse.cn',101010,70),
	('13287','123456','jy.hutc.zj.cn',101010,71),
	('12818','123456','bzpt.edu.cn',101000,72),
	('10434','123456','sdau.edu.cn',101010,73),
	('10920','123456','hbpu.edu.cn',101000,74),
	('10192','123456','jlict.edu.cn',101010,75),
	('10232','123456','qqhru.edu.cn',101010,76),
	('10139','123456','imufe.edu.cn',101010,77),
	('13662','123456','chsnenu.edu.cn',101010,78),
	('11646','123456','nbu.edu.cn',100010,79),
	('11276','123456','njit.edu.cn',101010,80),
	('10233','123456','mdjnu.com',101000,81),
	('1022410232','123456','neau.edu.cn',101010,82),
	('10354','123456','zjxu.edu.cn',101010,83),
	('10007','123456','bit.edu.cn',101000,84),
	('13649','123456','xujc.com',101000,85),
	('11230','123456','university-hr.com',101010,86),
	('13472','123456','fjnu.edu.cn',101000,87),
	('10013','123456','bupt.edu.cn',101110,88),
	('10347','123456','jy.hutc.zj.cn',101010,89),
	('13022','123456','nit.net.cn',100010,90),
	('11113','123456','szpt.edu.cn',101010,91),
	('10673','123456','job.ynu.edu.cn',101010,92),
	('11832','123456','heuet.edu.cn',101000,93),
	('10287','123456','nuaa.edu.cn',101100,94),
	('10285','123456','91job.gov.cn',101010,95),
	('13892','123456','sanyau.edu.cn',101010,96),
	('12992','123456','mnkjxy.com',101000,97),
	('14286','123456','lnyj.net',101000,98),
	('10183','123456','jlu.edu.cn',101110,99),
	('13500','123456','sstvc.com',101010,100),
	('12863','123456','zj-art.com',101000,101),
	('11114','123456','jobsys.cn',101010,102),
	('11561','123456','gnun.edu.cn',101010,103),
	('10731','123456','lut.cn',101110,104),
	('10184','123456','ybu.edu.cn',101110,105),
	('12772','123456','hypt.edu.cn',101000,106),
	('10429','123456','zsjy.qut.edu.cn',101010,107),
	('13710','123456','jmpt.cn',101010,108),
	('10202','123456','thnu.edu.cn',101010,109),
	('10647','123456','yznu.cn',101010,110),
	('11075','123456','ctgu.edu.cn',101010,111),
	('10426','123456','qust.edu.cn',101000,112),
	('10424','123456','sdust.edu.cn',101000,113),
	('10201','123456','bhjyw.com',101010,114),
	('11726','123456','ccu.edu.cn',101000,115),
	('10908','123456','sdada.edu.cn',101010,116),
	('12902','123456','jltc.edu.cn',101000,117),
	('10056','123456','tju.edu.cn',101010,118),
	('10364','123456','ahau.edu.cn',101010,119),
	('10222','123456','jmsu.cn',101010,120),
	('10054','123456','10054',10054,121),
	('10054','123456','10054',10054,122),
	('10054','123456','10054',10054,123),
	('10054','123456','10054',10054,124),
	('10054','123456','10054',10054,125),
	('10054','123456','10054',10054,126),
	('12341234123412341234','111dcfeb6d42b320d9b8','1',0,127),
	('12341234123412341234','111dcfeb6d42b320d9b8','1',0,128),
	('12341234123412341234','111dcfeb6d42b320d9b8','1',0,129),
	('12341234123412341234','111dcfeb6d42b320d9b8','1',0,130),
	('12341234123412341234','111dcfeb6d42b320d9b8','1',0,131);

/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `email`)
VALUES
	(1,'sky','1456031230@qq.com'),
	(2,'11111','308510447@qq.com'),
	(3,'222222','1456031230@qq.com'),
	(4,'test','1111111@163.com'),
	(5,'test','1111111@163.com');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'UserName','username@username.com','$2y$10$FnnmUkW85Tzt0TiitMwgFONnl8GIHrG34SEmsGqBCJmGAKKLbYolK',NULL,'2018-01-12 09:47:50','2018-01-12 09:47:50'),
	(2,'skysea','1456031230@qq.com','$2y$10$FnnmUkW85Tzt0TiitMwgFONnl8GIHrG34SEmsGqBCJmGAKKLbYolK',NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
