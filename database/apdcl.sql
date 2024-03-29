-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 11:45 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apdcl`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `userid`, `description`, `status`, `time`) VALUES
(1, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 06:56:34'),
(2, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 06:57:19'),
(3, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 06:57:59'),
(4, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 06:59:08'),
(5, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 06:59:51'),
(6, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 07:00:46'),
(7, 9, 'A material is issued', 'UPDATE', '2019-06-26 07:10:19'),
(8, 9, 'A material is issued', 'UPDATE', '2019-06-26 07:10:33'),
(9, 9, 'A material is issued ', 'UPDATE', '2019-06-26 07:29:49'),
(10, 9, 'A material is issued ', 'UPDATE', '2019-06-26 07:29:56'),
(11, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-26 07:36:45'),
(12, 5, 'password has been changed', 'INSERT', '2019-07-04 06:57:18'),
(13, 5, 'password has been changed', 'INSERT', '2019-07-04 07:05:45'),
(14, 5, 'password has been changed', 'INSERT', '2019-07-04 07:10:00'),
(15, 5, 'password has been changed', 'INSERT', '2019-07-04 07:10:26'),
(16, 5, 'password has been changed', 'INSERT', '2019-07-04 07:12:33'),
(17, 5, 'password has been changed', 'INSERT', '2019-07-04 07:16:15'),
(18, 5, 'password has been changed', 'INSERT', '2019-07-04 07:23:50'),
(19, 5, 'password has been changed', 'INSERT', '2019-07-04 07:25:08'),
(20, 9, 'A material is issued ', 'UPDATE', '2019-07-04 07:35:09'),
(21, 8, 'password has been changed', 'INSERT', '2019-07-04 08:06:00'),
(22, 10, 'password has been changed', 'INSERT', '2019-07-04 08:10:08'),
(23, 5, 'password has been changed', 'INSERT', '2019-07-04 08:12:56'),
(24, 5, 'password has been changed', 'INSERT', '2019-07-04 08:13:38'),
(25, 5, 'password has been changed', 'INSERT', '2019-07-09 19:23:57'),
(26, 5, 'A new record is updated from users table', 'INSERT', '2019-07-09 19:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `billtable`
--

CREATE TABLE `billtable` (
  `id` int(11) NOT NULL,
  `grsno` int(11) NOT NULL,
  `grsdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billtable`
--

INSERT INTO `billtable` (`id`, `grsno`, `grsdate`) VALUES
(1, 24355, '2019-06-22 06:56:17'),
(2, 5565, '2019-06-22 07:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `catname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`) VALUES
(1, 'AB '),
(2, 'c');

-- --------------------------------------------------------

--
-- Table structure for table `damage`
--

CREATE TABLE `damage` (
  `damid` int(11) NOT NULL,
  `mcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `damage`
--

INSERT INTO `damage` (`damid`, `mcode`, `quantity`) VALUES
(1, 4, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `divid` int(11) NOT NULL,
  `divname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`divid`, `divname`) VALUES
(1, 'Jorhat Electrical Division1'),
(2, 'Jorhat Electrical Division2'),
(5, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `iid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `issuedto` int(11) DEFAULT NULL,
  `issuedfrom` int(11) DEFAULT NULL,
  `quantityofreq` int(11) NOT NULL,
  `issuequan` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `mid` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`iid`, `date`, `issuedto`, `issuedfrom`, `quantityofreq`, `issuequan`, `rate`, `amount`, `remarks`, `mid`, `status`) VALUES
(1, '2019-06-26 07:04:36', 7, 2, 1, 1, 13000, 13000, 'done', 1, 'approved'),
(2, '2019-06-26 07:06:20', 8, 2, 2, 1, 120, 120, 'done', 2, 'approved'),
(3, '2019-06-26 07:29:41', 6, 2, 2, 1, 1000, 1000, '', 1, 'pending'),
(4, '2019-06-26 07:31:00', 6, 2, 2, 1, 1000, 1000, 'DONE', 1, 'approved'),
(5, '2019-07-04 07:35:01', 8, 2, 2, 3, 12000, 36000, 'done', 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `mid` int(11) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `make` varchar(40) NOT NULL,
  `t_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `remarks` varchar(40) NOT NULL,
  `catid` int(11) NOT NULL,
  `matcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`mid`, `mname`, `make`, `t_id`, `remarks`, `catid`, `matcode`) VALUES
(1, 'Transformer', 'TATA', 8, 'DONE', 1, '1001'),
(2, 'raincoat', 'jesk', 9, 'dsfdsf', 2, 'f001'),
(3, 'Gong', 'TATA', 7, 'DONE', 1, '1002'),
(4, 'gong', 'tata', 2, 'good', 2, '1003');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender`, `receiver`, `message`, `time`) VALUES
(1, 5, 8, 'hello', '2019-06-24 06:49:28'),
(2, 8, 5, 'aajo', '2019-06-24 16:18:47'),
(3, 5, 8, 'hello', '2019-06-24 16:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `usend` int(11) NOT NULL,
  `description` varchar(40) NOT NULL,
  `whom_to_notify` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `usend`, `description`, `whom_to_notify`, `time`) VALUES
(5, 5, 'the item has been approved', 1, '2019-06-25 12:33:19'),
(12, 5, 'the item has been approved', 2, '2019-06-26 07:31:00');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stockid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mfgdate` date NOT NULL,
  `expirydate` date NOT NULL,
  `rate` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `grsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stockid`, `quantity`, `mfgdate`, `expirydate`, `rate`, `mid`, `grsid`) VALUES
(1, 10, '1999-06-05', '2019-06-30', 10000, 1, 2),
(2, 12, '2000-06-01', '2019-06-30', 120, 2, 1),
(3, 12, '1999-06-04', '2019-06-30', 13000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subdivision`
--

CREATE TABLE `subdivision` (
  `sdivid` int(11) NOT NULL,
  `sdivname` varchar(100) NOT NULL,
  `divid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subdivision`
--

INSERT INTO `subdivision` (`sdivid`, `sdivname`, `divid`) VALUES
(2, 'Jorhat ESD1', 1),
(3, 'Jorhat ESD2', 1),
(4, 'Jorhat ESD3', 1),
(5, 'Degaon ESD', 1),
(6, 'Mariani ESD', 2),
(7, 'Titabor ESD', 2),
(8, 'Majuli ESD', 2);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'Rabit'),
(2, 'Weasel'),
(3, 'Raccon'),
(4, 'Wolf'),
(5, 'Panther'),
(6, 'Dog'),
(7, '11kv'),
(8, '33kv'),
(9, 'Not Available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `usertypes` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userpic` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `dob` date NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` int(11) NOT NULL,
  `divid` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `usertypes`, `username`, `password`, `userpic`, `firstname`, `lastname`, `gender`, `dob`, `phone`, `email`, `country`, `state`, `city`, `pincode`, `divid`, `designation`, `status`) VALUES
(5, 1, 'ADMIN', '$2y$10$ODntOPk41DemroAd6HWIIOqs4H59MR/PvQIEPkOv0KqRUwkL83rTm', 'uploads/avatar-02.jpg', 'Inventory', 'Admin', 1, '1998-10-07', 8471923027, 'pallabidevi1997@gmail.com', 'india', 'assam', 'guwahati', 781028, 5, 'des', 'Sleeping'),
(8, 2, 'pallu', '$2y$10$QY08Gkvtki3t7IkhbLgrKu1RUjyIPQYwH9on2AFmUuP04Gjl/xvf.', 'uploads/avatar-05.jpg', 'pallabi', 'devi', 2, '1998-11-18', 9956711465, 'pallabi1997@gmail.com', 'India', 'Assam', 'Jorhat', 781001, 1, 'software developer', 'Battry about to die'),
(9, 3, 'dipankar', '$2y$10$EEdMl8puqG6byjjmP1KjTu0CUe1fbo/rpWINQaiEO0xLaPm72ESBW', 'uploads/avatar-04.jpg', 'deepankar', 'garg', 1, '1994-12-07', 7399898339, 'v.ray96610@gmail.com', 'India', 'Assam', 'Guwahati', 781028, 2, 'manager', 'At Gym'),
(10, 1, 'sayan', '$2y$10$vXX9ECVMN9..d0JuqGr/n.oA6b93Y.gSn4k5ebwUAAAnzVwnvhYWS', 'uploads/avatar-big-01.jpg', 'Sayan', 'Borah', 1, '1997-06-30', 987654321, 'saya@gmail.com', 'India', 'ASSAM', 'JORHAT', 785009, 5, 'tester', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billtable`
--
ALTER TABLE `billtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `damage`
--
ALTER TABLE `damage`
  ADD PRIMARY KEY (`damid`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`divid`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `sub_issue_id_fk` (`issuedto`),
  ADD KEY `div_issue_id_fk` (`issuedfrom`),
  ADD KEY `mat_issue_id_fk` (`mid`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `cat_materials_id_fk` (`catid`),
  ADD KEY `types_materials_id_fk` (`t_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stockid`),
  ADD KEY `stock_material_id_fk` (`mid`);

--
-- Indexes for table `subdivision`
--
ALTER TABLE `subdivision`
  ADD PRIMARY KEY (`sdivid`),
  ADD KEY `sub_div_id_fk` (`divid`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `use_division_id_fk` (`divid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `billtable`
--
ALTER TABLE `billtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `damage`
--
ALTER TABLE `damage`
  MODIFY `damid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `divid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subdivision`
--
ALTER TABLE `subdivision`
  MODIFY `sdivid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issue`
--
ALTER TABLE `issue`
  ADD CONSTRAINT `mat_issue_id_fk` FOREIGN KEY (`mid`) REFERENCES `materials` (`mid`) ON DELETE CASCADE;

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `cat_materials_id_fk` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`) ON DELETE CASCADE,
  ADD CONSTRAINT `types_materials_id_fk` FOREIGN KEY (`t_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stock_material_id_fk` FOREIGN KEY (`mid`) REFERENCES `materials` (`mid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
