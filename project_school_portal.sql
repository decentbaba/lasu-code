-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2024 at 01:26 PM
-- Server version: 5.5.50
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_school_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'benjamin.onuorah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submission`
--

CREATE TABLE `assignment_submission` (
  `submit_id` int(20) NOT NULL,
  `expected_score` varchar(100) NOT NULL,
  `teacher_score` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `lesson_id` varchar(50) NOT NULL,
  `your_answer` text NOT NULL,
  `your_upload` varchar(255) NOT NULL,
  `date_submitted` varchar(50) NOT NULL,
  `teacher_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment_submission`
--

INSERT INTO `assignment_submission` (`submit_id`, `expected_score`, `teacher_score`, `user_id`, `user_type`, `lesson_id`, `your_answer`, `your_upload`, `date_submitted`, `teacher_note`) VALUES
(9, '100', '100', '1', 'admin', '2', 'fdgfdgdfgdfgdfgdfgfd\r\ngdfgdf\r\ngdfgdfg', '', '2024-05-02 12:00:11.068370', 'dd'),
(10, '100', '100', '1', 'admin', '1', 'OBJECTIVE  \r\nYour cooperative society need a professional software application to store and manage your transaction record as your record grows and data operation and retrieval becomes more complex and difficult with Microsoft excel spreadsheet.  \r\n\r\nOUR SOLUTION\r\nCooperative Savings and Loan Software (CSLS) is a customized software we would develop for your organization, we will work closely with your personnel to understand your operations and how you have been storing, organizing  and managing your record using  Microsoft excel spreadsheet. This knowledge will help us to design and develop a custom software that will meet your specific need.\r\n\r\nThe software is going to be a web based software that will be hosted online so that every member of the cooperative can login to access their saving details, loan and other financial records.\r\n\r\nThe software will use a database to store all record in a well structure design and format and a back-end programming language to simplify your task and make it easy for you to access your information.\r\n\r\nProject work-flow and development stages\r\nIn accord with the scope of the project and the client\'s wishes. All projects include the stages described below.\r\n\r\nProposal and approval\r\nUpon receiving your request, we provide you with a proposal with the project cost and work-flow and we got an approval to initiate the project with a weekly progress report and testing.\r\n\r\nThree-month bug-free warranty\r\nOnce the final the project have been finally delivered to you, your 6-month development warranty begins. During this period we fix bugs - if there are any - in our code, at no charge to you. We have a high degree of confidence in our testing/quality assurance processes. That is why we offer such a unique extended development warranty to all our clients.', '2024-05-03_083816.638495Ben_Onuorah_Ndu_Uwa_Life.jpg', '2024-05-03 08:38:16.638435', 'Good'),
(11, '100', '80', '2', 'student', '8', 'Here is my submission', '2024-05-04_090556.2953564.jpg', '2024-05-04 09:05:56.295323', 'Fair performance'),
(12, '50', '', '1', 'admin', '3', 'Here is my ansererere', '', '2024-05-04 13:32:14.974917', ''),
(13, '100', '75', '3', 'student', '1', 'Here is my answer ......', '', '2024-05-04 14:21:49.563414', 'Very good effort....'),
(14, '100', '', '3', 'student', '4', 'ffdf', '', '2024-05-04 14:25:32.169119', '');

-- --------------------------------------------------------

--
-- Table structure for table `class_tb`
--

CREATE TABLE `class_tb` (
  `id` int(10) NOT NULL,
  `class_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_tb`
--

INSERT INTO `class_tb` (`id`, `class_name`) VALUES
(1, 'Basic 1'),
(2, 'Basic 2'),
(3, 'Basic 3'),
(4, 'JSS 1');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_accesskey_request`
--

CREATE TABLE `j_nems_accesskey_request` (
  `id` int(10) NOT NULL,
  `date_request` varchar(100) DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `enter_key` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_deadline`
--

CREATE TABLE `j_nems_deadline` (
  `id` int(10) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `post_id` varchar(100) DEFAULT NULL,
  `com_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_deadline`
--

INSERT INTO `j_nems_deadline` (`id`, `status`, `post_id`, `com_id`) VALUES
(38, '1', '36', '');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_instruction`
--

CREATE TABLE `j_nems_instruction` (
  `id` int(10) NOT NULL,
  `instruction` text NOT NULL,
  `com_id` varchar(50) DEFAULT NULL,
  `post_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_instruction`
--

INSERT INTO `j_nems_instruction` (`id`, `instruction`, `com_id`, `post_id`) VALUES
(38, 'sdsds\r\n<hr>\r\n<br />\r\n1. 50% Correct Answer is the pass mark <br />\r\n2. You have 60 minutes to complete the test <br />\r\n3. Do not click the browser refresh button when taken the test <br />\r\n4. After submitting do not click the browser back button <br />\r\n5. Cheating is not allowed. <br />\r\n<br />\r\nThank you', '', '36');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_limit`
--

CREATE TABLE `j_nems_limit` (
  `id` int(10) NOT NULL,
  `percenta` varchar(100) NOT NULL,
  `com_id` varchar(50) NOT NULL,
  `post_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_limit`
--

INSERT INTO `j_nems_limit` (`id`, `percenta`, `com_id`, `post_id`) VALUES
(38, '50', '', '36');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_post`
--

CREATE TABLE `j_nems_post` (
  `id` int(10) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `com_id` varchar(50) NOT NULL,
  `test_type` varchar(20) DEFAULT NULL,
  `num_attempt` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_post`
--

INSERT INTO `j_nems_post` (`id`, `post_name`, `detail`, `com_id`, `test_type`, `num_attempt`, `user_id`) VALUES
(36, 'Test 1', 'sdsds', '', 'open', 'Multiple times', '');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_question`
--

CREATE TABLE `j_nems_question` (
  `id` int(10) NOT NULL,
  `test_id` varchar(20) DEFAULT NULL,
  `question` text,
  `question_img` varchar(255) NOT NULL,
  `optionA` varchar(20) NOT NULL,
  `optionA_detail` text,
  `optionA_img` varchar(255) NOT NULL,
  `optionB` varchar(20) DEFAULT NULL,
  `optionB_detail` text,
  `optionB_img` varchar(255) NOT NULL,
  `optionC` varchar(20) DEFAULT NULL,
  `optionC_detail` text,
  `optionC_img` varchar(255) NOT NULL,
  `optionD` varchar(20) DEFAULT NULL,
  `optionD_detail` text,
  `optionD_img` varchar(255) NOT NULL,
  `correct_option` varchar(20) DEFAULT NULL,
  `correct_option_detail` text,
  `ans_img` varchar(255) NOT NULL,
  `com_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_question`
--

INSERT INTO `j_nems_question` (`id`, `test_id`, `question`, `question_img`, `optionA`, `optionA_detail`, `optionA_img`, `optionB`, `optionB_detail`, `optionB_img`, `optionC`, `optionC_detail`, `optionC_img`, `optionD`, `optionD_detail`, `optionD_img`, `correct_option`, `correct_option_detail`, `ans_img`, `com_id`) VALUES
(236, '36', 'dfdf dfdfd', '', 'A', 'fdfd', '', 'B', 'dfd', '', 'C', 'fd', '', 'D', 'dfd', '', 'A', '', '', ''),
(237, '36', 'fgfg', '', 'A', 'fg', '', 'B', 'fgf', '', 'C', 'gfgfg', '', 'D', 'fgfg', '', 'A', 'fff', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_result`
--

CREATE TABLE `j_nems_result` (
  `id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `question_id` varchar(10) NOT NULL,
  `user_answer` varchar(10) NOT NULL,
  `test_summary` text NOT NULL,
  `com_id` varchar(50) NOT NULL,
  `date_taken` varchar(40) DEFAULT NULL,
  `batch_num_val` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_result`
--

INSERT INTO `j_nems_result` (`id`, `user_email`, `question_id`, `user_answer`, `test_summary`, `com_id`, `date_taken`, `batch_num_val`) VALUES
(91, '2', '237', 'C', '\r\n<b> Start time: 09:58 AM. </b>\r\n<br />\r\n<b> End time: 09:58 AM. </b>\r\n', '', '04-05-2024, 09:58:11 AM', '1'),
(92, '2', '236', 'D', '\r\n<b> Start time: 09:58 AM. </b>\r\n<br />\r\n<b> End time: 09:58 AM. </b>\r\n', '', '04-05-2024, 09:58:11 AM', '1'),
(93, '3', '236', 'C', '\r\n<b> Start time: 07:15 AM. </b>\r\n<br />\r\n<b> End time: 07:15 AM. </b>\r\n', '', '05-05-2024, 07:15:57 AM', '2'),
(94, '3', '237', 'B', '\r\n<b> Start time: 07:15 AM. </b>\r\n<br />\r\n<b> End time: 07:15 AM. </b>\r\n', '', '05-05-2024, 07:15:57 AM', '2');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_result_list`
--

CREATE TABLE `j_nems_result_list` (
  `id` int(10) NOT NULL,
  `date_taken` varchar(20) DEFAULT NULL,
  `test_name` varchar(255) DEFAULT NULL,
  `test_id` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `batch_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_result_list`
--

INSERT INTO `j_nems_result_list` (`id`, `date_taken`, `test_name`, `test_id`, `student_id`, `batch_num`) VALUES
(17, '04-05-2024, 09:58:11', '', '36', '2', '1'),
(18, '05-05-2024, 07:15:57', '', '36', '3', '2');

-- --------------------------------------------------------

--
-- Table structure for table `j_nems_timer`
--

CREATE TABLE `j_nems_timer` (
  `id` int(10) NOT NULL,
  `time_set` varchar(100) DEFAULT NULL,
  `post_id` varchar(100) DEFAULT NULL,
  `com_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `j_nems_timer`
--

INSERT INTO `j_nems_timer` (`id`, `time_set`, `post_id`, `com_id`) VALUES
(38, '1800', '36', '');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_assignment`
--

CREATE TABLE `lesson_assignment` (
  `assignment_id` int(20) NOT NULL,
  `lesson_id` varchar(50) NOT NULL,
  `assignment_title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `max_score` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_assignment`
--

INSERT INTO `lesson_assignment` (`assignment_id`, `lesson_id`, `assignment_title`, `detail`, `max_score`) VALUES
(1, '1', 'Maths assignment 1b', 'Here is the assignment here...', '100'),
(5, '5', 'tessss', 'sdsds', '100'),
(9, '2', 'Assignment on history of Nigeria', 'This Service Level Agreement (SLA) is entered into by and between BICL (referred to as "Service Provider") and LASAA Staff Cooperative Society  (referred to as "Client") on this date 11 July 2023.\r\n    1. Service Overview\r\n1.1. Scope: This SLA defines the terms and conditions under which the Service Provider will deliver Cooperative Savings and Loan Software (CSLS) to the Client.\r\n1.2. Objective: The objective of this SLA is to ensure that the CSLS services provided by the Service Provider meet the agreed-upon performance standards and levels of support.\r\n    2. Service Description\r\n2.1. Cooperative Savings and Loan Software (CSLS) is a customized software we would develop for your organization, we will work closely with your personnel to understand your operations and how you have been storing, organizing  and managing your record using  Microsoft excel spreadsheet. This knowledge will help us to design and develop a custom software that will meet your specific need.\r\nThe software is going to be a web based software that will be hosted online so that every member of the cooperative can login to access their saving details, loan and other financial records.\r\n\r\nThe software will use a database to store all record in a well structure design and format and a back-end programming language to simplify your task and make it easy for you to access your information.\r\n    3. Service Levels\r\nProject work-flow and development stages\r\nIn accord with the scope of the project and the client\'s wishes. All projects include the stages described below.\r\n\r\nProposal and approval\r\nUpon receiving your request, we provide you with a proposal with the project cost and work-flow and we got an approval to initiate the project with a weekly progress report and testing.\r\n\r\nThree-month bug-free warranty\r\nOnce the final the project have been finally delivered to you, your 6-month development warranty begins. During this period we fix bugs - if there are any - in our code, at no charge to you. We have a high degree of confidence in our testing/quality assurance processes. That is why we offer such a unique extended development warranty to all our clients.\r\n', '100'),
(10, '4', 'Sumultaneous equation', 'submit_id\r\nexpected_score\r\nyour_score\r\nuser_id\r\nuser_type\r\nlesson_id\r\nyour_answer\r\ndate_submitted\r\n\r\nSolve this', '100'),
(11, '3', 'Intro to Grammar Assignment', 'Technology - Education - Art (TEA) TEALearn.org is an Online Learning and Management System (OLMS) that uses Technology and Art to Promote Learning.\r\n\r\nProduct, Technology, and Service:\r\n\r\n1. Product Overview: TEA Learn is a comprehensive online learning and management system designed to cater to the educational needs of students, educators, and institutions across Africa. It will provide a user-friendly platform for accessing educational resources, interactive learning materials, assessments, and communication tools.\r\n\r\n2. Key Features:\r\n    • Course Management: Users can create, manage, and enroll in courses tailored to various subjects and educational levels.\r\n    • Content Repository: A centralized repository for educational materials including documents, videos, quizzes, and interactive modules.\r\n    • Communication Tools: Facilitate seamless communication between students, teachers, and administrators through messaging, discussion forums, and announcements.\r\n    • Assessment and Feedback: Conduct assessments, quizzes, and assignments with automated grading and detailed feedback for students.\r\n    • Analytics and Reporting: Track student progress, performance metrics, and generate insightful reports for educators and administrators.', '50'),
(12, '8', 'Practical', 'INSTRUCTION:\r\nUse the drawing paper provided to do the drawings. Please write your Institution name (e.g Lagos State University), Your academic level (e.g 200 Level), Your name (Surname first, other name), Matric. Number and Phone number.', '100');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_td`
--

CREATE TABLE `lesson_td` (
  `lesson_id` int(10) NOT NULL,
  `lesson_title` varchar(255) NOT NULL,
  `lesson_detail` text NOT NULL,
  `subject` varchar(100) NOT NULL,
  `class_id` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `week` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_td`
--

INSERT INTO `lesson_td` (`lesson_id`, `lesson_title`, `lesson_detail`, `subject`, `class_id`, `term`, `week`) VALUES
(1, 'Maths topic 1', 'rere', '6', '1', '1', '4'),
(2, 'History of Nigeria', 'SERVICE LEVEL AGREEMENT (SLA) FOR WEB APPLICATION PROJECT\r\n\r\nThis Service Level Agreement (SLA) is entered into by and between BICL (referred to as "Service Provider") and LASAA Staff Cooperative Society  (referred to as "Client") on this date 11 July 2023.\r\n    1. Service Overview\r\n1.1. Scope: This SLA defines the terms and conditions under which the Service Provider will deliver Cooperative Savings and Loan Software (CSLS) to the Client.\r\n1.2. Objective: The objective of this SLA is to ensure that the CSLS services provided by the Service Provider meet the agreed-upon performance standards and levels of support.', '4', '1', '2', '9'),
(3, 'Intro to Grammar', 'sdsdsdsdsdsd\r\nsdsdsdsd', '3', '2', '2', '2'),
(4, 'Maths topic 2', 'Here is the details here....', '6', '1', '2', '1'),
(5, 'Maths topic 3', '', '6', '1', '3', '1'),
(6, 'Intro to maths', 'dsdsdss', '6', '1', '1', '1'),
(7, 'History of Nigeria part 2', 'SERVICE LEVEL AGREEMENT (SLA) FOR WEB APPLICATION PROJECT\r\n\r\nThis Service Level Agreement (SLA) is entered into by and between BICL (referred to as "Service Provider") and LASAA Staff Cooperative Society  (referred to as "Client") on this date 11 July 2023.\r\n    1. Service Overview\r\n1.1. Scope: This SLA defines the terms and conditions under which the Service Provider will deliver Cooperative Savings and Loan Software (CSLS) to the Client.\r\n1.2. Objective: The objective of this SLA is to ensure that the CSLS services provided by the Service Provider meet the agreed-upon performance standards and levels of support.\r\n    2. Service Description\r\n2.1. Cooperative Savings and Loan Software (CSLS) is a customized software we would develop for your organization, we will work closely with your personnel to understand your operations and how you have been storing, organizing  and managing your record using  Microsoft excel spreadsheet. This knowledge will help us to design and develop a custom software that will meet your specific need.\r\nThe software is going to be a web based software that will be hosted online so that every member of the cooperative can login to access their saving details, loan and other financial records.\r\n\r\nThe software will use a database to store all record in a well structure design and format and a back-end programming language to simplify your task and make it easy for you to access your information.\r\n    3. Service Levels\r\nProject work-flow and development stages\r\nIn accord with the scope of the project and the client\'s wishes. All projects include the stages described below.\r\n\r\nProposal and approval\r\nUpon receiving your request, we provide you with a proposal with the project cost and work-flow and we got an approval to initiate the project with a weekly progress report and testing.\r\n\r\nThree-month bug-free warranty\r\nOnce the final the project have been finally delivered to you, your 6-month development warranty begins. During this period we fix bugs - if there are any - in our code, at no charge to you. We have a high degree of confidence in our testing/quality assurance processes. That is why we offer such a unique extended development warranty to all our clients.\r\n\r\nPost-warranty period / professional support\r\nIf the client wants to implement an additional functionality, after the project is launched, we treat such requests as separate projects. If the client wants to implement small changes directly on the site, that can usually be done under our support service at a minimal cost starting from 5000 naira.\r\n\r\nCode Quality / Quality Assurance\r\nWe have an internal quality assurance process. This means that all code we develop is validated according to the latest standards and best practices of web development.\r\nWe delivers stable high-quality development products that are tested and built according to Software development best practices in performance, security and user interface (UI).\r\n\r\nHosting and back-up\r\nWe host our client web project on a secure hosting server with HTTPS support and does a monthly database backup and no cost.\r\n\r\n    4. Client Responsibilities\r\n4.1. Cooperation: The Client will cooperate with the Service Provider in providing necessary information, access, and resources required for the successful delivery of the web application services.\r\n4.2. Reporting Issues: The Client will promptly report any issues or bugs related to the web application to the Service Provider, including providing detailed information and steps to reproduce the problem.\r\n    5. Exclusions\r\n5.1. Third-Party Services: This SLA does not cover any issues or disruptions caused by third-party services or applications integrated with the web application.\r\n5.2. Force Majeure: The Service Provider shall not be held liable for any delays, disruptions, or failures caused by events beyond their reasonable control, including but not limited to natural disasters, acts of terrorism, or government regulations.\r\n    6. Term and Termination\r\n6.1. Term: This SLA will be effective from the date of signing and will remain in effect for the duration specified in the project proposal.\r\n6.2. Termination: Either party may terminate this SLA in the event of a material breach by the other party, subject to providing a written notice of the breach and a reasonable opportunity to cure it.\r\n    7. Confidentiality', '4', '1', '2', '1'),
(8, 'Drawing practical', 'INSTRUCTION:\r\nUse the drawing paper provided to do the drawings. Please write your Institution name (e.g Lagos State University), Your academic level (e.g 200 Level), Your name (Surname first, other name), Matric. Number and Phone number.', '7', '2', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_upload_td`
--

CREATE TABLE `lesson_upload_td` (
  `upload_id` int(10) NOT NULL,
  `lesson_id` varchar(50) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `youtube_video` varchar(255) NOT NULL,
  `image_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson_upload_td`
--

INSERT INTO `lesson_upload_td` (`upload_id`, `lesson_id`, `caption`, `youtube_video`, `image_file`) VALUES
(1, '1', '', 'eee', '2024-04-30_140020.339477IMG-20240420-WA0014.jpg'),
(2, '1', '', 'https://www.youtube.com/embed/OLH9Wy-wI9E', ''),
(3, '1', '', '', '2024-04-30_145627.701501WhatsApp_Image_2024-04-19_at_1.00.48_PM_2.jpeg'),
(4, '5', '', '', '2024-05-01_121236.237918Screenshot_2024-04-29_at_12-27-41_School_Portal.png'),
(5, '2', 'none', 'https://www.youtube.com/embed/OLH9Wy-wI9E', '2024-05-01_162430.700498Screenshot_2024-04-18_at_14-20-20_Educational_Perspectives.png'),
(6, '2', '', '', '2024-05-01_162502.690355Screenshot_2023-11-06_at_23-40-24_home_MediPalHealthCare.png'),
(7, '8', 'Yoruba couple', '', '2024-05-04_090312.785816inter1.jpg'),
(8, '8', 'Marlet scence', '', '2024-05-04_090331.059618advance1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nems_class`
--

CREATE TABLE `nems_class` (
  `class_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nems_message`
--

CREATE TABLE `nems_message` (
  `id` int(10) NOT NULL,
  `date_sent` varchar(10) DEFAULT NULL,
  `recipient_id` varchar(10) DEFAULT NULL,
  `recipient_type` varchar(10) DEFAULT NULL,
  `msg_subject` varchar(255) DEFAULT NULL,
  `msg_detail` text,
  `sender` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `school_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nems_message`
--

INSERT INTO `nems_message` (`id`, `date_sent`, `recipient_id`, `recipient_type`, `msg_subject`, `msg_detail`, `sender`, `status`, `school_id`) VALUES
(3, '236', NULL, NULL, '', 'df', NULL, NULL, ''),
(4, '237', NULL, NULL, '', 'fgfg', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `nems_school`
--

CREATE TABLE `nems_school` (
  `school_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `lga_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `address` text,
  `educator_name` varchar(255) DEFAULT NULL,
  `educator_phone` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `curr_session` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nems_school`
--

INSERT INTO `nems_school` (`school_id`, `state_id`, `lga_id`, `user_name`, `password`, `school_name`, `address`, `educator_name`, `educator_phone`, `create_date`, `logo`, `curr_session`) VALUES
(0027, '', '1', 'admin', 'edusystems321', 'EDUSystems School Setup', 'Nigeria', 'Femsin Technologies Solutions Ltd ', '', '2010-12-20 21:15:35', 'ola.jpg', '2014/2015'),
(0038, '', '1', 'elcrystal1', 'Montessori12', 'EL- CRYSTAL STAR NURSERY AND PRIMARY SCHOOL.', '4, Olowojeunjeje street , Igando, Lagos.', 'Mrs. Oyeleye ', '', '2021-12-20 07:13:16', '', ''),
(0039, '', '1', 'elcrystal2', 'Montessori13', 'EL- CRYSTAL STAR NURSERY AND PRIMARY SCHOOL', '40, Oje Olorunfemi street, Olorunfemi bus-stop Igando, Lagos.', 'Mrs. Oyeleye ', '', '2021-12-20 07:17:02', '', ''),
(0040, '', 'https://facebook.com', 'SoundMinds', 'SoundMinds12', 'Sound Minds Group of Schools ', '', 'Mrs. Smith', '', '2021-12-27 10:33:59', '', ''),
(0041, '', 'dffdf', 'biosus', 'Biosus321', 'BIOSUS DIVINE JEWELS SCHOOL', '', 'Mrs. Oyediran ', '', '2022-01-11 18:43:22', '', ''),
(0042, '', '', 'royale', 'Demo321', 'Spring Royale School', '', '', '', '2022-01-29 15:29:25', '', ''),
(0043, '', '1', 'Institute', 'Femsin2022', 'FEMSIN INSTITUTE ', '', '', '', '2022-04-10 20:22:42', '', ''),
(0044, '', '1', 'Demo', 'Demo321', 'Femsin International School ', '', 'Citz. Temitope O. Oguntosin', '08035317151', '2022-04-22 09:17:52', '', ''),
(0045, '', '1', 'cherish', 'Demo2022', 'EDUSystems International Schools ', '', '', '', '2022-04-26 07:53:17', '', ''),
(0046, '', '1', 'Coriander', 'Coriander321', 'Coriander Seeds Nursery and Primary School ', '', '', '', '2022-05-07 20:38:51', '', ''),
(0047, '', '', 'Coriandercollege', 'Coriandercollege321', 'Coriander Model College', '', '', '', '2022-05-10 01:52:09', '', ''),
(0048, '', '1', 'Corianderseeds', 'Corianderseeds321', 'Coriander Seeds PreSchool', '', '', '', '2022-05-26 22:08:37', '', ''),
(0049, '', '1', 'test', 'test', 'test', '', '', '', '2022-09-30 22:09:06', '', ''),
(0050, '', '1', 'Coriandermodel', 'Coriandermodel321', 'Coriander Model Senior College', '', '', '', '2022-10-02 06:47:48', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nems_test_mgt`
--

CREATE TABLE `nems_test_mgt` (
  `id` int(10) NOT NULL,
  `sch_id` varchar(50) DEFAULT NULL,
  `tutor_id` varchar(50) DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `date_approve` varchar(50) NOT NULL,
  `test_status` varchar(50) NOT NULL,
  `taken_test_batch_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_tb`
--

CREATE TABLE `student_tb` (
  `student_id` int(10) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `other_names` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_tb`
--

INSERT INTO `student_tb` (`student_id`, `surname`, `other_names`, `gender`, `date_of_birth`, `email`, `phone`, `class`, `password`, `date_reg`, `status`) VALUES
(2, 'fff', 'ggg', 'Male', '2024-04-29', 'kike@kike.com', '090', '2', 'kike2', '2024-04-29 08:35:03.964541', ''),
(3, 'chioma', 'ola', 'Male', '2024-05-03', 'chioma@mail.com', '', '1', 'chioma', '2024-05-03 17:40:17.225690', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_tb`
--

CREATE TABLE `subjects_tb` (
  `subject_id` int(10) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `class_id` varchar(50) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects_tb`
--

INSERT INTO `subjects_tb` (`subject_id`, `subject_name`, `class_id`, `term`) VALUES
(1, 'Maths', '2', '3'),
(3, 'English', '2', '1'),
(4, 'History', '1', '1'),
(5, 'Maths', '3', '1'),
(6, 'Maths', '1', '1'),
(7, 'Fine Art', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tb`
--

CREATE TABLE `teacher_tb` (
  `teacher_id` int(10) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `other_names` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class_id` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_reg` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tb`
--

INSERT INTO `teacher_tb` (`teacher_id`, `surname`, `other_names`, `gender`, `date_of_birth`, `email`, `phone`, `subject`, `class_id`, `password`, `date_reg`, `status`) VALUES
(2, 'Yemi', 'Olamide', 'Male', '2024-05-01', 'yemi@mail.com', '080676767676', '6', '1', 'yemi12', '2024-05-01 08:22:36.226199', ''),
(3, 'Femi', 'rtrt', 'Male', '2024-05-01', 'femi@test.com', '', '4', '1', 'femi', '2024-05-01 08:27:20.498778', ''),
(4, 'Onu', 'Titi', 'Female', '2024-05-01', 'onu@mail.com', '07777777', '5', '3', 'onu', '2024-05-01 08:36:28.461661', ''),
(5, 'Adewale', 'Koka', 'Male', '', 'adeee@mail.com', '', '1', '2', 'addddd', '2024-05-03 06:49:19.881769', ''),
(6, 'sdfsdfdsfsdfs', 'dfsdfs', 'Male', '', 'dfdfdfdfd@ss.com', '', '1', '2', 'dfdfdfdfdfd', '2024-05-03 06:53:32.428670', '');

-- --------------------------------------------------------

--
-- Table structure for table `terms_tb`
--

CREATE TABLE `terms_tb` (
  `id` int(10) NOT NULL,
  `term` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms_tb`
--

INSERT INTO `terms_tb` (`id`, `term`) VALUES
(1, '1st Term'),
(2, '2nd Term'),
(3, '3rd Term');

-- --------------------------------------------------------

--
-- Table structure for table `week_tb`
--

CREATE TABLE `week_tb` (
  `id` int(10) NOT NULL,
  `week_num` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `week_tb`
--

INSERT INTO `week_tb` (`id`, `week_num`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  ADD PRIMARY KEY (`submit_id`);

--
-- Indexes for table `class_tb`
--
ALTER TABLE `class_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_accesskey_request`
--
ALTER TABLE `j_nems_accesskey_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_deadline`
--
ALTER TABLE `j_nems_deadline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_instruction`
--
ALTER TABLE `j_nems_instruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_limit`
--
ALTER TABLE `j_nems_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_post`
--
ALTER TABLE `j_nems_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_question`
--
ALTER TABLE `j_nems_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_result`
--
ALTER TABLE `j_nems_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_result_list`
--
ALTER TABLE `j_nems_result_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_nems_timer`
--
ALTER TABLE `j_nems_timer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_assignment`
--
ALTER TABLE `lesson_assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `lesson_td`
--
ALTER TABLE `lesson_td`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `lesson_upload_td`
--
ALTER TABLE `lesson_upload_td`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `nems_class`
--
ALTER TABLE `nems_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `nems_message`
--
ALTER TABLE `nems_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nems_school`
--
ALTER TABLE `nems_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `nems_test_mgt`
--
ALTER TABLE `nems_test_mgt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_tb`
--
ALTER TABLE `student_tb`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `terms_tb`
--
ALTER TABLE `terms_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_tb`
--
ALTER TABLE `week_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assignment_submission`
--
ALTER TABLE `assignment_submission`
  MODIFY `submit_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `class_tb`
--
ALTER TABLE `class_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `j_nems_accesskey_request`
--
ALTER TABLE `j_nems_accesskey_request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_nems_deadline`
--
ALTER TABLE `j_nems_deadline`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `j_nems_instruction`
--
ALTER TABLE `j_nems_instruction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `j_nems_limit`
--
ALTER TABLE `j_nems_limit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `j_nems_post`
--
ALTER TABLE `j_nems_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `j_nems_question`
--
ALTER TABLE `j_nems_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `j_nems_result`
--
ALTER TABLE `j_nems_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `j_nems_result_list`
--
ALTER TABLE `j_nems_result_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `j_nems_timer`
--
ALTER TABLE `j_nems_timer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `lesson_assignment`
--
ALTER TABLE `lesson_assignment`
  MODIFY `assignment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lesson_td`
--
ALTER TABLE `lesson_td`
  MODIFY `lesson_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lesson_upload_td`
--
ALTER TABLE `lesson_upload_td`
  MODIFY `upload_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nems_class`
--
ALTER TABLE `nems_class`
  MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nems_message`
--
ALTER TABLE `nems_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nems_school`
--
ALTER TABLE `nems_school`
  MODIFY `school_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `nems_test_mgt`
--
ALTER TABLE `nems_test_mgt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_tb`
--
ALTER TABLE `student_tb`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `teacher_tb`
--
ALTER TABLE `teacher_tb`
  MODIFY `teacher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `terms_tb`
--
ALTER TABLE `terms_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `week_tb`
--
ALTER TABLE `week_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
