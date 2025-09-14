-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: csd430
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `jacob_movies_data`
--

DROP TABLE IF EXISTS `jacob_movies_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jacob_movies_data` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jacob_movies_data`
--

LOCK TABLES `jacob_movies_data` WRITE;
/*!40000 ALTER TABLE `jacob_movies_data` DISABLE KEYS */;
INSERT INTO `jacob_movies_data` VALUES (1,'Tetris','Thriller/History',2023,'1h 58m','Jon S. Baird'),(2,'Inception','Sci-Fi',2010,'2h 28m','Christopher Nolan'),(3,'The Matrix','Action/Sci-Fi',1999,'2h 16m','Lana Wachowski, Lilly Wachowski'),(4,'The Godfather','Crime/Drama',1972,'2h 55m','Francis Ford Coppola'),(5,'Interstellar','Sci-Fi/Drama',2014,'2h 49m','Christopher Nolan'),(6,'Parasite','Thriller/Drama',2019,'2h 12m','Bong Joon-ho'),(7,'Avatar','Sci-Fi/Fantasy',2009,'2h 42m','James Cameron'),(8,'Titanic','Drama/Romance',1997,'3h 15m','James Cameron'),(9,'Joker','Drama/Thriller',2019,'2h 2m','Todd Phillips'),(10,'The Batman','Action/Crime',2022,'2h 56m','Matt Reeves'),(11,'Silicon Valley','Comedy',2016,'2 hour','Unknown'),(12,'Harry Potter','Fantasy',2010,'2 hour','Unknown Director');
/*!40000 ALTER TABLE `jacob_movies_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-13 19:23:47
