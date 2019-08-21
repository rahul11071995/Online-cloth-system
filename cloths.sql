-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 01:09 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloths`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_product`
--

CREATE TABLE `c_product` (
  `p_id` int(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_product`
--

INSERT INTO `c_product` (`p_id`, `p_name`, `p_details`) VALUES
(2, 'jeans', ''),
(3, 't-shirt', '');

-- --------------------------------------------------------

--
-- Table structure for table `c_user`
--

CREATE TABLE `c_user` (
  `u_id` int(50) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_dob` date NOT NULL,
  `u_gender` varchar(50) NOT NULL,
  `u_type` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_user`
--

INSERT INTO `c_user` (`u_id`, `u_name`, `u_password`, `u_dob`, `u_gender`, `u_type`, `u_email`) VALUES
(1, 'rahul', '123', '1995-03-11', 'male', 'admin', 'rahul@gmail.com'),
(2, 'sifat', '159', '1997-03-08', 'male', 'admin', 'sifat@gmail.com'),
(3, 'rifat', '789', '1996-05-06', 'male', 'customer', 'rifatron999@gmail.com'),
(4, 'irin', '153', '1996-08-08', 'female', 'customer', 'irin@gmail.com'),
(5, 'zeba', '459', '1993-07-05', 'female', 'customer', 'zeba@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

CREATE TABLE `t_users` (
  `u_id` int(50) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_password` varchar(100) NOT NULL,
  `u_dob` varchar(50) DEFAULT NULL,
  `u_gender` varchar(100) DEFAULT NULL,
  `u_email` varchar(150) DEFAULT NULL,
  `u_phone` int(50) NOT NULL,
  `u_type` varchar(100) DEFAULT NULL,
  `u_dept` varchar(100) DEFAULT NULL,
  `u_report` int(50) DEFAULT NULL,
  `u_pic` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`u_id`, `u_name`, `u_password`, `u_dob`, `u_gender`, `u_email`, `u_phone`, `u_type`, `u_dept`, `u_report`, `u_pic`) VALUES
(1, 'rifat', '1', '24-08-1995', 'male', 'rifatron999@gmail.com', 1824318212, 'admin', NULL, 0, NULL),
(2, 'sifat', '1', '24-08-1995', 'male', 'sifat@gmail.com', 0, 'user', NULL, 0, NULL),
(3, 'rahul', '1', '24-08-1995', 'male', 'rahul@gmail.com', 0, 'user', NULL, 0, NULL),
(4, 'irin', '1', '24-08-1995', 'female', 'irin@gmail.com', 0, 'user', NULL, 0, NULL),
(5, 'joy', '1', '24-08-1995', 'male', 'joy@gmail.com', 0, 'user', NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_product`
--
ALTER TABLE `c_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `c_user`
--
ALTER TABLE `c_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_product`
--
ALTER TABLE `c_product`
  MODIFY `p_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `c_user`
--
ALTER TABLE `c_user`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
