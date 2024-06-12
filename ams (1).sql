-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 11, 2024 at 07:17 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `purpose` text NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`application_id`, `name`, `purpose`) VALUES
(1, 'CITES', 'Permitting System for export...tttt'),
(2, 'TIMS', 'Tourism Information Management System');

-- --------------------------------------------------------

--
-- Table structure for table `application_assignments`
--

DROP TABLE IF EXISTS `application_assignments`;
CREATE TABLE IF NOT EXISTS `application_assignments` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `assigned_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  KEY `asset_id` (`asset_id`),
  KEY `application_id` (`application_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_assignments`
--

INSERT INTO `application_assignments` (`assignment_id`, `asset_id`, `application_id`, `assigned_date`) VALUES
(1, 24, 1, '2024-06-10 13:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `Asset_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Serial_Number` varchar(255) DEFAULT NULL,
  `Engraving` varchar(255) DEFAULT NULL,
  `Date_of_Delivery` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Available',
  PRIMARY KEY (`Asset_ID`),
  UNIQUE KEY `Serial_Number` (`Serial_Number`,`Engraving`),
  UNIQUE KEY `Engraving` (`Engraving`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`Asset_ID`, `Name`, `Model`, `Serial_Number`, `Engraving`, `Date_of_Delivery`, `Status`) VALUES
(16, 'Keyboard', 'lenovo', '8SSD50M39546KPV0F02C', 'MTW-HQT-KB-0019', '2024-04-21', 'Repair'),
(15, 'Laptop', 'lenovo', 'PF2HPH2Y', 'MTW-HQT-LT-0021', '2021-04-02', 'Assigned'),
(14, 'Monitor', 'lenovo ThinkVision', 'V5ARK021', 'MTW-HQT-MT-0054', '2021-04-02', 'Assigned'),
(13, 'Laptop', 'lenovo', 'THN-VSU-MSE-E45', 'MTW-HQT-MSE-5289', '2024-05-08', 'Available'),
(17, 'Mouse', 'lenovo', '8SSD5OM39546KPV0F02C', 'MTW-18', '2021-04-02', 'Assigned'),
(19, 'Laptop', 'lenovo', 'pf-4ped0f', 'cedp/mtw/lt-058', '2024-03-08', 'Assigned'),
(21, 'PC', 'Dell', 'GKDG7T2', 'CEDP/MOTWA/PU-020', '2019-04-24', 'Assigned'),
(23, 'Printer', 'hp', 'DERF56098UJ', 'MTW-HQT-PRT-5289', '2024-05-03', 'Available'),
(24, 'Server', 'hp', 'PF2HPH6YUH', 'MTW-HQT-MSE-548', '2024-06-10', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `asset_assignments`
--

DROP TABLE IF EXISTS `asset_assignments`;
CREATE TABLE IF NOT EXISTS `asset_assignments` (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `requisition_form` varchar(255) DEFAULT NULL,
  `assignment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_assignments`
--

INSERT INTO `asset_assignments` (`assignment_id`, `asset_id`, `user_id`, `location`, `requisition_form`, `assignment_date`) VALUES
(27, 19, 8, '', 'uploads/Network settings.txt', '2024-05-21 16:31:31'),
(32, 15, 10, '', 'uploads/Cloud Client Access to VPN..PDF', '2024-05-22 11:40:47'),
(35, 14, 10, '', 'uploads/Network settings.txt', '2024-05-22 11:56:19'),
(34, 17, 10, '', 'uploads/System details main.xlsx', '2024-05-22 11:41:27'),
(36, 21, 11, '', 'uploads/Conservation Awards-Call for nominations 2024.doc', '2024-05-24 12:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `asset_types`
--

DROP TABLE IF EXISTS `asset_types`;
CREATE TABLE IF NOT EXISTS `asset_types` (
  `Asset_Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_Type_Name` varchar(255) NOT NULL,
  `Description` text,
  PRIMARY KEY (`Asset_Type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_types`
--

INSERT INTO `asset_types` (`Asset_Type_ID`, `Asset_Type_Name`, `Description`) VALUES
(1, 'PC', NULL),
(2, 'Monitor', NULL),
(3, 'Mouse', NULL),
(4, 'Keyboard', NULL),
(5, 'Laptop', NULL),
(6, 'Lock', NULL),
(7, 'Printer', NULL),
(9, 'Server', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `Custom_Field_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Field_Name` varchar(255) DEFAULT NULL,
  `Field_Value` text,
  PRIMARY KEY (`Custom_Field_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `Department_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Department_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Department_ID`, `Department_Name`) VALUES
(4, 'F&A'),
(2, 'Wildlife'),
(3, 'Museum & Monuments'),
(6, 'Tourism');

-- --------------------------------------------------------

--
-- Table structure for table `depreciation_schedule`
--

DROP TABLE IF EXISTS `depreciation_schedule`;
CREATE TABLE IF NOT EXISTS `depreciation_schedule` (
  `Depreciation_Schedule_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Depreciation_Date` date DEFAULT NULL,
  `Depreciation_Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Depreciation_Schedule_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
CREATE TABLE IF NOT EXISTS `designations` (
  `Designation_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Designation_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Designation_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`Designation_ID`, `Designation_Name`) VALUES
(1, 'Officer'),
(4, 'Auditor'),
(3, 'Accountant'),
(5, 'Senior Information Scientist'),
(6, 'Under Secretary'),
(10, 'IT Support'),
(8, 'Minister'),
(9, 'State Minister'),
(11, 'Database Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `Document_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text,
  `File_Path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Document_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`Document_ID`, `Name`, `Description`, `File_Path`) VALUES
(1, 'Lenove laptop', 'Repairs done', 'uploads/BILL SL PERMIT.pdf'),
(2, 'System details', 'All netwok details', 'uploads/System details main.xlsx');

-- --------------------------------------------------------

--
-- Table structure for table `ip_addresses`
--

DROP TABLE IF EXISTS `ip_addresses`;
CREATE TABLE IF NOT EXISTS `ip_addresses` (
  `IP_Address_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP_Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IP_Address_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_addresses`
--

INSERT INTO `ip_addresses` (`IP_Address_ID`, `IP_Address`) VALUES
(1, '192.168.0.10'),
(2, '192.168.0.11'),
(3, '192.168.0.12'),
(4, '192.168.0.13'),
(5, '192.168.0.14'),
(6, '192.168.0.15'),
(7, '192.168.0.16'),
(8, '192.168.0.17'),
(9, '192.168.0.18'),
(10, '192.168.0.19'),
(11, '192.168.0.20'),
(12, '192.168.0.21'),
(13, '192.168.0.22'),
(14, '192.168.0.23'),
(15, '192.168.0.24'),
(16, '192.168.0.25'),
(17, '192.168.0.26'),
(18, '192.168.0.27'),
(19, '192.168.0.28'),
(20, '192.168.0.29'),
(21, '192.168.0.30'),
(22, '192.168.0.31'),
(23, '192.168.0.32'),
(24, '192.168.0.33'),
(25, '192.168.0.34'),
(26, '192.168.0.35'),
(27, '192.168.0.36'),
(28, '192.168.0.37'),
(29, '192.168.0.38'),
(30, '192.168.0.39'),
(31, '192.168.0.40'),
(32, '192.168.0.41'),
(33, '192.168.0.42'),
(34, '192.168.0.43'),
(35, '192.168.0.44'),
(36, '192.168.0.45'),
(37, '192.168.0.46'),
(38, '192.168.0.47'),
(39, '192.168.0.48'),
(40, '192.168.0.49'),
(41, '192.168.0.50'),
(42, '192.168.0.51'),
(43, '192.168.0.52'),
(44, '192.168.0.53'),
(45, '192.168.0.54'),
(46, '192.168.0.55'),
(47, '192.168.0.56'),
(48, '192.168.0.57'),
(49, '192.168.0.58'),
(50, '192.168.0.59'),
(51, '192.168.0.60'),
(52, '192.168.0.61'),
(53, '192.168.0.62'),
(54, '192.168.0.63'),
(55, '192.168.0.64'),
(56, '192.168.0.65'),
(57, '192.168.0.66'),
(58, '192.168.0.67'),
(59, '192.168.0.68'),
(60, '192.168.0.69'),
(61, '192.168.0.70'),
(62, '192.168.0.71'),
(63, '192.168.0.72'),
(64, '192.168.0.73'),
(65, '192.168.0.74'),
(66, '192.168.0.75'),
(67, '192.168.0.76'),
(68, '192.168.0.77'),
(69, '192.168.0.78'),
(70, '192.168.0.79'),
(71, '192.168.0.80'),
(72, '192.168.0.81'),
(73, '192.168.0.82'),
(74, '192.168.0.83'),
(75, '192.168.0.84'),
(76, '192.168.0.85'),
(77, '192.168.0.86'),
(78, '192.168.0.87'),
(79, '192.168.0.88'),
(80, '192.168.0.89'),
(81, '192.168.0.90'),
(82, '192.168.0.91'),
(83, '192.168.0.92'),
(84, '192.168.0.93'),
(85, '192.168.0.94'),
(86, '192.168.0.95'),
(87, '192.168.0.96'),
(88, '192.168.0.97'),
(89, '192.168.0.98'),
(90, '192.168.0.99'),
(91, '192.168.0.100'),
(92, '192.168.0.101'),
(93, '192.168.0.102'),
(94, '192.168.0.103'),
(95, '192.168.0.104'),
(96, '192.168.0.105'),
(97, '192.168.0.106'),
(98, '192.168.0.107'),
(99, '192.168.0.108'),
(100, '192.168.0.109'),
(101, '192.168.0.110'),
(102, '192.168.0.111'),
(103, '192.168.0.112'),
(104, '192.168.0.113'),
(105, '192.168.0.114'),
(106, '192.168.0.115'),
(107, '192.168.0.116'),
(108, '192.168.0.117'),
(109, '192.168.0.118'),
(110, '192.168.0.119'),
(111, '192.168.0.120'),
(112, '192.168.0.121'),
(113, '192.168.0.122'),
(114, '192.168.0.123'),
(115, '192.168.0.124'),
(116, '192.168.0.125'),
(117, '192.168.0.126'),
(118, '192.168.0.127'),
(119, '192.168.0.128'),
(120, '192.168.0.129'),
(121, '192.168.0.130'),
(122, '192.168.0.131'),
(123, '192.168.0.132'),
(124, '192.168.0.133'),
(125, '192.168.0.134'),
(126, '192.168.0.135'),
(127, '192.168.0.136'),
(128, '192.168.0.137'),
(129, '192.168.0.138'),
(130, '192.168.0.139'),
(131, '192.168.0.140'),
(132, '192.168.0.141'),
(133, '192.168.0.142'),
(134, '192.168.0.143'),
(135, '192.168.0.144'),
(136, '192.168.0.145'),
(137, '192.168.0.146'),
(138, '192.168.0.147'),
(139, '192.168.0.148'),
(140, '192.168.0.149'),
(141, '192.168.0.150'),
(142, '192.168.0.151'),
(143, '192.168.0.152'),
(144, '192.168.0.153'),
(145, '192.168.0.154'),
(146, '192.168.0.155'),
(147, '192.168.0.156'),
(148, '192.168.0.157'),
(149, '192.168.0.158'),
(150, '192.168.0.159'),
(151, '192.168.0.160'),
(152, '192.168.0.161'),
(153, '192.168.0.162'),
(154, '192.168.0.163'),
(155, '192.168.0.164'),
(156, '192.168.0.165'),
(157, '192.168.0.166'),
(158, '192.168.0.167'),
(159, '192.168.0.168'),
(160, '192.168.0.169'),
(161, '192.168.0.170'),
(162, '192.168.0.171'),
(163, '192.168.0.172'),
(164, '192.168.0.173'),
(165, '192.168.0.174'),
(166, '192.168.0.175'),
(167, '192.168.0.176'),
(168, '192.168.0.177'),
(169, '192.168.0.178'),
(170, '192.168.0.179'),
(171, '192.168.0.180'),
(172, '192.168.0.181'),
(173, '192.168.0.182'),
(174, '192.168.0.183'),
(175, '192.168.0.184'),
(176, '192.168.0.185'),
(177, '192.168.0.186'),
(178, '192.168.0.187'),
(179, '192.168.0.188'),
(180, '192.168.0.189'),
(181, '192.168.0.190'),
(182, '192.168.0.191'),
(183, '192.168.0.192'),
(184, '192.168.0.193'),
(185, '192.168.0.194'),
(186, '192.168.0.195'),
(187, '192.168.0.196'),
(188, '192.168.0.197'),
(189, '192.168.0.198'),
(190, '192.168.0.199'),
(191, '192.168.0.200');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `Location_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Location_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Location_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`Location_ID`, `Location_Name`) VALUES
(1, 'n/a'),
(2, 'PS Office');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_logs`
--

DROP TABLE IF EXISTS `maintenance_logs`;
CREATE TABLE IF NOT EXISTS `maintenance_logs` (
  `Maintenance_Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Maintenance_Date` date DEFAULT NULL,
  `Maintenance_Details` text,
  PRIMARY KEY (`Maintenance_Log_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_schedule`
--

DROP TABLE IF EXISTS `maintenance_schedule`;
CREATE TABLE IF NOT EXISTS `maintenance_schedule` (
  `Maintenance_Schedule_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Maintenance_Date` date DEFAULT NULL,
  `Maintenance_Details` text,
  PRIMARY KEY (`Maintenance_Schedule_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `previous_locations`
--

DROP TABLE IF EXISTS `previous_locations`;
CREATE TABLE IF NOT EXISTS `previous_locations` (
  `Previous_Location_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Previous_Location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Previous_Location_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `repair_history`
--

DROP TABLE IF EXISTS `repair_history`;
CREATE TABLE IF NOT EXISTS `repair_history` (
  `Repair_History_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Repair_Date` date DEFAULT NULL,
  `Repair_Details` text,
  PRIMARY KEY (`Repair_History_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `selected_assets_ips`
--

DROP TABLE IF EXISTS `selected_assets_ips`;
CREATE TABLE IF NOT EXISTS `selected_assets_ips` (
  `Selected_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `IP_Address_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Selected_ID`),
  UNIQUE KEY `Asset_ID` (`Asset_ID`,`IP_Address_ID`),
  UNIQUE KEY `IP_Address_ID` (`IP_Address_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_assets_ips`
--

INSERT INTO `selected_assets_ips` (`Selected_ID`, `Asset_ID`, `IP_Address_ID`) VALUES
(12, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_records`
--

DROP TABLE IF EXISTS `service_records`;
CREATE TABLE IF NOT EXISTS `service_records` (
  `Service_Record_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Date_of_Service` date DEFAULT NULL,
  `Type_of_Service` varchar(255) DEFAULT NULL,
  `Description_of_Work` text,
  `Serviced_By` varchar(255) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Service_Record_ID`),
  KEY `Asset_ID` (`Asset_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_records`
--

INSERT INTO `service_records` (`Service_Record_ID`, `Asset_ID`, `Date_of_Service`, `Type_of_Service`, `Description_of_Work`, `Serviced_By`, `Cost`) VALUES
(1, 2, '2024-05-03', 'Repair', 'Screen was replaced', 'HM IT services', '456768.00'),
(2, 5, '2024-04-26', 'Service', 'dusted and cleaned', 'HM IT services', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usage_history`
--

DROP TABLE IF EXISTS `usage_history`;
CREATE TABLE IF NOT EXISTS `usage_history` (
  `Usage_History_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_ID` int(11) DEFAULT NULL,
  `Usage_Date` date DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `location` varchar(20) NOT NULL,
  PRIMARY KEY (`Usage_History_ID`),
  KEY `fk_user_id` (`User_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usage_history`
--

INSERT INTO `usage_history` (`Usage_History_ID`, `Asset_ID`, `Usage_Date`, `User_ID`, `location`) VALUES
(1, 19, '2024-05-21', 8, ''),
(2, 14, '2024-05-22', 8, ''),
(3, 13, '2024-05-22', 0, 'KABALE'),
(4, 13, '2024-05-22', 7, ''),
(5, 14, '2024-05-22', 0, 'Jinja'),
(6, 15, '2024-05-22', 10, ''),
(7, 17, '2024-05-22', 7, ''),
(8, 17, '2024-05-22', 10, ''),
(9, 14, '2024-05-22', NULL, 'Storage'),
(10, 14, '2024-05-22', 10, ''),
(11, 21, '2024-05-24', 11, ''),
(12, 13, '2024-05-24', NULL, 'Storage');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Designation_ID` int(11) DEFAULT NULL,
  `Department_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `UC_Email` (`Email`),
  KEY `Designation_ID` (`Designation_ID`),
  KEY `Department_ID` (`Department_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `First_Name`, `Last_Name`, `Email`, `Designation_ID`, `Department_ID`) VALUES
(11, 'Edwin', 'Sserunkuuma L', 'edwin.lutalo@tourism.go.ug', 10, 4),
(10, 'Immaculate', 'Muganwa', 'immaculate.muganwa@tourism.go.ug', 1, 4),
(8, 'Eric', 'Tinka', 'eric.tinka@ng.bo', 1, 3),
(7, 'Eugine', 'Ferguson', 'eugine.gergn@dh.co', 1, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
