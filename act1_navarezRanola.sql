-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2023 at 10:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `act1_navarezRanola`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `id` int(11) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `hiredate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`id`, `firstname`, `lastname`, `title`, `hiredate`) VALUES
(1, 'Karen', 'Berg', 'Owner', 'May 1, 2008'),
(2, 'Kim', 'Akers', 'Head Buyers', 'June 1, 2008'),
(3, 'Tom', 'O\'Neill', 'Assistant', 'November 2, 2008'),
(7, 'Michael', 'Entin', 'Sales Rep', 'April 1, 2011'),
(6, 'Nancy', 'Anderson', 'Sales Rep', 'May 1, 2010'),
(5, 'Molly', 'Dempsey', 'Gardener', 'October 17, 2009'),
(4, 'Naoki', 'Sato', 'Sales Manager', 'August 14, 2009'),
(8, 'Kari', 'Furse', 'Buyer', 'May 3, 2011'),
(9, 'Chase', 'Carpenter', 'Gardener', 'November 15, 2012');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
