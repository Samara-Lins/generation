-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: db_generation_game_online
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tb_personagem`
--

DROP TABLE IF EXISTS `tb_personagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_personagem` (
  `personagem_id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) NOT NULL,
  `ataque` bigint DEFAULT NULL,
  `defesa` bigint DEFAULT NULL,
  `magia` bigint DEFAULT NULL,
  `classe_id` bigint NOT NULL,
  PRIMARY KEY (`personagem_id`),
  KEY `classe_id` (`classe_id`),
  CONSTRAINT `tb_personagem_ibfk_1` FOREIGN KEY (`classe_id`) REFERENCES `tb_classe` (`classe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_personagem`
--

LOCK TABLES `tb_personagem` WRITE;
/*!40000 ALTER TABLE `tb_personagem` DISABLE KEYS */;
INSERT INTO `tb_personagem` VALUES (1,'Gimli',4335,1468,988,4),(2,'Galadriel',6075,5570,3973,2),(3,'Faramir',5611,4912,1019,1),(4,'Legolas',5122,7809,3806,2),(5,'Eowyn',1780,5744,2928,1),(6,'Gandalf',5499,1566,8966,3);
/*!40000 ALTER TABLE `tb_personagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 23:25:56
