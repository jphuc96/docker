-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: redmine
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `agile_colors`
--

DROP TABLE IF EXISTS `agile_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agile_colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_agile_colors_on_container_id` (`container_id`),
  KEY `index_agile_colors_on_container_type` (`container_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agile_colors`
--

LOCK TABLES `agile_colors` WRITE;
/*!40000 ALTER TABLE `agile_colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `agile_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agile_data`
--

DROP TABLE IF EXISTS `agile_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agile_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `story_points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_agile_data_on_issue_id` (`issue_id`),
  KEY `index_agile_data_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agile_data`
--

LOCK TABLES `agile_data` WRITE;
/*!40000 ALTER TABLE `agile_data` DISABLE KEYS */;
INSERT INTO `agile_data` VALUES (2,3,0,NULL),(3,4,1,NULL),(4,2,1,NULL),(5,5,0,NULL),(6,6,1,NULL),(7,12,NULL,NULL),(8,11,NULL,NULL),(9,7,NULL,NULL),(10,8,2,NULL),(11,9,3,NULL),(12,10,NULL,NULL),(13,19,0,NULL),(14,17,3,NULL),(15,21,NULL,NULL),(16,16,0,NULL),(18,26,NULL,NULL);
/*!40000 ALTER TABLE `agile_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_themes`
--

DROP TABLE IF EXISTS `app_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT 'local',
  `repo_private` tinyint(1) DEFAULT '0',
  `repo_source_url` varchar(255) DEFAULT NULL,
  `repo_user` varchar(255) DEFAULT NULL,
  `deploy_key` text,
  `repo_credential_type` int(11) DEFAULT '0',
  `repo_pwd` varchar(255) DEFAULT NULL,
  `archive_filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_app_themes_on_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_themes`
--

LOCK TABLES `app_themes` WRITE;
/*!40000 ALTER TABLE `app_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(64) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disk_directory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  KEY `index_attachments_on_disk_filename` (`disk_filename`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,4,'Project','What is UDS.ppt','181022033719_050fc03309d01424fc478a1fc21952e4.ppt',1250816,'application/vnd.ms-powerpoint','3a7d5791b26c6bcb64a5d8ae0a93ad46b0ab6f8d5801f68baa52b05b03f7b2de',0,1,'2018-10-22 03:37:19','','2018/10'),(2,4,'Project','Structure of UDS.ppt','181022035812_f22a91be16f03932899b9d364b1790ac.ppt',373760,'application/vnd.ms-powerpoint','a69e7ef65995607aae58f9a2e1413127751e4c26e6414652f764e903f8e6168a',0,1,'2018-10-22 03:58:12','','2018/10'),(3,4,'Project','UDS_Overview.ppt','181022035812_UDS_Overview.ppt',861184,'application/vnd.ms-powerpoint','95fa50e88f3cca1347c93c40248f48bc1efac0d54f6e23d1ce88c4328e52a41e',0,1,'2018-10-22 03:58:12','','2018/10'),(10,15,'Issue','CAN_Level_1_Training.ppt','181022040350_CAN_Level_1_Training.ppt',2007040,'application/vnd.ms-powerpoint','b1803dd34d08c2b44cdf646516620afa9cac9115cce49c0c4f866142473ce207',0,6,'2018-10-22 04:03:50','','2018/10'),(11,15,'Issue','03-4 CAN Protocols.pptx','181022040403_16806bb89ae8e9f92af4d196a89b1509.pptx',3315764,'application/vnd.openxmlformats-officedocument.presentationml.presentation','d688b7465512751865bc7ec8501c9fd97759f20ea5d60aaec19c78b26717c74e',0,6,'2018-10-22 04:04:03','','2018/10'),(12,15,'Issue','CAN1.ppt','181022040418_CAN1.ppt',2252800,'application/vnd.ms-powerpoint','0bd8fb56b0116474b23c40871ead55e704b8f2e69880c7ab47b4efa0065e696c',0,6,'2018-10-22 04:04:18','','2018/10'),(13,15,'Issue','TOPIC_4_CAN_Protocol_Part1.ppt','181022040429_TOPIC_4_CAN_Protocol_Part1.ppt',2675712,'application/vnd.ms-powerpoint','7c9685d6ea8d5af8dc0ce1163015c4ccf931341c1d3087c90c400841001acd5c',0,6,'2018-10-22 04:04:29','','2018/10'),(14,15,'Issue','TOPIC_4_CAN_Protocol_Part2.ppt','181022040520_TOPIC_4_CAN_Protocol_Part2.ppt',6315520,'application/vnd.ms-powerpoint','79e27ec994b368808ab6eabc4058cf4451e374ebaa295cd237b3fd663edacdfd',0,6,'2018-10-22 04:05:20','','2018/10'),(15,3,'Project','Intership report template.doc','181022043127_d79a2751f067dea781b63a3ea1c013ce.doc',520192,'application/msword','3d5c46f7b23b41e2abbb76ff3732984693c1ea1a6bb1a4bf412bca359638ada7',4,6,'2018-10-22 04:31:27','','2018/10'),(16,4,'Project','03-4 CAN Protocols.pptx','181022040403_16806bb89ae8e9f92af4d196a89b1509.pptx',3315764,'application/vnd.openxmlformats-officedocument.presentationml.presentation','d688b7465512751865bc7ec8501c9fd97759f20ea5d60aaec19c78b26717c74e',0,6,'2018-10-22 04:33:27','','2018/10'),(17,4,'Project','TOPIC_4_CAN_Protocol_Part1.ppt','181022040429_TOPIC_4_CAN_Protocol_Part1.ppt',2675712,'application/vnd.ms-powerpoint','7c9685d6ea8d5af8dc0ce1163015c4ccf931341c1d3087c90c400841001acd5c',0,6,'2018-10-22 04:33:30','','2018/10'),(18,4,'Project','CAN_Level_1_Training.ppt','181022040350_CAN_Level_1_Training.ppt',2007040,'application/vnd.ms-powerpoint','b1803dd34d08c2b44cdf646516620afa9cac9115cce49c0c4f866142473ce207',0,6,'2018-10-22 04:33:43','','2018/10'),(19,4,'Project','CAN1.ppt','181022040418_CAN1.ppt',2252800,'application/vnd.ms-powerpoint','0bd8fb56b0116474b23c40871ead55e704b8f2e69880c7ab47b4efa0065e696c',0,6,'2018-10-22 04:33:43','','2018/10'),(20,4,'Project','TOPIC_4_CAN_Protocol_Part2.ppt','181022040520_TOPIC_4_CAN_Protocol_Part2.ppt',6315520,'application/vnd.ms-powerpoint','79e27ec994b368808ab6eabc4058cf4451e374ebaa295cd237b3fd663edacdfd',0,6,'2018-10-22 04:34:06','','2018/10'),(21,3,'Project','PICT_20180810_110014.JPG','181024115526_PICT_20180810_110014.JPG',670177,'image/jpeg','0f6a8d4c6338fbf9c29b1b252cfb16f30e8e78a950ece1166ad1cfde02b881af',2,6,'2018-10-24 11:55:26','','2018/10'),(22,NULL,NULL,'CANSpec2 0PartB.pdf','181024115723_a1383a4c7cdeb28e2302cfc5b3b56653.pdf',166278,'application/pdf','63a5525bfb5bc6cb7905f34d1ca615a3143f5890f88191051f02b762d8947ab0',0,6,'2018-10-24 11:57:23',NULL,'2018/10'),(23,26,'Issue','Structure of UDS.ppt','181022035812_f22a91be16f03932899b9d364b1790ac.ppt',373760,'application/vnd.ms-powerpoint','a69e7ef65995607aae58f9a2e1413127751e4c26e6414652f764e903f8e6168a',0,6,'2018-10-25 15:54:27','','2018/10'),(24,26,'Issue','UDS_Overview.ppt','181022035812_UDS_Overview.ppt',861184,'application/vnd.ms-powerpoint','95fa50e88f3cca1347c93c40248f48bc1efac0d54f6e23d1ce88c4328e52a41e',0,6,'2018-10-25 15:54:27','','2018/10');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` text,
  `timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeset_parents`
--

LOCK TABLES `changeset_parents` WRITE;
/*!40000 ALTER TABLE `changeset_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `changeset_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` longtext,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets`
--

LOCK TABLES `changesets` WRITE;
/*!40000 ALTER TABLE `changesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`),
  KEY `index_changesets_issues_on_issue_id` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets_issues`
--

LOCK TABLES `changesets_issues` WRITE;
/*!40000 ALTER TABLE `changesets_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_enumerations`
--

DROP TABLE IF EXISTS `custom_field_enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_enumerations`
--

LOCK TABLES `custom_field_enumerations` WRITE;
/*!40000 ALTER TABLE `custom_field_enumerations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  `format_store` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_projects`
--

LOCK TABLES `custom_fields_projects` WRITE;
/*!40000 ALTER TABLE `custom_fields_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_roles`
--

DROP TABLE IF EXISTS `custom_fields_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_roles`
--

LOCK TABLES `custom_fields_roles` WRITE;
/*!40000 ALTER TABLE `custom_fields_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_trackers`
--

LOCK TABLES `custom_fields_trackers` WRITE;
/*!40000 ALTER TABLE `custom_fields_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_values`
--

LOCK TABLES `custom_values` WRITE;
/*!40000 ALTER TABLE `custom_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,2,7,'Modbus overview','1. Modbus is a serial protocol working in **Master/Slave** concept \r\n2. Note about **Frame** or **Message**\r\n * Slave ID\r\n * **Function code**\r\n * Data coresponding to function code\r\n * **Response** messages\r\n * **Error** messages \r\n3. **Data types**: Coils (0-1) and Register (0-65535), or 1bit and 16bit\r\n4. When to use **TCP** and **RTU**\r\n * RTU is used for sensors, actuators\r\n * TCP is used for connections between PLC-PLC, PLC-PC, etc','2018-10-26 14:43:07'),(2,2,7,'Modbus connection on PLC (S7-1200)','In TIA Portal, it has a communication block called **MODBUS_CLIENT** and **MODBUS_SERVER**, need to play with them :)\r\n* MODBUS_SERVER: slave\r\n* MODBUS_CLIENT: master\r\n\r\nIssue comes: \r\n* PLC uses Modbus TCP, sensor uses Modbus RTU\r\n-> Solution: Convert RTU->TCP by a gateway. \r\n','2018-10-26 15:01:29');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_instant_messages`
--

DROP TABLE IF EXISTS `easy_instant_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_instant_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `content` text,
  `sender_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `unread` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_easy_instant_messages_on_sender_id_and_recipient_id` (`sender_id`,`recipient_id`),
  KEY `index_easy_instant_messages_on_recipient_id_and_sender_id` (`recipient_id`,`sender_id`),
  KEY `index_easy_instant_messages_on_recipient_id_and_unread` (`recipient_id`,`unread`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_instant_messages`
--

LOCK TABLES `easy_instant_messages` WRITE;
/*!40000 ALTER TABLE `easy_instant_messages` DISABLE KEYS */;
INSERT INTO `easy_instant_messages` VALUES (1,6,1,'alo','192.168.1.1','2018-10-15 13:31:36','2018-10-15 13:31:36',0),(2,1,6,'hi','192.168.1.1','2018-10-15 13:31:53','2018-10-15 13:31:53',0),(3,1,6,'Can i help u?','192.168.1.1','2018-10-15 13:38:44','2018-10-15 13:38:44',0),(4,6,1,'dummy text','192.168.1.1','2018-10-15 13:40:19','2018-10-15 13:40:19',0),(5,1,6,'Rep back','192.168.1.1','2018-10-15 13:40:42','2018-10-15 13:40:42',0),(6,6,1,'fine','192.168.1.1','2018-10-15 13:41:46','2018-10-15 13:41:46',0),(7,1,6,'1','192.168.1.1','2018-10-15 13:41:56','2018-10-15 13:41:56',0),(8,1,6,'hello','192.168.1.1','2018-10-15 17:50:43','2018-10-15 17:50:43',0),(9,6,1,'Hi','192.168.1.1','2018-10-15 17:51:20','2018-10-15 17:51:20',1);
/*!40000 ALTER TABLE `easy_instant_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_email_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES (1,1,'admin@admin.admin',1,1,'2018-10-15 04:41:55','2018-10-23 14:09:15'),(2,5,'dhtt1101@gmail.com',1,1,'2018-10-15 05:01:49','2018-10-15 05:01:49'),(3,6,'jphuc96@gmail.com',1,1,'2018-10-15 05:03:29','2018-10-15 05:03:29'),(4,7,'thienhoang1608@gmail.com',1,1,'2018-10-22 03:46:24','2018-10-22 03:46:24'),(5,8,'guest@guset.guest',1,1,'2018-10-24 12:02:36','2018-10-24 12:02:36'),(6,9,'canhthinh96@gmail.com',1,1,'2018-10-25 13:26:31','2018-10-25 13:26:31'),(7,10,'truongnhatquang1996@gmail.com',1,1,'2018-10-25 13:39:26','2018-10-25 13:39:26');
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enabled_modules`
--

LOCK TABLES `enabled_modules` WRITE;
/*!40000 ALTER TABLE `enabled_modules` DISABLE KEYS */;
INSERT INTO `enabled_modules` VALUES (12,2,'issue_tracking'),(13,2,'time_tracking'),(16,2,'files'),(20,2,'calendar'),(21,2,'gantt'),(22,2,'agile'),(23,3,'issue_tracking'),(24,3,'time_tracking'),(25,3,'files'),(27,3,'repository'),(28,3,'calendar'),(29,3,'gantt'),(30,3,'agile'),(31,3,'scrum2b'),(32,2,'scrum2b'),(34,4,'files'),(35,4,'issue_tracking'),(36,4,'repository'),(37,4,'agile'),(47,6,'issue_tracking'),(48,6,'documents'),(49,6,'files'),(50,6,'wiki'),(51,6,'repository'),(52,6,'boards'),(53,6,'calendar'),(54,6,'gantt'),(55,7,'issue_tracking'),(56,7,'documents'),(57,7,'files'),(58,7,'wiki'),(59,7,'repository'),(60,7,'boards'),(61,7,'calendar'),(62,7,'gantt'),(63,3,'boards'),(64,3,'news'),(65,3,'documents'),(66,3,'wiki'),(67,2,'documents');
/*!40000 ALTER TABLE `enabled_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumerations`
--

LOCK TABLES `enumerations` WRITE;
/*!40000 ALTER TABLE `enumerations` DISABLE KEYS */;
INSERT INTO `enumerations` VALUES (1,'Low',1,0,'IssuePriority',1,NULL,NULL,'lowest'),(2,'Normal',2,1,'IssuePriority',1,NULL,NULL,'default'),(3,'High',3,0,'IssuePriority',1,NULL,NULL,'high3'),(4,'Urgent',4,0,'IssuePriority',1,NULL,NULL,'high2'),(5,'Immediate',5,0,'IssuePriority',1,NULL,NULL,'highest'),(6,'User documentation',1,0,'DocumentCategory',1,NULL,NULL,NULL),(7,'Technical documentation',2,0,'DocumentCategory',1,NULL,NULL,NULL),(8,'Design',1,0,'TimeEntryActivity',1,NULL,NULL,NULL),(9,'Development',2,0,'TimeEntryActivity',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_items`
--

DROP TABLE IF EXISTS `import_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_items`
--

LOCK TABLES `import_items` WRITE;
/*!40000 ALTER TABLE `import_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `settings` text,
  `total_items` int(11) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_categories`
--

LOCK TABLES `issue_categories` WRITE;
/*!40000 ALTER TABLE `issue_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_relations`
--

LOCK TABLES `issue_relations` WRITE;
/*!40000 ALTER TABLE `issue_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_statuses`
--

LOCK TABLES `issue_statuses` WRITE;
/*!40000 ALTER TABLE `issue_statuses` DISABLE KEYS */;
INSERT INTO `issue_statuses` VALUES (1,'New',0,1,NULL),(2,'In Progress',0,2,NULL),(3,'Resolved',0,3,NULL),(4,'Feedback',0,4,NULL),(5,'Closed',1,5,NULL),(6,'Rejected',1,6,NULL);
/*!40000 ALTER TABLE `issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL,
  `s2b_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  KEY `index_issues_on_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (2,2,2,'Take back PLC ','Connect PLC with model ','2018-10-20',NULL,3,5,3,NULL,5,6,'2018-10-15 08:35:46','2018-10-23 13:50:08','2018-10-15',100,NULL,NULL,2,1,2,0,NULL,1),(3,2,2,'Reseach Modbus','- Modbus definitions\r\n- Types of Modbus\r\n- Applications\r\n','2018-11-03',NULL,2,5,2,NULL,6,3,'2018-10-15 09:43:53','2018-10-26 14:11:52','2018-10-15',10,NULL,NULL,3,1,2,0,NULL,2),(4,2,2,'Modbus on S7-1200','- Study how to connect to Modbus to S7-1200 PLC\r\n- Using Modbus block on TIA Portal','2018-10-27',NULL,2,6,2,NULL,6,13,'2018-10-15 09:46:22','2018-10-23 13:50:04','2018-10-15',0,NULL,NULL,4,1,2,0,NULL,7),(5,2,3,' Design gateway module','Modbus gateway\r\n- Convert between Modbus TCP and RTU','2018-10-27',NULL,2,6,2,NULL,6,5,'2018-10-16 02:51:06','2018-10-19 04:04:20','2018-10-16',70,NULL,NULL,5,1,2,0,NULL,1),(6,2,3,' Implement PLC & SCADA system','','2018-11-10',NULL,2,6,2,NULL,6,8,'2018-10-16 02:52:13','2018-10-25 05:13:16','2018-10-20',20,NULL,NULL,6,1,2,0,NULL,3),(7,2,3,'Design network system concept','','2018-10-31',NULL,3,6,2,NULL,6,4,'2018-10-16 02:53:41','2018-10-16 04:30:54','2018-10-20',100,NULL,NULL,7,1,2,0,NULL,1),(8,2,3,'Setup & study MongoDB','MongoDB study and setup','2018-11-03',NULL,2,6,2,NULL,6,7,'2018-10-16 02:54:43','2018-10-24 02:49:48','2018-10-16',50,NULL,NULL,8,1,2,0,NULL,4),(9,2,3,'Software and infrastructure design','Using Linux to setup software environment, running on Intel NUC\r\n- Django Web framework\r\n- PLC SCADA communication\r\n- MongoDB database','2018-11-10',NULL,2,6,2,NULL,6,4,'2018-10-16 02:56:41','2018-10-23 13:58:54','2018-11-03',30,NULL,NULL,9,1,2,0,NULL,5),(10,2,3,'Deployment','Integrate all the system including hardware and software\r\nFinalizing the complete Industrial gateway system\r\nDemonstration','2018-11-15',NULL,1,6,2,NULL,6,4,'2018-10-16 02:59:57','2018-10-23 14:00:29','2018-11-08',0,NULL,NULL,10,1,2,0,NULL,8),(11,2,3,'AWS Service (optional)','Connecting the system to AWS Service','2018-11-15',NULL,1,6,2,NULL,6,4,'2018-10-16 03:00:55','2018-10-23 14:00:29','2018-11-01',0,NULL,NULL,11,1,2,0,NULL,7),(12,2,3,'Thesis mid-defense','Mid-defense','2018-11-30',NULL,1,6,3,NULL,6,3,'2018-10-16 04:15:48','2018-10-23 14:00:29','2018-11-24',0,NULL,NULL,12,1,2,0,NULL,9),(13,2,2,'Thesis mid-defense','','2018-11-30',NULL,1,5,3,NULL,6,2,'2018-10-16 04:37:38','2018-10-23 14:00:29','2018-11-24',0,NULL,NULL,13,1,2,0,NULL,8),(15,2,4,'CAN','',NULL,NULL,1,NULL,2,NULL,6,2,'2018-10-22 04:04:39','2018-10-23 14:00:29','2018-10-22',0,NULL,NULL,15,1,2,0,NULL,1),(16,2,4,'Make this look less like a 80s site','Maybe putting some ads that show local hot babes will attract more users\r\n\r\nMany thanks,\r\nHoang Tran','2018-10-31',NULL,3,6,4,NULL,7,4,'2018-10-22 04:34:25','2018-10-24 02:21:42','2018-10-22',100,NULL,NULL,16,1,2,0,NULL,1),(17,2,2,'Prepare Modbus module','','2018-11-03',NULL,2,6,2,NULL,6,3,'2018-10-23 13:50:55','2018-10-23 14:05:50','2018-10-23',70,NULL,NULL,17,1,2,0,NULL,9),(18,2,2,'Design the transmission line diagram','','2018-11-03',NULL,1,5,2,NULL,6,1,'2018-10-23 13:54:01','2018-10-23 14:00:29','2018-10-23',0,NULL,NULL,18,1,2,0,NULL,1),(19,2,2,'Build the demonstration','','2018-11-06',NULL,3,6,2,NULL,6,5,'2018-10-23 13:55:19','2018-10-26 14:03:22','2018-10-23',50,NULL,NULL,19,1,2,0,NULL,10),(20,2,2,'Study the demo','','2018-11-12',NULL,1,5,2,NULL,6,1,'2018-10-23 13:56:03','2018-10-23 14:00:29','2018-11-07',0,NULL,NULL,20,1,2,0,NULL,1),(21,2,3,'Web and database APIs using Python','','2018-11-09',NULL,2,6,2,NULL,6,5,'2018-10-23 14:00:29','2018-10-25 05:12:24','2018-10-23',20,NULL,NULL,21,1,2,0,NULL,6),(22,2,2,'Simulate the diagram on TIA Portal','','2018-11-13',NULL,1,5,2,NULL,6,1,'2018-10-23 14:03:11','2018-10-23 14:05:50','2018-10-29',0,NULL,NULL,22,1,2,0,NULL,11),(23,2,3,'Connection between PLC - Server (Modbus)','','2018-11-14',NULL,1,6,2,NULL,6,1,'2018-10-23 14:12:51','2018-10-23 14:47:56','2018-11-01',0,NULL,NULL,23,1,2,0,NULL,10),(24,2,2,'Study on Fault ','Find some reality fault - popular fault and way to detect it.\r\n',NULL,NULL,1,5,2,NULL,5,1,'2018-10-23 14:38:24','2018-10-23 14:38:29','2018-10-23',0,NULL,NULL,24,1,2,0,NULL,12),(25,2,2,'Prepare writing report final','','2019-01-05',NULL,1,5,2,NULL,5,1,'2018-10-23 14:39:36','2018-10-23 14:39:39','2018-10-23',0,NULL,NULL,25,1,2,0,NULL,13),(26,2,4,'UDS - Unified Diagnostic Service','',NULL,NULL,1,NULL,2,NULL,6,1,'2018-10-25 15:54:37','2018-10-25 15:55:12','2018-10-25',0,NULL,NULL,26,1,2,0,NULL,NULL),(27,2,3,'Docker Implementation','Implement Docker to run application flexibly','2018-11-16',NULL,1,6,2,NULL,6,0,'2018-10-31 06:03:24','2018-10-31 06:03:24','2018-10-31',10,NULL,NULL,27,1,2,0,NULL,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` longtext,
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
INSERT INTO `journal_details` VALUES (3,3,'attr','status_id','1','2'),(4,4,'attr','subject','Research Modbus on S7-1200','Modbus on S7-1200'),(5,4,'attr','assigned_to_id',NULL,'6'),(6,5,'attr','status_id','2','1'),(7,6,'attr','status_id','1','2'),(8,7,'attr','status_id','2','3'),(9,8,'attr','status_id','3','2'),(10,9,'attr','due_date',NULL,'2018-10-20'),(11,10,'attr','due_date',NULL,'2018-10-27'),(12,11,'attr','start_date','2018-10-16','2018-10-20'),(13,12,'attr','status_id','1','2'),(14,13,'attr','start_date','2018-10-16','2018-11-24'),(15,14,'attr','assigned_to_id',NULL,'6'),(16,15,'attr','assigned_to_id',NULL,'6'),(17,16,'attr','assigned_to_id',NULL,'6'),(18,17,'attr','assigned_to_id',NULL,'6'),(19,18,'attr','assigned_to_id',NULL,'6'),(20,19,'attr','assigned_to_id',NULL,'6'),(21,20,'attr','subject','Setup Database','Setup MongoDB database'),(22,21,'attr','done_ratio','0','70'),(23,22,'attr','due_date','2018-10-20','2018-10-27'),(24,23,'attr','done_ratio','0','30'),(25,24,'attr','done_ratio','0','30'),(32,29,'attachment','14',NULL,'TOPIC_4_CAN_Protocol_Part2.ppt'),(33,31,'attr','status_id','1','2'),(34,32,'attr','status_id','1','2'),(35,33,'attr','done_ratio','0','50'),(36,34,'attr','done_ratio','0','70'),(37,35,'attr','status_id','1','2'),(38,36,'attr','done_ratio','0','20'),(39,37,'attr','due_date',NULL,'2018-11-09'),(40,37,'attr','start_date',NULL,'2018-10-23'),(41,37,'attr','done_ratio','0','10'),(42,38,'attr','status_id','1','3'),(43,39,'attr','done_ratio','0','100'),(44,40,'attr','done_ratio','30','50'),(45,41,'attr','subject','Setup MongoDB database','Setup & study MongoDB'),(46,42,'attr','subject','Web and APIs using Python','Web and database APIs using Python'),(47,42,'attr','done_ratio','10','20'),(48,43,'attr','due_date','2018-10-27','2018-11-10'),(49,44,'attr','status_id','2','3'),(50,45,'attr','due_date','2018-10-20','2018-11-03'),(51,45,'attr','done_ratio','0','10');
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` longtext,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (3,3,'Issue',6,'','2018-10-15 09:44:05',0),(4,4,'Issue',6,'','2018-10-15 09:46:49',0),(5,4,'Issue',6,'','2018-10-15 18:10:07',0),(6,4,'Issue',6,'','2018-10-15 18:10:11',0),(7,4,'Issue',6,'','2018-10-15 19:20:49',0),(8,4,'Issue',6,'','2018-10-15 19:20:54',0),(9,5,'Issue',6,'','2018-10-16 02:51:25',0),(10,6,'Issue',6,'','2018-10-16 02:52:46',0),(11,6,'Issue',6,'','2018-10-16 02:52:58',0),(12,5,'Issue',6,'','2018-10-16 03:02:20',0),(13,12,'Issue',6,'','2018-10-16 04:22:18',0),(14,11,'Issue',6,'','2018-10-16 04:30:36',0),(15,6,'Issue',6,'','2018-10-16 04:30:45',0),(16,7,'Issue',6,'','2018-10-16 04:30:54',0),(17,8,'Issue',6,'','2018-10-16 04:31:06',0),(18,9,'Issue',6,'','2018-10-16 04:31:16',0),(19,10,'Issue',6,'','2018-10-16 04:31:24',0),(20,8,'Issue',6,'','2018-10-19 04:03:13',0),(21,5,'Issue',6,'','2018-10-19 04:03:48',0),(22,5,'Issue',6,'','2018-10-19 04:04:20',0),(23,9,'Issue',6,'','2018-10-19 04:05:24',0),(24,8,'Issue',6,'','2018-10-19 04:05:41',0),(29,15,'Issue',6,'','2018-10-22 04:05:22',0),(30,16,'Issue',6,'Thien Hoang Tran wrote:\r\n> Maybe putting some ads that show local hot babes will attract more users\r\n> \r\n> Many thanks,\r\n> Hoang Tran\r\n\r\nWanna make this site 18+ ? =]]','2018-10-22 05:49:17',0),(31,19,'Issue',6,'','2018-10-23 13:56:45',0),(32,17,'Issue',6,'','2018-10-23 13:56:51',0),(33,19,'Issue',6,'','2018-10-23 13:58:06',0),(34,17,'Issue',6,'','2018-10-23 13:58:26',0),(35,9,'Issue',6,'','2018-10-23 13:58:54',0),(36,6,'Issue',6,'','2018-10-23 13:59:08',0),(37,21,'Issue',6,'','2018-10-23 14:01:02',0),(38,16,'Issue',6,'','2018-10-23 15:41:18',0),(39,16,'Issue',6,NULL,'2018-10-24 02:21:42',0),(40,8,'Issue',6,NULL,'2018-10-24 02:49:25',0),(41,8,'Issue',6,'','2018-10-24 02:49:48',0),(42,21,'Issue',6,'','2018-10-25 05:12:24',0),(43,6,'Issue',6,'','2018-10-25 05:13:16',0),(44,19,'Issue',6,'','2018-10-26 14:03:22',0),(45,3,'Issue',5,'','2018-10-26 14:11:52',0);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`),
  KEY `index_member_roles_on_inherited_from` (`inherited_from`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,1,3,NULL),(2,1,4,NULL),(3,2,3,NULL),(4,2,4,NULL),(5,2,5,NULL),(6,3,3,NULL),(7,4,3,NULL),(8,4,4,NULL),(9,4,5,NULL),(10,5,3,NULL),(11,5,4,NULL),(12,6,3,NULL),(13,6,4,NULL),(14,7,5,NULL),(16,9,3,NULL),(17,10,3,NULL);
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,6,2,'2018-10-15 08:26:20',0),(2,5,2,'2018-10-15 08:48:45',0),(3,5,3,'2018-10-15 13:22:34',0),(4,6,3,'2018-10-15 13:22:44',0),(5,6,4,'2018-10-22 03:48:30',0),(6,7,4,'2018-10-22 03:48:30',0),(7,8,3,'2018-10-25 05:15:37',0),(9,7,6,'2018-10-25 13:55:09',0),(10,9,7,'2018-10-25 14:05:47',0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT '0',
  `default_version_id` int(11) DEFAULT NULL,
  `default_assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'Thesis: SCADA Transmission Line','Operation of medium transmission line \r\nBuild sample model of power distribution system - using PLC/SCADA to monitor systems . ','',1,NULL,'2018-10-15 08:24:28','2018-10-15 10:41:03','thesis',1,9,10,0,NULL,5),(3,'Thesis: Industrial Gateway System','Design an Industrial gataway system for collecting data, monitoring and controlling an industrial environment\r\nStage 1: Design gateway module\r\nStage 2: Implement PLC & SCADA system\r\nStage 3: Design network system concept\r\nStage 4: Setup Database\r\nStage 5: Software and infrastructure design\r\nStage 6: Deployment\r\nStage 7: AWS Service (optional)','',1,NULL,'2018-10-15 13:22:01','2018-10-16 02:57:21','thesis-industrial-gateway-system',1,7,8,0,NULL,NULL),(4,'CAN Knowledge','','google.com.vn',0,NULL,'2018-10-22 02:52:49','2018-10-22 05:47:51','private-project',1,1,2,0,NULL,NULL),(6,'KiCAD journey','2 months of learning how to ace this mofo.\r\nBeing able to master all the tools available.\r\nBasic designs e.g. ne555, op amp, atmel, etc.','',1,NULL,'2018-10-25 13:55:09','2018-10-25 13:55:09','kicad-journey',1,3,4,0,NULL,NULL),(7,'Thesis: Implementation and Evaluation of Internet of Things Solutions which Includes Cloud Features for Health Monitoring Application','','',1,NULL,'2018-10-25 14:05:47','2018-10-25 14:05:47','thesis-implementation-and-evaluation-of-internet-of-things-solutions-which-includes-cloud-features-f',1,5,6,0,NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_trackers`
--

LOCK TABLES `projects_trackers` WRITE;
/*!40000 ALTER TABLE `projects_trackers` DISABLE KEYS */;
INSERT INTO `projects_trackers` VALUES (2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(6,2),(7,2);
/*!40000 ALTER TABLE `projects_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visibility` int(11) DEFAULT '0',
  `options` text,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries_roles`
--

DROP TABLE IF EXISTS `queries_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries_roles` (
  `query_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries_roles`
--

LOCK TABLES `queries_roles` WRITE;
/*!40000 ALTER TABLE `queries_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` longtext,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  `users_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `time_entries_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `all_roles_managed` tinyint(1) NOT NULL DEFAULT '1',
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Non member',0,1,1,'---\n- :add_project\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n','default','all','all',1,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),(2,'Anonymous',0,1,2,'---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default','all','all',1,NULL),(3,'Manager',1,1,0,'---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :manage_public_agile_queries\n- :manage_agile_verions\n- :add_agile_queries\n- :view_agile_queries\n- :view_agile_charts\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :manage_boards\n- :view_calendar\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_categories\n- :use_kanbantool\n- :view_news\n- :manage_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :s2b_view_issue\n- :s2b_edit_issue\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n','all','all','all',1,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),(4,'Developer',2,1,0,'---\n- :manage_versions\n- :save_queries\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :manage_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :manage_categories\n- :use_kanbantool\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :view_time_entries\n- :log_time\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n','default','all','all',1,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),(5,'Reporter',3,1,0,'---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :view_news\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default','all','all',1,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_managed_roles`
--

DROP TABLE IF EXISTS `roles_managed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_managed_roles` (
  `role_id` int(11) NOT NULL,
  `managed_role_id` int(11) NOT NULL,
  UNIQUE KEY `index_roles_managed_roles_on_role_id_and_managed_role_id` (`role_id`,`managed_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_managed_roles`
--

LOCK TABLES `roles_managed_roles` WRITE;
/*!40000 ALTER TABLE `roles_managed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_managed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('1-redmine_agile'),('1-scrum2b'),('1-theme_manager'),('10'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('2-redmine_agile'),('2-theme_manager'),('20'),('20090214190337'),('20090312172426'),('20090312194159'),('20090318181151'),('20090323224724'),('20090401221305'),('20090401231134'),('20090403001910'),('20090406161854'),('20090425161243'),('20090503121501'),('20090503121505'),('20090503121510'),('20090614091200'),('20090704172350'),('20090704172355'),('20090704172358'),('20091010093521'),('20091017212227'),('20091017212457'),('20091017212644'),('20091017212938'),('20091017213027'),('20091017213113'),('20091017213151'),('20091017213228'),('20091017213257'),('20091017213332'),('20091017213444'),('20091017213536'),('20091017213642'),('20091017213716'),('20091017213757'),('20091017213835'),('20091017213910'),('20091017214015'),('20091017214107'),('20091017214136'),('20091017214236'),('20091017214308'),('20091017214336'),('20091017214406'),('20091017214440'),('20091017214519'),('20091017214611'),('20091017214644'),('20091017214720'),('20091017214750'),('20091025163651'),('20091108092559'),('20091114105931'),('20091123212029'),('20091205124427'),('20091220183509'),('20091220183727'),('20091220184736'),('20091225164732'),('20091227112908'),('20100129193402'),('20100129193813'),('20100221100219'),('20100313132032'),('20100313171051'),('20100705164950'),('20100819172912'),('20101104182107'),('20101107130441'),('20101114115114'),('20101114115359'),('20110220160626'),('20110223180944'),('20110223180953'),('20110224000000'),('20110226120112'),('20110226120132'),('20110227125750'),('20110228000000'),('20110228000100'),('20110401192910'),('20110408103312'),('20110412065600'),('20110511000000'),('20110902000000'),('20111201201315'),('20120115143024'),('20120115143100'),('20120115143126'),('20120127174243'),('20120205111326'),('20120223110929'),('20120301153455'),('20120422150750'),('20120705074331'),('20120707064544'),('20120714122000'),('20120714122100'),('20120714122200'),('20120731164049'),('20120930112914'),('20121026002032'),('20121026003537'),('20121209123234'),('20121209123358'),('20121213084931'),('20130110122628'),('20130201184705'),('20130202090625'),('20130207175206'),('20130207181455'),('20130215073721'),('20130215111127'),('20130215111141'),('20130217094251'),('20130418140346-easy_instant_messages'),('20130419131113-easy_instant_messages'),('20130602092539'),('20130710182539'),('20130713104233'),('20130713111657'),('20130729070143'),('20130910103812-easy_instant_messages'),('20130911193200'),('20131004113137'),('20131005100610'),('20131124175346'),('20131210180802'),('20131214094309'),('20131215104612'),('20131218183023'),('20140228130325'),('20140903143914'),('20140920094058'),('20141029181752'),('20141029181824'),('20141109112308'),('20141122124142'),('20150113194759'),('20150113211532'),('20150113213922'),('20150113213955'),('20150208105930'),('20150510083747'),('20150525103953'),('20150526183158'),('20150528084820'),('20150528092912'),('20150528093249'),('20150725112753'),('20150730122707'),('20150730122735'),('20150921204850'),('20150921210243'),('20151020182334'),('20151020182731'),('20151021184614'),('20151021185456'),('20151021190616'),('20151024082034'),('20151025072118'),('20151031095005'),('20160404080304'),('20160416072926'),('20160529063352'),('20160531113810-easy_instant_messages'),('20161001122012'),('20161002133421'),('20161010081301'),('20161010081528'),('20161010081600'),('20161126094932'),('20161220091118'),('20170207050700'),('20170302015225'),('20170309214320'),('20170320051650'),('20170418090031'),('20170419144536'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('29'),('3'),('3-redmine_agile'),('3-theme_manager'),('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('4'),('4-redmine_agile'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('5-redmine_agile'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'ui_theme','PurpleMine2','2018-10-23 14:59:34'),(2,'default_language','en','2018-10-15 08:49:32'),(3,'force_default_language_for_anonymous','1','2018-10-23 15:11:38'),(4,'force_default_language_for_loggedin','1','2018-10-23 15:11:38'),(5,'start_of_week','1','2018-10-23 14:47:39'),(6,'date_format','%B %d, %Y','2018-10-23 14:47:39'),(7,'time_format','%H:%M','2018-10-23 14:47:39'),(8,'timespan_format','decimal','2018-10-15 08:49:33'),(9,'user_format','firstname_lastname','2018-10-15 08:49:33'),(10,'gravatar_enabled','1','2018-10-23 14:47:39'),(11,'gravatar_default','retro','2018-10-23 14:47:39'),(12,'thumbnails_enabled','1','2018-10-23 14:47:39'),(13,'thumbnails_size','100','2018-10-15 08:49:33'),(14,'new_item_menu_tab','2','2018-10-15 08:49:33'),(15,'rest_api_enabled','1','2018-10-15 09:33:20'),(16,'jsonp_enabled','0','2018-10-15 09:33:21'),(17,'login_required','0','2018-10-15 13:41:32'),(18,'autologin','0','2018-10-15 13:41:32'),(19,'self_registration','0','2018-10-25 15:33:34'),(20,'show_custom_fields_on_registration','0','2018-10-15 13:41:33'),(21,'unsubscribe','1','2018-10-15 13:41:33'),(22,'password_min_length','8','2018-10-15 13:41:33'),(23,'password_max_age','0','2018-10-15 13:41:33'),(24,'lost_password','1','2018-10-15 13:41:33'),(25,'max_additional_emails','5','2018-10-15 13:41:33'),(26,'openid','0','2018-10-15 13:41:33'),(27,'session_lifetime','0','2018-10-15 13:41:33'),(28,'session_timeout','0','2018-10-15 13:41:33'),(29,'default_users_hide_mail','0','2018-10-15 13:41:33'),(30,'default_users_time_zone','Hanoi','2018-10-23 14:45:08'),(31,'plugin_scrum2b','---\nstatus_no_start:\n  \'1\': New\nstatus_inprogress:\n  \'2\': In Progress\nstatus_completed:\n  \'3\': Resolved\n  \'4\': Feedback\nstatus_closed:\n  \'5\': Closed\n  \'6\': Rejected\n','2018-10-15 16:21:58'),(32,'app_title','Redmine For Cool Projects','2018-10-24 16:38:00'),(33,'welcome_text','![](/images/custom/i-love-linux.jpg)','2018-10-23 15:58:53'),(34,'per_page_options','25,50,100','2018-10-15 18:01:32'),(35,'search_results_per_page','10','2018-10-15 18:01:32'),(36,'activity_days_default','30','2018-10-15 18:01:32'),(37,'host_name','localhost:3000','2018-10-15 18:01:32'),(38,'protocol','https','2018-10-15 18:01:32'),(39,'text_formatting','markdown','2018-10-23 15:32:38'),(40,'cache_formatted_text','1','2018-10-23 15:58:22'),(41,'wiki_compression','','2018-10-15 18:01:32'),(42,'feeds_limit','15','2018-10-15 18:01:32'),(43,'attachment_max_size','51920','2018-10-24 18:56:31'),(44,'attachment_extensions_allowed','','2018-10-22 04:04:21'),(45,'attachment_extensions_denied','','2018-10-22 04:04:21'),(46,'file_max_size_displayed','512','2018-10-22 04:04:21'),(47,'diff_max_lines_displayed','1500','2018-10-22 04:04:21'),(48,'repositories_encodings','','2018-10-22 04:04:22'),(49,'default_projects_public','1','2018-10-23 14:45:56'),(50,'default_projects_modules','---\n- issue_tracking\n- documents\n- files\n- wiki\n- repository\n- boards\n- calendar\n- gantt\n','2018-10-23 14:45:56'),(51,'default_projects_tracker_ids','---\n- \'2\'\n','2018-10-23 14:45:56'),(52,'sequential_project_identifiers','0','2018-10-23 14:45:56'),(53,'new_project_user_role_id','3','2018-10-23 14:45:56');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(1024) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_entries`
--

LOCK TABLES `time_entries` WRITE;
/*!40000 ALTER TABLE `time_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_value` (`value`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (3,1,'feeds','55d84fb0f00e957a4d257eda492b8c2f67dc9d9f','2018-10-15 04:52:35','2018-10-15 04:52:35'),(5,1,'session','19f1d2d24b57cfa75488bac6d61d14ecd73843d8','2018-10-15 05:00:05','2018-10-15 05:03:33'),(6,5,'session','1f69163c8b681606345812009eb7c635cac61e0b','2018-10-15 05:17:29','2018-10-15 08:40:01'),(7,5,'feeds','4ccd4f1eb07232c02da1367a41f062c174e095fc','2018-10-15 05:17:29','2018-10-15 05:17:29'),(8,1,'session','d0f5924b270c41724d0e57ab6357f55054b0e9e5','2018-10-15 05:27:24','2018-10-15 05:36:06'),(10,6,'feeds','419bb5a638e8c587c14a4edeede6c0846b85cf24','2018-10-15 08:20:28','2018-10-15 08:20:28'),(16,6,'api','aeff559f8b1bfaed47c678680d0f4967cbe3fd5d','2018-10-15 09:29:24','2018-10-15 09:29:24'),(21,1,'api','855fa5d3fd8178abff7027f5e2d96b620c6d6dd7','2018-10-15 09:51:36','2018-10-15 09:51:36'),(25,1,'session','45f13e78025a67ed3af53f52732c863f20abb67a','2018-10-15 13:31:30','2018-10-15 13:32:06'),(26,1,'session','9159477ad62ccc6d783a54764e36456536ebb0a1','2018-10-15 13:38:32','2018-10-15 13:42:49'),(28,1,'session','2445fee3711a4e9a712cb97e4ac6beeed9948d00','2018-10-15 13:42:26','2018-10-15 13:42:31'),(48,7,'session','25cc86fd0c4bae964b0a879dc4b5b65200eae602','2018-10-22 04:07:20','2018-10-22 04:07:37'),(49,7,'feeds','fb1eae10c951523e342140eb320446870274ce84','2018-10-22 04:07:20','2018-10-22 04:07:20'),(50,7,'session','b8f7c252fd8c9fc14a56188c94737c1c8deeba03','2018-10-22 04:31:24','2018-10-22 04:43:43'),(58,5,'session','6392a2f33b9b86d9cc6c707291ad26b0d73a448b','2018-10-23 14:10:15','2018-10-23 14:39:39'),(65,8,'session','ef5e0c81121ff591a69ce80215329a689489cda4','2018-10-24 12:03:30','2018-10-24 12:03:36'),(66,8,'feeds','cd5ba83cfe7dd3624efe4e6b1bed707089c76787','2018-10-24 12:03:30','2018-10-24 12:03:30'),(67,8,'session','4532eb2506480caa0f5863351bc2d1ccf7b28705','2018-10-24 12:05:05','2018-10-24 12:11:17'),(68,8,'session','11cdae83313cfd5817c459da5dc293c2c8886b4f','2018-10-24 12:18:16','2018-10-24 12:18:16'),(69,6,'session','09ec0cc0bddb3328242faffafd978bde6b96becd','2018-10-24 16:02:27','2018-10-24 18:02:24'),(70,6,'session','32145d7ec5470a0474d376754f7467a523a46a08','2018-10-24 18:50:53','2018-10-24 18:51:55'),(71,6,'session','5a08d65ba687ee2745ff60183e7ec7c79c29e6e9','2018-10-24 18:55:55','2018-10-24 18:56:41'),(75,6,'session','6e3bf2edcd0835c43c0cbc4046153030a0ef08b6','2018-10-25 09:44:03','2018-10-25 09:44:10'),(78,9,'feeds','6f455547ce26c2677d07b417f990c7c5fc07ef70','2018-10-25 13:28:44','2018-10-25 13:28:44'),(83,6,'session','250caf1c027f991165a17927e8eb48b6f8433a65','2018-10-25 13:36:19','2018-10-25 13:39:30'),(84,7,'session','a1680dfeee0e5fed4cb5822c2e317f38632bc55b','2018-10-25 13:37:09','2018-10-25 14:01:49'),(85,9,'session','2455542217caba28a3a38b69949f3ba0df93d011','2018-10-25 13:38:51','2018-10-25 14:06:00'),(88,10,'session','61f33ce6067498622435828b4dec0e18db407f92','2018-10-25 15:45:12','2018-10-25 15:45:44'),(89,10,'feeds','a5ef039916620376b0f312542cfed323d95b3efb','2018-10-25 15:45:13','2018-10-25 15:45:13'),(94,6,'session','a561e362327c2b2b7a4b493f701867cefd937918','2018-10-25 15:55:51','2018-10-25 16:10:23'),(95,6,'session','a5f90982f3eb7a5453854cc3a3912ecf5426643b','2018-10-26 07:40:39','2018-10-26 07:40:53'),(96,6,'session','c4b6d15cbf5a997fce2e824bc2462f6f90d63a1b','2018-10-26 07:41:33','2018-10-26 07:41:33'),(101,5,'session','deaa28b0ec78bb879e24459bb92a0a7e7d3f7996','2018-10-26 14:08:50','2018-10-26 15:05:04'),(102,5,'session','32d2dc445dbd458850ee6e7f8b68088a14728288','2018-10-29 13:23:34','2018-10-29 14:04:20'),(104,5,'session','2ee2aab91dcbc974feefa093c26c001ce40ae6ab','2018-10-29 14:23:14','2018-10-29 14:23:24'),(105,1,'session','05bffd80502e12adcf73c5fb2ccd57500969fde2','2018-10-29 15:27:48','2018-10-29 16:32:19'),(106,6,'session','9d94b91fb70dd7fee778e6e5ccde819bc8e532c3','2018-10-30 10:39:19','2018-10-31 06:03:27'),(107,5,'session','43b0689857ee6a1cbd55396d10e72c2180a1ae96','2018-10-31 12:17:30','2018-10-31 12:18:42'),(109,6,'session','2efd9f8842c4de01960db0693f9f396c090f6855','2018-11-01 19:00:30','2018-11-01 19:00:59');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int(11) DEFAULT '0',
  `default_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (1,'Bug',1,1,0,0,1),(2,'Feature',1,2,1,0,1),(3,'Support',0,3,0,0,1);
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '1',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'---\n:no_self_notified: \'1\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,''),(2,5,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n',0,'Hanoi'),(3,6,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 4\n:gantt_months: 1\n',0,'Hanoi'),(4,7,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n',0,'Bangkok'),(5,8,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n',0,'Hanoi'),(6,9,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n',0,'Hanoi'),(7,10,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n',0,'Hanoi');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT '0',
  `passwd_changed_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','5c82832d48a80f412561360ca67bcc8892c72280','Redmine','Admin',1,1,'2018-11-01 19:00:05','',NULL,'2018-10-15 04:39:03','2018-10-15 04:51:56','User',NULL,'all','854dafa4258886c343d54b3d3e71df16',0,'2018-10-15 04:51:56'),(2,'','','','Anonymous users',0,1,NULL,'',NULL,'2018-10-15 04:41:49','2018-10-15 04:41:49','GroupAnonymous',NULL,'',NULL,0,NULL),(3,'','','','Non member users',0,1,NULL,'',NULL,'2018-10-15 04:41:49','2018-10-15 04:41:49','GroupNonMember',NULL,'',NULL,0,NULL),(4,'','','','Anonymous',0,0,NULL,'',NULL,'2018-10-15 04:43:44','2018-10-15 04:43:44','AnonymousUser',NULL,'only_my_events',NULL,0,NULL),(5,'dhtt1101','02d9ab2596c919d41b60a9b14211aab514c200f9','Thuy Trang','Duong Hong',0,1,'2018-10-31 12:17:30','en',NULL,'2018-10-15 05:01:49','2018-10-25 15:55:33','User',NULL,'only_my_events','619ab3544244ee3f92ff3064e72a77d2',0,'2018-10-15 05:01:49'),(6,'jphuc96','1c6e88f20fa8df0eaec089d5640507acca6d09bd','Hoang Phuc','Nguyen',0,1,'2018-11-01 19:00:30','en',NULL,'2018-10-15 05:03:29','2018-10-25 15:55:40','User',NULL,'only_my_events','2cb36075f43e40dc2c08f5c99c615c80',0,'2018-10-15 05:03:29'),(7,'tthoang','2828c1c4d3d0c768a4583ad778829dda0d78945d','Henry','Tran',0,1,'2018-10-25 13:37:09','en',NULL,'2018-10-22 03:46:24','2018-10-25 13:48:01','User',NULL,'none','6c44951ae244cc9e74a9b2d3d692e326',0,'2018-10-22 03:46:24'),(8,'guest','e04de07f0819d90d9d38439c4bd3d021bee88a1c','Sudojoss\'s ','Guest',0,1,'2018-10-25 13:34:20','en',NULL,'2018-10-24 12:02:36','2018-10-25 05:11:32','User',NULL,'only_my_events','f407f265363978b23a598ee737e1a515',0,'2018-10-24 12:02:36'),(9,'cthinh96','2beaf8271e69c4096d2cd2cb65e1f0766cd666e9','Canh Thinh','Nguyen',0,1,'2018-10-25 13:38:51','en',NULL,'2018-10-25 13:26:31','2018-10-25 13:26:31','User',NULL,'only_my_events','729f6811aa74779c77a2761f1679c4a3',0,'2018-10-25 13:26:31'),(10,'tnquang96','e0c9e4ec9f06f797cbba153a3b539eafce270ac3','Nhat Quang','Truong',0,1,'2018-10-25 15:45:12','en',NULL,'2018-10-25 13:39:26','2018-10-25 13:39:26','User',NULL,'only_my_events','72837372dd94c3e776b11184b23f758c',0,'2018-10-25 13:39:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchers`
--

LOCK TABLES `watchers` WRITE;
/*!40000 ALTER TABLE `watchers` DISABLE KEYS */;
INSERT INTO `watchers` VALUES (1,'Issue',2,6),(2,'Issue',3,6),(3,'Issue',16,6),(4,'Issue',16,7),(5,'Issue',24,5),(6,'Issue',25,6),(7,'Issue',25,5),(8,'Issue',23,8);
/*!40000 ALTER TABLE `watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_content_versions`
--

LOCK TABLES `wiki_content_versions` WRITE;
/*!40000 ALTER TABLE `wiki_content_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_content_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_contents`
--

LOCK TABLES `wiki_contents` WRITE;
/*!40000 ALTER TABLE `wiki_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `redirects_to_wiki_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirects`
--

LOCK TABLES `wiki_redirects` WRITE;
/*!40000 ALTER TABLE `wiki_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES (2,2,'Wiki',1),(3,3,'Wiki',1),(5,6,'Wiki',1),(6,7,'Wiki',1);
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `field_name` varchar(30) DEFAULT NULL,
  `rule` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`),
  KEY `index_workflows_on_tracker_id` (`tracker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,1,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(2,1,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(3,1,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(4,1,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(5,1,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(6,1,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(7,1,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(8,1,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(9,1,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(10,1,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(11,1,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(12,1,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(13,1,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(14,1,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(15,1,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(16,1,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(17,1,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(18,1,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(19,1,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(20,1,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(21,1,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(22,1,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(23,1,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(24,1,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(25,1,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(26,1,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(27,1,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(28,1,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(29,1,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(30,1,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(31,2,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(32,2,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(33,2,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(34,2,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(35,2,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(36,2,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(37,2,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(38,2,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(39,2,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(40,2,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(41,2,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(42,2,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(43,2,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(44,2,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(45,2,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(46,2,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(47,2,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(48,2,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(49,2,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(50,2,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(51,2,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(52,2,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(53,2,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(54,2,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(55,2,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(56,2,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(57,2,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(58,2,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(59,2,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(60,2,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(61,3,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(62,3,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(63,3,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(64,3,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(65,3,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(66,3,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(67,3,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(68,3,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(69,3,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(70,3,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(71,3,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(72,3,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(73,3,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(74,3,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(75,3,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(76,3,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(77,3,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(78,3,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(79,3,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(80,3,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(81,3,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(82,3,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(83,3,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(84,3,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(85,3,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(86,3,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(87,3,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(88,3,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(89,3,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(90,3,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(91,1,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(92,1,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(93,1,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(94,1,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(95,1,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(96,1,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(97,1,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(98,1,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(99,1,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(100,1,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(101,1,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(102,1,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(103,1,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(104,2,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(105,2,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(106,2,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(107,2,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(108,2,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(109,2,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(110,2,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(111,2,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(112,2,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(113,2,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(114,2,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(115,2,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(116,2,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(117,3,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(118,3,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(119,3,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(120,3,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(121,3,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(122,3,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(123,3,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(124,3,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(125,3,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(126,3,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(127,3,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(128,3,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(129,3,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(130,1,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(131,1,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(132,1,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(133,1,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(134,1,3,4,5,0,0,'WorkflowTransition',NULL,NULL),(135,2,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(136,2,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(137,2,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(138,2,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(139,2,3,4,5,0,0,'WorkflowTransition',NULL,NULL),(140,3,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(141,3,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(142,3,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(143,3,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(144,3,3,4,5,0,0,'WorkflowTransition',NULL,NULL);
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-02 10:06:15
