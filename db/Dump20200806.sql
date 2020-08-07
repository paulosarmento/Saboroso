-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: saboroso
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_contacts`
--

DROP TABLE IF EXISTS `tb_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contacts`
--

LOCK TABLES `tb_contacts` WRITE;
/*!40000 ALTER TABLE `tb_contacts` DISABLE KEYS */;
INSERT INTO `tb_contacts` VALUES (1,'Paulo César Sarmento Júnior','paulo.cesar.sarmento@hotmail.com','oi','2019-04-01 11:10:21'),(2,'Paulo César Sarmento Júnior','paulo.cesar.sarmento@hotmail.com','eae','2019-04-02 01:00:06'),(3,'Paulo César Sarmento Júnior','paulo.cesar.sarmento@hotmail.com','oioi','2019-04-14 22:36:39'),(4,'GLAUBER','teste@hotamail.com','teste','2020-03-13 21:47:36');
/*!40000 ALTER TABLE `tb_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_emails`
--

DROP TABLE IF EXISTS `tb_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) COLLATE utf8_bin NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_emails`
--

LOCK TABLES `tb_emails` WRITE;
/*!40000 ALTER TABLE `tb_emails` DISABLE KEYS */;
INSERT INTO `tb_emails` VALUES (1,'paulo@name','2019-03-31 20:31:27'),(2,'paulo.cesar.sarmento@hotmail.com','2019-03-31 20:34:40'),(4,'paulo.cesar.sarmento@hotmail.com','2019-04-02 01:00:18'),(5,'paulo.cesar.sarmento@hotmail.com','2019-04-14 22:37:03'),(6,'p-cesar-junior2010@bol.com.br','2020-03-13 21:50:49');
/*!40000 ALTER TABLE `tb_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menus`
--

DROP TABLE IF EXISTS `tb_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menus`
--

LOCK TABLES `tb_menus` WRITE;
/*!40000 ALTER TABLE `tb_menus` DISABLE KEYS */;
INSERT INTO `tb_menus` VALUES (1,'Prato feito ','cacasd',50.00,'images/upload_5d1da32f0fefc378e000a5e334a25cc3.jpg','2019-04-01 11:11:27'),(2,'Arroz com feijão','Prato muito saboroso',10.00,'images/upload_12aa0ff638d2a11f8e2090760331d59e.jpg','2019-04-02 01:02:12'),(3,'Teste','asdasd',50.00,'images/upload_88dd6bf5cc8340e78c756f98c1bc4fa5.jpg','2019-04-02 01:03:16');
/*!40000 ALTER TABLE `tb_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reservations`
--

DROP TABLE IF EXISTS `tb_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `people` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reservations`
--

LOCK TABLES `tb_reservations` WRITE;
/*!40000 ALTER TABLE `tb_reservations` DISABLE KEYS */;
INSERT INTO `tb_reservations` VALUES (1,'Glauber','glllaauber@hotmail.com',3,'2020-03-14','20:30:00','2020-03-13 21:47:02'),(2,'Paulo César Sarmento Júnior','paulo.cesar.sarmento@hotmail.com',2,'2020-03-22','18:51:00','2020-03-13 21:51:29');
/*!40000 ALTER TABLE `tb_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (2,'Paulo','paulo.cesar.sarmento@hotmail.com','123','2019-03-31 20:17:02'),(3,'Paulo César Sarmento Júnior','joao@hcode.com.br','123','2019-04-01 11:10:49'),(4,'Alvaro','Itecnico2019@gmail.com','123','2019-04-14 22:19:21'),(5,'Alvaro','admin@admin','123','2019-04-14 22:31:37');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-06 20:54:39
