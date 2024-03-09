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
-- Database: `mkstecfw_erp_mansarovar`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(4) NOT NULL,
  `admin_type` enum('superAdmin','admin','teacher','accountant') DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `raw_password` varchar(75) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `profile_pic` varchar(250) DEFAULT NULL,
  `salary` double(10,2) DEFAULT '0.00',
  `status` enum('active','inactive') DEFAULT 'active',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `admin_type`, `username`, `password`, `raw_password`, `name`, `email`, `mobile`, `profile_pic`, `salary`, `status`, `created`, `modified`) VALUES
(1, 'superAdmin', 'DIRECTOR', 'ce50057804c156cdab4fffd31a97988c', NULL, 'PRAMOD KUMAR', 'pk.mansarovar@gmail.com', '7903250859', 'profilepics/659d502d4e202Untitled.png', 0.00, 'active', '2023-04-23 17:48:58', '2024-01-09 13:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `user_type` enum('student','staff') NOT NULL,
  `session_student_id` int(11) DEFAULT NULL,
  `administrator_id` int(11) DEFAULT NULL,
  `month` tinyint(2) NOT NULL,
  `year` year(4) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `expense_id` int(11) DEFAULT NULL,
  `homework_id` int(11) DEFAULT NULL,
  `student_homework_id` int(11) DEFAULT NULL,
  `document_type` enum('profilePic','aadhar','birthCertificate','previousSchoolTc','fathersPhoto','mothersPhoto') DEFAULT NULL,
  `filename` varchar(250) NOT NULL,
  `filepath` varchar(350) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `background_color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text,
  `invoice_number` varchar(80) DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created` date NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `payment` double(10,2) NOT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `dates` text NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeworks`
--

CREATE TABLE `homeworks` (
  `id` int(11) NOT NULL,
  `schoolclass_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `last_date` date DEFAULT NULL,
  `creadted_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `user_type` enum('student','staff') NOT NULL,
  `session_student_id` int(11) DEFAULT NULL,
  `administrator_id` int(11) DEFAULT NULL,
  `applied_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` varchar(250) DEFAULT NULL,
  `approved_by_id` int(11) DEFAULT NULL,
  `status` enum('pending','approved','declined') DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `partial_payments`
--

CREATE TABLE `partial_payments` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `invoice_number` varchar(75) DEFAULT NULL,
  `collected_by` varchar(75) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_collection_date` datetime DEFAULT NULL,
  `payment_mode` enum('cash','cheque','dd','upi','bank deposit','bank transfer') NOT NULL DEFAULT 'cash',
  `comments` text,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_transaction_id` varchar(50) NOT NULL,
  `invoice_number` varchar(75) DEFAULT NULL,
  `session_student_id` int(11) NOT NULL,
  `payment_type` varchar(25) DEFAULT NULL COMMENT 'initial',
  `payment_mode` enum('cash','cheque','dd','upi','bank deposit','bank transfer') DEFAULT 'cash',
  `payment` double(10,2) NOT NULL,
  `original_payment` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `original_payment_after_discount` double(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('due','paid','partial') NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_collection_date` datetime DEFAULT NULL,
  `additional_docs` text,
  `collected_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schoolclasses`
--

CREATE TABLE `schoolclasses` (
  `id` int(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `schoolclass_id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `no_of_students` int(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(25) NOT NULL,
  `year` year(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session_students`
--

CREATE TABLE `session_students` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `schoolclass_id` int(3) NOT NULL,
  `section_id` int(4) DEFAULT NULL,
  `roll_number` varchar(15) DEFAULT NULL,
  `hostel_required` enum('yes','no') NOT NULL DEFAULT 'no',
  `transport_required` enum('yes','no') NOT NULL DEFAULT 'no',
  `class_payment_options` enum('monthly','half_yearly','once') DEFAULT NULL,
  `school_fees_no_of_months` int(2) DEFAULT NULL,
  `class_second_installment_due_date` date DEFAULT NULL,
  `total_payment` double(10,2) DEFAULT NULL,
  `first_installment` double(10,2) DEFAULT NULL,
  `remaining_payment` double(10,2) DEFAULT NULL,
  `status` enum('active','inactive','moved') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `before_discount_total_payment` double(10,2) NOT NULL,
  `emi_amount` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session_student_fees`
--

CREATE TABLE `session_student_fees` (
  `id` int(11) NOT NULL,
  `session_student_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `fee_payment` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(250) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `current_value` varchar(125) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `status`, `current_value`, `created`, `modified`) VALUES
(1, 'invoice starts', '100', 'active', '108', '2023-07-11 14:38:30', '2023-07-15 16:13:43'),
(2, 'session starts', '04', 'active', NULL, '2023-07-12 06:31:51', '2023-07-12 04:52:28'),
(3, 'school name', 'MANSAROVAR GYAN NIKETAN', 'active', NULL, '2023-07-12 06:59:00', '2023-09-08 10:07:48'),
(4, 'school address', 'TULSIA , BIHARIGANJ , MADHEPURA , (BIHAR)  PIN - 852101', 'active', NULL, '2023-07-12 06:59:00', '2023-09-08 10:09:48'),
(5, 'school phone', '7903250859', 'active', NULL, '2023-07-12 06:59:00', '2023-09-08 10:11:26'),
(6, 'school email', 'mansarovar.ed@gmail.com', 'active', NULL, '2023-07-12 06:59:00', '2023-09-08 10:12:11'),
(7, 'school logo', 'documents/659d4f719f6d4Mansarovar_Gyan_Niketan_FL-01.jpg', 'active', NULL, '2023-07-16 14:39:46', '2024-01-09 13:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `id` int(11) NOT NULL,
  `administrator_id` int(11) NOT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `date_of_joining` date NOT NULL,
  `emergency_contact_number` varchar(12) NOT NULL,
  `marital_status` enum('married','single') NOT NULL,
  `address` varchar(500) NOT NULL,
  `permanent_address` varchar(500) NOT NULL,
  `qualification` varchar(250) NOT NULL,
  `work_eperience` varchar(150) NOT NULL,
  `PAN` varchar(25) NOT NULL,
  `note` varchar(500) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `fathersName` varchar(150) DEFAULT NULL,
  `fathersMobile` varchar(15) DEFAULT NULL,
  `fathersOccupation` varchar(150) DEFAULT NULL,
  `mothersName` varchar(150) DEFAULT NULL,
  `mothersOccupation` varchar(150) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `raw_password` varchar(85) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `dob` date NOT NULL,
  `casteCategory` enum('GEN','SC','ST','OBC','EBC') DEFAULT NULL,
  `bloodGroup` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') DEFAULT NULL,
  `religion` enum('Hinduism','Islam','Jainism','Christianity','Buddhism','Others') DEFAULT NULL,
  `aadharNumber` varchar(25) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `address` varchar(750) DEFAULT NULL,
  `area` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `district` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `admission_no` varchar(50) DEFAULT NULL,
  `adminssion_date` date DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_homeworks`
--

CREATE TABLE `student_homeworks` (
  `id` int(11) NOT NULL,
  `session_student_id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `evaluated_by` int(11) DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `schoolclass_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usersroles`
--

CREATE TABLE `usersroles` (
  `id` int(11) NOT NULL,
  `dbrole` varchar(75) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersroles`
--

INSERT INTO `usersroles` (`id`, `dbrole`, `name`, `status`, `created`, `modified`) VALUES
(1, 'superAdmin', 'Super Admin', 'active', '2023-07-03 18:30:19', '2023-07-03 18:30:19'),
(2, 'admin', 'Admin', 'active', '2023-07-03 18:30:19', '2023-07-03 18:30:19'),
(3, 'teacher', 'Teacher', 'active', '2023-07-03 18:30:19', '2023-07-03 18:30:19'),
(4, 'accountant', 'Accountant', 'active', '2023-07-03 18:30:19', '2023-07-03 18:30:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partial_payments`
--
ALTER TABLE `partial_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolclasses`
--
ALTER TABLE `schoolclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_students`
--
ALTER TABLE `session_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_student_fees`
--
ALTER TABLE `session_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_homeworks`
--
ALTER TABLE `student_homeworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersroles`
--
ALTER TABLE `usersroles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeworks`
--
ALTER TABLE `homeworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partial_payments`
--
ALTER TABLE `partial_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schoolclasses`
--
ALTER TABLE `schoolclasses`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_students`
--
ALTER TABLE `session_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_student_fees`
--
ALTER TABLE `session_student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_homeworks`
--
ALTER TABLE `student_homeworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usersroles`
--
ALTER TABLE `usersroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
