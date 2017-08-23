-- Dump created by MySQL pump utility, version: 5.7.19, Win64 (x86_64)
-- Dump start time: Wed Aug 23 13:31:15 2017
-- Server version: 5.7.19

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET @@SESSION.SQL_LOG_BIN= 0;
SET @OLD_TIME_ZONE=@@TIME_ZONE;
SET TIME_ZONE='+00:00';
SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT;
SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS;
SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION;
SET NAMES utf8mb4;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `my_database` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE TABLE `my_database`.`cisc` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `my_database`.`committee` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(20) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `my_database`.`proposal` (
`title` varchar(30) DEFAULT NULL,
`content` varchar(500) DEFAULT NULL,
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`status` varchar(20) DEFAULT NULL,
`author_id` int(11) DEFAULT NULL,
`deadline_at` datetime DEFAULT NULL,
`create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `my_database`.`proposal_check` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`proposal_id` int(11) DEFAULT NULL,
`reader_id` int(11) DEFAULT NULL,
`reader_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`comment` varchar(500) DEFAULT NULL,
`opt` tinyint(3) unsigned DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `my_database`.`standard` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`title` varchar(30) DEFAULT NULL,
`create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`content` varchar(1000) DEFAULT NULL,
`author_id` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
CREATE TABLE `my_database`.`users` (
`name` varchar(20) NOT NULL,
`sex` bit(1) DEFAULT b'0',
`address` varchar(30) DEFAULT NULL,
`phone` varchar(20) DEFAULT NULL,
`id` int(11) NOT NULL AUTO_INCREMENT,
`birth` datetime NOT NULL,
`signup_status` bit(1) DEFAULT NULL,
`signup_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`cisc_id` int(11) DEFAULT NULL,
`committee_id` int(11) DEFAULT NULL,
`password` varchar(20) DEFAULT NULL,
`recommend_id` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
USE `my_database`;
ALTER TABLE `my_database`.`users` ADD KEY `recommend_id` (`recommend_id`);
ALTER TABLE `my_database`.`users` ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`recommend_id`) REFERENCES `users` (`id`);
SET TIME_ZONE=@OLD_TIME_ZONE;
SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT;
SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS;
SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET SQL_MODE=@OLD_SQL_MODE;
-- Dump end time: Wed Aug 23 13:31:16 2017
