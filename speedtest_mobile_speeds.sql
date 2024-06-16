-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: speedtest
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
-- Table structure for table `mobile_speeds`
--

DROP TABLE IF EXISTS `mobile_speeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_speeds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL,
  `download_speed` decimal(10,2) NOT NULL,
  `ranking` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_speeds`
--

LOCK TABLES `mobile_speeds` WRITE;
/*!40000 ALTER TABLE `mobile_speeds` DISABLE KEYS */;
INSERT INTO `mobile_speeds` VALUES (1,'Qatar',314.78,1),(2,'United Arab Emirates',278.88,2),(3,'Kuwait',228.96,3),(4,'Iceland',169.80,4),(5,'Denmark',151.29,5),(6,'Norway',151.04,6),(7,'South Korea',150.25,7),(8,'Macau (SAR)',142.15,8),(9,'China',133.75,9),(10,'Netherlands',130.61,10),(11,'United States',125.14,11),(12,'Bahrain',117.74,12),(13,'Saudi Arabia',117.12,13),(14,'Finland',111.87,14),(15,'India',104.15,15),(16,'Lithuania',104.06,16),(17,'Brunei',102.41,17),(18,'Sweden',101.48,18),(19,'Singapore',101.43,19),(20,'Bulgaria',100.95,20),(21,'Estonia',100.74,21),(22,'Croatia',100.39,22),(23,'Luxembourg',98.69,23),(24,'Canada',97.82,24),(25,'France',96.62,25),(26,'Switzerland',95.48,26),(27,'Portugal',93.15,27),(28,'Malaysia',91.69,28),(29,'Australia',91.29,29),(30,'Latvia',90.06,30),(31,'North Macedonia',89.73,31),(32,'Maldives',88.35,32),(33,'Austria',86.70,33),(34,'Greece',86.44,34),(35,'Czechia',82.40,35),(36,'Taiwan',80.81,36),(37,'Belgium',78.82,37),(38,'Oman',76.92,38),(39,'Malta',76.86,39),(40,'Slovenia',74.73,40),(41,'Mauritius',70.55,41),(42,'New Zealand',69.49,42),(43,'Cyprus',65.58,43),(44,'Uruguay',63.67,44),(45,'Poland',61.29,45),(46,'Romania',60.88,46),(47,'Hong Kong (SAR)',60.46,47),(48,'Brazil',59.53,48),(49,'Montenegro',58.58,49),(50,'Germany',58.50,50),(51,'United Kingdom',55.01,51),(52,'Slovakia',54.75,52),(53,'Hungary',52.49,53),(54,'Serbia',51.44,54),(55,'Italy',51.42,55),(56,'Suriname',51.28,56),(57,'Albania',50.88,57),(58,'Vietnam',50.88,58),(59,'South Africa',50.70,59),(60,'Spain',49.97,60),(61,'Azerbaijan',49.62,61),(62,'Japan',46.46,62),(63,'Botswana',45.94,63),(64,'Thailand',45.05,64),(65,'Zimbabwe',44.68,65),(66,'Kazakhstan',43.62,66),(67,'Israel',43.33,67),(68,'Morocco',42.58,68),(69,'Georgia',41.65,69),(70,'Kosovo',41.34,70),(71,'Turkey',40.42,71),(72,'Ireland',40.36,72),(73,'Chile',37.98,73),(74,'Senegal',37.98,73),(75,'Moldova',35.98,75),(76,'Iran',35.66,76),(77,'Lebanon',33.77,77),(78,'Guatemala',32.92,78),(79,'Philippines',32.37,79),(80,'Costa Rica',31.30,80),(81,'Iraq',31.27,81),(82,'Jamaica',31.12,82),(83,'Ethiopia',31.09,83),(84,'Honduras',30.64,84),(85,'Uganda',30.14,85),(86,'Guyana',30.09,86),(87,'Trinidad and Tobago',29.97,87),(88,'Uzbekistan',29.93,88),(89,'Armenia',29.57,89),(90,'Kyrgyzstan',29.38,90),(91,'Argentina',28.76,91),(92,'Laos',28.24,92),(93,'El Salvador',28.16,93),(94,'Mexico',28.14,94),(95,'Fiji',27.83,95),(96,'Dominican Republic',27.05,96),(97,'Côte d\'Ivoire',26.72,97),(98,'Indonesia',26.66,98),(99,'Tunisia',26.56,99),(100,'Ukraine',26.13,100),(101,'Jordan',26.05,101),(102,'Myanmar (Burma)',26.01,102),(103,'Cambodia',25.69,103),(104,'Egypt',25.66,104),(105,'Russia',25.04,105),(106,'Tanzania',24.83,106),(107,'Algeria',24.64,107),(108,'Kenya',24.60,108),(109,'Namibia',23.88,109),(110,'Bangladesh',23.83,110),(111,'Nigeria',23.64,111),(112,'Bosnia and Herzegovina',23.27,112),(113,'Somalia',22.51,113),(114,'Rwanda',20.87,114),(115,'Ecuador',20.80,115),(116,'Peru',19.30,116),(117,'Zambia',18.97,117),(118,'Colombia',18.89,118),(119,'DR Congo',18.89,119),(120,'Panama',18.85,120),(121,'Pakistan',18.56,121),(122,'Sri Lanka',18.53,122),(123,'Paraguay',18.31,123),(124,'Papua New Guinea',17.64,124),(125,'Mozambique',17.44,125),(126,'Ghana',16.11,126),(127,'Nicaragua',15.66,127),(128,'Angola',15.23,128),(129,'Libya',15.13,129),(130,'Mongolia',14.23,130),(131,'Nepal',14.08,131),(132,'Syria',13.87,132),(133,'Cameroon',13.72,133),(134,'Belize',11.96,134),(135,'Sudan',11.79,135),(136,'Venezuela',11.66,136),(137,'Belarus',11.50,137),(138,'Bolivia',10.24,138),(139,'Haiti',10.09,139),(140,'Tajikistan',6.90,140),(141,'Afghanistan',6.14,141),(142,'Yemen',5.44,142),(143,'East Timor',5.35,143),(144,'Cuba',4.15,144),(145,'Qatar',314.78,1),(146,'United Arab Emirates',278.88,2),(147,'Kuwait',228.96,3),(148,'Iceland',169.80,4),(149,'Denmark',151.29,5),(150,'Norway',151.04,6),(151,'South Korea',150.25,7),(152,'Macau (SAR)',142.15,8),(153,'China',133.75,9),(154,'Netherlands',130.61,10),(155,'United States',125.14,11),(156,'Bahrain',117.74,12),(157,'Saudi Arabia',117.12,13),(158,'Finland',111.87,14),(159,'India',104.15,15),(160,'Lithuania',104.06,16),(161,'Brunei',102.41,17),(162,'Sweden',101.48,18),(163,'Singapore',101.43,19),(164,'Bulgaria',100.95,20),(165,'Estonia',100.74,21),(166,'Croatia',100.39,22),(167,'Luxembourg',98.69,23),(168,'Canada',97.82,24),(169,'France',96.62,25),(170,'Switzerland',95.48,26),(171,'Portugal',93.15,27),(172,'Malaysia',91.69,28),(173,'Australia',91.29,29),(174,'Latvia',90.06,30),(175,'North Macedonia',89.73,31),(176,'Maldives',88.35,32),(177,'Austria',86.70,33),(178,'Greece',86.44,34),(179,'Czechia',82.40,35),(180,'Taiwan',80.81,36),(181,'Belgium',78.82,37),(182,'Oman',76.92,38),(183,'Malta',76.86,39),(184,'Slovenia',74.73,40),(185,'Mauritius',70.55,41),(186,'New Zealand',69.49,42),(187,'Cyprus',65.58,43),(188,'Uruguay',63.67,44),(189,'Poland',61.29,45),(190,'Romania',60.88,46),(191,'Hong Kong (SAR)',60.46,47),(192,'Brazil',59.53,48),(193,'Montenegro',58.58,49),(194,'Germany',58.50,50),(195,'United Kingdom',55.01,51),(196,'Slovakia',54.75,52),(197,'Hungary',52.49,53),(198,'Serbia',51.44,54),(199,'Italy',51.42,55),(200,'Suriname',51.28,56),(201,'Albania',50.88,57),(202,'Vietnam',50.88,58),(203,'South Africa',50.70,59),(204,'Spain',49.97,60),(205,'Azerbaijan',49.62,61),(206,'Japan',46.46,62),(207,'Botswana',45.94,63),(208,'Thailand',45.05,64),(209,'Zimbabwe',44.68,65),(210,'Kazakhstan',43.62,66),(211,'Israel',43.33,67),(212,'Morocco',42.58,68),(213,'Georgia',41.65,69),(214,'Kosovo',41.34,70),(215,'Turkey',40.42,71),(216,'Ireland',40.36,72),(217,'Chile',37.98,73),(218,'Senegal',37.98,73),(219,'Moldova',35.98,75),(220,'Iran',35.66,76),(221,'Lebanon',33.77,77),(222,'Guatemala',32.92,78),(223,'Philippines',32.37,79),(224,'Costa Rica',31.30,80),(225,'Iraq',31.27,81),(226,'Jamaica',31.12,82),(227,'Ethiopia',31.09,83),(228,'Honduras',30.64,84),(229,'Uganda',30.14,85),(230,'Guyana',30.09,86),(231,'Trinidad and Tobago',29.97,87),(232,'Uzbekistan',29.93,88),(233,'Armenia',29.57,89),(234,'Kyrgyzstan',29.38,90),(235,'Argentina',28.76,91),(236,'Laos',28.24,92),(237,'El Salvador',28.16,93),(238,'Mexico',28.14,94),(239,'Fiji',27.83,95),(240,'Dominican Republic',27.05,96),(241,'Côte d\'Ivoire',26.72,97),(242,'Indonesia',26.66,98),(243,'Tunisia',26.56,99),(244,'Ukraine',26.13,100),(245,'Jordan',26.05,101),(246,'Myanmar (Burma)',26.01,102),(247,'Cambodia',25.69,103),(248,'Egypt',25.66,104),(249,'Russia',25.04,105),(250,'Tanzania',24.83,106),(251,'Algeria',24.64,107),(252,'Kenya',24.60,108),(253,'Namibia',23.88,109),(254,'Bangladesh',23.83,110),(255,'Nigeria',23.64,111),(256,'Bosnia and Herzegovina',23.27,112),(257,'Somalia',22.51,113),(258,'Rwanda',20.87,114),(259,'Ecuador',20.80,115),(260,'Peru',19.30,116),(261,'Zambia',18.97,117),(262,'Colombia',18.89,118),(263,'DR Congo',18.89,119),(264,'Panama',18.85,120),(265,'Pakistan',18.56,121),(266,'Sri Lanka',18.53,122),(267,'Paraguay',18.31,123),(268,'Papua New Guinea',17.64,124),(269,'Mozambique',17.44,125),(270,'Ghana',16.11,126),(271,'Nicaragua',15.66,127),(272,'Angola',15.23,128),(273,'Libya',15.13,129),(274,'Mongolia',14.23,130),(275,'Nepal',14.08,131),(276,'Syria',13.87,132),(277,'Cameroon',13.72,133),(278,'Belize',11.96,134),(279,'Sudan',11.79,135),(280,'Venezuela',11.66,136),(281,'Belarus',11.50,137),(282,'Bolivia',10.24,138),(283,'Haiti',10.09,139),(284,'Tajikistan',6.90,140),(285,'Afghanistan',6.14,141),(286,'Yemen',5.44,142),(287,'East Timor',5.35,143),(288,'Cuba',4.15,144);
/*!40000 ALTER TABLE `mobile_speeds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 14:25:48
