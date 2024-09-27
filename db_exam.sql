-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 09:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(45, 1, 0, 'Drek Kolkevi'),
(46, 1, 0, 'Willam Makepiece'),
(47, 1, 1, ' Rasmus Lerdorf'),
(48, 1, 0, ' List Barely'),
(49, 2, 0, 'PHP is used to develop dynamic and interactive websites'),
(50, 2, 0, 'PHP is a server-side scripting language'),
(51, 2, 0, 'PHP is an open-source programming language'),
(52, 2, 1, '1,2,3'),
(53, 3, 1, 'function functionName(parameters) {function body}'),
(54, 3, 0, 'functionName(parameters) {function body}'),
(55, 3, 0, ' function {function body}'),
(56, 3, 0, 'data type functionName(parameters) {function body}'),
(57, 4, 0, '$5_Hello'),
(58, 4, 0, ' $this'),
(59, 4, 0, '$3hello'),
(60, 4, 1, '$_hello'),
(61, 5, 0, 'User Defined Function'),
(62, 5, 0, ' Inbuilt Function'),
(63, 5, 1, 'Magic Function'),
(64, 5, 0, 'Default Function'),
(65, 6, 0, 'memory_get_peak_usage()'),
(66, 6, 0, 'get_peak_usage()'),
(67, 6, 1, 'memory_get_usage()'),
(68, 6, 0, 'get_usage()'),
(69, 7, 1, 'fileatime()'),
(70, 7, 0, 'fileltime()'),
(71, 7, 0, 'filetime()'),
(72, 7, 0, 'filectime()'),
(73, 8, 0, 'function _construct()'),
(74, 8, 0, '_construct()'),
(75, 8, 1, 'function __construct()'),
(76, 8, 0, 'classname()'),
(77, 9, 0, 'PHP Database Object'),
(78, 9, 0, 'PHP Database Orientation'),
(79, 9, 0, 'PHP Data Orientation'),
(80, 9, 1, ' PHP Data Object'),
(81, 10, 1, 'PHPSESSID'),
(82, 10, 0, 'PHPSESID'),
(83, 10, 0, 'PHPSESSIONID'),
(84, 10, 0, 'PHPIDSESS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(12, 1, 'Who is the father of PHP?'),
(13, 2, 'What is PHP?'),
(14, 3, ' How to define a function in PHP?'),
(15, 4, ' Which is the right way of declaring a variable in PHP?'),
(16, 5, 'A function in PHP which starts with __ (double underscore) is known as __________'),
(17, 6, 'Which of the following PHP functions can be used to get the current memory usage?'),
(18, 7, ' Which one of the following PHP function is used to determine a file’s last access time?'),
(19, 8, ' PHP recognizes constructors by the name _________'),
(20, 9, 'What does PDO stand for?'),
(21, 10, 'Which one of the following is the default PHP session name?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userId`, `name`, `username`, `password`, `email`, `status`) VALUES
(5, 'JITENDRA', 'jiten90', '1234567890', 'jitendraprajapati9956@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_viva`
--

CREATE TABLE `tbl_viva` (
  `id` int(200) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `email` varchar(2000) NOT NULL,
  `github` varchar(2000) NOT NULL,
  `linkdin` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_viva`
--

INSERT INTO `tbl_viva` (`id`, `name`, `email`, `github`, `linkdin`) VALUES
(2, 'JITENDRA', 'jitendraprajapati9956@gmail.com', 'JITU123', 'JITENDRA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_viva`
--
ALTER TABLE `tbl_viva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_viva`
--
ALTER TABLE `tbl_viva`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
