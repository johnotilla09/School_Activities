-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: otilla_store
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `chicken_feeds_list`
--

DROP TABLE IF EXISTS `chicken_feeds_list`;
/*!50001 DROP VIEW IF EXISTS `chicken_feeds_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `chicken_feeds_list` AS SELECT 
 1 AS `prod_name`,
 1 AS `brand`,
 1 AS `stock`,
 1 AS `price`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dog_food_list`
--

DROP TABLE IF EXISTS `dog_food_list`;
/*!50001 DROP VIEW IF EXISTS `dog_food_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dog_food_list` AS SELECT 
 1 AS `prod_name`,
 1 AS `brand`,
 1 AS `stock`,
 1 AS `price`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pig_feed_list`
--

DROP TABLE IF EXISTS `pig_feed_list`;
/*!50001 DROP VIEW IF EXISTS `pig_feed_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pig_feed_list` AS SELECT 
 1 AS `prod_name`,
 1 AS `brand`,
 1 AS `stock`,
 1 AS `price`,
 1 AS `type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `type_id` int DEFAULT NULL,
  `prod_name` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`prod_id`),
  KEY `type_id` (`type_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Integra 1000','BMEG',50,39,NULL),(2,1,'Integra 2000','BMEG',40,39,NULL),(3,1,'Integra 2500','BMEG',27,39,NULL),(4,1,'Integra 3000 Plus','BMEG',50,39,NULL),(5,1,'Integra 3000','BMEG',34,39,NULL),(6,1,'Integra 4000','BMEG',10,39,NULL),(7,1,'Pre_Starter','BMEG',30,33,NULL),(8,2,'Hygro Hog Lactating','SUPRA',49,40,NULL),(9,2,'Turbo','SUPRA',49,40,NULL),(10,3,'Pedigree Adult','Pedigree',50,49,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'employee');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_icome_per_type_of_animal_foods`
--

DROP TABLE IF EXISTS `total_icome_per_type_of_animal_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_icome_per_type_of_animal_foods` (
  `type_id` int NOT NULL DEFAULT '0',
  `total_income` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_icome_per_type_of_animal_foods`
--

LOCK TABLES `total_icome_per_type_of_animal_foods` WRITE;
/*!40000 ALTER TABLE `total_icome_per_type_of_animal_foods` DISABLE KEYS */;
INSERT INTO `total_icome_per_type_of_animal_foods` VALUES (1,1080),(2,224),(3,0),(4,0);
/*!40000 ALTER TABLE `total_icome_per_type_of_animal_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transact_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `prod_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  PRIMARY KEY (`transact_id`),
  KEY `user_id` (`user_id`),
  KEY `prod_id` (`prod_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,'2023-04-04',1,1,2,78),(2,1,'2023-04-04',2,1,1,39),(3,2,'2023-04-04',1,1,5,195),(4,4,'2023-04-05',9,2,2,80),(5,3,'2023-04-05',6,1,2,78),(6,4,'2023-05-06',3,1,10,390),(7,4,'2023-05-06',3,1,6,234),(8,4,'2023-05-07',7,1,2,66),(9,4,'2023-06-07',9,2,2,72),(10,6,'2023-06-07',9,2,2,72);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Chicken'),(2,'Pig'),(3,'Dog'),(4,'Cat');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `gmail` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2,'Osiana','Emher John','osiana@gmail.com','@emher','2023-04-07','Inascan, Guinobatan, Albay','123456789'),(2,1,'Otilla','Rudy','rudy@gmail.com','@rudy','1999-04-07','Inascan, Guinobatan, Albay','123456789'),(3,2,'Otilla','John','john@gmail.com','@john','2001-07-09','Inascan, Guinobatan, Albay','123456789'),(4,2,'Otilla','Sofia','sofia@gmail.com','@sofia','2006-06-06','Inascan, Guinobatan, Albay','123456789'),(5,2,'Otilla','Riza','riza@gmail.com','@riza','2023-04-08','Inascan, Guinobatan, Albay','123456789'),(6,2,'Canila','Anita','anita@gmail.com','@anita','1980-02-22','Inascan, Guinobatan, Albay','123456789'),(7,2,'Canila','Pedro','pedro@gmail.com','@pedro','1745-01-29','Inascan, Guinobatan, Albay','123456789'),(8,2,'Otilla','Javin','javin@gmail.com','@javin','2004-05-12','Inascan, Guinobatan, Albay','123456789'),(9,2,'Otilla','Carl','carl@gmail.com','@carl','2023-04-07','Inascan, Guinobatan, Albay','123456789'),(10,2,'Otilla','Alvin','alvin@gmail.com','@alvin','2005-09-01','Inascan, Guinobatan, Albay','123456789');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `chicken_feeds_list`
--

/*!50001 DROP VIEW IF EXISTS `chicken_feeds_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `chicken_feeds_list` AS select `products`.`prod_name` AS `prod_name`,`products`.`brand` AS `brand`,`products`.`stock` AS `stock`,`products`.`price` AS `price`,`types`.`type` AS `type` from (`products` join `types` on((`products`.`type_id` = `types`.`type_id`))) where (`products`.`type_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dog_food_list`
--

/*!50001 DROP VIEW IF EXISTS `dog_food_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dog_food_list` AS select `products`.`prod_name` AS `prod_name`,`products`.`brand` AS `brand`,`products`.`stock` AS `stock`,`products`.`price` AS `price`,`types`.`type` AS `type` from (`products` join `types` on((`products`.`type_id` = `types`.`type_id`))) where (`products`.`type_id` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pig_feed_list`
--

/*!50001 DROP VIEW IF EXISTS `pig_feed_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pig_feed_list` AS select `products`.`prod_name` AS `prod_name`,`products`.`brand` AS `brand`,`products`.`stock` AS `stock`,`products`.`price` AS `price`,`types`.`type` AS `type` from (`products` join `types` on((`products`.`type_id` = `types`.`type_id`))) where (`products`.`type_id` = 2) */;
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

-- Dump completed on 2023-04-08 16:32:36
