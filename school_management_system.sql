-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2024 at 03:53 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `A_id` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_id`, `Name`, `Email`, `Address`) VALUES
(1, 'Sohann', 'sohan@gmail.com', 'Satkhira,Khulna');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `Att_id` int NOT NULL,
  `T_id` int DEFAULT NULL,
  `Roll` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Att_id`),
  KEY `T_id` (`T_id`),
  KEY `Roll` (`Roll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Att_id`, `T_id`, `Roll`, `Date`, `Status`) VALUES
(1, 1, 1, '2024-04-25', 'Present'),
(2, 2, 2, '2024-04-25', 'Present'),
(3, 3, 3, '2024-04-25', 'Absent'),
(4, 4, 4, '2024-04-25', 'Present'),
(5, 5, 5, '2024-04-25', 'Absent'),
(6, 6, 6, '2024-04-25', 'Present'),
(7, 7, 7, '2024-04-25', 'Absent'),
(8, 8, 8, '2024-04-25', 'Present'),
(9, 9, 9, '2024-04-25', 'Present'),
(10, 10, 10, '2024-04-25', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `Book_id` int NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_id`, `BookName`) VALUES
(1, 'Book1'),
(2, 'Book2'),
(3, 'Book3'),
(4, 'Book4'),
(5, 'Book5'),
(6, 'Book6'),
(7, 'Book7'),
(8, 'Book8'),
(9, 'Book9'),
(10, 'Book10');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE IF NOT EXISTS `borrow` (
  `Roll` int NOT NULL,
  `Book_id` int NOT NULL,
  `B_date` date DEFAULT NULL,
  PRIMARY KEY (`Roll`,`Book_id`),
  KEY `Book_id` (`Book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`Roll`, `Book_id`, `B_date`) VALUES
(1, 1, '2024-04-25'),
(2, 2, '2024-04-25'),
(3, 3, '2024-04-25'),
(4, 4, '2024-04-25'),
(5, 5, '2024-04-25'),
(6, 6, '2024-04-25'),
(7, 7, '2024-04-25'),
(8, 8, '2024-04-25'),
(9, 9, '2024-04-25'),
(10, 10, '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `Course_id` int NOT NULL,
  `C_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_id`, `C_Name`) VALUES
(1, 'Bangla'),
(2, 'Math'),
(3, 'English'),
(4, 'ICT'),
(5, 'Art'),
(6, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `E_id` int NOT NULL,
  `Course_id` int DEFAULT NULL,
  `E_name` varchar(100) DEFAULT NULL,
  `E_mark` int DEFAULT NULL,
  `E_time` time DEFAULT NULL,
  PRIMARY KEY (`E_id`),
  KEY `Course_id` (`Course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`E_id`, `Course_id`, `E_name`, `E_mark`, `E_time`) VALUES
(1, 1, 'Midterm Exam', 100, '09:00:00'),
(2, 1, 'Final Exam', 200, '14:00:00'),
(3, 2, 'Midterm Exam', 100, '10:00:00'),
(4, 2, 'Final Exam', 200, '15:00:00'),
(5, 3, 'Midterm Exam', 100, '11:00:00'),
(6, 3, 'Final Exam', 200, '16:00:00'),
(7, 4, 'Midterm Exam', 100, '12:00:00'),
(8, 4, 'Final Exam', 200, '17:00:00'),
(9, 5, 'Midterm Exam', 100, '13:00:00'),
(10, 5, 'Final Exam', 200, '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `L_id` int NOT NULL,
  `A_id` int DEFAULT NULL,
  `RoomNumber` int DEFAULT NULL,
  `Librarian` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`L_id`),
  KEY `A_id` (`A_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`L_id`, `A_id`, `RoomNumber`, `Librarian`) VALUES
(1, 1, 101, 'Mr Farhan Uddin'),
(2, 2, 102, 'Miss Halima Parvin');

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
CREATE TABLE IF NOT EXISTS `make` (
  `T_id` int NOT NULL,
  `Result_id` int NOT NULL,
  `Made_date` date DEFAULT NULL,
  PRIMARY KEY (`T_id`,`Result_id`),
  KEY `Result_id` (`Result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`T_id`, `Result_id`, `Made_date`) VALUES
(1, 1, '2024-04-25'),
(2, 2, '2024-04-25'),
(3, 3, '2024-04-25'),
(4, 4, '2024-04-25'),
(5, 5, '2024-04-25'),
(6, 6, '2024-04-25'),
(7, 7, '2024-04-25'),
(8, 8, '2024-04-25'),
(9, 9, '2024-04-25'),
(10, 10, '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `M_id` int NOT NULL,
  `A_id` int DEFAULT NULL,
  `T_id` int DEFAULT NULL,
  `Roll` int DEFAULT NULL,
  `Content` text,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`M_id`),
  KEY `A_id` (`A_id`),
  KEY `T_id` (`T_id`),
  KEY `Roll` (`Roll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`M_id`, `A_id`, `T_id`, `Roll`, `Content`, `Date`) VALUES
(1, 1, NULL, 1, 'Assignment deadline tomorrow.', '2024-04-25'),
(2, NULL, 2, 2, 'Remember textbooks for quiz.', '2024-04-25'),
(3, 1, NULL, 3, 'Class postponed to 1 PM today.', '2024-04-25'),
(4, NULL, 4, 4, 'Group project meeting at 3 PM.', '2024-04-25'),
(5, 1, NULL, 5, 'Library closed for maintenance this weekend.', '2024-04-25'),
(6, NULL, 6, 6, 'Review additional reading material.', '2024-04-25'),
(7, 1, NULL, 7, 'Term paper submission deadline next Friday.', '2024-04-25'),
(8, NULL, 8, 8, 'Todays lecture canceled.', '2024-04-25'),
(9, 1, NULL, 9, 'Exam venue changed to Room 203.', '2024-04-25'),
(10, NULL, 10, 10, 'Complete online quiz by midnight.', '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `participate`
--

DROP TABLE IF EXISTS `participate`;
CREATE TABLE IF NOT EXISTS `participate` (
  `Roll` int NOT NULL,
  `E_id` int NOT NULL,
  `P_date` date DEFAULT NULL,
  PRIMARY KEY (`Roll`,`E_id`),
  KEY `E_id` (`E_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `participate`
--

INSERT INTO `participate` (`Roll`, `E_id`, `P_date`) VALUES
(1, 1, '2024-04-25'),
(2, 2, '2024-04-25'),
(3, 3, '2024-04-25'),
(4, 4, '2024-04-25'),
(5, 5, '2024-04-25'),
(6, 6, '2024-04-25'),
(7, 7, '2024-04-25'),
(8, 8, '2024-04-25'),
(9, 9, '2024-04-25'),
(10, 10, '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `R_id` int NOT NULL,
  `R_date` date DEFAULT NULL,
  `Roll` int DEFAULT NULL,
  `Course_id` int DEFAULT NULL,
  PRIMARY KEY (`R_id`),
  KEY `Roll` (`Roll`),
  KEY `Course_id` (`Course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`R_id`, `R_date`, `Roll`, `Course_id`) VALUES
(1, '2024-04-25', 1, 1),
(2, '2024-04-25', 2, 1),
(3, '2024-04-25', 3, 2),
(4, '2024-04-25', 4, 2),
(5, '2024-04-25', 5, 3),
(6, '2024-04-25', 6, 3),
(7, '2024-04-25', 7, 4),
(8, '2024-04-25', 8, 4),
(9, '2024-04-25', 9, 5),
(10, '2024-04-25', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `Result_id` int NOT NULL,
  `Result` varchar(50) DEFAULT NULL,
  `Position` int DEFAULT NULL,
  `TotalMark` int DEFAULT NULL,
  PRIMARY KEY (`Result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Result_id`, `Result`, `Position`, `TotalMark`) VALUES
(1, 'Pass', 1, 500),
(2, 'Pass', 2, 490),
(3, 'Pass', 3, 480),
(4, 'Pass', 4, 475),
(5, 'Pass', 5, 470),
(6, 'Pass', 6, 465),
(7, 'Pass', 7, 460),
(8, 'Pass', 8, 455),
(9, 'Pass', 9, 450),
(10, 'Pass', 10, 445),
(77, 'A+', 3, 890);

-- --------------------------------------------------------

--
-- Table structure for table `showing`
--

DROP TABLE IF EXISTS `showing`;
CREATE TABLE IF NOT EXISTS `showing` (
  `Roll` int NOT NULL,
  `Result_id` int NOT NULL,
  PRIMARY KEY (`Roll`,`Result_id`),
  KEY `Result_id` (`Result_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `showing`
--

INSERT INTO `showing` (`Roll`, `Result_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Roll` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`Roll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll`, `Name`, `Email`, `Address`, `Gender`) VALUES
(77, 'sohan', 'sohna@gmail.com', 'gollamari', 'M'),
(44, 'hossen', 'hossen@gmail.com', 'khajanagor', 'M'),
(55, 'jahid', 'jahid@gmail.com', 'bagerhat', 'M'),
(1, 'Rahad', 'rahad@example.com', ' Khulna, Bangladesh', 'M'),
(66, 'jack', 'jack@gmail.com', 'gollamari', 'M'),
(76, 'Jabid', 'motin@gmail.com', 'islamnagor', 'M'),
(88, 'anjir', 'anjir@gmail.com', 'Khulna ', 'M'),
(89, 'anjir', 'anjir@gmail.com', 'Khulna ', 'M'),
(13, 'mahi', 'mahi@gmail.com', 'Gollamri', 'M'),
(9, 'Mursalin', 'mursalin@example.com', 'Khulna ', 'M'),
(10, 'Fahim', 'fahim@example.com', 'Khulna', 'M'),
(2, 'Partho', 'partho@example.com', 'Khulna , Bangladesh', 'M'),
(3, 'Rabby', 'rabby@example.com', 'Khulna', 'M'),
(4, 'Bonhi', 'bonhi@example.com', 'Khulna', 'F'),
(5, 'Arnob', 'arnob@example.com', 'Khulna', 'M'),
(6, 'Antu', 'antu@example.com', 'Khulna', 'M'),
(7, 'Redwan', 'redwan@example.com', 'Khulna', 'M'),
(8, 'Muntaha', 'muntaha@example.com', 'Khulna', 'M'),
(90, 'anjir', 'anjir@gmail.com', 'Khulna ', 'M'),
(123, 'hxhh', 'yusdjjs', 'yushjhu', 'i'),
(124, 'hridoy', 'hridoy@gmail.com', 'gollamari', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `S_id` int NOT NULL,
  `Course_id` int DEFAULT NULL,
  `S_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`S_id`),
  KEY `Course_id` (`Course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`S_id`, `Course_id`, `S_name`) VALUES
(1, 1, 'Bangla'),
(2, 1, 'English'),
(3, 1, 'Mathematics'),
(4, 1, 'Science'),
(5, 1, 'Art'),
(6, 2, 'Bangla'),
(7, 2, 'English'),
(8, 2, 'Mathematics'),
(9, 2, 'Science'),
(10, 2, 'Art');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `T_id` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`T_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`T_id`, `Name`, `Email`, `Salary`, `Address`) VALUES
(1, 'Jisan', 'jisan@example.com', 50000.00, 'Dhaka, Bangladesh'),
(2, 'Firoz', 'firoz@example.com', 55000.00, 'Chittagong, Bangladesh'),
(3, 'Iqbal', 'iqbal@example.com', 60000.00, 'Rajshahi, Bangladesh'),
(4, 'Imam', 'imam@example.com', 52000.00, 'Khulna, Bangladesh'),
(5, 'Hossen', 'hossen@example.com', 58000.00, 'Barisal, Bangladesh'),
(6, 'Abid', 'abid@example.com', 57000.00, 'Sylhet, Bangladesh'),
(7, 'Istiak', 'istiak@example.com', 54000.00, 'Rangpur, Bangladesh'),
(8, 'Maruf', 'maruf@example.com', 59000.00, 'Mymensingh, Bangladesh'),
(9, 'Saiful', 'saiful@example.com', 56000.00, 'Narayanganj, Bangladesh'),
(10, 'Abrar', 'abrar@example.com', 61000.00, 'Cox\'s Bazar, Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int DEFAULT NULL,
  `Username` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `Password` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `email`, `age`, `Password`) VALUES
(NULL, 'sohan37', 'sohan@gmail.com', 23, 1234);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
