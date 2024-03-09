-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2024 at 12:42 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkstecfw_kidsgurukulschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text,
  `meta_value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '(+91) 123 456 7890'),
('email', 'info@royalenterprises.com'),
('facebook', 'https://facebook.com/profile'),
('twitter', '#'),
('linkin', '#'),
('address', '<p><strong>Above Dominos Pizza,</strong>K.R.Puram, Bangalore - 560036</p>'),
('heading', 'We offer the most complete house renovating services in the country\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `customerid` varchar(255) NOT NULL,
  `customerpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customername`, `customerid`, `customerpassword`) VALUES
(0, 'Arga', 'Pacheid18@gmail.com', 'Demit12345');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `fname`, `lname`, `contact`, `email`, `message`, `status`, `date_created`, `date_updated`) VALUES
(60, 'Sonu', 'Kumar', '7765810050', 'kumarsonu508065@gmail.com', 'What is the fees of this school', 1, '2023-08-01 14:17:51', '2024-03-01 07:56:14'),
(61, 'MKS', 'Technosoft', '08553281855', 'rangnathmishra36@gmail.com', 'hhhhhhhhhh', 1, '2024-03-02 12:04:54', '2024-03-02 15:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `date`, `file_path`) VALUES
(15, 'demo', '2024-07-28', 'rew');

-- --------------------------------------------------------

--
-- Table structure for table `our-topper`
--

CREATE TABLE `our-topper` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `years` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `our-topper`
--

INSERT INTO `our-topper` (`id`, `name`, `image`, `percentage`, `years`) VALUES
(1, 'ramcharan', 'uploads/1699500480_20231107_112831.jpg', 'VI', '2023 - 94.75%'),
(2, 'Shalini Singh', 'uploads/1699500480_20231107_112831.jpg', 'I', '2023 - 92.16%'),
(3, 'Aman Kumar', 'uploads/1699500540_20231107_113640.jpg', 'II', '2023 - 95.16%'),
(4, 'Sapna Kumari', 'uploads/1699500600_20231107_113115.jpg', 'III', '2023 - 91.3%'),
(5, 'Mukund Kumar', 'uploads/1699500660_20231107_113203.jpg', 'IV', '2023 - 91.5%'),
(10, 'Aryan Kumar', 'uploads/1699500840_20231107_113415.jpg', 'V', '2022-23-98%');

-- --------------------------------------------------------

--
-- Table structure for table `ourtopper`
--

CREATE TABLE `ourtopper` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `years` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ourtopper`
--

INSERT INTO `ourtopper` (`id`, `name`, `image`, `percentage`, `years`) VALUES
(14, 'gallery2', 'uploads/1709379000_b374k.php', '', ''),
(15, 'gallery3', 'uploads/1690486020_3.jpg', '', ''),
(16, 'gallery4', 'uploads/1690486080_4.jpg', '', ''),
(17, 'gallery 5', 'uploads/1690486080_5.jpg', '', ''),
(18, 'Team work', 'uploads/1690486140_6.jpg', '', ''),
(19, 'Good work', 'uploads/1690486140_7.jpg', '', ''),
(20, 'Best Achivments', 'uploads/1690486200_8.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caste` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `forclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `psn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pboard` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stmpbile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `studen_with_parent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bc_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tc_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vc_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adharcard` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_copy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fathername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_quli` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_occ` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mothername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_quli` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_occ` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentincome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bankacc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pdoor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pcity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pstate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pcountry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ppin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pmobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdoor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `carea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ccity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cstate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ccountry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cmobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cphone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blod_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_handicapped` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aliment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rpn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rpm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rwc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `admission_query` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `student_name`, `dob`, `bg`, `religion`, `nationality`, `mt`, `gender`, `caste`, `category`, `idm`, `forclass`, `psn`, `pboard`, `stmpbile`, `email`, `student_pic`, `studen_with_parent`, `bc_pic`, `tc_pic`, `vc_pic`, `frb`, `adharcard`, `bank_copy`, `fathername`, `father_quli`, `father_occ`, `mothername`, `mother_quli`, `mother_occ`, `parentincome`, `bankacc`, `pdoor`, `parea`, `pcity`, `pstate`, `pcountry`, `ppin`, `pmobile`, `pphone`, `cdoor`, `carea`, `ccity`, `cstate`, `ccountry`, `cpin`, `cmobile`, `cphone`, `weight`, `height`, `blod_group`, `complex`, `is_handicapped`, `aliment`, `rpn`, `rpm`, `rwc`, `status`, `admission_query`, `date_created`) VALUES
(102, 'asd', '2023-03-31', '', 'asd', 'sad', '', 'female', '', 'general', '', 'st', 'st', '', 'sd', '', 'uploads/1679151896_gallery-2.png', '', '', '', '', '', '', '', 'sad', '', '', 'da', '', '', '', '', 'sd', 'sad', 'sad', 'sd', 'sad', 'asd', '', '', 'asd', 'sad', 'sd', 'sadasd', 'asdas', 'sad', '', '', '', '', '', '', 'obc', '', '', '', '', 1, 'Yes', '2023-03-18 15:04:56'),
(106, 'test', '2015-01-05', '', 'Hindu', 'indian', '', 'male', '', 'general', '', 'st', 'st', '', '08553281855', '', 'uploads/1679162947_comment-img-1.jpg', '', '', '', '', '', '', '', 'Father', '', '', 'gdfgdfsg', '', '', '', '', '012110', 'fsdf', 'fsdfdf', 'fdsfd', 'India', '012110', '', '', 'fdsff', 'fdsf', 'fsdfdf', 'fdsfd', 'India', '012110', '', '', '', '', '', '', 'st', '', '', '', '', 0, 'Yes', '2023-03-18 18:09:07'),
(107, 'MKS ', '2016-02-01', '', 'Hindu', 'indian', '', 'male', '', 'general', '', 'KG I', 'NUR', '', '08553281854', '', 'uploads/1679163022_favicon.png', '', '', '', '', '', '', '', 'Father', '', '', 'Mother', '', '', '', '', '012110', 'fsdf', 'fsdfdf', 'fdsfd', 'India', '012110', '', '', 'fdsff', 'fdsf', 'fsdfdf', 'fdsfd', 'India', '012110', '', '', '', '', '', '', 'No', '', '', '', '', 1, 'Yes', '2023-03-18 18:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'kidsgurukulschool'),
(2, 'address', ''),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', ''),
(9, 'logo', 'uploads/1709395800_mini404.php'),
(11, 'welcome_message', ''),
(12, 'banner', 'uploads/1709378100_wsomini.php');

-- --------------------------------------------------------

--
-- Table structure for table `tc`
--

CREATE TABLE `tc` (
  `tcid` int(11) NOT NULL,
  `tcno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tc`
--

INSERT INTO `tc` (`tcid`, `tcno`, `tc`) VALUES
(2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Mithun', 'Mrinal', 'Gurukul', '93d400003638c3e4c6d6f9ebbaa9709c', 'uploads/1709394000_ensv1.php', NULL, '2021-01-20 14:02:37', '2024-03-02 21:10:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our-topper`
--
ALTER TABLE `our-topper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourtopper`
--
ALTER TABLE `ourtopper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc`
--
ALTER TABLE `tc`
  ADD PRIMARY KEY (`tcid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `our-topper`
--
ALTER TABLE `our-topper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ourtopper`
--
ALTER TABLE `ourtopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tc`
--
ALTER TABLE `tc`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
