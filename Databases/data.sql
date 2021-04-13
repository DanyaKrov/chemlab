-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `Theory`
--

DROP TABLE IF EXISTS `Theory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Theory` (
  `Номер` smallint(6) DEFAULT NULL,
  `title` varchar(9) DEFAULT NULL,
  `descrp` varchar(30) DEFAULT NULL,
  `number` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Theory`
--

LOCK TABLES `Theory` WRITE;
/*!40000 ALTER TABLE `Theory` DISABLE KEYS */;
INSERT INTO `Theory` VALUES (1,'K','Активный металл','39'),(2,'Li','Активный металл','7'),(3,'Ba','Активный металл','137'),(4,'Al','Активный металл','27'),(5,'Ca','Активный металл','40'),(6,'Na','Активный металлАктивный металл','23'),(7,'Mg','Активный металл','24'),(8,'Mn','Среднеактивный металл','55'),(9,'Zn','Среднеактивный металл','65'),(10,'Cr','Среднеактивный металл','52'),(11,'Fe','Среднеактивный металл','59'),(12,'Pb','Среднеактивный металл',''),(13,'Hg','Пассивный металл',''),(14,'Pt','Пассивный металл',''),(15,'Au','Пассивный металл',''),(16,'Cu','Пассивный металл',''),(17,'F2','Галоген',''),(18,'Cl2','Галоген',''),(19,'Br2','Галоген',''),(20,'I2','Галоген',''),(21,'At','Галоген',''),(22,'ZnO','Амфотерный оксид',''),(23,'Al2O3','Амфотерный оксид',''),(24,'Fe2O3','Амфотерный оксид',''),(25,'Cr2O3','Амфотерный оксид',''),(26,'CuO','Амфотерный оксид',''),(27,'BeO','Амфотерный оксид',''),(28,'PbO2','Амфотерный оксид',''),(29,'NO','Несолеобразующий оксид',''),(30,'N2O','Несолеобразующий оксид',''),(31,'CO','Несолеобразующий оксид',''),(32,'SiO','Несолеобразующий оксид',''),(33,'S2O','Несолеобразующий оксид',''),(34,'SO2','Кислотный оксид',''),(35,'SO3','Кислотный оксид',''),(36,'CO2','Кислотный оксид',''),(37,'P2O5','Кислотный оксид',''),(38,'SiO2','Кислотный оксид',''),(39,'N2O3','Кислотный оксид',''),(40,'N2O5','Кислотный оксид',''),(41,'CrO3','Кислотный оксид',''),(42,'Mn2O7','Кислотный оксид',''),(43,'P2O3','Кислотный оксид',''),(44,'MnO3','Кислотный оксид',''),(45,'O2','Кислород','32'),(46,'S','Сера','32'),(47,'N2','Азот','28'),(48,'Si','Кремний','28'),(49,'P','Фосфор','31'),(50,'C','Углерод','12'),(51,'Li2O','Основный оксид',''),(52,'Na2O','Основный оксид',''),(53,'K2O','Основный оксид',''),(54,'CaO','Основный оксид',''),(55,'MgO','Основный оксид',''),(56,'NH4OH','Щелочь',''),(57,'KOH','Щелочь',''),(58,'NaOH','Щелочь',''),(59,'Ba(OH)2','Щелочь',''),(60,'Ca(OH)2','Основание',''),(61,'Mg(OH)2','Основание',''),(62,'Zn(OH)2','Основание',''),(63,'Mn(OH)2','Основание',''),(64,'Cu(OH)2','Основание',''),(65,'CuOH','Основание',''),(66,'Pb(OH)2','Основание',''),(67,'Fe(OH)2','Основание',''),(68,'Fe(OH)3','Основание',''),(69,'Al(OH)3','Основание',''),(70,'Cr(OH)3','Основание',''),(71,'AgCl','Осадок',''),(72,'AgBr','Осадок',''),(73,'AgI','Осадок',''),(74,'Ag3PO4','Осадок',''),(75,'Li3PO4','Осадок',''),(76,'BaSO4','Осадок',''),(77,'CaCO3','Осадок',''),(78,'CuS','Осадок',''),(79,'PbS','Осадок',''),(80,'ZnSO4','Осадок',''),(81,'ZnS','Осадок',''),(82,'KNO3','Средняя соль',''),(83,'Na3PO4','Средняя соль',''),(84,'AgNO3','Средняя соль',''),(85,'KCl','Средняя соль',''),(86,'NaCl','Средняя соль',''),(87,'Na2CO3','Средняя соль',''),(88,'NaNO3','Средняя соль',''),(89,'FeCL3','Средняя соль',''),(90,'Ba(NO3)2','Средняя соль',''),(91,'LiNO3','Средняя соль',''),(92,'Li2SO4','Средняя соль',''),(93,'Li2SO3','Средняя соль',''),(94,'KBr','Средняя соль',''),(95,'KI','Средняя соль',''),(96,'K2CO3','Средняя соль',''),(97,'MgCl2','Средняя соль',''),(98,'MgBr2','Средняя соль',''),(99,'CuNO3','Средняя соль',''),(100,'Cu(NO3)2','Средняя соль',''),(101,'Na2S','Средняя соль',''),(102,'K2S','Средняя соль',''),(103,'Zn(NO3)2','Средняя сольСредняя соль',''),(104,'MnCl2','Средняя соль',''),(105,'ZnBr2','Средняя соль',''),(106,'K2SO4','Средняя сольСредняя соль',''),(107,'K2SO3','Средняя соль',''),(108,'K3PO4','Средняя соль',''),(109,'Na2SO4','Средняя соль',''),(110,'Na2SO3','Средняя соль',''),(111,'NaBr','Средняя соль',''),(112,'NaI','Средняя соль',''),(113,'BaBr2','Средняя соль',''),(114,'HNO3','Кислота',''),(115,'HNO2','Кислота',''),(116,'H2SiO3','Кислота',''),(117,'H3PO4','Кислота',''),(118,'H2SO3','Кислота',''),(119,'H2SO4','Кислота',''),(120,'HCl','Кислота',''),(121,'HBr','Кислота',''),(122,'HI','Кислота',''),(123,'H2S','Кислота',''),(124,'NH3','Аммиак',''),(125,'HClO','Кислота',''),(126,'HClO3','Кислота',''),(127,'H2ClO4','Кислота',''),(128,'HF','Кислота',''),(129,'Al(NO3)2','Средняя соль',''),(130,'Fe(NO3)2','Средняя соль',''),(131,'Fe(NO3)3','Средняя соль',''),(132,'LiF','Средняя соль',''),(133,'LiCl','Средняя соль',''),(134,'LiI','Средняя соль',''),(135,'LiBr','Средняя соль',''),(136,'NH4NO3','Средняя соль',''),(137,'NH4NCl','Средняя соль',''),(138,'(NH4)2SO3','Средняя соль',''),(139,'(NH4)2CO3','Средняя соль',''),(140,'(NH4)3PO4','Средняя соль',''),(141,'Mg(NO3)2','Средняя соль',''),(142,'MgF2','Осадок',''),(143,'CaCl2','Средняя соль',''),(144,'CaBr2','Средняя соль',''),(145,'CaSO4','Осадок',''),(146,'CaSO3','Осадок',''),(147,'CaI2','Средняя соль',''),(148,'CaSiO3','Осадок',''),(149,'CaS','Средняя соль',''),(150,'Ca(NO3)2','Средняя соль',''),(151,'Mg3(PO4)2','Осадок',''),(152,'Mg(NO3)2','Средняя соль',''),(153,'ZnSO4','Средняя соль',''),(154,'Zn(NO3)2','Средняя соль',''),(155,'ZnI2','Средняя соль',''),(156,'ZnCl2','Средняя соль',''),(157,'Al(NO3)3','Средняя соль',''),(158,'AlBr3','Средняя соль',''),(159,'CuSO4','Средняя соль',''),(160,'Cu2SO4','Средняя соль',''),(161,'AlCl3','Средняя соль',''),(162,'AlBr3','Средняя соль',''),(163,'AlI3','Средняя соль',''),(164,'Al2(SO4)3','Средняя соль',''),(165,'MnBr2','Средняя соль',''),(166,'MnI2','Средняя соль',''),(167,'BaSO3','Осадок',''),(168,'Pb(NO3)2','Средняя соль',''),(169,'Al2S3','Осадок',''),(170,'FeSO4','Средняя соль',''),(171,'Fe2(SO4)3','Средняя соль',''),(172,'BaI2','Средняя соль',''),(173,'BaCl2','Средняя соль',''),(174,'BaCO3','Осадок',''),(175,'K2SiO3','Средняя соль',''),(176,'Na2SiO3','Средняя соль',''),(177,'HgNO3','Средняя соль',''),(178,'AlPO4','Осадок','');
/*!40000 ALTER TABLE `Theory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:24