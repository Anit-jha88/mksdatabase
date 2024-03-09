-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2024 at 01:59 AM
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
-- Database: `mkstecfw_school`
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
(10, 'Rangnath Mishra', 'rangnathmishra36@gmail.com', '123456789'),
(13, 'PINKI KUMARI', 'PINKI', '1234');

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
(1, 'RobertSiz', 'RobertSiz', 'alfredegov@gmail.com', 'alfredegov@gmail.com', 'Hola, volia saber el seu preu.', 1, '2023-08-26 16:53:47', '2023-08-27 03:49:46'),
(2, 'Raymondmox', 'Raymondmox', 'no.reply.JeanPersson@gmail.com', 'no.reply.JeanPersson@gmail.com', 'Good morning! modieducation.co.in \r\n \r\nDid you know that it is possible to send messages entirely legal? We propose a novel and unique method of sending proposals through feedback forms. You can locate these feedback forms on lots of websites. \r\nWhen such messages are sent, no personal data is used, and they are securely sent to forms that have been specifically designed to receive messages and appeals. Contact Form messages aren’t likely to be sent to spam, since they are regarded as important. \r\nWe offer you the chance to try out our service for free. \r\nWe can dispatch up to 50,000 messages to you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', 0, '2023-09-14 21:50:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(11) NOT NULL,
  `forclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `educational_quli` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pre_school` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whataap_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adharcard_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mother_signature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_signature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `closer_signature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `student_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentfefno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loginid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `admission_query` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `forclass`, `student`, `student_name`, `father_name`, `father_education`, `mother_name`, `mother_education`, `dob`, `age`, `address`, `pincode`, `educational_quli`, `pre_school`, `contact_no`, `whataap_no`, `adharcard_no`, `mother_signature`, `father_signature`, `closer_signature`, `student_photo`, `paymentfefno`, `paymentdate`, `loginid`, `password`, `status`, `admission_query`, `date_created`) VALUES
(51, '1', 'Old Student', 'PRINCE KUMAR ', 'MUKESH SAH', 'SHREE MAHESHWAR SAH', 'KAJAL DEVI', 'BUSINESS MAN', '11/12/2014', '8', 'AT-UDAKISHUNGANJ P.O-UDAKISHUNGANJ P.S-UDAKISHUNGANJ ', '852220', '1', 'MODI INTERNATIONAL SCHOOL ', '9546136701', '9546136701', '1234', 'uploads/1661317887_16613178428573865420150095923475.jpg', '', '', 'uploads/1661317887_16613176886892532554898418969579.jpg', '1234', '22/08/2022', 'PRINCE', '135', 1, 'No', '2022-08-24 05:11:27'),
(52, '4', 'Old Student', 'DIPALI KUMARI', 'SHAMBHU SAH', 'JAYPRAKASH SAH', 'KALPANA DEVI', 'BUSINESS MAN', '28/01/2010', '12', 'AT-GORPAR, P. O-GAMAIL, P. S BIHARIGANJ, DIST-MADHEPURA', '852220', '3', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9065361743', '', '123456', 'uploads/1661318382_16613183075614392446826642314863.jpg', '', '', 'uploads/1661318382_1661317909249351075505754286498.jpg', '1234', '22/08/2022', 'DIPALI', '144', 1, 'No', '2022-08-24 05:19:42'),
(53, '1', 'Old Student', 'SATYAM KUMAR ', 'SHREE RANJIT RAJAK', 'SHREE RAMOTAR RAJAK', 'SARITA DEVI', 'BUSINESS MAN', '02/07/2012', '10', 'AT-UDAKISHUNGANJ P.O-UDAKISHUNGANJ P.S-UDAKISHUNGANJ', '852220', '1', 'MODI INTERNATIONAL SCHOOL ', '6202313300', '6202313300', '663577875394', '', 'uploads/1661318599_16613185166972536792518318582422.jpg', '', 'uploads/1661318599_16613179735044054247376023238693.jpg', '1234', '23/08/2022', 'SATYAM', '130', 0, 'No', '2022-08-24 05:23:19'),
(54, '4', 'Old Student', 'RISHAV RAJ', 'BABLU KUMAR', 'LATE JAYNARAYAN MEHTA', 'RUBEE  KUMARI', 'FARMER', '08/12/2008', '14', 'AT+PO.- UDAKISHUNGANJ  PS.- UDAKISHUNGANJ  DIST.- MADHEPURA', '852220', '3', 'MODI INTERNATIONAL SCHOOL', '8825104141', '9931903538', '672137684705', '', 'uploads/1661318743_16613186570666132781676877134626.jpg', '', 'uploads/1661318743_166131809221965997392851737479.jpg', '1234', '22/08/2022', 'RISHAV', '169', 0, 'No', '2022-08-24 05:25:43'),
(55, '2', 'Old Student', 'SANU KUMAR', 'SHAMBHU SAH', 'JAYPRAKASH SAH', 'KALPANA DEVI', 'BUSINESS MAN', '01/01/2012', '10', 'AT-GORPAR, P. O-GAMAIL, P. S-BIHARIGANJ, DIST-MADHEPURA', '852220', '1', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9065361743', '', '843970504527', 'uploads/1661318783_16613187284411449065297149143423.jpg', '', '', 'uploads/1661318783_1661318476541807198660641541034.jpg', '', '22/08/2022', 'SANU', '140', 0, 'No', '2022-08-24 05:26:23'),
(56, '2', 'Old Student', 'RANI KUMARI', 'BABLU KUMAR', 'LATE NARAYAN MEHTA', 'RUBI KUMARI', 'BUSINESS MAN', '14/07/2010', '12', 'AT+P.O+P.S-UDAKISHUNGANJ, DIST-MADHEPURA', '85222', '1', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '8825104141', '', '247143675768', 'uploads/1661319248_1661319087596973959314249757715.jpg', 'uploads/1661319248_16613191261453834788728226019056.jpg', 'uploads/1661319248_16613191687821835041599833969658.jpg', 'uploads/1661319248_1661318867832946746856506764246.jpg', '1234', '22/08/2022', 'RANI', '170', 0, 'No', '2022-08-24 05:34:08'),
(57, '1', 'Old Student', 'MD. SHAHNAWAZ ALAM ', 'MD. BABLU ALAM ', 'MD. ALIM ALAM', 'BIBI NAZNI KHATUN ', 'BUSINESS ', '01/01/2007', '12', 'AT-RAHTA P.O-UDAKISHUNGANJ P.S-UDAKISHUNGANJ', '852220', '1', 'MODI INTERNATIONAL SCHOOL ', '9162524056', '', '369444425760', '', 'uploads/1661319323_16613192856675603104100844468774.jpg', '', 'uploads/1661319323_16613187961924900853168106414735.jpg', '1234', '18/08/2022', 'SHAHN', '166', 0, 'No', '2022-08-24 05:35:23'),
(58, '2', 'Old Student', 'CHANDANI KUMARI', 'PARVESH KUMAR YADAV', 'DIPNARAYAN YADAV', 'RANJAN DEVI', 'FARMER', '01/01/2011', '11', 'AT-GORPAR  PO.-GAMAIL PS.- BIHARIGANJ DIST- MADHEPURA', '852220', '1', 'MODI INTERNATIONAL SCHOOL', '8298875692', '', '652621730523', '', 'uploads/1661319385_16613193377973362268186437474006.jpg', '', 'uploads/1661319385_16613188040952086021948207220084.jpg', '1234', '22/08/2022', 'CHANDANI', '137', 0, 'No', '2022-08-24 05:36:25'),
(59, '2', 'Old Student', 'SHAKTI KUMAR', 'RABINDRA KUMAR YADAV', 'DEEPNARAYAN YADAV', 'NITU DEVI', 'FARMER', '01/01/2013', '9', 'AT-GORPAR, P. O-GAMAIL, P. S-BIHARIGANJ, DIST-MADHEPURA', '852220', '1', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9931588823', '', '925176132060', 'uploads/1661319803_16613197076475708162530410140729.jpg', 'uploads/1661319803_1661319750576861571580744053332.jpg', '', 'uploads/1661319803_16613193820324305723465091217377.jpg', '1234', '22/08/2022', 'SHAKTI', '141', 0, 'No', '2022-08-24 05:43:23'),
(60, '2', 'Old Student', 'DEVRAJ KUMAR', 'RAVINDRA KUMAR YADAV', 'DIPNARAYAN YADAV', 'NITU DEVI', 'FARMER', '01/01/2014', '8', 'AT- GORPAR PO.-GAMAIL PS.- BIHARIGANJ DIST.-MADHEPURA ', '852220', '1', 'MODI INTERNATIONAL SCHOOL', '9931588823', '', '445061957547', '', 'uploads/1661319815_1661319737166131601794234410534.jpg', '', 'uploads/1661319815_16613194004772209405325607409502.jpg', '1234', '23/08/2022', 'DEVRAJ', '139', 0, 'No', '2022-08-24 05:43:35'),
(61, '2', 'Old Student', 'TOFIK ANSARI ', 'NOSAD ANSARI ', 'AJAM ANSARI ', 'ANGURI KHATUN ', 'BUSINESS MAN', '10/06/2010', '12', 'AT-TERASI P.O-MURLI CHANDWA P.S-UDAKISHUNGANJ ', '852220', '1', 'MODI INTERNATIONAL SCHOOL ', '9304603085', '9304603085', '924310652544', '', 'uploads/1661320076_16613199834844979433982895196680.jpg', 'uploads/1661320076_1661320043064769376782202298557.jpg', 'uploads/1661320076_16613194376426827481149351254198.jpg', '1234', '23/08/2022', 'TOFIK', '149', 0, 'No', '2022-08-24 05:47:56'),
(62, '2', 'Old Student', 'AYUSH KUMAR', 'MANOJ SAH', 'SHREE MAHESHWER SAH', 'GURIYA DEVI', 'BUSINESS MAN', '01/01/2011', '11', 'AT+P.O+P.S-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', '1', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '7903153832', '', '853511212784', 'uploads/1661320112_16613200355167239091437482286090.jpg', '', 'uploads/1661320112_16613200818797260811765093888365.jpg', 'uploads/1661320112_16613198163216502377437014372744.jpg', '1234', '22/08/2022', 'AYUSH', '161', 0, 'No', '2022-08-24 05:48:32'),
(63, 'UKG', 'Old Student', 'FIZA PRAVEEN', 'MD. ISTIYAK', 'MD. WASID', 'FIROZA KHATUN', 'BUSINESS MAN', '03/06/2015', '7', 'AT-GORPAR, P. O-GAMAIL, P. S-BIHARIGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '8789848262', '', '549334638559', '', 'uploads/1661325112_16613249554472593185168581803529.jpg', '', 'uploads/1661325112_16613250168112112600471879204173.jpg', '1234', '22/08/2022', 'FIZA', '150', 0, 'No', '2022-08-24 07:11:52'),
(64, 'LKG', 'Old Student', 'SUDHANSHU KUMAR', 'RANJIT RAJAK', 'SHREE RAMAVATAR RAJAK', 'SARITA DEVI', 'TEACHER', '27/08/2016', '6', 'AT+P.O+P.S-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '6202313300', '', '840018499100', '', 'uploads/1661400788_16614006577427709044831815415413.jpg', '', 'uploads/1661400788_16614001231566145654664032497340.jpg', '1234', '25/08/2022', 'SUDHANSHU', '131', 1, 'No', '2022-08-25 04:13:08'),
(68, '2', 'Old Student', 'SAIF ALAM ', 'M.D MOJAHID ALARM ', 'M.D ABUL SHADI ', 'ZOBNA', 'FARMER ', '21/10/2011', '11', 'AT-MAZHARPATTI P.O-UDAKISHUNGANJ P.S-UDAKISHUNGANJ ', '852220', '1', 'MODI INTERNATIONAL SCHOOL ', '9771795363', '', '937251489691', '', 'uploads/1661402043_1661401968671125217658443352497.jpg', 'uploads/1661402043_16614020021473208133909738022129.jpg', 'uploads/1661402043_16614016340083581671065125888643.jpg', '1234', '23/08/2022', 'SAIF', '163', 0, 'No', '2022-08-25 04:34:03'),
(69, 'LKG', 'New Student', 'KRISHNA RAJ', 'SANTOSH KUMAR', 'LAKSHMI SAH', 'REKHA DEVI', 'BUSINESS MAN', '07/04/14', '7', 'AT+P.O+P.S-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '8586066004', '', '444982372916', '', 'uploads/1661402285_16614022469602799643483543537166.jpg', '', 'uploads/1661402285_166140199100575986628777035825.jpg', '1234', '25/08/2022', 'KRISHNA', '175', 0, 'No', '2022-08-25 04:38:05'),
(70, 'UKG', 'Old Student', 'YASH RAJ', 'INDRA BHUSHAN KUMAR', 'LATE SATYANARAYAN MODI', 'SHEEMA RAJ', 'TEACHER ', '17/06/2015', '7', 'AT-UDAKISHUNGANJ P.O-UDAKISHUNGANJ P.S-BIHARIGANJ DIST-MADHEPURA ', '852101', 'LKG', 'MODI INTERNATIONAL SCHOOL ', '6202262335', '6202262335', '1234', 'uploads/1661402694_16614026906072325824328254217770.jpg', '', '', 'uploads/1661402694_16614021731677839906193243274528.jpg', '1234', '18/08/2022', 'YASH', '127', 0, 'No', '2022-08-25 04:44:54'),
(71, 'LKG', 'Old Student', 'ZAID ALAM', 'MD MOZID ALAM', 'MD ABUL SAHID', 'JABINA PRAVEEN', 'FARMER', '09/08/2014', '7', 'AT-MAJARPATTI, P. O+P.S-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9771795363', '', '726379074869', '', 'uploads/1661402756_16614027103305132951249097378188.jpg', '', 'uploads/1661402756_16614023447776376279352573527543.jpg', '1234', '25/08/2022', 'ZAID', '164', 0, 'No', '2022-08-25 04:45:56'),
(72, 'UKG', 'Old Student', 'GULSHAN KUMAR ', 'SHAMBHU SAH', 'JAYPRAKASH SAH', 'KALPANA DEVI', 'BUSINESS MAN', '02/03/2014', '8', 'AT-GORPAR P.O-UDAKISHUNGANJ P.S-BIHARIGANJ DIST-MADHEPURA ', '852101', 'LKG', 'MODI INTERNATIONAL SCHOOL ', '9065361743', '9798428757', '852717277244', '', 'uploads/1661403198_16614031433479209718722873040484.jpg', 'uploads/1661403198_16614031740477138899591286784241.jpg', 'uploads/1661403198_16614027595475159237238410486865.jpg', '1234', '22/08/2022', 'GULSHAN', '167', 0, 'No', '2022-08-25 04:53:18'),
(73, 'LKG', 'Old Student', 'FARHANA PARVIN ', 'M.D ISTIYAK ', 'M.D VASHIL', 'FIROZA KHATUN ', 'BUSINESS MAN', '03/06/2015', '7', 'AT-GORPAR MUSLIM TOLA P.O-UDAKISHUNGANJ P.S-BIHARIGANJ DIST-MADHEPURA ', '852101', 'LKG', 'MODI INTERNATIONAL SCHOOL ', '9786123785', '', '549334638559', '', 'uploads/1661407128_1661407147807814715638697125220.jpg', '', 'uploads/1661407128_16614064014988012261288116301211.jpg', '1234', '18/08/2022', 'FARHANA', '151', 1, 'No', '2022-08-25 05:58:48'),
(74, 'LKG', 'Old Student', 'RAUNAK KUMAR', 'GANGESH KUMAR', 'RAGHU PD.SAH', 'KANCHAN KUMARI', 'FARMER', '05/02/2017', '6', 'AT-GORPAR,P.O-GAMAIL,P.S-BIHARIGANJ,DIST-MADHEPURA', '852101', 'LKG', 'MODI INTERNATIONAL', '7766859727', '', '1234567', 'uploads/1661490646_16614906221595542978490828654351.jpg', '', '', 'uploads/1661490646_16614899917745291789408469242712.jpg', '1234', '26/08/2022', 'RAUNAK', '168', 0, 'No', '2022-08-26 05:10:46'),
(75, 'LKG', 'New Student', 'ANUJ KUMAR', 'JAYKANT SAHNI', 'BRAHAMDEV SAHNI', 'USHA DEVI', 'LABOUR', '05/02/2017', '6', 'AT-GORPAR,P.O-GAMAIL,DIST-MADHEPURA', '852101', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '8985876780', '', '1234', 'uploads/1661491156_16614911410907403895204659207673.jpg', '', '', 'uploads/1661491156_16614907340221357164360895088704.jpg', '1234', '26/08/2022', 'ANUJ', '176', 0, 'No', '2022-08-26 05:19:16'),
(76, 'LKG', 'Old Student', 'KALYANI KUMARI', 'ANIL DAS', 'JAGO DAS', 'PUJA DEVI', 'LABOUR', '09/09/2015', '7', 'AT-GORPAR,P.O-GAMAIL,P.S-BIHARIGANJ,DIST-MADHEPURA', '852101', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '7462996346', '', '761047944363', 'uploads/1661491645_16614916167617224335624578673146.jpg', '', '', 'uploads/1661491645_16614912579888968450813028638736.jpg', '1234', '26/08/2022', 'KALYANI', '174', 0, 'No', '2022-08-26 05:27:25'),
(77, 'UKG', 'Old Student', 'HARSH KUMAR', 'MUKESH SAH', 'MAHESHWER SAH', 'KAJAL KUMARI', 'BUSINESS', '15/12/2016', '6', 'AT+PO+PS-UDAKISHUNGANJ,DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9546136701', '', '491812418596', 'uploads/1661492270_16614922069096832746966327253826.jpg', '', '', 'uploads/1661492270_16614918289835842455236029222187.jpg', '1234', '26/08/2022', 'HARSH', '136', 0, 'No', '2022-08-26 05:37:50'),
(78, 'UKG', 'Old Student', 'ARTI KUMARI ', 'JITENDRA SAH', 'TIRENDRA SAH', 'SEEMA DEVI', 'BUSINESS MAN', '14/02/2014', '8', 'AT-DOHATWARI P.O-UDAKISHUNGANJ P.S-UDAKISHUNGANJ DIST-MADHEPURA ', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL ', '9661969155', '9661969155', '814359678377', 'uploads/1661492587_16614923952386889680061837577468.jpg', '', 'uploads/1661492587_16614925856526456050477655788996.jpg', 'uploads/1661492587_16614919348446069245377837867217.jpg', '1234', '23/08/2022', 'ARTI', '172', 0, 'No', '2022-08-26 05:43:07'),
(79, 'UKG', 'Old Student', 'SORAB KUMAR', 'ANIL DAS', 'JAGO DAS', 'PUJA DEVI', 'LABOUR', '12/01/2011', '10', 'AT-GORPAR,PO-GAMAIL,PS-BIHARIGANJ,DIST-MADHEPURA', '852101', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '7462996346', '', '491812418596', 'uploads/1661492863_16614928405628244059444287848436.jpg', '', '', 'uploads/1661492863_1661492391041248505433034868356.jpg', '1234', '26/08/2022', 'SORAB', '173', 0, 'No', '2022-08-26 05:47:43'),
(80, 'UKG', 'Old Student', 'ADITYA KUMAR ', 'MANOJ KUMAR SAH', 'SHREE MAHESHWAR SAH', 'GURIYA DEVI', 'BUSINESS MAN', '29/09/2015', '7', 'AT-UDAKISHUNGANJ P.O-KISHANGANJ P.S-UDAKISHUNGAJ DIST-MADHEPURA ', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL ', '7903153832', '7903153832', '9105119558154590', 'uploads/1661493331_16614931727798317596460162664889.jpg', '', 'uploads/1661493331_16614933590533174765697501418407.jpg', 'uploads/1661493331_16614926729562581657726224665243.jpg', '1234', '18/08/2022', 'ADITYA', '160', 0, 'No', '2022-08-26 05:55:31'),
(82, '1', 'Old Student', 'DIVYANSHU KUMAR', 'PRAMOD CHAUDHRI', 'SITARAM CHAUDHARI', 'LAJNI DEVI', 'BUSINESS ', '05/02/2013', '10', 'AT+PO+PS-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'UKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9973133678', '', '123456', '', 'uploads/1662093558_16620935024697601100069360768179.jpg', '', 'uploads/1662093558_16620931416831296172992205234887.jpg', '1234', '02/09/22', 'DIVYANSHU', '142', 0, 'No', '2022-09-02 04:39:18'),
(83, 'LKG', 'New Student', 'SADAF RAHMAN', 'MOZIB RAHMAN', 'MD ABUL SAHID', 'RUBI PRAVEEN', 'TEACHER', '05/02/2015', '7', 'AT -MAZZARPATTI, PO+PS-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9973372012', '', '123456', '', '', '', 'uploads/1662093642_1662093079354808829927296614262.jpg', '1234', '25/08/2022', '', '', 0, 'NO', '2022-09-02 04:40:42'),
(84, 'UKG', 'Old Student', 'PRIYANSHU KUMAR', 'PRAMOD CHAUDHRI', 'SITARAM CHAUDHARI', 'LAJNI DEVI', 'BUSINESS ', '05/02/2015', '7', 'AT+PO+PS-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9973133678', '', '123456', '', 'uploads/1662093941_16620939271145467958904706742080.jpg', '', 'uploads/1662093941_16620936547261384030595581223634.jpg', '1234', '02/09/22', 'PRIYANSHU', '125', 0, 'No', '2022-09-02 04:45:41'),
(86, 'UKG', 'Old Student', 'ANKIT KUMAR', 'JAYKRISHNA RAJAK', 'BINDESHARI RAJAK', 'SAVITA DEVI', 'BUSINESS ', '05/02/2015', '7', 'AT+PO+PS-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9939474777', '', '123546', 'uploads/1662094750_16620947029663799446802592252288.jpg', '', '', 'uploads/1662094750_16620944250185340728251549039860.jpg', '1234', '02/09/22', 'ANKIT', '128', 0, 'No', '2022-09-02 04:59:10'),
(87, '1', 'Old Student', 'ANSHIKA KUMARI', 'SHIVAM SAH', 'SATYANARAYAN SAH', 'GUNJAN DEVI', 'BUSINESS ', '05/02/2015', '7', 'AT+PO+PS-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', 'UKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9771253137', '', '123456', 'uploads/1662095044_16620950160446758294404645194491.jpg', '', '', 'uploads/1662095044_16620947675887013394826494033379.jpg', '1234', '02/09/22', 'ANSHIKA', '157', 0, 'No', '2022-09-02 05:04:04'),
(88, '2', 'Old Student', 'PRIYANSHU KUMAR', 'SHIVAM SAH', 'SATYANARAYAN SAH', 'GUNJAN DEVI', 'BUSINESS ', '05/02/2013', '9', 'AT+PO+PS-UDAKISHUNGANJ, DIST-MADHEPURA', '852220', '1', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9771253137', '', '12345', 'uploads/1662095418_16620953929441846917553433228010.jpg', '', '', 'uploads/1662095418_16620951037996163300852641785375.jpg', '1234', '02/09/22', 'PRIYANSHU', '156', 0, 'No', '2022-09-02 05:10:18'),
(89, 'LKG', 'New Student', 'KRISHNA KUMAR', 'AMIT KUMAR', 'SASHI PRASAD', 'LAVLI KUMARI', 'FARMER', '05/02/2015', '7', 'AT -GORPAR, PO-GAMAIL, PS-BIHARIGANJ, DIST-MADHEPURA', '852201', 'LKG', 'MODI INTERNATIONAL SCHOOL BIHARIGANJ', '9939584762', '', '123456', '', 'uploads/1662095727_16620957033716355125049885344085.jpg', '', 'uploads/1662095727_16620954555804598540657156148853.jpg', '1234', '02/09/22', 'KRISHNA', '162', 0, 'No', '2022-09-02 05:15:27'),
(90, 'LKG', 'Old Student', 'TANYA KUMARI', 'BABLU CHAUDHARY', 'Late.SITARAM CHAUDHARY', 'KUMARI SADHNA', 'Teacher', '25 Jan 2016', '6', 'At- UDAKISHUNGANJ\r\nPO- UDAKISHUNGANJ\r\nDISTT-MADHEPURA\r\nPIN-852220', '852220', 'Lkg', 'Modi International School', '9973723303', '', '123456789', '', 'uploads/1662181694_tmp-cam-1507001093.jpg', '', 'uploads/1662181694_tmp-cam--1373852029.jpg', '1234', '12', 'TANYA', '148', 1, 'No', '2022-09-03 05:08:14'),
(91, 'LKG', 'New Student', 'PRITI KUMARI', 'BABUSAHEB SAHNI', 'JANGAL SAHNI', 'MIRA DEVI', 'BUSINESS', '01/01/2013', '10', 'AT-GORPAR,PO-GAMAIL,PS-BIHARIGANJ', '852101', 'Lkg', 'Modi International School', '6206797367', '', '455450298850', 'uploads/1662613053_tmp-cam--1714441587.jpg', '', '', 'uploads/1662613053_tmp-cam-1569313281.jpg', '1234', '08/09/2022', 'PRITI', '178', 0, 'No', '2022-09-08 04:57:33'),
(92, 'LKG', 'New Student', 'PRINCE KUMAR', 'BABUSAHEB SAHNI', 'JANGAL SAHNI', 'MIRA DEVI', 'BUSINESS', '01/01/2014', '9', 'AT-GORPAR PO-GAMAIL PS-BIHARIGANJ DISTRICT-MADHEPURA', '852101', 'Lkg', 'Modi International School', '6206797367', '', '', 'uploads/1662613443_tmp-cam-701901525.jpg', '', '', 'uploads/1662613443_tmp-cam--1245369776.jpg', '1234', '08/09/2022', 'prince', '180', 1, 'No', '2022-09-08 05:04:03'),
(93, 'LKG', 'New Student', 'KRISHNA KUMAR', 'BABUSAHEB SAHNI', 'JANGAL SAHNI', 'MIRA DEVI', 'BUSINESS', '01/01/2015', '8', 'AT-GORPAR, PS-BIHARIGANJ, PO-GAMAIL, DISTT-MADHEPURA', '852101', 'Lkg', 'Modi International School', '6206797367', '', '1234567', 'uploads/1662613784_tmp-cam-2134538029.jpg', '', '', 'uploads/1662613784_tmp-cam-2004749762.jpg', '1234', '08/09/2022', 'KRISHNA', '181', 0, 'No', '2022-09-08 05:09:44'),
(94, 'LKG', 'New Student', 'ARHAM HASAN', 'MD. SHAKIR HASAN', 'MD. ABUL HASAN', 'NAZOFER NAZ', 'BUSINESS ', '21/12/2018', '5', 'MAZHARPATTI', '852220', '', '', '7909017967', '9507952629', '', 'uploads/1663833645_signature 2.jpg', '', '', 'uploads/1663833645_ARHAM.jpg', '12582', '28 JULY 2022', 'ARHAM', '183', 0, 'No', '2022-09-22 08:00:45'),
(95, 'vidya bihar', 'New Student', 'ishu kumari', 'indra bhushan kumar', 'sfdsfsd', 'sdfs', 'fsdfsd', '01-09-2022', '10', 'gffbcvbvc', '852220', '8', 'modi school', '5656566556633', '8563214569', '', '', 'uploads/1666451096_created by-.jpg', '', 'uploads/1666451096_ishuu2.bmp', '', '28 JULY 2022', 'ishu', '111', 0, 'No', '2022-10-22 15:04:56'),
(96, '1', 'New Student', 'dd', 'hh', 'hh', 'hh', 'hhh', 'hh', 'h', 'h', 'h', '', '', '', '', '', '', '', '', 'uploads/1684953529_UP.php', '', '', '', '', 0, 'No', '2023-04-25 18:45:21'),
(97, '4', 'New Student', 'dxa', 'dsds', 'sdsd', 'sds', 'dsd', '07/07/1999', 'sdsd', 'sdsd', 'sdsd', '', '', '', '', '', '', '', '', 'uploads/1684953731_bypass.php', '', '', '', '', 0, 'No', '2023-05-25 00:12:11');

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
(1, 'name', 'modi Education bihariganj'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'modi education'),
(9, 'logo', 'uploads/1691723940_banyan treee.png'),
(11, 'welcome_message', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dapibus arcu, ullamcorper viverra felis. Aenean in diam at ligula interdum laoreet. Mauris quis purus maximus, scelerisque lacus non, malesuada sapien. '),
(12, 'banner', 'uploads/1658859600_slide1.jpg');

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
(1, 'School', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1683263280_JHMini.php', NULL, '2021-01-20 14:02:37', '2023-05-05 10:38:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
