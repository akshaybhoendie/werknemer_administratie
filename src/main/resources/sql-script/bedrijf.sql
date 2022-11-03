-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.24 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bedrijf
CREATE DATABASE IF NOT EXISTS `bedrijf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016*/;
USE `bedrijf`;

-- Dumping structure for table bedrijf.werknemer
CREATE TABLE IF NOT EXISTS `werknemer` (
                                           `id` int NOT NULL AUTO_INCREMENT,
                                           `voornaam` varchar(45) NOT NULL,
    `achternaam` varchar(50) NOT NULL,
    `extensie` varchar(45) NOT NULL,
    `telefoon` varchar(45) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table bedrijf.werknemer: ~1 rows (approximately)
/*!40000 ALTER TABLE `werknemer` DISABLE KEYS */;
INSERT INTO `werknemer` (`id`, `voornaam`, `achternaam`, `extensie`, `telefoon`) VALUES
(1, 'Dora', 'the Explorer', 'Geoloog', '012345'),
(2, 'Jeff', 'Bezos', '145', '5643556'),
(3, 'Elon', 'Musk', '452', '9804544'),
(4, 'Gautam', 'Adhani', '869', '2343243');
/*!40000 ALTER TABLE `werknemer` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
