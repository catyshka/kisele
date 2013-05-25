-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: innasite
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add Галерея',9,'add_gallery'),(26,'Can change Галерея',9,'change_gallery'),(27,'Can delete Галерея',9,'delete_gallery'),(28,'Can add Группа фото',10,'add_picturegroup'),(29,'Can change Группа фото',10,'change_picturegroup'),(30,'Can delete Группа фото',10,'delete_picturegroup'),(31,'Can add picture',11,'add_picture'),(32,'Can change picture',11,'change_picture'),(33,'Can delete picture',11,'delete_picture'),(34,'Can add Фотография',12,'add_galleryplugin'),(35,'Can change Фотография',12,'change_galleryplugin'),(36,'Can delete Фотография',12,'delete_galleryplugin'),(37,'Can publish Page',13,'publish_page'),(38,'Can add placeholder',14,'add_placeholder'),(39,'Can change placeholder',14,'change_placeholder'),(40,'Can delete placeholder',14,'delete_placeholder'),(41,'Can add cms plugin',15,'add_cmsplugin'),(42,'Can change cms plugin',15,'change_cmsplugin'),(43,'Can delete cms plugin',15,'delete_cmsplugin'),(44,'Can add page',13,'add_page'),(45,'Can change page',13,'change_page'),(46,'Can delete page',13,'delete_page'),(47,'Can view page',13,'view_page'),(48,'Can add Page moderator state',16,'add_pagemoderatorstate'),(49,'Can change Page moderator state',16,'change_pagemoderatorstate'),(50,'Can delete Page moderator state',16,'delete_pagemoderatorstate'),(51,'Can add Page global permission',17,'add_globalpagepermission'),(52,'Can change Page global permission',17,'change_globalpagepermission'),(53,'Can delete Page global permission',17,'delete_globalpagepermission'),(54,'Can add Page permission',18,'add_pagepermission'),(55,'Can change Page permission',18,'change_pagepermission'),(56,'Can delete Page permission',18,'delete_pagepermission'),(57,'Can add User (page)',19,'add_pageuser'),(58,'Can change User (page)',19,'change_pageuser'),(59,'Can delete User (page)',19,'delete_pageuser'),(60,'Can add User group (page)',20,'add_pageusergroup'),(61,'Can change User group (page)',20,'change_pageusergroup'),(62,'Can delete User group (page)',20,'delete_pageusergroup'),(63,'Can add title',21,'add_title'),(64,'Can change title',21,'change_title'),(65,'Can delete title',21,'delete_title'),(66,'Can add cache key',22,'add_cachekey'),(67,'Can change cache key',22,'change_cachekey'),(68,'Can delete cache key',22,'delete_cachekey'),(69,'Can add text',23,'add_text'),(70,'Can change text',23,'change_text'),(71,'Can delete text',23,'delete_text');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$AG5LlEFwC5RW$qnUnWsvn3Cf2o+D9AK7xxV9r/mX7pR8OCCtvJXKMjIs=','2013-05-22 10:46:01',1,'admin','','','catyshka@gmail.com',1,1,'2013-05-22 10:44:49');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeholder_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position` smallint(5) unsigned DEFAULT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_cmsplugin_2037f56b` (`placeholder_id`),
  KEY `cms_cmsplugin_410d0aac` (`parent_id`),
  KEY `cms_cmsplugin_784efa61` (`language`),
  KEY `cms_cmsplugin_d2e27db2` (`plugin_type`),
  KEY `cms_cmsplugin_b8f3f94a` (`level`),
  KEY `cms_cmsplugin_f777e2bb` (`lft`),
  KEY `cms_cmsplugin_76886718` (`rght`),
  KEY `cms_cmsplugin_f391089a` (`tree_id`),
  CONSTRAINT `parent_id_refs_id_1f4cd5fd` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `placeholder_id_refs_id_209446bc` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (1,7,NULL,0,'en','CMSPlainGalleryPlugin','2013-05-22 10:56:29','2013-05-22 10:56:33',0,1,2,1),(2,8,NULL,0,'en','CMSPlainGalleryPlugin','2013-05-22 10:56:29','2013-05-22 10:56:40',0,1,2,2),(5,21,NULL,0,'en','CMSGalleryPlugin','2013-05-25 08:49:05','2013-05-25 08:49:11',0,1,2,5),(6,22,NULL,0,'en','CMSGalleryPlugin','2013-05-25 08:49:05','2013-05-25 08:49:20',0,1,2,6),(8,45,NULL,0,'en','TextPlugin','2013-05-25 11:11:06','2013-05-25 11:15:07',0,1,2,8),(9,46,NULL,0,'en','TextPlugin','2013-05-25 11:11:39','2013-05-25 11:11:44',0,1,2,9),(10,47,NULL,0,'en','TextPlugin','2013-05-25 11:12:02','2013-05-25 11:12:07',0,1,2,10),(11,48,NULL,0,'en','TextPlugin','2013-05-25 11:12:02','2013-05-25 11:12:14',0,1,2,11),(12,49,NULL,0,'en','TextPlugin','2013-05-25 11:11:39','2013-05-25 11:12:15',0,1,2,12),(17,50,NULL,0,'en','TextPlugin','2013-05-25 11:11:06','2013-05-25 11:24:58',0,1,2,13);
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_6340c63c` (`user_id`),
  KEY `cms_globalpagepermission_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_4edd8708` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_ac9af97` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission__globalpagepermission_id_393f3406_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermission_sites_d39aba82` (`globalpagepermission_id`),
  KEY `cms_globalpagepermission_sites_99732b5c` (`site_id`),
  CONSTRAINT `globalpagepermission_id_refs_id_2c730e06` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `site_id_refs_id_38dfe611` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(70) NOT NULL,
  `changed_by` varchar(70) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publication_end_date` datetime DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `template` varchar(100) NOT NULL,
  `site_id` int(11) NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `publisher_state` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_410d0aac` (`parent_id`),
  KEY `cms_page_ecf7107f` (`publication_date`),
  KEY `cms_page_fef6ef40` (`publication_end_date`),
  KEY `cms_page_a49c2a2e` (`in_navigation`),
  KEY `cms_page_5566f6cf` (`soft_root`),
  KEY `cms_page_47dd39d3` (`reverse_id`),
  KEY `cms_page_5d1be695` (`navigation_extenders`),
  KEY `cms_page_99732b5c` (`site_id`),
  KEY `cms_page_b8f3f94a` (`level`),
  KEY `cms_page_f777e2bb` (`lft`),
  KEY `cms_page_76886718` (`rght`),
  KEY `cms_page_f391089a` (`tree_id`),
  KEY `cms_page_83b09d4f` (`limit_visibility_in_menu`),
  KEY `cms_page_8f14a007` (`publisher_is_draft`),
  KEY `cms_page_0a4ff810` (`publisher_state`),
  CONSTRAINT `parent_id_refs_id_653a773` FOREIGN KEY (`parent_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `publisher_public_id_refs_id_653a773` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `site_id_refs_id_128f08e6` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'admin','admin',NULL,'2013-05-22 10:46:34','2013-05-22 10:49:23','2013-05-22 10:46:40',NULL,1,0,NULL,'',1,'index.html',1,0,1,2,1,0,NULL,1,2,0),(2,'admin','admin',NULL,'2013-05-22 10:46:45','2013-05-22 10:49:23','2013-05-22 10:46:40',NULL,1,0,NULL,'',1,'index.html',1,0,1,2,2,0,NULL,0,1,0),(3,'admin','admin',NULL,'2013-05-22 10:47:11','2013-05-23 14:47:51','2013-05-22 10:48:17',NULL,1,0,'gallery_catalog','',1,'gallery_catalog.html',1,0,1,6,7,0,NULL,1,4,0),(4,'admin','admin',NULL,'2013-05-22 10:48:22','2013-05-23 14:47:51','2013-05-22 10:48:17',NULL,1,0,'gallery_catalog','',1,'gallery_catalog.html',1,0,1,6,4,0,NULL,0,3,0),(5,'admin','admin',3,'2013-05-22 10:49:58','2013-05-22 10:56:40','2013-05-22 10:50:00',NULL,1,0,NULL,'',1,'gallery.html',1,1,2,3,7,0,NULL,1,6,0),(6,'admin','admin',4,'2013-05-22 10:50:05','2013-05-22 10:56:40','2013-05-22 10:50:00',NULL,1,0,NULL,'',1,'gallery.html',1,1,2,3,4,0,NULL,0,5,0),(7,'admin','admin',3,'2013-05-23 14:50:12','2013-05-23 14:50:56','2013-05-23 14:50:12',NULL,1,0,NULL,'',1,'gallery.html',1,1,4,5,7,0,NULL,1,8,0),(8,'admin','admin',4,'2013-05-23 14:50:17','2013-05-23 14:50:56','2013-05-23 14:50:12',NULL,1,0,NULL,'',1,'gallery.html',1,1,4,5,4,0,NULL,0,7,0),(10,'admin','admin',NULL,'2013-05-23 16:30:05','2013-05-25 08:49:20','2013-05-23 16:30:41',NULL,1,0,NULL,'',1,'galleryOneColumn.html',1,0,1,2,6,0,NULL,1,11,0),(11,'admin','admin',NULL,'2013-05-23 16:30:45','2013-05-25 08:49:20','2013-05-23 16:30:41',NULL,1,0,NULL,'',1,'galleryOneColumn.html',1,0,1,2,3,0,NULL,0,10,0),(12,'admin','admin',NULL,'2013-05-25 11:03:12','2013-05-25 11:24:46','2013-05-25 11:03:29',NULL,1,0,'articles','',1,'articles.html',1,0,1,8,8,0,NULL,1,13,0),(13,'admin','admin',NULL,'2013-05-25 11:03:34','2013-05-25 11:24:46','2013-05-25 11:03:29',NULL,1,0,'articles','',1,'articles.html',1,0,1,10,5,0,NULL,0,12,0),(15,'admin','admin',12,'2013-05-25 11:08:22','2013-05-25 11:24:58','2013-05-25 11:08:46',NULL,1,0,NULL,'',1,'articles.html',1,1,2,3,8,0,NULL,1,20,0),(16,'admin','admin',12,'2013-05-25 11:08:33','2013-05-25 11:12:15','2013-05-25 11:08:46',NULL,1,0,NULL,'',1,'articles.html',1,1,4,5,8,0,NULL,1,19,0),(17,'admin','admin',12,'2013-05-25 11:08:44','2013-05-25 11:12:14','2013-05-25 11:08:45',NULL,1,0,NULL,'',1,'articles.html',1,1,6,7,8,0,NULL,1,18,0),(18,'admin','admin',13,'2013-05-25 11:08:50','2013-05-25 11:12:14','2013-05-25 11:08:45',NULL,1,0,NULL,'',1,'articles.html',1,1,8,9,5,0,NULL,0,17,0),(19,'admin','admin',13,'2013-05-25 11:08:50','2013-05-25 11:12:15','2013-05-25 11:08:46',NULL,1,0,NULL,'',1,'articles.html',1,1,6,7,5,0,NULL,0,16,0),(20,'admin','admin',13,'2013-05-25 11:08:51','2013-05-25 11:24:58','2013-05-25 11:08:46',NULL,1,0,NULL,'',1,'articles.html',1,1,4,5,5,0,NULL,0,15,0);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_6a0df834_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholders_3fb9c94f` (`page_id`),
  KEY `cms_page_placeholders_2037f56b` (`placeholder_id`),
  CONSTRAINT `page_id_refs_id_4dd4551b` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `placeholder_id_refs_id_4f20b6a0` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,4,6),(7,5,7),(8,6,8),(9,7,9),(10,7,10),(13,7,13),(11,8,11),(12,8,12),(14,8,14),(17,10,17),(18,10,18),(21,10,21),(19,11,19),(20,11,20),(22,11,22),(23,12,23),(24,12,24),(43,12,43),(25,13,25),(26,13,26),(44,13,44),(29,15,29),(30,15,30),(45,15,45),(31,16,31),(32,16,32),(46,16,46),(33,17,33),(34,17,34),(47,17,47),(35,18,35),(36,18,36),(48,18,48),(37,19,37),(38,19,38),(49,19,49),(39,20,39),(40,20,40),(50,20,50);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagemoderatorstate`
--

DROP TABLE IF EXISTS `cms_pagemoderatorstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagemoderatorstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `action` varchar(3) DEFAULT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagemoderatorstate_3fb9c94f` (`page_id`),
  KEY `cms_pagemoderatorstate_6340c63c` (`user_id`),
  CONSTRAINT `page_id_refs_id_b236163` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `user_id_refs_id_2808fb19` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagemoderatorstate`
--

LOCK TABLES `cms_pagemoderatorstate` WRITE;
/*!40000 ALTER TABLE `cms_pagemoderatorstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagemoderatorstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_6340c63c` (`user_id`),
  KEY `cms_pagepermission_5f412f9a` (`group_id`),
  KEY `cms_pagepermission_3fb9c94f` (`page_id`),
  CONSTRAINT `group_id_refs_id_2c9c6fcd` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `page_id_refs_id_2ce5c936` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `user_id_refs_id_4f0ab76c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_0c98d849` (`created_by_id`),
  CONSTRAINT `created_by_id_refs_id_16b8b1ea` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `user_ptr_id_refs_id_16b8b1ea` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_0c98d849` (`created_by_id`),
  CONSTRAINT `created_by_id_refs_id_3dc63396` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_ptr_id_refs_id_661a1ca9` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(50) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_d5d328be` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'main_bar',NULL),(2,'left_bar',NULL),(3,'main_bar',NULL),(4,'left_bar',NULL),(5,'gallery_content',NULL),(6,'gallery_content',NULL),(7,'gallery_content',NULL),(8,'gallery_content',NULL),(9,'main_bar',NULL),(10,'left_bar',NULL),(11,'main_bar',NULL),(12,'left_bar',NULL),(13,'gallery_content',NULL),(14,'gallery_content',NULL),(17,'main_bar',NULL),(18,'left_bar',NULL),(19,'main_bar',NULL),(20,'left_bar',NULL),(21,'gallery_content',NULL),(22,'gallery_content',NULL),(23,'main_bar',NULL),(24,'left_bar',NULL),(25,'main_bar',NULL),(26,'left_bar',NULL),(29,'main_bar',NULL),(30,'left_bar',NULL),(31,'main_bar',NULL),(32,'left_bar',NULL),(33,'main_bar',NULL),(34,'left_bar',NULL),(35,'main_bar',NULL),(36,'left_bar',NULL),(37,'main_bar',NULL),(38,'left_bar',NULL),(39,'main_bar',NULL),(40,'left_bar',NULL),(41,'main_bar',NULL),(42,'left_bar',NULL),(43,'content',NULL),(44,'content',NULL),(45,'content',NULL),(46,'content',NULL),(47,'content',NULL),(48,'content',NULL),(49,'content',NULL),(50,'content',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `redirect` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_507a9d79_uniq` (`language`,`page_id`),
  KEY `cms_title_784efa61` (`language`),
  KEY `cms_title_f52cfca0` (`slug`),
  KEY `cms_title_73e78684` (`path`),
  KEY `cms_title_94cdf987` (`has_url_overwrite`),
  KEY `cms_title_daea3734` (`application_urls`),
  KEY `cms_title_3fb9c94f` (`page_id`),
  CONSTRAINT `page_id_refs_id_36799a1` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','Главная','','glavnaya','',0,'','','','','',1,'2013-05-22 10:46:34'),(2,'en','Главная','','glavnaya','',0,'','','','','',2,'2013-05-22 10:46:34'),(3,'en','Галерея работ','','galereya-rabot','galereya-rabot',0,'','','','','',3,'2013-05-22 10:47:11'),(4,'en','Галерея работ','','galereya-rabot','galereya-rabot',0,'','','','','',4,'2013-05-22 10:47:11'),(5,'en','Преображение',NULL,'preobrazhenie','galereya-rabot/preobrazhenie',0,NULL,NULL,NULL,NULL,NULL,5,'2013-05-22 10:49:58'),(6,'en','Преображение',NULL,'preobrazhenie','galereya-rabot/preobrazhenie',0,NULL,NULL,NULL,NULL,NULL,6,'2013-05-22 10:49:58'),(7,'en','Перманентный макияж','','permanentnyj-makiyazh','galereya-rabot/permanentnyj-makiyazh',0,'','','','','',7,'2013-05-23 14:50:12'),(8,'en','Перманентный макияж','','permanentnyj-makiyazh','galereya-rabot/permanentnyj-makiyazh',0,'','','','','',8,'2013-05-23 14:50:12'),(10,'en','Дипломы','','diplomy2','diplomy2',0,'','','','','',10,'2013-05-23 16:30:05'),(11,'en','Дипломы','','diplomy2','diplomy2',0,'','','','','',11,'2013-05-23 16:30:05'),(12,'en','Услуги','','uslugi','uslugi',0,'','','','','',12,'2013-05-25 11:03:12'),(13,'en','Услуги','','uslugi','uslugi',0,'','','','','',13,'2013-05-25 11:03:12'),(15,'en','Инъекции красоты','','inekcii-krasoty','uslugi/inekcii-krasoty',0,'','','','','',15,'2013-05-25 11:08:22'),(16,'en','Пилинги','','pilingi','uslugi/pilingi',0,'','','','','',16,'2013-05-25 11:08:33'),(17,'en','Аппаратная косметология','','apparatnaya-kosmetologiya','uslugi/apparatnaya-kosmetologiya',0,'','','','','',17,'2013-05-25 11:08:44'),(18,'en','Аппаратная косметология','','apparatnaya-kosmetologiya','uslugi/apparatnaya-kosmetologiya',0,'','','','','',18,'2013-05-25 11:08:44'),(19,'en','Пилинги','','pilingi','uslugi/pilingi',0,'','','','','',19,'2013-05-25 11:08:33'),(20,'en','Инъекции красоты','','inekcii-krasoty','uslugi/inekcii-krasoty',0,'','','','','',20,'2013-05-25 11:08:22');
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_galleryplugin`
--

DROP TABLE IF EXISTS `cmsplugin_galleryplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_galleryplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_galleryplugin_579c518c` (`gallery_id`),
  CONSTRAINT `gallery_id_refs_id_0e12b060` FOREIGN KEY (`gallery_id`) REFERENCES `gallery_gallery` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_galleryplugin`
--

LOCK TABLES `cmsplugin_galleryplugin` WRITE;
/*!40000 ALTER TABLE `cmsplugin_galleryplugin` DISABLE KEYS */;
INSERT INTO `cmsplugin_galleryplugin` VALUES (1,1),(2,1),(5,2),(6,2);
/*!40000 ALTER TABLE `cmsplugin_galleryplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_text`
--

DROP TABLE IF EXISTS `cmsplugin_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_ptr_id_refs_id_175e936e` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_text`
--

LOCK TABLES `cmsplugin_text` WRITE;
/*!40000 ALTER TABLE `cmsplugin_text` DISABLE KEYS */;
INSERT INTO `cmsplugin_text` VALUES (8,'   По  причинам,  вполне  убедительным  для  автора,  многие  места, люди,наблюдения и впечатления не вошли в  эту  книгу.  Некоторые  из  них  должныостаться  в  тайне,  а  другие  известны всем, о них писали и, без сомнения,будут писать еще.     Здесь ничего не говорится о стадионе \"Анастази\", где ринг был  в  саду,под деревьями стояли столики, а официантами были боксеры. Ни о тренировках сЛарри Гейнсом, ни о знаменитых матчах по двадцать раундов в Зимнем цирке. Нио  таких  близких  друзьях,  как  Чарли Суини, Билл Берд и Майк Стрэйтер илиАндре Массон  и  Миро.  Ничего  не  говорится  ни  о  наших  путешествиях  вШварцвальд, ни о наших однодневных прогулках по любимым лесам вокруг Парижа.Было  бы  очень  хорошо,  если  бы  все  это вошло в книгу, но пока придетсяобойтись без этого.     Если читатель пожелает, он может считать эту книгу  беллетристикой.  Новедь  и  беллетристическое произведение может пролить какой-то свет на то, о<p>чем пишут, как о реальных фактах.</p>'),(9,'<p>test</p>'),(10,'<p>test</p>'),(11,'<p>test</p>'),(12,'<p>test</p>'),(17,'   По  причинам,  вполне  убедительным  для  автора,  многие  места, люди,наблюдения и впечатления не вошли в  эту  книгу.  Некоторые  из  них  должныостаться  в  тайне,  а  другие  известны всем, о них писали и, без сомнения,будут писать еще.     Здесь ничего не говорится о стадионе \"Анастази\", где ринг был  в  саду,под деревьями стояли столики, а официантами были боксеры. Ни о тренировках сЛарри Гейнсом, ни о знаменитых матчах по двадцать раундов в Зимнем цирке. Нио  таких  близких  друзьях,  как  Чарли Суини, Билл Берд и Майк Стрэйтер илиАндре Массон  и  Миро.  Ничего  не  говорится  ни  о  наших  путешествиях  вШварцвальд, ни о наших однодневных прогулках по любимым лесам вокруг Парижа.Было  бы  очень  хорошо,  если  бы  все  это вошло в книгу, но пока придетсяобойтись без этого.     Если читатель пожелает, он может считать эту книгу  беллетристикой.  Новедь  и  беллетристическое произведение может пролить какой-то свет на то, о<p>чем пишут, как о реальных фактах.</p>');
/*!40000 ALTER TABLE `cmsplugin_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-05-22 10:46:34',1,13,'1','Главная',1,''),(2,'2013-05-22 10:47:11',1,13,'3','Галерея работ',1,''),(3,'2013-05-22 10:47:27',1,9,'1','Преображение',1,''),(4,'2013-05-22 10:47:49',1,10,'1','Валя02.01.13',1,''),(5,'2013-05-22 10:48:07',1,10,'2','Света03.12.11',1,''),(6,'2013-05-22 10:48:47',1,13,'3','Галерея работ',2,'Changed template and language.'),(7,'2013-05-22 10:49:21',1,13,'1','Главная',2,'Changed template and language.'),(8,'2013-05-22 10:49:58',1,13,'5','Преображение',1,''),(9,'2013-05-23 14:47:36',1,13,'3','Галерея работ',2,'Changed reverse_id and language.'),(10,'2013-05-23 14:50:12',1,13,'7','Перманентный макияж',1,''),(11,'2013-05-23 14:50:52',1,13,'7','Перманентный макияж',2,'Changed template and language.'),(12,'2013-05-23 16:28:09',1,13,'9','Дипломы',1,''),(13,'2013-05-23 16:29:17',1,13,'9','Дипломы',3,''),(14,'2013-05-23 16:30:05',1,13,'10','Дипломы',1,''),(15,'2013-05-25 06:58:47',1,9,'2','Дипломы',1,''),(16,'2013-05-25 06:59:21',1,10,'3','1',1,''),(17,'2013-05-25 07:04:17',1,13,'10','Дипломы',2,'Changed template and language.'),(18,'2013-05-25 07:04:53',1,13,'10','Дипломы',2,'Changed language.'),(19,'2013-05-25 07:39:48',1,10,'3','1',2,'Changed gallery.'),(20,'2013-05-25 11:03:12',1,13,'12','Услуги',1,''),(21,'2013-05-25 11:08:04',1,13,'14','Перманентный макияж',1,''),(22,'2013-05-25 11:08:22',1,13,'15','Инъекции красоты',1,''),(23,'2013-05-25 11:08:33',1,13,'16','Пилинги',1,''),(24,'2013-05-25 11:08:44',1,13,'17','Аппаратная косметология',1,''),(25,'2013-05-25 11:09:25',1,13,'12','Услуги',2,'Changed template and language.'),(26,'2013-05-25 11:11:25',1,13,'14','Перманентный макияж',3,''),(27,'2013-05-25 11:11:46',1,13,'16','Пилинги',2,'Changed template and language.'),(28,'2013-05-25 11:12:09',1,13,'17','Аппаратная косметология',2,'Changed template and language.'),(29,'2013-05-25 11:13:00',1,13,'15','Инъекции красоты',2,'Changed template and language.'),(30,'2013-05-25 11:14:10',1,13,'15','Инъекции красоты',2,'Changed language.'),(31,'2013-05-25 11:15:09',1,13,'15','Инъекции красоты',2,'Changed language.'),(32,'2013-05-25 11:24:43',1,13,'12','Услуги',2,'Changed reverse_id and language.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'Галерея','gallery','gallery'),(10,'Группа фото','gallery','picturegroup'),(11,'picture','gallery','picture'),(12,'Фотография','gallery','galleryplugin'),(13,'','cms','page'),(14,'placeholder','cms','placeholder'),(15,'cms plugin','cms','cmsplugin'),(16,'Page moderator state','cms','pagemoderatorstate'),(17,'Page global permission','cms','globalpagepermission'),(18,'Page permission','cms','pagepermission'),(19,'User (page)','cms','pageuser'),(20,'User group (page)','cms','pageusergroup'),(21,'title','cms','title'),(22,'cache key','menus','cachekey'),(23,'text','text','text');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('s25h70d6xsaror2go4x38cbwzxyyx3qo','OTE0MTRmOTNmNWM2OWEyNTA5ZmQ0NzYyNjRkYzhlZjc0NjgxNDc4NjqAAn1xAShVDmNtc19hZG1pbl9zaXRligEBVQ1fYXV0aF91c2VyX2lkigEBVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQlfbWVzc2FnZXNdcQIoY2RqYW5nby5jb250cmliLm1lc3NhZ2VzLnN0b3JhZ2UuYmFzZQpNZXNzYWdlCnEDKYFxBH1xBShVCmV4dHJhX3RhZ3NxBlgAAAAAVQdtZXNzYWdlcQdYSAAAAFRoZSBwYWdlICLQn9C10YDQvNCw0L3QtdC90YLQvdGL0Lkg0LzQsNC60LjRj9C2IiB3YXMgYWRkZWQgc3VjY2Vzc2Z1bGx5LlUFbGV2ZWxxCEsUdWJoAymBcQl9cQooaAZYAAAAAGgHWEIAAABUaGUgcGFnZSAi0JjQvdGK0LXQutGG0LjQuCDQutGA0LDRgdC+0YLRiyIgd2FzIGFkZGVkIHN1Y2Nlc3NmdWxseS5oCEsUdWJoAymBcQt9cQwoaAZYAAAAAGgHWDEAAABUaGUgcGFnZSAi0J/QuNC70LjQvdCz0LgiIHdhcyBhZGRlZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXENfXEOKGgGWAAAAABoB1hQAAAAVGhlIHBhZ2UgItCQ0L/Qv9Cw0YDQsNGC0L3QsNGPINC60L7RgdC80LXRgtC+0LvQvtCz0LjRjyIgd2FzIGFkZGVkIHN1Y2Nlc3NmdWxseS5oCEsUdWJoAymBcQ99cRAoaAZYAAAAAGgHWFMAAABUaGUgcGFnZSAi0JDQv9C/0LDRgNCw0YLQvdCw0Y8g0LrQvtGB0LzQtdGC0L7Qu9C+0LPQuNGPIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZGgISxR1YmgDKYFxEX1xEihoBlgAAAAAaAdYRQAAAFRoZSBwYWdlICLQmNC90YrQtdC60YbQuNC4INC60YDQsNGB0L7RgtGLIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZGgISxR1YmgDKYFxE31xFChoBlgAAAAAaAdYSwAAAFRoZSBwYWdlICLQn9C10YDQvNCw0L3QtdC90YLQvdGL0Lkg0LzQsNC60LjRj9C2IiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZGgISxR1YmgDKYFxFX1xFihoBlgAAAAAaAdYNgAAAFRoZSBwYWdlICLQn9C40LvQuNC90LPQuCIgd2FzIHN1Y2Nlc3NmdWxseSB1bnB1Ymxpc2hlZGgISxR1YmgDKYFxF31xGChoBlgAAAAAaAdYNAAAAFRoZSBwYWdlICLQn9C40LvQuNC90LPQuCIgd2FzIHN1Y2Nlc3NmdWxseSBwdWJsaXNoZWRoCEsUdWJoAymBcRl9cRooaAZYAAAAAGgHWFQAAABUaGUgcGFnZSAi0JDQv9C/0LDRgNCw0YLQvdCw0Y8g0LrQvtGB0LzQtdGC0L7Qu9C+0LPQuNGPIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZC5oCEsUdWJoAymBcRt9cRwoaAZYAAAAAGgHWDUAAABUaGUgcGFnZSAi0J/QuNC70LjQvdCz0LgiIHdhcyBzdWNjZXNzZnVsbHkgcHVibGlzaGVkLmgISxR1YmgDKYFxHX1xHihoBlgAAAAAaAdYRgAAAFRoZSBwYWdlICLQmNC90YrQtdC60YbQuNC4INC60YDQsNGB0L7RgtGLIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZC5oCEsUdWJoAymBcR99cSAoaAZYAAAAAGgHWEwAAABUaGUgcGFnZSAi0J/QtdGA0LzQsNC90LXQvdGC0L3Ri9C5INC80LDQutC40Y/QtiIgd2FzIHN1Y2Nlc3NmdWxseSBwdWJsaXNoZWQuaAhLFHViaAMpgXEhfXEiKGgGWAAAAABoB1gxAAAAVGhlIHBhZ2UgItCj0YHQu9GD0LPQuCIgd2FzIGNoYW5nZWQgc3VjY2Vzc2Z1bGx5LmgISxR1YmgDKYFxI31xJChoBlgAAAAAaAdYMwAAAFRoZSBwYWdlICLQo9GB0LvRg9Cz0LgiIHdhcyBzdWNjZXNzZnVsbHkgcHVibGlzaGVkLmgISxR1YmgDKYFxJX1xJihoBlgAAAAAaAdYRAAAAFRoZSB0ZXh0ICJ0ZXN0IiB3YXMgYWRkZWQgc3VjY2Vzc2Z1bGx5LiBZb3UgbWF5IGVkaXQgaXQgYWdhaW4gYmVsb3cuaAhLFHViaAMpgXEnfXEoKGgGWAAAAABoB1hDAAAAVGhlIHRleHQgInRzdCIgd2FzIGFkZGVkIHN1Y2Nlc3NmdWxseS4gWW91IG1heSBlZGl0IGl0IGFnYWluIGJlbG93LmgISxR1YmgDKYFxKX1xKihoBlgAAAAAaAdYSgAAAFRoZSBwYWdlICLQn9C10YDQvNCw0L3QtdC90YLQvdGL0Lkg0LzQsNC60LjRj9C2IiB3YXMgZGVsZXRlZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXErfXEsKGgGWAAAAABoB1hEAAAAVGhlIHRleHQgInRlc3QiIHdhcyBhZGRlZCBzdWNjZXNzZnVsbHkuIFlvdSBtYXkgZWRpdCBpdCBhZ2FpbiBiZWxvdy5oCEsUdWJoAymBcS19cS4oaAZYAAAAAGgHWDMAAABUaGUgcGFnZSAi0J/QuNC70LjQvdCz0LgiIHdhcyBjaGFuZ2VkIHN1Y2Nlc3NmdWxseS5oCEsUdWJoAymBcS99cTAoaAZYAAAAAGgHWEQAAABUaGUgdGV4dCAidGVzdCIgd2FzIGFkZGVkIHN1Y2Nlc3NmdWxseS4gWW91IG1heSBlZGl0IGl0IGFnYWluIGJlbG93LmgISxR1YmgDKYFxMX1xMihoBlgAAAAAaAdYUgAAAFRoZSBwYWdlICLQkNC/0L/QsNGA0LDRgtC90LDRjyDQutC+0YHQvNC10YLQvtC70L7Qs9C40Y8iIHdhcyBjaGFuZ2VkIHN1Y2Nlc3NmdWxseS5oCEsUdWJoAymBcTN9cTQoaAZYAAAAAGgHWFQAAABUaGUgcGFnZSAi0JDQv9C/0LDRgNCw0YLQvdCw0Y8g0LrQvtGB0LzQtdGC0L7Qu9C+0LPQuNGPIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZC5oCEsUdWJoAymBcTV9cTYoaAZYAAAAAGgHWDUAAABUaGUgcGFnZSAi0J/QuNC70LjQvdCz0LgiIHdhcyBzdWNjZXNzZnVsbHkgcHVibGlzaGVkLmgISxR1YmgDKYFxN31xOChoBlgAAAAAaAdYRgAAAFRoZSBwYWdlICLQmNC90YrQtdC60YbQuNC4INC60YDQsNGB0L7RgtGLIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZC5oCEsUdWJoAymBcTl9cTooaAZYAAAAAGgHWEQAAABUaGUgcGFnZSAi0JjQvdGK0LXQutGG0LjQuCDQutGA0LDRgdC+0YLRiyIgd2FzIGNoYW5nZWQgc3VjY2Vzc2Z1bGx5LmgISxR1YmgDKYFxO31xPChoBlgAAAAAaAdYRgAAAFRoZSBwYWdlICLQmNC90YrQtdC60YbQuNC4INC60YDQsNGB0L7RgtGLIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZC5oCEsUdWJoAymBcT19cT4oaAZYAAAAAGgHWHEAAABUaGUgdGV4dCAiICAg0J/QviAg0L/RgNC40YfQuNC90LDQvCwgINCy0L/QvtC70L3QtSAg0YMuLi4iIHdhcyBjaGFuZ2VkIHN1Y2Nlc3NmdWxseS4gWW91IG1heSBlZGl0IGl0IGFnYWluIGJlbG93LmgISxR1YmgDKYFxP31xQChoBlgAAAAAaAdYRAAAAFRoZSBwYWdlICLQmNC90YrQtdC60YbQuNC4INC60YDQsNGB0L7RgtGLIiB3YXMgY2hhbmdlZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXFBfXFCKGgGWAAAAABoB1hGAAAAVGhlIHBhZ2UgItCY0L3RitC10LrRhtC40Lgg0LrRgNCw0YHQvtGC0YsiIHdhcyBzdWNjZXNzZnVsbHkgcHVibGlzaGVkLmgISxR1YmgDKYFxQ31xRChoBlgAAAAAaAdYdgAAAFRoZSB0ZXh0ICLCoMKgINCf0L7CoCDQv9GA0LjRh9C40L3QsNC8LMKgINCy0L/QvtC70L3QtcKgINGDLi4uIiB3YXMgY2hhbmdlZCBzdWNjZXNzZnVsbHkuIFlvdSBtYXkgZWRpdCBpdCBhZ2FpbiBiZWxvdy5oCEsUdWJoAymBcUV9cUYoaAZYAAAAAGgHWEQAAABUaGUgcGFnZSAi0JjQvdGK0LXQutGG0LjQuCDQutGA0LDRgdC+0YLRiyIgd2FzIGNoYW5nZWQgc3VjY2Vzc2Z1bGx5LmgISxR1YmgDKYFxR31xSChoBlgAAAAAaAdYRgAAAFRoZSBwYWdlICLQmNC90YrQtdC60YbQuNC4INC60YDQsNGB0L7RgtGLIiB3YXMgc3VjY2Vzc2Z1bGx5IHB1Ymxpc2hlZC5oCEsUdWJoAymBcUl9cUooaAZYAAAAAGgHWDEAAABUaGUgcGFnZSAi0KPRgdC70YPQs9C4IiB3YXMgY2hhbmdlZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXFLfXFMKGgGWAAAAABoB1gzAAAAVGhlIHBhZ2UgItCj0YHQu9GD0LPQuCIgd2FzIHN1Y2Nlc3NmdWxseSBwdWJsaXNoZWQuaAhLFHViaAMpgXFNfXFOKGgGWAAAAABoB1hGAAAAVGhlIHBhZ2UgItCY0L3RitC10LrRhtC40Lgg0LrRgNCw0YHQvtGC0YsiIHdhcyBzdWNjZXNzZnVsbHkgcHVibGlzaGVkLmgISxR1YmV1Lg==','2013-06-08 11:24:58');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_gallery`
--

DROP TABLE IF EXISTS `gallery_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_gallery`
--

LOCK TABLES `gallery_gallery` WRITE;
/*!40000 ALTER TABLE `gallery_gallery` DISABLE KEYS */;
INSERT INTO `gallery_gallery` VALUES (1,'Преображение'),(2,'Дипломы');
/*!40000 ALTER TABLE `gallery_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_picture`
--

DROP TABLE IF EXISTS `gallery_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_picture_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_4572654c` FOREIGN KEY (`group_id`) REFERENCES `gallery_picturegroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_picture`
--

LOCK TABLES `gallery_picture` WRITE;
/*!40000 ALTER TABLE `gallery_picture` DISABLE KEYS */;
INSERT INTO `gallery_picture` VALUES (1,1,'uploads/images/brow1a_2.jpg','',''),(2,1,'uploads/images/brow1b_2.jpg','',''),(3,1,'uploads/images/brow3a_2.jpg','',''),(4,2,'uploads/images/brow5a_2.jpg','',''),(5,2,'uploads/images/brow5b_2.jpg','',''),(6,3,'uploads/images/dip1.jpg','',''),(7,3,'uploads/images/dip2.jpg','',''),(8,3,'uploads/images/dip3.jpg','','');
/*!40000 ALTER TABLE `gallery_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_picturegroup`
--

DROP TABLE IF EXISTS `gallery_picturegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_picturegroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_picturegroup_579c518c` (`gallery_id`),
  CONSTRAINT `gallery_id_refs_id_9213470d` FOREIGN KEY (`gallery_id`) REFERENCES `gallery_gallery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_picturegroup`
--

LOCK TABLES `gallery_picturegroup` WRITE;
/*!40000 ALTER TABLE `gallery_picturegroup` DISABLE KEYS */;
INSERT INTO `gallery_picturegroup` VALUES (1,1,'Валя02.01.13',''),(2,1,'Света03.12.11',''),(3,2,'1','');
/*!40000 ALTER TABLE `gallery_picturegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (27,'en-us',1,'menu_cache_menu_nodes_en-us_1_1_user');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'cms','0001_initial','2013-05-22 10:45:20'),(2,'cms','0002_auto_start','2013-05-22 10:45:20'),(3,'cms','0003_remove_placeholder','2013-05-22 10:45:20'),(4,'cms','0004_textobjects','2013-05-22 10:45:20'),(5,'cms','0005_mptt_added_to_plugins','2013-05-22 10:45:20'),(6,'cms','0006_apphook','2013-05-22 10:45:21'),(7,'cms','0007_apphook_longer','2013-05-22 10:45:21'),(8,'cms','0008_redirects','2013-05-22 10:45:21'),(9,'cms','0009_added_meta_fields','2013-05-22 10:45:21'),(10,'cms','0010_5char_language','2013-05-22 10:45:21'),(11,'cms','0011_title_overwrites','2013-05-22 10:45:21'),(12,'cms','0012_publisher','2013-05-22 10:45:21'),(13,'cms','0013_site_copy','2013-05-22 10:45:21'),(14,'cms','0014_sites_removed','2013-05-22 10:45:21'),(15,'cms','0015_modified_by_added','2013-05-22 10:45:21'),(16,'cms','0016_author_copy','2013-05-22 10:45:21'),(17,'cms','0017_author_removed','2013-05-22 10:45:21'),(18,'cms','0018_site_permissions','2013-05-22 10:45:21'),(19,'cms','0019_public_table_renames','2013-05-22 10:45:21'),(20,'cms','0020_advanced_permissions','2013-05-22 10:45:21'),(21,'cms','0021_publisher2','2013-05-22 10:45:21'),(22,'cms','0022_login_required_added','2013-05-22 10:45:21'),(23,'cms','0023_plugin_table_naming_function_changed','2013-05-22 10:45:22'),(24,'cms','0024_added_placeholder_model','2013-05-22 10:45:22'),(25,'cms','0025_placeholder_migration','2013-05-22 10:45:22'),(26,'cms','0026_finish_placeholder_migration','2013-05-22 10:45:22'),(27,'cms','0027_added_width_to_placeholder','2013-05-22 10:45:22'),(28,'cms','0028_limit_visibility_in_menu_step1of3','2013-05-22 10:45:22'),(29,'cms','0029_limit_visibility_in_menu_step2of3_data','2013-05-22 10:45:22'),(30,'cms','0030_limit_visibility_in_menu_step3of3','2013-05-22 10:45:22'),(31,'cms','0031_improved_language_code_support','2013-05-22 10:45:22'),(32,'cms','0032_auto__del_field_cmsplugin_publisher_public__del_field_cmsplugin_publis','2013-05-22 10:45:22'),(33,'cms','0033_auto__del_field_title_publisher_is_draft__del_field_title_publisher_st','2013-05-22 10:45:22'),(34,'cms','0034_auto__chg_field_title_language__chg_field_cmsplugin_language__add_fiel','2013-05-22 10:45:22'),(35,'cms','0035_auto__add_field_globalpagepermission_can_view__add_field_pagepermissio','2013-05-22 10:45:22'),(36,'cms','0036_auto__add_field_cmsplugin_changed_date','2013-05-22 10:45:22'),(37,'cms','0037_auto__del_pagemoderator__del_field_globalpagepermission_can_moderate__','2013-05-22 10:45:23'),(38,'cms','0038_publish_page_permission','2013-05-22 10:45:23'),(39,'cms','0039_auto__del_field_page_moderator_state','2013-05-22 10:45:23'),(40,'menus','0001_initial','2013-05-22 10:45:23'),(41,'text','0001_initial','2013-05-22 10:45:24'),(42,'text','0002_freeze','2013-05-22 10:45:24'),(43,'text','0003_publisher','2013-05-22 10:45:24'),(44,'text','0004_table_rename','2013-05-22 10:45:24'),(45,'text','0005_publisher2','2013-05-22 10:45:24'),(46,'text','0006_2_1_4_upgrade','2013-05-22 10:45:24');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-25 15:26:44
