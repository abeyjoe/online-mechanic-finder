-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2025 at 06:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinemachanicfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_username` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_username`, `admin_password`) VALUES
(1, 'Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(1, 'Ibadan'),
(2, 'Lagos');

-- --------------------------------------------------------

--
-- Table structure for table `city_area`
--

CREATE TABLE `city_area` (
  `area_id` int(100) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `area_city` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city_area`
--

INSERT INTO `city_area` (`area_id`, `area_name`, `area_city`) VALUES
(1, 'Songo', 1),
(2, 'Apete', 1),
(3, 'Eleyele', 1),
(4, 'UI', 1),
(5, 'Moniya', 1),
(6, 'Iwo Road', 1),
(7, 'Challenge', 1),
(8, 'Bodija', 1),
(9, 'Ikeja', 2),
(10, 'Ojoo', 1),
(11, 'Osapa London', 2),
(12, 'Chisco', 2),
(13, 'VGC', 2),
(14, 'Lekki Phase 1', 2),
(15, 'Ajah', 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(100) NOT NULL,
  `feedback_job` int(100) NOT NULL,
  `feedback_proffessional` int(100) NOT NULL,
  `feedback_user` int(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `feedback_comments` text NOT NULL,
  `feedback_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(50) NOT NULL,
  `user_id` int(100) NOT NULL,
  `job_machanic` int(100) NOT NULL,
  `job_date` datetime NOT NULL,
  `job_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `user_id`, `job_machanic`, `job_date`, `job_status`) VALUES
(1, 1, 1, '2025-09-04 16:21:52', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `professional`
--

CREATE TABLE `professional` (
  `mechanic_id` int(200) NOT NULL,
  `mechanic_Fullname` varchar(200) NOT NULL,
  `mechanic_cnic` bigint(200) NOT NULL,
  `mechanic_address` varchar(200) NOT NULL,
  `mechanic_city` varchar(200) NOT NULL,
  `machanic_city_area` int(50) NOT NULL,
  `mechanic_contact` bigint(200) NOT NULL,
  `mechanic_email` varchar(200) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `rate_per_hour` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `profile_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `professional`
--

INSERT INTO `professional` (`mechanic_id`, `mechanic_Fullname`, `mechanic_cnic`, `mechanic_address`, `mechanic_city`, `machanic_city_area`, `mechanic_contact`, `mechanic_email`, `experience`, `rate_per_hour`, `password`, `status`, `profile_photo`) VALUES
(1, 'Engineer Hammed', 100295, 'Machanic Village along Prime Mars Supermarket, Apete, Ibadan      ', '1', 2, 70200944097, 'hammed@gmail.com', 'Expert', 9000, 'hammed', 'Active', 'user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(200) NOT NULL,
  `user_Fullname` varchar(200) NOT NULL,
  `user_cnic` bigint(200) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `user_city` varchar(200) NOT NULL,
  `user_contact` bigint(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_Fullname`, `user_cnic`, `user_address`, `user_city`, `user_contact`, `user_email`, `user_password`) VALUES
(1, 'Daniel Ola', 500297, 'Poly Gate ', 'Ibadan', 7049208806, 'daniel@gmail.com', 'daniel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `city_area`
--
ALTER TABLE `city_area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `professional`
--
ALTER TABLE `professional`
  ADD PRIMARY KEY (`mechanic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city_area`
--
ALTER TABLE `city_area`
  MODIFY `area_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professional`
--
ALTER TABLE `professional`
  MODIFY `mechanic_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
