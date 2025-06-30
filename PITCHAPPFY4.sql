-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.1.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for resumebuilder
CREATE DATABASE IF NOT EXISTS `resumebuilder` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `resumebuilder`;

-- Dumping structure for table resumebuilder.account
CREATE TABLE IF NOT EXISTS `account` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table resumebuilder.data
CREATE TABLE IF NOT EXISTS `data` (
  `user_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `CityPersonal` varchar(50) DEFAULT NULL,
  `ZipCode` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `University` longtext DEFAULT NULL,
  `CityEduc` varchar(50) DEFAULT NULL,
  `GraduationDate` varchar(50) DEFAULT NULL,
  `GPA` varchar(50) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  `Thesis` varchar(50) DEFAULT NULL,
  `RelevantCoursework` longtext DEFAULT NULL,
  `JobTitle1` varchar(50) DEFAULT NULL,
  `Company1` varchar(50) DEFAULT NULL,
  `CityExperience1` varchar(50) DEFAULT NULL,
  `StartEnd1` varchar(50) DEFAULT NULL,
  `Responsibilities1` longtext DEFAULT NULL,
  `JobTitle2` varchar(50) DEFAULT NULL,
  `Company2` varchar(50) DEFAULT NULL,
  `CityExperience2` varchar(50) DEFAULT NULL,
  `StartEnd2` varchar(50) DEFAULT NULL,
  `Responsibilities2` longtext DEFAULT NULL,
  `JobTitle3` varchar(50) DEFAULT NULL,
  `Company3` varchar(50) DEFAULT NULL,
  `CityExperience3` varchar(50) DEFAULT NULL,
  `StartEnd3` varchar(50) DEFAULT NULL,
  `Responsibilities3` longtext DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `CompanyLA` varchar(50) DEFAULT NULL,
  `CityLA` varchar(50) DEFAULT NULL,
  `StartEndLA` varchar(50) DEFAULT NULL,
  `ResponsibilitiesLA` longtext DEFAULT NULL,
  `skill1` longtext DEFAULT NULL,
  `skill2` longtext DEFAULT NULL,
  `skill3` longtext DEFAULT NULL,
  `skill4` longtext DEFAULT NULL,
  PRIMARY KEY (`data_id`),
  KEY `FK_data_account` (`user_id`),
  CONSTRAINT `FK_data_account` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
