-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2024 at 09:39 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(30) NOT NULL,
  `writer` varchar(30) NOT NULL,
  `numberOfPages` int NOT NULL,
  `librarian_id` int DEFAULT NULL,
  `readers_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `librarian_id` (`librarian_id`),
  KEY `readers_id` (`readers_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`librarian_id`) REFERENCES `librarian` (`id`) ON DELETE SET NULL,
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`readers_id`) REFERENCES `readers` (`readersid`) ON DELETE SET NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `writer`, `numberOfPages`, `librarian_id`, `readers_id`) VALUES
(4, 'harry potter', 'jkr', 450, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
CREATE TABLE IF NOT EXISTS `librarian` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Lusername` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `Lusername`, `password`) VALUES
(5, 'yaser', 'yaser123');

-- --------------------------------------------------------

--
-- Table structure for table `readers`
--

DROP TABLE IF EXISTS `readers`;
CREATE TABLE IF NOT EXISTS `readers` (
  `readersid` int NOT NULL AUTO_INCREMENT,
  `readersname` varchar(255) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  PRIMARY KEY (`readersid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `readers`
--

INSERT INTO `readers` (`readersid`, `readersname`, `phonenumber`) VALUES
(1, 'Ahmed Abbad', '1234567890');

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
