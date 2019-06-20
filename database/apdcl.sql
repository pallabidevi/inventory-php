-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 01:53 PM
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
(1, 5, 'A new record inserted in Material table', 'INSERT', '2019-05-22 09:43:45'),
(2, 5, 'A new record inserted into subdivision table', 'INSERT', '2019-05-23 05:08:12'),
(3, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-23 07:31:56'),
(4, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-23 07:32:58'),
(5, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-23 07:33:48'),
(6, 5, 'A new record inserted in Material table', 'INSERT', '2019-05-23 10:50:14'),
(7, 0, 'A new record is updated in materials table', 'INSERT', '2019-05-23 17:15:48'),
(8, 0, 'A new record is updated in materials table', 'INSERT', '2019-05-23 17:18:54'),
(9, 5, 'A new record inserted into category table ', 'INSERT', '2019-05-23 17:22:09'),
(10, 5, 'A new record inserted in Material table', 'INSERT', '2019-05-23 19:05:57'),
(11, 5, 'A new record is updated in materials table', 'INSERT', '2019-05-24 06:59:23'),
(12, 5, 'A new record is updated in materials table', 'INSERT', '2019-05-24 06:59:52'),
(13, 5, 'A new record is updated in materials table', 'INSERT', '2019-05-24 07:01:18'),
(14, 5, 'password has been changed', 'INSERT', '2019-05-24 07:06:53'),
(15, 5, 'password has been changed', 'INSERT', '2019-05-24 07:13:30'),
(16, 5, 'A user has updated his pic', 'UPDATE', '2019-05-24 07:47:05'),
(17, 5, 'A user has updated his pic', 'UPDATE', '2019-05-24 07:47:18'),
(18, 5, 'A user has updated his pic', 'UPDATE', '2019-05-24 07:47:33'),
(19, 8, 'A user has updated his pic', 'UPDATE', '2019-05-24 08:40:28'),
(20, 0, 'A new record is updated in materials table', 'INSERT', '2019-05-24 08:44:57'),
(21, 5, 'A user has updated his pic', 'UPDATE', '2019-05-24 09:50:10'),
(22, 5, 'A new record inserted in Material table', 'INSERT', '2019-05-24 09:54:16'),
(23, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:16:26'),
(24, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:19:40'),
(25, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:23:20'),
(26, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:24:36'),
(27, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:25:11'),
(28, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:37:23'),
(29, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-05-25 06:38:59'),
(30, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-05-25 07:25:01'),
(31, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-06 09:01:32'),
(32, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:35:43'),
(33, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:40:25'),
(34, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:41:33'),
(35, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:43:43'),
(36, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:45:18'),
(37, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:47:28'),
(38, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:49:03'),
(39, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:51:38'),
(40, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:52:02'),
(41, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 10:54:36'),
(42, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-06 18:20:51'),
(43, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-06 19:54:39'),
(44, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-07 05:28:15'),
(45, 5, 'A new record is updated in materials table', 'INSERT', '2019-06-07 05:55:23'),
(46, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-07 05:56:06'),
(47, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-07 06:10:12'),
(48, 5, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-07 06:33:41'),
(49, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-07 08:24:17'),
(50, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-08 07:16:19'),
(51, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-08 07:18:56'),
(52, 5, 'A new record inserted into division table', 'INSERT', '2019-06-10 08:42:55'),
(53, 5, 'A new record inserted into subdivision table', 'INSERT', '2019-06-10 08:43:28'),
(54, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-11 06:34:44'),
(55, 5, 'A new record inserted in bill table', 'INSERT', '2019-06-11 07:26:52'),
(56, 5, 'A new record inserted in bill table', 'INSERT', '2019-06-11 07:26:59'),
(57, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-11 07:32:56'),
(58, 5, 'A new record is updated in materials table', 'INSERT', '2019-06-11 08:21:50'),
(59, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-11 08:50:49'),
(60, 8, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-15 10:39:49'),
(61, 8, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-15 10:44:53'),
(62, 8, 'A new record inserted into damage table and quanti', 'INSERT', '2019-06-15 16:53:05'),
(63, 5, 'A user has updated his pic', 'UPDATE', '2019-06-16 19:37:28'),
(64, 9, 'A user has updated his pic', 'UPDATE', '2019-06-16 19:49:40'),
(65, 8, 'A user has updated his pic', 'UPDATE', '2019-06-16 20:02:17'),
(66, 8, 'A user has updated his pic', 'UPDATE', '2019-06-16 20:02:41'),
(67, 9, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-16 21:11:36'),
(68, 9, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-17 06:44:47'),
(69, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-17 13:36:58'),
(70, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-17 14:04:44'),
(71, 5, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-17 14:06:31'),
(72, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-17 14:40:47'),
(73, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 06:40:06'),
(74, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 06:50:37'),
(75, 9, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 07:20:11'),
(76, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 07:29:13'),
(77, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 07:43:26'),
(78, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 08:12:42'),
(79, 9, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-18 08:15:44'),
(80, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-19 07:28:25'),
(81, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-19 08:07:08'),
(82, 5, 'A new record inserted in Material table', 'INSERT', '2019-06-19 08:09:12'),
(83, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-19 08:11:25'),
(84, 8, 'A new record inserted into damage table and quanti', 'UPDATE', '2019-06-19 08:11:34');

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
(1, 234, '2019-06-11 07:04:24'),
(2, 233, '2019-06-11 07:21:23'),
(3, 233, '2019-06-11 07:26:52'),
(4, 1, '2019-06-11 07:26:59');

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
(1, 'AB'),
(2, 'C'),
(4, 'rest'),
(5, 'test');

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
(32, 9, 2),
(33, 10, 2),
(34, 10, 2),
(35, 10, 3),
(36, 17, 1),
(37, 17, 1),
(38, 0, 0);

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
(78, '2019-06-18 06:21:31', 3, 1, 2, 1, 100, 100, 'jgy', 10, 'approved'),
(79, '2019-06-18 06:21:55', 4, 1, 1, 1, 1000, 1000, 'gjhgk', 17, 'approved'),
(80, '2019-06-18 06:41:11', 3, 1, 1, 1, 100, 100, 'jjioj', 10, 'approved'),
(81, '2019-06-18 07:10:42', 3, 1, 3, 1, 500, 500, 'hg', 10, 'approved'),
(82, '2019-06-18 07:27:14', 7, 2, 1, 1, 500, 500, 'lkljklj', 17, 'approved'),
(83, '2019-06-18 07:29:08', 4, 1, 1, 1, 100, 100, 'jihoh', 10, 'pending'),
(84, '2019-06-18 07:39:15', 4, 1, 1, 1, 500, 500, 'gjf', 17, 'pending'),
(85, '2019-06-19 08:12:59', 4, 1, 1, 1, 500, 500, 'gjf', 17, 'approved'),
(86, '2019-06-18 07:46:41', 4, 1, 1, 1, 500, 500, 'gjf', 17, 'approved'),
(87, '2019-06-18 08:13:34', 4, 1, 1, 1, 500, 500, 'njknl', 17, 'approved'),
(88, '2019-06-18 08:16:41', 7, 2, 1, 1, 100, 100, 'sed', 10, 'approved'),
(89, '2019-06-19 07:29:23', 3, 1, 1, 1, 100, 100, 'vjgk', 10, 'approved'),
(90, '2019-06-19 08:11:15', 3, 1, 1, 1, 300, 300, 'hihi', 10, 'pending'),
(91, '2019-06-19 08:11:25', 3, 1, 1, 1, 300, 300, 'hihi', 10, 'pending');

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
(9, 'transformer', 'Desd', 1, 'good', 1, 'db66'),
(10, 'raincoat', 'jesk', 9, 'nice1', 2, 'yu77'),
(11, 'gong', 'Desd', 8, 'nice1', 1, 'hk77'),
(12, 'screw', 'feer', 9, 'jhygjhy', 2, 'sc12'),
(15, 'wire', 'feer', 9, 'good', 2, 'hh99'),
(17, 'huit', 'desd', 7, 'ghg', 1, 'd007'),
(18, 'goood', 'TATA', 8, 'DONE', 1, 'fyyfut'),
(19, 'helmet', 'jesk', 9, 'DONE', 2, 'fyy1'),
(20, 'fgdtyg', 'tt7', 9, 'ouo', 1, 'ryt68');

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
(1, 8, 5, 'hi', '2019-06-15 09:03:08'),
(2, 5, 8, 'hello', '2019-06-15 09:35:17'),
(3, 5, 8, 'heeeelllooo', '2019-06-15 09:43:47'),
(4, 8, 5, 'chalo', '2019-06-15 09:44:13'),
(5, 5, 8, 'gfyufyfdydcuy', '2019-06-15 09:49:23'),
(6, 8, 5, 'yes', '2019-06-15 10:53:04'),
(7, 5, 8, 'thik hai', '2019-06-15 11:02:13');

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
(4, 5, 'the item has been approved', 2, '2019-06-18 08:16:41'),
(7, 1, 'there is a item in pending to be approve', 5, '2019-06-19 08:11:25');

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
(1, 10, '2019-05-01', '2019-07-02', 1000, 10, 1),
(2, 18, '2019-05-01', '2019-09-20', 12000, 17, 4),
(3, 7, '2019-05-01', '2019-05-08', 2000, 10, 2),
(5, 10, '2019-06-07', '2022-06-07', 12000, 11, 4),
(6, 18, '2012-06-01', '2019-06-20', 455, 17, 2),
(7, 1, '2019-06-07', '2019-06-08', 300, 20, 4);

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
(8, 'Majuli ESD', 2),
(9, 'jsd2', 2),
(10, 'JESD-I', 1);

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
(5, 1, 'swastika', '$2y$10$01q.mGhEuOHtKcogaSGCyeynGUVE/s/W40QGYvulSqQoGbKa96fGa', 'uploads/avatar-02.jpg', 'swastika', 'garg', 2, '1998-10-07', 8471923027, 'swas@gmail.com', 'india', 'assam', 'guwahati', 781028, 5, 'des', 'Sleeping'),
(8, 2, 'pallu', '$2y$10$UvwwPInw4ifixRymPYgrVO4.7vhIObqwj5ItVLoGup9wZvo6AVruK', 'uploads/avatar-05.jpg', 'pallabi', 'devi', 2, '1998-11-18', 9956711465, 'polo@gmail.com', 'India', 'Assam', 'Jorhat', 781001, 1, 'software developer', 'Battry about to die'),
(9, 3, 'dipankar', '$2y$10$eAOw7JWbXW8BLmdbL2zaqemYtSCFKUj/sFVQ9LJrCvH04Ge6ebgiq', 'uploads/avatar-04.jpg', 'deepankar', 'garg', 1, '1994-12-07', 7399898339, 'deep@gmail.com', 'India', 'Assam', 'Guwahati', 781028, 2, 'manager', 'At Gym');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `billtable`
--
ALTER TABLE `billtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `damage`
--
ALTER TABLE `damage`
  MODIFY `damid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `divid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subdivision`
--
ALTER TABLE `subdivision`
  MODIFY `sdivid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
