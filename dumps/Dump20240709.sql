CREATE DATABASE  IF NOT EXISTS `studentmanagementdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentmanagementdb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmanagementdb
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `branch_id` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `max_credits` int NOT NULL,
  UNIQUE KEY `branch_id_UNIQUE` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES ('AI190','AI',25),('CSE180','CSE',24),('ECE210','ECE',22),('EEE150','EEE',22),('ME001','ME',20);
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `student_id` int NOT NULL,
  `branch_id` varchar(45) NOT NULL,
  `credit_score` int NOT NULL,
  `Final_grade` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,'AI190',17,'B'),(2,'AI190',20,'A'),(3,'AI190',12,'C'),(4,'AI190',19,'B'),(5,'AI190',10,'C'),(6,'CSE180',14,'B'),(7,'EEE150',13,'C'),(8,'ECE210',19,'B'),(9,'CSE180',21,'A'),(10,'AI190',25,'A'),(11,'ECE210',9,'D'),(12,'CSE180',15,'B'),(13,'AI190',19,'B'),(14,'CSE180',15,'B'),(15,'ECE210',18,'B'),(16,'AI190',18,'B'),(17,'CSE180',14,'B'),(18,'ECE210',13,'C'),(19,'CSE180',20,'A'),(20,'AI190',9,'D'),(21,'ECE210',11,'D'),(22,'CSE180',17,'B'),(23,'AI190',19,'B'),(24,'CSE180',24,'A'),(25,'ECE210',22,'A'),(26,'CSE180',21,'A'),(27,'AI190',17,'B'),(28,'ECE210',18,'B'),(29,'CSE180',7,'D'),(30,'AI190',2,'F'),(31,'ECE210',13,'C'),(32,'CSE180',22,'A'),(33,'AI190',12,'C'),(34,'ECE210',11,'D'),(35,'CSE180',13,'C'),(36,'AI190',2,'F'),(37,'CSE180',23,'A'),(38,'ECE210',18,'B'),(39,'CSE180',0,'F'),(40,'AI190',1,'F'),(41,'ECE210',15,'C'),(42,'CSE180',22,'A'),(43,'AI190',23,'A'),(44,'CSE180',14,'B'),(45,'ECE210',22,'A'),(46,'CSE180',21,'A'),(47,'AI190',24,'A'),(48,'ECE210',18,'B'),(49,'CSE180',13,'C'),(50,'AI190',15,'B'),(51,'AI190',5,'D'),(52,'ECE210',3,'F'),(53,'CSE180',2,'F'),(54,'AI190',5,'D'),(55,'ECE210',0,'F'),(56,'CSE180',23,'A'),(57,'AI190',13,'C'),(58,'ECE210',6,'F'),(59,'CSE180',6,'D'),(60,'AI190',21,'A'),(61,'ECE210',21,'B'),(62,'CSE180',12,'C'),(63,'AI190',16,'B'),(64,'ECE210',19,'B'),(65,'CSE180',18,'B'),(66,'AI190',18,'B'),(67,'ECE210',17,'C'),(68,'CSE180',1,'F'),(69,'AI190',16,'B'),(70,'ECE210',11,'D'),(71,'CSE180',4,'F'),(72,'AI190',15,'B'),(73,'ECE210',18,'B'),(74,'CSE180',17,'B'),(75,'AI190',9,'D'),(76,'ECE210',16,'C'),(77,'CSE180',23,'A'),(78,'AI190',13,'C'),(79,'ECE210',10,'D'),(80,'CSE180',12,'C'),(81,'AI190',8,'D'),(82,'ECE210',5,'F'),(83,'CSE180',16,'B'),(84,'AI190',24,'A'),(85,'ECE210',20,'B'),(86,'CSE180',20,'A'),(87,'AI190',20,'A'),(88,'ECE210',17,'C'),(89,'CSE180',19,'A'),(90,'AI190',13,'C'),(91,'ECE210',12,'D'),(92,'CSE180',21,'A'),(93,'AI190',10,'C'),(94,'CSE180',24,'A'),(95,'ECE210',21,'B'),(96,'AI190',11,'C'),(97,'CSE180',12,'C'),(98,'ECE210',4,'F'),(99,'AI190',8,'D'),(100,'CSE180',13,'C'),(101,'ME001',16,'B'),(102,'ME001',14,'C'),(103,'ME001',18,'B'),(104,'ME001',5,'F'),(105,'ME001',20,'A'),(106,'ME001',15,'B'),(107,'ME001',17,'B'),(108,'ME001',18,'B'),(109,'ME001',10,'C'),(110,'ME001',20,'A'),(111,'ECE210',15,'C'),(112,'CSE180',23,'A'),(113,'AI190',14,'C'),(114,'ECE210',18,'B'),(115,'CSE180',19,'A'),(116,'AI190',12,'C'),(117,'ECE210',22,'A'),(118,'CSE180',16,'B'),(119,'AI190',24,'A'),(120,'ECE210',20,'B'),(121,'CSE180',24,'A'),(122,'AI190',9,'D'),(123,'ECE210',12,'D'),(124,'CSE180',22,'A'),(125,'AI190',16,'B'),(126,'ECE210',13,'C'),(127,'CSE180',16,'B'),(128,'AI190',12,'C'),(129,'ECE210',19,'B'),(130,'CSE180',12,'C'),(131,'AI190',18,'B'),(132,'ECE210',21,'B'),(133,'CSE180',11,'C'),(134,'AI190',4,'F'),(135,'ECE210',21,'B'),(136,'CSE180',12,'C'),(137,'AI190',19,'B'),(138,'ECE210',8,'D'),(139,'CSE180',22,'A'),(140,'AI190',6,'D'),(141,'ECE210',4,'F'),(142,'CSE180',20,'A'),(143,'AI190',24,'A'),(144,'CSE180',10,'C'),(145,'ECE210',20,'B'),(146,'AI190',25,'A'),(147,'CSE180',16,'B'),(148,'ECE210',22,'A'),(149,'AI190',18,'B'),(150,'CSE180',17,'B'),(151,'ME001',18,'B'),(152,'ME001',14,'C'),(153,'ME001',17,'B'),(154,'ME001',17,'B'),(155,'ME001',8,'D'),(156,'ME001',17,'B'),(157,'ME001',10,'C'),(158,'ME001',20,'A'),(159,'ME001',16,'B'),(160,'ME001',7,'D'),(161,'ME001',17,'B'),(162,'ME001',15,'B'),(163,'ME001',12,'C'),(164,'ME001',20,'A'),(165,'ME001',5,'F'),(166,'ME001',17,'B'),(167,'ME001',20,'A'),(168,'ME001',0,'F'),(169,'ME001',17,'B'),(170,'ME001',5,'F'),(171,'AI190',18,'B'),(172,'ECE210',11,'D'),(173,'CSE180',4,'F'),(174,'EEE150',14,'C'),(175,'ME001',2,'F'),(176,'AI190',14,'C'),(177,'ECE210',22,'A'),(178,'CSE180',22,'A'),(179,'EEE150',18,'B'),(180,'ME001',19,'B'),(181,'AI190',18,'B'),(182,'ECE210',11,'D'),(183,'CSE180',20,'A'),(184,'EEE150',22,'A'),(185,'ME001',12,'C'),(186,'AI190',24,'A'),(187,'ECE210',14,'C'),(188,'CSE180',8,'D'),(189,'EEE150',11,'D'),(190,'ME001',20,'A'),(191,'AI190',12,'C'),(192,'ECE210',9,'D'),(193,'CSE180',5,'F'),(194,'EEE150',14,'C'),(195,'ME001',19,'B'),(196,'AI190',16,'B'),(197,'ECE210',13,'C'),(198,'CSE180',1,'F'),(199,'EEE150',9,'D'),(200,'ME001',9,'D'),(201,'AI190',19,'B'),(202,'ECE210',16,'C'),(203,'CSE180',15,'B'),(204,'EEE150',5,'F'),(205,'ME001',15,'B'),(206,'AI190',21,'A'),(207,'ECE210',19,'B'),(208,'CSE180',24,'A'),(209,'EEE150',22,'A'),(210,'ME001',20,'A'),(211,'AI190',25,'A'),(212,'ECE210',17,'C'),(213,'CSE180',23,'A'),(214,'EEE150',17,'C'),(215,'ME001',16,'B'),(216,'AI190',10,'C'),(217,'ECE210',14,'C'),(218,'CSE180',18,'B'),(219,'EEE150',20,'B'),(220,'ME001',14,'C'),(221,'AI190',12,'C'),(222,'ECE210',15,'C'),(223,'CSE180',20,'A'),(224,'EEE150',20,'B'),(225,'ME001',13,'C'),(226,'AI190',17,'B'),(227,'ECE210',21,'B'),(228,'CSE180',22,'A'),(229,'EEE150',22,'A'),(230,'ME001',14,'C'),(231,'AI190',21,'A'),(232,'ECE210',0,'F'),(233,'CSE180',22,'A'),(234,'EEE150',13,'C'),(235,'ME001',7,'D'),(236,'AI190',17,'B'),(237,'ECE210',16,'C'),(238,'CSE180',19,'A'),(239,'EEE150',21,'B'),(240,'ME001',14,'C'),(241,'AI190',7,'D'),(242,'ECE210',2,'F'),(243,'CSE180',5,'F'),(244,'EEE150',16,'C'),(245,'ME001',18,'B'),(246,'AI190',0,'F'),(247,'ECE210',18,'B'),(248,'CSE180',20,'A'),(249,'EEE150',0,'F'),(250,'ME001',14,'C');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `branch` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'alice','2002-01-09','AI'),(2,'bob','2002-05-06','AI'),(3,'casy','2003-09-04','AI'),(4,'drew','2002-11-18','AI'),(5,'joe','2002-09-17','AI'),(6,'mannie','2003-06-06','CSE'),(7,'gia','2003-08-13','EEE'),(8,'jiya','2002-04-23','ECE'),(9,'jane','2002-05-05','CSE'),(10,'John','2001-09-15','AI'),(11,'Emily','2003-03-20','ECE'),(12,'Michael','2001-11-10','CSE'),(13,'Sophia','2002-04-10','AI'),(14,'William','2001-11-25','CSE'),(15,'Isabella','2003-02-15','ECE'),(16,'James','2002-09-30','AI'),(17,'Olivia','2001-07-12','CSE'),(18,'Alexander','2003-05-18','ECE'),(19,'Benjamin','2001-12-03','CSE'),(20,'Emma','2002-03-22','AI'),(21,'Mason','2003-08-05','ECE'),(22,'Ava','2001-10-08','CSE'),(23,'Elijah','2002-06-14','AI'),(24,'Charlotte','2001-04-30','CSE'),(25,'Logan','2003-01-17','ECE'),(26,'Amelia','2001-09-05','CSE'),(27,'Lucas','2002-11-20','AI'),(28,'Harper','2003-07-01','ECE'),(29,'Mia','2001-02-28','CSE'),(30,'Jackson','2002-08-12','AI'),(31,'Evelyn','2003-04-09','ECE'),(32,'Jacob','2001-06-23','CSE'),(33,'Abigail','2002-12-07','AI'),(34,'William','2003-10-30','ECE'),(35,'Noah','2001-08-14','CSE'),(36,'Emily','2002-05-01','AI'),(37,'Madison','2001-03-11','CSE'),(38,'Michael','2003-09-24','ECE'),(39,'Alexander','2001-01-19','CSE'),(40,'Sofia','2002-07-27','AI'),(41,'Ethan','2003-06-16','ECE'),(42,'Grace','2001-07-08','CSE'),(43,'Daniel','2002-04-05','AI'),(44,'Avery','2001-11-02','CSE'),(45,'Liam','2003-03-12','ECE'),(46,'Hannah','2001-09-28','CSE'),(47,'Owen','2002-10-15','AI'),(48,'Ella','2003-08-03','ECE'),(49,'Logan','2001-12-09','CSE'),(50,'Aria','2002-06-19','AI'),(51,'Gabriel','2002-09-05','AI'),(52,'Scarlett','2003-04-12','ECE'),(53,'Wyatt','2001-10-25','CSE'),(54,'Chloe','2002-06-14','AI'),(55,'Henry','2003-01-30','ECE'),(56,'Lily','2001-08-08','CSE'),(57,'Carter','2002-12-17','AI'),(58,'Zoey','2003-07-21','ECE'),(59,'Sebastian','2001-02-13','CSE'),(60,'Lillian','2002-05-09','AI'),(61,'Luke','2003-10-01','ECE'),(62,'Grayson','2001-11-27','CSE'),(63,'Addison','2002-07-04','AI'),(64,'Jack','2003-03-18','ECE'),(65,'Julian','2001-09-12','CSE'),(66,'Leah','2002-04-23','AI'),(67,'Ryan','2003-08-15','ECE'),(68,'Nathan','2001-12-31','CSE'),(69,'Isaac','2002-08-07','AI'),(70,'Aubrey','2003-05-24','ECE'),(71,'Eli','2001-01-05','CSE'),(72,'Mila','2002-10-11','AI'),(73,'Austin','2003-06-27','ECE'),(74,'Brandon','2001-03-09','CSE'),(75,'Hudson','2002-11-14','AI'),(76,'Peyton','2003-09-02','ECE'),(77,'Connor','2001-07-22','CSE'),(78,'Elena','2002-02-19','AI'),(79,'Dominic','2003-12-08','ECE'),(80,'Sarah','2001-06-04','CSE'),(81,'Thomas','2002-01-15','AI'),(82,'Maria','2003-11-03','ECE'),(83,'Jeremiah','2001-04-28','CSE'),(84,'Violet','2002-09-09','AI'),(85,'Carson','2003-04-07','ECE'),(86,'Jaxon','2001-10-22','CSE'),(87,'Gabriella','2002-05-14','AI'),(88,'Mateo','2003-02-04','ECE'),(89,'Angel','2001-08-19','CSE'),(90,'Katherine','2002-12-13','AI'),(91,'Jordan','2003-07-10','ECE'),(92,'Theodore','2001-02-27','CSE'),(93,'Samantha','2002-06-11','AI'),(94,'Greyson','2001-11-08','CSE'),(95,'Alexa','2003-03-26','ECE'),(96,'Leo','2002-08-01','AI'),(97,'Brooklyn','2001-09-16','CSE'),(98,'Ezra','2003-05-02','ECE'),(99,'Lincoln','2002-04-10','AI'),(100,'Naomi','2001-12-07','CSE'),(101,'Oliver','2002-07-15','ME'),(102,'Emma','2001-03-20','ME'),(103,'Mason','2003-09-05','ME'),(104,'Sophia','2002-01-12','ME'),(105,'Lucas','2001-11-08','ME'),(106,'Ava','2003-06-25','ME'),(107,'Liam','2002-08-17','ME'),(108,'Isabella','2001-04-30','ME'),(109,'Noah','2003-10-15','ME'),(110,'Evelyn','2001-12-18','ME'),(111,'Luke','2003-10-01','ECE'),(112,'Grayson','2001-11-27','CSE'),(113,'Addison','2002-07-04','AI'),(114,'Jack','2003-03-18','ECE'),(115,'Julian','2001-09-12','CSE'),(116,'Leah','2002-04-23','AI'),(117,'Ryan','2003-08-15','ECE'),(118,'Nathan','2001-12-31','CSE'),(119,'Isaac','2002-08-07','AI'),(120,'Aubrey','2003-05-24','ECE'),(121,'Eli','2001-01-05','CSE'),(122,'Mila','2002-10-11','AI'),(123,'Austin','2003-06-27','ECE'),(124,'Brandon','2001-03-09','CSE'),(125,'Hudson','2002-11-14','AI'),(126,'Peyton','2003-09-02','ECE'),(127,'Connor','2001-07-22','CSE'),(128,'Elena','2002-02-19','AI'),(129,'Dominic','2003-12-08','ECE'),(130,'Sarah','2001-06-04','CSE'),(131,'Thomas','2002-01-15','AI'),(132,'Maria','2003-11-03','ECE'),(133,'Jeremiah','2001-04-28','CSE'),(134,'Violet','2002-09-09','AI'),(135,'Carson','2003-04-07','ECE'),(136,'Jaxon','2001-10-22','CSE'),(137,'Gabriella','2002-05-14','AI'),(138,'Mateo','2003-02-04','ECE'),(139,'Angel','2001-08-19','CSE'),(140,'Katherine','2002-12-13','AI'),(141,'Jordan','2003-07-10','ECE'),(142,'Theodore','2001-02-27','CSE'),(143,'Samantha','2002-06-11','AI'),(144,'Greyson','2001-11-08','CSE'),(145,'Alexa','2003-03-26','ECE'),(146,'Leo','2002-08-01','AI'),(147,'Brooklyn','2001-09-16','CSE'),(148,'Ezra','2003-05-02','ECE'),(149,'Lincoln','2002-04-10','AI'),(150,'Naomi','2001-12-07','CSE'),(151,'Oliver','2002-07-15','ME'),(152,'Emma','2001-03-20','ME'),(153,'Mason','2003-09-05','ME'),(154,'Sophia','2002-01-12','ME'),(155,'Lucas','2001-11-08','ME'),(156,'Ava','2003-06-25','ME'),(157,'Liam','2002-08-17','ME'),(158,'Isabella','2001-04-30','ME'),(159,'Noah','2003-10-15','ME'),(160,'Evelyn','2001-12-18','ME'),(161,'Gabriel','2002-09-05','ME'),(162,'Scarlett','2003-04-12','ME'),(163,'Wyatt','2001-10-25','ME'),(164,'Chloe','2002-06-14','ME'),(165,'Henry','2003-01-30','ME'),(166,'Lily','2001-08-08','ME'),(167,'Carter','2002-12-17','ME'),(168,'Zoey','2003-07-21','ME'),(169,'Sebastian','2001-02-13','ME'),(170,'Lillian','2002-05-09','ME'),(171,'Arjun','2001-06-11','AI'),(172,'Priya','2002-03-22','ECE'),(173,'Vikram','2003-08-17','CSE'),(174,'Aishwarya','2001-12-30','EEE'),(175,'Rahul','2002-10-14','ME'),(176,'Kriti','2003-05-27','AI'),(177,'Aditya','2001-02-09','ECE'),(178,'Ananya','2002-11-19','CSE'),(179,'Ravi','2003-07-04','EEE'),(180,'Ishaan','2001-09-21','ME'),(181,'Anjali','2002-04-02','AI'),(182,'Amit','2003-01-15','ECE'),(183,'Neha','2001-10-22','CSE'),(184,'Rohan','2002-05-15','EEE'),(185,'Sneha','2003-04-08','ME'),(186,'Aryan','2001-11-21','AI'),(187,'Swati','2002-08-08','ECE'),(188,'Prateek','2003-06-12','CSE'),(189,'Pooja','2001-12-26','EEE'),(190,'Deepak','2002-09-09','ME'),(191,'Tanvi','2003-05-15','AI'),(192,'Alok','2001-08-29','ECE'),(193,'Anushka','2002-02-12','CSE'),(194,'Rajesh','2003-11-26','EEE'),(195,'Sanjay','2001-07-10','ME'),(196,'Kavya','2002-10-24','AI'),(197,'Vinay','2003-08-20','ECE'),(198,'Madhuri','2001-04-15','CSE'),(199,'Akash','2002-11-05','EEE'),(200,'Nisha','2003-04-19','ME'),(201,'Gaurav','2001-12-02','AI'),(202,'Manisha','2002-07-03','ECE'),(203,'Rahul','2003-04-09','CSE'),(204,'Shreya','2001-10-22','EEE'),(205,'Kunal','2002-06-04','ME'),(206,'Meera','2003-01-16','AI'),(207,'Arun','2002-12-14','ECE'),(208,'Jyoti','2001-09-30','CSE'),(209,'Vivek','2003-08-20','EEE'),(210,'Ishita','2001-04-15','ME'),(211,'Ravi','2002-11-05','AI'),(212,'Sunita','2003-04-19','ECE'),(213,'Ankit','2001-12-02','CSE'),(214,'Ritu','2002-07-03','EEE'),(215,'Rajat','2003-04-09','ME'),(216,'Sapna','2001-10-22','AI'),(217,'Alok','2002-06-04','ECE'),(218,'Anjali','2003-01-16','CSE'),(219,'Arjun','2002-12-14','EEE'),(220,'Sneha','2001-09-30','ME'),(221,'Manoj','2001-04-15','AI'),(222,'Sakshi','2002-11-05','ECE'),(223,'Rahul','2003-04-19','CSE'),(224,'Nidhi','2001-12-02','EEE'),(225,'Vijay','2002-07-03','ME'),(226,'Amit','2003-04-09','AI'),(227,'Priya','2001-10-22','ECE'),(228,'Rohit','2002-06-04','CSE'),(229,'Anushka','2003-01-16','EEE'),(230,'Kunal','2001-09-30','ME'),(231,'Neha','2001-04-15','AI'),(232,'Ravi','2002-11-05','ECE'),(233,'Sakshi','2003-04-19','CSE'),(234,'Alok','2001-12-02','EEE'),(235,'Manisha','2002-07-03','ME'),(236,'Arjun','2003-04-09','AI'),(237,'Sneha','2001-10-22','ECE'),(238,'Anjali','2002-06-04','CSE'),(239,'Amit','2003-01-16','EEE'),(240,'Priya','2001-09-30','ME'),(241,'Rohit','2001-04-15','AI'),(242,'Anushka','2002-11-05','ECE'),(243,'Kunal','2003-04-19','CSE'),(244,'Neha','2001-12-02','EEE'),(245,'Ravi','2002-07-03','ME'),(246,'Sakshi','2003-04-09','AI'),(247,'Alok','2001-10-22','ECE'),(248,'Manisha','2002-06-04','CSE'),(249,'Arjun','2003-01-16','EEE'),(250,'Sneha','2001-09-30','ME');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentgrades`
--

DROP TABLE IF EXISTS `studentgrades`;
/*!50001 DROP VIEW IF EXISTS `studentgrades`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentgrades` AS SELECT 
 1 AS `student_id`,
 1 AS `name`,
 1 AS `branch`,
 1 AS `credit_score`,
 1 AS `Final_grade`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `studentgrades`
--

/*!50001 DROP VIEW IF EXISTS `studentgrades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentgrades` AS select `s`.`student_id` AS `student_id`,`s`.`name` AS `name`,`b`.`branch` AS `branch`,`g`.`credit_score` AS `credit_score`,`g`.`Final_grade` AS `Final_grade` from ((`student` `s` join `grades` `g` on((`s`.`student_id` = `g`.`student_id`))) join `branches` `b` on((`g`.`branch_id` = `b`.`branch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 21:54:20
