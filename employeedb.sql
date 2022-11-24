-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 12:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `empcode` int(11) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `empcode`, `empname`, `designation`, `salary`, `companyname`, `phone`, `emailid`, `password`) VALUES
(1, 1001, 'liju', 'webEngineer', 30000, 'infratech', 1287963125, 'lijubiju123@gmail.com', 'lijubiju123'),
(2, 1002, 'saju', 'aws', 16500, 'intranet', 1451327541, 'saju00@gmail.com', 'saju47'),
(3, 1003, 'alan', 'system analyst', 28500, 'heyday', 1956231245, 'alan22@gmail.com', 'alan'),
(4, 1004, 'jerin', 'aws', 16500, 'intranet', 8754646642, 'jerinj00@gmail.com', '123'),
(5, 1005, 'merlin', 'system analyst', 28500, 'heyday', 8754216532, 'merlin@gmail.com', 'merlin123'),
(6, 1006, 'kiran', 'aws', 28500, 'infratech', 5478913265, 'kiran098@gmail.com', '121212'),
(7, 1007, 'sibin', 'webEngineer', 30000, 'heyday', 4587965321, 'sibincyriac@gmail.com', 'sibichan123'),
(8, 1008, 'vishak', 'operator', 42800, 'bsnl', 9856148523, 'vishak@gmail.com', '1512106'),
(9, 1009, 'jebin', 'senior techy', 80000, 'nest', 9632487956, 'jebin@gmail.com', 'ss545982'),
(10, 1010, 'helen', 'system analyst', 16500, 'nest', 89564789542, 'helen@1234445', '121255'),
(11, 1011, 'hulk', 'aws', 55000, 'nest', 8925102365, 'hilk@gmail.com', '123'),
(12, 1012, 'juke', 'aws', 55000, 'nest', 4525102365, 'juke@gmail.com', '123'),
(13, 1013, 'tim', 'aws', 55000, 'nest', 9925102365, 'tim@gmail.com', '123'),
(14, 1014, 'jacobkutty', 'aws', 12000, 'malabar', 4578965478, 'jaco', '12222');

-- --------------------------------------------------------

--
-- Table structure for table `highsalary_emp`
--

CREATE TABLE `highsalary_emp` (
  `id` int(11) NOT NULL,
  `h_name` varchar(50) NOT NULL,
  `h_designation` varchar(50) NOT NULL,
  `h_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `highsalary_emp`
--

INSERT INTO `highsalary_emp` (`id`, `h_name`, `h_designation`, `h_salary`) VALUES
(23, 'jebin', 'senior techy', 80000),
(24, 'hulk', 'aws', 55000),
(25, 'juke', 'aws', 55000),
(26, 'tim', 'aws', 55000),
(27, 'dan', 'aws', 70000),
(28, 'leo', 'aws', 65700),
(29, 'james', 'senior engineer', 52300);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `task_title` varchar(20) NOT NULL,
  `task_date` date NOT NULL,
  `task_due_date` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `emp_id`, `task_title`, `task_date`, `task_due_date`, `status`) VALUES
(1, 1, 'error check', '2022-10-31', '2022-11-15', 'on work'),
(2, 2, 'front end ', '2022-10-31', '2022-10-20', 'completed'),
(3, 3, 'back end', '2022-10-04', '2022-10-20', 'not completed'),
(4, 4, 'error check', '2022-10-04', '2022-10-02', 'on work'),
(5, 5, 'back end', '2022-10-01', '2022-10-29', 'not completed'),
(6, 6, 'aws', '2022-10-05', '2022-10-28', 'completed'),
(7, 7, 'back end', '2022-10-05', '2022-10-20', 'on work'),
(8, 8, 'aws', '2022-10-18', '2022-10-27', 'not completed'),
(9, 9, 'error check', '2022-10-15', '2022-10-16', 'not completed'),
(10, 10, 'front end ', '2022-10-26', '2022-10-28', 'not completed'),
(11, 11, 'front end ', '2022-10-02', '2019-06-19', 'completed'),
(12, 12, 'front end ', '2022-10-12', '2015-02-10', 'on work'),
(13, 13, 'debug', '2022-06-14', '2022-10-01', 'delivered'),
(14, 14, 'execution', '2022-10-27', '2022-10-29', 'delivered'),
(15, 15, 'aws', '2022-10-15', '2023-01-18', 'delivered');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highsalary_emp`
--
ALTER TABLE `highsalary_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `highsalary_emp`
--
ALTER TABLE `highsalary_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
