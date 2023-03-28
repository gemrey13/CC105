-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 08:58 AM
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
-- Database: `final_ranola`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(64) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `manager_id`, `location`) VALUES
(101, 'Sales', 10001, 'Building A, 3rd Floor'),
(102, 'Marketing', 10002, 'Building A, 2nd Floor'),
(103, 'Human Resources', 10003, 'Building B, 1st Floor'),
(104, 'Engineering', 10004, 'Building C, 4th Floor');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `email_address` varchar(64) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email_address`, `phone_number`, `date_of_birth`, `gender`) VALUES
(10001, 'John', 'Doe', 'johndoe@example.com', '555-1234', '1980-01-01', 'M'),
(10002, 'Jane', 'Doe', 'janedoe@example.com', '555-5678', '1985-05-05', 'F'),
(10003, 'Bob', 'Smith', 'bobsmith@example.com', '555-4321', '1975-12-31', 'M'),
(10004, 'Alice', 'Johnson', 'alicejohnson@example.com', '555-9876', '1990-06-15', 'F'),
(10005, 'Tom', 'Williams', 'tomwilliams@example.com', '555-2468', '1988-11-22', 'M'),
(10006, 'Samantha', 'Garcia', 'samanthagarcia@example.com', '555-1357', '1984-04-14', 'F'),
(10007, 'David', 'Brown', 'davidbrown@example.com', '555-3690', '1979-09-19', 'M'),
(10008, 'Emily', 'Davis', 'emilydavis@example.com', '555-8021', '1995-03-07', 'F'),
(10009, 'Michael', 'Jackson', 'michaeljackson@example.com', '555-3141', '1982-07-17', 'M'),
(10010, 'Sarah', 'Lee', 'sarahlee@example.com', '555-7788', '1989-02-28', 'F'),
(10011, 'Andrew', 'Gonzalez', 'andrewgonzalez@example.com', '555-5588', '1976-08-12', 'M'),
(10012, 'Olivia', 'Taylor', 'oliviataylor@example.com', '555-7744', '1983-12-05', 'F'),
(10013, 'Matthew', 'Harris', 'matthewharris@example.com', '555-6234', '1991-04-29', 'M'),
(10014, 'Lauren', 'Thomas', 'laurenthomas@example.com', '555-8910', '1987-10-09', 'F'),
(10015, 'Christopher', 'White', 'christopherwhite@example.com', '555-6578', '1978-05-03', 'M'),
(10016, 'Sophia', 'Martin', 'sophiamartin@example.com', '555-9191', '1992-09-24', 'F'),
(10017, 'Daniel', 'Clark', 'danielclark@example.com', '555-2000', '1981-02-14', 'M'),
(10018, 'Ava', 'Robinson', 'avarobinson@example.com', '555-3355', '1986-06-07', 'F'),
(10019, 'William', 'Rodriguez', 'williamrodriguez@example.com', '555-4444', '1977-11-18', 'M'),
(10020, 'Maria', 'Garcia', 'mariagarcia@example.com', '555-1234', '1980-01-01', 'F'),
(10021, 'Mark', 'Wilson', 'markwilson@example.com', '555-5678', '1985-05-05', 'M'),
(10022, 'Linda', 'Davis', 'lindadavis@example.com', '555-4321', '1975-12-31', 'F'),
(10023, 'Jacob', 'Martinez', 'jacobmartinez@example.com', '555-9876', '1990-06-15', 'M'),
(10024, 'Elizabeth', 'Anderson', 'elizabethanderson@example.com', '555-2468', '1988-11-22', 'F'),
(10025, 'Jonathan', 'Thomas', 'jonathanthomas@example.com', '555-1357', '1984-04-14', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE `employment_history` (
  `employment_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `job_title` varchar(64) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason_for_leaving` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`employment_id`, `employee_id`, `job_title`, `department_id`, `start_date`, `end_date`, `reason_for_leaving`) VALUES
(14, 10001, 'Software Engineer', 101, '2010-01-01', '2012-06-30', 'Better opportunity'),
(15, 10001, 'Senior Software Engineer', 101, '2012-07-01', '2015-12-31', 'Promotion'),
(16, 10001, 'Engineering Manager', 101, '2016-01-01', '2018-06-30', 'Career change'),
(17, 10002, 'Sales Representative', 102, '2011-02-15', '2013-08-31', 'Better opportunity'),
(18, 10002, 'Account Manager', 102, '2013-09-01', '2016-12-31', 'Promotion'),
(19, 10002, 'Sales Manager', 102, '2017-01-01', '2019-06-30', 'Company restructuring'),
(20, 10003, 'Human Resources Coordinator', 103, '2012-05-01', '2015-02-28', 'Career change'),
(21, 10003, 'Human Resources Manager', 103, '2015-03-01', '2019-12-31', 'Promotion'),
(22, 10004, 'Accountant', 104, '2010-10-01', '2014-09-30', 'Better opportunity'),
(23, 10004, 'Senior Accountant', 104, '2014-10-01', '2017-06-30', 'Promotion'),
(24, 10004, 'Controller', 104, '2017-07-01', '2019-12-31', 'Retirement'),
(25, 10005, 'Marketing Coordinator', 101, '2013-01-01', '2015-06-30', 'Better opportunity'),
(26, 10005, 'Marketing Manager', 101, '2015-07-01', '2019-12-31', 'Promotion'),
(27, 10006, 'Graphic Designer', 101, '2014-04-01', '2016-08-31', 'Better opportunity'),
(28, 10006, 'Senior Graphic Designer', 101, '2016-09-01', '2019-12-31', 'Promotion'),
(29, 10007, 'Operations Manager', 102, '2012-09-01', '2015-06-30', 'Career change'),
(30, 10007, 'Regional Director', 102, '2015-07-01', '2019-12-31', 'Promotion'),
(31, 10008, 'Web Developer', 101, '2013-07-01', '2016-02-29', 'Better opportunity'),
(32, 10008, 'Senior Web Developer', 101, '2016-03-01', '2019-12-31', 'Promotion'),
(33, 10009, 'Financial Analyst', 104, '2015-04-01', '2017-09-30', 'Better opportunity'),
(34, 10009, 'Senior Financial Analyst', 104, '2017-10-01', '2019-12-31', 'Promotion'),
(35, 10010, 'Customer Service Manager', 103, '2017-01-01', '2019-12-31', 'Promotion'),
(36, 10011, 'Product Manager', 102, '2012-04-01', '2015-06-30', 'Better opportunity'),
(37, 10011, 'Senior Product Manager', 102, '2015-07-01', '2019-12-31', 'Promotion'),
(38, 10012, 'Administrative Assistant', 101, '2014-03-01', '2016-06-30', 'Better opportunity'),
(39, 10012, 'Executive Assistant', 101, '2016-07-01', '2019-12-31', 'Promotion'),
(40, 10013, 'Operations Coordinator', 103, '2013-11-01', '2016-02-29', 'Better opportunity'),
(41, 10013, 'Operations Manager', 103, '2016-03-01', '2019-12-31', 'Promotion'),
(42, 10014, 'Marketing Assistant', 101, '2015-02-01', '2017-06-30', 'Better opportunity'),
(43, 10014, 'Marketing Coordinator', 101, '2017-07-01', '2019-12-31', 'Promotion'),
(44, 10015, 'Software Developer', 101, '2016-01-01', '2018-06-30', 'Better opportunity'),
(45, 10015, 'Senior Software Developer', 101, '2018-07-01', '2019-12-31', 'Promotion'),
(46, 10016, 'Sales Associate', 101, '2017-05-01', '2019-12-31', 'Better opportunity'),
(47, 10016, 'Sales Representative', 101, '2020-01-01', '2021-12-31', 'Company downsizing'),
(48, 10017, 'Financial Analyst', 104, '2018-09-01', '2019-12-31', 'Contract ended'),
(49, 10017, 'Senior Financial Analyst', 104, '2020-01-01', '2021-12-31', 'Company restructuring'),
(50, 10018, 'Marketing Manager', 101, '2013-08-01', '2016-07-31', 'Better opportunity'),
(51, 10018, 'Senior Marketing Manager', 101, '2016-08-01', '2019-12-31', 'Promotion'),
(52, 10019, 'Human Resources Assistant', 102, '2015-06-01', '2017-12-31', 'Better opportunity'),
(53, 10019, 'Human Resources Coordinator', 102, '2018-01-01', '2019-12-31', 'Promotion'),
(54, 10020, 'Operations Assistant', 103, '2016-03-01', '2017-12-31', 'Better opportunity'),
(55, 10020, 'Operations Manager', 103, '2018-01-01', '2019-12-31', 'Promotion'),
(56, 10021, 'Software Engineer', 101, '2017-02-01', '2019-12-31', 'Better opportunity'),
(57, 10021, 'Senior Software Engineer', 101, '2020-01-01', '2021-12-31', 'Promotion'),
(58, 10022, 'Customer Service Representative', 103, '2015-09-01', '2018-12-31', 'Better opportunity'),
(59, 10022, 'Customer Service Manager', 103, '2019-01-01', '2019-12-31', 'Promotion'),
(60, 10023, 'Product Manager', 102, '2016-06-01', '2019-12-31', 'Better opportunity'),
(61, 10023, 'Senior Product Manager', 102, '2020-01-01', '2021-12-31', 'Promotion'),
(62, 10024, 'Sales Manager', 101, '2017-08-01', '2019-12-31', 'Better opportunity'),
(63, 10024, 'Senior Sales Manager', 101, '2020-01-01', '2021-12-31', 'Promotion'),
(64, 10025, 'IT Support Specialist', 104, '2018-02-01', '2019-12-31', 'Better opportunity'),
(65, 10025, 'IT Support Manager', 104, '2020-01-01', '2021-12-31', 'Promotion'),
(66, 10016, 'Sales Associate', 101, '2017-05-01', '2019-12-31', 'Better opportunity'),
(67, 10016, 'Sales Representative', 101, '2020-01-01', '2021-12-31', 'Company downsizing'),
(68, 10017, 'Financial Analyst', 104, '2018-09-01', '2019-12-31', 'Contract ended'),
(69, 10017, 'Senior Financial Analyst', 104, '2020-01-01', '2021-12-31', 'Company restructuring'),
(70, 10018, 'Marketing Manager', 101, '2013-08-01', '2016-07-31', 'Better opportunity'),
(71, 10018, 'Senior Marketing Manager', 101, '2016-08-01', '2019-12-31', 'Promotion'),
(72, 10019, 'Human Resources Assistant', 102, '2015-06-01', '2017-12-31', 'Better opportunity'),
(73, 10019, 'Human Resources Coordinator', 102, '2018-01-01', '2019-12-31', 'Promotion'),
(74, 10020, 'Operations Assistant', 103, '2016-03-01', '2017-12-31', 'Better opportunity'),
(75, 10020, 'Operations Manager', 103, '2018-01-01', '2019-12-31', 'Promotion'),
(76, 10021, 'Software Engineer', 101, '2017-02-01', '2019-12-31', 'Better opportunity'),
(77, 10021, 'Senior Software Engineer', 101, '2020-01-01', '2021-12-31', 'Promotion'),
(78, 10022, 'Customer Service Representative', 103, '2015-09-01', '2018-12-31', 'Better opportunity'),
(79, 10022, 'Customer Service Manager', 103, '2019-01-01', '2019-12-31', 'Promotion'),
(80, 10023, 'Product Manager', 102, '2016-06-01', '2019-12-31', 'Better opportunity'),
(81, 10023, 'Senior Product Manager', 102, '2020-01-01', '2021-12-31', 'Promotion'),
(82, 10024, 'Sales Manager', 101, '2017-08-01', '2019-12-31', 'Better opportunity'),
(83, 10024, 'Senior Sales Manager', 101, '2020-01-01', '2021-12-31', 'Promotion'),
(84, 10025, 'IT Support Specialist', 104, '2018-02-01', '2019-12-31', 'Better opportunity'),
(85, 10025, 'IT Support Manager', 104, '2020-01-01', '2021-12-31', 'Promotion');

-- --------------------------------------------------------

--
-- Table structure for table `salary_info`
--

CREATE TABLE `salary_info` (
  `salary_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `job_title` varchar(64) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `effective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_info`
--

INSERT INTO `salary_info` (`salary_id`, `employee_id`, `job_title`, `salary`, `effective_date`) VALUES
(1, 10001, 'Software Engineer', 50000, '2021-01-01'),
(2, 10002, 'Marketing Manager', 70000, '2021-01-01'),
(3, 10003, 'Sales Representative', 55000, '2021-01-01'),
(4, 10004, 'Operations Manager', 65000, '2021-01-01'),
(5, 10005, 'Human Resources Coordinator', 45000, '2021-01-01'),
(6, 10006, 'Software Engineer', 48000, '2021-01-01'),
(7, 10007, 'Marketing Associate', 40000, '2021-01-01'),
(8, 10008, 'Sales Representative', 50000, '2021-01-01'),
(9, 10009, 'Operations Assistant', 35000, '2021-01-01'),
(10, 10010, 'Human Resources Assistant', 30000, '2021-01-01'),
(11, 10011, 'Software Engineer', 52000, '2021-01-01'),
(12, 10012, 'Marketing Manager', 75000, '2021-01-01'),
(13, 10013, 'Sales Representative', 60000, '2021-01-01'),
(14, 10014, 'Operations Manager', 70000, '2021-01-01'),
(15, 10015, 'Human Resources Coordinator', 50000, '2021-01-01'),
(16, 10016, 'Software Engineer', 54000, '2021-01-01'),
(17, 10017, 'Marketing Associate', 42000, '2021-01-01'),
(18, 10018, 'Sales Representative', 52000, '2021-01-01'),
(19, 10019, 'Operations Assistant', 36000, '2021-01-01'),
(20, 10020, 'Human Resources Assistant', 32000, '2021-01-01'),
(21, 10021, 'Software Engineer', 56000, '2021-01-01'),
(22, 10022, 'Marketing Manager', 77000, '2021-01-01'),
(23, 10023, 'Sales Representative', 62000, '2021-01-01'),
(24, 10024, 'Operations Manager', 72000, '2021-01-01'),
(25, 10025, 'Human Resources Coordinator', 52000, '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `tac_info`
--

CREATE TABLE `tac_info` (
  `training_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `TAC_name` varchar(100) DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD PRIMARY KEY (`employment_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `salary_info`
--
ALTER TABLE `salary_info`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `tac_info`
--
ALTER TABLE `tac_info`
  ADD PRIMARY KEY (`training_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employment_history`
--
ALTER TABLE `employment_history`
  MODIFY `employment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD CONSTRAINT `employment_history_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `employment_history_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `salary_info`
--
ALTER TABLE `salary_info`
  ADD CONSTRAINT `salary_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `tac_info`
--
ALTER TABLE `tac_info`
  ADD CONSTRAINT `tac_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
