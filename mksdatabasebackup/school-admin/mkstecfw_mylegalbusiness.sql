-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2024 at 02:04 PM
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
-- Database: `mkstecfw_mylegalbusiness`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(30) NOT NULL,
  `bcatid` int(11) NOT NULL,
  `message_from` text NOT NULL,
  `metadesc` text NOT NULL,
  `metakeyword` text NOT NULL,
  `message` text NOT NULL,
  `file_path` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `bcatid`, `message_from`, `metadesc`, `metakeyword`, `message`, `file_path`, `slug`, `date_created`, `date_updated`) VALUES
(28, 15, 'How to Make Website WCAG Compliant?', 'How to Make Website WCAG Compliant?', 'How to Make Website WCAG Compliant?', 'Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat', 'uploads/1678556058_bg3.jpg', 'how-to-make-website-wcag-compliant', '2023-01-02 05:53:30', '2023-03-11 17:35:01'),
(29, 13, 'You have a Great Business Idea?', 'You have a Great Business Idea?', 'You have a Great Business Idea?', 'Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat', 'uploads/1678555953_bg2.jpg', 'you-have-a-great-business-idea', '2023-01-30 14:47:26', '2023-03-11 17:33:26'),
(30, 14, 'Plan Your Project with Your Software', 'Plan Your Project with Your Software', 'Plan Your Project with Your Software', 'Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat\r\n\r\nMeh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat\r\n\r\nMeh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat\r\n\r\nMeh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat\r\n\r\nMeh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat Meh synth Schlitz, tempor duis single-origin coffee ea next level ethnic fingerstache. Incididunt ander labore amar sonar bangla ami. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo. Bccaecat cupidatat', 'uploads/1678555897_bg1.jpg', 'plan-your-project-with-your-software', '2023-01-30 15:04:56', '2023-03-11 17:31:37'),
(31, 18, 'what is web design', 'what is web design', 'what is web design', '&lt;p&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif;&quot;&gt;Web design encompasses many different skills and disciplines in the production and maintenance of websites. The different areas of web design include web graphic design; user interface design; authoring, including standardised code and proprietary software; user experience design; and search engine optimization.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1678560468_bg5.jpg', 'what-is-web-design', '2023-03-11 18:47:48', NULL),
(33, 19, 'Annual Filling of Companies and LLP', 'Every company incorporated in India is required to file annual returns with the Registrar of Companies (ROC)', 'Annual Filling, GST Return, ITR Filing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Annual Filling of Companies and LLP&amp;nbsp;&lt;/p&gt;&lt;p&gt;What is Annual filling?&lt;/p&gt;&lt;p&gt;Annual filing refers to the process of submitting various documents and forms to the relevant government authorities, such as the Registrar of Companies (ROC), on an annual basis. It is a legal requirement for companies and LLP to provide these filings to ensure transparency, compliance, and accountability.&lt;/p&gt;&lt;p&gt;Annual Filling Requirements in Case of Company&lt;/p&gt;&lt;p&gt;Every company incorporated in India is required to file annual returns with the Registrar of Companies (ROC) on a yearly basis. This obligation applies to all types of entities, including private limited companies, Public Limited Companies, One Person Companies, and section 8 companies. Filing annual returns is a mandatory requirement to ensure compliance.&lt;/p&gt;&lt;p&gt;The process of annual filing involves conducting an Annual General Meeting (AGM) and submitting the company&#039;s annual accounts to the ROC. The AGM should be held within six months from the end of the financial year, which is typically on September 30th each year. For newly incorporated companies, the first AGM should be held within 18 months from the date of incorporation or within nine months from the close of the financial year, whichever is earlier.&lt;/p&gt;&lt;p&gt;What are compliances to be maintained by the Companies&lt;/p&gt;&lt;p&gt;i.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Holding of board meetings&lt;/p&gt;&lt;p&gt;It is mandatory for every company to hold its first Board Meeting within 30 days from the date of incorporation. For private limited companies, a minimum of 4 Board Meetings must be conducted annually, with a gap of at least 120 days between each meeting. However, for One Person Companies, a minimum of 2 Board Meetings should be held each year.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ii.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Form ADT-1 for Auditor Appointment (within 30 days)&lt;/p&gt;&lt;p&gt;All companies, must appoint a statutory auditor within 30 days of incorporation. Form ADT-1 is required to be filed along with consent of the auditor.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;iii.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Form INC-20A for Commencement of Business (within 180 days)&lt;/p&gt;&lt;p&gt;Companies registered in India after November 2019 and having a share capital must obtain a commencement of business certificate before commencing any business activities or exercising borrowing powers. This certificate should be obtained within 180 days of incorporating the company. Failure to obtain the certificate may result in a penalty of Rs. 50,000 for the company and Rs. 1,000 per day for per director for each day of default if the default continues.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;iv.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Preparation of Balance sheet and other Financial Statement&lt;/p&gt;&lt;p&gt;At the end of the financial year, it is necessary for every company to finalize its financial accounts and keep a record of various financial statements, including the Balance Sheet, Profit &amp;amp; Loss Account, Auditor&#039;s Report, Director&#039;s Report, and Notes to Accounts.&amp;nbsp;&lt;/p&gt;&lt;p&gt;v.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Holding of Annual General Meeting&lt;/p&gt;&lt;p&gt;For every company, it is mandatory to hold an annual general meeting once a year. Companies must hold an AGM within six months of the end of the financial year. However, in the case of the first financial year, AGM can be held in 9 months from the date of incorporation.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;vi.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;DIN KYC&lt;/p&gt;&lt;p&gt;All the directors of the company must file Form DIR-3 KYC on or before 30th September of each year. It is mandatory for each din holder to provide a unique personal mobile number and a personal email address. There&#039;s a penalty of Rs. 5000 in case of failure to file DIN KYC.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;vii.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Income Tax Return&lt;/p&gt;&lt;p&gt;Companies need to file their income tax returns for the financial year ended on 31st march. The last date of the ITR is usually 31st Day of October.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;viii.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Form AOC-4&lt;/p&gt;&lt;p&gt;All Companies must file Form AOC-4 for the financial year ended on 31st march on or before 29th Day of October. Non-filing or delay in filing AOC-4 may attract a penalty of INR 10,000 in case of continuing failure + INR 100 for each day of default subject to Max of INR 2 Lakhs on company and INR 10,000 + INR 100 for each day of default subject to Max of INR 50,000 on directors of the company.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;ix.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Form MGT-7&lt;/p&gt;&lt;p&gt;All Companies are required to file Form MGT-7 for the financial year ended on 31st March on or before 29th Day of November. Failure to file MGT-7 may result into penalty on company and its every officer who is in default shall be liable to a penalty of Rs. 10,000/- and in case of continuing failure, with further penalty of Rs. 100 for each day during which such failure continues, subject to a maximum of Rs. 200,000/- in case of a company and Rs. 50,000/- in case of an officer who is in default.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Annual Filling Requirements in case of LLP&lt;/p&gt;&lt;p&gt;After the end of the financial year LLPs are also required to do filling with Registrar of companies and Income Tax authorities. Following annual compliances are there: -&lt;/p&gt;&lt;p&gt;&bull;&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Annual Return (Form 11)&lt;/p&gt;&lt;p&gt;The Annual Return of an LLP is filed through Form-11, as prescribed by the Ministry of Corporate Affairs (MCA). It serves as a submission of the annual returns for all LLPs and provides information about the LLP&#039;s partners. The form should be filed on the MCA portal within 60 days from the closure of the financial year, which is typically March 31st. Therefore, the due date for filing Form-11 is May 30th.&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;The penalty for not filing the Annual Return before due date is Rs. 100/- for each day till the non-compliance continues.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&bull;&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Statement of Accounts &amp;amp; Insolvency (Form 8)&amp;nbsp;&lt;/p&gt;&lt;p&gt;Another annual compliance requirement for LLPs is the submission of Form-8, which includes the Statement of Account &amp;amp; Solvency. It is mandatory for every business, including LLPs, to maintain books of accounts and financial statements. LLPs are required to provide their Statement of Accounts to the Ministry of Corporate Affairs. The purpose of filing Form-8 is to declare that proper care has been taken by the LLP in maintaining its accounts. LLPs need to submit the Statement of Account &amp;amp; Solvency on the MCA portal. The due date for filing Form-8 is October 30th every year. The penalty for not complying with this mandatory norm is Rs. 100/-&amp;nbsp; each day till the non-compliance continues.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&bull;&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of Income Tax Return&lt;/p&gt;&lt;p&gt;LLPs are required to file their Income Tax Returns (ITR) separately from the personal ITRs of the partners. The filing of LLP&#039;s ITR is a crucial annual compliance requirement. The ITR can be filed using both online and offline modes.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The due dates for filing LLP&#039;s Income Tax Returns depend on whether the LLP&#039;s accounts are subject to audit under any law or not. The due dates are as follows:&lt;/p&gt;&lt;p&gt;July 31st: This deadline applies to LLPs whose accounts are not subject to audit.&lt;/p&gt;&lt;p&gt;September 30th: This deadline applies to LLPs whose accounts are subject to audit.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&bull;&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Filling of DIR-3 KYC form&lt;/p&gt;&lt;p&gt;Every DIN holder has to file form DIR-3 KYC on or before 30th September of every year.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Failure to file Form DIR-3 KYC may lead to deactivation of DIN and penalty of Rs. 5000.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;FAQS&lt;/p&gt;&lt;p&gt;1.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the purpose of annual filing for companies and LLPs?&lt;/p&gt;&lt;p&gt;Annual filing ensures transparency, compliance, and accountability by requiring companies and LLPs to submit various documents and forms to the government authorities on a yearly basis.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;2.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What are the annual filing requirements for companies in India?&lt;/p&gt;&lt;p&gt;Companies in India are required to file annual returns with the Registrar of Companies (ROC) and hold an Annual General Meeting (AGM) within six months of the end of the financial year. Forms MGT-7 and AOC-4 are required to be filed.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;3.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;How many board meetings should a private limited company hold annually?&lt;/p&gt;&lt;p&gt;Private limited companies must conduct a minimum of four board meetings each year, with a gap of at least 120 days between each meeting. However, One Person Companies are required to hold a minimum of two board meetings annually.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;4.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;When should a company appoint a statutory auditor?&lt;/p&gt;&lt;p&gt;All companies must appoint a statutory auditor within 30 days of incorporation, and the appointment should be filed using Form ADT-1.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;5.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the deadline for obtaining a commencement of business certificate?&lt;/p&gt;&lt;p&gt;Companies incorporated after November 2019 and having a share capital must obtain a commencement of business certificate within 180 days of incorporation.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;6.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What financial statements should a company prepare at the end of the financial year?&lt;/p&gt;&lt;p&gt;At the end of the financial year, every company should prepare financial statements, including the Balance Sheet, Profit &amp;amp; Loss Account, Auditor&#039;s Report, Director&#039;s Report, and Notes to Accounts.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;7.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;When should a company hold its Annual General Meeting (AGM)?&lt;/p&gt;&lt;p&gt;Companies must hold an AGM within six months of the end of the financial year. However, in the case of the first financial year, the AGM can be held within nine months from the date of incorporation.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;8.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is DIN KYC, and when should it be filed?&lt;/p&gt;&lt;p&gt;Directors of the company must file Form DIR-3 KYC on or before 30th September of each year. DIN KYC requires directors to provide a unique personal mobile number and personal email address.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;9.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What are the deadlines for filing income tax returns and financial forms (AOC-4 and MGT-7)?&lt;/p&gt;&lt;p&gt;Companies need to file their income tax returns by the 31st of October. Form AOC-4 must be filed by the 29th of October, and Form MGT-7 should be filed by the 29th of November.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;10.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What are the penalties for non-filing or delayed filing of AOC-4 and MGT-7 forms?&lt;/p&gt;&lt;p&gt;Non-filing or delay in filing AOC-4 may attract a penalty of INR 10,000 for the company and INR 10,000 + INR 100 for each day of default (subject to a maximum of INR 2 lakhs) for the directors. Failure to file MGT-7 may result in a penalty of INR 10,000 for the company and INR 10,000 + INR 100 for each day of default (subject to a maximum of INR 200,000 for the company and INR 50,000 for the officer in default).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;11.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the Annual Return for LLPs, and when should it be filed?&lt;/p&gt;&lt;p&gt;The Annual Return of an LLP is filed through Form-11, which provides information about the LLP&#039;s partners. It should be filed on the MCA portal within 60 days from the closure of the financial year, typically March 31st. The due date for filing Form-11 is May 30th.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;12.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the penalty for not filing the Annual Return (Form-11) on time?&lt;/p&gt;&lt;p&gt;The penalty for not filing the Annual Return before the due date is Rs. 100/- for each day till the non-compliance continues.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;13.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the Statement of Accounts &amp;amp; Solvency (Form-8) for LLPs?&lt;/p&gt;&lt;p&gt;Form-8 includes the Statement of Account &amp;amp; Solvency, which LLPs need to submit to the Ministry of Corporate Affairs. It declares that proper care has been taken in maintaining the LLP&#039;s accounts. The due date for filing Form-8 is October 30th every year.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;14.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the penalty for not filing the Statement of Accounts &amp;amp; Solvency (Form-8) on time?&lt;/p&gt;&lt;p&gt;The penalty for non-compliance with filing Form-8 is Rs. 100/- for each day till the non-compliance continues.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;15.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;Do LLPs need to file Income Tax Returns (ITR)?&lt;/p&gt;&lt;p&gt;Yes, LLPs are required to file their Income Tax Returns separately from the personal ITRs of the partners. The filing of LLP&#039;s ITR is an important annual compliance requirement.&lt;/p&gt;&lt;p&gt;16.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What are the due dates for filing LLP&#039;s Income Tax Returns?&lt;/p&gt;&lt;p&gt;The due dates for filing LLP&#039;s Income Tax Returns depend on whether the LLP&#039;s accounts are subject to audit or not. July 31st is the deadline for LLPs whose accounts are not subject to audit, while September 30th is the deadline for LLPs whose accounts are subject to audit.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;17.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the purpose of filing Form DIR-3 KYC for LLPs?&lt;/p&gt;&lt;p&gt;Every DIN holder in an LLP is required to file Form DIR-3 KYC on or before 30th September of each year. It helps in maintaining the updated information of DIN holders and avoiding the deactivation of DIN.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;18.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;What is the penalty for not filing Form DIR-3 KYC on time?&lt;/p&gt;&lt;p&gt;Failure to file Form DIR-3 KYC may result in the deactivation of DIN and a penalty of Rs. 5000.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;19.&lt;span style=&quot;white-space:pre&quot;&gt;	&lt;/span&gt;How Mylegalbusiness.com can help us in Annual filling of companies and LLPs?&lt;/p&gt;&lt;p&gt;Mylegalbusiness.com can assist you in the annual filing of companies and LLPs by providing expert guidance and support from our team of experienced company secretaries and chartered accountants.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'uploads/1690892085_what-is-gst-registration.jpg', 'annual-filling-of-companies-and-llp', '2023-08-01 17:44:45', '2023-08-01 23:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `blog_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `blog_category_name`) VALUES
(13, 'Development'),
(14, 'Design'),
(15, 'Graphics'),
(16, 'Technology'),
(17, 'Tips'),
(18, 'Testing'),
(19, 'GST Registration'),
(20, 'GST');

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
(2, 'SSRP', 'Business', '7785875', 'rangnathmishra36@gmail.com', 'ret', 1, '2023-03-12 18:13:21', '2023-03-12 18:14:43'),
(3, 'Rangnath', 'Mishra', '08553281855', 'rangnathmishra@mkstechnosoft.com', 'hi this new mail testing', 0, '2023-03-17 06:06:08', NULL);

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
(1, 'name', 'My Legal Business'),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'Mylegalbusiness'),
(9, 'logo', 'uploads/1678555560_logo-white.png'),
(11, 'welcome_message', 'Mylegalbusiness'),
(12, 'banner', 'uploads/1654074180_mks-banner.png');

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
(1, 'mylegalbusiness', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1678555620_logo-white.png', NULL, '2021-01-20 14:02:37', '2023-03-11 17:27:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
