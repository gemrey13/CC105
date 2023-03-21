-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 06:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `act1_ranola`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `dept_id` varchar(2) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_table`
--

INSERT INTO `department_table` (`dept_id`, `description`) VALUES
('d1', 'Public Relation'),
('d2', 'Human Reesources'),
('d3', 'Information Technology'),
('d4', 'Environmental Protection'),
('d5', 'Research And Development');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `id` int(11) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `ys` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `department_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`id`, `firstname`, `lastname`, `email_address`, `title`, `hiredate`, `birthdate`, `ys`, `age`, `department_id`) VALUES
(1, 'Karen', 'Berg', 'BergKaren@web.com', 'Owner', '2008-05-01', '1972-01-14', 14, 51, 'd1'),
(2, 'Kim', 'Akers', 'AkersKim@web.com', 'Head Buyers', '2008-06-01', '1970-06-01', 14, 52, 'd1'),
(3, 'Tom', 'O\'Neill', 'O\'NeillTom@web.com', 'Assistant', '2008-11-02', '1969-07-12', 14, 53, 'd3'),
(4, 'Naoki', 'Sato', 'SatoNaoki@web.com', 'Sales Manager', '2009-08-14', '1980-12-12', 13, 42, 'd1'),
(5, 'Molly', 'Dempsey', 'DempseyMolly@web.com', 'Gardener', '2009-10-17', '1983-11-16', 13, 39, 'd2'),
(6, 'Nancy', 'Anderson', 'AndersonNancy@web.com', 'Sales Rep', '2010-05-01', '1969-05-28', 12, 53, 'd4'),
(7, 'Michael', 'Entin', 'EntinMichael@web.com', 'Sales Rep', '2011-04-01', '1978-04-18', 11, 44, 'd5'),
(8, 'Kari', 'Furse', 'FurseKari@web.com', 'Buyer', '2011-04-03', '1974-05-13', 11, 48, 'd5'),
(9, 'Chase', 'Carpenter', 'CarpenterChase@web.com', 'Gardener', '2011-11-15', '1969-02-02', 11, 54, 'd3');

-- --------------------------------------------------------

--
-- Table structure for table `new_emptable`
--

CREATE TABLE `new_emptable` (
  `id` int(11) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_emptable`
--

INSERT INTO `new_emptable` (`id`, `firstname`, `birthdate`) VALUES
(1, 'Goku', '2002-04-04'),
(2, 'Naruto', '2002-07-13'),
(3, 'Ichigo', '2003-09-17'),
(4, 'Krillin', '2000-04-01'),
(5, 'Sasuke', '2002-11-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `new_emptable`
--
ALTER TABLE `new_emptable`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `department_table` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
