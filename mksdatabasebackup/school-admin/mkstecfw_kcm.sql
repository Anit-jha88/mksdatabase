-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2024 at 12:47 PM
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
-- Database: `mkstecfw_kcm`
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
(47, 'Rangnath', 'Mishra', '8553281855', 'rangnathmishra@mkstechnosoft.com', 'dear sir pls provide the details', 1, '2023-01-16 08:45:45', '2023-01-16 08:47:23'),
(54, 'RobertViank', 'RobertViank', '89973439952', 'alfredegov@gmail.com', 'Sveiki, es gribēju zināt savu cenu.', 0, '2023-07-04 23:24:24', NULL),
(55, 'DavidLok', 'DavidLok', '89699633135', 'yasen.krasen.13+82728@mail.ru', 'Nguheidjiwfefhei ijiwdwjurFEJDKWIJFEIF аоушвцшургаруш ШОРГПГОШРГРПГОГРГ iryuieoieifegjejj bvncehfedjiehfu koshicm.com', 0, '2023-10-23 23:05:39', NULL),
(56, 'AnthonySak', 'AnthonySak', '81583434993', 'kpnschijf@live.nl', 'Get on the Fast Track to Earning from $10,000 per Week http://invest3kdailypathx-416052.yowatashiworld.com/euro-1475', 0, '2023-11-07 18:28:39', NULL),
(57, 'Web3mot', 'Web3mot', '87193161698', 'web3Tix@yahoo.com', 'Good afternoon dear friends! \r\nWe invite you to join our WEB3 community and receive valuable gifts and cash prizes \r\nUnlocking the Potential of DeFi with and WEB3BOX \r\n Get All You Want in Web3 Mystery BOX \r\n<a href=https://web3box.pages.dev>\"Get a free gift airdrop\"</a> \r\nInvitation is limited, hurry to get this opportunity \r\nYour voucher for additional free Mystery Box - 128666', 0, '2023-12-26 11:18:20', NULL),
(58, 'Markmot', 'Markmot', '87221257655', 'markTix@mail.com', 'Hello! We are glad to tell you good news! \r\nWe invite you to a private cryptocurrency exchange www.cexasia.pro \r\nUnique conditions await you for successful trading with us \r\nFor the first registration on our exchange, we provide you with a unique promotional code GLASIA24 from 100USDT \r\nWelcome and happy bidding! <a href=https://cexasia.pro/>\"Best asia bitchange\"</a>', 0, '2024-01-03 07:10:26', NULL),
(59, 'Charlesflumn', 'Charlesflumn', '347816756', 'facleserdaheath8941@mail.ru\r\n', '', 0, '2024-01-27 08:47:52', NULL);

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
(3, 'Online/Offline Registration for New Admission (session 2022)in BCA, BBA, BBM and B.Com is Going on', '2022-12-14', 'uploads/1685129139_333.php'),
(4, 'New Session (2022) classes of BCA, BBA, BBM and B.Com 1st year  are going on', '2022-12-27', 'uploads/1672342206_8.png'),
(5, 'Last Date for filling Examination Form(2022) with late fine of BCA-3, BBA-3 and BBA-2 is 10-September-2022', '2022-12-26', 'uploads/1682407293_UP.PhP');

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
(6, 'Raj Kumar1', 'uploads/1685763660_in.php', 'BBA', '2023 - 80%'),
(7, 'Gagan ', 'uploads/1677318660_topper1 (1).jpg', 'BCA', '2022-80%'),
(8, 'Rohan', 'uploads/1677318720_topper1 (1).jpg', 'BBA', '2023 - 80%'),
(9, 'milan', 'uploads/1677318720_topper1.jpg', 'B.COM', '2023 - 80%');

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
(101, 'kunalnath', '4-2-1958', 'sf', 'szf', 'asf', 'asfsfsf', 'male', 'dsf', 'obc', 'sfdds', 'obc', 'fdsfs', 'sdf', 'sdf', 'jams@gmail.com', 'uploads/1673709644_8.png', 'uploads/1673709644_8.png', 'uploads/1673709644_9.png', 'uploads/1673709644_8.png', 'uploads/1673709644_8.png', 'uploads/1673709644_8.png', 'uploads/1673709644_8.png', 'uploads/1673709644_9.png', 'sfsf', 'sdf', 'sdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdf', 'sdf', 'sfd', 'sdf', 'sdf', 'sdf', 'dsf', 'sdf', 'sdf', 'dsf', 'd', 'ffs', 'f', 'dfd', 'df', 'dsf', 'sdf', 'dsf', 'sdfsd', 'male', 'sdfsd', 'dsf', 'sdf', 'sdf', 1, 'Yes', '2023-01-14 15:20:44');

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
(1, 'name', 'Koshi College of Management'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'KCM'),
(9, 'logo', 'uploads/1677316860_logo (4).png'),
(11, 'welcome_message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dapibus arcu, ullamcorper viverra felis. Aenean in diam at ligula interdum laoreet. Mauris quis purus maximus, scelerisque lacus non, malesuada sapien. '),
(12, 'banner', 'uploads/1658859600_slide1.jpg');

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
(5, '4474', 'uploads/1671993623_9d.png');

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
(1, 'KCM', 'Admin', 'admin', 'f289472fe5ec9c93c219ab5c6ab7cb81', 'uploads/1674333180_choose2.png', NULL, '2021-01-20 14:02:37', '2023-05-29 17:06:14');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ourtopper`
--
ALTER TABLE `ourtopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tc`
--
ALTER TABLE `tc`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
