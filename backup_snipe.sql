-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: snipeit
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accessories_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` VALUES (1,'USB-SER',8,1,1,0,'2021-09-11 16:35:50','2021-09-11 16:35:50',NULL,2,'2021-09-04',299.00,NULL,1,NULL,7,'DB9','accessory-image-7UD1UQo8Go.jpg',4),(2,'Kingston Exodia 32 GB',10,1,1,0,'2021-09-24 16:47:14','2021-09-24 17:14:35',NULL,2,'2021-09-24',199.00,'526167',1,NULL,9,'MFD-032','accessory-image-7nGGUGOADI.webp',4),(3,'Kingston DataTraveler 32 GB Red',10,1,2,0,'2021-09-24 17:20:14','2021-09-24 17:20:14',NULL,2,NULL,NULL,NULL,NULL,NULL,9,'100 G3','accessory-image-egYC4FmKzx.webp',5),(4,'Convertidor audio/video a coaxial para canal 3',8,1,1,0,'2021-11-26 20:54:43','2021-11-26 21:00:25',NULL,2,NULL,NULL,NULL,1,NULL,7,'207-340','accessory-image-jQV9jMyf3G.jpg',4),(5,'Cable auxiliar 3.5mm ',8,1,1,0,'2021-11-26 20:57:58','2021-11-26 20:57:58',NULL,NULL,NULL,NULL,NULL,1,NULL,7,'297-077','accessory-image-fKNJTvwYeG.jpg',4),(6,'Cable estereo 3 plugs rca',8,1,1,0,'2021-11-26 20:59:51','2021-11-26 20:59:51',NULL,2,NULL,NULL,NULL,1,NULL,7,'254-315','accessory-image-7ejvRAnvMv.jpg',4);
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessories_users`
--

DROP TABLE IF EXISTS `accessories_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories_users`
--

LOCK TABLES `accessories_users` WRITE;
/*!40000 ALTER TABLE `accessories_users` DISABLE KEYS */;
INSERT INTO `accessories_users` VALUES (1,1,2,5,'2021-09-24 16:47:45',NULL,'USB para musica de Beltboy');
/*!40000 ALTER TABLE `accessories_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_logs`
--

DROP TABLE IF EXISTS `action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `expected_checkin` date DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `accept_signature` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `action_logs_thread_id_index` (`thread_id`),
  KEY `action_logs_created_at_index` (`created_at`),
  KEY `action_logs_item_type_item_id_action_type_index` (`item_type`,`item_id`,`action_type`),
  KEY `action_logs_target_type_target_id_action_type_index` (`target_type`,`target_id`,`action_type`),
  KEY `action_logs_target_type_target_id_index` (`target_type`,`target_id`),
  KEY `action_logs_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_logs`
--

LOCK TABLES `action_logs` WRITE;
/*!40000 ALTER TABLE `action_logs` DISABLE KEYS */;
INSERT INTO `action_logs` VALUES (1,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-08-13 17:07:07','2021-08-13 17:07:07',NULL,NULL,1,NULL,NULL,NULL),(2,1,'checkout',2,'App\\Models\\Location',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-08-13 17:07:07','2021-08-13 17:07:07',NULL,NULL,NULL,NULL,NULL,'2021-08-13 12:07:07'),(3,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-08-13 17:10:15','2021-08-13 17:10:15',NULL,NULL,1,NULL,'{\"notes\":{\"old\":null,\"new\":\"Lavanderia\"}}',NULL),(4,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-08-13 17:17:11','2021-08-13 17:17:11',NULL,NULL,1,NULL,'{\"_snipeit_mac_address_1\":{\"old\":null,\"new\":\"50:57:9C:55:2E:2D\"}}',NULL),(5,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-13 17:19:49','2021-08-13 17:19:49',NULL,NULL,1,NULL,NULL,NULL),(6,1,'checkout',2,'App\\Models\\Location',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-13 17:19:49','2021-08-13 17:19:49',NULL,NULL,NULL,NULL,NULL,'2021-08-13 12:19:49'),(7,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-08-13 17:26:51','2021-08-13 17:26:51',NULL,NULL,1,NULL,NULL,NULL),(8,1,'checkout',2,'App\\Models\\Location',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-08-13 17:26:52','2021-08-13 17:26:52',NULL,NULL,NULL,NULL,NULL,'2021-08-13 12:26:51'),(9,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-08-13 17:28:01','2021-08-13 17:28:01',NULL,NULL,1,NULL,'{\"name\":{\"old\":\"HST-IMPC03\",\"new\":\"HST-IMPC04\"}}',NULL),(10,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2021-08-13 17:29:47','2021-08-13 17:29:47',NULL,NULL,1,NULL,NULL,NULL),(11,1,'checkout',2,'App\\Models\\Location',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',4,NULL,NULL,'2021-08-13 17:29:47','2021-08-13 17:29:47',NULL,NULL,NULL,NULL,NULL,'2021-08-13 12:29:47'),(12,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-13 17:38:26','2021-08-13 17:38:26',NULL,NULL,1,NULL,NULL,NULL),(13,1,'checkout',3,'App\\Models\\Location',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-13 17:38:26','2021-08-13 17:38:26',NULL,NULL,NULL,NULL,NULL,'2021-08-13 12:38:26'),(14,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-13 17:40:36','2021-08-13 17:40:36',NULL,NULL,1,NULL,'{\"notes\":{\"old\":null,\"new\":\"Recepcion_Smart-Value\"},\"_snipeit_ip_2\":{\"old\":\"192.168.0.10\",\"new\":\"192.168.0.11\"}}',NULL),(15,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-13 17:43:24','2021-08-13 17:43:24',NULL,NULL,1,NULL,NULL,NULL),(16,1,'checkout',3,'App\\Models\\Location',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-13 17:43:24','2021-08-13 17:43:24',NULL,NULL,NULL,NULL,NULL,'2021-08-13 12:43:24'),(17,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-13 18:54:39','2021-08-13 18:54:39',NULL,NULL,1,NULL,NULL,NULL),(18,1,'checkout',2,'App\\Models\\Location',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-13 18:54:39','2021-08-13 18:54:39',NULL,NULL,NULL,NULL,NULL,'2021-08-13 13:54:39'),(19,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2021-08-13 19:00:19','2021-08-13 19:00:19',NULL,NULL,1,NULL,NULL,NULL),(20,1,'checkout',2,'App\\Models\\Location',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',8,NULL,NULL,'2021-08-13 19:00:19','2021-08-13 19:00:19',NULL,NULL,NULL,NULL,NULL,'2021-08-13 14:00:19'),(21,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-13 19:00:33','2021-08-13 19:00:33',NULL,NULL,1,NULL,'{\"notes\":{\"old\":null,\"new\":\"POS Restaurante\"}}',NULL),(22,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',9,NULL,NULL,'2021-08-13 19:03:57','2021-08-13 19:03:57',NULL,NULL,1,NULL,NULL,NULL),(23,1,'checkout',3,'App\\Models\\Location',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',9,NULL,NULL,'2021-08-13 19:03:57','2021-08-13 19:03:57',NULL,NULL,NULL,NULL,NULL,'2021-08-13 14:03:57'),(24,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2021-08-13 19:13:31','2021-08-13 19:13:31',NULL,NULL,1,NULL,NULL,NULL),(25,1,'checkout',1,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',10,NULL,NULL,'2021-08-13 19:13:31','2021-08-13 19:13:31',NULL,NULL,NULL,NULL,NULL,'2021-08-13 14:13:31'),(26,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2021-08-13 19:14:26','2021-08-13 19:14:26',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(27,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-14 14:44:24','2021-08-14 14:44:24',NULL,NULL,1,NULL,'{\"serial\":{\"old\":null,\"new\":\"PSL30003\"}}',NULL),(28,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-14 15:29:23','2021-08-14 15:29:23',NULL,NULL,1,NULL,'{\"_snipeit_ram_5\":{\"old\":null,\"new\":\"4 GB\"},\"_snipeit_hdd_6\":{\"old\":null,\"new\":\"128 GB SSD\"},\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 10\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"Intel Celeron j1900\"}}',NULL),(29,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',9,NULL,NULL,'2021-08-14 15:31:53','2021-08-14 15:31:53',NULL,NULL,1,NULL,'{\"_snipeit_ram_5\":{\"old\":null,\"new\":\"4 GB\"},\"_snipeit_hdd_6\":{\"old\":null,\"new\":\"120 GB SSD\"},\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 10\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"Intel Celeron j1900\"}}',NULL),(30,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-14 15:36:45','2021-08-14 15:36:45',NULL,NULL,1,NULL,'{\"_snipeit_disk_capacity_6\":{\"old\":\"128 GB SSD\",\"new\":\"128 GB\"},\"_snipeit_disk_type_9\":{\"old\":null,\"new\":\"SSD\"}}',NULL),(31,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-14 15:41:55','2021-08-14 15:41:55',NULL,NULL,1,NULL,'[]',NULL),(32,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',9,NULL,NULL,'2021-08-14 15:42:35','2021-08-14 15:42:35',NULL,NULL,1,NULL,'{\"_snipeit_disk_capacity_6\":{\"old\":\"120 GB SSD\",\"new\":\"128 GB\"},\"_snipeit_disk_type_9\":{\"old\":null,\"new\":\"SSD\"}}',NULL),(33,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2021-08-14 15:43:05','2021-08-14 15:43:05',NULL,NULL,1,NULL,'{\"_snipeit_ram_5\":{\"old\":null,\"new\":\"4 GB\"},\"_snipeit_disk_capacity_6\":{\"old\":null,\"new\":\"128 GB\"},\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 10\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"Intel Celeron j1900\"},\"_snipeit_disk_type_9\":{\"old\":null,\"new\":\"SSD\"}}',NULL),(34,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2021-08-14 15:47:35','2021-08-14 15:47:35',NULL,NULL,1,NULL,'{\"_snipeit_ram_5\":{\"old\":null,\"new\":\"12 GB\"},\"_snipeit_disk_capacity_6\":{\"old\":null,\"new\":\"260 GB\"},\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 10\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"i5-8265u\"},\"_snipeit_disk_type_9\":{\"old\":null,\"new\":\"SSD (NVME)\"}}',NULL),(35,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',11,NULL,NULL,'2021-08-14 16:00:16','2021-08-14 16:00:16',NULL,NULL,2,NULL,NULL,NULL),(36,1,'checkout',4,'App\\Models\\Location',4,'Checked out on asset creation',NULL,'App\\Models\\Asset',11,NULL,NULL,'2021-08-14 16:00:16','2021-08-14 16:00:16',NULL,NULL,NULL,NULL,NULL,'2021-08-14 11:00:16'),(37,1,'checkin from',4,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',11,NULL,NULL,'2021-08-14 16:09:34','2021-08-14 16:09:34',NULL,NULL,NULL,NULL,NULL,NULL),(38,1,'checkin from',2,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-08-14 16:09:37','2021-08-14 16:09:37',NULL,NULL,NULL,NULL,NULL,NULL),(39,1,'checkin from',2,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-14 16:09:43','2021-08-14 16:09:43',NULL,NULL,NULL,NULL,NULL,NULL),(40,1,'checkin from',2,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2021-08-14 16:09:47','2021-08-14 16:09:47',NULL,NULL,NULL,NULL,NULL,NULL),(41,1,'checkin from',2,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-08-14 16:09:50','2021-08-14 16:09:50',NULL,NULL,NULL,NULL,NULL,NULL),(42,1,'checkin from',3,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-14 16:09:53','2021-08-14 16:09:53',NULL,NULL,NULL,NULL,NULL,NULL),(43,1,'checkin from',3,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-14 16:09:57','2021-08-14 16:09:57',NULL,NULL,NULL,NULL,NULL,NULL),(44,1,'checkout',5,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',11,NULL,NULL,'2021-08-14 16:11:26','2021-08-14 16:11:26',NULL,NULL,NULL,NULL,NULL,'2021-08-14 11:11:26'),(45,1,'checkout',7,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-08-14 16:21:25','2021-08-14 16:21:25',NULL,NULL,1,NULL,NULL,'2021-08-14 11:21:25'),(46,1,'checkout',6,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-14 16:21:36','2021-08-14 16:21:36',NULL,NULL,1,NULL,NULL,'2021-08-14 11:21:36'),(47,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-14 16:21:50','2021-08-14 16:21:50',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(48,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2021-08-14 16:22:13','2021-08-14 16:22:13',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"},\"location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(49,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-08-14 16:22:29','2021-08-14 16:22:29',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"},\"location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(50,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-14 16:22:39','2021-08-14 16:22:39',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"},\"location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(51,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-14 16:22:50','2021-08-14 16:22:50',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"},\"location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(52,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-14 16:23:13','2021-08-14 16:23:13',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":2,\"new\":\"3\"},\"location_id\":{\"old\":2,\"new\":\"3\"}}',NULL),(53,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-14 16:23:30','2021-08-14 16:23:30',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":2,\"new\":\"3\"},\"location_id\":{\"old\":2,\"new\":\"3\"}}',NULL),(54,1,'checkin from',6,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-14 16:29:13','2021-08-14 16:29:13',NULL,NULL,1,NULL,NULL,NULL),(55,1,'checkout',10,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-08-14 16:29:40','2021-08-14 16:29:40',NULL,NULL,1,NULL,NULL,'2021-08-14 11:29:40'),(56,1,'checkout',9,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',4,NULL,NULL,'2021-08-14 16:29:55','2021-08-14 16:29:55',NULL,NULL,1,NULL,NULL,'2021-08-14 11:29:55'),(57,1,'checkout',8,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-08-14 16:30:08','2021-08-14 16:30:08',NULL,NULL,1,NULL,NULL,'2021-08-14 11:30:08'),(58,1,'checkout',12,'App\\Models\\User',3,'',NULL,'App\\Models\\Asset',5,NULL,NULL,'2021-08-14 16:32:14','2021-08-14 16:32:14',NULL,NULL,1,NULL,NULL,'2021-08-14 11:32:14'),(59,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-14 16:34:53','2021-08-14 16:34:53',NULL,NULL,1,NULL,'{\"notes\":{\"old\":null,\"new\":\"Desayunador_Smart-Value\"}}',NULL),(60,1,'checkout',13,'App\\Models\\User',3,'',NULL,'App\\Models\\Asset',6,NULL,NULL,'2021-08-14 16:35:04','2021-08-14 16:35:04',NULL,NULL,1,NULL,NULL,'2021-08-14 11:35:04'),(61,1,'checkin from',2,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-14 16:35:48','2021-08-14 16:35:48',NULL,NULL,NULL,NULL,NULL,NULL),(62,1,'checkout',8,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',7,NULL,NULL,'2021-08-14 16:35:58','2021-08-14 16:35:58',NULL,NULL,1,NULL,NULL,'2021-08-14 11:35:58'),(63,1,'checkin from',3,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',9,NULL,NULL,'2021-08-14 16:36:25','2021-08-14 16:36:25',NULL,NULL,NULL,NULL,NULL,NULL),(64,1,'checkout',13,'App\\Models\\User',3,'',NULL,'App\\Models\\Asset',9,NULL,NULL,'2021-08-14 16:36:33','2021-08-14 16:36:33',NULL,NULL,1,NULL,NULL,'2021-08-14 11:36:33'),(65,1,'checkin from',2,'App\\Models\\Location',NULL,NULL,NULL,'App\\Models\\Asset',8,NULL,NULL,'2021-08-14 16:36:43','2021-08-14 16:36:43',NULL,NULL,NULL,NULL,NULL,NULL),(66,1,'checkout',9,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',8,NULL,NULL,'2021-08-14 16:37:02','2021-08-14 16:37:02',NULL,NULL,1,NULL,NULL,'2021-08-14 11:37:02'),(67,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',12,NULL,NULL,'2021-08-14 16:42:28','2021-08-14 16:42:28',NULL,NULL,2,NULL,NULL,NULL),(68,1,'checkout',5,'App\\Models\\User',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',12,NULL,NULL,'2021-08-14 16:42:28','2021-08-14 16:42:28',NULL,NULL,1,NULL,NULL,'2021-08-14 11:42:28'),(69,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',13,NULL,NULL,'2021-08-14 17:11:07','2021-08-14 17:11:07',NULL,NULL,2,NULL,NULL,NULL),(70,1,'checkout',12,'App\\Models\\User',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',13,NULL,NULL,'2021-08-14 17:11:07','2021-08-14 17:11:07',NULL,NULL,1,NULL,NULL,'2021-08-14 12:11:07'),(71,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',13,NULL,NULL,'2021-08-14 17:16:30','2021-08-14 17:16:30',NULL,NULL,2,NULL,'{\"asset_tag\":{\"old\":\"MXL9206PR6\",\"new\":\"3RDMNK1\"},\"serial\":{\"old\":\"MXL9206PR6\",\"new\":\"3RDMNK1\"}}',NULL),(72,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',14,NULL,NULL,'2021-08-14 17:33:09','2021-08-14 17:33:09',NULL,NULL,2,NULL,NULL,NULL),(73,1,'checkout',12,'App\\Models\\User',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',14,NULL,NULL,'2021-08-14 17:33:10','2021-08-14 17:33:10',NULL,NULL,1,NULL,NULL,'2021-08-14 12:33:10'),(74,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',15,NULL,NULL,'2021-08-14 18:48:54','2021-08-14 18:48:54',NULL,NULL,2,NULL,NULL,NULL),(75,1,'checkout',5,'App\\Models\\User',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',15,NULL,NULL,'2021-08-14 18:48:54','2021-08-14 18:48:54',NULL,NULL,1,NULL,NULL,'2021-08-14 13:48:54'),(76,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',16,NULL,NULL,'2021-08-16 16:35:20','2021-08-16 16:35:20',NULL,NULL,1,NULL,NULL,NULL),(77,1,'checkout',14,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',16,NULL,NULL,'2021-08-16 16:35:21','2021-08-16 16:35:21',NULL,NULL,NULL,NULL,NULL,'2021-08-16 11:35:21'),(78,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',10,NULL,NULL,'2021-08-16 16:37:38','2021-08-16 16:37:38',NULL,NULL,1,NULL,'{\"purchase_date\":{\"old\":null,\"new\":\"2020-03-06\"},\"purchase_cost\":{\"old\":null,\"new\":15156.82},\"order_number\":{\"old\":null,\"new\":\"PS 4069\"}}',NULL),(79,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',17,NULL,NULL,'2021-08-16 16:50:04','2021-08-16 16:50:04',NULL,NULL,1,NULL,NULL,NULL),(80,1,'checkout',15,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',17,NULL,NULL,'2021-08-16 16:50:05','2021-08-16 16:50:05',NULL,NULL,NULL,NULL,NULL,'2021-08-16 11:50:05'),(81,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',18,NULL,NULL,'2021-08-16 17:09:33','2021-08-16 17:09:33',NULL,NULL,1,NULL,NULL,NULL),(82,1,'checkout',2,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',18,NULL,NULL,'2021-08-16 17:09:33','2021-08-16 17:09:33',NULL,NULL,NULL,NULL,NULL,'2021-08-16 12:09:33'),(83,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',19,NULL,NULL,'2021-08-16 17:48:04','2021-08-16 17:48:04',NULL,NULL,1,NULL,NULL,NULL),(84,1,'checkout',16,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',19,NULL,NULL,'2021-08-16 17:48:04','2021-08-16 17:48:04',NULL,NULL,NULL,NULL,NULL,'2021-08-16 12:48:04'),(85,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',19,NULL,NULL,'2021-08-16 17:48:17','2021-08-16 17:48:17',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(86,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2021-08-16 17:50:12','2021-08-16 17:50:12',NULL,NULL,1,NULL,NULL,NULL),(87,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2021-08-16 17:51:17','2021-08-16 17:51:17',NULL,NULL,1,NULL,'{\"status_id\":{\"old\":1,\"new\":\"2\"}}',NULL),(88,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2021-08-16 17:52:26','2021-08-16 17:52:26',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":2,\"new\":\"3\"},\"location_id\":{\"old\":2,\"new\":\"3\"}}',NULL),(89,1,'checkout',17,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',20,NULL,NULL,'2021-08-16 17:53:00','2021-08-16 17:53:00',NULL,NULL,NULL,NULL,NULL,'2021-08-16 12:53:00'),(90,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',21,NULL,NULL,'2021-08-16 18:00:45','2021-08-16 18:00:45',NULL,NULL,1,NULL,NULL,NULL),(91,1,'checkout',16,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',21,NULL,NULL,'2021-08-16 18:00:45','2021-08-16 18:00:45',NULL,NULL,NULL,NULL,NULL,'2021-08-16 13:00:45'),(92,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',20,NULL,NULL,'2021-08-16 18:01:36','2021-08-16 18:01:36',NULL,NULL,1,NULL,'{\"_snipeit_tarjetas_de_red_10\":{\"old\":\"Tarjeta 1:\\r\\nTarjeta 2:\\r\\nTarjeta 3:\\r\\nTarjeta 4:\",\"new\":\"eth0: 50:3E:AA:10:9D:5D IP: 192.168.0.2     RED: Admon\\r\\neth1: 50:3E:AA:11:06:63  IP: 10.156.92.2     RED: Huespedes \\r\\neth2: 04:D9:F5:7E:0D:E4  IP: 192.168.1.69   RED: Telmex\\r\\neth3: 50:3E:AA:11:44:4B  IP: 0.0.0.0             RED: Libre\\r\\neth4: 50:3E:AA:10:9D:5E  IP:187188.156.57 RED: TotalPlay\"}}',NULL),(93,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',18,NULL,NULL,'2021-08-16 18:48:10','2021-08-16 18:48:10',NULL,NULL,1,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(94,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',22,NULL,NULL,'2021-08-16 18:58:01','2021-08-16 18:58:01',NULL,NULL,1,NULL,NULL,NULL),(95,1,'checkout',18,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',22,NULL,NULL,'2021-08-16 18:58:01','2021-08-16 18:58:01',NULL,NULL,NULL,NULL,NULL,'2021-08-16 13:58:01'),(96,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',23,NULL,NULL,'2021-08-16 18:59:00','2021-08-16 18:59:00',NULL,NULL,1,NULL,NULL,NULL),(97,1,'checkout',18,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',23,NULL,NULL,'2021-08-16 18:59:00','2021-08-16 18:59:00',NULL,NULL,NULL,NULL,NULL,'2021-08-16 13:59:00'),(98,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',15,NULL,NULL,'2021-08-16 19:36:33','2021-08-16 19:36:33',NULL,NULL,2,NULL,'{\"model_id\":{\"old\":4,\"new\":\"10\"}}',NULL),(99,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',24,NULL,NULL,'2021-08-19 22:00:16','2021-08-19 22:00:16',NULL,NULL,2,NULL,NULL,NULL),(100,1,'checkout',3,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',24,NULL,NULL,'2021-08-19 22:00:16','2021-08-19 22:00:16',NULL,NULL,NULL,NULL,NULL,'2021-08-19 17:00:16'),(101,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',25,NULL,NULL,'2021-08-19 22:23:33','2021-08-19 22:23:33',NULL,NULL,2,NULL,NULL,NULL),(102,1,'checkout',19,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',25,NULL,NULL,'2021-08-19 22:23:33','2021-08-19 22:23:33',NULL,NULL,NULL,NULL,NULL,'2021-08-19 17:23:33'),(103,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',26,NULL,NULL,'2021-08-19 22:49:15','2021-08-19 22:49:15',NULL,NULL,2,NULL,NULL,NULL),(104,1,'checkout',20,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',26,NULL,NULL,'2021-08-19 22:49:15','2021-08-19 22:49:15',NULL,NULL,NULL,NULL,NULL,'2021-08-19 17:49:15'),(105,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',27,NULL,NULL,'2021-08-19 22:57:51','2021-08-19 22:57:51',NULL,NULL,2,NULL,NULL,NULL),(106,1,'checkout',21,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',27,NULL,NULL,'2021-08-19 22:57:52','2021-08-19 22:57:52',NULL,NULL,NULL,NULL,NULL,'2021-08-19 17:57:52'),(107,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',1,NULL,NULL,'2021-09-11 16:35:50','2021-09-11 16:35:50',NULL,NULL,1,NULL,NULL,NULL),(108,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',28,NULL,NULL,'2021-09-11 18:22:06','2021-09-11 18:22:06',NULL,NULL,2,NULL,NULL,NULL),(109,1,'checkout',22,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',28,NULL,NULL,'2021-09-11 18:22:07','2021-09-11 18:22:07',NULL,NULL,NULL,NULL,NULL,'2021-09-11 13:22:07'),(110,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',29,NULL,NULL,'2021-09-11 18:37:08','2021-09-11 18:37:08',NULL,NULL,1,NULL,NULL,NULL),(111,1,'checkout',22,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',29,NULL,NULL,'2021-09-11 18:37:08','2021-09-11 18:37:08',NULL,NULL,NULL,NULL,NULL,'2021-09-11 13:37:08'),(112,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2021-09-13 15:20:01','2021-09-13 15:20:01',NULL,NULL,2,NULL,NULL,NULL),(113,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',31,NULL,NULL,'2021-09-13 15:27:51','2021-09-13 15:27:51',NULL,NULL,1,NULL,NULL,NULL),(114,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',32,NULL,NULL,'2021-09-13 15:53:28','2021-09-13 15:53:28',NULL,NULL,2,NULL,NULL,NULL),(115,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',33,NULL,NULL,'2021-09-13 16:02:46','2021-09-13 16:02:46',NULL,NULL,2,NULL,NULL,NULL),(116,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',32,NULL,NULL,'2021-09-13 16:03:05','2021-09-13 16:03:05',NULL,NULL,2,NULL,'{\"_snipeit_pulgadas_11\":{\"old\":null,\"new\":\"17\"}}',NULL),(117,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',30,NULL,NULL,'2021-09-13 16:03:30','2021-09-13 16:03:30',NULL,NULL,2,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"},\"location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(118,1,'checkout',23,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',31,NULL,NULL,'2021-09-20 16:29:26','2021-09-20 16:29:26',NULL,NULL,NULL,NULL,NULL,'2021-09-20 11:29:26'),(119,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',26,NULL,NULL,'2021-09-20 16:31:33','2021-09-20 16:31:33',NULL,NULL,2,NULL,'{\"_snipeit_ip_2\":{\"old\":null,\"new\":\"192.168.204.188\"}}',NULL),(120,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:13:22','2021-09-24 13:13:22',NULL,NULL,2,NULL,NULL,NULL),(121,1,'checkout',24,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:13:22','2021-09-24 13:13:22',NULL,NULL,NULL,NULL,NULL,'2021-09-24 08:13:22'),(122,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2021-09-24 13:21:52','2021-09-24 13:21:52',NULL,NULL,2,NULL,NULL,NULL),(123,1,'checkout',24,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',35,NULL,NULL,'2021-09-24 13:21:52','2021-09-24 13:21:52',NULL,NULL,NULL,NULL,NULL,'2021-09-24 08:21:52'),(124,1,'checkin from',24,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:22:12','2021-09-24 13:22:12',NULL,NULL,NULL,NULL,NULL,NULL),(125,1,'checkout',35,'App\\Models\\Asset',2,'Conectada por cable',NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:22:42','2021-09-24 13:22:42',NULL,NULL,2,NULL,NULL,'2021-09-24 08:22:41'),(126,1,'checkin from',35,'App\\Models\\Asset',NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:25:08','2021-09-24 13:25:08',NULL,NULL,2,NULL,NULL,NULL),(127,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:25:22','2021-09-24 13:25:22',NULL,NULL,2,NULL,'{\"rtd_location_id\":{\"old\":null,\"new\":\"2\"},\"location_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(128,1,'checkout',24,'App\\Models\\User',NULL,'Asignado al equipos -&gt; 9QVKRM1',NULL,'App\\Models\\Asset',34,NULL,NULL,'2021-09-24 13:26:14','2021-09-24 13:26:14',NULL,NULL,NULL,NULL,NULL,'2021-09-24 08:26:14'),(129,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',36,NULL,NULL,'2021-09-24 13:29:33','2021-09-24 13:29:33',NULL,NULL,2,NULL,NULL,NULL),(130,1,'checkout',24,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',36,NULL,NULL,'2021-09-24 13:29:33','2021-09-24 13:29:33',NULL,NULL,NULL,NULL,NULL,'2021-09-24 08:29:33'),(131,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2021-09-24 13:32:51','2021-09-24 13:32:51',NULL,NULL,2,NULL,'{\"_snipeit_mac_address_1\":{\"old\":null,\"new\":\"BA:AC:6F:2B:E5:1C\"},\"_snipeit_ip_2\":{\"old\":null,\"new\":\"192.168.204.129\"},\"_snipeit_ram_5\":{\"old\":null,\"new\":\"2 GB\"},\"_snipeit_disk_capacity_6\":{\"old\":null,\"new\":\"160 GB\"},\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 7\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"Pentium E7400\"},\"_snipeit_disk_type_9\":{\"old\":null,\"new\":\"HDD\"}}',NULL),(132,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2021-09-24 13:33:48','2021-09-24 13:33:48',NULL,NULL,2,NULL,'{\"_snipeit_cpu_8\":{\"old\":\"Pentium E7400\",\"new\":\"Pentium E7500\"}}',NULL),(133,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',23,NULL,NULL,'2021-09-24 13:39:07','2021-09-24 13:39:07',NULL,NULL,1,NULL,'{\"name\":{\"old\":\"HST-UPS01\",\"new\":\"HST-UPS02\"}}',NULL),(134,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',2,NULL,NULL,'2021-09-24 16:47:14','2021-09-24 16:47:14',NULL,NULL,1,NULL,NULL,NULL),(135,1,'checkout',5,'App\\Models\\User',2,'USB para musica de Beltboy',NULL,'App\\Models\\Accessory',2,NULL,NULL,'2021-09-24 16:47:45','2021-09-24 16:47:45',NULL,NULL,1,NULL,NULL,'2021-09-24 11:47:45'),(136,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',2,NULL,NULL,'2021-09-24 16:50:39','2021-09-24 16:50:39',NULL,NULL,1,NULL,NULL,NULL),(137,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',2,NULL,NULL,'2021-09-24 17:10:57','2021-09-24 17:10:57',NULL,NULL,1,NULL,NULL,NULL),(138,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',2,NULL,NULL,'2021-09-24 17:14:35','2021-09-24 17:14:35',NULL,NULL,1,NULL,NULL,NULL),(139,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',3,NULL,NULL,'2021-09-24 17:20:14','2021-09-24 17:20:14',NULL,NULL,NULL,NULL,NULL,NULL),(140,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',37,NULL,NULL,'2021-09-29 21:15:04','2021-09-29 21:15:04',NULL,NULL,1,NULL,NULL,NULL),(141,1,'checkout',12,'App\\Models\\User',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',37,NULL,NULL,'2021-09-29 21:15:04','2021-09-29 21:15:04',NULL,NULL,1,NULL,NULL,'2021-09-29 16:15:04'),(142,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',1,NULL,NULL,'2021-10-09 16:17:07','2021-10-09 16:17:07',NULL,NULL,1,NULL,'{\"serial\":{\"old\":null,\"new\":\"X2NN158814\"}}',NULL),(143,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',38,NULL,NULL,'2021-10-14 17:04:28','2021-10-14 17:04:28',NULL,NULL,2,NULL,NULL,NULL),(144,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',38,NULL,NULL,'2021-10-14 17:05:25','2021-10-14 17:05:25',NULL,NULL,2,NULL,'{\"_snipeit_so_7\":{\"old\":null,\"new\":\"Ubuntu\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"i3-3220\"}}',NULL),(145,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Component',1,NULL,NULL,'2021-10-25 16:51:20','2021-10-25 16:51:20',NULL,NULL,1,NULL,NULL,NULL),(146,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Component',1,NULL,NULL,'2021-10-25 16:52:02','2021-10-25 16:52:02',NULL,NULL,1,NULL,NULL,NULL),(147,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',39,NULL,NULL,'2021-10-27 16:42:24','2021-10-27 16:42:24',NULL,NULL,1,NULL,NULL,NULL),(148,1,'checkout',16,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',39,NULL,NULL,'2021-10-27 16:42:24','2021-10-27 16:42:24',NULL,NULL,NULL,NULL,NULL,'2021-10-27 11:42:24'),(149,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',39,NULL,NULL,'2021-10-27 16:53:32','2021-10-27 16:53:32',NULL,NULL,1,NULL,'{\"_snipeit_mac_address_1\":{\"old\":null,\"new\":\"94:40:C9:49:EC:5C\"},\"_snipeit_ip_2\":{\"old\":null,\"new\":\"192.168.204.14\"}}',NULL),(150,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',40,NULL,NULL,'2021-11-03 23:02:53','2021-11-03 23:02:53',NULL,NULL,2,NULL,NULL,NULL),(151,1,'checkout',25,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',40,NULL,NULL,'2021-11-03 23:02:53','2021-11-03 23:02:53',NULL,NULL,NULL,NULL,NULL,'2021-11-03 17:02:53'),(152,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',41,NULL,NULL,'2021-11-03 23:16:37','2021-11-03 23:16:37',NULL,NULL,2,NULL,NULL,NULL),(153,1,'checkout',26,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',41,NULL,NULL,'2021-11-03 23:16:37','2021-11-03 23:16:37',NULL,NULL,NULL,NULL,NULL,'2021-11-03 17:16:37'),(154,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',42,NULL,NULL,'2021-11-03 23:23:07','2021-11-03 23:23:07',NULL,NULL,2,NULL,NULL,NULL),(155,1,'checkout',26,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',42,NULL,NULL,'2021-11-03 23:23:08','2021-11-03 23:23:08',NULL,NULL,NULL,NULL,NULL,'2021-11-03 17:23:08'),(156,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',43,NULL,NULL,'2021-11-03 23:30:02','2021-11-03 23:30:02',NULL,NULL,2,NULL,NULL,NULL),(157,1,'checkout',26,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',43,NULL,NULL,'2021-11-03 23:30:02','2021-11-03 23:30:02',NULL,NULL,NULL,NULL,NULL,'2021-11-03 17:30:02'),(158,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',44,NULL,NULL,'2021-11-03 23:39:18','2021-11-03 23:39:18',NULL,NULL,2,NULL,NULL,NULL),(159,1,'checkout',40,'App\\Models\\Asset',2,NULL,NULL,'App\\Models\\Component',1,NULL,NULL,'2021-11-03 23:42:17','2021-11-03 23:42:17',NULL,NULL,2,NULL,NULL,'2021-11-03 17:42:17'),(160,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Component',2,NULL,NULL,'2021-11-03 23:58:51','2021-11-03 23:58:51',NULL,NULL,1,NULL,NULL,NULL),(161,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Component',1,NULL,NULL,'2021-11-03 23:59:37','2021-11-03 23:59:37',NULL,NULL,1,NULL,NULL,NULL),(162,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Component',1,NULL,NULL,'2021-11-04 00:02:29','2021-11-04 00:02:29',NULL,NULL,1,NULL,NULL,NULL),(163,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Component',3,NULL,NULL,'2021-11-04 00:09:27','2021-11-04 00:09:27',NULL,NULL,1,NULL,NULL,NULL),(164,1,'checkout',24,'App\\Models\\Asset',2,NULL,NULL,'App\\Models\\Component',3,NULL,NULL,'2021-11-04 00:10:41','2021-11-04 00:10:41',NULL,NULL,2,NULL,NULL,'2021-11-03 18:10:41'),(165,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',45,NULL,NULL,'2021-11-04 19:00:43','2021-11-04 19:00:43',NULL,NULL,2,NULL,NULL,NULL),(166,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',46,NULL,NULL,'2021-11-04 19:13:36','2021-11-04 19:13:36',NULL,NULL,2,NULL,NULL,NULL),(167,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',47,NULL,NULL,'2021-11-08 16:44:11','2021-11-08 16:44:11',NULL,NULL,1,NULL,NULL,NULL),(168,1,'checkout',9,'App\\Models\\User',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',47,NULL,NULL,'2021-11-08 16:44:11','2021-11-08 16:44:11',NULL,NULL,1,NULL,NULL,'2021-11-08 10:44:11'),(169,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',48,NULL,NULL,'2021-11-08 17:02:37','2021-11-08 17:02:37',NULL,NULL,2,NULL,NULL,NULL),(170,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',49,NULL,NULL,'2021-11-08 17:21:43','2021-11-08 17:21:43',NULL,NULL,2,NULL,NULL,NULL),(171,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',50,NULL,NULL,'2021-11-08 17:29:18','2021-11-08 17:29:18',NULL,NULL,2,NULL,NULL,NULL),(172,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',51,NULL,NULL,'2021-11-08 17:40:59','2021-11-08 17:40:59',NULL,NULL,2,NULL,NULL,NULL),(173,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',52,NULL,NULL,'2021-11-08 18:10:32','2021-11-08 18:10:32',NULL,NULL,2,NULL,NULL,NULL),(174,1,'checkout',1,'App\\Models\\User',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',52,NULL,NULL,'2021-11-08 18:10:32','2021-11-08 18:10:32',NULL,NULL,1,NULL,NULL,'2021-11-08 12:10:32'),(175,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',53,NULL,NULL,'2021-11-08 18:41:53','2021-11-08 18:41:53',NULL,NULL,1,NULL,NULL,NULL),(176,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',54,NULL,NULL,'2021-11-08 19:01:09','2021-11-08 19:01:09',NULL,NULL,2,NULL,NULL,NULL),(177,1,'checkout',27,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',54,NULL,NULL,'2021-11-08 19:01:09','2021-11-08 19:01:09',NULL,NULL,NULL,NULL,NULL,'2021-11-08 13:01:09'),(178,1,'checkin from',27,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',54,NULL,NULL,'2021-11-08 19:01:50','2021-11-08 19:01:50',NULL,NULL,NULL,NULL,NULL,NULL),(179,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',55,NULL,NULL,'2021-11-08 20:00:31','2021-11-08 20:00:31',NULL,NULL,2,NULL,NULL,NULL),(180,1,'checkout',28,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',55,NULL,NULL,'2021-11-08 20:00:31','2021-11-08 20:00:31',NULL,NULL,NULL,NULL,NULL,'2021-11-08 14:00:31'),(181,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',56,NULL,NULL,'2021-11-08 20:05:46','2021-11-08 20:05:46',NULL,NULL,2,NULL,NULL,NULL),(182,1,'checkout',28,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',56,NULL,NULL,'2021-11-08 20:05:46','2021-11-08 20:05:46',NULL,NULL,NULL,NULL,NULL,'2021-11-08 14:05:46'),(183,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',57,NULL,NULL,'2021-11-08 20:19:49','2021-11-08 20:19:49',NULL,NULL,2,NULL,NULL,NULL),(184,1,'checkout',29,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',57,NULL,NULL,'2021-11-08 20:19:49','2021-11-08 20:19:49',NULL,NULL,NULL,NULL,NULL,'2021-11-08 14:19:49'),(185,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',58,NULL,NULL,'2021-11-08 20:24:21','2021-11-08 20:24:21',NULL,NULL,2,NULL,NULL,NULL),(186,1,'checkout',29,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',58,NULL,NULL,'2021-11-08 20:24:21','2021-11-08 20:24:21',NULL,NULL,NULL,NULL,NULL,'2021-11-08 14:24:21'),(187,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',59,NULL,NULL,'2021-11-08 20:48:57','2021-11-08 20:48:57',NULL,NULL,2,NULL,NULL,NULL),(188,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',60,NULL,NULL,'2021-11-08 21:06:49','2021-11-08 21:06:49',NULL,NULL,2,NULL,NULL,NULL),(189,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',59,NULL,NULL,'2021-11-08 21:11:36','2021-11-08 21:11:36',NULL,NULL,2,NULL,'{\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"i3-330m\"}}',NULL),(190,1,'checkout',4,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',59,NULL,NULL,'2021-11-08 21:12:12','2021-11-08 21:12:12',NULL,NULL,NULL,NULL,NULL,'2021-11-08 15:12:12'),(191,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',61,NULL,NULL,'2021-11-08 21:19:45','2021-11-08 21:19:45',NULL,NULL,2,NULL,NULL,NULL),(192,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',62,NULL,NULL,'2021-11-09 17:01:19','2021-11-09 17:01:19',NULL,NULL,2,NULL,NULL,NULL),(193,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',63,NULL,NULL,'2021-11-09 17:11:23','2021-11-09 17:11:23',NULL,NULL,2,NULL,NULL,NULL),(194,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',64,NULL,NULL,'2021-11-09 17:45:46','2021-11-09 17:45:46',NULL,NULL,2,NULL,NULL,NULL),(195,1,'checkout',30,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',64,NULL,NULL,'2021-11-09 17:45:46','2021-11-09 17:45:46',NULL,NULL,NULL,NULL,NULL,'2021-11-09 11:45:46'),(196,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',65,NULL,NULL,'2021-11-09 18:05:43','2021-11-09 18:05:43',NULL,NULL,2,NULL,NULL,NULL),(197,1,'checkout',31,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',65,NULL,NULL,'2021-11-09 18:05:43','2021-11-09 18:05:43',NULL,NULL,NULL,NULL,NULL,'2021-11-09 12:05:43'),(198,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',66,NULL,NULL,'2021-11-09 18:16:44','2021-11-09 18:16:44',NULL,NULL,2,NULL,NULL,NULL),(199,1,'checkout',31,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',66,NULL,NULL,'2021-11-09 18:16:44','2021-11-09 18:16:44',NULL,NULL,NULL,NULL,NULL,'2021-11-09 12:16:44'),(200,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',67,NULL,NULL,'2021-11-09 18:23:06','2021-11-09 18:23:06',NULL,NULL,2,NULL,NULL,NULL),(201,1,'checkout',30,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',67,NULL,NULL,'2021-11-09 18:23:06','2021-11-09 18:23:06',NULL,NULL,NULL,NULL,NULL,'2021-11-09 12:23:06'),(202,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',68,NULL,NULL,'2021-11-09 18:46:52','2021-11-09 18:46:52',NULL,NULL,2,NULL,NULL,NULL),(203,1,'checkout',32,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',68,NULL,NULL,'2021-11-09 18:46:52','2021-11-09 18:46:52',NULL,NULL,NULL,NULL,NULL,'2021-11-09 12:46:52'),(204,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',68,NULL,NULL,'2021-11-09 18:50:11','2021-11-09 18:50:11',NULL,NULL,2,NULL,'{\"_snipeit_cpu_8\":{\"old\":\"i5-8265u\",\"new\":\"i5-8250u\"}}',NULL),(205,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',69,NULL,NULL,'2021-11-09 18:54:42','2021-11-09 18:54:42',NULL,NULL,2,NULL,NULL,NULL),(206,1,'checkout',33,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',69,NULL,NULL,'2021-11-09 18:54:42','2021-11-09 18:54:42',NULL,NULL,NULL,NULL,NULL,'2021-11-09 12:54:42'),(207,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',70,NULL,NULL,'2021-11-09 19:05:12','2021-11-09 19:05:12',NULL,NULL,2,NULL,NULL,NULL),(208,1,'checkout',34,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',70,NULL,NULL,'2021-11-09 19:05:12','2021-11-09 19:05:12',NULL,NULL,NULL,NULL,NULL,'2021-11-09 13:05:12'),(209,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',70,NULL,NULL,'2021-11-09 19:06:05','2021-11-09 19:06:05',NULL,NULL,2,NULL,'{\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"Pentium E5700\"},\"_snipeit_disk_type_9\":{\"old\":null,\"new\":\"HDD\"}}',NULL),(210,1,'checkin from',3,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',24,NULL,NULL,'2021-11-09 19:07:31','2021-11-09 19:07:31',NULL,NULL,NULL,NULL,NULL,NULL),(211,1,'checkout',35,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',24,NULL,NULL,'2021-11-09 19:09:02','2021-11-09 19:09:02',NULL,NULL,NULL,NULL,NULL,'2021-11-09 13:09:02'),(212,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',71,NULL,NULL,'2021-11-09 20:06:51','2021-11-09 20:06:51',NULL,NULL,2,NULL,NULL,NULL),(213,1,'checkout',36,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',71,NULL,NULL,'2021-11-09 20:06:51','2021-11-09 20:06:51',NULL,NULL,NULL,NULL,NULL,'2021-11-09 14:06:51'),(214,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',69,NULL,NULL,'2021-11-09 20:08:38','2021-11-09 20:08:38',NULL,NULL,2,NULL,'{\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 8\"}}',NULL),(215,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',70,NULL,NULL,'2021-11-09 20:09:01','2021-11-09 20:09:01',NULL,NULL,2,NULL,'{\"_snipeit_so_7\":{\"old\":null,\"new\":\"Windows 7\"}}',NULL),(216,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',24,NULL,NULL,'2021-11-09 20:11:34','2021-11-09 20:11:34',NULL,NULL,2,NULL,'[]',NULL),(217,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',72,NULL,NULL,'2021-11-09 20:28:13','2021-11-09 20:28:13',NULL,NULL,2,NULL,NULL,NULL),(218,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',73,NULL,NULL,'2021-11-09 20:29:36','2021-11-09 20:29:36',NULL,NULL,2,NULL,NULL,NULL),(219,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',74,NULL,NULL,'2021-11-09 20:30:26','2021-11-09 20:30:26',NULL,NULL,2,NULL,NULL,NULL),(220,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',75,NULL,NULL,'2021-11-09 20:32:57','2021-11-09 20:32:57',NULL,NULL,2,NULL,NULL,NULL),(221,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',76,NULL,NULL,'2021-11-09 20:34:11','2021-11-09 20:34:11',NULL,NULL,2,NULL,NULL,NULL),(222,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',77,NULL,NULL,'2021-11-09 20:37:12','2021-11-09 20:37:12',NULL,NULL,2,NULL,NULL,NULL),(223,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',78,NULL,NULL,'2021-11-09 20:38:02','2021-11-09 20:38:02',NULL,NULL,2,NULL,NULL,NULL),(224,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',79,NULL,NULL,'2021-11-09 20:41:36','2021-11-09 20:41:36',NULL,NULL,2,NULL,NULL,NULL),(225,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',80,NULL,NULL,'2021-11-09 20:42:49','2021-11-09 20:42:49',NULL,NULL,2,NULL,NULL,NULL),(226,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',81,NULL,NULL,'2021-11-09 20:44:35','2021-11-09 20:44:35',NULL,NULL,2,NULL,NULL,NULL),(227,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',82,NULL,NULL,'2021-11-09 20:45:38','2021-11-09 20:45:38',NULL,NULL,2,NULL,NULL,NULL),(228,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',83,NULL,NULL,'2021-11-10 18:19:38','2021-11-10 18:19:38',NULL,NULL,2,NULL,NULL,NULL),(229,1,'checkout',13,'App\\Models\\User',3,'Checked out on asset creation',NULL,'App\\Models\\Asset',83,NULL,NULL,'2021-11-10 18:19:38','2021-11-10 18:19:38',NULL,NULL,1,NULL,NULL,'2021-11-10 12:19:38'),(230,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',84,NULL,NULL,'2021-11-10 18:31:23','2021-11-10 18:31:23',NULL,NULL,2,NULL,NULL,NULL),(231,1,'checkout',37,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',84,NULL,NULL,'2021-11-10 18:31:23','2021-11-10 18:31:23',NULL,NULL,NULL,NULL,NULL,'2021-11-10 12:31:23'),(232,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',85,NULL,NULL,'2021-11-10 18:43:55','2021-11-10 18:43:55',NULL,NULL,2,NULL,NULL,NULL),(233,1,'checkout',38,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',85,NULL,NULL,'2021-11-10 18:43:55','2021-11-10 18:43:55',NULL,NULL,NULL,NULL,NULL,'2021-11-10 12:43:55'),(234,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',86,NULL,NULL,'2021-11-10 18:46:27','2021-11-10 18:46:27',NULL,NULL,2,NULL,NULL,NULL),(235,1,'checkout',39,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',86,NULL,NULL,'2021-11-10 18:46:27','2021-11-10 18:46:27',NULL,NULL,NULL,NULL,NULL,'2021-11-10 12:46:27'),(236,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',87,NULL,NULL,'2021-11-10 20:01:58','2021-11-10 20:01:58',NULL,NULL,2,NULL,NULL,NULL),(237,1,'checkout',40,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',87,NULL,NULL,'2021-11-10 20:01:58','2021-11-10 20:01:58',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:01:58'),(238,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',88,NULL,NULL,'2021-11-10 20:04:17','2021-11-10 20:04:17',NULL,NULL,NULL,NULL,NULL,NULL),(239,1,'checkout',41,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',88,NULL,NULL,'2021-11-10 20:04:17','2021-11-10 20:04:17',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:04:17'),(240,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',89,NULL,NULL,'2021-11-10 20:06:52','2021-11-10 20:06:52',NULL,NULL,2,NULL,NULL,NULL),(241,1,'checkout',42,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',89,NULL,NULL,'2021-11-10 20:06:52','2021-11-10 20:06:52',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:06:52'),(242,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',90,NULL,NULL,'2021-11-10 20:10:47','2021-11-10 20:10:47',NULL,NULL,2,NULL,NULL,NULL),(243,1,'checkout',43,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',90,NULL,NULL,'2021-11-10 20:10:47','2021-11-10 20:10:47',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:10:47'),(244,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',91,NULL,NULL,'2021-11-10 20:13:54','2021-11-10 20:13:54',NULL,NULL,2,NULL,NULL,NULL),(245,1,'checkout',44,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',91,NULL,NULL,'2021-11-10 20:13:54','2021-11-10 20:13:54',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:13:54'),(246,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',92,NULL,NULL,'2021-11-10 20:16:43','2021-11-10 20:16:43',NULL,NULL,2,NULL,NULL,NULL),(247,1,'checkout',45,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',92,NULL,NULL,'2021-11-10 20:16:43','2021-11-10 20:16:43',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:16:43'),(248,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',93,NULL,NULL,'2021-11-10 20:20:19','2021-11-10 20:20:19',NULL,NULL,2,NULL,NULL,NULL),(249,1,'checkout',46,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',93,NULL,NULL,'2021-11-10 20:20:19','2021-11-10 20:20:19',NULL,NULL,NULL,NULL,NULL,'2021-11-10 14:20:19'),(250,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',84,NULL,NULL,'2021-11-10 20:29:04','2021-11-10 20:29:04',NULL,NULL,2,NULL,'{\"asset_tag\":{\"old\":\"0418d6467216\",\"new\":\"0418D6467216\"},\"serial\":{\"old\":\"0418d6467216\",\"new\":\"0418D6467216\"},\"_snipeit_mac_address_1\":{\"old\":\"04:18:d6:46:72:16\",\"new\":\"04:18:D6:46:72:16\"}}',NULL),(251,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',85,NULL,NULL,'2021-11-10 20:30:42','2021-11-10 20:30:42',NULL,NULL,2,NULL,'{\"asset_tag\":{\"old\":\"0418d6467220\",\"new\":\"0418D6467220\"},\"serial\":{\"old\":\"0418d6467220\",\"new\":\"0418D6467220\"},\"_snipeit_mac_address_1\":{\"old\":\"04:18:d6:46:72:20\",\"new\":\"04:18:D6:46:72:20\"}}',NULL),(252,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',86,NULL,NULL,'2021-11-10 20:32:02','2021-11-10 20:32:02',NULL,NULL,2,NULL,'{\"asset_tag\":{\"old\":\"24a43c7cee32\",\"new\":\"24A43C7CEE32\"},\"serial\":{\"old\":\"24a43c7cee32\",\"new\":\"24A43C7CEE32\"},\"_snipeit_mac_address_1\":{\"old\":\"24:a4:3c:7c:ee:32\",\"new\":\"24:A4:3C:7C:EE:32\"}}',NULL),(253,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',87,NULL,NULL,'2021-11-10 20:33:10','2021-11-10 20:33:10',NULL,NULL,2,NULL,'{\"asset_tag\":{\"old\":\"24a43c7ced77\",\"new\":\"24A43C7CED77\"},\"serial\":{\"old\":\"24a43c7ced77\",\"new\":\"24A43C7CED77\"},\"_snipeit_mac_address_1\":{\"old\":\"24:a4:3c:7c:ed:77\",\"new\":\"24:A4:3C:7C:ED:77\"}}',NULL),(254,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',88,NULL,NULL,'2021-11-10 20:33:54','2021-11-10 20:33:54',NULL,NULL,NULL,NULL,'{\"asset_tag\":{\"old\":\"0418d6467308\",\"new\":\"0418D6467308\"},\"serial\":{\"old\":\"0418d6467308\",\"new\":\"0418D6467308\"},\"_snipeit_mac_address_1\":{\"old\":\"04:18:d6:46:73:08\",\"new\":\"04:18:D6:46:73:08\"},\"company_id\":{\"old\":null,\"new\":\"2\"}}',NULL),(255,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',89,NULL,NULL,'2021-11-10 20:34:52','2021-11-10 20:34:52',NULL,NULL,2,NULL,'{\"asset_tag\":{\"old\":\"0418d64674e9\",\"new\":\"0418D64674E9\"},\"serial\":{\"old\":\"0418d64674e9\",\"new\":\"0418D64674E9\"},\"_snipeit_mac_address_1\":{\"old\":\"04:18:d6:46:74:e9\",\"new\":\"04:18:D6:46:74:E9\"}}',NULL),(256,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',4,NULL,NULL,'2021-11-10 21:05:11','2021-11-10 21:05:11',NULL,NULL,1,NULL,'{\"serial\":{\"old\":null,\"new\":\"X2NN141112\"}}',NULL),(257,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',3,NULL,NULL,'2021-11-10 21:06:37','2021-11-10 21:06:37',NULL,NULL,1,NULL,'{\"serial\":{\"old\":null,\"new\":\"X2NN158867\"}}',NULL),(258,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',94,NULL,NULL,'2021-11-10 21:16:39','2021-11-10 21:16:39',NULL,NULL,2,NULL,NULL,NULL),(259,1,'checkout',6,'App\\Models\\User',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',94,NULL,NULL,'2021-11-10 21:16:39','2021-11-10 21:16:39',NULL,NULL,1,NULL,NULL,'2021-11-10 15:16:39'),(260,1,'checkin from',6,'App\\Models\\User',NULL,'Bulk checkin items and delete user',NULL,'App\\Models\\Asset',94,NULL,NULL,'2021-11-10 21:25:14','2021-11-10 21:25:14',NULL,NULL,1,NULL,NULL,NULL),(261,1,'checkout',10,'App\\Models\\User',2,'',NULL,'App\\Models\\Asset',94,NULL,NULL,'2021-11-10 21:26:32','2021-11-10 21:26:32',NULL,NULL,1,NULL,NULL,'2021-11-10 15:26:32'),(262,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',2,NULL,NULL,'2021-11-10 21:27:59','2021-11-10 21:27:59',NULL,NULL,1,NULL,'{\"serial\":{\"old\":null,\"new\":\"X2NN141162\"}}',NULL),(263,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',95,NULL,NULL,'2021-11-11 17:11:20','2021-11-11 17:11:20',NULL,NULL,2,NULL,NULL,NULL),(264,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',95,NULL,NULL,'2021-11-11 17:12:29','2021-11-11 17:12:29',NULL,NULL,2,NULL,'[]',NULL),(265,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',95,NULL,NULL,'2021-11-11 17:12:29','2021-11-11 17:12:29',NULL,NULL,2,NULL,'[]',NULL),(266,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',96,NULL,NULL,'2021-11-11 17:27:52','2021-11-11 17:27:52',NULL,NULL,2,NULL,NULL,NULL),(267,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',97,NULL,NULL,'2021-11-11 17:35:29','2021-11-11 17:35:29',NULL,NULL,2,NULL,NULL,NULL),(268,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',98,NULL,NULL,'2021-11-11 17:49:27','2021-11-11 17:49:27',NULL,NULL,2,NULL,NULL,NULL),(269,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',99,NULL,NULL,'2021-11-11 18:18:15','2021-11-11 18:18:15',NULL,NULL,2,NULL,NULL,NULL),(270,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',100,NULL,NULL,'2021-11-11 18:25:57','2021-11-11 18:25:57',NULL,NULL,2,NULL,NULL,NULL),(271,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',101,NULL,NULL,'2021-11-11 18:27:23','2021-11-11 18:27:23',NULL,NULL,2,NULL,NULL,NULL),(272,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',102,NULL,NULL,'2021-11-11 18:28:20','2021-11-11 18:28:20',NULL,NULL,2,NULL,NULL,NULL),(273,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',103,NULL,NULL,'2021-11-11 18:39:29','2021-11-11 18:39:29',NULL,NULL,2,NULL,NULL,NULL),(274,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',104,NULL,NULL,'2021-11-11 18:43:35','2021-11-11 18:43:35',NULL,NULL,2,NULL,NULL,NULL),(275,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',105,NULL,NULL,'2021-11-11 20:12:12','2021-11-11 20:12:12',NULL,NULL,2,NULL,NULL,NULL),(276,1,'checkout',47,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',105,NULL,NULL,'2021-11-11 20:12:12','2021-11-11 20:12:12',NULL,NULL,NULL,NULL,NULL,'2021-11-11 14:12:12'),(277,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',106,NULL,NULL,'2021-11-11 20:42:10','2021-11-11 20:42:10',NULL,NULL,2,NULL,NULL,NULL),(278,1,'checkout',47,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',106,NULL,NULL,'2021-11-11 20:42:10','2021-11-11 20:42:10',NULL,NULL,NULL,NULL,NULL,'2021-11-11 14:42:10'),(279,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',106,NULL,NULL,'2021-11-11 20:42:42','2021-11-11 20:42:42',NULL,NULL,2,NULL,'{\"_snipeit_disk_capacity_6\":{\"old\":\" 80  GB\",\"new\":\"40 GB\"},\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"Pentium 4\"}}',NULL),(280,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',107,NULL,NULL,'2021-11-11 21:37:44','2021-11-11 21:37:44',NULL,NULL,2,NULL,NULL,NULL),(281,1,'checkout',8,'App\\Models\\User',2,'Checked out on asset creation',NULL,'App\\Models\\Asset',107,NULL,NULL,'2021-11-11 21:37:44','2021-11-11 21:37:44',NULL,NULL,1,NULL,NULL,'2021-11-11 15:37:44'),(282,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',108,NULL,NULL,'2021-11-11 21:55:43','2021-11-11 21:55:43',NULL,NULL,2,NULL,NULL,NULL),(283,1,'checkout',36,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',108,NULL,NULL,'2021-11-11 21:55:44','2021-11-11 21:55:44',NULL,NULL,NULL,NULL,NULL,'2021-11-11 15:55:44'),(284,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',35,NULL,NULL,'2021-11-11 22:07:56','2021-11-11 22:07:56',NULL,NULL,2,NULL,'{\"_snipeit_ip_2\":{\"old\":\"192.168.204.129\",\"new\":\"192.168.204.186\"}}',NULL),(285,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-11 22:45:23','2021-11-11 22:45:23',NULL,NULL,2,NULL,NULL,NULL),(286,1,'checkout',48,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-11 22:45:23','2021-11-11 22:45:23',NULL,NULL,NULL,NULL,NULL,'2021-11-11 16:45:23'),(287,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-11 22:46:11','2021-11-11 22:46:11',NULL,NULL,2,NULL,'{\"_snipeit_cpu_8\":{\"old\":null,\"new\":\"i3-2120\"}}',NULL),(288,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',110,NULL,NULL,'2021-11-11 22:52:26','2021-11-11 22:52:26',NULL,NULL,2,NULL,NULL,NULL),(289,1,'checkout',48,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',110,NULL,NULL,'2021-11-11 22:52:26','2021-11-11 22:52:26',NULL,NULL,NULL,NULL,NULL,'2021-11-11 16:52:26'),(290,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',111,NULL,NULL,'2021-11-11 23:09:40','2021-11-11 23:09:40',NULL,NULL,2,NULL,NULL,NULL),(291,1,'checkout',34,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',111,NULL,NULL,'2021-11-11 23:09:40','2021-11-11 23:09:40',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:09:40'),(292,1,'checkin from',34,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',111,NULL,NULL,'2021-11-11 23:15:29','2021-11-11 23:15:29',NULL,NULL,NULL,NULL,NULL,NULL),(293,1,'checkout',33,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',111,NULL,NULL,'2021-11-11 23:16:31','2021-11-11 23:16:31',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:16:31'),(294,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',112,NULL,NULL,'2021-11-11 23:23:13','2021-11-11 23:23:13',NULL,NULL,2,NULL,NULL,NULL),(295,1,'checkout',34,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',112,NULL,NULL,'2021-11-11 23:23:13','2021-11-11 23:23:13',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:23:13'),(296,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',113,NULL,NULL,'2021-11-11 23:35:17','2021-11-11 23:35:17',NULL,NULL,2,NULL,NULL,NULL),(297,1,'checkout',34,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',113,NULL,NULL,'2021-11-11 23:35:17','2021-11-11 23:35:17',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:35:17'),(298,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',114,NULL,NULL,'2021-11-11 23:40:46','2021-11-11 23:40:46',NULL,NULL,2,NULL,NULL,NULL),(299,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',115,NULL,NULL,'2021-11-11 23:42:07','2021-11-11 23:42:07',NULL,NULL,2,NULL,NULL,NULL),(300,1,'checkout',49,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',115,NULL,NULL,'2021-11-11 23:42:07','2021-11-11 23:42:07',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:42:07'),(301,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',116,NULL,NULL,'2021-11-11 23:49:13','2021-11-11 23:49:13',NULL,NULL,2,NULL,NULL,NULL),(302,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',117,NULL,NULL,'2021-11-11 23:51:21','2021-11-11 23:51:21',NULL,NULL,2,NULL,NULL,NULL),(303,1,'checkout',50,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',117,NULL,NULL,'2021-11-11 23:51:21','2021-11-11 23:51:21',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:51:21'),(304,1,'checkout',51,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',116,NULL,NULL,'2021-11-11 23:54:20','2021-11-11 23:54:20',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:54:20'),(305,1,'checkout',51,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',114,NULL,NULL,'2021-11-11 23:54:34','2021-11-11 23:54:34',NULL,NULL,NULL,NULL,NULL,'2021-11-11 17:54:34'),(306,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',116,NULL,NULL,'2021-11-11 23:56:36','2021-11-11 23:56:36',NULL,NULL,2,NULL,'{\"_snipeit_wifi_ssid_12\":{\"old\":\"TP-LINK_AP_4AD2\",\"new\":null},\"_snipeit_wifi_contrasena_13\":{\"old\":\"06067885\",\"new\":null}}',NULL),(307,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',116,NULL,NULL,'2021-11-11 23:59:43','2021-11-11 23:59:43',NULL,NULL,2,NULL,'{\"_snipeit_ip_2\":{\"old\":null,\"new\":\"192.168.204.54\"},\"_snipeit_hostname_14\":{\"old\":null,\"new\":\"TL-WA901ND\"}}',NULL),(308,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',118,NULL,NULL,'2021-11-12 00:06:12','2021-11-12 00:06:12',NULL,NULL,2,NULL,NULL,NULL),(309,1,'checkout',52,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',118,NULL,NULL,'2021-11-12 00:06:12','2021-11-12 00:06:12',NULL,NULL,NULL,NULL,NULL,'2021-11-11 18:06:12'),(310,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',119,NULL,NULL,'2021-11-12 00:11:27','2021-11-12 00:11:27',NULL,NULL,2,NULL,NULL,NULL),(311,1,'checkout',52,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',119,NULL,NULL,'2021-11-12 00:11:27','2021-11-12 00:11:27',NULL,NULL,NULL,NULL,NULL,'2021-11-11 18:11:27'),(312,1,'checkout',27,'App\\Models\\User',NULL,'Habitacion 216',NULL,'App\\Models\\Asset',54,NULL,NULL,'2021-11-12 18:00:56','2021-11-12 18:00:56',NULL,NULL,NULL,NULL,NULL,'2021-11-12 12:00:56'),(313,1,'checkout',27,'App\\Models\\User',NULL,'Habitacion 142',NULL,'App\\Models\\Asset',60,NULL,NULL,'2021-11-12 18:02:19','2021-11-12 18:02:19',NULL,NULL,NULL,NULL,NULL,'2021-11-12 12:02:19'),(314,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',100,NULL,NULL,'2021-11-19 20:58:34','2021-11-19 20:58:34',NULL,NULL,2,NULL,'{\"status_id\":{\"old\":3,\"new\":\"2\"}}',NULL),(315,1,'checkout',16,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',100,NULL,NULL,'2021-11-19 20:59:17','2021-11-19 20:59:17',NULL,NULL,NULL,NULL,NULL,'2021-11-19 14:59:17'),(316,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',101,NULL,NULL,'2021-11-19 21:00:34','2021-11-19 21:00:34',NULL,NULL,2,NULL,'{\"notes\":{\"old\":null,\"new\":\"Se quemo el procesador\"}}',NULL),(317,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',54,NULL,NULL,'2021-11-22 16:42:30','2021-11-22 16:42:30',NULL,NULL,2,NULL,'{\"notes\":{\"old\":null,\"new\":\"Esta en la habitacion 216\"}}',NULL),(318,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',60,NULL,NULL,'2021-11-22 16:45:00','2021-11-22 16:45:00',NULL,NULL,2,NULL,'{\"notes\":{\"old\":null,\"new\":\"Habitacion 142\"}}',NULL),(319,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',61,NULL,NULL,'2021-11-22 16:45:29','2021-11-22 16:45:29',NULL,NULL,2,NULL,'{\"notes\":{\"old\":null,\"new\":\"Habitacion 221\"}}',NULL),(320,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',61,NULL,NULL,'2021-11-22 16:46:10','2021-11-22 16:46:10',NULL,NULL,2,NULL,'[]',NULL),(321,1,'checkout',27,'App\\Models\\User',NULL,'221',NULL,'App\\Models\\Asset',61,NULL,NULL,'2021-11-22 16:49:53','2021-11-22 16:49:53',NULL,NULL,NULL,NULL,NULL,'2021-11-22 10:49:53'),(322,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',60,NULL,NULL,'2021-11-22 16:51:16','2021-11-22 16:51:16',NULL,NULL,2,NULL,'[]',NULL),(323,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',120,NULL,NULL,'2021-11-22 21:17:30','2021-11-22 21:17:30',NULL,NULL,2,NULL,NULL,NULL),(324,1,'checkout',54,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',120,NULL,NULL,'2021-11-22 21:17:31','2021-11-22 21:17:31',NULL,NULL,NULL,NULL,NULL,'2021-11-22 15:17:30'),(325,1,'checkout',54,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',51,NULL,NULL,'2021-11-22 21:19:58','2021-11-22 21:19:58',NULL,NULL,NULL,NULL,NULL,'2021-11-22 15:19:58'),(326,1,'checkin from',27,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',60,NULL,NULL,'2021-11-24 23:47:30','2021-11-24 23:47:30',NULL,NULL,NULL,NULL,NULL,NULL),(327,1,'checkout',27,'App\\Models\\User',NULL,'Se asigno a Habitación 221',NULL,'App\\Models\\Asset',60,NULL,NULL,'2021-11-24 23:48:02','2021-11-24 23:48:02',NULL,NULL,NULL,NULL,NULL,'2021-11-24 17:48:02'),(328,1,'checkin from',27,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',61,NULL,NULL,'2021-11-24 23:48:15','2021-11-24 23:48:15',NULL,NULL,NULL,NULL,NULL,NULL),(329,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Asset',121,NULL,NULL,'2021-11-25 16:54:22','2021-11-25 16:54:22',NULL,NULL,2,NULL,NULL,NULL),(330,1,'checkout',54,'App\\Models\\User',NULL,'Checked out on asset creation',NULL,'App\\Models\\Asset',121,NULL,NULL,'2021-11-25 16:54:23','2021-11-25 16:54:23',NULL,NULL,NULL,NULL,NULL,'2021-11-25 10:54:22'),(331,1,'checkin from',54,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',51,NULL,NULL,'2021-11-25 16:55:22','2021-11-25 16:55:22',NULL,NULL,NULL,NULL,NULL,NULL),(332,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',4,NULL,NULL,'2021-11-26 20:54:43','2021-11-26 20:54:43',NULL,NULL,1,NULL,NULL,NULL),(333,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',5,NULL,NULL,'2021-11-26 20:57:58','2021-11-26 20:57:58',NULL,NULL,1,NULL,NULL,NULL),(334,1,'create',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',6,NULL,NULL,'2021-11-26 20:59:51','2021-11-26 20:59:51',NULL,NULL,1,NULL,NULL,NULL),(335,1,'update',NULL,NULL,NULL,NULL,NULL,'App\\Models\\Accessory',4,NULL,NULL,'2021-11-26 21:00:25','2021-11-26 21:00:25',NULL,NULL,1,NULL,NULL,NULL),(336,1,'checkin from',48,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-27 17:45:02','2021-11-27 17:45:02',NULL,NULL,NULL,NULL,NULL,NULL),(337,1,'checkout',55,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-27 17:46:34','2021-11-27 17:46:34',NULL,NULL,NULL,NULL,NULL,'2021-11-27 11:46:34'),(338,1,'checkin from',30,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',64,NULL,NULL,'2021-11-27 17:47:35','2021-11-27 17:47:35',NULL,NULL,NULL,NULL,NULL,NULL),(339,1,'checkin from',30,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',67,NULL,NULL,'2021-11-27 17:48:19','2021-11-27 17:48:19',NULL,NULL,NULL,NULL,NULL,NULL),(340,1,'checkout',55,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',67,NULL,NULL,'2021-11-27 17:48:55','2021-11-27 17:48:55',NULL,NULL,NULL,NULL,NULL,'2021-11-27 11:48:55'),(341,1,'checkin from',48,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',110,NULL,NULL,'2021-11-27 17:51:15','2021-11-27 17:51:15',NULL,NULL,NULL,NULL,NULL,NULL),(342,1,'checkout',56,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',110,NULL,NULL,'2021-11-27 17:51:54','2021-11-27 17:51:54',NULL,NULL,NULL,NULL,NULL,'2021-11-27 11:51:54'),(343,1,'checkin from',55,'App\\Models\\User',NULL,NULL,NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-27 17:52:14','2021-11-27 17:52:14',NULL,NULL,NULL,NULL,NULL,NULL),(344,1,'checkout',56,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',109,NULL,NULL,'2021-11-27 17:52:47','2021-11-27 17:52:47',NULL,NULL,NULL,NULL,NULL,'2021-11-27 11:52:47'),(345,1,'checkout',55,'App\\Models\\User',NULL,'',NULL,'App\\Models\\Asset',64,NULL,NULL,'2021-11-27 17:53:49','2021-11-27 17:53:49',NULL,NULL,NULL,NULL,NULL,'2021-11-27 11:53:49');
/*!40000 ALTER TABLE `action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_logs`
--

DROP TABLE IF EXISTS `asset_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `checkedout_to` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_logs`
--

LOCK TABLES `asset_logs` WRITE;
/*!40000 ALTER TABLE `asset_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_maintenances`
--

DROP TABLE IF EXISTS `asset_maintenances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_maintenances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `asset_maintenance_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_warranty` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  `asset_maintenance_time` int(11) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_maintenances`
--

LOCK TABLES `asset_maintenances` WRITE;
/*!40000 ALTER TABLE `asset_maintenances` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_maintenances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_uploads`
--

DROP TABLE IF EXISTS `asset_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `filenotes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_uploads`
--

LOCK TABLES `asset_uploads` WRITE;
/*!40000 ALTER TABLE `asset_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `physical` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `warranty_months` int(11) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  `rtd_location_id` int(11) DEFAULT NULL,
  `_snipeit_mac_address_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_checkout` datetime DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `assigned_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_audit_date` datetime DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `checkin_counter` int(11) NOT NULL DEFAULT 0,
  `checkout_counter` int(11) NOT NULL DEFAULT 0,
  `requests_counter` int(11) NOT NULL DEFAULT 0,
  `_snipeit_ip_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_mac_wifi_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_ip_wifi_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_ram_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_disk_capacity_6` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_so_7` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_cpu_8` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_disk_type_9` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_tarjetas_de_red_10` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_pulgadas_11` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_wifi_ssid_12` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_wifi_contrasena_13` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_hostname_14` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_snipeit_numero_de_puertos_lan_15` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assets_rtd_location_id_index` (`rtd_location_id`),
  KEY `assets_assigned_type_assigned_to_index` (`assigned_type`,`assigned_to`),
  KEY `assets_created_at_index` (`created_at`),
  KEY `assets_deleted_at_status_id_index` (`deleted_at`,`status_id`),
  KEY `assets_deleted_at_model_id_index` (`deleted_at`,`model_id`),
  KEY `assets_deleted_at_assigned_type_assigned_to_index` (`deleted_at`,`assigned_type`,`assigned_to`),
  KEY `assets_deleted_at_supplier_id_index` (`deleted_at`,`supplier_id`),
  KEY `assets_deleted_at_location_id_index` (`deleted_at`,`location_id`),
  KEY `assets_deleted_at_rtd_location_id_index` (`deleted_at`,`rtd_location_id`),
  KEY `assets_deleted_at_asset_tag_index` (`deleted_at`,`asset_tag`),
  KEY `assets_deleted_at_name_index` (`deleted_at`,`name`),
  KEY `assets_serial_index` (`serial`),
  KEY `assets_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'HST-IMPC01','HST-IMPC01',1,'X2NN158814','2021-05-13',NULL,'2021031923',7,'Lavanderia',NULL,1,'2021-08-13 17:07:07','2021-10-09 16:17:07',1,NULL,2,0,NULL,0,1,0,2,'50:57:9C:55:2E:2D',NULL,'2021-08-14 11:21:25',NULL,1,'App\\Models\\User',NULL,NULL,2,1,2,0,'192.168.204.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'HST-IMPC02','HST-IMPC02',1,'X2NN141162','2021-05-13',NULL,'2021031923',10,'Comandas_Smart-Value',NULL,1,'2021-08-13 17:19:49','2021-11-10 21:27:59',1,NULL,2,0,NULL,0,1,0,2,'50:57:9C:54:94:2D',NULL,'2021-08-14 11:29:40',NULL,1,'App\\Models\\User',NULL,NULL,2,2,3,0,'192.168.204.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'HST-IMPC04','HST-IMPC04',1,'X2NN158867','2021-05-13',NULL,'2021031923',8,'POS_Restaurante',NULL,1,'2021-08-13 17:26:51','2021-11-10 21:06:37',1,NULL,2,0,NULL,0,1,0,2,'50:57:9C:55:54:88',NULL,'2021-08-14 11:30:08',NULL,1,'App\\Models\\User',NULL,NULL,2,1,2,0,'192.168.204.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'HST-IMPC03','HST-IMPC03',1,'X2NN141112','2021-05-13',NULL,'2021031923',9,'POS_Bar',NULL,1,'2021-08-13 17:29:47','2021-11-10 21:05:11',1,NULL,2,0,NULL,0,1,0,2,'50:57:9C:54:57:E8',NULL,'2021-08-14 11:29:55',NULL,1,'App\\Models\\User',NULL,NULL,2,1,2,0,'192.168.204.12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'HST-IMPC05','HST-IMPC05',1,NULL,'2021-05-13',NULL,'2021031923',12,'Recepcion_Smart-Value',NULL,1,'2021-08-13 17:38:26','2021-08-14 16:32:14',1,NULL,2,0,NULL,0,1,0,3,'50:57:9C:55:79:B2',NULL,'2021-08-14 11:32:14',NULL,1,'App\\Models\\User',NULL,NULL,3,1,2,0,'192.168.0.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'HST-IMPC06','HST-IMPC06',1,NULL,'2021-05-13',NULL,'2021031923',13,'Desayunador_Smart-Value',NULL,1,'2021-08-13 17:43:24','2021-08-14 16:35:04',1,NULL,2,0,NULL,0,1,0,3,'50:57:9C:54:5A:C9',NULL,'2021-08-14 11:35:04',NULL,1,'App\\Models\\User',NULL,NULL,3,1,2,0,'192.168.0.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'HST-POS01','HST-POS01',2,'PSL30003','2021-05-13',NULL,'2021031923',8,'POS Restaurante',NULL,1,'2021-08-13 18:54:39','2021-08-14 16:35:58',1,NULL,2,0,NULL,0,1,0,NULL,'00:19:17:82:0F:C9',NULL,'2021-08-14 11:35:58',NULL,1,'App\\Models\\User',NULL,NULL,2,1,2,0,'192.168.204.158',NULL,NULL,'4 GB','128 GB','Windows 10','Intel Celeron j1900','SSD',NULL,NULL,NULL,NULL,NULL,NULL),(8,'HST-POS03','HST-POS03',2,'PSL30013','2021-05-13',NULL,'2021031923',9,'POS BAR',NULL,1,'2021-08-13 19:00:19','2021-08-14 16:38:34',1,NULL,2,0,NULL,0,1,0,NULL,'00:19:17:82:0F:27',NULL,'2021-08-14 11:37:02',NULL,1,'App\\Models\\User',NULL,NULL,2,1,2,0,'192.168.204.189',NULL,NULL,'4 GB','128 GB','Windows 10','Intel Celeron j1900','SSD',NULL,NULL,NULL,NULL,NULL,NULL),(9,'HST-POS02','HST-POS02',2,'PSL30012','2021-05-13',NULL,'2021031923',13,'POS Smart Value',NULL,1,'2021-08-13 19:03:56','2021-08-14 16:36:33',1,NULL,2,0,NULL,0,1,0,NULL,'00:19:17:82:0F:26',NULL,'2021-08-14 11:36:33',NULL,1,'App\\Models\\User',NULL,NULL,3,1,2,0,'192.168.0.253',NULL,NULL,'4 GB','128 GB','Windows 10','Intel Celeron j1900','SSD',NULL,NULL,NULL,NULL,NULL,NULL),(10,'HST-LP001','HST-LP001',3,'5CD9442V4W','2020-03-06',15156.82,'PS 4069',1,NULL,NULL,1,'2021-08-13 19:13:31','2021-08-16 16:37:38',1,NULL,2,0,NULL,0,1,0,2,'04:0E:3C:A3:7C:11',NULL,'2021-08-13 14:13:31',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.45','28:7F:CF:CE:96:DB',NULL,'12 GB','260 GB','Windows 10','i5-8265u','SSD (NVME)',NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,'JQVKRM1',4,'JQVKRM1',NULL,NULL,NULL,5,NULL,NULL,1,'2021-08-14 16:00:16','2021-08-14 16:14:31',1,NULL,2,0,NULL,0,NULL,0,2,'B8:AC:6F:2B:E5:86',NULL,'2021-08-14 11:11:26',NULL,2,'App\\Models\\User',NULL,NULL,2,1,2,0,'192.168.204.111',NULL,NULL,'3 GB','160 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,'MXL82021PW',5,'MXL82021PW',NULL,NULL,NULL,5,NULL,NULL,1,'2021-08-14 16:42:28','2021-08-14 16:42:28',1,NULL,2,0,NULL,0,NULL,0,2,'18:60:24:F9:2B:83',NULL,'2021-08-14 11:42:28',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.171',NULL,NULL,'8 GB','1 TB','Windows 10','i5-8500','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,'3RDMNK1',4,'3RDMNK1',NULL,NULL,NULL,12,'Llaves-Smart',NULL,1,'2021-08-14 17:11:07','2021-08-14 17:16:30',1,NULL,2,0,NULL,0,NULL,0,3,'00:24:E8:26:7A:EC',NULL,'2021-08-14 12:11:07',NULL,2,'App\\Models\\User',NULL,NULL,3,0,1,0,'192.168.0.145',NULL,NULL,'3 GB','320 GB','Windows XP','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,'MXL9206PR6',5,'MXL9206PR6',NULL,NULL,NULL,12,NULL,NULL,1,'2021-08-14 17:33:09','2021-08-14 17:33:10',1,NULL,2,0,NULL,0,NULL,0,3,'F4:39:09:19:AE:E1',NULL,'2021-08-14 12:33:10',NULL,2,'App\\Models\\User',NULL,NULL,3,0,1,0,'192.168.0.144',NULL,NULL,'8 GB','1 TB','Windows 10','i5-8500','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,'MXL0320G72',10,'MXL0320G72',NULL,NULL,NULL,5,NULL,NULL,1,'2021-08-14 18:48:54','2021-08-16 19:36:33',1,NULL,2,0,NULL,0,NULL,0,2,'00:23:24:12:99:5F',NULL,'2021-08-14 13:48:54',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.148',NULL,NULL,'3 GB','260 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(16,'HST-LP002','HST-LP002',6,'5CG95075VF','2020-02-17',16436.50,'PS 3903',14,NULL,NULL,1,'2021-08-16 16:35:20','2021-08-16 16:35:21',1,NULL,2,0,NULL,0,1,0,2,'E8:D8:D1:A1:DA:B8',NULL,'2021-08-16 11:35:21',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.40','24:41:8C:15:71:79','192.168.204.41','4 GB','1 TB','Windows 10','i5-8265u','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(17,'HST-LP003','HST-LP003',6,'5CG95075VT','2020-02-07',16680.45,'PS 3886',15,NULL,NULL,1,'2021-08-16 16:50:04','2021-08-16 16:50:05',1,NULL,2,0,NULL,0,1,0,2,'A0:8C:FD:1E:AB:56',NULL,'2021-08-16 11:50:05',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.163','44:1C:A8:F0:74:F3','192.168.204.135','8 GB','1 TB','Windows 10','i5-8265u','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(18,'HST-LP014','HST-LP014',7,'5CD0211HDZ','2020-09-25',26390.95,'PS 5028',2,NULL,NULL,1,'2021-08-16 17:09:33','2021-08-16 18:48:10',1,NULL,2,0,36,0,1,0,2,NULL,NULL,'2021-08-16 12:09:33',NULL,1,'App\\Models\\User',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,'8 GB','1 TB','Windows 10','i5-10210u','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(19,'HST-SRV01','HST-SRV01',8,NULL,'2020-02-18',12213.55,'T 200151',16,NULL,NULL,1,'2021-08-16 17:48:04','2021-08-16 17:48:17',1,NULL,2,0,NULL,0,2,0,2,NULL,NULL,'2021-08-16 12:48:04',NULL,1,'App\\Models\\User',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tarjeta 1:\r\nTarjeta 2:\r\nTarjeta 3:\r\nTarjeta 4:',NULL,NULL,NULL,NULL,NULL),(20,'HST-SRV02','HST-SRV02',8,NULL,'2020-02-18',12213.55,'T 200151',17,NULL,NULL,1,'2021-08-16 17:50:12','2021-08-16 18:01:36',1,NULL,2,0,NULL,0,2,0,3,NULL,NULL,'2021-08-16 12:53:00',NULL,1,'App\\Models\\User',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eth0: 50:3E:AA:10:9D:5D IP: 192.168.0.2     RED: Admon\r\neth1: 50:3E:AA:11:06:63  IP: 10.156.92.2     RED: Huespedes \r\neth2: 04:D9:F5:7E:0D:E4  IP: 192.168.1.69   RED: Telmex\r\neth3: 50:3E:AA:11:44:4B  IP: 0.0.0.0             RED: Libre\r\neth4: 50:3E:AA:10:9D:5E  IP:187188.156.57 RED: TotalPlay',NULL,NULL,NULL,NULL,NULL),(21,'HST-SRV03','HST-SRV03',8,NULL,'2020-02-18',13726.48,'T 200211',16,NULL,NULL,1,'2021-08-16 18:00:45','2021-08-16 18:00:45',1,NULL,2,0,NULL,0,2,0,2,NULL,NULL,'2021-08-16 13:00:45',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tarjeta 1:\r\nTarjeta 2:\r\nTarjeta 3:\r\nTarjeta 4:',NULL,NULL,NULL,NULL,NULL),(22,'HST-UPS01','HST-UPS01',9,NULL,'2021-02-28',45723.82,'CFD 23517',18,NULL,NULL,1,'2021-08-16 18:58:01','2021-08-16 18:58:01',1,NULL,2,0,NULL,0,3,0,2,NULL,NULL,'2021-08-16 13:58:01',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'HST-UPS02','HST-UPS02',9,NULL,'2021-02-28',45723.82,'CFD 23518',18,NULL,NULL,1,'2021-08-16 18:59:00','2021-09-24 13:39:07',1,NULL,2,0,NULL,0,3,0,3,NULL,NULL,'2021-08-16 13:59:00',NULL,1,'App\\Models\\User',NULL,NULL,3,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,'5CD7482FRS',11,'5CD7482FRS',NULL,NULL,NULL,35,NULL,NULL,1,'2021-08-19 22:00:16','2021-11-09 20:11:34',1,NULL,2,0,NULL,0,NULL,0,2,'AC:E2:D3:52:F0:8C',NULL,'2021-11-09 13:09:02',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,'192.168.204.1','D4:25:88:5A:8C:3C','192.168.204.1','8 GB','1 TB','Windows 10','i3-6006u','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,'FNNLNK1',4,'FNNLNK1',NULL,NULL,NULL,19,NULL,NULL,1,'2021-08-19 22:23:33','2021-08-19 22:24:14',1,NULL,2,0,NULL,0,NULL,0,2,'00:24:E8:25:0E:38',NULL,'2021-08-19 17:23:33',NULL,2,'App\\Models\\User',NULL,NULL,3,0,1,0,'192.168.0.180',NULL,NULL,'3 GB','320 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,'2CE3452FZR',12,'2CE3452FZR',NULL,NULL,NULL,20,NULL,NULL,1,'2021-08-19 22:49:15','2021-09-20 16:31:33',1,NULL,2,0,NULL,0,NULL,0,2,'A4:5D:36:CE:7D:04',NULL,'2021-08-19 17:49:15',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.188','A4:DB:30:A1:B7:1F',NULL,'8 GB','500 GB','Windows 10','i3-4000m','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,'2C5V8Y1',13,'2C5V8Y1',NULL,NULL,NULL,21,NULL,NULL,1,'2021-08-19 22:57:51','2021-08-19 22:57:52',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:9E:BF',NULL,'2021-08-19 17:57:52',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.134',NULL,NULL,'4 GB','500 GB','Windows 8','i3-3220',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,'5CD73274LP',14,'5CD73274LP',NULL,NULL,NULL,22,NULL,NULL,1,'2021-09-11 18:22:06','2021-09-11 18:22:07',1,NULL,2,0,NULL,0,NULL,0,2,'F4:30:B9:AE:E4:45',NULL,'2021-09-11 13:22:07',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.180','88:B1:11:53:3C:7A','192.168.204.119','8 GB','1 TB','Windows 10','i5-7200u','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(29,'HST-MN001','HST-MN001',15,'910NTXR7H330','2020-03-04',1915.40,'T 200211',22,NULL,NULL,1,'2021-09-11 18:37:08','2021-09-11 18:37:08',1,NULL,2,0,NULL,0,2,0,2,NULL,NULL,'2021-09-11 13:37:08',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21.5',NULL,NULL,NULL,NULL),(30,NULL,'CNC027R1CF',16,'CNC027R1CF',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-09-13 15:20:01','2021-09-13 16:03:30',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18.5',NULL,NULL,NULL,NULL),(31,'HST-MN002','HST-MN002',17,'CNC9302JFW','2020-02-18',1617.16,'T 200152',23,NULL,NULL,1,'2021-09-13 15:27:51','2021-09-20 16:29:26',1,NULL,2,0,NULL,0,2,0,2,NULL,NULL,'2021-09-20 11:29:26',NULL,1,'App\\Models\\User',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21',NULL,NULL,NULL,NULL),(32,NULL,'CN-0N300H-64180-963-0QVL',18,'CN-0N300H-64180-963-0QVL',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-09-13 15:53:28','2021-09-13 16:03:05',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(33,NULL,'CN-0R16JC-72872-372-DDTB',19,'CN-0R16JC-72872-372-DDTB',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-09-13 16:02:46','2021-09-13 16:02:46',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL),(34,NULL,'FFCF103511',20,'FFCF103511',NULL,NULL,NULL,24,NULL,NULL,1,'2021-09-24 13:13:22','2021-09-24 13:26:14',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-09-24 08:26:14',NULL,2,'App\\Models\\User',NULL,NULL,NULL,2,3,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,'9QVKRM1',21,'9QVKRM1',NULL,NULL,NULL,24,NULL,NULL,1,'2021-09-24 13:21:52','2021-11-11 22:07:56',1,NULL,2,0,NULL,0,NULL,0,2,'BA:AC:6F:2B:E5:1C',NULL,'2021-09-24 08:21:52',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.186',NULL,NULL,'2 GB','160 GB','Windows 7','Pentium E7500','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,'CN-0N300H-64180-96B-00ML',18,'CN-0N300H-64180-96B-00ML',NULL,NULL,NULL,24,NULL,NULL,1,'2021-09-24 13:29:33','2021-09-24 13:29:33',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-09-24 08:29:33',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17.5',NULL,NULL,NULL,NULL),(37,'HST-SERO1','HST-SERO1',22,'0B0N3NQ00024J',NULL,NULL,NULL,12,NULL,NULL,1,'2021-09-29 21:15:04','2021-09-29 21:15:04',1,NULL,2,0,NULL,0,NULL,0,3,NULL,NULL,'2021-09-29 16:15:04',NULL,1,'App\\Models\\User',NULL,NULL,3,0,1,0,NULL,'6E:E7:D8:D8:AF:0A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'43\"',NULL,NULL,NULL,NULL),(38,NULL,'2C3W8Y1',13,'2C3W8Y1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-10-14 17:04:27','2021-10-14 17:05:25',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:90:38',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'192.168.1.69',NULL,NULL,'4 GB','500 GB','Ubuntu','i3-3220','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,'HST-SRV04',23,'2M29490D2M',NULL,NULL,NULL,16,NULL,NULL,1,'2021-10-27 16:42:23','2021-10-27 16:53:32',1,NULL,2,0,NULL,0,NULL,0,NULL,'94:40:C9:49:EC:5C',NULL,'2021-10-27 11:42:24',NULL,1,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'192.168.204.14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,'2C3V8Y1',13,'2C3V8Y1',NULL,NULL,NULL,25,NULL,NULL,1,'2021-11-03 23:02:52','2021-11-03 23:02:53',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:91:14',NULL,'2021-11-03 17:02:53',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.160',NULL,NULL,'4 GB','260 GB','Windows 8','i3-3220',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,'2C2V8Y1',13,'2C2V8Y1',NULL,NULL,NULL,26,NULL,NULL,1,'2021-11-03 23:16:37','2021-11-03 23:16:37',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:54:3F',NULL,'2021-11-03 17:16:37',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.108',NULL,NULL,'4 GB','500 GB','Windows 8','i3-3220',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,'CNC027R1C9',16,'CNC027R1C9',NULL,NULL,NULL,26,NULL,NULL,1,'2021-11-03 23:23:07','2021-11-03 23:23:08',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-03 17:23:08',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18,5',NULL,NULL,NULL,NULL),(43,NULL,'306MXUN6A710',24,'306MXUN6A710',NULL,NULL,NULL,26,NULL,NULL,1,'2021-11-03 23:30:02','2021-11-03 23:30:02',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-03 17:30:02',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'32',NULL,NULL,NULL,NULL),(44,NULL,'3CQ8340XKN',25,'3CQ8340XKN',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-03 23:39:18','2021-11-03 23:39:18',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'18.5',NULL,NULL,NULL,NULL),(45,NULL,'MXL0320FT3',10,'MXL0320FT3',NULL,NULL,NULL,NULL,'Se entrego a Víctor de GT',NULL,1,'2021-11-04 19:00:43','2021-11-04 19:00:43',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,'MXJ81101LQ',26,'MXJ81101LQ',NULL,NULL,NULL,NULL,'Se entrego a Víctor de GT',NULL,1,'2021-11-04 19:13:36','2021-11-04 19:13:36',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'HST-BCN001','HST-BCN001',27,'S01-9247548-P','2021-11-06',3999.00,NULL,9,'Se compro barra de sonido para tv del bar',NULL,1,'2021-11-08 16:44:11','2021-11-08 16:44:11',1,NULL,2,0,12,0,6,0,2,NULL,NULL,'2021-11-08 10:44:11',NULL,1,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,NULL,'CN-0N300H-64180-963-0QKL',18,'CN-0N300H-64180-963-0QKL',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-08 17:02:37','2021-11-08 17:02:37',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(49,NULL,'CN-0R16JC-72872-372-DP9B',19,'CN-0R16JC-72872-372-DP9B',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-08 17:21:43','2021-11-08 17:21:43',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL),(50,NULL,'CN-0N300H-64180-963-0RCL',18,'CN-0N300H-64180-963-0RCL',NULL,NULL,NULL,NULL,'No tiene base',NULL,1,'2021-11-08 17:29:18','2021-11-08 17:29:18',1,NULL,2,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(51,NULL,'CN-0N300H-64180-963-0QEL',18,'CN-0N300H-64180-963-0QEL',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-08 17:40:59','2021-11-25 16:55:22',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(52,NULL,'6CM7310M8L',28,'6CM7310M8L',NULL,NULL,NULL,1,NULL,NULL,1,'2021-11-08 18:10:32','2021-11-08 18:10:32',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-08 12:10:32',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'24',NULL,NULL,NULL,NULL),(53,'HST-UPS03','HST-UPS03',29,'E21A2331','2021-07-29',6346.81,'0210000018',NULL,NULL,NULL,1,'2021-11-08 18:41:52','2021-11-08 18:41:52',1,NULL,2,0,12,0,7,0,2,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,NULL,'AR1829324133',30,'AR1829324133',NULL,NULL,NULL,27,'Esta en la habitacion 216',NULL,1,'2021-11-08 19:01:09','2021-11-22 16:42:30',1,NULL,2,0,NULL,0,NULL,0,2,'00:72:63:DC:1F:F8',NULL,'2021-11-12 12:00:56',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INFINITUM4133','TbunJ522xn',NULL,NULL),(55,NULL,'2C6V8Y1',13,'2C6V8Y1',NULL,NULL,NULL,28,NULL,NULL,1,'2021-11-08 20:00:30','2021-11-08 20:00:31',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:9A:FD',NULL,'2021-11-08 14:00:31',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.107',NULL,NULL,'4 GB','500 GB','Windows 7','i3-3220',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,NULL,'CN-0N300H-64180-963-0QGL',18,'CN-0N300H-64180-963-0QGL',NULL,NULL,NULL,28,NULL,NULL,1,'2021-11-08 20:05:46','2021-11-08 20:05:46',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-08 14:05:46',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(57,NULL,'2C7T8Y1',13,'2C7T8Y1',NULL,NULL,NULL,29,NULL,NULL,1,'2021-11-08 20:19:49','2021-11-08 20:19:49',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:8C:2A',NULL,'2021-11-08 14:19:49',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.140',NULL,NULL,'4 GB','500 GB','Windows 7','i3-3220',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,NULL,'CN-0N300H-64180-963-0QWL',18,'CN-0N300H-64180-963-0QWL',NULL,NULL,NULL,29,NULL,NULL,1,'2021-11-08 20:24:21','2021-11-08 20:24:21',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-08 14:24:21',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(59,NULL,'CNF0303ZZW',31,'CNF0303ZZW',NULL,NULL,NULL,4,NULL,NULL,1,'2021-11-08 20:48:57','2021-11-08 21:12:12',1,NULL,2,0,NULL,0,NULL,0,2,'5C:AC:4C:74:F9:4F',NULL,'2021-11-08 15:12:12',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.10.11.108',NULL,NULL,'4 GB','500 GB','Windows 8','i3-330m','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(60,NULL,'LQJ7S19105930260',32,'LQJ7S19105930260',NULL,NULL,NULL,27,'Habitacion 142',NULL,1,'2021-11-08 21:06:49','2021-11-24 23:48:02',1,NULL,2,0,NULL,0,NULL,0,2,'80:7D:14:F1:38:51',NULL,'2021-11-24 17:48:02',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INFINITUMECMC','d4zjuhZvd9',NULL,NULL),(61,NULL,'1549u4bzgm3u',33,'1549u4bzgm3u',NULL,NULL,NULL,NULL,'Habitacion 221',NULL,1,'2021-11-08 21:19:45','2021-11-24 23:48:15',1,NULL,2,0,NULL,0,NULL,0,2,'4C:FB:45:70:D9:69',NULL,NULL,NULL,2,NULL,NULL,NULL,2,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INFINITUMgm3u','b2258d3c8d',NULL,NULL),(62,NULL,'1529fualsayd',33,'1529fualsayd',NULL,NULL,NULL,NULL,'No funciona',NULL,1,'2021-11-09 17:01:19','2021-11-09 17:01:19',1,NULL,3,0,NULL,0,NULL,0,2,'00:34:FE:15:C3:FC',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INFINITUMsayd','3b87bb0cb1',NULL,NULL),(63,NULL,'CP1525WADQ20',34,'CP1525WADQ20',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 17:11:23','2021-11-09 17:11:23',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INFINITUM15E63D','0C9CF250B6',NULL,NULL),(64,NULL,'2Y8MNK1',4,'2Y8MNK1',NULL,NULL,NULL,55,NULL,NULL,1,'2021-11-09 17:45:46','2021-11-27 17:53:49',1,NULL,2,0,NULL,0,NULL,0,2,'00:24:E8:26:7C:01',NULL,'2021-11-27 11:53:49',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,'192.168.204.177',NULL,NULL,'2 GB','160 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(65,NULL,'5CD7011N90',11,'5CD7011N90',NULL,NULL,NULL,31,NULL,NULL,1,'2021-11-09 18:05:43','2021-11-09 18:05:43',1,NULL,2,0,NULL,0,NULL,0,2,'C8:D3:FF:E6:07:D5',NULL,'2021-11-09 12:05:43',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.130',NULL,NULL,'12 GB','1 TB','Windows 10','i3-6100',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,NULL,'CN-0R16JC-72872-372-D57B',19,'CN-0R16JC-72872-372-D57B',NULL,NULL,NULL,31,NULL,NULL,1,'2021-11-09 18:16:44','2021-11-09 18:16:44',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-09 12:16:44',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL),(67,NULL,'CN-0N300H-64180-96B-0CZL',18,'CN-0N300H-64180-96B-0CZL',NULL,NULL,NULL,55,NULL,NULL,1,'2021-11-09 18:23:06','2021-11-27 17:48:55',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-27 11:48:55',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(68,NULL,'5CD81263F5',35,'5CD81263F5',NULL,NULL,NULL,32,NULL,NULL,1,'2021-11-09 18:46:52','2021-11-09 18:50:11',1,NULL,2,0,NULL,0,NULL,0,2,'10:E7:C6:E6:87:0D',NULL,'2021-11-09 12:46:52',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.190','B8:08:CF:E4:75:8C',NULL,'8 GB','260 GB','Windows 10','i5-8250u','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(69,NULL,'DQVKRM1',21,'DQVKRM1',NULL,NULL,NULL,33,NULL,NULL,1,'2021-11-09 18:54:41','2021-11-09 20:08:38',1,NULL,2,0,NULL,0,NULL,0,2,'B8:AC:6F:2B:E5:79',NULL,'2021-11-09 12:54:42',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.191',NULL,NULL,'3 GB','160 GB','Windows 8','Pentium E7500','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(70,NULL,'MXL0320FW5',10,'MXL0320FW5',NULL,NULL,NULL,34,NULL,NULL,1,'2021-11-09 19:05:12','2021-11-09 20:09:01',1,NULL,2,0,NULL,0,NULL,0,2,'00:23:24:12:9D:2F',NULL,'2021-11-09 13:05:12',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.104',NULL,NULL,'4 GB','320 GB','Windows 7','Pentium E5700','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(71,NULL,'MXL0320FX1',10,'MXL0320FX1',NULL,NULL,NULL,36,NULL,NULL,1,'2021-11-09 20:06:51','2021-11-09 20:06:51',1,NULL,2,0,NULL,0,NULL,0,2,'00:23:24:12:9E:B3',NULL,'2021-11-09 14:06:51',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.155',NULL,NULL,'2 GB','160 GB','Windows 7','Pentium E5700','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(72,NULL,'371819006117',36,'371819006117',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:28:12','2021-11-09 20:28:12',1,NULL,2,0,NULL,0,NULL,0,2,'18:4B:0D:32:87:80',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lobby',NULL),(73,NULL,'371839006109',36,'371839006109',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:29:36','2021-11-09 20:29:36',1,NULL,2,0,NULL,0,NULL,0,2,'18:4B:0D:32:87:00',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Gran Salón 1',NULL),(74,NULL,'371839006163',36,'371839006163',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:30:26','2021-11-09 20:30:26',1,NULL,2,0,NULL,0,NULL,0,2,'18:4B:0D:32:8A:60',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Gran Salón 2',NULL),(75,NULL,'411809018863',37,'411809018863',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:32:57','2021-11-09 20:32:57',1,NULL,2,0,NULL,0,NULL,0,2,'B4:79:C8:39:87:B0',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Camichines 1',NULL),(76,NULL,'411809019096',37,'411809019096',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:34:11','2021-11-09 20:34:11',1,NULL,2,0,NULL,0,NULL,0,2,'B4:79:C8:39:96:40',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Camichines 2',NULL),(77,NULL,'101803000878',38,'101803000878',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:37:12','2021-11-09 20:37:12',1,NULL,2,0,NULL,0,NULL,0,2,'44:1E:98:3A:8F:C0',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AP 1 (x31 a x55)',NULL),(78,NULL,'991803005834',38,'991803005834',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:38:02','2021-11-09 20:38:02',1,NULL,2,0,NULL,0,NULL,0,2,'44:1E:98:39:FA:60',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AP 2 (x44 a x 56)',NULL),(79,NULL,'331803002536',39,'331803002536',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:41:36','2021-11-09 20:41:36',1,NULL,2,0,NULL,0,NULL,0,2,'8C:FE:74:24:BC:10',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AP 3 (x30 a x42)',NULL),(80,NULL,'101803001236',38,'101803001236',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:42:49','2021-11-09 20:42:49',1,NULL,2,0,NULL,0,NULL,0,2,'44:1E:98:3A:A6:20',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AP 4 (x24 a x29)',NULL),(81,NULL,'101803000919',38,'101803000919',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-09 20:44:35','2021-11-09 20:44:35',1,NULL,2,0,NULL,0,NULL,0,2,'44:1E:98:3A:92:50',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AP 5 (x9 a x23)',NULL),(82,NULL,'101803000813',38,'101803000813',NULL,NULL,NULL,NULL,'Tarjeta de la antena se mojo',NULL,1,'2021-11-09 20:45:38','2021-11-09 20:45:38',1,NULL,3,0,NULL,0,NULL,0,2,'44:1E:98:3A:8B:B0',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'10.10.10.24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AP 6 (x1 a x8)',NULL),(83,NULL,'0418D646733E',40,'0418D646733E',NULL,NULL,NULL,13,NULL,NULL,1,'2021-11-10 18:19:38','2021-11-10 18:19:38',1,NULL,2,0,NULL,0,NULL,0,3,'04:18:D6:46:73:3E',NULL,'2021-11-10 12:19:38',NULL,2,'App\\Models\\User',NULL,NULL,3,0,1,0,'10.156.92.200',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Desayunador',NULL),(84,NULL,'0418D6467216',40,'0418D6467216',NULL,NULL,NULL,37,NULL,NULL,1,'2021-11-10 18:31:23','2021-11-10 20:29:04',1,NULL,2,0,NULL,0,NULL,0,3,'04:18:D6:46:72:16',NULL,'2021-11-10 12:31:23',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 105',NULL),(85,NULL,'0418D6467220',40,'0418D6467220',NULL,NULL,NULL,38,NULL,NULL,1,'2021-11-10 18:43:55','2021-11-10 20:30:42',1,NULL,2,0,NULL,0,NULL,0,3,'04:18:D6:46:72:20',NULL,'2021-11-10 12:43:55',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 109',NULL),(86,NULL,'24A43C7CEE32',40,'24A43C7CEE32',NULL,NULL,NULL,39,NULL,NULL,1,'2021-11-10 18:46:26','2021-11-10 20:32:02',1,NULL,2,0,NULL,0,NULL,0,3,'24:A4:3C:7C:EE:32',NULL,'2021-11-10 12:46:27',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 203',NULL),(87,NULL,'24A43C7CED77',40,'24A43C7CED77',NULL,NULL,NULL,40,NULL,NULL,1,'2021-11-10 20:01:58','2021-11-10 20:33:10',1,NULL,2,0,NULL,0,NULL,0,3,'24:A4:3C:7C:ED:77',NULL,'2021-11-10 14:01:58',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 207',NULL),(88,NULL,'0418D6467308',40,'0418D6467308',NULL,NULL,NULL,41,NULL,NULL,1,'2021-11-10 20:04:16','2021-11-10 20:33:54',1,NULL,2,0,NULL,0,NULL,0,3,'04:18:D6:46:73:08',NULL,'2021-11-10 14:04:17',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.93.149',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 302',NULL),(89,NULL,'0418D64674E9',40,'0418D64674E9',NULL,NULL,NULL,42,NULL,NULL,1,'2021-11-10 20:06:51','2021-11-10 20:34:52',1,NULL,2,0,NULL,0,NULL,0,3,'04:18:D6:46:74:E9',NULL,'2021-11-10 14:06:52',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.61',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 306',NULL),(90,NULL,'0418D64674EB',40,'0418D64674EB',NULL,NULL,NULL,43,NULL,NULL,1,'2021-11-10 20:10:47','2021-11-10 20:26:35',1,NULL,2,0,NULL,0,NULL,0,3,'04:18:D6:46:74:EB',NULL,'2021-11-10 14:10:47',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 404',NULL),(91,NULL,'24A43C7CED7D',40,'24A43C7CED7D',NULL,NULL,NULL,44,NULL,NULL,1,'2021-11-10 20:13:54','2021-11-10 20:26:54',1,NULL,2,0,NULL,0,NULL,0,3,'24:A4:3C:7C:ED:7D',NULL,'2021-11-10 14:13:54',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.65',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 408',NULL),(92,NULL,'24A43C7CEF2C',40,'24A43C7CEF2C',NULL,NULL,NULL,45,NULL,NULL,1,'2021-11-10 20:16:43','2021-11-10 20:27:23',1,NULL,2,0,NULL,0,NULL,0,3,'24:A4:3C:7C:EF:2C',NULL,'2021-11-10 14:16:43',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 502',NULL),(93,NULL,'24A43C7CEB79',40,'24A43C7CEB79',NULL,NULL,NULL,46,NULL,NULL,1,'2021-11-10 20:20:19','2021-11-10 20:27:45',1,NULL,2,0,NULL,0,NULL,0,3,'24:A4:3C:7C:EB:79',NULL,'2021-11-10 14:20:19',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'10.156.92.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hab 505',NULL),(94,NULL,'F7BF281979',41,'F7BF281979',NULL,NULL,NULL,10,'Tiene adaptador de red',NULL,1,'2021-11-10 21:16:39','2021-11-10 21:26:32',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-10 15:26:32',NULL,2,'App\\Models\\User',NULL,NULL,2,0,2,0,'192.168.204.24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,NULL,'AUD2612001113',43,'AUD2612001113',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 17:11:20','2021-11-11 17:12:29',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'16'),(96,NULL,'2C5T8Y1',13,'2C5T8Y1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 17:27:52','2021-11-11 17:27:52',1,NULL,2,0,NULL,0,NULL,0,2,'B8:CA:3A:A4:9C:E3',NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'192.168.204.43',NULL,NULL,'4 GB','500 GB','Windows 8','i3-3220','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(97,NULL,'FEK3231N0JY',44,'FEK3231N0JY',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 17:35:28','2021-11-11 17:35:28',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12'),(98,NULL,'FOC1414X2Z9',45,'FOC1414X2Z9',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 17:49:26','2021-11-11 17:49:26',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,NULL,'MXL0320FY1',10,'MXL0320FY1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 18:18:15','2021-11-11 18:18:15',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,'Windows 7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,NULL,'GPVKRM1',4,'GPVKRM1',NULL,NULL,NULL,16,NULL,NULL,1,'2021-11-11 18:25:57','2021-11-19 20:59:18',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-19 14:59:17',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,'4 GB','500 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(101,NULL,'6RVKRM1',4,'6RVKRM1',NULL,NULL,NULL,NULL,'Se quemo el procesador',NULL,1,'2021-11-11 18:27:23','2021-11-19 21:00:34',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,'4 GB','500 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(102,NULL,'B0VN1J1',4,'B0VN1J1',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 18:28:20','2021-11-11 18:28:20',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,'4 GB','500 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(103,NULL,'CN1COGD42V',46,'CN1COGD42V',NULL,NULL,NULL,NULL,NULL,NULL,1,'2021-11-11 18:39:29','2021-11-11 18:39:29',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,NULL,'F7AG236095',41,'F7AG236095',NULL,NULL,NULL,NULL,'Dañado',NULL,1,'2021-11-11 18:43:35','2021-11-11 18:43:35',1,NULL,3,0,NULL,0,NULL,0,2,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,2,0,0,0,'192.168.204.26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,NULL,'CN-OWH339-74261-7BT-0H5UT',47,'CN-OWH339-74261-7BT-0H5UT',NULL,NULL,NULL,47,NULL,NULL,1,'2021-11-11 20:12:12','2021-11-11 20:12:12',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 14:12:12',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15',NULL,NULL,NULL,NULL),(106,NULL,'6Y28KQ9ZV022',48,'6Y28KQ9ZV022',NULL,NULL,NULL,47,NULL,NULL,1,'2021-11-11 20:42:09','2021-11-11 20:42:42',1,NULL,2,0,NULL,0,NULL,0,2,'00:08:02:AA:00:94',NULL,'2021-11-11 14:42:10',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.187',NULL,NULL,'2 GB','40 GB','Windows XP','Pentium 4','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(107,NULL,'CN-0C2JMK-74445-04H-HV9U',49,'CN-0C2JMK-74445-04H-HV9U',NULL,NULL,NULL,8,NULL,NULL,1,'2021-11-11 21:37:43','2021-11-11 21:37:44',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 15:37:44',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(108,NULL,'CN-0N300H-64180-963-0QTL',18,'CN-0N300H-64180-963-0QTL',NULL,NULL,NULL,36,NULL,NULL,1,'2021-11-11 21:55:43','2021-11-11 21:55:44',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 15:55:44',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(109,NULL,'CTLWVR1',50,'CTLWVR1',NULL,NULL,NULL,56,NULL,NULL,1,'2021-11-11 22:45:22','2021-11-27 17:52:47',1,NULL,2,0,NULL,0,NULL,0,2,'18:03:73:D4:E3:76',NULL,'2021-11-27 11:52:47',NULL,2,'App\\Models\\User',NULL,NULL,NULL,2,3,0,'192.168.204.150',NULL,NULL,'2 GB','80  GB','Windows 8','i3-2120','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(110,NULL,'CN-0R163C-72872-372-DLDB',19,'CN-0R163C-72872-372-DLDB',NULL,NULL,NULL,56,NULL,NULL,1,'2021-11-11 22:52:25','2021-11-27 17:51:54',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-27 11:51:54',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL),(111,NULL,'CNC027R181',16,'CNC027R181',NULL,NULL,NULL,33,NULL,NULL,1,'2021-11-11 23:09:40','2021-11-11 23:16:31',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 17:16:31',NULL,2,'App\\Models\\User',NULL,NULL,NULL,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL),(112,NULL,'CN-0N300H-64180-963-0QZL',18,'CN-0N300H-64180-963-0QZL',NULL,NULL,NULL,34,NULL,NULL,1,'2021-11-11 23:23:13','2021-11-11 23:23:13',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 17:23:13',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'17',NULL,NULL,NULL,NULL),(113,NULL,'VND3B65983',51,'VND3B65983',NULL,NULL,NULL,34,NULL,NULL,1,'2021-11-11 23:35:17','2021-11-11 23:35:17',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 17:35:17',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,NULL,'2175578008339',53,'2175578008339',NULL,NULL,NULL,51,NULL,NULL,1,'2021-11-11 23:40:46','2021-11-11 23:54:34',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 17:54:34',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5'),(115,NULL,'002722902423',52,'002722902423',NULL,NULL,NULL,49,NULL,NULL,1,'2021-11-11 23:42:07','2021-11-11 23:42:07',1,NULL,2,0,NULL,0,NULL,0,2,'00:27:22:90:24:23',NULL,'2021-11-11 17:42:07',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ALMACEN',NULL),(116,NULL,'2189192002351',55,'2189192002351',NULL,NULL,NULL,51,NULL,NULL,1,'2021-11-11 23:49:13','2021-11-11 23:59:44',1,NULL,2,0,NULL,0,NULL,0,2,'B0:BE:76:24:4A:D2',NULL,'2021-11-11 17:54:20',NULL,2,'App\\Models\\User',NULL,NULL,NULL,0,1,0,'192.168.204.54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TL-WA901ND',NULL),(117,NULL,'CN23B0102Y',54,'CN23B0102Y',NULL,NULL,NULL,50,'AP Segundo Nivel',NULL,1,'2021-11-11 23:51:21','2021-11-11 23:51:21',1,NULL,2,0,NULL,0,NULL,0,2,'00:9C:02:65:11:68',NULL,'2021-11-11 17:51:21',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CN23B0102Y ',NULL),(118,NULL,'CNN71703T4',56,'CNN71703T4',NULL,NULL,NULL,52,NULL,NULL,1,'2021-11-12 00:06:12','2021-11-12 00:06:12',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-11 18:06:12',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL),(119,NULL,'1Y8MNK1',4,'1Y8MNK1',NULL,NULL,NULL,52,NULL,NULL,1,'2021-11-12 00:11:27','2021-11-12 00:11:28',1,NULL,2,0,NULL,0,NULL,0,2,'00:24:E8:26:78:8B',NULL,'2021-11-11 18:11:27',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'10.10.11.42',NULL,NULL,'3 GB','500 GB','Windows 7','Pentium E7400','HDD',NULL,NULL,NULL,NULL,NULL,NULL),(120,NULL,'8QVKRM1',21,'8QVKRM1',NULL,NULL,NULL,54,NULL,NULL,1,'2021-11-22 21:17:30','2021-11-22 21:17:31',1,NULL,2,0,NULL,0,NULL,0,2,'B8:AC:6F:2B:E4:A3',NULL,'2021-11-22 15:17:30',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,'192.168.204.116',NULL,NULL,'3 GB','160 GB','Windows 8','Pentium E7500',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,NULL,'CN-0R16JC-72872-372-DNDB',19,'CN-0R16JC-72872-372-DNDB',NULL,NULL,NULL,54,NULL,NULL,1,'2021-11-25 16:54:22','2021-11-25 16:54:23',1,NULL,2,0,NULL,0,NULL,0,2,NULL,NULL,'2021-11-25 10:54:22',NULL,2,'App\\Models\\User',NULL,NULL,2,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'19',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `eula_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_default_eula` tinyint(1) NOT NULL DEFAULT 0,
  `require_acceptance` tinyint(1) NOT NULL DEFAULT 0,
  `category_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'asset',
  `checkin_email` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Misc Software','2021-07-30 03:02:45','2021-07-30 03:02:45',NULL,NULL,NULL,0,0,'license',0,NULL),(2,'Pos Printers','2021-08-13 16:53:49','2021-08-13 16:53:49',1,NULL,NULL,0,0,'asset',0,'category-image-A0l3M0fsVd.jpg'),(3,'POS Touch','2021-08-13 18:01:42','2021-08-13 18:01:42',1,NULL,NULL,0,0,'asset',0,'category-image-pERzY321HB.png'),(4,'Laptop','2021-08-13 19:06:37','2021-08-13 19:06:37',1,NULL,NULL,0,0,'asset',0,'category-image-qRf7eHr9XJ.png'),(5,'Desktop','2021-08-14 15:52:03','2021-08-14 15:52:03',1,NULL,NULL,0,0,'asset',0,'category-image-hwyIvWkGrB.png'),(6,'Server','2021-08-16 17:27:52','2021-08-16 17:27:52',1,NULL,NULL,0,0,'asset',0,'category-image-UbTAijKz8M.jpg'),(7,'UPS','2021-08-16 18:44:40','2021-08-16 18:44:40',1,NULL,NULL,0,0,'asset',0,'category-image-AlxuGQVsoD.jpg'),(8,'Adaptadores','2021-09-11 16:29:30','2021-09-11 16:29:57',1,NULL,NULL,0,0,'accessory',0,'category-image-6fBO0OgwJ9.jpg'),(9,'Monitor','2021-09-11 18:27:22','2021-09-11 18:27:22',1,NULL,NULL,0,0,'asset',0,'category-image-gOC6Ic75pW.jpg'),(10,'USB','2021-09-24 16:46:19','2021-09-24 17:08:58',NULL,NULL,NULL,0,0,'accessory',0,'category-image-KVqqbzCVXp.png'),(11,'The Sero','2021-09-29 21:07:49','2021-09-29 21:07:49',1,NULL,NULL,0,0,'asset',0,'category-image-kZ4f594lkp.png'),(12,'HDD/SSD/NVME','2021-10-25 16:50:25','2021-10-25 16:50:25',1,NULL,NULL,0,0,'component',0,'category-image-SbjMN1zOtW.png'),(13,'Baterias Laptop','2021-11-04 00:06:37','2021-11-04 00:06:37',1,NULL,NULL,0,0,'component',0,'category-image-t1vRVHDMoN.jpg'),(14,'Equipo de audio','2021-11-08 16:38:46','2021-11-08 16:38:46',1,NULL,NULL,0,0,'asset',0,'category-image-zPPNIATcj0.png'),(15,'Modems','2021-11-08 18:53:53','2021-11-08 18:53:53',1,NULL,NULL,0,0,'asset',0,'category-image-VrF4yEonAg.png'),(16,'Antena AP','2021-11-09 20:21:10','2021-11-09 20:21:10',1,NULL,NULL,0,0,'asset',0,'category-image-KQAgn6KXCF.jpg'),(17,'Switch','2021-11-11 17:01:42','2021-11-11 17:01:42',1,NULL,NULL,0,0,'asset',0,'category-image-44CNo1gcrL.png'),(18,'Impresora','2021-11-11 18:35:22','2021-11-11 18:35:22',1,NULL,NULL,0,0,'asset',0,'category-image-iodUURXPbb.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_acceptances`
--

DROP TABLE IF EXISTS `checkout_acceptances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_acceptances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkoutable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkoutable_id` bigint(20) unsigned NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `signature_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checkout_acceptances_checkoutable_type_checkoutable_id_index` (`checkoutable_type`,`checkoutable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_acceptances`
--

LOCK TABLES `checkout_acceptances` WRITE;
/*!40000 ALTER TABLE `checkout_acceptances` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_acceptances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_requests`
--

DROP TABLE IF EXISTS `checkout_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `requestable_id` int(11) NOT NULL,
  `requestable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `fulfilled_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checkout_requests_user_id_requestable_id_requestable_type` (`user_id`,`requestable_id`,`requestable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_requests`
--

LOCK TABLES `checkout_requests` WRITE;
/*!40000 ALTER TABLE `checkout_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'CAPITALI','2021-08-13 16:47:13','2021-08-14 16:17:39','company-image-2nrQUtRPk8.png'),(2,'GT Global','2021-08-14 15:12:25','2021-08-14 15:12:25','company-image-j9EfKMsTvB.png');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `components_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` VALUES (1,'Adata SSD 240 GB',12,2,1,1,1,'ST-002','2021-10-25',580.00,'2021-10-25 16:51:19','2021-11-04 00:02:29',NULL,NULL,'2L242LAKN1RX','component-image-g3eN8sY4f1.webp'),(2,'Kingston A400',12,2,1,1,1,'ST-002','2021-10-25',590.00,'2021-11-03 23:58:51','2021-11-03 23:58:51',NULL,NULL,'S3H01103','component-image-2DF80L9mgv.webp'),(3,'Bateria - HP Probook 440 G3',13,2,1,1,2,'ST-001','2021-10-26',1640.00,'2021-11-04 00:09:27','2021-11-04 00:09:27',NULL,NULL,'805292-01','component-image-2SP0s5vom2.webp');
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_assets`
--

DROP TABLE IF EXISTS `components_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `assigned_qty` int(11) DEFAULT 1,
  `component_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_assets`
--

LOCK TABLES `components_assets` WRITE;
/*!40000 ALTER TABLE `components_assets` DISABLE KEYS */;
INSERT INTO `components_assets` VALUES (1,1,1,1,40,'2021-11-03 23:42:17',NULL),(2,1,1,3,24,'2021-11-04 00:10:41',NULL);
/*!40000 ALTER TABLE `components_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumables`
--

DROP TABLE IF EXISTS `consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `item_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consumables_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables`
--

LOCK TABLES `consumables` WRITE;
/*!40000 ALTER TABLE `consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumables_users`
--

DROP TABLE IF EXISTS `consumables_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumables_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumables_users`
--

LOCK TABLES `consumables_users` WRITE;
/*!40000 ALTER TABLE `consumables_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumables_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_custom_fieldset`
--

DROP TABLE IF EXISTS `custom_field_custom_fieldset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_custom_fieldset` (
  `custom_field_id` int(11) NOT NULL,
  `custom_fieldset_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_custom_fieldset`
--

LOCK TABLES `custom_field_custom_fieldset` WRITE;
/*!40000 ALTER TABLE `custom_field_custom_fieldset` DISABLE KEYS */;
INSERT INTO `custom_field_custom_fieldset` VALUES (1,1,1,0),(2,2,1,1),(1,2,2,0),(1,3,0,0),(2,3,1,0),(1,4,0,0),(2,4,1,0),(3,4,2,0),(4,4,3,0),(5,3,2,0),(6,3,4,0),(7,3,5,0),(8,3,6,0),(9,3,3,0),(5,4,4,0),(9,4,5,0),(6,4,6,0),(8,4,8,0),(7,4,7,0),(1,5,1,0),(10,6,6,0),(11,7,1,0),(3,8,1,0),(4,8,2,0),(11,8,3,0),(1,6,0,0),(2,6,1,0),(5,6,2,0),(7,6,3,0),(8,6,4,0),(9,6,5,0),(6,6,7,0),(1,9,1,0),(12,9,2,0),(13,9,3,0),(1,10,1,0),(2,10,2,0),(14,10,3,0),(15,11,1,0);
/*!40000 ALTER TABLE `custom_field_custom_fieldset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `field_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `db_column` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `help_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_email` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (1,'MAC Address','regex:/^[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}$/','text',NULL,'2021-07-30 03:02:29',NULL,NULL,0,'_snipeit_mac_address_1',NULL,0),(2,'IP','ip','text','2021-08-13 17:04:55','2021-08-13 17:04:55',NULL,NULL,0,'_snipeit_ip_2','Ingresa la IP',0),(3,'MAC WiFi','regex:/^[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}$/','text','2021-08-13 19:08:27','2021-08-13 19:08:27',NULL,NULL,0,'_snipeit_mac_wifi_3','Ingresa la MAC del Adaptador WiFi',0),(4,'IP WiFi','ip','text','2021-08-13 19:08:56','2021-08-13 19:08:56',NULL,NULL,0,'_snipeit_ip_wifi_4','Ingresa la IP del Adaptador WiFi',0),(5,'RAM','','listbox','2021-08-14 15:24:47','2021-10-27 20:23:37',1,'2 GB\r\n3 GB\r\n4 GB\r\n8 GB\r\n12 GB\r\n16 GB',0,'_snipeit_ram_5',NULL,0),(6,'Disk Capacity','','listbox','2021-08-14 15:25:54','2021-11-11 20:41:14',1,'40 GB\r\n80  GB\r\n128 GB\r\n160 GB\r\n260 GB\r\n320 GB\r\n500 GB\r\n1 TB\r\n\r\n',0,'_snipeit_disk_capacity_6',NULL,0),(7,'S.O','','listbox','2021-08-14 15:26:22','2021-10-27 16:54:25',1,'Windows XP\r\nWindows 7\r\nWindows 8\r\nWindows 10\r\nUbuntu\r\nCentOs\r\nXen Server',0,'_snipeit_so_7',NULL,0),(8,'CPU','','listbox','2021-08-14 15:26:33','2021-11-11 22:41:00',1,'Intel Celeron j1900\r\nPentium E7400\r\nPentium E7500\r\nPentium E5700\r\nPentium 4\r\ni3-330m\r\ni3-2120\r\ni3-3220\r\ni3-4000m\r\ni3-6006u\r\ni3-6100\r\ni3-7100U\r\ni3-8100\r\ni3-9100f\r\ni5-7200u\r\ni5-8250u\r\ni5-8265u\r\ni5-8500\r\ni5-10210u\r\nXeon E-2124\r\n\r\n\r\n',0,'_snipeit_cpu_8',NULL,0),(9,'Disk type','','checkbox','2021-08-14 15:32:48','2021-08-14 15:32:48',NULL,'HDD\r\nSSD\r\nSSD (NVME)',0,'_snipeit_disk_type_9',NULL,0),(10,'Tarjetas de Red','','textarea','2021-08-16 17:24:11','2021-08-16 17:24:11',NULL,NULL,0,'_snipeit_tarjetas_de_red_10',NULL,0),(11,'Pulgadas','','text','2021-09-11 18:28:38','2021-09-11 18:28:38',NULL,NULL,0,'_snipeit_pulgadas_11','24\"',0),(12,'WIFI SSID','','text','2021-11-08 18:46:48','2021-11-08 18:47:17',1,'',0,'_snipeit_wifi_ssid_12','Ingrese el nombre de la red wifi',0),(13,'WIFI Contraseña','','text','2021-11-08 18:47:48','2021-11-08 18:47:48',NULL,NULL,0,'_snipeit_wifi_contrasena_13',NULL,0),(14,'Hostname','','text','2021-11-09 20:23:50','2021-11-09 20:23:50',NULL,NULL,0,'_snipeit_hostname_14','Ingrese el nombre de red',0),(15,'Numero de puertos LAN','','text','2021-11-11 17:07:24','2021-11-11 17:07:24',NULL,NULL,0,'_snipeit_numero_de_puertos_lan_15',NULL,0);
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fieldsets`
--

DROP TABLE IF EXISTS `custom_fieldsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fieldsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fieldsets`
--

LOCK TABLES `custom_fieldsets` WRITE;
/*!40000 ALTER TABLE `custom_fieldsets` DISABLE KEYS */;
INSERT INTO `custom_fieldsets` VALUES (1,'Asset with MAC Address',NULL,NULL,NULL),(2,'Pos Printers (Red)','2021-08-13 17:04:07','2021-08-13 17:04:07',1),(3,'Pc Escritorio','2021-08-13 18:09:11','2021-08-13 18:09:11',1),(4,'Laptop','2021-08-13 19:07:46','2021-08-13 19:07:46',1),(6,'Gateway_Server','2021-08-16 17:24:41','2021-08-16 17:24:41',1),(7,'Monitores','2021-09-11 18:28:46','2021-09-11 18:28:46',1),(8,'The Sero','2021-09-29 21:08:25','2021-09-29 21:08:25',1),(9,'Modem Telmex','2021-11-08 18:45:47','2021-11-08 18:45:47',1),(10,'Antenas AP','2021-11-09 20:22:47','2021-11-09 20:22:47',1),(11,'Switches','2021-11-11 17:06:48','2021-11-11 17:06:48',1);
/*!40000 ALTER TABLE `custom_fieldsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departments_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Sistemas',1,1,2,1,NULL,'2021-08-14 16:37:35','2021-08-14 16:37:35',NULL,NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depreciations`
--

DROP TABLE IF EXISTS `depreciations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depreciations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `months` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depreciations`
--

LOCK TABLES `depreciations` WRITE;
/*!40000 ALTER TABLE `depreciations` DISABLE KEYS */;
/*!40000 ALTER TABLE `depreciations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL,
  `import_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_row` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_row` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits`
--

DROP TABLE IF EXISTS `kits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits`
--

LOCK TABLES `kits` WRITE;
/*!40000 ALTER TABLE `kits` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_accessories`
--

DROP TABLE IF EXISTS `kits_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_accessories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_accessories`
--

LOCK TABLES `kits_accessories` WRITE;
/*!40000 ALTER TABLE `kits_accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_consumables`
--

DROP TABLE IF EXISTS `kits_consumables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_consumables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_consumables`
--

LOCK TABLES `kits_consumables` WRITE;
/*!40000 ALTER TABLE `kits_consumables` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_consumables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_licenses`
--

DROP TABLE IF EXISTS `kits_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_licenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_licenses`
--

LOCK TABLES `kits_licenses` WRITE;
/*!40000 ALTER TABLE `kits_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits_models`
--

DROP TABLE IF EXISTS `kits_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits_models`
--

LOCK TABLES `kits_models` WRITE;
/*!40000 ALTER TABLE `kits_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `kits_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_seats`
--

DROP TABLE IF EXISTS `license_seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_seats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `license_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_seats`
--

LOCK TABLES `license_seats` WRITE;
/*!40000 ALTER TABLE `license_seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 1,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `license_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `purchase_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `maintained` tinyint(1) DEFAULT NULL,
  `reassignable` tinyint(1) NOT NULL DEFAULT 1,
  `company_id` int(10) unsigned DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `licenses_company_id_index` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_ou` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'HS','Tampico',NULL,'MX','2021-08-13 16:57:31','2021-08-13 16:58:59',NULL,NULL,NULL,NULL,'2021-08-13 16:58:59',NULL,NULL,NULL,NULL,NULL),(2,'Hotsson Hidalgo',NULL,NULL,'MX','2021-08-13 16:58:10','2021-08-13 16:58:55',1,NULL,NULL,NULL,NULL,NULL,'MXN',NULL,1,'location-image-8oVSZCwzTX.png'),(3,'Hotsson Smart Value',NULL,NULL,NULL,'2021-08-13 16:58:44','2021-08-13 16:58:44',1,NULL,NULL,NULL,NULL,2,'MXN',NULL,1,'location-image-wZVr4eI1q6.png'),(4,'FrontDesk',NULL,NULL,NULL,'2021-08-14 15:59:29','2021-08-16 19:02:14',1,NULL,NULL,NULL,'2021-08-16 19:02:14',2,'MXN',NULL,2,NULL),(5,'A y B',NULL,NULL,NULL,'2021-08-14 16:02:19','2021-08-16 19:02:09',1,NULL,NULL,NULL,'2021-08-16 19:02:09',2,'MXN',NULL,3,NULL),(6,'Lavanderia',NULL,NULL,NULL,'2021-08-14 16:04:27','2021-08-16 19:02:06',1,NULL,NULL,NULL,'2021-08-16 19:02:06',2,'MXN',NULL,4,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` VALUES (1,'jandres','192.168.204.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',1,'2021-07-30 05:14:43',NULL),(2,'jandres','192.168.204.45','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',1,'2021-07-30 20:34:22',NULL),(3,'jandres','192.168.204.45','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36',1,'2021-07-30 20:35:43',NULL),(4,'jandres','192.168.204.45','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36',1,'2021-08-13 16:42:46',NULL),(5,'jandres','192.168.204.148','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36',1,'2021-08-14 18:46:21',NULL),(6,'JANDRES','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:16:10',NULL),(7,'JANDRES','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:16:17',NULL),(8,'JANDRES','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:16:21',NULL),(9,'jandres','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:16:32',NULL),(10,'jandres','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:16:37',NULL),(11,'jandres','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:18:13',NULL),(12,'jandres','192.168.204.129','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',0,'2021-09-24 13:18:19',NULL),(13,'jandres','192.168.204.45','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36',1,'2021-09-24 13:36:34',NULL),(14,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36',1,'2021-10-06 16:27:33',NULL),(15,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',0,'2021-10-09 16:14:34',NULL),(16,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',1,'2021-10-09 16:14:42',NULL),(17,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',1,'2021-10-09 16:46:56',NULL),(18,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36',0,'2021-10-14 16:08:22',NULL),(19,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36',1,'2021-10-14 16:08:26',NULL),(20,'jandres','187.153.169.107','Mozilla/5.0 (Linux; Android 11; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36',1,'2021-10-14 16:54:33',NULL),(21,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36',1,'2021-10-25 16:43:24',NULL),(22,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36',1,'2021-11-03 21:25:36',NULL),(23,'jandres','187.153.126.158','Mozilla/5.0 (Linux; Android 11; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36',1,'2021-11-03 22:42:04',NULL),(24,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-04 18:52:32',NULL),(25,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',0,'2021-11-08 19:52:43',NULL),(26,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-08 19:52:54',NULL),(27,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-08 20:12:23',NULL),(28,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-08 20:29:21',NULL),(29,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-09 16:55:09',NULL),(30,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-09 17:39:08',NULL),(31,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-09 17:50:02',NULL),(32,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-09 18:20:42',NULL),(33,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-11 17:24:33',NULL),(34,'jsandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',0,'2021-11-11 21:26:49',NULL),(35,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',0,'2021-11-11 21:27:04',NULL),(36,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',0,'2021-11-11 21:27:22',NULL),(37,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-11 21:27:48',NULL),(38,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-11 21:52:41',NULL),(39,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-11 22:27:51',NULL),(40,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-11 23:03:40',NULL),(41,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-11 23:57:08',NULL),(42,'jandres','::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',1,'2021-11-12 17:44:03',NULL),(43,'jandres','187.254.110.181','Mozilla/5.0 (Linux; Android 11; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36',1,'2021-11-13 02:58:50',NULL),(44,'jandres','192.168.1.71','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',0,'2021-11-17 21:46:27',NULL),(45,'activos','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',0,'2021-11-17 22:35:38',NULL),(46,'Activos','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-17 22:35:49',NULL),(47,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36',1,'2021-11-18 16:16:29',NULL),(48,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36',0,'2021-11-22 21:08:02',NULL),(49,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36',1,'2021-11-22 21:08:17',NULL),(50,'jandres','187.188.156.55','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',1,'2021-11-23 19:14:51',NULL);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'ePSON','2021-08-13 16:51:27','2021-08-13 16:51:27',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-ppxyqrpHM5.png'),(2,'Posiflex','2021-08-13 18:06:02','2021-08-13 18:06:02',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-CM5umXpTih.jfif'),(3,'HP','2021-08-13 19:05:42','2021-08-13 19:05:42',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-qYDLQjCMpE.png'),(4,'Dell','2021-08-14 15:50:43','2021-08-14 15:50:43',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-KNENz2MZ9S.png'),(5,'Generic','2021-08-16 17:31:29','2021-08-16 17:31:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'EATON','2021-08-16 18:46:39','2021-08-16 18:46:39',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-M6iObP8RL3.png'),(7,'Steren','2021-09-11 16:32:12','2021-09-11 16:32:12',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-TeFdlvo5qH.png'),(8,'LG','2021-09-11 18:26:26','2021-09-11 18:26:26',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-x1T71YLyQh.png'),(9,'Kingston','2021-09-24 16:46:42','2021-09-24 17:10:00',NULL,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-kymjh7pJ9V.jpg'),(10,'Samsung','2021-09-29 21:01:50','2021-09-29 21:01:50',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-If4UW02L1Y.png'),(11,'HPE','2021-10-27 16:32:24','2021-10-27 16:32:24',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-arO2RgrjFE.png'),(12,'Sony','2021-11-08 16:36:40','2021-11-08 16:36:40',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-jo14n5vyPt.png'),(13,'ISB','2021-11-08 18:32:48','2021-11-08 18:32:48',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-sNQkh7XrcY.webp'),(14,'Telmex','2021-11-08 18:51:52','2021-11-08 18:51:52',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-3MvzCkFvCl.png'),(15,'Ruckus','2021-11-09 20:18:43','2021-11-09 20:18:43',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-NAJ6CuRovQ.png'),(16,'Ubiquiti','2021-11-10 18:09:59','2021-11-10 18:11:41',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-tM9Y39Toj3.png'),(17,'CNet','2021-11-11 17:05:14','2021-11-11 17:05:14',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-ymeitAIB1F.webp'),(18,'Cisco','2021-11-11 17:38:00','2021-11-11 17:38:00',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-URErlFb1ai.png'),(19,'Compaq','2021-11-11 20:32:56','2021-11-11 20:32:56',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-VjNsijfG2N.jpg'),(20,'ZTE','2021-11-11 23:27:59','2021-11-11 23:27:59',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-NK8IFy53Wc.png'),(21,'TP-Link','2021-11-11 23:39:07','2021-11-12 00:00:51',1,NULL,NULL,NULL,NULL,NULL,'manufacturer-image-zN3uX1A0Fr.png');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2012_12_06_225921_migration_cartalyst_sentry_install_users',1),(2,'2012_12_06_225929_migration_cartalyst_sentry_install_groups',1),(3,'2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot',1),(4,'2012_12_06_225988_migration_cartalyst_sentry_install_throttle',1),(5,'2013_03_23_193214_update_users_table',1),(6,'2013_11_13_075318_create_models_table',1),(7,'2013_11_13_075335_create_categories_table',1),(8,'2013_11_13_075347_create_manufacturers_table',1),(9,'2013_11_15_015858_add_user_id_to_categories',1),(10,'2013_11_15_112701_add_user_id_to_manufacturers',1),(11,'2013_11_15_190327_create_assets_table',1),(12,'2013_11_15_190357_create_licenses_table',1),(13,'2013_11_15_201848_add_license_name_to_licenses',1),(14,'2013_11_16_040323_create_depreciations_table',1),(15,'2013_11_16_042851_add_depreciation_id_to_models',1),(16,'2013_11_16_084923_add_user_id_to_models',1),(17,'2013_11_16_103258_create_locations_table',1),(18,'2013_11_16_103336_add_location_id_to_assets',1),(19,'2013_11_16_103407_add_checkedout_to_to_assets',1),(20,'2013_11_16_103425_create_history_table',1),(21,'2013_11_17_054359_drop_licenses_table',1),(22,'2013_11_17_054526_add_physical_to_assets',1),(23,'2013_11_17_055126_create_settings_table',1),(24,'2013_11_17_062634_add_license_to_assets',1),(25,'2013_11_18_134332_add_contacts_to_users',1),(26,'2013_11_18_142847_add_info_to_locations',1),(27,'2013_11_18_152942_remove_location_id_from_asset',1),(28,'2013_11_18_164423_set_nullvalues_for_user',1),(29,'2013_11_19_013337_create_asset_logs_table',1),(30,'2013_11_19_061409_edit_added_on_asset_logs_table',1),(31,'2013_11_19_062250_edit_location_id_asset_logs_table',1),(32,'2013_11_20_055822_add_soft_delete_on_assets',1),(33,'2013_11_20_121404_add_soft_delete_on_locations',1),(34,'2013_11_20_123137_add_soft_delete_on_manufacturers',1),(35,'2013_11_20_123725_add_soft_delete_on_categories',1),(36,'2013_11_20_130248_create_status_labels',1),(37,'2013_11_20_130830_add_status_id_on_assets_table',1),(38,'2013_11_20_131544_add_status_type_on_status_labels',1),(39,'2013_11_20_134103_add_archived_to_assets',1),(40,'2013_11_21_002321_add_uploads_table',1),(41,'2013_11_21_024531_remove_deployable_boolean_from_status_labels',1),(42,'2013_11_22_075308_add_option_label_to_settings_table',1),(43,'2013_11_22_213400_edits_to_settings_table',1),(44,'2013_11_25_013244_create_licenses_table',1),(45,'2013_11_25_031458_create_license_seats_table',1),(46,'2013_11_25_032022_add_type_to_actionlog_table',1),(47,'2013_11_25_033008_delete_bad_licenses_table',1),(48,'2013_11_25_033131_create_new_licenses_table',1),(49,'2013_11_25_033534_add_licensed_to_licenses_table',1),(50,'2013_11_25_101308_add_warrantee_to_assets_table',1),(51,'2013_11_25_104343_alter_warranty_column_on_assets',1),(52,'2013_11_25_150450_drop_parent_from_categories',1),(53,'2013_11_25_151920_add_depreciate_to_assets',1),(54,'2013_11_25_152903_add_depreciate_to_licenses_table',1),(55,'2013_11_26_211820_drop_license_from_assets_table',1),(56,'2013_11_27_062510_add_note_to_asset_logs_table',1),(57,'2013_12_01_113426_add_filename_to_asset_log',1),(58,'2013_12_06_094618_add_nullable_to_licenses_table',1),(59,'2013_12_10_084038_add_eol_on_models_table',1),(60,'2013_12_12_055218_add_manager_to_users_table',1),(61,'2014_01_28_031200_add_qr_code_to_settings_table',1),(62,'2014_02_13_183016_add_qr_text_to_settings_table',1),(63,'2014_05_24_093839_alter_default_license_depreciation_id',1),(64,'2014_05_27_231658_alter_default_values_licenses',1),(65,'2014_06_19_191508_add_asset_name_to_settings',1),(66,'2014_06_20_004847_make_asset_log_checkedout_to_nullable',1),(67,'2014_06_20_005050_make_asset_log_purchasedate_to_nullable',1),(68,'2014_06_24_003011_add_suppliers',1),(69,'2014_06_24_010742_add_supplier_id_to_asset',1),(70,'2014_06_24_012839_add_zip_to_supplier',1),(71,'2014_06_24_033908_add_url_to_supplier',1),(72,'2014_07_08_054116_add_employee_id_to_users',1),(73,'2014_07_09_134316_add_requestable_to_assets',1),(74,'2014_07_17_085822_add_asset_to_software',1),(75,'2014_07_17_161625_make_asset_id_in_logs_nullable',1),(76,'2014_08_12_053504_alpha_0_4_2_release',1),(77,'2014_08_17_083523_make_location_id_nullable',1),(78,'2014_10_16_200626_add_rtd_location_to_assets',1),(79,'2014_10_24_000417_alter_supplier_state_to_32',1),(80,'2014_10_24_015641_add_display_checkout_date',1),(81,'2014_10_28_222654_add_avatar_field_to_users_table',1),(82,'2014_10_29_045924_add_image_field_to_models_table',1),(83,'2014_11_01_214955_add_eol_display_to_settings',1),(84,'2014_11_04_231416_update_group_field_for_reporting',1),(85,'2014_11_05_212408_add_fields_to_licenses',1),(86,'2014_11_07_021042_add_image_to_supplier',1),(87,'2014_11_20_203007_add_username_to_user',1),(88,'2014_11_20_223947_add_auto_to_settings',1),(89,'2014_11_20_224421_add_prefix_to_settings',1),(90,'2014_11_21_104401_change_licence_type',1),(91,'2014_12_09_082500_add_fields_maintained_term_to_licenses',1),(92,'2015_02_04_155757_increase_user_field_lengths',1),(93,'2015_02_07_013537_add_soft_deleted_to_log',1),(94,'2015_02_10_040958_fix_bad_assigned_to_ids',1),(95,'2015_02_10_053310_migrate_data_to_new_statuses',1),(96,'2015_02_11_044104_migrate_make_license_assigned_null',1),(97,'2015_02_11_104406_migrate_create_requests_table',1),(98,'2015_02_12_001312_add_mac_address_to_asset',1),(99,'2015_02_12_024100_change_license_notes_type',1),(100,'2015_02_17_231020_add_localonly_to_settings',1),(101,'2015_02_19_222322_add_logo_and_colors_to_settings',1),(102,'2015_02_24_072043_add_alerts_to_settings',1),(103,'2015_02_25_022931_add_eula_fields',1),(104,'2015_02_25_204513_add_accessories_table',1),(105,'2015_02_26_091228_add_accessories_user_table',1),(106,'2015_02_26_115128_add_deleted_at_models',1),(107,'2015_02_26_233005_add_category_type',1),(108,'2015_03_01_231912_update_accepted_at_to_acceptance_id',1),(109,'2015_03_05_011929_add_qr_type_to_settings',1),(110,'2015_03_18_055327_add_note_to_user',1),(111,'2015_04_29_234704_add_slack_to_settings',1),(112,'2015_05_04_085151_add_parent_id_to_locations_table',1),(113,'2015_05_22_124421_add_reassignable_to_licenses',1),(114,'2015_06_10_003314_fix_default_for_user_notes',1),(115,'2015_06_10_003554_create_consumables',1),(116,'2015_06_15_183253_move_email_to_username',1),(117,'2015_06_23_070346_make_email_nullable',1),(118,'2015_06_26_213716_create_asset_maintenances_table',1),(119,'2015_07_04_212443_create_custom_fields_table',1),(120,'2015_07_09_014359_add_currency_to_settings_and_locations',1),(121,'2015_07_21_122022_add_expected_checkin_date_to_asset_logs',1),(122,'2015_07_24_093845_add_checkin_email_to_category_table',1),(123,'2015_07_25_055415_remove_email_unique_constraint',1),(124,'2015_07_29_230054_add_thread_id_to_asset_logs_table',1),(125,'2015_07_31_015430_add_accepted_to_assets',1),(126,'2015_09_09_195301_add_custom_css_to_settings',1),(127,'2015_09_21_235926_create_custom_field_custom_fieldset',1),(128,'2015_09_22_000104_create_custom_fieldsets',1),(129,'2015_09_22_003321_add_fieldset_id_to_assets',1),(130,'2015_09_22_003413_migrate_mac_address',1),(131,'2015_09_28_003314_fix_default_purchase_order',1),(132,'2015_10_01_024551_add_accessory_consumable_price_info',1),(133,'2015_10_12_192706_add_brand_to_settings',1),(134,'2015_10_22_003314_fix_defaults_accessories',1),(135,'2015_10_23_182625_add_checkout_time_and_expected_checkout_date_to_assets',1),(136,'2015_11_05_061015_create_companies_table',1),(137,'2015_11_05_061115_add_company_id_to_consumables_table',1),(138,'2015_11_05_183749_image',1),(139,'2015_11_06_092038_add_company_id_to_accessories_table',1),(140,'2015_11_06_100045_add_company_id_to_users_table',1),(141,'2015_11_06_134742_add_company_id_to_licenses_table',1),(142,'2015_11_08_035832_add_company_id_to_assets_table',1),(143,'2015_11_08_222305_add_ldap_fields_to_settings',1),(144,'2015_11_15_151803_add_full_multiple_companies_support_to_settings_table',1),(145,'2015_11_26_195528_import_ldap_settings',1),(146,'2015_11_30_191504_remove_fk_company_id',1),(147,'2015_12_21_193006_add_ldap_server_cert_ignore_to_settings_table',1),(148,'2015_12_30_233509_add_timestamp_and_userId_to_custom_fields',1),(149,'2015_12_30_233658_add_timestamp_and_userId_to_custom_fieldsets',1),(150,'2016_01_28_041048_add_notes_to_models',1),(151,'2016_02_19_070119_add_remember_token_to_users_table',1),(152,'2016_02_19_073625_create_password_resets_table',1),(153,'2016_03_02_193043_add_ldap_flag_to_users',1),(154,'2016_03_02_220517_update_ldap_filter_to_longer_field',1),(155,'2016_03_08_225351_create_components_table',1),(156,'2016_03_09_024038_add_min_stock_to_tables',1),(157,'2016_03_10_133849_add_locale_to_users',1),(158,'2016_03_10_135519_add_locale_to_settings',1),(159,'2016_03_11_185621_add_label_settings_to_settings',1),(160,'2016_03_22_125911_fix_custom_fields_regexes',1),(161,'2016_04_28_141554_add_show_to_users',1),(162,'2016_05_16_164733_add_model_mfg_to_consumable',1),(163,'2016_05_19_180351_add_alt_barcode_settings',1),(164,'2016_05_19_191146_add_alter_interval',1),(165,'2016_05_19_192226_add_inventory_threshold',1),(166,'2016_05_20_024859_remove_option_keys_from_settings_table',1),(167,'2016_05_20_143758_remove_option_value_from_settings_table',1),(168,'2016_06_01_000001_create_oauth_auth_codes_table',1),(169,'2016_06_01_000002_create_oauth_access_tokens_table',1),(170,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(171,'2016_06_01_000004_create_oauth_clients_table',1),(172,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(173,'2016_06_01_140218_add_email_domain_and_format_to_settings',1),(174,'2016_06_22_160725_add_user_id_to_maintenances',1),(175,'2016_07_13_150015_add_is_ad_to_settings',1),(176,'2016_07_14_153609_add_ad_domain_to_settings',1),(177,'2016_07_22_003348_fix_custom_fields_regex_stuff',1),(178,'2016_07_22_054850_one_more_mac_addr_fix',1),(179,'2016_07_22_143045_add_port_to_ldap_settings',1),(180,'2016_07_22_153432_add_tls_to_ldap_settings',1),(181,'2016_07_27_211034_add_zerofill_to_settings',1),(182,'2016_08_02_124944_add_color_to_statuslabel',1),(183,'2016_08_04_134500_add_disallow_ldap_pw_sync_to_settings',1),(184,'2016_08_09_002225_add_manufacturer_to_licenses',1),(185,'2016_08_12_121613_add_manufacturer_to_accessories_table',1),(186,'2016_08_23_143353_add_new_fields_to_custom_fields',1),(187,'2016_08_23_145619_add_show_in_nav_to_status_labels',1),(188,'2016_08_30_084634_make_purchase_cost_nullable',1),(189,'2016_09_01_141051_add_requestable_to_asset_model',1),(190,'2016_09_02_001448_create_checkout_requests_table',1),(191,'2016_09_04_180400_create_actionlog_table',1),(192,'2016_09_04_182149_migrate_asset_log_to_action_log',1),(193,'2016_09_19_235935_fix_fieldtype_for_target_type',1),(194,'2016_09_23_140722_fix_modelno_in_consumables_to_string',1),(195,'2016_09_28_231359_add_company_to_logs',1),(196,'2016_10_14_130709_fix_order_number_to_varchar',1),(197,'2016_10_16_015024_rename_modelno_to_model_number',1),(198,'2016_10_16_015211_rename_consumable_modelno_to_model_number',1),(199,'2016_10_16_143235_rename_model_note_to_notes',1),(200,'2016_10_16_165052_rename_component_total_qty_to_qty',1),(201,'2016_10_19_145520_fix_order_number_in_components_to_string',1),(202,'2016_10_27_151715_add_serial_to_components',1),(203,'2016_10_27_213251_increase_serial_field_capacity',1),(204,'2016_10_29_002724_enable_2fa_fields',1),(205,'2016_10_29_082408_add_signature_to_acceptance',1),(206,'2016_11_01_030818_fix_forgotten_filename_in_action_logs',1),(207,'2016_11_13_020954_rename_component_serial_number_to_serial',1),(208,'2016_11_16_172119_increase_purchase_cost_size',1),(209,'2016_11_17_161317_longer_state_field_in_location',1),(210,'2016_11_17_193706_add_model_number_to_accessories',1),(211,'2016_11_24_160405_add_missing_target_type_to_logs_table',1),(212,'2016_12_07_173720_increase_size_of_state_in_suppliers',1),(213,'2016_12_19_004212_adjust_locale_length_to_10',1),(214,'2016_12_19_133936_extend_phone_lengths_in_supplier_and_elsewhere',1),(215,'2016_12_27_212631_make_asset_assigned_to_polymorphic',1),(216,'2017_01_09_040429_create_locations_ldap_query_field',1),(217,'2017_01_14_002418_create_imports_table',1),(218,'2017_01_25_063357_fix_utf8_custom_field_column_names',1),(219,'2017_03_03_154632_add_time_date_display_to_settings',1),(220,'2017_03_10_210807_add_fields_to_manufacturer',1),(221,'2017_05_08_195520_increase_size_of_field_values_in_custom_fields',1),(222,'2017_05_22_204422_create_departments',1),(223,'2017_05_22_233509_add_manager_to_locations_table',1),(224,'2017_06_14_122059_add_next_autoincrement_to_settings',1),(225,'2017_06_18_151753_add_header_and_first_row_to_importer_table',1),(226,'2017_07_07_191533_add_login_text',1),(227,'2017_07_25_130710_add_thumbsize_to_settings',1),(228,'2017_08_03_160105_set_asset_archived_to_zero_default',1),(229,'2017_08_22_180636_add_secure_password_options',1),(230,'2017_08_25_074822_add_auditing_tables',1),(231,'2017_08_25_101435_add_auditing_to_settings',1),(232,'2017_09_18_225619_fix_assigned_type_not_being_nulled',1),(233,'2017_10_03_015503_drop_foreign_keys',1),(234,'2017_10_10_123504_allow_nullable_depreciation_id_in_models',1),(235,'2017_10_17_133709_add_display_url_to_settings',1),(236,'2017_10_19_120002_add_custom_forgot_password_url',1),(237,'2017_10_19_130406_add_image_and_supplier_to_accessories',1),(238,'2017_10_20_234129_add_location_indices_to_assets',1),(239,'2017_10_25_202930_add_images_uploads_to_locations_manufacturers_etc',1),(240,'2017_10_27_180947_denorm_asset_locations',1),(241,'2017_10_27_192423_migrate_denormed_asset_locations',1),(242,'2017_10_30_182938_add_address_to_user',1),(243,'2017_11_08_025918_add_alert_menu_setting',1),(244,'2017_11_08_123942_labels_display_company_name',1),(245,'2017_12_12_010457_normalize_asset_last_audit_date',1),(246,'2017_12_12_033618_add_actionlog_meta',1),(247,'2017_12_26_170856_re_normalize_last_audit',1),(248,'2018_01_17_184354_add_archived_in_list_setting',1),(249,'2018_01_19_203121_add_dashboard_message_to_settings',1),(250,'2018_01_24_062633_add_footer_settings_to_settings',1),(251,'2018_01_24_093426_add_modellist_preferenc',1),(252,'2018_02_22_160436_add_remote_user_settings',1),(253,'2018_03_03_011032_add_theme_to_settings',1),(254,'2018_03_06_054937_add_default_flag_on_statuslabels',1),(255,'2018_03_23_212048_add_display_in_email_to_custom_fields',1),(256,'2018_03_24_030738_add_show_images_in_email_setting',1),(257,'2018_03_24_050108_add_cc_alerts',1),(258,'2018_03_29_053618_add_canceled_at_and_fulfilled_at_in_requests',1),(259,'2018_03_29_070121_add_drop_unique_requests',1),(260,'2018_03_29_070511_add_new_index_requestable',1),(261,'2018_04_02_150700_labels_display_model_name',1),(262,'2018_04_16_133902_create_custom_field_default_values_table',1),(263,'2018_05_04_073223_add_category_to_licenses',1),(264,'2018_05_04_075235_add_update_license_category',1),(265,'2018_05_08_031515_add_gdpr_privacy_footer',1),(266,'2018_05_14_215229_add_indexes',1),(267,'2018_05_14_223646_add_indexes_to_assets',1),(268,'2018_05_14_233638_denorm_counters_on_assets',1),(269,'2018_05_16_153409_add_first_counter_totals_to_assets',1),(270,'2018_06_21_134622_add_version_footer',1),(271,'2018_07_05_215440_add_unique_serial_option_to_settings',1),(272,'2018_07_17_005911_create_login_attempts_table',1),(273,'2018_07_24_154348_add_logo_to_print_assets',1),(274,'2018_07_28_023826_create_checkout_acceptances_table',1),(275,'2018_08_20_204842_add_depreciation_option_to_settings',1),(276,'2018_09_10_082212_create_checkout_acceptances_for_unaccepted_assets',1),(277,'2018_10_18_191228_add_kits_licenses_table',1),(278,'2018_10_19_153910_add_kits_table',1),(279,'2018_10_19_154013_add_kits_models_table',1),(280,'2018_12_05_211936_add_favicon_to_settings',1),(281,'2018_12_05_212119_add_email_logo_to_settings',1),(282,'2019_02_07_185953_add_kits_consumables_table',1),(283,'2019_02_07_190030_add_kits_accessories_table',1),(284,'2019_02_12_182750_add_actiondate_to_actionlog',1),(285,'2019_02_14_154310_change_auto_increment_prefix_to_nullable',1),(286,'2019_02_16_143518_auto_increment_back_to_string',1),(287,'2019_02_17_205048_add_label_logo_to_settings',1),(288,'2019_02_20_234421_make_serial_nullable',1),(289,'2019_02_21_224703_make_fields_nullable_for_integrity',1),(290,'2019_04_06_060145_add_user_skin_setting',1),(291,'2019_04_06_205355_add_setting_allow_user_skin',1),(292,'2019_06_12_184327_rename_groups_table',1),(293,'2019_07_23_140906_add_show_assigned_assets_to_settings',1),(294,'2019_08_20_084049_add_custom_remote_user_header',1),(295,'2019_12_04_223111_passport_upgrade',1),(296,'2020_02_04_172100_add_ad_append_domain_settings',1),(297,'2020_04_29_222305_add_saml_fields_to_settings',1),(298,'2020_08_11_200712_add_saml_key_rollover',1),(299,'2020_10_22_233743_move_accessory_checkout_note_to_join_table',1),(300,'2020_10_23_161736_fix_zero_values_for_locations',1),(301,'2020_11_18_214827_widen_license_serial_field',1),(302,'2020_12_14_233815_add_digit_separator_to_settings',1),(303,'2020_12_18_090026_swap_target_type_index_order',1),(304,'2020_12_21_153235_update_min_password',1),(305,'2020_12_21_210105_fix_bad_ldap_server_url_for_v5',1),(306,'2021_02_05_172502_add_provider_to_oauth_table',1),(307,'2021_03_18_184102_adds_several_ldap_fields',1),(308,'2021_04_07_001811_add_ldap_dept',1),(309,'2021_04_14_180125_add_ids_to_tables',1),(310,'2021_06_07_155421_add_serial_number_indexes',1),(311,'2021_06_07_155436_add_company_id_indexes',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `eol` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deprecated_mac_address` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fieldset_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'TM-U220','UB-E04',1,2,'2021-08-13 16:56:20','2021-08-13 17:06:31',NULL,1,0,'assetmodel-image-w2Pil4fkJl.jpg',0,NULL,2,NULL,0),(2,'JIVA','PS-3316E',2,3,'2021-08-13 18:16:48','2021-08-13 18:17:39',NULL,1,0,'assetmodel-image-tK7qZn9rnB.jpg',0,NULL,3,NULL,0),(3,'ProBook 440 G6',NULL,3,4,'2021-08-13 19:09:53','2021-08-13 19:10:29',NULL,1,0,'assetmodel-image-1IGoTWOXvx.png',0,NULL,4,NULL,0),(4,'Optiplex 760',NULL,4,5,'2021-08-14 15:53:33','2021-08-14 15:53:33',NULL,1,0,'assetmodel-image-d1z45XuGo1.jpg',0,NULL,3,NULL,0),(5,'ProDesk 400 G4 SFF',NULL,3,5,'2021-08-14 16:41:19','2021-08-14 16:41:19',NULL,1,0,'assetmodel-image-EEU6m2v6gy.png',0,NULL,3,NULL,0),(6,'ProBook 640 G5',NULL,3,4,'2021-08-16 16:30:25','2021-08-16 16:30:25',NULL,1,0,'assetmodel-image-j5GIQXcc8u.jpg',0,NULL,4,NULL,0),(7,'ProBook 440 G7',NULL,3,4,'2021-08-16 17:00:31','2021-08-16 17:00:31',NULL,1,0,'assetmodel-image-lGo5ZLlWyL.webp',0,NULL,4,NULL,0),(8,'Linux Server',NULL,5,6,'2021-08-16 17:32:48','2021-08-16 17:32:48',NULL,1,0,'assetmodel-image-211ce3xtLw.jpg',0,NULL,6,NULL,0),(9,'9PX',NULL,6,7,'2021-08-16 18:47:10','2021-08-16 18:47:10',NULL,1,0,'assetmodel-image-SqL4O1qdTv.jpg',0,NULL,NULL,NULL,0),(10,'COMPAQ 6000 SFF',NULL,3,5,'2021-08-16 19:36:11','2021-08-16 19:36:11',NULL,1,0,'assetmodel-image-hP3LepkkW2.jpg',0,NULL,3,NULL,0),(11,'ProBook 440 G3','1ZS16LT#ABM',3,4,'2021-08-19 21:52:12','2021-08-19 21:53:11',NULL,1,0,'assetmodel-image-Oqf4i08P9t.jpg',0,NULL,4,NULL,0),(12,'ProBook 440 G1',NULL,3,4,'2021-08-19 22:45:13','2021-08-19 22:45:39',NULL,1,0,'assetmodel-image-eY3IQHllFh.jpg',0,NULL,4,NULL,0),(13,'Optiplex 7010 USFF',NULL,4,5,'2021-08-19 22:52:04','2021-08-19 22:52:04',NULL,1,0,'assetmodel-image-j6dPGtcl2H.jpg',0,NULL,3,NULL,0),(14,'ProBook 440 G4',NULL,3,4,'2021-09-11 18:17:48','2021-09-11 18:18:34',NULL,1,0,'assetmodel-image-t3cFSTvIFr.jpg',0,NULL,4,NULL,0),(15,'22MK400A','-B',8,9,'2021-09-11 18:31:51','2021-09-11 18:32:37',NULL,1,0,'assetmodel-image-WQCLQketXr.jpg',0,NULL,7,NULL,0),(16,'LE1851W','NK033A',3,9,'2021-09-13 15:17:54','2021-09-13 15:17:54',NULL,1,0,'assetmodel-image-gMRhRUbFDX.jpg',0,NULL,7,NULL,0),(17,'V214b','3FU54AA',3,9,'2021-09-13 15:25:35','2021-09-13 15:25:35',NULL,1,0,'assetmodel-image-tis111Edtl.png',0,NULL,7,NULL,0),(18,'E1709Wc',NULL,4,9,'2021-09-13 15:52:29','2021-09-13 16:01:53',NULL,1,0,'assetmodel-image-rkYhsX0PtW.jpg',0,NULL,7,NULL,0),(19,'E1912Hf',NULL,4,9,'2021-09-13 16:01:43','2021-09-13 16:01:43',NULL,1,0,'assetmodel-image-LtlPj4af9h.jpg',0,NULL,7,NULL,0),(20,'TM-U220a',NULL,1,2,'2021-09-24 13:11:44','2021-09-24 13:11:44',NULL,1,0,'assetmodel-image-n7NmU6SwcR.jpg',0,NULL,NULL,NULL,0),(21,'Optiplex 780 SFF',NULL,4,5,'2021-09-24 13:21:11','2021-09-24 13:30:30',NULL,1,0,'assetmodel-image-QEXuoCi2c3.jpg',0,NULL,3,NULL,0),(22,'The Sero','QN43LS05TAF',10,11,'2021-09-29 21:11:13','2021-09-29 21:11:36',NULL,1,0,'assetmodel-image-jppvUZhUmL.jpg',0,NULL,8,NULL,0),(23,'ProLiant ML30 Gen10','P06782-S01',11,6,'2021-10-27 16:34:28','2021-10-27 16:35:16',NULL,1,0,'assetmodel-image-mWD6pynyxL.webp',0,NULL,6,NULL,0),(24,'32LN530B','UA',8,9,'2021-11-03 23:28:17','2021-11-03 23:28:17',NULL,1,0,'assetmodel-image-NMMWPT97Js.webp',0,NULL,7,NULL,0),(25,'V194','V5E94AA',3,9,'2021-11-03 23:35:58','2021-11-03 23:35:58',NULL,1,0,'assetmodel-image-1fRrnnXusJ.webp',0,NULL,7,NULL,0),(26,'Compaq DC7800 SFF','GC760AV',3,5,'2021-11-04 19:11:32','2021-11-04 19:11:32',NULL,1,0,'assetmodel-image-x4JTwOGsdI.webp',0,NULL,3,NULL,0),(27,'HST-HT-S100F','/C',12,14,'2021-11-08 16:40:10','2021-11-08 16:40:10',NULL,1,0,'assetmodel-image-iO385q29F8.webp',0,NULL,NULL,NULL,0),(28,'Z23n','G1',3,9,'2021-11-08 18:09:39','2021-11-08 18:09:39',NULL,1,0,'assetmodel-image-dqrvR6vVBj.jpg',0,NULL,7,NULL,0),(29,'NBKS 1000',NULL,13,7,'2021-11-08 18:34:15','2021-11-08 18:34:15',NULL,1,0,'assetmodel-image-rjl5s5ekLe.jpg',0,NULL,NULL,NULL,0),(30,'VRV9506JAC23',NULL,14,15,'2021-11-08 18:56:06','2021-11-08 18:56:57',NULL,1,0,'assetmodel-image-7YOfCcGI7c.jpg',0,NULL,9,NULL,0),(31,'ProBook 4420s',NULL,3,4,'2021-11-08 20:35:13','2021-11-08 20:35:13',NULL,1,0,'assetmodel-image-M48ppzndMl.png',0,NULL,4,NULL,0),(32,'HG659',NULL,14,15,'2021-11-08 21:03:47','2021-11-08 21:03:47',NULL,1,0,'assetmodel-image-qcW8TjaNJk.jpg',0,NULL,9,NULL,0),(33,'HG658d',NULL,14,15,'2021-11-08 21:17:23','2021-11-08 21:17:23',NULL,1,0,'assetmodel-image-nrXkTAlAjf.jpg',0,NULL,9,NULL,0),(34,'TG788vn','2',14,15,'2021-11-09 17:08:00','2021-11-09 17:08:00',NULL,1,0,'assetmodel-image-kzkKGK9Cob.png',0,NULL,9,NULL,0),(35,'ProBook 440 G5',NULL,3,4,'2021-11-09 18:35:17','2021-11-09 18:35:17',NULL,1,0,'assetmodel-image-zQAgZXXexh.png',0,NULL,4,NULL,0),(36,'R510',NULL,15,16,'2021-11-09 20:26:01','2021-11-09 20:27:04',NULL,1,0,'assetmodel-image-hXOt587oXJ.jpg',0,NULL,10,NULL,0),(37,'R310',NULL,15,16,'2021-11-09 20:31:51','2021-11-09 20:32:16',NULL,1,0,'assetmodel-image-lr45JIzcWq.jpg',0,NULL,10,NULL,0),(38,'T310d',NULL,15,16,'2021-11-09 20:36:33','2021-11-09 20:36:33',NULL,1,0,'assetmodel-image-97070CuYX3.jpg',0,NULL,10,NULL,0),(39,'T310s',NULL,15,16,'2021-11-09 20:40:41','2021-11-09 20:40:41',NULL,1,0,'assetmodel-image-9cR7hx2PUZ.jpg',0,NULL,10,NULL,0),(40,'UniFi UAP',NULL,16,16,'2021-11-10 18:13:58','2021-11-10 18:13:58',NULL,1,0,'assetmodel-image-zZXGwnXq35.png',0,NULL,10,NULL,0),(41,'TM-U220PD','M188D',1,2,'2021-11-10 21:12:54','2021-11-10 21:12:54',NULL,1,0,'assetmodel-image-vMqbfJn6WB.webp',0,NULL,2,NULL,0),(42,'TM-U220B','M188B',1,2,'2021-11-10 21:18:44','2021-11-10 21:18:44',NULL,1,0,'assetmodel-image-6XeoeLOTEW.jpg',0,NULL,2,NULL,0),(43,'CSH-1600',NULL,17,17,'2021-11-11 17:09:29','2021-11-11 17:09:29',NULL,1,0,'assetmodel-image-tvWjtEcp1X.webp',0,NULL,11,NULL,0),(44,'ICX 7150-C12P',NULL,15,17,'2021-11-11 17:27:50','2021-11-11 17:27:50',NULL,1,0,'assetmodel-image-5jDg9xfjYz.jpg',0,NULL,11,NULL,0),(45,'Catalyst 2960 Series',NULL,18,17,'2021-11-11 17:47:31','2021-11-11 17:47:31',NULL,1,0,'assetmodel-image-eoKSdYfDGh.webp',0,NULL,11,NULL,0),(46,'Photosmart D110 Series',NULL,3,18,'2021-11-11 18:38:04','2021-11-11 18:38:04',NULL,1,0,'assetmodel-image-G7xYS4hr6y.jpg',0,NULL,NULL,NULL,0),(47,'E157FPb',NULL,4,9,'2021-11-11 20:08:15','2021-11-11 20:08:15',NULL,1,0,'assetmodel-image-wUjvjKdA1g.jpg',0,NULL,7,NULL,0),(48,'D31D',NULL,19,5,'2021-11-11 20:34:47','2021-11-11 20:34:47',NULL,1,0,'assetmodel-image-fOm8AgJAxt.jpg',0,NULL,3,NULL,0),(49,'P170St',NULL,4,9,'2021-11-11 21:34:42','2021-11-11 21:34:42',NULL,1,0,'assetmodel-image-hsXPVos0rr.jpg',0,NULL,7,NULL,0),(50,'Optiplex 790',NULL,4,5,'2021-11-11 22:34:22','2021-11-11 22:34:22',NULL,1,0,'assetmodel-image-x5DRZGAn9I.jpg',0,NULL,3,NULL,0),(51,'LaserJet Pro M203w',NULL,3,18,'2021-11-11 23:33:58','2021-11-11 23:33:58',NULL,1,0,'assetmodel-image-2hmz9S2SgK.webp',0,NULL,NULL,NULL,0),(52,'Bullet2 HP',NULL,16,16,'2021-11-11 23:40:06','2021-11-11 23:40:06',NULL,1,0,'assetmodel-image-Cc34mdS9D5.webp',0,NULL,10,NULL,0),(53,'TL-SF1005D',NULL,21,17,'2021-11-11 23:40:08','2021-11-11 23:40:08',NULL,1,0,'assetmodel-image-mds4ufI9B4.jpg',0,NULL,11,NULL,0),(54,' V-M200',NULL,3,16,'2021-11-11 23:44:56','2021-11-11 23:44:56',NULL,1,0,'assetmodel-image-2tMDRljrXw.jpg',0,NULL,10,NULL,0),(55,'TL-WA901ND',NULL,21,16,'2021-11-11 23:47:11','2021-11-11 23:58:23',NULL,1,0,'assetmodel-image-qwYwGPXMOa.jpg',0,NULL,10,NULL,0),(56,'HP-L1906',NULL,3,9,'2021-11-12 00:03:02','2021-11-12 00:03:02',NULL,1,0,'assetmodel-image-dNGmpfqFMi.jpg',0,NULL,7,NULL,0);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models_custom_fields`
--

DROP TABLE IF EXISTS `models_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models_custom_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_model_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `default_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models_custom_fields`
--

LOCK TABLES `models_custom_fields` WRITE;
/*!40000 ALTER TABLE `models_custom_fields` DISABLE KEYS */;
INSERT INTO `models_custom_fields` VALUES (1,4,5,'4 GB'),(2,4,6,'500 GB'),(3,4,7,'Windows 7'),(4,4,8,'Pentium E7400'),(5,5,5,'8 GB'),(6,5,6,'1 TB'),(7,5,7,'Windows 10'),(8,5,8,'i5-8500'),(9,8,10,'Tarjeta 1:\r\nTarjeta 2:\r\nTarjeta 3:\r\nTarjeta 4:'),(10,22,11,'43\"');
/*!40000 ALTER TABLE `models_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Snipe-IT Personal Access Client','yeKRSCYS2IHbMUZR6W24IQ751fc8ZViF4NljOim5',NULL,'http://localhost',1,0,0,'2021-07-30 05:12:51','2021-07-30 05:12:51'),(2,NULL,'Snipe-IT Password Grant Client','q2aA9OWpwGNOoG5SPl0h2ITO9QClvgiaOIpqSUNC','users','http://localhost',0,1,0,'2021-07-30 05:12:51','2021-07-30 05:12:51');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-07-30 05:12:51','2021-07-30 05:12:51');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requested_assets`
--

DROP TABLE IF EXISTS `requested_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requested_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `denied_at` datetime DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_assets`
--

LOCK TABLES `requested_assets` WRITE;
/*!40000 ALTER TABLE `requested_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `requested_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_page` int(11) NOT NULL DEFAULT 20,
  `site_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Snipe IT Asset Management',
  `qr_code` int(11) DEFAULT NULL,
  `qr_text` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_asset_name` int(11) DEFAULT NULL,
  `display_checkout_date` int(11) DEFAULT NULL,
  `display_eol` int(11) DEFAULT NULL,
  `auto_increment_assets` int(11) NOT NULL DEFAULT 0,
  `auto_increment_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_remote` tinyint(1) NOT NULL DEFAULT 1,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `default_eula_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'QRCODE',
  `slack_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slack_channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slack_botname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` tinyint(4) NOT NULL DEFAULT 1,
  `ldap_enabled` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_server` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_uname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_pword` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_basedn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_filter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_username_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'samaccountname',
  `ldap_lname_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'sn',
  `ldap_fname_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'givenname',
  `ldap_auth_filter_query` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'uid=samaccountname',
  `ldap_version` int(11) DEFAULT 3,
  `ldap_active_flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_dept` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_emp_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_phone_field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_jobtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_multiple_companies_support` tinyint(1) NOT NULL DEFAULT 0,
  `ldap_server_cert_ignore` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `labels_per_page` tinyint(4) NOT NULL DEFAULT 30,
  `labels_width` decimal(6,5) NOT NULL DEFAULT 2.62500,
  `labels_height` decimal(6,5) NOT NULL DEFAULT 1.00000,
  `labels_pmargin_left` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_right` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_top` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_pmargin_bottom` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_display_bgutter` decimal(6,5) NOT NULL DEFAULT 0.07000,
  `labels_display_sgutter` decimal(6,5) NOT NULL DEFAULT 0.05000,
  `labels_fontsize` tinyint(4) NOT NULL DEFAULT 9,
  `labels_pagewidth` decimal(7,5) NOT NULL DEFAULT 8.50000,
  `labels_pageheight` decimal(7,5) NOT NULL DEFAULT 11.00000,
  `labels_display_name` tinyint(4) NOT NULL DEFAULT 0,
  `labels_display_serial` tinyint(4) NOT NULL DEFAULT 1,
  `labels_display_tag` tinyint(4) NOT NULL DEFAULT 1,
  `alt_barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'C128',
  `alt_barcode_enabled` tinyint(1) DEFAULT 1,
  `alert_interval` int(11) DEFAULT 30,
  `alert_threshold` int(11) DEFAULT 5,
  `email_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'filastname',
  `username_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'filastname',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0,
  `ad_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_port` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '389',
  `ldap_tls` tinyint(1) NOT NULL DEFAULT 0,
  `zerofill_count` int(11) NOT NULL DEFAULT 5,
  `ldap_pw_sync` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_enabled` tinyint(4) DEFAULT NULL,
  `require_accept_signature` tinyint(1) NOT NULL DEFAULT 0,
  `date_display_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y-m-d',
  `time_display_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'h:i A',
  `next_auto_tag_base` bigint(20) NOT NULL DEFAULT 1,
  `login_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_max_h` int(11) DEFAULT 50,
  `pwd_secure_uncommon` tinyint(1) NOT NULL DEFAULT 0,
  `pwd_secure_complexity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd_secure_min` int(11) NOT NULL DEFAULT 8,
  `audit_interval` int(11) DEFAULT NULL,
  `audit_warning_days` int(11) DEFAULT NULL,
  `show_url_in_emails` tinyint(1) NOT NULL DEFAULT 0,
  `custom_forgot_pass_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_alerts_in_menu` tinyint(1) NOT NULL DEFAULT 1,
  `labels_display_company_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_archived_in_list` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_footer` char(5) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `footer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modellist_displays` char(191) COLLATE utf8mb4_unicode_ci DEFAULT 'image,category,manufacturer,model_number',
  `login_remote_user_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_common_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_custom_logout_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skin` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_images_in_email` tinyint(1) NOT NULL DEFAULT 1,
  `admin_cc_email` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels_display_model` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_policy_link` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_footer` char(5) COLLATE utf8mb4_unicode_ci DEFAULT 'on',
  `unique_serial` tinyint(1) NOT NULL DEFAULT 0,
  `logo_print_assets` tinyint(1) NOT NULL DEFAULT 0,
  `depreciation_method` char(10) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `favicon` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_logo` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_logo` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_user_skin` tinyint(1) NOT NULL DEFAULT 0,
  `show_assigned_assets` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_header_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ad_append_domain` tinyint(1) NOT NULL DEFAULT 0,
  `saml_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `saml_idp_metadata` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_attr_mapping_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_forcelogin` tinyint(1) NOT NULL DEFAULT 0,
  `saml_slo` tinyint(1) NOT NULL DEFAULT 0,
  `saml_sp_x509cert` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_sp_privatekey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_custom_settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saml_sp_x509certNew` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digit_separator` char(191) COLLATE utf8mb4_unicode_ci DEFAULT '1234.56',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'2021-07-30 05:14:43','2021-11-25 16:54:22',1,20,'Hotsson Assets Admin',1,'Hotsson Tampico',NULL,NULL,NULL,0,NULL,1,'setting-logo-hTm4h4xegp.png','#ac44af','sistemas.tam@hotsson.com',1,NULL,'QRCODE',NULL,NULL,NULL,'MXN',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'samaccountname','sn','givenname','uid=samaccountname',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,'es-ES',30,2.62500,1.00000,0.21975,0.21975,0.50000,0.50000,0.07000,0.05000,9,8.50000,11.00000,0,1,1,'C128',0,30,5,'@hotsson.com','filastname','filastname',0,NULL,'389',0,5,1,NULL,0,'Y-m-d','g:iA',122,NULL,50,0,NULL,10,NULL,NULL,0,NULL,1,0,0,NULL,'on',NULL,'image,category,manufacturer,model_number',0,0,'','blue',1,NULL,0,NULL,'on',0,0,'default',NULL,NULL,NULL,0,0,'',0,0,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'1234.56');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_labels`
--

DROP TABLE IF EXISTS `status_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_labels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deployable` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_nav` tinyint(1) NOT NULL DEFAULT 0,
  `default_label` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_labels`
--

LOCK TABLES `status_labels` WRITE;
/*!40000 ALTER TABLE `status_labels` DISABLE KEYS */;
INSERT INTO `status_labels` VALUES (1,'Pending',1,NULL,NULL,NULL,0,1,0,'These assets are not yet ready to be deployed, usually because of configuration or waiting on parts.',NULL,0,0),(2,'Ready to Deploy',1,NULL,NULL,NULL,1,0,0,'These assets are ready to deploy.',NULL,0,0),(3,'Archived',1,NULL,NULL,NULL,0,0,1,'These assets are no longer in circulation or viable.',NULL,0,0);
/*!40000 ALTER TABLE `status_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Sistemas Premium',NULL,NULL,NULL,NULL,'MX',NULL,NULL,NULL,NULL,NULL,'2021-08-13 17:02:13','2021-08-13 17:02:13',1,NULL,NULL,'http://','supplier-image-wbWSjLrtxY.jpg'),(2,'Systema Asesores',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-08-16 17:47:17','2021-08-16 17:47:17',1,NULL,NULL,'http://','supplier-image-qyFO7ZE6am.jpg'),(3,'ALPE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-08-16 18:57:25','2021-08-16 18:57:25',1,NULL,NULL,'http://','supplier-image-aZ1MTSecii.png'),(4,'Steren',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-09-11 16:31:39','2021-09-11 16:31:39',1,NULL,NULL,'http://','supplier-image-3MRyJHpyp2.png'),(5,'PC Domino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-09-24 17:17:12','2021-09-24 17:17:12',1,NULL,NULL,'http://','supplier-image-IN1FrIfgAZ.png'),(6,'Liverpool',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-08 16:41:57','2021-11-08 16:41:57',1,NULL,NULL,'http://','supplier-image-BZJHSZunyv.png'),(7,'InterSystems',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-11-08 18:40:29','2021-11-08 18:40:29',1,NULL,NULL,'http://','supplier-image-qRRRN5cxHR.png');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gravatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `employee_num` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) unsigned DEFAULT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_import` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `show_in_list` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_enrolled` tinyint(1) NOT NULL DEFAULT 0,
  `two_factor_optin` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`),
  KEY `users_company_id_index` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sistemas.tam@hotsson.com','$2y$10$AhnkcHb/lKoGgu77M1uPnuK1KGVxX/b0/S4zskJmM7Wqc28uOwVoi','{\"superuser\":\"1\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',1,NULL,NULL,'2021-11-23 19:14:51',NULL,NULL,'Jose','Andres','2021-07-30 05:14:43','2021-11-23 19:14:51',NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,'jandres',NULL,1,'ThUzmCcR97shL1lpTjd2zOkgN6GY0lEBB7WCO42TIQ96fCVfIf5jM1w5Nr8k',0,'en',1,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL),(2,NULL,'$2y$10$91QuQPwPcsTv.VwjN76cMOqd.9YltURmvxUPPyLNM2tVpkH47a9Py',NULL,0,NULL,NULL,NULL,NULL,NULL,'Omar','Herbert','2021-08-14 15:59:19','2021-08-14 15:59:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'oherbert',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'$2y$10$QwMciJcEJvXLp33R/BAqSuuQjNIRRZWtQTQi/pXFSoxsew.uOX9Tm',NULL,0,NULL,NULL,NULL,NULL,NULL,'Jesus','Gonzalez','2021-08-14 16:02:16','2021-08-14 16:02:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgonzalez',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'$2y$10$6IB8noW.ci/CmhBbvLfxEO3sUfXIJpvxIwsYCutR.HPsauK6lBOh.',NULL,0,NULL,NULL,NULL,NULL,NULL,'Maria del Rocio','Mendez','2021-08-14 16:04:20','2021-08-14 16:04:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mmendez',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'$2y$10$v0BEEcXZhUDfwNN8r.Fvk.rGFfrsfiPnUkF8SS.s.O.V6LZzr4dCe','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'FrontDesk',NULL,'2021-08-14 16:11:22','2021-08-14 16:14:31',NULL,NULL,NULL,NULL,2,NULL,NULL,2,NULL,NULL,'FrontDesk',NULL,1,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'$2y$10$N2/4GAv3Tul8kDCBKtAwieqdSb2AwMJEXLU8aD64e071Ym9qDkCo6','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Cocina',NULL,'2021-08-14 16:14:06','2021-11-10 21:25:14','2021-11-10 21:25:14',NULL,NULL,NULL,2,NULL,NULL,3,NULL,NULL,'Cocina',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(7,'','$2y$10$DhOBnkiU0f7DRG5OPRIud.51Z9of8RBw5t0Z0QM5JPFhuDwTaFC6u','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Lavanderia',NULL,'2021-08-14 16:20:28','2021-08-14 16:20:28',NULL,NULL,NULL,NULL,2,NULL,NULL,4,NULL,NULL,'Lavanderia',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(8,'','$2y$10$HWQx5qQeW7v.g9fIIAsCWuY2S18ZXVRWpfamMdAFFkkoKH8YCZtYi','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Restaurante',NULL,'2021-08-14 16:25:11','2021-08-14 16:25:11',NULL,NULL,NULL,NULL,2,NULL,NULL,3,NULL,NULL,'Restaurante',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,'$2y$10$MbBYgqhNA5/vYjFv48LjsuAf.Wf7qVHRoH7T5UKMU5vCBAKvlwOdG','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Bar',NULL,'2021-08-14 16:25:46','2021-08-14 16:38:34',NULL,NULL,NULL,NULL,2,NULL,NULL,3,NULL,NULL,'Bar',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(10,'','$2y$10$5/e3JO6uQwV7AX5GLPx5wO00.o4CQ88vPvtIDz3GaM9TDgTCK/9HC','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Cocina SV',NULL,'2021-08-14 16:29:05','2021-08-14 16:29:05',NULL,NULL,NULL,NULL,2,NULL,NULL,3,NULL,NULL,'Cocina SV',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,'$2y$10$BwmvyzUa58IJHbh.Nc0hO.gFPfk.COF.xn8NAPB0VxEO30M0KZGmG','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Arlene','Zambrano','2021-08-14 16:31:46','2021-08-31 21:37:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'azambranod',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(12,'','$2y$10$a8AzjAv5DeCi0OA/w.KUsuuVYBWm6OSuXJ/X63eTLP9Jh4j5HSBE2','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'FrontDesk SV',NULL,'2021-08-14 16:31:54','2021-08-14 16:31:54',NULL,NULL,NULL,NULL,3,NULL,NULL,11,NULL,NULL,'FrontDesk SV',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(13,'','$2y$10$rQ81.8q8VPRvA9hMOuEvzuSs24oGmjSr8/8sEKXtT2kGZ41eK1LXm','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Desayunador',NULL,'2021-08-14 16:34:28','2021-08-14 16:34:28',NULL,NULL,NULL,NULL,3,NULL,NULL,11,NULL,NULL,'Desayunador',NULL,1,NULL,0,NULL,1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,'$2y$10$7hBelJ0MkpKEKro61A1jkuDw5O1SNIJXGMxIU1M9bgAIEAjGZ9382',NULL,0,NULL,NULL,NULL,NULL,NULL,'Monserrat ','Marquez','2021-08-16 16:33:53','2021-08-16 16:33:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mmarquez',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,'$2y$10$Byn8QUdPAsGpaubNjJqTC.AlBrTvM8U6EVu49TL.ZREkFuCFyvaIO',NULL,0,NULL,NULL,NULL,NULL,NULL,'Mary Paz','Canseco','2021-08-16 16:42:16','2021-08-16 16:42:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mcanseco',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,'$2y$10$AELmE5CSQtL71uUB9dfD6upOgHNAz58h7Kkq9ra0OhNbrEN/ZWYsu',NULL,0,NULL,NULL,NULL,NULL,NULL,'Site Bunker',NULL,'2021-08-16 17:43:41','2021-08-16 17:43:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site Bunker',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,'$2y$10$Rp169nMWLI0eomCwPp9DuuiT1Sc6wx76f0CRDHUGq5JFIWU0bag5O',NULL,0,NULL,NULL,NULL,NULL,NULL,'Site SV',NULL,'2021-08-16 17:52:57','2021-08-16 17:52:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,'$2y$10$FhJN4shH8CWU.cCj6vcfcedMokkssVfeLggv3QfOImM70TPO9Uk.a',NULL,0,NULL,NULL,NULL,NULL,NULL,'Site',NULL,'2021-08-16 18:55:04','2021-08-16 18:55:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Site',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,'$2y$10$xSml/bJdZ4QmZZuFrJsPZe8QKaTC.tazode1M2jubvP7O0JlFONkS','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Aratxa','Cruz','2021-08-19 22:23:16','2021-08-19 22:24:14',NULL,NULL,NULL,NULL,3,NULL,NULL,11,NULL,NULL,'ACRUZ',NULL,1,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,'$2y$10$tZMdUTUGTumFESumv7HXleh6D4PL2TVGB4DB8Xf06naA01n434CnO',NULL,0,NULL,NULL,NULL,NULL,NULL,'Barbara','Garfias','2021-08-19 22:47:21','2021-08-19 22:47:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bgarfias',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,'$2y$10$3Tc6I0.Mec0T6VQkkcNXwuIicyvg9LIsRGXxKGkYhg4LXGmKyMIAq',NULL,0,NULL,NULL,NULL,NULL,NULL,'Cynthia','Vargas','2021-08-19 22:57:42','2021-08-19 22:57:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cvargas',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,'$2y$10$.wAf3bOxbRNSqenIhl7fUu7SBZRnaj0B4NTc0H3U96wfGEaJLU2oG',NULL,0,NULL,NULL,NULL,NULL,NULL,'Rodolfo','Escobedo','2021-09-11 18:21:46','2021-09-11 18:21:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rescobedo',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,'$2y$10$jsiudfzUGhBiLLcnAVh0EetYyvM9aHPKieCEzLNqQqmVXhsLEytG.',NULL,0,NULL,NULL,NULL,NULL,NULL,'Hugo','Del Angel','2021-09-20 16:29:17','2021-09-20 16:29:17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HANGEL',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,'$2y$10$.Z3WoByb2Zpe04YYJ26VQO8sR57/3i/Tt59YyoXtou8nZm5X3Crb6',NULL,0,NULL,NULL,NULL,NULL,NULL,'Room','Service','2021-09-24 13:13:14','2021-09-24 13:13:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Room Service',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,'$2y$10$z/xWnQg/mcgPUGlrJ1lPs.gj0fkWVKo79AZc6PDZLXDMWOo1LvbbO',NULL,0,NULL,NULL,NULL,NULL,NULL,'Isaias','Del Angel','2021-11-03 23:01:49','2021-11-03 23:01:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IDELANGEL',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,'$2y$10$OQW5cH9n2cS8fI8JHtLpFuqJjGYdu9aktipWvOJ7NC2HPmIfI/ykC',NULL,0,NULL,NULL,NULL,NULL,NULL,'Salvador','Hernandez','2021-11-03 23:16:09','2021-11-03 23:16:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SHERNANDEZ',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,'$2y$10$u8y9HFNaoaOQA6b8GaboJ.wiCougH/hAAhcWPPKAPwRJMDoYXsU1y',NULL,0,NULL,NULL,NULL,NULL,NULL,'Habitaciones','Hotsson','2021-11-08 19:00:44','2021-11-08 19:00:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HHABITACIONES',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,'$2y$10$SxmdO/jQodweqGbulP80fept3iyYa4nBOuoeG1gl775NCn9Ychz5e',NULL,0,NULL,NULL,NULL,NULL,NULL,'Omar','Dante','2021-11-08 20:00:19','2021-11-08 20:00:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ODANTE',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,'$2y$10$Lt7KGCdX.O3XDypxcpAQ/e/gtc7b8kL3LQwP.cxU9DTEhm8rqz/Gm',NULL,0,NULL,NULL,NULL,NULL,NULL,'Lucia','Flores','2021-11-08 20:19:34','2021-11-08 20:19:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LFLORES',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,'$2y$10$4F.cO89Bws/IV55iRwVdKuxmxinhmLPy0eMAl8u3PgWQFOLBAGQNK',NULL,0,NULL,NULL,NULL,NULL,NULL,'Jahaziel','Huerta','2021-11-09 17:45:08','2021-11-09 17:45:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JHUERTA',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,'$2y$10$8OnyNT1aE2dI58hHd4vAy.z2c.tWcyG402255Der8DArtzhgGf1Rq',NULL,0,NULL,NULL,NULL,NULL,NULL,'Monica','Segovia','2021-11-09 18:05:19','2021-11-09 18:05:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MSEGOVIA',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,'$2y$10$C9bW0HL25HabgZAEuLpbEOCEtkRUAVyNYS1S8wgXggsTvrHkvW/mm',NULL,0,NULL,NULL,NULL,NULL,NULL,'Antonio','Lam','2021-11-09 18:44:36','2021-11-09 18:44:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ALAM',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(33,NULL,'$2y$10$2vxfpxWr5ZLAz0tESaDPBOujic2mVSTA1w9IYe8PSGEcGiqnaae9a',NULL,0,NULL,NULL,NULL,NULL,NULL,'Marco','Izaguirre','2021-11-09 18:54:01','2021-11-09 18:54:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MIZAGUIRRE',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(34,NULL,'$2y$10$2gR0WLDZ9HXuCFkES0Senu8b/NByQkzf1IPkz.AoW1XInZZWdPaj2',NULL,0,NULL,NULL,NULL,NULL,NULL,'Luis','Martinez','2021-11-09 19:05:02','2021-11-09 19:05:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LMARTINEZ',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,'$2y$10$y.rPLGmbBkv7fkOTnNSBTehDz8exnGu.21oStn2H.TswNk7AM1xEe',NULL,0,NULL,NULL,NULL,NULL,NULL,'Monica','Gonzalez','2021-11-09 19:09:00','2021-11-09 19:09:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MGONZALEZ',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,'$2y$10$RjcNmdjE7iQc499T3mRdLO2TOI0oAcdfGV8.RXt8povJFZuAzpwMC',NULL,0,NULL,NULL,NULL,NULL,NULL,'Capitanes','Restaurante','2021-11-09 20:06:28','2021-11-09 20:06:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAPITANES',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,'$2y$10$JCYlCdjr/88q0x/xO830/.QBhvNbmp6RO7lxFDEx9kZWbVh4aF7BC','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','105 SV','2021-11-10 18:31:11','2021-11-10 20:22:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 105 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,'$2y$10$DLBVEM9Jb2YCFVDuLytbUus47ak6eBQO5occixbN90E8VqODg6gGe','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','109 SV','2021-11-10 18:36:06','2021-11-10 20:24:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 109 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,'$2y$10$ir7MdwYEs26mw7ivBW7XgOz03yOouklaGwqrSkLUXWGdIK2PIvPCq','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','203 SV','2021-11-10 18:46:10','2021-11-10 20:25:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 203 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,'$2y$10$1FquacvvBTxQ7/FKn01fCuk06.kOqIYvOUhUPcEtno5ptBx3GMQ/6','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','207 SV','2021-11-10 20:01:43','2021-11-10 20:25:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 207 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,'$2y$10$6GSOaMMcqx0maDXu2c3YZO7fq9RooCNYF2Gb.c1LPHkYKiZbrNvaG','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','302 SV','2021-11-10 20:04:05','2021-11-10 20:25:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 302 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,'$2y$10$X7XH.7EVD3xr.SRRZHIPneqk86OfPCrA9ojjWED1fxNgzlp.SPtqO','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','306 SV','2021-11-10 20:06:41','2021-11-10 20:26:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 306 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,'$2y$10$einr2AvZkj1TghhGs3elZ.pHjq6wWUZo9mMyJ7miz3l15ITcpq6L6','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','404 SV','2021-11-10 20:09:53','2021-11-10 20:26:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 404 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,'$2y$10$gujaWrSX1Jz2Gdmgs8aRXuOz4dINyf0VfUA663KkIk3mmoiCdZx1m','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','408 SV','2021-11-10 20:13:32','2021-11-10 20:26:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 408 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,'$2y$10$MPansOnapZHEAtqyaQXAzu2bzBWLBW/pHpHbyvtc8oVNYNu6CYyAG','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','502 SV','2021-11-10 20:16:28','2021-11-10 20:27:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 502 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,'$2y$10$i4Ej5X2EehoYGVY1c/ApU.oTxJkRFEWSuq69F/5wKeKAGIT7NjAEC','{\"superuser\":\"0\",\"admin\":\"0\",\"import\":\"0\",\"reports.view\":\"0\",\"assets.view\":\"0\",\"assets.create\":\"0\",\"assets.edit\":\"0\",\"assets.delete\":\"0\",\"assets.checkin\":\"0\",\"assets.checkout\":\"0\",\"assets.audit\":\"0\",\"assets.view.requestable\":\"0\",\"accessories.view\":\"0\",\"accessories.create\":\"0\",\"accessories.edit\":\"0\",\"accessories.delete\":\"0\",\"accessories.checkout\":\"0\",\"accessories.checkin\":\"0\",\"consumables.view\":\"0\",\"consumables.create\":\"0\",\"consumables.edit\":\"0\",\"consumables.delete\":\"0\",\"consumables.checkout\":\"0\",\"licenses.view\":\"0\",\"licenses.create\":\"0\",\"licenses.edit\":\"0\",\"licenses.delete\":\"0\",\"licenses.checkout\":\"0\",\"licenses.keys\":\"0\",\"licenses.files\":\"0\",\"components.view\":\"0\",\"components.create\":\"0\",\"components.edit\":\"0\",\"components.delete\":\"0\",\"components.checkout\":\"0\",\"components.checkin\":\"0\",\"kits.view\":\"0\",\"kits.create\":\"0\",\"kits.edit\":\"0\",\"kits.delete\":\"0\",\"kits.checkout\":\"0\",\"users.view\":\"0\",\"users.create\":\"0\",\"users.edit\":\"0\",\"users.delete\":\"0\",\"models.view\":\"0\",\"models.create\":\"0\",\"models.edit\":\"0\",\"models.delete\":\"0\",\"categories.view\":\"0\",\"categories.create\":\"0\",\"categories.edit\":\"0\",\"categories.delete\":\"0\",\"departments.view\":\"0\",\"departments.create\":\"0\",\"departments.edit\":\"0\",\"departments.delete\":\"0\",\"statuslabels.view\":\"0\",\"statuslabels.create\":\"0\",\"statuslabels.edit\":\"0\",\"statuslabels.delete\":\"0\",\"customfields.view\":\"0\",\"customfields.create\":\"0\",\"customfields.edit\":\"0\",\"customfields.delete\":\"0\",\"suppliers.view\":\"0\",\"suppliers.create\":\"0\",\"suppliers.edit\":\"0\",\"suppliers.delete\":\"0\",\"manufacturers.view\":\"0\",\"manufacturers.create\":\"0\",\"manufacturers.edit\":\"0\",\"manufacturers.delete\":\"0\",\"depreciations.view\":\"0\",\"depreciations.create\":\"0\",\"depreciations.edit\":\"0\",\"depreciations.delete\":\"0\",\"locations.view\":\"0\",\"locations.create\":\"0\",\"locations.edit\":\"0\",\"locations.delete\":\"0\",\"companies.view\":\"0\",\"companies.create\":\"0\",\"companies.edit\":\"0\",\"companies.delete\":\"0\",\"self.two_factor\":\"0\",\"self.api\":\"0\",\"self.edit_location\":\"0\",\"self.checkout_assets\":\"0\"}',0,NULL,NULL,NULL,NULL,NULL,'Hab','505 SV','2021-11-10 20:20:04','2021-11-10 20:27:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HAB 505 SV',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(47,NULL,'$2y$10$yAl3L2O5dcQ7HX/P/Qd95uuEFKF7sWqjjPhlBqzlJ3t7BooiOabTy',NULL,0,NULL,NULL,NULL,NULL,NULL,'Conmutador','Hidalgo','2021-11-11 20:11:46','2021-11-11 20:11:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'COMHIDALGO',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(48,NULL,'$2y$10$rA6IAfojPIWFn3Dj/0MldOuIaVkGOE0DPFRJcYlQIq36IEv35ZggK',NULL,0,NULL,NULL,NULL,NULL,NULL,'Evelyn','San Miguel','2021-11-11 22:44:25','2021-11-11 22:44:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ESANMIGUEL',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(49,NULL,'$2y$10$pi1MFoRoEi1yZ2Wkv61mBerSoDqtdJcODBaTzUsZn6dFx7Q2tEo56',NULL,0,NULL,NULL,NULL,NULL,NULL,'Almacen',NULL,'2021-11-11 23:41:58','2021-11-11 23:41:58',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Almacen',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(50,NULL,'$2y$10$fjlAkWWDXaatl25SnQsc1OR6gQ90L1u28/2CfUmPwydgkmora23sG',NULL,0,NULL,NULL,NULL,NULL,NULL,'Administración',NULL,'2021-11-11 23:50:50','2021-11-11 23:50:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Administración',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(51,NULL,'$2y$10$S.vTobV71Ezbb435JL/z1uHUh9m2mS82NRR28T3ZJGO3E3TJIlb36',NULL,0,NULL,NULL,NULL,NULL,NULL,'Oficina','Chef','2021-11-11 23:54:19','2021-11-11 23:54:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OficinaChef',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,'$2y$10$5uxcqexdrTs9a4slg0MwVOfXATof8HEKW4pG3kzIfZzwX3RU1Uaz2',NULL,0,NULL,NULL,NULL,NULL,NULL,'Bussines','Center','2021-11-12 00:05:09','2021-11-12 00:05:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BCENTER',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,'$2y$10$0xL6T76nWEQAY3.hybtLMuTyrhViM/eTuPJ.QgU1K7nCSR0av5qau','{\"superuser\":\"0\",\"admin\":\"1\",\"import\":\"0\",\"reports.view\":\"1\",\"assets.view\":\"1\",\"assets.create\":\"-1\",\"assets.edit\":\"-1\",\"assets.delete\":\"-1\",\"assets.checkin\":\"-1\",\"assets.checkout\":\"-1\",\"assets.audit\":\"-1\",\"assets.view.requestable\":\"-1\",\"accessories.view\":\"1\",\"accessories.create\":\"-1\",\"accessories.edit\":\"-1\",\"accessories.delete\":\"-1\",\"accessories.checkout\":\"-1\",\"accessories.checkin\":\"-1\",\"consumables.view\":\"1\",\"consumables.create\":\"-1\",\"consumables.edit\":\"-1\",\"consumables.delete\":\"-1\",\"consumables.checkout\":\"-1\",\"licenses.view\":\"1\",\"licenses.create\":\"-1\",\"licenses.edit\":\"-1\",\"licenses.delete\":\"-1\",\"licenses.checkout\":\"-1\",\"licenses.keys\":\"-1\",\"licenses.files\":\"-1\",\"components.view\":\"1\",\"components.create\":\"-1\",\"components.edit\":\"-1\",\"components.delete\":\"-1\",\"components.checkout\":\"-1\",\"components.checkin\":\"-1\",\"kits.view\":\"1\",\"kits.create\":\"-1\",\"kits.edit\":\"-1\",\"kits.delete\":\"-1\",\"kits.checkout\":\"-1\",\"users.view\":\"1\",\"users.create\":\"-1\",\"users.edit\":\"-1\",\"users.delete\":\"-1\",\"models.view\":\"1\",\"models.create\":\"-1\",\"models.edit\":\"-1\",\"models.delete\":\"-1\",\"categories.view\":\"1\",\"categories.create\":\"-1\",\"categories.edit\":\"-1\",\"categories.delete\":\"-1\",\"departments.view\":\"1\",\"departments.create\":\"-1\",\"departments.edit\":\"-1\",\"departments.delete\":\"-1\",\"statuslabels.view\":\"1\",\"statuslabels.create\":\"-1\",\"statuslabels.edit\":\"-1\",\"statuslabels.delete\":\"-1\",\"customfields.view\":\"1\",\"customfields.create\":\"-1\",\"customfields.edit\":\"-1\",\"customfields.delete\":\"-1\",\"suppliers.view\":\"1\",\"suppliers.create\":\"-1\",\"suppliers.edit\":\"-1\",\"suppliers.delete\":\"-1\",\"manufacturers.view\":\"1\",\"manufacturers.create\":\"-1\",\"manufacturers.edit\":\"-1\",\"manufacturers.delete\":\"-1\",\"depreciations.view\":\"1\",\"depreciations.create\":\"-1\",\"depreciations.edit\":\"-1\",\"depreciations.delete\":\"-1\",\"locations.view\":\"1\",\"locations.create\":\"-1\",\"locations.edit\":\"-1\",\"locations.delete\":\"-1\",\"companies.view\":\"1\",\"companies.create\":\"-1\",\"companies.edit\":\"-1\",\"companies.delete\":\"-1\",\"self.two_factor\":\"-1\",\"self.api\":\"-1\",\"self.edit_location\":\"-1\",\"self.checkout_assets\":\"-1\"}',1,NULL,NULL,'2021-11-17 22:35:49',NULL,NULL,'Activos Fijos','Hotsson','2021-11-17 22:35:23','2021-11-17 22:43:19',NULL,NULL,NULL,NULL,2,NULL,NULL,1,NULL,NULL,'Activos',NULL,NULL,NULL,0,'en',1,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL),(54,NULL,'$2y$10$1VWWuEX3UxdJUOU7Af58se/4RajI0GcHs/DN9F8usVjamIjDPWf0.',NULL,0,NULL,NULL,NULL,NULL,NULL,'Call Center','HS','2021-11-22 21:17:10','2021-11-22 21:17:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CALLHS',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(55,NULL,'$2y$10$X8yIyE4NnKHOOygDEEjO6OfoC5mqi5SrBhaIfGQxLyYRBlmgZAjaq',NULL,0,NULL,NULL,NULL,NULL,NULL,'Auxiliar','Almacen','2021-11-27 17:46:30','2021-11-27 17:46:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Auxiliar Almacen',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(56,NULL,'$2y$10$YrtQm48eRDd9i1V.ZyWKQeika2nqWdnHhI8.JzCWAesSR9XZNtbpq',NULL,0,NULL,NULL,NULL,NULL,NULL,'Asistente','Compras','2021-11-27 17:51:52','2021-11-27 17:51:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Asistente Compras',NULL,NULL,NULL,0,'en',1,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (11,1);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29 18:00:35
