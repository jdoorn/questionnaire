-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 07:17 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: wp_poll1
--
CREATE DATABASE IF NOT EXISTS wp_poll1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE wp_poll1;

-- --------------------------------------------------------

--
-- Table structure for table tbl_poll_a
--

DROP TABLE IF EXISTS tbl_poll_a;
CREATE TABLE IF NOT EXISTS tbl_poll_a (
  aQuestion_Id int(6) NOT NULL,
  aResponse varchar(250) NOT NULL,
  aComment varchar(250) DEFAULT NULL,
  aResponse_Id int(6) NOT NULL,
  answer_Id int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (answer_Id),
  UNIQUE KEY answer_Id (answer_Id)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert tbl_poll_a
--

TRUNCATE TABLE tbl_poll_a;
--
-- Dumping data for table tbl_poll_a
--

INSERT INTO tbl_poll_a (aQuestion_Id, aResponse, aComment, aResponse_Id, answer_Id) VALUES
(14, 'Caucasian', 'Born in US', 1, 1),
(16, 'greater than $200,000', 'Plus investments', 1, 2),
(17, 'Instructors', 'Jim', 1, 3),
(17, 'Whitefish', 'best restaurants', 1, 4),
(11, 'Tupelos', 'Cajun Penne Pasta', 1, 5),
(13, 'Fiji', 'Turtle Island', 1, 7),
(14, 'Native American', '', 2, 9),
(16, '$50,000 - $100,000', '', 2, 10),
(17, 'Classes', '', 2, 11),
(14, 'Caucasian', '', 3, 160),
(16, '$50,000 - $100,000', '', 3, 161),
(17, 'Instructors', '', 3, 162),
(9, 'Whitefish', '', 3, 163),
(11, 'Mambos', '', 3, 164),
(13, 'Cat', '', 3, 166),
(7, 'Fiji', '', 3, 167),
(14, 'African American', '', 4, 169),
(16, '$100,000 - $200,000', '', 4, 170),
(17, 'Facilities', '', 4, 171),
(9, 'Columbia Falls', '', 4, 172),
(11, 'Wasabi', '', 4, 173),
(13, 'Cat', '', 4, 175),
(7, 'Australia', '', 4, 176),
(14, 'Hispanic', '', 5, 178),
(16, 'greater than $200,000', '', 5, 179),
(17, 'Classes', '', 5, 180),
(9, 'Whitefish', '', 5, 181),
(11, 'Mambos', '', 5, 182),
(13, 'Dog', '', 5, 184),
(7, 'Fiji', '', 5, 185),
(14, 'African American', '', 6, 186),
(16, '$50,000 - $100,000', '', 6, 187),
(17, 'Instructors', '', 6, 188),
(9, 'Whitefish', '', 6, 189),
(11, 'Whitefish Lake Golf Restaurant', '', 6, 190),
(13, 'Cat', '', 6, 191),
(7, 'Mexico', '', 6, 192),
(14, 'Caucasian', 'I am white', 7, 193),
(16, '$100,000 - $200,000', 'Plus investments', 7, 194),
(17, 'Instructors', 'Jim', 7, 195),
(9, 'Bigfork', 'Fun Activities', 7, 196),
(11, 'Tupelos', 'Cajun Penne Pasta', 7, 197),
(13, 'Cat', 'Izzy', 7, 198),
(7, 'Fiji', 'Turtle Island', 7, 199);

-- --------------------------------------------------------

--
-- Table structure for table tbl_poll_q
--

DROP TABLE IF EXISTS tbl_poll_q;
CREATE TABLE IF NOT EXISTS tbl_poll_q (
  qQuestionNumber int(3) NOT NULL,
  qQuestion varchar(250) NOT NULL,
  qResponse1 varchar(50) NOT NULL,
  qResponse2 varchar(50) NOT NULL,
  qResponse3 varchar(50) NOT NULL,
  qResponse4 varchar(50) NOT NULL,
  qIncludeComment tinyint(1) DEFAULT NULL,
  qQuestion_Id int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (qQuestion_Id),
  UNIQUE KEY QuestionNumber (qQuestionNumber)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert tbl_poll_q
--

TRUNCATE TABLE tbl_poll_q;
--
-- Dumping data for table tbl_poll_q
--

INSERT INTO tbl_poll_q (qQuestionNumber, qQuestion, qResponse1, qResponse2, qResponse3, qResponse4, qIncludeComment, qQuestion_Id) VALUES
(10, 'What is your favorite country to visit?', 'Canada', 'Mexico', 'Fiji', 'Australia', NULL, 7),
(4, 'What is your Favorite town in Flathead Valley?', 'Kalispell', 'Whitefish', 'Bigfork', 'Columbia Falls', NULL, 9),
(6, 'What is your Favorite restaurant in Whitefish?', 'Tupelos', 'Mambos', 'Wasabi', 'Whitefish Lake Golf Restaurant', NULL, 11),
(9, 'What is your favorite pet?', 'Dog', 'Cat', 'Bird', 'Rodent', NULL, 13),
(1, 'Ethnicity', 'Caucasian', 'African American', 'Hispanic', 'Native American', NULL, 14),
(2, 'Household Income Level', 'less than $50,000', '$50,000 - $100,000', '$100,000 - $200,000', 'greater than $200,000', NULL, 16),
(3, 'Favorite thing about FVCC', 'Classes', 'Instructors', 'Dining Hall', 'Facilities', NULL, 17);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
