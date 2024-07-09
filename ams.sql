-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2024 at 12:13 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

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
  `application_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `purpose` text NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_assignments`
--

DROP TABLE IF EXISTS `application_assignments`;
CREATE TABLE IF NOT EXISTS `application_assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int NOT NULL,
  `application_id` int NOT NULL,
  `assigned_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  KEY `asset_id` (`asset_id`),
  KEY `application_id` (`application_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `Asset_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Serial_Number` varchar(255) DEFAULT NULL,
  `Engraving` varchar(255) DEFAULT NULL,
  `Date_of_Delivery` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Available',
  PRIMARY KEY (`Asset_ID`),
  UNIQUE KEY `Serial_Number` (`Serial_Number`,`Engraving`),
  UNIQUE KEY `Engraving` (`Engraving`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`Asset_ID`, `Name`, `Model`, `Serial_Number`, `Engraving`, `Date_of_Delivery`, `Status`) VALUES
(16, 'Keyboard', 'lenovo', '8SSD50M39546KPV0F02C', 'MTW-HQT-KB-0019', '2024-04-21', 'Repair'),
(15, 'Laptop', 'lenovo', 'PF2HPH2Y', 'MTW-HQT-LT-0021', '2021-04-02', 'Assigned'),
(14, 'Monitor', 'lenovo ThinkVision', 'V5ARK021', 'MTW-HQT-MT-0054', '2021-04-02', 'Assigned'),
(13, 'Laptop', 'lenovo', 'THN-VSU-MSE-E45', 'MTW-HQT-MSE-5289', '2024-05-08', 'Available'),
(17, 'Mouse', 'lenovo', '8SSD5OM39546KPV0F02C', 'MTW-18', '2021-04-02', 'Assigned'),
(19, 'Laptop', 'lenovo', 'pf-4ped0f', 'cedp/mtw/lt-058', '2024-03-08', 'Available'),
(21, 'PC', 'Dell', 'GKDG7T2', 'CEDP/MOTWA/PU-020', '2019-04-24', 'Assigned'),
(23, 'Printer', 'hp', 'DERF56098UJ', 'MTW-HQT-PRT-5289', '2024-05-03', 'Available'),
(24, 'Laptop', 'Lenovo ThinkPad', 'PF4P6TEE', 'CEDP/MTW/LT-069', '2024-04-05', 'Available'),
(25, 'Laptop', 'Lenovo ThinkPad', 'PF4P69A6', 'CEDP/MTW/LT-068', '2024-04-05', 'Available'),
(26, 'Laptop', 'Lenovo ThinkPad', 'PF4P60TJ', 'CEDP/MTW/LT-051', '2024-04-05', 'Available'),
(27, 'Laptop', 'lenovo ThinkPad', 'PF4P566H', 'CEDP/MTW/LT-071', '2024-04-05', 'Available'),
(28, 'Laptop', 'lenovo ThinkPad', 'PF4P6JCD', 'CEDP/MTW/LT-049', '2024-04-05', 'Available'),
(29, 'Laptop', 'Lenovo ThinkPad', 'PF4PECWC', 'CEDP/MTW/LT-048', '2024-04-05', 'Available'),
(30, 'Laptop', 'Lenovo ThinkPad', 'PF4P6BLJ', 'CEDP/MTW/LT-050', '2024-04-05', 'Available'),
(31, 'Laptop', 'lenovo ThinkPad', 'PF4P69ZH', 'CEDP/MTW/LT-074', '2024-04-05', 'Available'),
(32, 'Laptop', 'Lenovo ThinkPad', 'PF4P6PND', 'CEDP/MTW/LT-066', '2024-04-05', 'Available'),
(33, 'Laptop', 'lenovo ThinkPad', 'PF4PGVTF', 'CEDP/MTW/LT-072', '2024-04-05', 'Available'),
(34, 'Laptop', 'Lenovo ThinkPad T 14 Gen 4', 'PF4Q6HDT', 'CEDP/MTW/LT-075', '2024-04-05', 'Available'),
(35, 'Laptop', 'lenovo ThinkPad', 'PF4P5CVS', 'CEDP/MTW/LT-070', '2024-04-05', 'Available'),
(36, 'Laptop', 'lenovo ThinkPad', 'PF4PEA9A', 'CEDP/MTW/LT-063', '2024-04-05', 'Available'),
(37, 'Laptop', 'Lenovo ThinkPad T 14 Gen 4', 'PF4P643G', 'CEDP/MTW/LT-065', '2024-04-05', 'Available'),
(38, 'Laptop', 'lenovo ThinkPad', 'PF4PEF8C', 'CEDP/MTW/LT-064', '2024-04-05', 'Available'),
(39, 'Laptop', 'Lenovo ThinkPad T 14 Gen 4', 'PF4Q6HCC', 'CEDP/MTW/LT-054', '2024-04-05', 'Available'),
(40, 'Monitor', 'lenovo ThinkVision ', 'VXK51491', 'CEDP/MTW/MT/061', '2024-04-05', 'Available'),
(41, 'Monitor', 'lenovo ThinkVision', 'VYK51500', 'CEDP/MTW/MT063', '2024-04-05', 'Available'),
(42, 'Monitor', 'lenovo ThinkVision ', 'VYK51495', 'CEDP/MTW/MT/065', '2024-04-05', 'Available'),
(43, 'Monitor', 'lenovo ThinkVision', 'VYK54804', 'CEDP/MTW/MT/064', '2024-04-05', 'Available'),
(44, 'Monitor', 'lenovo ThinkVision ', 'VYK51504', 'CEDP/MTW/MT/066', '2024-04-05', 'Available'),
(45, 'Monitor', 'lenovo ThinkVision ', 'VYK53812', 'CEDP/MTW/MT/068', '2024-04-05', 'Available'),
(46, 'Monitor', 'lenovo ThinkVision', 'VYK53823', 'CEDP/MTW/MT/078', '2024-04-05', 'Available'),
(47, 'Monitor', 'lenovo ThinkVision ', 'VYK54793', 'CEDP/MTW/MT/069', '2024-04-05', 'Available'),
(48, 'Monitor', 'lenovo ThinkVision ', 'VYK51514', 'CEDP/MTW/MT/070', '2024-04-05', 'Available'),
(49, 'Monitor', 'lenovo ThinkVision ', 'VYK53819', 'CEDP/MTW/MT/071', '2024-04-05', 'Available'),
(50, 'Monitor', 'lenovo ThinkVision', 'VYK53837', 'CEDP/MTW/MT/079', '2024-04-05', 'Available'),
(51, 'Monitor', 'lenovo ThinkVision ', 'VYK53816', 'CEDP/MTW/MT/072', '2024-04-05', 'Available'),
(52, 'Monitor', 'lenovo ThinkVision ', 'VYK53813', 'CEDP/MTW/MT/073', '2024-04-05', 'Available'),
(53, 'Monitor', 'lenovo ThinkVision', 'VYK51490', 'CEDP/MTW/MT/077', '2024-04-05', 'Available'),
(54, 'Monitor', 'lenovo ThinkVision', 'VYK51499', 'CEDP/MTW/MT/076', '2024-04-05', 'Available'),
(55, 'Monitor', 'lenovo ThinkVision', 'VYK5150', 'CEDP/MTW/MT/080', '2024-04-05', 'Available'),
(56, 'Monitor', 'lenovo ThinkVision', 'VYK53809', 'CEDP/MTW/MT/075', '2024-04-05', 'Available'),
(57, 'Monitor', 'lenovo ThinkVision', 'VYK51508', 'CEDP/MTW/LT/055', '2024-04-05', 'Available'),
(58, 'Monitor', 'lenovo ThinkVision', 'VYK54790', 'CEDP/MTW/LT/054', '2024-04-05', 'Available'),
(59, 'Monitor', 'lenovo ThinkVision', 'VYK54803', 'CEDP/MTW/MT/052', '2024-04-05', 'Assigned'),
(60, 'Monitor', 'lenovo ThinkVision', 'VYK51509', 'CEDP/MTW/MT/051', '2024-04-05', 'Available'),
(61, 'Laptop', 'Lenovo thinkpad', 'CEDP/MTWA/LT-005', 'CEDP/MTWA/LT-005', '2023-02-14', 'Available'),
(62, 'Printer', 'Hp laserjet', 'CEDP/MTWA/LT-001', 'CEDP/MTWA/LT-001', '2023-02-27', 'Assigned'),
(63, 'Monitor', 'HP', '3CM3241DVP', 'MTW-HQT-MT-0101', '2023-11-30', 'Available'),
(64, 'Laptop', 'Omen', '5CD326CQLF', 'MTW-HQT-LT-0048', '2023-11-30', 'Assigned'),
(65, 'Laptop', 'HP', '5CD329614N', 'MTW-HQT-LT-0042', '2023-11-30', 'Available'),
(66, 'Keyboard', 'OODVJ', '14718X180102635', 'MTW-HQT-KB-0052', '2023-11-30', 'Assigned'),
(67, 'Monitor', 'HP', '3CM3241GXY', 'MTW-HQT-MT-0096', '2023-11-30', 'Assigned'),
(68, 'Monitor', 'DELL', '83NPLJ3', 'MTW-HQT-MT-0109', '2023-11-30', 'Assigned'),
(69, 'Keyboard', 'HP', '14218X180110371', 'MTW-HQT-KB-0053', '2023-11-30', 'Assigned'),
(70, 'CPU', 'DELL', '3clwwv3', 'MTW-HQT-LT-0057', '2023-11-30', 'Assigned'),
(71, 'Keyboard', 'DELL', 'CN-066M5G-L0300-366-017J', 'MTW-HQT-KB-0041', '2023-11-30', 'Assigned'),
(72, 'CPU', 'DELL', '6CLWWV3', 'MTW-HQT-PU-0063', '2023-11-30', 'Assigned'),
(73, 'Mouse', 'DELL', 'CN-0DMV3P-CH400-35M-018B-A01', 'MTW-HQT-MU-0095', '2023-11-30', 'Assigned'),
(74, 'Monitor', 'DELL', 'CN-0TW9WK-FCC00-1AE-CU1B-A15', 'MTW-HQT-MT-0108', '2023-03-11', 'Assigned'),
(75, 'UPS', 'ROSSO', 'ROS-TLS-1000', 'MTW-HQT-UP-0041', '2023-11-30', 'Assigned'),
(76, 'Keyboard', 'DELL', 'CN-066MSG-L0300-366-017H-A04', 'MTW-HQT-KB-0047', '2023-11-30', 'Assigned'),
(77, 'Monitor', 'HP', '3CM3241GZF', 'MTW-HQT-MT-095', '2023-11-30', 'Assigned'),
(78, 'Laptop', 'HP', '5CD32961CZ', 'MTW-HQT-LT-0045', '2023-11-30', 'Assigned'),
(79, 'Keyboard', 'OODVJ', '14218X180110374', 'MTW-HQT-KB-0051', '2023-11-30', 'Assigned'),
(80, 'UPS', 'ROSSO', 'ROA-TLS-1000', 'MTW-HQT-UP-0032', '2023-11-30', 'Assigned'),
(81, 'CPU', 'DELL', 'F9LWWV3', 'MTW-HQT-PU-0056', '2023-11-30', 'Assigned'),
(82, 'Keyboard', 'DELL', 'Cn-066m56-l0300', 'MTW-HQT-kb-0040', '2023-11-30', 'Assigned'),
(83, 'Monitor', 'DELL', 'CN-ODTW9WK-FCC00-1AE-CU7B-A15', 'MTW HQT-MT-0107', '2023-11-30', 'Assigned'),
(84, 'Mouse', 'DELL', 'CN-ODMV3P-CH400-35M-015V-A01', 'MTW-HQT-MU-00032', '2024-05-30', 'Assigned'),
(85, 'CPU', 'DELL', 'C9KWWV3', 'MTW HQT-PU-0062', '2023-11-30', 'Assigned'),
(86, 'Monitor', 'HP', '3CM3241DDB', 'MTW-HQT-MT-0099', '2023-11-30', 'Assigned'),
(87, 'Mouse', 'DELL', 'CN-ODMV3P-CH400-35M-01T7-A01', 'MTW -0101', '2023-11-30', 'Assigned'),
(88, 'Keyboard', 'DELL', 'CN-066M5G-L0300-366-0186-A04', 'MTW -HQT-KB-0046', '2023-11-30', 'Assigned'),
(89, 'Laptop', 'HP', '5CD3296176', 'MTW-HQT-LT-0043', '2023-11-30', 'Assigned'),
(90, 'Laptop', 'HP', '5CD32960XG', 'MTW-HQT-LT-0047', '2023-11-30', 'Assigned'),
(91, 'Keyboard', 'OODVJ', '14218X180110373', 'MTW-HQT-KB-0050', '2022-11-30', 'Assigned'),
(92, 'Monitor', 'HP', '3CM3241GXQ', 'MTW-HQT-MT-0097', '2023-11-30', 'Assigned'),
(93, 'Keyboard', 'HP', '14718X80102763', 'MTW-HQT-KB-0055', '2023-11-30', 'Assigned'),
(94, 'Monitor', 'HP', '1562AFKAR2WLNA6BNZR', 'MTW-HQT-MT-22', '2023-11-30', 'Available'),
(95, 'SCREEN VIDEO CONFERENCING', 'VDC', '2155150650XHPB000883', 'MTW-HQT-VC-0001', '2024-01-08', 'Assigned'),
(96, 'Server', 'HUAWE1', '2106190002G7PA00581', 'MTW-HQT-SV-0004', '2024-01-08', 'Assigned'),
(97, 'CPU', 'DELL', '89BWMV3', 'MTW-HQT-PU-0054', '2023-11-30', 'Assigned'),
(98, 'Monitor', 'DELL', 'CN-OTW9WK-FCC00-1AE-COTB-A15', 'MTW-HQT-MT-0104', '2023-11-30', 'Assigned'),
(99, 'Laptop', 'HP', '5CD3293QF9', 'MTW-HQT-LT-0044', '2023-11-30', 'Assigned'),
(100, 'Monitor', 'HP', '3CM26102G6', 'MTW-HQT-MT-0052', '2023-11-30', 'Available'),
(101, 'Hard Disk Drive', 'TRANSCED', 'H76659-0025', 'MTW-HQT-HD-5', '2023-11-30', 'Assigned'),
(102, 'Hard Disk Drive', 'TRANSCED', 'H76659-0022', 'MTW-HQT-HD-4', '2023-11-30', 'Available'),
(103, 'Mouse', 'HP', '3CM3241DDD', 'MTW-HQT-MT-0098', '2023-11-30', 'Assigned'),
(104, 'CPU', 'DELL', '4BLWWV3', 'MTW-HQT-PU-0059', '2023-11-30', 'Assigned'),
(105, 'Monitor', 'DELL', 'CN-OTW9WK-FCC00-1AE-C3UB-AI5', 'MTW-HQT-MT-0102', '2023-11-30', 'Assigned'),
(106, 'Keyboard', 'DELL', 'CN-066M5G-L0300-366-0095-A04', 'MTW-HQT-KB-0043', '2023-11-30', 'Assigned'),
(107, 'Monitor', 'HP', '3CM3241F1T', 'MTW-HQT-MT-0093', '2023-11-30', 'Assigned'),
(108, 'CPU', 'DELL', '1PLWWV3', 'MTW-HQT-PU-0061', '2023-11-30', 'Assigned'),
(109, 'Monitor', 'DELL', 'CN-OTW9WK-FCC00-1AE-ACPB-A15', 'MTW-HQT-MT-0111', '2023-11-30', 'Assigned'),
(110, 'Keyboard', 'DELL', 'CN-ODMV3P-CH400-35M-01U6-A01', 'MTW-HQT-KB-0045', '2023-11-30', 'Assigned'),
(111, 'Mouse', 'DELL', 'CN-ODMV3P-CH400-35M01RN-A01', 'MTW-0098', '2023-11-30', 'Available'),
(112, 'CPU', 'DELL', '5BLWWV3', 'MTW-HQT-PU-0060', '2023-11-30', 'Available'),
(113, 'Monitor', 'DELL', 'CN-OTW9WK-FCC00-1A5-DNEB-A15', 'MTW-HQT-MT-0110', '2023-11-30', 'Assigned'),
(114, 'Hard Disk Drive', 'TRANSCED', 'H76659-0021', 'MTW-HQT-HD-2', '2023-11-30', 'Available'),
(115, 'CPU', 'DELL', '7BLWWV3', 'MTW-HQT-PU-0055', '2023-11-30', 'Assigned'),
(116, 'Monitor', 'DELL', 'CN-OTW9WK-FCC00-1AJ-CWTB-A15', 'MTW-HQT-MT-0105', '2023-11-30', 'Assigned'),
(117, 'Mouse', 'DELL', 'CN-ODMV3P-CH400-35M-01TR-A01', 'MTW-0093', '2023-11-30', 'Assigned'),
(118, 'Keyboard', 'DELL', 'CN-066M5G-L0300-366-0166-A04', 'MTW-HQT-KB-0039', '2023-11-30', 'Assigned'),
(119, 'CPU', 'DELL', '1BLWWV3', 'MTW-HQT-PU-0058', '2023-11-30', 'Assigned'),
(120, 'Monitor', 'DELL', 'CN-OTW9WK-FCC00-1AJ-DPDB-A15', 'MTW-HQT-MT-0112', '2023-11-30', 'Assigned'),
(121, 'Keyboard', 'DELL', 'CN-066MSG-L0300-366-009Y-AOG', 'MTW-HQT-KB-0048', '2023-11-30', 'Assigned'),
(122, 'Mouse', 'DELL', 'CN-DDMV3P-CH400-35M-0103-A01', 'MTW-0096', '2023-11-30', 'Assigned'),
(123, 'CPU', 'DELL', '5CLWWV3', 'MTW-HQT-PU-0064', '2023-11-30', 'Assigned'),
(124, 'Monitor', 'DELL', 'CN-ODTW9WK-FCC00-1AE-AUDB-A15', 'MTW-HQT-MT-0106', '2023-11-30', 'Assigned'),
(125, 'Mouse', 'DELL', 'CN-ODMV3P-CH400-35M-018S-A01', 'MTW-0099', '2023-11-30', 'Assigned'),
(126, 'Keyboard', 'DELL', 'CN-066MSG-L0300-366-00D5-A04', 'MTW-HQT-KB-0044', '2023-11-30', 'Assigned'),
(127, 'Hard Disk Drive', 'TRANSCED', 'H76659-0027', 'MTW-HQT-HD-1', '2023-11-30', 'Assigned'),
(128, 'Laptop', 'Lenovo thinkpad', 'pf3nzkxn', 'CEDP/MTWA/LT-004', '2023-02-14', 'Available'),
(129, 'Hard Disk Drive', 'TRANSCED', 'H76659-0019', 'MTW-HQT-HD-3', '2023-11-30', 'Available'),
(171, 'Monitor', 'HP INTEL PENTIUM', '6CM433033Z', 'MTW-HQT-UP-0025', '2023-04-12', 'Assigned'),
(131, 'Server', 'HUAWEI', '2106190002G7PA000581', 'MTW- HQT-SV-0004', '2024-01-08', 'Available'),
(132, 'Laptop', 'Lenovo thinkpad', 'pf3nzhar', 'CEDP/MTWA/LT-003', '2024-01-14', 'Available'),
(133, 'Monitor', 'Lenovo', 'V54RK008', 'MTW- MMS-MT-16', '2022-07-22', 'Assigned'),
(134, 'Laptop', 'Lenovo', 'PF2HP6KA', 'MTW- MMS-LT-003', '2022-07-22', 'Available'),
(135, 'Keyboard', 'Lenovo', '4X30M39496KPVOFO2V', 'MTW- MMS-KB-0003', '2022-07-22', 'Available'),
(136, 'Mouse', 'Lenovo', '8SSM50M39559MPVOFO2L', 'MTW-27', '2022-07-22', 'Available'),
(137, 'Monitor', 'Lenovo', 'V5ARK012', 'MTW-MMS-MT-18', '2022-07-22', 'Available'),
(138, 'Laptop', 'Lenovo', 'PF2HPK67', 'MTW-MMS-LT-002', '2022-07-22', 'Available'),
(139, 'Keyboard', 'Lenovo', '8SSD50M39546KPVOFO2L', 'MTW-MMS-KB-0002', '2022-07-22', 'Available'),
(140, 'Mouse', 'Lenovo', '8SSM50M39559MPVOFO2V', 'MTW-2', '2022-07-22', 'Available'),
(141, 'Monitor', 'Lenovo', 'V5ARK000', 'MTW-MMS-MT-17', '2022-07-22', 'Available'),
(142, 'Laptop', 'Lenovo', 'PF2HPH1Y', 'MTW-MMS-LT-001', '2022-07-22', 'Available'),
(143, 'Keyboard', 'Lenovo', '8SSD50M39546KPVOFO2X', 'MTW-MMS-KB-0001', '2022-07-22', 'Available'),
(144, 'Mouse', 'Lenovo', '8SSM50M39559MPVOFO2X', 'MTW-25', '2022-07-22', 'Available'),
(145, 'Monitor', 'Lenovo', 'VNA6BP8A', 'MTW-MMS-MT-23', '2022-07-22', 'Available'),
(146, 'Laptop', 'Lenovo', 'MP22CZBT', 'MTW-MMS-LT-0014', '2022-07-22', 'Available'),
(147, 'Keyboard', 'Lenovo', '8SSD50M39546KPYAOK1L', 'MTW-MMS-KB-0004', '2022-07-22', 'Available'),
(148, 'Mouse', 'Lenovo', '8SSM50M39559MPY', 'MTW-MS-37', '2022-07-22', 'Available'),
(149, 'Monitor', 'Lenovo', 'VNA6BNZR', 'MTW-MMS-MT-22', '2022-07-22', 'Assigned'),
(150, 'Laptop', 'Lenovo', 'MP22CZ5W', 'MTW-MMS-LT-0012', '2022-07-22', 'Available'),
(151, 'Keyboard', 'Lenovo', '8SSD50M39546KPYAOKIM', 'MTW-MMS-KB-0005', '2022-07-22', 'Available'),
(152, 'Mouse', 'Lenovo', '8SSM50M3955YMPY', 'MTW-MS-34', '2022-07-22', 'Available'),
(153, 'Laptop', 'Lenovo', 'PF-4P6V5P', 'CEDP/MTW/LT-056', '2024-04-05', 'Available'),
(154, 'Monitor', 'Lenovo', 'VYK51503', 'CEDP/MTW/MT-056', '2024-04-05', 'Available'),
(155, 'Keyboard', 'Lenovo', 'ISGX30L66303214FSYG33B', 'CEDP/MTW/MS-056', '2024-04-05', 'Available'),
(156, 'Tablet', 'Lenovo', 'HA1Y9ZT5', 'MTW-HQT-TAB-0050', '2024-06-06', 'Assigned'),
(157, 'Tablet', 'LENOVO', 'HA1Y9SAP', 'MTW-HQT-TAB-0052', '2024-06-06', 'Assigned'),
(158, 'Tablet', 'Lenovo', 'HA1Y92XP', 'MTW-HQT-TAB-0056', '2024-06-05', 'Assigned'),
(159, 'Tablet', 'LENOVO', 'HA1Y9ZTX', 'MTW-HQT-TAB-0053', '2024-06-06', 'Assigned'),
(160, 'Tablet', 'Lenovo', 'HA1Y9SD0', 'MTW-HQT-TAB-0048', '2024-06-06', 'Assigned'),
(161, 'Tablet', 'Lenovo', 'HA1Y9FN9', 'MTW-HQT-TAB-0051', '2024-06-05', 'Assigned'),
(162, 'Tablet', 'LENOVO', 'HA1Y9HRX', 'MTW-HQT-TAB-0055', '2024-06-06', 'Assigned'),
(163, 'Tablet', 'Lenovo', 'HA1Y9ODG', 'MTW-HQT-TAB-0057', '2024-06-06', 'Assigned'),
(164, 'Phone', 'Samsung', 'R5CX335F49L', 'MTW-HQT-TAB-0059', '2024-06-05', 'Available'),
(165, 'Tablet', 'Lenovo', 'HA1Y9S9Z', 'MTW-HQT-TAB-0049', '2024-06-06', 'Assigned'),
(166, 'Phone', 'Samsung', 'R5CX335FEYD', 'MTW-HQT-TAB-0060', '2024-06-05', 'Available'),
(167, 'Tablet', 'Lenovo', 'HA1Y8STDF', 'MTW-HQT-TAB-0054', '2024-06-06', 'Assigned'),
(168, 'Phone', 'Iphone', 'LOG4LYK4HQ', 'MTW-HQT-TAB-0061', '2024-06-06', 'Available'),
(169, 'Phone', 'Samsung', 'LOG4LYK4HQ', 'MTW-HQT-TAB-0062', '2024-06-06', 'Available'),
(170, 'Phone', 'Iphone', 'MY7RNJOFXW', 'MTW-HQT-TAB-0063', '2024-06-06', 'Available'),
(172, 'Monitor', 'DELL INTEL PENTIUM', 'CN-07C2R4-72872-31Q-HCMM', 'MTW-HQT-PU-0002', '2023-04-05', 'Assigned'),
(173, 'CPU', 'LENOVO INTEL PENTIUM', 'R300S8YD', 'MTW-HQT-PU-0024', '2023-04-05', 'Assigned'),
(174, 'Monitor', 'LENOVO INTEL PENTIUM', 'CN-07C2R4-72872-31Q-ANUM', 'MTW-HOT-UP-0007', '2023-04-05', 'Assigned'),
(175, 'Keyboard', 'LENOVO INTEL PENTIUM', '00961399', 'MTW-HOT-PU-0024', '2023-04-05', 'Assigned'),
(176, 'CPU', 'LENOVO INTEL PENTIUM', '2ssc80f63949f1wh4cc02d6', 'MTW-HQT-PU-0033', '2023-04-05', 'Assigned'),
(177, 'Monitor', 'LENOVO INTEL PENTIUM', 'CNC220PTIT', 'MTW-0041', '2023-04-05', 'Assigned'),
(178, 'Keyboard', 'LENOVO INTEL PENTIUM', 'KCC-REM-E8H-KB-0316', 'MOPS/IPPS2/KB07', '2023-04-05', 'Assigned'),
(179, 'Printer', 'LASERJET PRO MFP M130FN', 'VNC8J06345', 'MTW-HQT-PR-0016', '2023-04-05', 'Assigned'),
(180, 'CPU', 'LENOVO INTEL PENTIUM', 'BW69NWI', 'MTW-HQT-PU-0012', '2023-04-05', 'Assigned'),
(181, 'Mouse', 'LENOVO INTEL PENTIUM', 'CN-OKW2YH-71616-48C-OJM5', 'MTW-HQT-PU-0006', '2023-04-05', 'Available'),
(182, 'CPU', 'LENOVO INTEL PENTIUM', '9022612', 'MTW-HQT-PU-0040', '2023-04-05', 'Assigned'),
(183, 'Keyboard', 'LENOVO INTEL PENTIUM', 'MY-04G481-71619-315-1677-A00', 'MTW-HQT-KB-0006', '2024-05-30', 'Assigned'),
(184, 'Monitor', 'LENOVO INTEL PENTIUM', 'CN-ONJVXM-72872-469-EINB', 'MTW-HQT-MT-0040', '2024-05-29', 'Assigned'),
(185, 'Keyboard', 'HP', 'CN-01HF2Y-71616-19Q-03BJ-A00', 'MTW-HQT-KB-0029', '2023-04-05', 'Assigned'),
(186, 'CPU', 'HP', 'BC89NW1', 'MTW-HQT-PU-0016', '2023-04-05', 'Assigned'),
(187, 'Monitor', 'HP', 'CN-07C224-72872-3IT-DMWM', 'MTW-HQT-MU-0016', '2023-04-05', 'Available'),
(188, 'Keyboard', 'HP', '04G481-71619-3IP-1381-A00', 'MTW-HQT-KB-0016', '2023-04-05', 'Assigned'),
(189, 'CPU', 'HP', '7379NW1', 'MTW-HQT-PU-0004', '2023-04-05', 'Assigned'),
(190, 'Keyboard', 'HP', 'MY-04GH81-71619-31P-0773-A00', 'MTW-HQT-KB-0007', '2023-04-05', 'Assigned'),
(191, 'Monitor', 'HP', 'VNA6BP5P', 'MTW-HQT-KB-0035', '2023-04-05', 'Available'),
(192, 'Printer', 'HP', 'VNC4D00527', 'MFPM227FDW', '2023-04-05', 'Available'),
(193, 'Laptop', 'Think pad E15', 'PF-2HPGZR', 'MTW-HQT-LT-0015', '2023-04-05', 'Assigned'),
(194, 'Laptop', 'HP', 'MP22CTGX', 'MTW-HQT-LT-39', '2023-04-05', 'Assigned'),
(195, 'Keyboard', 'Think pad E15', '8SSD50M39546KPV0F02Y', 'MTW-HQT-KB-0001', '2023-04-05', 'Assigned'),
(196, 'Mouse', 'Think pad E15', '8SSM50M39559MPVOFO2Y', 'MTW-02', '2023-04-05', 'Assigned'),
(197, 'Monitor', 'DELL', 'CNOR735N-64180-04T-079U', 'MTW-HQT-MT-0019', '2023-04-05', 'Assigned'),
(198, 'Keyboard', 'DELL', 'CT-BCYUHOAQK7U3MN', 'MTW-HQT-PU-0032', '2023-04-05', 'Assigned'),
(199, 'Keyboard', 'DELL', '855D50M39546KPVOFO31', 'MTW-HQT-KB-0003', '2023-04-05', 'Assigned'),
(200, 'CPU', 'DELL', 'GKDG712', 'CEDP/MDTWA/PU-020', '2023-04-05', 'Assigned'),
(201, 'Monitor', 'DELL', 'CN-OD8VXF-QDC00-884-05HB-A11', 'CEDP/MDTWA/MT-020', '2023-04-05', 'Available'),
(202, 'Keyboard', 'DELL', 'CN-08VXM3-M6D00-88F-02CN-A00', 'CEDP/MDTWA/KB-020', '2023-04-05', 'Assigned'),
(203, 'Mouse', 'DELL', 'CN-OPRDV9-L0300-8AA-1G37', 'CEDP/MDTWA/MS-020', '2023-04-05', 'Assigned'),
(204, 'CPU', 'DELL', '8L19NW1', 'MTW-HQT-PU-0008', '2023-04-05', 'Assigned'),
(205, 'Monitor', 'DELL', '3CQ74629M6', 'MTW-HQT-MT-0008', '2023-04-05', 'Assigned'),
(206, 'Keyboard', 'DELL', 'CN-ODJ491-71581-463-01ES-A01', 'MTW-HQT-KB-0008', '2023-04-05', 'Assigned'),
(207, 'Mouse', 'DELL', 'CN-OKW2YH-71616-491-2DBF', 'MTW-HQT-MS-0008', '2023-04-05', 'Assigned'),
(208, 'Laptop', 'DELL', 'PF-2HPAWC', 'MTW-HQT-LT-0012', '2023-04-05', 'Available'),
(209, 'Monitor', 'DELL', 'V5ARH999', 'MTW-HQT-MT-0012', '2023-04-05', 'Available'),
(210, 'Laptop', 'DELL', 'D5GG3P2', 'CEDP/MOTWA/LT-002', '2023-04-05', 'Assigned'),
(211, 'Monitor', 'DELL', 'CN-OD8VXF-QDC00-884-059B-A11', 'CEDP/MOTWA/MT-006', '2023-04-05', 'Available'),
(212, 'Keyboard', 'DELL', 'CN-08VXM3-M6D00-88F-028U-A00', 'CEDP/MOTWA/KB-018', '2023-04-05', 'Assigned'),
(213, 'Mouse', 'DELL', 'CN-OPRDV9-L0300-8AA-1G37', 'CEDP/MOTWA/MS-018', '2023-04-05', 'Assigned'),
(214, 'CPU', 'DELL', '4XDG7T2', 'CEDP/MOTWA/PU-018', '2023-04-05', 'Assigned'),
(215, 'Laptop', 'Think pad E15', 'PF-2HPPHO', 'MTW-HQT-LT-0009', '2023-04-05', 'Assigned'),
(216, 'Monitor', 'Think pad E15', 'Y5ARKO11', 'MTW-HQT-MT-0051', '2023-04-05', 'Assigned'),
(217, 'Keyboard', 'Think pad E15', '8SSD50M39546KPVOFO2S', 'MTW-HQT-KB-0024', '2023-04-05', 'Assigned'),
(218, 'Laptop', 'Lenovo', 'PF2HPPK2', 'MTW-HQT-LT-0029', '2023-04-05', 'Assigned'),
(219, 'Monitor', 'LENOVO', 'V5ARK018', 'MTW-HQT-MT-0067', '2023-04-05', 'Assigned'),
(220, 'Mouse', 'LENOVO', '8SSM5MOM39559MPVOFO2D', 'MTW-HQT-MS-19', '2023-04-05', 'Assigned'),
(221, 'Printer', 'LENOVO', 'CNG8G2B83N', 'MTWA-HQT-PR-0015', '2023-04-05', 'Assigned'),
(222, 'Keyboard', 'LENOVO', '855D50M39546KPVOFO2D', 'MTWA-HQT-KB-0019', '2023-04-05', 'Assigned'),
(223, 'CPU', 'LENOVO', '8P3M7R1', 'MTWA-HQT-PU-0019', '2023-04-05', 'Available'),
(224, 'Laptop', 'HP', 'PF-2HPHOW', 'MTW-HQT-LT-0023', '2023-04-05', 'Assigned'),
(225, 'Monitor', 'HP', 'V54RH996', 'MTW-22', '2023-04-05', 'Available'),
(226, 'Keyboard', 'HP', '8SSM50M39546KPVOFO37', 'MTW-HQT-KB-0022', '2023-04-05', 'Available'),
(227, 'Monitor', 'HP INTEL CORE 13', 'VNA6BP5L', 'MTW-HQT-MT-0080', '2023-04-05', 'Available'),
(228, 'Keyboard', 'HP', 'CT-BGCAFOA9HC35JH', 'HSDP/MOTWA/KB/001', '2023-04-05', 'Available'),
(229, 'Laptop', 'HP', 'CND9070926', 'HSDP/MOTWA/LP-003', '2023-04-05', 'Available'),
(230, 'Laptop', 'HP', 'CND9070989', 'HSDP/MOTWA/LP-001', '2023-04-05', 'Available'),
(231, 'Monitor', 'HP INTEL CORE 13', 'CN-07C2R4-72872-310-DAAM', 'MTW-HQT-UP-0006', '2023-04-05', 'Assigned'),
(232, 'Keyboard', 'HP', 'BCYUHDAQK7UNA', 'MTW-HQT-KB-0034', '2023-04-05', 'Available'),
(233, 'Keyboard', 'HP', '8SSD50M39546KPYAOKIW', 'MTW-HQT-KB-029', '2023-04-05', 'Available'),
(234, 'Mouse', 'LENOVO', '8SSM50M39559MPY', 'MTW-MS-38', '2023-04-05', 'Available'),
(235, 'Laptop', 'Lenovo', 'MP22CTJP', 'MTW-LT-004', '2023-04-05', 'Available'),
(236, 'Monitor', 'HP', 'v54rh996', 'MTW-HQT-MT-0063', '2023-04-05', 'Assigned'),
(237, 'Monitor', 'Hp', 'V5ARH997', 'MTW-HQT-MT-0064', '2023-04-05', 'Assigned'),
(238, 'Keyboard', 'Hp', '8SSD50M39546KPVOFO2T', 'MTW-HQT-KB-0023', '2023-04-05', 'Assigned'),
(239, 'Monitor', 'Hp', 'VNA6BP5F', 'MTW-HQT-KB-0081', '2023-04-05', 'Assigned'),
(240, 'Laptop', 'Lenovo', '1234', 'CEDP/MTW/LT-022', '2023-02-14', 'Available'),
(241, 'Printer', 'HP', '1234', 'CEDP/MTW/PR-004', '2023-02-14', 'Available'),
(242, 'DIGITAL CAMERA', 'CANON EOS', '1234', 'CEDP/MTW/CM-016', '2023-02-14', 'Available'),
(243, 'LASER TAPE MEASURE', 'UK', '1234', '1', '2023-02-14', 'Available'),
(244, 'Mouse', 'Lenovo', '1234', 'CEDP/MTW/MS-003', '2023-02-14', 'Available'),
(245, 'NANO SECURITY LAPTOP LOCK', 'NO', '1234', 'CEDP/MTW/CL-003', '2023-02-14', 'Available'),
(246, 'EXTENSION', 'EXT', '1234', 'CEDP/MTW/EXT-021', '2023-02-14', 'Available'),
(247, 'Hard Disk Drive', 'TRANSCED', '1234', 'CEDP/MTW/HD-019', '2023-02-14', 'Available'),
(248, 'MIFI', 'MIFI', 'CEDP/MTW/RT-011', 'CEDP/MTW/RT-011', '2023-02-14', 'Available'),
(249, 'TEMPERATURE GUN', 'UK', '1234', 'CEDP/MTW/TG-016', '2023-02-14', 'Available'),
(250, 'Laptop', 'lenova ThinkPad', '123', 'CEDP/MTW/LT-005', '2023-12-02', 'Available'),
(251, 'Printer', 'HP LASERJET', '123', 'CEDP/MTW/PR-001', '2023-02-14', 'Available'),
(252, 'Digital Camera', 'Canon EOS', '123', 'CEDP/MTW/CM-022', '2023-02-14', 'Available'),
(253, 'Mouse', 'HP', '123', 'CEDP/MTW/MS-007', '2023-02-14', 'Available'),
(254, 'TEMPERATURE GUN', 'UK', '123', 'CEDP/MTW/TG-001', '2023-02-14', 'Available'),
(255, 'MIFI', 'mifi', 'CEDP/MTW/RT-019', 'CEDP/MTW/RT-019', '2023-02-14', 'Available'),
(256, 'Hard Disk Drive', 'Transcend', '123', 'CEDP/MTW/HD-014', '2023-02-14', 'Available'),
(257, 'EXTENSION', 'EXT', '123', 'CEDP/MTW/EXT-008', '2023-02-14', 'Available'),
(258, 'Laptop bag', 'HP', '123', 'CEDP/MTW/LT-001', '2023-02-14', 'Available'),
(259, 'NANO SECURITY LAPTOP LOCK', 'NO', '123', 'CEDP/MTW/CL-011', '2023-02-14', 'Available'),
(260, 'Laptop', 'Lenovo', '1234', 'CEDP/MTW/LT-004', '2023-02-14', 'Available'),
(261, 'Printer', 'HP LaserJet', '1234', 'CEDP/MTW/LT-020', '2023-02-14', 'Available'),
(262, 'Digital Camera', 'Canon EOS', '1234', 'CEDP/MTW/CM-001', '2023-02-14', 'Available'),
(263, 'Printer', 'HP LaserJet', '1234', 'CEDP/MTW/PR-020', '2023-02-14', 'Available'),
(264, 'Mouse', 'Lenovo', '1234', 'CEDP/MTW/MS-0019', '2023-02-14', 'Available'),
(265, 'Laptop bag', 'HP', '1234', 'CEDP/MTW/LT-009', '2023-02-14', 'Available'),
(266, 'Extension', 'EXT', '1234', 'CEDP/MTW/EXT-009', '2023-02-14', 'Available'),
(267, 'External hard drive', 'Transcend', '1234', 'CEDP/MTW/HD-012', '2023-02-14', 'Available'),
(268, 'Portable MIfi', 'MIFI', 'CEDP/MTW/RT-010', 'CEDP/MTW/RT-010', '2023-02-14', 'Available'),
(269, 'Tempereture Gun ', 'UK', '1234', 'CEDP/MTW/TG-004', '2023-02-14', 'Available'),
(271, 'NANO SECURITY LAPTOP LOCK', 'NO', '1234', 'CEDP/MTW/CL-020', '2023-02-14', 'Available'),
(272, 'Digital Food Thermometer', 'UK', '1234', 'CEDP/MTW/TG-020', '2023-02-14', 'Available'),
(273, 'Laptop', 'lenova ThinkPad', '123', 'CEDP/MTW/LT-002', '2023-02-14', 'Available'),
(274, 'Printer', 'HP LASERJET', '123', 'CEDP/MTW/PR-007', '2023-02-14', 'Available'),
(275, 'Digital Camera', 'Canon EOS', '123', 'CEDP/MTW/CM-006', '2023-02-14', 'Available'),
(276, 'Mouse', 'lenovo', '123', 'CEDP/MTW/MS-008', '2023-02-14', 'Available'),
(277, 'Digital Food Thermometer', 'UK', '123', 'CEDP/MTW/TG-017', '2023-02-14', 'Available'),
(278, 'NANO SECURITY LAPTOP LOCK', 'NO', '123', 'CEDP/MTW/CL-006', '2023-02-14', 'Available'),
(279, 'LAPTOP BAG', 'HP', '123', 'CEDP/MTW/LT-016', '2023-02-14', 'Available'),
(280, 'EXTENSION', 'EXT', '123', 'CEDP/MTW/EXT-004', '2023-02-14', 'Available'),
(281, 'External hard drive', 'TRANSCEND', '123', 'CEDP/MTW/HD-008', '2023-02-14', 'Available'),
(282, 'Portable MIfi', 'MIFI', 'CEDP/MTW/RT-022', 'CEDP/MTW/RT-022', '2023-02-14', 'Available'),
(283, 'Tempereture Gun ', 'UK', '123', 'CEDP/MTW/TG-022', '2023-02-14', 'Available'),
(284, 'Laptop', 'lenovo', '1234', 'CEDP/MTW/LT-0011', '2023-02-14', 'Available'),
(285, 'Printer', 'HP', '1234', 'CEDP/MTW/PR-017', '2023-02-14', 'Available'),
(286, 'Digital Camera', 'CANON EOS', '1234', 'CEDP/MTW/CM-017', '2023-02-14', 'Available'),
(287, 'Mouse', 'LENOVO', '1234', 'CEDP/MTW/MS-002', '2023-02-14', 'Available'),
(288, 'Digital Food Thermometer', 'UK', '1234', 'CEDP/MTW/TG-0176', '2023-02-14', 'Available'),
(289, 'NANO SECURITY LAPTOP LOCK', 'NO', '1234', 'CEDP/MTW/CL-001', '2023-02-14', 'Available'),
(290, 'EXTENSION', 'EXT', '1234', 'CEDP/MTW/EXT-020', '2023-02-14', 'Available'),
(291, 'Hard Disk Drive', 'TRANSCED', '1234', 'CEDP/MTW/HD-017', '2023-02-14', 'Available'),
(292, 'MIFI', 'MIFI', 'CEDP/MTW/RT-016', 'CEDP/MTW/RT-016', '2023-02-14', 'Available'),
(293, 'Tempereture Gun ', 'UK', '1234', 'CEDP/MTW/TG-021', '2023-02-14', 'Available'),
(294, 'Laptop', 'lenovo', '1234', 'CEDP/MTW/LT-018', '2023-02-14', 'Available'),
(295, 'Printer', 'HP', '1234', 'CEDP/MTW/PR-005', '2023-02-14', 'Available'),
(296, 'DIGITAL CAMERA', 'CANON EOS', '1234', 'CEDP/MTW/CM-010', '2023-02-14', 'Available'),
(297, 'Mouse', 'lenovo', '1234', 'CEDP/MTW/MS-018', '2023-02-14', 'Available'),
(298, 'Digital Food Thermometer', 'UK', '1234', 'CEDP/MTW/TG-011', '2023-02-14', 'Available'),
(299, 'NANO SECURITY LAPTOP LOCK', 'NO', '1234', 'CEDP/MTW/CL-013', '2023-02-14', 'Available'),
(300, 'EXTENSION', 'EXT', '1234', 'CEDP/MTW/EXT-022', '2023-02-14', 'Available'),
(301, 'External hard drive', 'TRANSCED', '1234', 'CEDP/MTW/HD-004', '2023-02-14', 'Available'),
(302, 'MIFI', 'MIFI', 'CEDP/MTW/RT-012', 'CEDP/MTW/RT-012', '2023-02-14', 'Available'),
(303, 'Tempereture Gun ', 'UK', '1234', 'CEDP/MTW/TG-014', '2023-02-14', 'Available'),
(304, 'Laptop', 'Lenovo', '1234', 'CEDP/MTW/LT-006', '2023-02-14', 'Available'),
(305, 'Printer', 'HP LaserJet', '1234', 'CEDP/MTW/PR-015', '2023-02-14', 'Available'),
(306, 'Digital Camera', 'Canon EOS', '1234', 'CEDP/MTW/CM-004', '2023-02-14', 'Available'),
(307, 'Mouse', 'Lenovo', '1234', 'CEDP/MTW/TG-010', '2023-02-14', 'Available'),
(308, 'Digital Food Thermometer', 'UK', '1234', 'CEDP/MTW/CL-022', '2023-02-14', 'Available'),
(309, 'NANO SECURITY LAPTOP LOCK', 'NO', '1234', 'CEDP/MTW/CL-002', '2023-02-14', 'Available'),
(310, 'EXTENSION', 'EXT', '1234', 'CEDP/MTW/EXT-018', '2023-02-14', 'Available'),
(311, 'External hard drive', 'Transcend', '1234', 'CEDP/MTW/HD-010', '2023-02-14', 'Available'),
(312, 'Portable MIfi', 'MIFI', 'CEDP/MTW/RT-006', 'CEDP/MTW/RT-006', '2023-02-14', 'Available'),
(313, 'Tempereture Gun ', 'UK', '1234', 'CEDP/MTW/TG-008', '2023-02-14', 'Available'),
(315, 'Laptop', 'lenova ThinkPad', 'none', 'CEDP/MTW/LT-015', '2023-02-14', 'Available'),
(316, 'Printer', 'HP LASERJET', 'none', 'CEDP/MTW/PR-008', '2023-02-14', 'Available'),
(317, 'Digital Camera', 'Canon EOS', '123', 'CEDP/MTW/LT-007', '2023-02-14', 'Available'),
(318, 'Mouse', 'lenovo', 'none', 'CEDP/MTW/MS-017', '2023-02-14', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `asset_assignments`
--

DROP TABLE IF EXISTS `asset_assignments`;
CREATE TABLE IF NOT EXISTS `asset_assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `asset_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `requisition_form` varchar(255) DEFAULT NULL,
  `assignment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_assignments`
--

INSERT INTO `asset_assignments` (`assignment_id`, `asset_id`, `user_id`, `location`, `requisition_form`, `assignment_date`) VALUES
(41, 66, 23, '', '', '2024-06-11 10:16:07'),
(32, 15, 10, '', 'uploads/Cloud Client Access to VPN..PDF', '2024-05-22 11:40:47'),
(35, 14, 10, '', 'uploads/Network settings.txt', '2024-05-22 11:56:19'),
(34, 17, 10, '', 'uploads/System details main.xlsx', '2024-05-22 11:41:27'),
(40, 64, 23, '', '', '2024-06-11 10:10:56'),
(39, 95, 0, 'Board room', '', '2024-06-06 17:36:40'),
(37, 62, 0, 'Tourism', '', '2024-05-27 10:27:47'),
(42, 67, 24, '', '', '2024-06-11 10:16:10'),
(43, 69, 24, '', '', '2024-06-11 10:21:06'),
(44, 68, 26, '', '', '2024-06-11 10:29:03'),
(45, 70, 26, '', '', '2024-06-11 10:29:40'),
(46, 72, 25, '', '', '2024-06-11 10:29:47'),
(47, 71, 26, '', '', '2024-06-11 10:30:44'),
(48, 74, 25, '', '', '2024-06-11 10:30:58'),
(49, 76, 25, '', '', '2024-06-11 10:31:35'),
(50, 73, 26, '', '', '2024-06-11 10:32:17'),
(51, 75, 26, '', '', '2024-06-11 10:32:45'),
(52, 83, 27, '', '', '2024-06-11 10:51:46'),
(53, 85, 27, '', '', '2024-06-11 10:52:23'),
(54, 87, 27, '', '', '2024-06-11 10:53:17'),
(55, 88, 27, '', '', '2024-06-11 10:55:22'),
(56, 90, 28, '', '', '2024-06-11 11:02:31'),
(57, 92, 28, '', '', '2024-06-11 11:05:42'),
(58, 93, 28, '', '', '2024-06-11 11:06:48'),
(59, 149, 29, '', '', '2024-06-11 11:14:13'),
(60, 97, 30, '', '', '2024-06-11 11:20:13'),
(61, 98, 30, '', '', '2024-06-11 11:21:17'),
(62, 99, 31, '', '', '2024-06-11 11:27:32'),
(63, 59, 31, '', '', '2024-06-11 11:29:26'),
(64, 101, 32, '', '', '2024-06-11 11:33:18'),
(65, 77, 34, '', '', '2024-06-11 12:04:02'),
(66, 78, 34, '', '', '2024-06-11 12:05:05'),
(67, 79, 34, '', '', '2024-06-11 12:05:40'),
(68, 80, 35, '', '', '2024-06-11 12:16:08'),
(69, 81, 35, '', '', '2024-06-11 12:16:30'),
(70, 82, 35, '', '', '2024-06-11 12:17:00'),
(71, 84, 35, '', '', '2024-06-11 12:20:13'),
(72, 86, 36, '', '', '2024-06-11 12:38:26'),
(73, 89, 36, '', '', '2024-06-11 12:39:27'),
(74, 91, 36, '', '', '2024-06-11 12:39:46'),
(75, 104, 33, '', '', '2024-06-12 05:34:31'),
(76, 105, 33, '', '', '2024-06-12 05:37:13'),
(77, 106, 33, '', '', '2024-06-12 05:37:56'),
(78, 103, 33, '', '', '2024-06-12 05:40:26'),
(79, 107, 38, '', '', '2024-06-12 06:54:46'),
(80, 158, 0, 'Stores', '', '2024-06-12 06:56:00'),
(81, 108, 39, '', '', '2024-06-12 06:56:12'),
(82, 161, 0, 'Stores', '', '2024-06-12 06:56:32'),
(83, 109, 39, '', '', '2024-06-12 06:57:24'),
(84, 160, 0, 'Stores', '', '2024-06-12 06:57:26'),
(85, 163, 0, 'Stores', '', '2024-06-12 06:58:24'),
(86, 110, 39, '', '', '2024-06-12 06:58:40'),
(87, 165, 0, 'Stores', '', '2024-06-12 06:58:46'),
(88, 167, 0, 'Stores', '', '2024-06-12 06:59:26'),
(89, 156, 0, 'Stores', '', '2024-06-12 06:59:49'),
(90, 157, 0, 'Stores', '', '2024-06-12 07:00:10'),
(91, 159, 0, 'Stores', '', '2024-06-12 07:00:28'),
(92, 162, 0, 'Stores', '', '2024-06-12 07:00:47'),
(93, 113, 40, '', '', '2024-06-12 07:05:43'),
(94, 115, 41, '', '', '2024-06-12 07:22:42'),
(95, 116, 41, '', '', '2024-06-12 07:24:46'),
(96, 117, 41, '', '', '2024-06-12 07:25:50'),
(97, 118, 41, '', '', '2024-06-12 07:26:44'),
(98, 119, 42, '', '', '2024-06-12 07:27:19'),
(99, 120, 42, '', '', '2024-06-12 07:28:48'),
(100, 121, 42, '', '', '2024-06-12 07:30:50'),
(101, 122, 42, '', '', '2024-06-12 07:32:14'),
(102, 123, 43, '', '', '2024-06-12 07:35:31'),
(103, 124, 43, '', '', '2024-06-12 07:37:02'),
(104, 126, 43, '', '', '2024-06-12 07:37:36'),
(105, 125, 43, '', '', '2024-06-12 07:38:23'),
(106, 127, 0, 'server Room HQ', '', '2024-06-12 07:40:29'),
(110, 171, 44, '', '', '2024-06-17 07:22:47'),
(108, 96, 0, 'block A', '', '2024-06-12 07:43:00'),
(109, 21, 18, '', '', '2024-06-12 10:05:33'),
(111, 172, 41, '', '', '2024-06-17 07:32:15'),
(112, 173, 46, '', '', '2024-06-17 07:41:38'),
(113, 174, 46, '', '', '2024-06-17 07:43:19'),
(114, 175, 46, '', '', '2024-06-17 07:43:58'),
(115, 176, 59, '', '', '2024-06-17 08:15:55'),
(116, 177, 59, '', '', '2024-06-17 08:17:50'),
(117, 178, 59, '', '', '2024-06-17 08:18:41'),
(118, 179, 59, '', '', '2024-06-17 08:19:52'),
(119, 180, 60, '', '', '2024-06-17 12:30:34'),
(120, 183, 60, '', '', '2024-06-17 12:34:17'),
(121, 182, 61, '', '', '2024-06-17 12:37:15'),
(122, 184, 27, '', '', '2024-06-17 12:41:26'),
(123, 185, 62, '', '', '2024-06-18 05:54:21'),
(124, 186, 72, '', '', '2024-06-18 06:12:23'),
(125, 133, 72, '', '', '2024-06-18 06:13:46'),
(126, 188, 72, '', '', '2024-06-18 06:14:07'),
(127, 193, 73, '', '', '2024-06-18 06:30:26'),
(128, 195, 73, '', '', '2024-06-18 06:31:13'),
(129, 196, 73, '', '', '2024-06-18 06:32:12'),
(130, 215, 74, '', '', '2024-06-18 07:42:42'),
(131, 216, 74, '', '', '2024-06-18 07:46:34'),
(132, 217, 74, '', '', '2024-06-18 07:47:14'),
(133, 224, 75, '', '', '2024-06-18 10:34:38'),
(134, 236, 75, '', '', '2024-06-18 11:11:57'),
(135, 189, 79, '', '', '2024-06-19 07:32:16'),
(136, 190, 79, '', '', '2024-06-19 07:35:29'),
(137, 194, 80, '', '', '2024-06-19 07:37:09'),
(138, 197, 81, '', '', '2024-06-19 07:40:44'),
(139, 198, 81, '', '', '2024-06-19 07:41:47'),
(140, 199, 82, '', '', '2024-06-19 07:42:43'),
(141, 200, 83, '', '', '2024-06-19 07:43:28'),
(142, 202, 83, '', '', '2024-06-19 07:52:48'),
(143, 203, 83, '', '', '2024-06-19 07:53:29'),
(144, 204, 29, '', '', '2024-06-19 07:55:02'),
(145, 205, 29, '', '', '2024-06-19 07:57:06'),
(146, 206, 29, '', '', '2024-06-19 07:57:46'),
(147, 207, 29, '', '', '2024-06-19 07:58:50'),
(148, 237, 64, '', '', '2024-06-19 08:09:59'),
(149, 238, 64, '', '', '2024-06-19 08:11:11'),
(150, 239, 66, '', '', '2024-06-19 08:19:34'),
(151, 218, 85, '', '', '2024-06-19 10:32:15'),
(152, 219, 85, '', '', '2024-06-19 10:33:00'),
(153, 220, 85, '', '', '2024-06-19 10:33:45'),
(154, 221, 85, '', '', '2024-06-19 10:34:16'),
(155, 222, 85, '', '', '2024-06-19 10:34:47'),
(156, 210, 86, '', '', '2024-06-19 10:54:14'),
(157, 231, 86, '', '', '2024-06-19 10:54:42'),
(158, 212, 86, '', '', '2024-06-19 10:55:36'),
(159, 213, 86, '', '', '2024-06-19 10:56:10'),
(160, 214, 86, '', '', '2024-06-19 10:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `asset_types`
--

DROP TABLE IF EXISTS `asset_types`;
CREATE TABLE IF NOT EXISTS `asset_types` (
  `Asset_Type_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_Type_Name` varchar(255) NOT NULL,
  `Description` text,
  PRIMARY KEY (`Asset_Type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

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
(8, 'Server', NULL),
(9, 'Laptop bag', NULL),
(10, 'Extension', NULL),
(11, 'External hard drive', NULL),
(12, 'Portable MIfi', NULL),
(13, 'Tempereture Gun ', NULL),
(14, 'Office Chairs', NULL),
(15, 'Office Tables', NULL),
(16, 'Filling Cabinet', NULL),
(17, 'CPU', NULL),
(25, 'Phone', NULL),
(19, 'UPS', NULL),
(20, 'SCREEN VIDEO CONFERENCING', NULL),
(21, 'Hard Disk ', NULL),
(22, 'Hard Disk Drive', NULL),
(23, 'Office Tables', NULL),
(24, 'Tablet', NULL),
(27, 'DIGITAL CAMERA', NULL),
(28, 'LASER TAPE MEASURE', NULL),
(29, 'NANO SECURITY LAPTOP LOCK', NULL),
(30, 'EXTENSION', NULL),
(31, 'MIFI', NULL),
(32, 'TEMPERATURE GUN', NULL),
(33, 'LAPTOP BAG', NULL),
(34, 'Digital Camera', NULL),
(35, 'Printer', NULL),
(36, 'Digital Food Thermometer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `Custom_Field_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
  `Department_ID` int NOT NULL AUTO_INCREMENT,
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
  `Depreciation_Schedule_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
  `Designation_ID` int NOT NULL AUTO_INCREMENT,
  `Designation_Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Designation_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`Designation_ID`, `Designation_Name`) VALUES
(1, 'Officer'),
(4, 'Auditor'),
(3, 'Accountant'),
(5, 'Senior Information Scientist'),
(6, 'Under Secretary'),
(24, 'Permanent Secretary'),
(8, 'Minister'),
(9, 'State Minister'),
(35, 'Persoanl Secretary'),
(23, 'Tourism Officer'),
(34, 'prog/DBA'),
(33, 'Senior Information Scientist'),
(32, 'senior personal sec'),
(31, 'sec/planning'),
(30, 'steno secretary'),
(29, 'Administrator '),
(28, 'Researcher'),
(26, 'Wildlife Officer'),
(27, 'Librarian'),
(25, 'Architecture'),
(36, 'senior wildlife officer'),
(37, 'Senior Conservator'),
(38, 'Secretary'),
(39, 'HR personnel'),
(40, 'Records officer'),
(41, 'Assistant Records Officer'),
(42, 'AIMO'),
(43, 'server Room'),
(44, 'Registry'),
(45, 'Procurement'),
(46, 'Office Attendant'),
(47, 'Cashier'),
(48, 'Commissioner'),
(49, 'Transport officer'),
(50, 'Assistant secretary'),
(51, 'Senior tourism officer'),
(52, 'Senior wildlife officer'),
(53, 'Tourism Officer'),
(54, 'Acting Commissioner'),
(55, 'PPRO'),
(56, 'O/A'),
(57, 'ECONOMIST'),
(58, 'STATISTICIAN'),
(59, 'SENIOR STATISTICIAN'),
(60, 'project');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `Document_ID` int NOT NULL AUTO_INCREMENT,
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
  `IP_Address_ID` int NOT NULL AUTO_INCREMENT,
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
  `Location_ID` int NOT NULL AUTO_INCREMENT,
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
  `Maintenance_Log_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
  `Maintenance_Schedule_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
  `Previous_Location_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
  `Repair_History_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
  `Selected_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
  `IP_Address_ID` int DEFAULT NULL,
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
  `Service_Record_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
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
(1, 2, '2024-05-03', 'Repair', 'Screen was replaced', 'HM IT services', 456768.00),
(2, 5, '2024-04-26', 'Service', 'dusted and cleaned', 'HM IT services', 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usage_history`
--

DROP TABLE IF EXISTS `usage_history`;
CREATE TABLE IF NOT EXISTS `usage_history` (
  `Usage_History_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_ID` int DEFAULT NULL,
  `Usage_Date` date DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `location` varchar(20) NOT NULL,
  PRIMARY KEY (`Usage_History_ID`),
  KEY `fk_user_id` (`User_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

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
(12, 13, '2024-05-24', NULL, 'Storage'),
(13, 62, '2024-05-27', 0, 'Tourism'),
(14, 21, '2024-06-06', NULL, 'Storage'),
(15, 21, '2024-06-06', 18, ''),
(16, 95, '2024-06-06', 0, 'Board room'),
(17, 21, '2024-06-10', NULL, 'Storage'),
(18, 64, '2024-06-11', 23, ''),
(19, 66, '2024-06-11', 23, ''),
(20, 67, '2024-06-11', 24, ''),
(21, 69, '2024-06-11', 24, ''),
(22, 68, '2024-06-11', 26, ''),
(23, 70, '2024-06-11', 26, ''),
(24, 72, '2024-06-11', 25, ''),
(25, 71, '2024-06-11', 26, ''),
(26, 74, '2024-06-11', 25, ''),
(27, 76, '2024-06-11', 25, ''),
(28, 73, '2024-06-11', 26, ''),
(29, 75, '2024-06-11', 26, ''),
(30, 83, '2024-06-11', 27, ''),
(31, 85, '2024-06-11', 27, ''),
(32, 87, '2024-06-11', 27, ''),
(33, 88, '2024-06-11', 27, ''),
(34, 90, '2024-06-11', 28, ''),
(35, 92, '2024-06-11', 28, ''),
(36, 93, '2024-06-11', 28, ''),
(37, 149, '2024-06-11', 29, ''),
(38, 97, '2024-06-11', 30, ''),
(39, 98, '2024-06-11', 30, ''),
(40, 99, '2024-06-11', 31, ''),
(41, 59, '2024-06-11', 31, ''),
(42, 101, '2024-06-11', 32, ''),
(43, 77, '2024-06-11', 34, ''),
(44, 78, '2024-06-11', 34, ''),
(45, 79, '2024-06-11', 34, ''),
(46, 80, '2024-06-11', 35, ''),
(47, 81, '2024-06-11', 35, ''),
(48, 82, '2024-06-11', 35, ''),
(49, 84, '2024-06-11', 35, ''),
(50, 86, '2024-06-11', 36, ''),
(51, 89, '2024-06-11', 36, ''),
(52, 91, '2024-06-11', 36, ''),
(53, 104, '2024-06-12', 33, ''),
(54, 105, '2024-06-12', 33, ''),
(55, 106, '2024-06-12', 33, ''),
(56, 103, '2024-06-12', 33, ''),
(57, 107, '2024-06-12', 38, ''),
(58, 158, '2024-06-12', 0, 'Stores'),
(59, 108, '2024-06-12', 39, ''),
(60, 161, '2024-06-12', 0, 'Stores'),
(61, 109, '2024-06-12', 39, ''),
(62, 160, '2024-06-12', 0, 'Stores'),
(63, 163, '2024-06-12', 0, 'Stores'),
(64, 110, '2024-06-12', 39, ''),
(65, 165, '2024-06-12', 0, 'Stores'),
(66, 167, '2024-06-12', 0, 'Stores'),
(67, 156, '2024-06-12', 0, 'Stores'),
(68, 157, '2024-06-12', 0, 'Stores'),
(69, 159, '2024-06-12', 0, 'Stores'),
(70, 162, '2024-06-12', 0, 'Stores'),
(71, 113, '2024-06-12', 40, ''),
(72, 115, '2024-06-12', 41, ''),
(73, 116, '2024-06-12', 41, ''),
(74, 117, '2024-06-12', 41, ''),
(75, 118, '2024-06-12', 41, ''),
(76, 119, '2024-06-12', 42, ''),
(77, 120, '2024-06-12', 42, ''),
(78, 121, '2024-06-12', 42, ''),
(79, 122, '2024-06-12', 42, ''),
(80, 123, '2024-06-12', 43, ''),
(81, 124, '2024-06-12', 43, ''),
(82, 126, '2024-06-12', 43, ''),
(83, 125, '2024-06-12', 43, ''),
(84, 127, '2024-06-12', 0, 'server Room HQ'),
(85, 130, '2024-06-12', 0, 'block A'),
(86, 96, '2024-06-12', 0, 'block A'),
(87, 21, '2024-06-12', 18, ''),
(88, 130, '2024-06-12', NULL, 'Storage'),
(89, 171, '2024-06-17', 44, ''),
(90, 172, '2024-06-17', 41, ''),
(91, 173, '2024-06-17', 46, ''),
(92, 174, '2024-06-17', 46, ''),
(93, 175, '2024-06-17', 46, ''),
(94, 176, '2024-06-17', 59, ''),
(95, 177, '2024-06-17', 59, ''),
(96, 178, '2024-06-17', 59, ''),
(97, 179, '2024-06-17', 59, ''),
(98, 180, '2024-06-17', 60, ''),
(99, 183, '2024-06-17', 60, ''),
(100, 182, '2024-06-17', 61, ''),
(101, 184, '2024-06-17', 27, ''),
(102, 185, '2024-06-18', 62, ''),
(103, 186, '2024-06-18', 72, ''),
(104, 133, '2024-06-18', 72, ''),
(105, 188, '2024-06-18', 72, ''),
(106, 193, '2024-06-18', 73, ''),
(107, 195, '2024-06-18', 73, ''),
(108, 196, '2024-06-18', 73, ''),
(109, 215, '2024-06-18', 74, ''),
(110, 216, '2024-06-18', 74, ''),
(111, 217, '2024-06-18', 74, ''),
(112, 224, '2024-06-18', 75, ''),
(113, 236, '2024-06-18', 75, ''),
(114, 189, '2024-06-19', 79, ''),
(115, 190, '2024-06-19', 79, ''),
(116, 194, '2024-06-19', 80, ''),
(117, 197, '2024-06-19', 81, ''),
(118, 198, '2024-06-19', 81, ''),
(119, 199, '2024-06-19', 82, ''),
(120, 200, '2024-06-19', 83, ''),
(121, 202, '2024-06-19', 83, ''),
(122, 203, '2024-06-19', 83, ''),
(123, 204, '2024-06-19', 29, ''),
(124, 205, '2024-06-19', 29, ''),
(125, 206, '2024-06-19', 29, ''),
(126, 207, '2024-06-19', 29, ''),
(127, 237, '2024-06-19', 64, ''),
(128, 238, '2024-06-19', 64, ''),
(129, 239, '2024-06-19', 66, ''),
(130, 218, '2024-06-19', 85, ''),
(131, 219, '2024-06-19', 85, ''),
(132, 220, '2024-06-19', 85, ''),
(133, 221, '2024-06-19', 85, ''),
(134, 222, '2024-06-19', 85, ''),
(135, 210, '2024-06-19', 86, ''),
(136, 231, '2024-06-19', 86, ''),
(137, 212, '2024-06-19', 86, ''),
(138, 213, '2024-06-19', 86, ''),
(139, 214, '2024-06-19', 86, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Designation_ID` int DEFAULT NULL,
  `Department_ID` int DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `UC_Email` (`Email`),
  KEY `Designation_ID` (`Designation_ID`),
  KEY `Department_ID` (`Department_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `First_Name`, `Last_Name`, `Email`, `Designation_ID`, `Department_ID`) VALUES
(18, 'Edwin', 'Sserunkuuma Lutalo', 'edwin.lutalo@tourism.go.ug', 1, 4),
(23, 'Lukwago', 'Denis', 'Denis.Lukwago@tourism.go.ug', 25, 3),
(55, 'Nyiracyiza ', 'Jackline', 'jacklinenyiracyiza@tourism.go.ug', 1, 3),
(21, 'Sarah', 'Nakitende', 'sarah.nakitende@tourism.go.ug', 1, 4),
(20, 'Isaac', 'Kerchan', 'isaac.kerchan@tourism.go.ug', 34, 4),
(19, 'David', 'Nakedde', 'david.nakedde@tourism.go.ug', 1, 4),
(25, 'sarah ', ' Babirye Ssenfuka', 'sarah.Ssenfuka@tourism.go.ug', 27, 4),
(26, 'Ngangeyu', 'Eunice', 'eunice.ngangeyu@tourism.go.ug', 28, 3),
(27, 'Babrah', 'Birungi', 'Babrah.Birungi@tourism.go.ug', 29, 4),
(28, 'Mutebi', 'Micheal', 'Mutebi.Micheal@tourism.go.ug', 26, 2),
(29, 'kiwanuka', 'Agnes', 'kiwanuka.Agnes@tourim.go.ug', 31, 4),
(30, 'Majorine', 'Lwanira', 'Majorine.Lwanira@tourism.go.ug', 32, 6),
(31, 'Tumusiime', 'Boaz', 'Tumusiime.Boaz@tourism.go.ug', 26, 2),
(32, 'Mulego', 'Brain', 'Mulego.Brain@tourism.go.ug', 33, 4),
(33, 'Baraza', 'Annet', 'Baraza.Annet@tourism.go.ug', 35, 6),
(34, 'Asiimwe', 'Raymond', 'raymond.asiimwe@tourism.ug.go', 37, 2),
(35, 'Rose', 'Mary', 'rose.mary@tourism.go.ug', 38, 6),
(36, 'Ajiambo', 'Catherine', 'catherine.ajiambo@tourism.ug.go', 28, 3),
(37, 'Candia ', 'Leone', 'Candia.Leone@tourism.go.ug', 36, 2),
(38, 'Atim ', 'Brenda', 'Atim.Brenda@tourism.go.ug', 39, 4),
(39, 'Aidah', 'Namuwanga', 'Aidah.Namuwang@tourism.go.ug', 30, 2),
(40, 'Magdalene', 'Arwako', 'Magdalene.Arwako@tourism.go.ug', 30, 4),
(41, 'Joyce', 'Hellen', 'Joyce.Hellen@tourism.go.ug', 40, 4),
(42, 'Joyce', 'Aik', 'Joyce.Aik@tourism.go.ug', 41, 4),
(43, 'magezi', 'Abithagy', 'magezi.Abithagy@tourism.go.ug', 42, 4),
(44, 'Namubiru', 'Lovisa', 'lovisa.namubiru@tourism.ug.go', 44, 4),
(45, 'Hellen', 'Joyce', 'joyce.hellen@tourism.ug.go', 44, 4),
(46, 'Aik', 'Hellen', 'hellen.aik@tourism.ug.go', 44, 4),
(47, 'Majorine', 'Luwanira', 'majorine.luwanira@tourism.go.ug', 1, 4),
(48, 'Kijjambu ', 'Charles', 'charles.kijjambu@tourism.go.ug', 1, 4),
(49, 'Tumusiime', 'Boaz', 'boaz.tumusiime@tourism.go.ug', 26, 4),
(50, 'Kiwanuka ', 'Agnes', 'agnes.kiwanuka@tourism.go.ug', 31, 4),
(51, 'Mutebi ', 'Micheal', 'micheal.mutebi@tourism.go.ug', 26, 4),
(52, 'Were', 'Doreen', 'doreen.were@tourism.go.ug', 1, 4),
(59, 'Nakatukula', 'Saniya', 'saniya.nakatukula@gmail.com', 45, 4),
(56, 'Mugume ', 'Amon', 'amon.mugume@tourism.go.ug', 1, 3),
(57, 'Mwanja ', 'Rose Nkale', 'rose.mwanja@tourism.go.ug', 1, 4),
(58, 'Abit ', 'Nelson', 'nelson.abit@tourism.go.ug', 1, 3),
(60, 'Barbra', 'Mirembe', 'barbra.mirembe@gmail.com', 45, 4),
(61, 'Birungi', 'Barbra', 'barbrabirungi@gmail.com', 38, 4),
(62, 'Kyitibwa', 'Fred', 'fredkyitibwa@gmail.com', 47, 4),
(63, 'Nakiyinji', 'Jesca', 'jescanakiyinji@gmail.com', 46, 4),
(64, 'Nabwama', 'Cathy', 'cathynabwama@gmail.com', 50, 4),
(65, 'Agemula', 'Caroline', 'carolineagemula@gmail.com', 38, 4),
(66, 'Odero', 'Sarah', 'sarahodero@gmail.com', 49, 4),
(67, 'Kigozi', 'Jimmy', 'jimmykigozi@gmail.com', 51, 4),
(68, 'Ssali', 'Gadafi', 'ssaligadafi@gmail.com', 51, 4),
(69, 'Balageti', 'Bazilage', 'balagetibazilage@gmail.com', 51, 4),
(70, 'Kizza', 'Harriet', 'harrietkizza@gmail.com', 51, 4),
(71, 'Nuwagabwa', 'Patricia', 'patricianuwagabwa@gmail.com', 52, 4),
(72, 'Nakiyinji', 'Jesca', 'jesca.nakiyinji@gmail.com', 46, 4),
(73, 'Lyadda', 'B', 'blyadda@gmail.com', 48, 4),
(74, 'Nakami', 'Esther', 'esthernakami@gmail.com', 23, 6),
(75, 'kobutagi', 'Rosemary', 'rosemarkobutagi@gmail.com', 48, 6),
(76, 'liyazi', 'Vivian', 'liyazivivian@gmail.com', 54, 6),
(77, 'Kyadiya', 'liyoni', 'liyonikyadiya@gmail.com', 54, 6),
(78, 'Kiya', 'Rose', 'rosekiya@gmail.com', 54, 2),
(79, 'asekenye', 'mary olede jane', 'asekenye.mary@tourism.go.ug', 32, 4),
(80, 'tworekirwe', 'eunice', 'tworekirwe.eunice@tourism.go.ug', 55, 4),
(81, 'anyenyo', 'scovia', 'anyenyo.scovia@tourism.go.ug', 56, 4),
(82, 'mirembe', 'rachel', 'mirembe.rachel@tourism.go.ug', 57, 4),
(83, 'hakim', 'kizito', 'hakim.kizito@tourism.go.ug', 58, 4),
(84, 'rosemary', 'kobutagi', 'rosemary.kobutagi@tourism.go.ug', 56, 4),
(85, 'akiza', 'briton newton', 'akiza.briton@tourism.go.ug', 59, 4),
(86, 'denis', 'ojok rodney', 'denis.ojok@tourism.go.ug', 59, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
