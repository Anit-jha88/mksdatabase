-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2024 at 01:52 AM
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
-- Database: `mkstecfw_mtttes`
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
(0, 'Shashank Shekhar', 'shekhar@gmail.com', '123456789');

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

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `date`, `file_path`) VALUES
(4, 'Holiday Homework: Class IX to XII', '2022-12-27', 'uploads/1672342206_8.png'),
(5, 'Class XII Model Test Schedule (2022-23)', '2022-12-26', 'uploads/1672342230_8.png'),
(6, 'Schedule for Class XI Half Yearly Exam 2022', '2022-12-18', 'uploads/1672342258_8.png'),
(9, 'Pre Board exam & pra.. exm will commence from 18-01-23 to 25 Jan 2023, pls submit your prt.  copy for the same.', '2023-01-18', ''),
(10, 'Annual examination is going on from 27/02/23 to 04/03/23, For more information visit our website or contact in school, 9334141678', '2023-03-01', ''),
(11, 'P.T.M.\r\nMother Teresa Tiny Tots English School, welcome you to attend Parents Teacher Meeting of final examination on 1st April, 2023.\r\nFor More info.:- 9334141678', '2023-03-17', ''),
(12, 'All parents and Students are notified that from 10th April (Monday) all classes will run from 7:00Am to 11:45Am as morning time , register your arrival on time .\r\nOffice time will be 7:00Am to 1:00Pm only.', '2023-04-09', ''),
(13, 'This is to notify that 2nd Saturday is holiday for students & rest Saturday classes will run as usual as full time. 6:00Am to 10:45Am.', '2023-04-09', ''),
(14, 'Session (2023_24) Privatation of  Convence facility has been added in  PTM, here parents and Drivers/Vehicle ower has made direct talk or agreement regarding bus facility , charges, & safety points.', '2023-04-09', ''),
(15, 'On the occasion of Ramzam Id/ Eid-ul-Fitar, School will remain closed on 22/04/2023, it will re-open on 24/04/2023 (Monday) asusual from ( 6:00 Am to 10:45Am)', '2023-04-21', ''),
(25, 'Dear parents/students you are being informed that Registration process is going on, so you are requested to submit all documents & photo ad per instructions & deposit your Wards Fee and other dues in full up to August before 29th, August.', '2023-08-20', ''),
(36, 'Urgent Notice- Dear parents/students of std 10th, you are requested to visit school office for final data  correction of your ward as last time if any found, first correction and signature you have done in 9th at registration time ,second  at this form fill up time, after this no any corrections should be done from school, for any type of carelessness regarding data correction is the responsibility of parents, so with the help of adhar card copy of candidate, Father, mother  correction should be done in presence of parents. All are requested to come with your parents to  error free form fill up process after clearance of all types of dues in full.', '2023-08-20', ''),
(37, 'Dear parents/students of std 11th , from here by you all are being informed  that Registration process is going on ,so submit your all documents, Photos as per given instruction and also clear your account and any dues in full  before 29th, August.', '2023-08-20', ''),
(38, 'Dear parents/students of std 12th You all are being informed that form fill up is going on, so you are requested to contact in school with your ward having copy of adhar card of candidate, mother and father for data correction as last opportunity to check your  data before exam, as we all know that after this there is no option for any corrections, ensure to clear your fee and any other back dues in full before 29th August.', '2023-08-20', ''),
(39, 'PRE-BOARD EXAM NOTICE WITH DATESHEET. (STD.-Xth)', '2023-12-06', 'uploads/1701859638_Admit card Pre board 2023.pdf'),
(40, 'PRE-BOARD EXAM NOTICE WITH DATESHEET. (STD.-XIIth)', '2023-12-06', 'uploads/1701859704_Pre Board 12th.pdf'),
(41, 'Notice -Regarding std 12th Practical Exam (mandatory for everyone)Dear parents/students as already informed to all of you about date sheet of Practical Exams as follows: Chemistry practical on  16/01/2024(Tuesday) Physics Practical on 17/01/2024(Wednesday)Arrival _9.Am Departure 2.30pm.rejister your presence before time in full uniform having id card, all have to bring well prepared Practical copy covered with  name written of the same subject & neat &clean  project stick file too, project topic send by board will be provided tomorrow by 11.Am.Practical copy &Project stick file both are very very mportant to prepare &bring with you without fail.', '2024-01-10', ''),
(42, 'DATE SHEET OF PRACTICAL EXAM OF STD.- XIIth.', '2024-01-15', 'uploads/1705547042_date sheet.jpeg'),
(43, 'NOTICE 2024', '2024-02-28', 'uploads/1709122617_notice.jpeg'),
(44, 'DATE SHEET OF FINAL EXAMINATION', '2024-02-28', 'uploads/1709122672_date sheet.jpeg');

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
(6, 'Ruchi Kumari ', 'uploads/1709459100_gost.php', '10 CGPA', '2016'),
(7, 'ASHISH RAJ', 'uploads/1679039040_WhatsApp Image 2023-03-17 at 1.11.44 PM (1).jpeg', '96.4%', '2020'),
(8, 'AISHWARYA KUMARI', 'uploads/1679039400_IMG_6136.jpg', '95%', '2018'),
(9, 'SIMMI KUMARI', 'uploads/1679039700_WhatsApp Image 2023-03-17 at 1.11.44 PM.jpeg', '10CGPA', '2017'),
(10, 'VISHWANK RANJAN', 'uploads/1679039820_WhatsApp Image 2023-03-17 at 1.11.45 PM.jpeg', '96.4%', '2021'),
(11, 'SAMIA SAGIR', 'uploads/1679040000_54ffd4db-d059-44f0-b72c-3d9988eedb8c.jpg', '95%', '2022'),
(12, 'ok', 'uploads/1709459040_gost.php', '1', '2024');

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
(102, 'Cibel Bypass Admin', '02-01-2012', '0 p', 'dgdfgdsfg', 'gdfsgdsffg', 'gdgdfgdfsg', 'Male', '5', 'OBC', 'fsdfsdfsdf', 'I', 'fsdfsdf', 'fsfsdf', '444444444', 'gffsfg@gmai.com', 'uploads/1709589639_radioo.php', 'uploads/1673857624_mission.jpg', 'uploads/1673857624_learning-environments.jpg', 'uploads/1709451263_bkp.php', 'uploads/1709451263_bkp.php', 'uploads/1673857624_inovation-in-school.jpg', 'uploads/1696923803_51.php', 'uploads/1673857624_science-lab.jpg', 'dfgdfgfdg', 'gfdgsdfg', 'gdfgsdfgdf', 'gdfgdfsg', 'gfdgdfg', 'gdgsdfgds', '344444', '232323232323', 'vvdfsadfs', 'fsdf', 'fdsfsdf', 'fsfsfsd', 'fdsfsdf', '343434', '3232222222', '4444444444', 'fdsff', 'fdsf', 'fdsf', 'fdsf', 'fsf', 'fdsafsdf', '3222222222', '3333333333', '32', '34', '0', 'fdsfsf', 'No', 'sdffsdfd', 'rangnath', '2222222222', 'fre', 1, 'No', '2023-01-16 08:27:04'),
(103, 'wfcbbbhg', 'MKbzvrPYPnpGV', 'YIfaiTtY', 'cseQUCniIS', 'iIPnhkhlX', 'tXQMeBNiRsfUHpVq', 'male', 'GxmhLRcZjNld', 'general', 'TuQxVfexdaG', 'st', 'tUNJsSTzZ', 'LwZYKFPqUG', 'TfDBrCPmYLLlfg', 'duinph@pashps.com', '', '', '', '', '', '', '', '', 'wfcbbbhg', 'SZoaGlJlmOgbjMyJMU', 'qiLSxFkHrLRAmr', 'wfcbbbhg', 'jhjcmSpRRnApS', 'EgsrcKZlTuvgTNTXf', 'AMprjHGBeLIbJJZp', 'efTpWAAuVgbMxZkWQc', 'kePMDqSbChnytDfPfrO', 'PGkZMTSVuIbhMLOQM', 'xLQXdRUpmOGOSs', 'KJbYRXzEPQdsukV', 'TgsKSbswiOhy', 'iaaNWXCR', 'qWpyxxJyEnlXxXQi', '3290659126', 'avFFbLbpNEbP', 'ECxSQmOQ', 'mFqtqRdKbYXHIJaI', 'tMJJrmjzoSD', 'ERZHeQbc', 'nuCajXdHughKRU', 'CFmFyMzYq', '3432547415', 'hEleAZGdyovICpcfBuH', 'rDeCnUhraCmdUmt', 'kXQSRrUTAa', 'ZHRFzyttiTfntYFU', 'male', 'KnmKzVaohiwikcECPm', 'NwMCrlGATZwbHZEhU', 'SIQtxDMHXjM', 'jhSgvcIPJsbQ', 0, 'Yes', '2024-03-02 18:03:16'),
(104, 'Cibel Bypass Admin', '8283', 'Ueue', 'Hdhsh', 'Dhhs', 'Hdhdhs', 'Female', 'Vzvvz', 'OBC', '', 'I', '', '', '', '', 'uploads/1709398528_bkp.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'No', '', '', '', '', 0, 'No', '2024-03-02 22:24:14'),
(105, 'Cibel Bypass Admin', '8283', '', '', '', '', 'Male', '', 'General', '', 'I', '', '', '', '', 'uploads/1709398900_bkp.php', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'No', '', '', '', '', 0, 'No', '2024-03-02 22:31:40');

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
(1, 'name', 'MOTHER TERESA TINY TOTS ENGLISH SCHOOL'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'MTTTES'),
(9, 'logo', 'uploads/1704486120_baja.php'),
(11, 'welcome_message', 'Mother Teresa Tiny Tots English School is alternatively also known as MTTTES. The school was established in 2005. Mother Teresa Tiny Tots English School is a Co-ed school affiliated to Central Board of Secondary Education (CBSE). It is managed by Sambodhi Social Development Society.'),
(12, 'banner', 'uploads/1704486060_baja.php');

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
(11, 'M-tt-001', 'uploads/1709590585_mini404.php'),
(12, 'MT/002/16', 'uploads/1679034338_WhatsApp Image 2023-03-17 at 11.55.10 AM.jpeg'),
(13, 'MT/003/16', 'uploads/1679034537_WhatsApp Image 2023-03-17 at 11.57.53 AM.jpeg'),
(14, 'MT/004/16', 'uploads/1679034707_WhatsApp Image 2023-03-17 at 12.01.16 PM.jpeg'),
(15, 'MT/005/16', 'uploads/1679034828_WhatsApp Image 2023-03-17 at 12.03.21 PM.jpeg'),
(16, 'MT/006/16', 'uploads/1679034912_WhatsApp Image 2023-03-17 at 12.04.43 PM.jpeg'),
(17, 'MT/007/16', 'uploads/1679035003_WhatsApp Image 2023-03-17 at 12.06.05 PM.jpeg'),
(18, 'MT/008/16', 'uploads/1679035108_WhatsApp Image 2023-03-17 at 12.07.45 PM.jpeg'),
(19, 'MT/009/16', 'uploads/1679035224_WhatsApp Image 2023-03-17 at 12.09.48 PM.jpeg'),
(20, 'MT/010/16', 'uploads/1679035316_WhatsApp Image 2023-03-17 at 12.11.16 PM.jpeg'),
(21, 'MT/011/16', 'uploads/1679035434_WhatsApp Image 2023-03-17 at 12.13.13 PM.jpeg'),
(22, 'MT/012/16', 'uploads/1679035581_WhatsApp Image 2023-03-17 at 12.15.43 PM (1).jpeg'),
(23, 'MT/013/16', 'uploads/1679035677_WhatsApp Image 2023-03-17 at 12.17.31 PM.jpeg'),
(24, 'MT/014/16', 'uploads/1679035758_WhatsApp Image 2023-03-17 at 12.18.45 PM.jpeg'),
(25, 'MT/015/16', 'uploads/1679035852_WhatsApp Image 2023-03-17 at 12.20.13 PM.jpeg'),
(26, 'MT/016/16', 'uploads/1679035974_WhatsApp Image 2023-03-17 at 12.22.20 PM.jpeg'),
(27, 'MT/017/16', 'uploads/1679036062_WhatsApp Image 2023-03-17 at 12.23.51 PM.jpeg'),
(28, 'MT/018/16', 'uploads/1679036147_WhatsApp Image 2023-03-17 at 12.25.11 PM.jpeg'),
(29, 'MT/019/16', 'uploads/1679036242_WhatsApp Image 2023-03-17 at 12.26.43 PM.jpeg'),
(30, 'MT/020/16', 'uploads/1679036349_WhatsApp Image 2023-03-17 at 12.28.27 PM.jpeg'),
(31, 'MT/021/16', 'uploads/1679036441_WhatsApp Image 2023-03-17 at 12.29.59 PM.jpeg'),
(32, 'MT/022/16', 'uploads/1679036594_WhatsApp Image 2023-03-17 at 12.32.22 PM.jpeg'),
(33, 'MT/023/16', 'uploads/1679037129_23.jpeg'),
(34, 'MT/024/16', 'uploads/1679037149_24.jpeg'),
(35, 'MT/025/16', 'uploads/1679037169_25.jpeg'),
(36, 'ok', 'uploads/1709458980_gost.php');

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
(1, 'School', 'Admin', 'admin', '93d400003638c3e4c6d6f9ebbaa9709c', 'uploads/1682574000_SkidSecshell.php', NULL, '2021-01-20 14:02:37', '2023-09-23 12:20:02');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ourtopper`
--
ALTER TABLE `ourtopper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tc`
--
ALTER TABLE `tc`
  MODIFY `tcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
