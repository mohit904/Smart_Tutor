-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 07:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(26) NOT NULL,
  `password` varchar(26) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `parentemail` varchar(100) NOT NULL,
  `teacheremail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `password`, `email`, `phone`, `parentemail`, `teacheremail`) VALUES
('Mohit Jain', 'mohit12345', 'pmsurana2014@gmail.com', '+919042849002', 'pmsurana2014@gmail.com', 'mohitjainhema@gmail.com'),
('Shampavi', 'sham2111', 'shampavi.b@gmail.com', '9940074877', 'mohitjainhema@gmail.com', 'mohitjainhema@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(26) NOT NULL,
  `email` varchar(26) NOT NULL,
  `password` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `email`, `password`) VALUES
('Mohit', 'pmsurana2014@gmail.com', 'admin12345');

-- --------------------------------------------------------

--
-- Table structure for table `currentusers`
--

CREATE TABLE `currentusers` (
  `username` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `email` varchar(100) NOT NULL,
  `otpnumber` int(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quizmarks`
--

CREATE TABLE `quizmarks` (
  `username` varchar(26) NOT NULL,
  `class` varchar(26) NOT NULL,
  `subject` varchar(26) NOT NULL,
  `activity` varchar(26) NOT NULL,
  `marks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizmarks`
--

INSERT INTO `quizmarks` (`username`, `class`, `subject`, `activity`, `marks`) VALUES
('Mohit Jain', 'Class 12', 'English', 'Unit 1 quiz', 8),
('Mohit Jain', 'Class LKG', 'Story Learning', 'Story1 quiz', 10),
('Mohit Jain', 'Class LKG', 'Word Learning', 'Set 1 pictionary', 10),
('Shampavi', 'Class LKG', 'Word Learning', 'Set 1 pictionary', 9),
('Shampavi', 'Class LKG', 'Story Learning', 'Story1 quiz', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `currentusers`
--
ALTER TABLE `currentusers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
