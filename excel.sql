-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2023 at 01:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `excel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text NOT NULL,
  `estate` varchar(255) NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `rootCause` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timeSpent` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `subject`, `estate`, `startDate`, `endDate`, `rootCause`, `description`, `timeSpent`, `created_at`, `updated_at`) VALUES
(1, 'FTTH: LINK AT AHIJO LAWAL MOHAMMED (GLENDALE PEARL ESTATE)', 'glendale pearl estate', '2023-02-01 07:25:00', '2023-02-01 14:06:00', 'poor power level', 'The power level was optimized to restore service', '401', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(2, 'OUTAGE AT BRIDGE ESTATE AND JABI AXIS', 'bridge estate', '2023-02-02 09:59:00', '2023-02-02 16:40:00', 'fiber issue', 'The fiber issue was resolved to restore service', '401', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(3, 'FTTH: LINK AT APAGU GADZAMA - EXCEEDING GRACE', 'exceeding grace', '2023-02-02 10:17:00', '2023-02-02 16:41:00', 'fiber issue', 'The fiber issue was resolved to restore service', '384', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(4, 'FTTH: LINK AT MICHAEL IFFY (MERCY SAMUELSON ESTATE)', 'mercy samuelson', '2023-02-03 00:02:00', '2023-02-03 12:22:00', 'configuration issue', 'It was configured to resolve issue', '740', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(5, 'FTTH:LINK AT SOLOMON OJOAWA - EFAB VILLE', 'efab ville', '2023-02-08 22:55:00', '2023-02-09 15:32:00', 'broken core/fiber issue', 'The broken core was respliced to restore service.', '997', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(6, 'FTTH: LINK AT ALIYU MUSTAPHA (CORAL)', 'coral estate', '2023-02-11 09:34:00', '2023-02-11 14:54:00', 'transmission issue', 'A proper cleanup was done at the ATB and FAT to optimise link and restore service.', '320', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(7, 'OUTAGE AT RIVER PARK ESTATE', 'riverpark estate', '2023-02-15 06:45:00', '2023-02-15 12:30:00', 'fiber issue', 'The fiber issue was resolved to restore service', '345', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(8, 'FTTH: LINK AT IBRAHIM CIGA (SAFARI COURT)', 'safari court', '2023-02-02 11:57:00', '2023-02-03 16:00:00', 'unknown', 'No RFO was shared by the team', '1683', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(9, 'FTTH: LINK AT ZAINAB ALIYU (OASIS COURT)', 'oasis court', '2023-02-02 16:13:00', '2023-02-02 16:42:00', 'fiber issue', 'The fiber issue along the transmission path was resolved to restore service.', '29', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(10, 'FTTH: LINK AT KANNENG GWOM (DEI GRATIA)', 'dei gratia', '2023-02-01 11:49:00', '2023-02-03 18:41:00', 'poor power level', 'The connector in the FAT was replaced to restore service', '3292', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(11, 'FTTH: LINK AT SAMSON AMADI(CORAL)', 'coral estate', '2023-02-03 16:18:00', '2023-02-04 15:31:00', 'poor power level', 'The connector and patch cord were cleaned to optimize power', '1393', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(12, 'FTTH: LINK AT PHOEBE OMALE (ASSOCIATED ESTATE)', 'associated estate', '2023-02-03 15:13:00', '2023-02-06 20:38:00', 'fiber issue', 'The fiber issue was resolved to restore service', '4645', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(13, 'FTTH: LINK AT ISAH SAIFULLAHI ( JUBRIL AMINU)', 'jubril aminu', '2023-02-08 12:16:00', '2023-02-08 18:16:00', 'fiber issue', 'The fiber issue was resolved to restore service', '360', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(14, 'FTTH: LINK AT CHIWETE EJETEH (EXCEEDING GRACE)', 'exceeding grace', '2023-02-07 18:02:00', '2023-02-08 14:02:00', 'loss of configuration', 'The device was reconfigured to restore service', '1200', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(15, 'FTTH: LINK AT SIGNA CHANG (ROUTE 66)', 'route 66', '2023-02-06 09:16:00', '2023-02-08 13:38:00', 'loss of configuration', 'The device was reconfigured to restore service', '3142', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(16, 'FTTH: DOWNTIME AT EHA CLINIC APARTMENT WUYE', 'eha clinic apartment', '2023-02-04 09:14:00', '2023-02-08 14:30:00', 'fiber cut', 'The fiber cut was resolved to restore service', '6076', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(17, 'FTTH: LINK AT AMINU BAPPAH (REGENT SERVICE APARTMENT)', 'regent service apartments', '2023-02-08 21:26:00', '2023-02-09 20:49:00', 'unknown', 'No RFO was shared by the team', '1403', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(18, 'FTTH: LINK AT SOLOMON OJOAWO (EFAB VILLE)', 'efab ville', '2023-02-08 22:55:00', '2023-02-09 15:41:00', 'fiber issue', 'The fiber issue was resolved to restore service', '1006', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(19, ' FTTH - OUTAGE AT REGENT SERVICE APARTMENTS AND ATAHIRU JEGA CRESCENT (KATAMPE EXTENSION) ', 'katampe extension', '2023-02-08 21:26:00', '2023-02-09 20:49:00', 'unknown', 'No RFO was shared by the team', '1403', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(20, 'FTTH LINK AT HALIRU ABUBAKAR ( RIVER PARK ESTATE)', 'riverpark estate', '2023-02-08 13:38:00', '2023-02-08 23:52:00', 'unknown', 'No RFO was shared by the team', '614', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(21, 'FTTH LINK AT AMINU BAPPAH (REGENT APARTMENT)', 'regent service apartments', '2023-02-08 21:06:00', '2023-02-09 10:56:00', 'unknown', 'No RFO was shared by the team', '830', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(22, 'FTTH - TIJJANI MOHAMMED ( RIVER PARK ESTATE)', 'riverpark estate', '2023-02-13 12:26:00', '2023-02-15 15:11:00', 'fibre issue', 'The point of failure was detected along the route to be 200m away from FAT were FOC was varnderliz, Corrently vendor has been involved to introduce 200m of FOC to fixe this link.   A new FOC was laid and spliced to restore service', '3045', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(23, 'FTTH - ANTHONY IKPE OCHE (PATNASONIC)', 'patnasonic', '2023-02-13 19:13:00', '2023-02-14 19:26:00', 'outdated device firmware', 'Service has been up and running, however device firmware was updated.', '1453', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(24, 'FTTH - YUSUF AMMENA (REDWOOD II, HOUSE 1)', 'redwood ii', '2023-02-14 07:44:00', '2023-02-14 18:28:00', 'unknown', 'No RFO was shared by the team', '644', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(25, 'FTTH - OMOSALEWA OYELARAN (ASPEN 104)', 'aspen', '2023-02-14 06:00:00', '2023-02-14 06:14:00', 'unknown', 'The device was rebooted to restore service', '14', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(26, 'FTTH - PATRICK NWAJIAKU( EUPHRATES)', 'euphrates', '2023-02-14 12:56:00', '2023-02-14 13:00:00', 'unknown', 'The device was rebooted to restore service', '4', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(27, 'FTTH SERVICE NOTIFICATION - RIVER PARK OUTAGE ', 'riverpark estate', '2023-02-15 06:45:00', '2023-02-15 12:30:00', 'fiber cut', 'The affected link was respliced at the joint where we suspected the fault occurred to restore service. we also cleaned the patch panel ports at the office to optimize the power.', '345', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(28, 'FTTH SERVICE NOTIFICATION - RIVER PARK OUTAGE ', 'riverpark estate', '2023-02-16 04:13:00', '2023-02-16 10:48:00', 'transmission issue', 'Transmission issue was resolved to restore service', '395', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(29, 'FTTH - HALIMA BELLO (RIVER PARK)', 'riverpark estate', '2023-02-16 06:03:00', '2023-02-16 11:13:00', 'transmission issue', 'Transmission issue was resolved to restore service', '310', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(30, 'FTTH SERVICE NOTIFICATION - ROUTE 66 (DURUMI OLT)', 'route 66', '2023-02-16 05:59:00', '2023-02-16 09:02:00', 'faulty sfp', 'The downtime was as a result of a faulty SFP which was replaced to restore service.', '183', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(31, 'FTTH - SIGMA CHANG (ROUTE 66)', 'route 66', '2023-02-16 07:22:00', '2023-02-16 09:24:00', 'faulty sfp', 'The downtime was as a result of a faulty SFP which was replaced to restore service.', '122', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(32, 'FTTH - QUEEN AGWU (PARADISE COURT)', 'paradise court', '2023-02-10 19:03:00', '2023-02-16 13:21:00', 'fiber cut', 'The fiber issue along the transmission route was resolved to restore service.', '8298', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(33, 'FTTH - WAHAB IMRAN (RIVER PARK', 'riverpark estate', '2023-02-16 11:30:00', '2023-02-16 17:00:00', 'faulty patch cords', 'The downtime was as a result of a faulty patch cord which was replaced to restore service.', '330', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(34, 'FTTH - \nAMBROSE BINAFAI (IYA ABUBAKAR CRESENT)', 'iya abubakar cresent', '2023-02-16 22:58:00', '2023-02-17 14:08:00', 'unknown', 'Point of failure was detected, our joint closure was tempered by unknown person the cable was re- prepared and  splice the link is restored back up', '910', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(35, 'LINK AT OSAYUWAMEM AGHEDO (PARADISE COURT)', 'paradise court', '2023-02-16 17:59:00', '2023-02-18 18:43:00', 'disconnected cable', 'The downtime was as a result of a disconnected cable which was connected properly to restore service', '2924', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(36, 'FTTH: LINK AT MICHELLE SHIRLEY(ASPEN)', 'aspen', '2023-02-10 18:37:00', '2023-02-12 13:29:00', 'unknown', 'To provide optimal service, modifications were made to the clients\' air cube.', '2572', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(37, 'FTTH: LINK AT OKOYE LAMBERT EBELE (RIVER PARK)', 'riverpark estate', '2023-02-17 19:53:00', '2023-02-18 18:46:00', 'cable mismatch', 'The downtime was as a result of a cable being plugged into the wrong port, the cable was plugged into the right port to restore service', '1373', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(38, 'FTTH: LINK AT YUSUF AMENNA (REDWOOD)', 'redwood', '2023-02-21 08:32:00', '2023-02-22 04:32:00', 'fiber cut', 'The downtime was as a result of a result of a fiber issue due to construction activities. This was resolved to restore service. ', '1200', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(39, 'FTTH: TOBI OKE MARTINS- DEL GRATIA', 'dei gratia', '2023-02-21 16:41:00', '2023-02-22 11:07:00', 'faulty ethernet cable', 'As observed by David, the customer\'s LAN cable was faulty. Hence, the cable was replaced and the customer\'s service has been restored.', '1106', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(40, 'FTTH LINK AT EMEKA OJUKWU', 'emeka ojukwu', '2023-02-22 14:06:00', '2023-02-22 16:23:00', 'fiber cut', 'Fiber cut was resolved to restore service', '137', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(41, 'FTTH LINK AT JAMES MESSER (ROUTE 66)', 'route 66', '2023-02-20 18:47:00', '2023-02-22 18:00:00', 'unknown', 'No RFO was shared by the team', '2833', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(42, 'LINK AT CORAL RESIDENCE AND THUJA VILLE', 'coral estate', '2023-02-22 13:30:00', '2023-02-22 16:23:00', 'fiber cut', 'The fiber cut was resolved to restore service.', '173', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(43, 'LINK AT ANITA ODIONG RESDENCE - RIVER PARK ESTATE', 'riverpark estate', '2023-02-22 16:54:00', '2023-02-23 14:42:00', 'low fiber power', 'The issue was as a result of a low power level on the route carrying the service. The splitter leg in the FAT was cleaned to optimize power level which is -18 now.', '1308', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(44, 'FTTH - MUHAMMAD MAINOMA (CORAL)', 'coral estate', '2023-02-22 20:57:00', '2023-02-23 17:14:00', 'fiber cut', 'The fiber cut was resolved to restore service.', '1217', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(45, 'FTTH - EMEKA OJUKWU (THUJA VILLE)', 'thuja ville', '2023-02-23 05:09:00', '2023-02-24 13:26:00', 'fiber cut', ' LAN cable was replaced. Furthermore, the ATB and patch cord were cleaned carefully to improve the power level. ', '1937', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(46, 'FTTH - OUTAGE AT KATAMPE EXTENSION (BECCA APARTMENTS, REGENT SERVICE APARTMENTS, ATTAHIRU JEGA CRESCENT, TONY MOMOH, PATRICK YAKOWA CRESCENT, JIBRIL AMINU STREET)', 'regent service apartments', '2023-02-23 07:29:00', '2023-02-23 15:53:00', 'fiber cut', 'A fire incident occured at the man hole at VIO Katampe causing fiber damage which was resolved to restore service.', '504', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(47, 'FTTH CORAL RESIDENCE', 'coral estate', '2023-02-23 11:33:00', '2023-02-23 15:53:00', 'fiber cut', 'The fiber cut was resolved to restore service', '260', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(48, 'FTTH THUJA VILLE ', 'thuja ville', '2023-02-23 11:33:00', '2023-02-23 15:53:00', 'fiber cut', 'The fiber cut was resolved to restore service', '260', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(49, 'FTTH - LINK AT HALIMA BELLO (RIVER PARK)', 'riverpark estate', '2023-02-23 20:59:00', '2023-02-23 21:11:00', 'device issues', 'The device firmware was upgraded to resolve the issue.', '12', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(50, 'FTTH: LINK AT CHIOMA AGWUEGBO (BECCA APARTMENT)', 'becca apartments', '2023-02-23 13:49:00', '2023-02-23 15:53:00', 'fiber cut', 'A fire incident occured at the man hole at VIO Katampe causing fiber damage which was resolved to restore service.', '124', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(51, 'FTTH- JOSEPH ENEGELA (18 COTONOU CRESCENT)', 'cotonou crescent', '2023-02-23 15:33:00', '2023-02-23 16:55:00', 'fiber cut', 'The fiber cut was resolved to restore service', '82', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(52, 'FTTH - OUTAGE AT EPIC CENTER,  GRACE COURT, MERCY SAMUELSON AND PORSCHE RESIDENCES', 'grace court', '2023-02-24 07:02:00', '2023-02-27 14:18:00', 'fiber cut', 'Downtime was due to a rodent attack on the backbone cable. The slack of the backbone was used to restore service. Rodent chemicals were put in the manholes to prevent any future occurrence.', '4756', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(53, 'FTTH: LINK AT VICTOR ELIAS (SIL ESTATE)\n', 'sil estate', '2023-02-23 18:46:00', '2023-02-24 14:50:00', 'local issue at client’s end', 'The residence was connected to another extender (Not Layer3 own) that do not have internet. Our engineer showed the residence the Wifi SSID to connect to.', '1204', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(54, 'FTTH: LINK AT OLUGBENNGA OYEWO ( PORSCHE EXT R005)', 'porsche extension', '2023-02-24 21:46:00', '2023-02-27 10:18:00', 'fiber cut', 'The fiber issue along the transmission path was resolved to restore service.', '3632', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(55, 'FTTH:LINK AT WILSON MALGWI (GRAND MEADOW APT)', 'grand meadow', '2023-02-25 13:26:00', '2023-02-28 10:15:00', 'unknown', 'No RFO was shared by the team', '4129', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(56, 'FTTH - LINK AT ASPEN 10', 'aspen', '2023-02-25 09:15:00', '2023-02-25 09:42:00', 'transmission issue', 'Downtime was due to a brief transmission issue', '27', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(57, 'FTTH: LINK AT ANTHONY OCHE IKPE (PATNASONIC)', 'patnasonic', '2023-02-25 09:25:00', '2023-02-25 09:40:00', 'transmission issue', 'Downtime was due to a brief transmission issue', '15', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(58, 'FTTH: LINK AT MOHAMMED SAFIYANU (JAHI)', 'jahi', '2023-02-25 09:25:00', '2023-02-25 09:38:00', 'transmission issue', 'Downtime was due to a brief transmission issue', '13', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(59, 'LAYER3: FTTH-LINK AT CHRISTOPHER OGUJI - GRACE COURT', 'grace court', '2023-02-25 09:35:00', '2023-02-27 14:18:00', 'fiber cut', 'Fiber cut was resolved to restore service', '3163', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(60, 'FTTH - LINK AT SIGMA CHANG (ROUTE 66)', 'route 66', '2023-02-25 09:37:00', '2023-02-25 09:41:00', 'unknown', 'No RFO was shared by the team', '4', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(61, 'LAYER3: FTTH - ABIMBOLA ABODUNRIN (OPENS GATE)', 'opens gate', '2023-02-27 14:47:00', '2023-02-27 17:00:00', 'frozen client device', 'The link can be observed up. Nothing was done to restore service', '133', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(62, 'LAYER3: FTTH - YUNUS TOKER (SAFARI COURT)', 'safari court', '2023-02-27 15:34:00', '2023-02-28 11:53:00', 'faulty patch cords', 'the patch cord was straightened', '1219', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(63, 'LAYER3: FTTH: LINK AT DR JOHN OLADEJO - GLENDALE PEARL', 'glendale pearl estate', '2023-02-27 15:52:00', '2023-02-27 18:30:00', 'frozen client device', 'The device was restarted to restore service', '158', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(64, 'FTTH: LINK AT CHUKWU AGHA (PORSCHE)', 'porsche', '2023-02-27 16:00:00', '2023-02-27 17:00:00', 'na', 'The link can be observed up. Nothing was done to restore service', '60', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(65, 'FTTH: LINK AT IBRAHIM CIGA (SAFARI COURT)', 'safari court', '2023-02-27 17:48:00', '2023-02-28 07:49:00', 'faulty patch cords', 'The use patch cord was twisted at the customer end, the patch cord was replaced to restore service', '841', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(66, 'FTTH: LINK AT MICHELLE SHIRLEY (ASPEN 10)', 'aspen', '2023-02-27 18:53:00', '1899-12-31 00:00:00', 'slow link', 'The client has requested for a WIFI extender', '64776653', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(67, 'FTTH: LINK AT OGO AKAGOBU ', 'ogo akagobu', '2023-02-27 19:06:00', '2023-02-27 20:32:00', 'frequency clash', 'Layer3 device was clashing frequencies with another device close by, we changed our channel to resolve the issue', '86', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(68, 'FTTH - ABIMBOLA ABODUNRIN (OPENS GATE)', 'opens gate', '2023-02-27 14:47:00', '2023-02-28 08:43:00', 'fiber cut', 'The fiber cut was resolved to restore service', '1076', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(69, 'FTTH - APAGU GADZAMA (EXCEEDING GRACE)', 'exceeding grace', '2023-02-28 09:01:00', '2023-02-28 09:38:00', 'na', 'Device has been rebooted remotely', '37', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(70, 'OUTAGE DURUMI OLT', 'durumi', '2023-02-08 04:44:00', '2023-02-08 06:38:00', 'frozen interface', 'The interface was refreshed to restore service.', '114', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(71, 'OUTAGE CORAL AND THUJA VILLE', 'thuja ville', '2023-02-23 10:48:00', '2023-02-23 15:53:00', 'fiber cut', 'The fiber cut was resolved to restore service', '305', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(72, 'FTTH LINK DOWNTIME AT VICKY TECKHANDANI - AWANDE CLOSE', 'awande close', '2023-03-01 07:18:00', '2023-03-01 12:49:00', 'faulty patch cords', 'The patch cable was replaced.', '331', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(73, 'FTTH - HALIMA ATTAH (RIVER PARK)', 'riverpark estate', '2023-03-01 07:38:00', '2023-03-01 07:45:00', 'unknown', 'Client quickly retracted her complaint.', '7', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(74, 'FTTH LINK AT CHIKA ONUEGBU (RIVER PARK)', 'riverpark estate', '2023-03-02 08:45:00', '2023-03-02 17:26:00', 'power issue at layer3\'s end', 'It was as a result of the fluctuation', '521', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(75, 'FTTH LINK AT CHIKA ONUEGBU (RIVER PARK)', 'riverpark estate', '2023-03-02 08:45:00', '2023-03-02 17:26:00', 'power issue at layer3\'s end', 'It was as a result of the fluctuation', '521', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(76, 'ANTHONY UCHE( PATNASONIC)', 'patnasonic', '2023-03-02 10:26:00', '2023-03-02 10:35:00', 'power issue at layer3\'s end', 'It was as a result of the fluctuation', '9', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(77, 'ANTHONY UCHE( PATNASONIC)', 'patnasonic', '2023-03-02 10:26:00', '2023-03-02 10:35:00', 'power issue at layer3\'s end', 'It was as a result of the fluctuation', '9', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(78, 'FTTH HAMZA ABDULKADIR - COUNTRY COURT', 'country court', '2023-03-03 16:38:00', '2023-03-05 11:18:00', 'na', 'Ask Oche what was done. Awaiting his feedback', '2560', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(79, 'FTTH - KANAYO UMEOGU (PORSCHE) - PAYMENT ISSUE', 'porsche', '2023-03-04 16:27:00', '2023-03-04 21:04:00', 'payment issue', 'client complained that he made payment twice. It was explained to him that the payment would be used for the next month.', '277', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(80, 'PAYMENT CORRECTION FOR USMAN HABU (SAFARI COURT)', 'safari court', '2023-03-04 23:03:00', '2023-03-05 17:00:00', 'payment issue', 'This client was suspended before their due date.', '1077', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(81, 'PATNASONIC (SEIDU ISMAIL AHMED)', 'patnasonic', '2023-03-05 09:21:00', '2023-03-06 15:34:00', 'customer request', 'Requested our engineer to tidy up a pipe/fiber cable. It is done.', '1813', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(82, 'FTTH LINK AT SEAN SEGUN TOLUHI (ASSOCIATED ESTATE)', 'associated estate', '2023-03-05 14:48:00', '2023-03-07 17:01:00', 'fiber cut', 'Fiber cut was resolved along the route.', '3013', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(83, 'FTTH LINK AT SAMSON AMEH OPALUWAH (ASSOCIATED ESTATE)', 'associated estate', '2023-03-05 20:57:00', '2023-03-07 17:01:00', 'fiber cut', 'Fiber cut was resolved along the route.', '2644', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(84, 'FTTH LINK ABDULKADIR HAMZAT - COUNTRY COURT', 'country court', '2023-03-05 21:21:00', '2023-03-07 11:18:00', 'na', 'From IS report, his ATB and patch cord were cleaned carefully and his power level is seen to have slightly improved.', '2277', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(85, 'THOMAN FINKEN - ROUTE 66', 'route 66', '2023-03-06 11:46:00', '2023-03-06 17:21:00', 'faulty client device', 'The ONT was replaced to restore service.', '335', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(86, 'COMPENSATION REQUEST FOR YUNUS TOKER (SAFARI COURT)', 'safari court', '2023-03-07 11:30:00', '2023-03-07 15:05:00', 'compensation', 'Requested for 4 days but was given 2 days because he didn\'t have 4 days of downtime.This client\'s issue was reported in the evening on the 24th of February, and his issue was resolved on the 26th. He then requested we send our engineer to help him straighten his patch cord. ', '215', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(87, 'WRONGFUL BILLING FOR JACKIE WU ( DEI GRATIA APARTMENT JAHI)', 'dei gratia', '2023-03-07 12:16:00', '2023-03-07 17:44:00', 'payment issue', 'She mentioned that she paid for the 60Mbps which is 26,875 but received an invoice for 30Mbps 19,888.', '328', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(88, ' LINK AT EDDY OBOYE ( CORAL )', 'coral estate', '2023-03-07 17:08:00', '2023-03-10 17:10:00', 'faulty client device', ' The device and ATB were cleaned, the patch cord and 24V power adapter to the ONT was replaced to fully restore the customer\'s internet access.', '4322', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(89, 'FTTH: LINK AT EMEKA ONUBOGU - RIVERPARK ESTATE', 'riverpark estate', '2023-03-07 17:25:00', '2023-03-09 12:00:00', 'fiber issue', 'Construsction work ongoing so restoration will take some more time.', '2555', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(90, 'FTTH WRONG DUE DATE FOR LANRA-LEKE SHARON ROSE- RIVER PARK ', 'riverpark estate', '2023-03-08 18:53:00', '2023-03-09 12:00:00', 'billing issue', 'client made payment , however they received invoice says that the customer is due in 18 days. ', '1027', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(91, 'FTTH: LINK AT ABEL LUFAFA', 'abel lufafa', '2023-03-10 19:27:00', '2023-03-11 17:03:00', 'unknown', 'Migrated to GPON. Currently up and running.', '1296', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(92, 'FTTH: LINK AT FADAHUNSI EMMANUEL (RIVER PARK)', 'riverpark estate', '2023-03-10 21:28:00', '2023-03-11 18:10:00', 'equipment failure', 'Aircube software had crashed. A new firmware was installed to restore normalcy to the device.', '1242', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(93, 'FTTH - DANIEL RENNA (ASPEN) ', 'aspen', '2023-03-11 21:47:00', '2023-03-13 08:45:00', 'fiber cut', 'Broken core at the FAT, this was resolved to restore the link', '2098', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(94, 'FTTH - EMEKA ONYERIKA (PORSCHE PHASE 3) ', 'porsche', '2023-03-12 08:00:00', '2023-03-15 02:47:00', 'faulty client device', 'The power level was optimized both in the ATB and FAT to restore service.', '4007', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(95, 'FTTH - EMEKA ONYERIKA (PORSCHE PHASE 3)', 'porsche', '2023-03-12 09:51:00', '2023-03-15 17:00:00', 'transmission issue', 'The ONT was replaced and the power level was optimized both in the ATB and FAT to restore service', '4749', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(96, 'FTTH - OUTAGE AT THE BRIDGE AND OTHER ESTATES ALONG IDU AXIS ', 'bridge estate', '2023-03-12 12:10:00', '2023-03-13 16:59:00', 'fiber cut', 'The downtime was as a result of multiple fiber cuts along the transmission path. Due to the extent of damage done on our fiber cable, a new fiber cable was laid and spliced to restore service.', '1729', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(97, 'FTTH - KARO AKPUGHE (PARADISE COURT) - Issues with the network', 'paradise court', '2023-03-12 12:19:00', '2023-03-13 16:59:00', 'fiber cut', 'Affected by the general outage on Bridge estate route.', '1720', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(98, 'FTTH - ENGR. WEST GOODLUCK (RIVER PARK)', 'riverpark estate', '2023-03-12 23:50:00', '2023-03-13 19:45:00', 'local issue at client’s end', 'It was observed the devices were moved from its initial position on the tv stand to under the tv stand. In the process, the LAN cable powering the ONT was disconnected therefore resulting to loss of internet. It was connected properly to restore service.', '1195', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(99, 'LAYER3: FTTH LINK DOWNTIME AT CHIBUIKE CHIMA- SIL ESTATE', 'sil estate', '2023-03-13 09:28:00', '2023-03-13 17:00:00', 'na', 'NA', '452', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(100, 'GUZAPE OLT', 'guzape', '2023-03-13 12:40:00', '2023-03-14 12:15:00', 'unknown', 'NA', '1415', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(101, 'LINK AT MR ABEL LUFAFA RESIDENCE', 'lufafa residence', '2023-03-14 09:05:00', '2023-03-15 12:10:00', 'transmission issue', 'Affected by the Guzape OLT downtime. ', '1625', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(102, 'FTTH - TOBI TAIWO (SACI COURT)', 'saci court', '2023-03-14 10:23:00', '2023-03-14 11:15:00', 'customer request', 'Customer has been contacted by Sales Unit', '52', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(103, 'FTTH LINK DOWNTIME AT ENIOLA OLUWATOSIN (REGENT APARTMENT)', 'regent service apartments', '2023-03-14 10:49:00', '2023-03-14 17:00:00', 'fiber issue', 'Red light shwon on the ONT, escalated to IS. They resolved the fiber issue', '371', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(104, 'LINK AT IKECHUKWU ATURUOBI (PORSCHE)', 'porsche', '2023-03-14 11:00:00', '2023-03-15 17:29:00', 'fiber cut', 'The client\'s link was tampered with by our vendor hence the downtime. The broken core was spliced to restore service.', '1829', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(105, 'FTTH LINK DOWNTIME AT KINGSLEY EGBOGUN (PORSCHE 2)', 'porsche', '2023-03-14 12:37:00', '2023-03-14 18:08:00', 'fiber issue', 'The broken core was spliced to restore service.', '331', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(106, ' FTTH LINK DOWNTIME AT ISRAEL KIDRON - ODA CRESCENT', 'oda crescent', '2023-03-14 20:16:00', '2023-03-15 17:00:00', 'frozen client device', 'The devices seemed to have frozen and it was reset to restore service.', '1244', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(107, 'LINK AT AONDONA ORTI (MALCOM FRASER)', 'malcom fraser', '2023-03-15 04:25:00', '2023-03-15 17:00:00', 'unknown', 'NA', '755', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(108, 'FTTH: LINK AT JOYS AND ABIMBOLA ABODUNRIN ( OPEN GATE)', 'opens gate', '2023-03-15 08:02:00', '2023-03-15 10:24:00', 'null', 'Despite having no network for 2 days recently due to fibre cut on the route, he was suspended and he paid over 14 days ago. 2 days were given to the client. ', '142', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(109, 'FTTH: LINK AT SUNDAY DOGONYARO (TONY MOMOH KATAMPE EXT)', 'katampe extension', '2023-03-15 10:49:00', '2023-03-15 16:43:00', 'fiber cut', 'It was down due to core failure and it was swapped to another splitter to restore service.', '354', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(110, 'LINK DOWN AT JACKSON OLAYE RESIDENCE (PATNASONIC) ', 'patnasonic', '2023-03-15 13:37:00', '2023-03-15 16:37:00', 'compensation', 'Requested for 5 days compensation. It was explained to him that he has to report the issue when it happens before compensation can be given. He was given 2 days based the Idu axis outage only. ', '180', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(111, 'LINK AT IKECHUKWU ATURUOBI - PORSCHE ESTATE - SERVICE INTERRUPTION FOR FIVE DAYS', 'porsche extension', '2023-03-15 15:50:00', '2023-03-17 09:09:00', 'compensation', 'Requested for 5 days compensation. 2 days were given for the downtime observed.', '2479', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(112, 'COMPENSATION REQUEST FOR CHUKWU AGHA (PORSCHE 3 ESTATE)', 'porsche', '2023-03-15 16:25:00', '2023-03-16 17:02:00', 'compensation', 'He complained of a downtime for 4 days during the presidential election but was told that there is nothing we can do as there was no movement which made him very angry. An extension of 4 days has been approved by Godwin Michaels', '1477', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(113, 'COMPENSATION REQUEST FOR O.A OLABANJI (Epicenter)', 'epicenter', '2023-03-15 17:00:00', '2023-03-15 17:07:00', 'compensation', 'Requested for compensation. 2 days was given for the days of the Idu axis outage.', '7', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(114, 'LINK AT WAHAB IMRAN (RIVER PARK)', 'riverpark estate', '2023-03-16 07:15:00', '2023-03-17 19:21:00', 'faulty patch cords', 'The faulty patch cord was replaced to restore service.', '2166', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(115, 'FTTH: LINK AT CHARLES OKOLI (OPENS GATE)', 'opens gate', '2023-03-16 08:07:00', '2023-03-16 16:38:00', 'faulty patch cords', 'The downtime was as a result of a faulty patch cord which was replaced to restore service to your link', '511', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(116, 'LINK AT ICRC YB-C3', 'icrc', '2023-03-16 10:55:00', '2023-03-16 16:38:00', 'faulty patch cords', 'The downtime was as a result of a faulty patch cord and connector which were replaced to restore service to the link.', '343', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(117, 'FTTH: BANDWIDTH ISSUES AT GREAT UCHE ONYE - PARADISE COURT', 'paradise court', '2023-03-16 12:53:00', '2023-03-18 15:51:00', 'customer request', 'His bandwidth and speed were tested and explained to him.', '3058', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(118, 'FTTH: BANDWIDTH ISSUES AT GREAT UCHE ONYE - PARADISE COURT', 'paradise court', '2023-03-16 12:53:00', '2023-03-18 15:51:00', 'unknown', 'Client complained of not getting his subscribed bandwidth of up to 80/80Mbps. The IS team explained to him how it works after a speed test. He can get 80Mbps if the workload needs it. Asides these complaint, the link is working fine', '3058', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(119, ' FTTH LINK DOWNTIME AT NUUMAN ASHAKA (EFAB VILLE ESTATE)', 'efab ville', '2023-03-16 22:06:00', '2023-03-17 13:29:00', 'fiber issue', 'The core was down due to failure at the splitter leg. It was swapped to another splitter leg to restore service.', '923', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(120, ' LINK DOWNTIME AT RILWAN BELLO (FESTRUST ESTATE)', 'festrust', '2023-03-16 22:07:00', '2023-03-17 13:15:00', 'local issue at client’s end', 'We observed low power level. The ATB and patch cord was cleaned to improve the power level. ', '908', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(121, 'LINK AT EDDY OBEYE (CORAL)', 'coral estate', '2023-03-17 06:46:00', '2023-03-17 13:11:00', 'faulty patch cords', 'The faulty patch cord was replaced to restore service.', '385', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(122, 'FTTH LINK AT BAMIGBOLA AKINOLA - EUPHRATES', 'euphrates', '2023-03-17 11:14:00', '2023-03-18 15:55:00', 'unknown', 'IS team confirmed the link to be stable after running test. Client is using a tp link deco in place of the Aircube so it\'s not appearinng on the UNMS portal.', '1721', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(123, 'WAEL BANKOUR', 'wael bankour', '2023-03-17 16:10:00', '2023-03-20 17:00:00', 'frozen client device', 'The device firmware was upgraded to restore normalcy. His complaint of slow internet on his smart TV has been addressed by the IS team.', '4370', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(124, 'LINK AT HALIMA BELLO - RIVERPARK', 'riverpark estate', '2023-03-17 19:14:00', '2023-03-17 20:09:00', 'na', 'Unknown', '55', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(125, 'OUTAGE AT RIVERPARK AND DURUMI', 'riverpark estate', '2023-03-17 23:34:00', '2023-03-18 10:57:00', 'fiber issue', 'Fiber issue was resilved along that route to restore service', '683', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(126, 'LINK AT OLAOYE OLAYINKA (19, Anthony Adegbulegbe Cres. Jahi)', 'jahi', '2023-03-18 08:08:00', '2023-03-18 18:32:00', 'fiber issue', 'The downtime was a result of a fiber issue, which was resolved to restore service', '624', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(127, 'FTTH: LINK AT CHRIS OMOH - RIVERPARK', 'riverpark estate', '2023-03-18 10:39:00', '2023-03-18 11:17:00', 'fiber issue', 'Affected by outage at River park and Durumi', '38', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(128, 'FTTH: LINK AT CHRIS OMOH - RIVERPARK', 'riverpark estate', '2023-03-18 10:39:00', '2023-03-18 11:17:00', 'fiber issue', 'Affected by outage at River park and Durumi', '38', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(129, 'FTTH - LINK AT BELLO MUSTAFA BELLO (MARBEL HOMES, JAHI) - PAYMENT ISSUES', 'jahi', '2023-03-18 13:47:00', '2023-03-20 10:38:00', 'billing issue', 'client paid for two months but he received an invoice one month earlier than his due date. Billing corrected his records.', '2691', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(130, 'Guzape OLT', 'guzape', '2023-03-18 14:29:00', '2023-03-20 09:37:00', 'fiber issue', 'Fiber issue was resolved by the IS Team', '2588', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(131, 'FTTH - TOBI TAIWO (SACI COURT)', 'saci court', '2023-03-19 23:43:00', '2023-03-20 21:32:00', 'low fiber power', 'Service is now stable after power level was optimized ', '1309', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(132, 'FTTH - UNSTABLE SERVICE AT ISAH SAIFULLAHI (JIBRIL AMINU STREET, KATAMPE EXT.)', 'katampe extension', '2023-03-20 07:01:00', '2023-03-20 14:45:00', 'low fiber power', 'After cleaning the patch cord and some device and cable arrangement the power level was optimized from -28 to -25. It is stable now. Update shared by David on WhatsApp.', '464', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(133, 'FTTH - LINK AT JOSHUA OGBOLE (LARIX)', 'larix', '2023-03-20 10:00:00', '2023-03-20 16:20:00', 'powered down device', 'Device was not plugged in properly. Client insited on engineers visiting his location.', '380', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(134, 'FTTH: LINK AT EMEKA ODUMUGWU-OJUKWU (THUJA VILLE)', 'thuja ville', '2023-03-20 10:42:00', '2023-03-22 16:30:00', 'faulty client device', 'His ONT was responsible for the unstable network experience he faced. It was replaced by the IS team and his link is working fine now.', '3228', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(135, 'FTTH - LINK AT ALI-BABA ARI (TAHEEL ESTATE) - BILLING ISSUES', 'taheel estate', '2023-03-20 11:22:00', '2023-03-21 17:00:00', 'billing issue', 'client complained of being billed the wrong amount.', '1778', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(136, 'LINK AT MS KANNEG GWON - DEI GRATIA APARTMENT 302', 'dei gratia', '2023-03-20 19:38:00', '2023-03-21 11:56:00', 'fiber issue', 'Service has been restored to the subject link after the broken score was spliced.', '978', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(137, 'LINK DOWNTIME AT SAMAILA DAHUWA (PARADISE COURT)', 'paradise court', '2023-03-20 23:36:00', '2023-03-22 11:05:00', 'low fiber power', 'The power level was optimized from -31 to -24 after cleaning ATB connector and arranging the cable.', '2129', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(138, 'COMPENSATION REQUEST ', 'route 66', '2023-03-21 17:28:00', '2023-03-22 16:32:00', 'compensation', 'Based on the compensation policy, the client Chiwete Ejeteh was given 2 days and Beatrice Diah 1 day. This was based on the downtime that affected both Idu axis and Route 66.', '1384', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(139, 'LINK AT JAD IBRAHIM (ICRC JABI)', 'icrc', '2023-03-21 19:33:00', '2023-03-22 12:51:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1038', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(140, 'LINK  AT ICRC JABI', 'icrc', '2023-03-21 19:55:00', '2023-03-22 12:51:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1016', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(141, 'GUZAPE OLT OUTAGE', 'guzape', '2023-03-22 07:15:00', '2023-03-22 10:48:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '213', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(142, 'FTTH LINK ABDULKADIR HAMZAT - COUNTRY COURT', 'country court', '2023-03-22 09:05:00', '2023-03-22 14:00:00', 'customer request', 'Complained of not being able to access Netflix and YouTube on their smart TV. The issue was from thier smart TV and not our internet.', '295', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(143, 'ATTAHIRU JEGA RESIDENCE', 'attahiru jega residence', '2023-03-23 09:00:00', '2023-03-24 10:29:00', 'fiber issue', 'The broken core was respliced to restore service.', '1529', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(144, 'LINK AT F. R. ONOJA - AIBEN ESTATE', 'aiben estate', '2023-03-23 10:36:00', '2023-03-24 00:38:00', 'power issue at customer\'s end', 'Complained of a slow experience, their firmware was then updated. Then it went off. We suspect it was a power issue from their end because it later came back up.', '842', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(145, 'LINK AT ABUBAKAR GARBA - SIL ', 'sil estate', '2023-03-23 17:36:00', '2023-03-28 11:43:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '6847', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(146, 'LINK DOWNIME AT MICHAEL EGOR - SIL ESTATE, BLEN ERISTOM - BIZZARRE APARTMENT, DAGNON SEYBUDE -ICRC AND DANJUMA WANIKO - SIL ESTATE, BUBA KIJAH - SIL', 'sil estate/bizarre apartments/icrc', '2023-03-24 10:41:00', '2023-03-24 17:04:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '383', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(147, 'LINK AT BLEN ERISTOM - BIZZARE APARTMENTS', 'bizarre apartments', '2023-03-24 10:41:00', '2023-03-27 10:40:00', 'fiber issue', 'The downtime was as a faulty patcord which was replaced to restore service. ', '4319', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(148, 'LINK AT MICHAEL EGOR - SIL ', 'sil estate', '2023-03-24 10:41:00', '2023-03-24 21:16:00', 'fiber issue', 'The point of failure was discovered in the canal and after splicing the cores back the service was restored.', '635', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(149, 'LINK AT DANJUMA WANIKO - SIL', 'sil estate', '2023-03-24 10:41:00', '2023-03-28 11:43:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '5822', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(150, 'FTTH: LINK AT DAGNON SEYUNDE PLOT 869 11 HOUSE 5', 'ftth', '2023-03-24 10:41:00', '2023-03-24 17:04:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '383', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(151, 'LINK AT TITUS IRIS - LARIX', 'larix', '2023-03-24 12:44:00', '2023-03-29 13:21:00', 'low fiber power', 'Power level was optimized to restore service', '7237', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(152, 'BERTINE KAMPHUIS (NO 6 PATRICIA LUMUMBA )', 'patricia lumumba', '2023-03-24 12:54:00', '2023-03-27 08:26:00', 'fiber issue', 'An upgrade was carried out on the firmware of this customer\'s ubiquiti access point. Do reconfirm her experience and revert.', '4052', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(153, 'DOWNTIME AT FESTRUST AND OTHER CUSTOMERS ON THE ROUTE', 'festrust', '2023-03-24 14:11:00', '2023-03-24 14:13:00', 'na', 'The link flapped', '2', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(154, 'LINK DOWNTIME AT FIDEL ACHI - J.H Wariya Crescent', 'wariya crescent', '2023-03-24 15:00:00', '2023-03-28 13:59:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '5699', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(155, 'OUTAGE AT COUNTRY COURT', 'country court', '2023-03-24 16:20:00', '2023-03-24 17:04:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '44', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(156, 'FTTH: LINK AT CHRIS OKETA(PARADISE COURT)', 'paradise court', '2023-03-24 18:56:00', '2023-03-26 17:00:00', 'unknown', 'IS made a visit to the location and the service improved.', '2764', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(157, 'COMPENSATION REQUEST FOR MICHAEL IFFI (MERCY SAMUELSON) ', 'maercy samuelson', '2023-03-25 08:16:00', '2023-03-28 03:24:00', 'compensation', 'We managed the client since his downtime was just for a day', '4028', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(158, 'FTTH: LINK AT MOHAMMED SAFIYANU (JAHI)', 'jahi', '2023-03-25 20:38:00', '2023-03-26 11:48:00', 'device issues', 'Device was cleaned and tested to ensure better speed', '910', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(159, 'FTTH - ATTAHIRU JEGA CRESCENT AND SACI COURT ', 'attahiru jega residence/saci court', '2023-03-26 15:13:00', '2023-03-27 09:56:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '1123', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(160, 'COMPENSATION REQUEST FOR TERSOO D. UKECHIR (FESTRUT ESTATE)', 'festrust', '2023-03-27 15:29:00', NULL, 'compensation', 'Customer requested 2 days’ compensation for the downtime experienced. He has been a churned customer for 387 days.', '-', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(161, 'COMPENSATION REQUEST FOR CHARLES OMOLE (FESTRUT ESTATE)', 'festrust', '2023-03-28 15:08:00', NULL, 'compensation', 'N/A', '-', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(162, 'COMPENSATION REQUEST FOR FIDEL ACHI (J. H. WARIYA CRESCENT) ', 'wariya crescent', '2023-03-28 15:39:00', '2023-03-29 22:04:00', 'compensation', '2 days were given to the client. ', '1825', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(163, 'OUATAGE AT ASSOCIATED AND LINKTIN ORCHARD ESTATE', 'associated estate/ linktin orchard estate', '2023-03-29 07:00:00', '2023-03-29 15:53:00', 'fiber issue', 'The downtime was as a result of a fiber cut along the transmission route which was resolved to restore service.', '533', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(164, 'ESCALATION: DUE DATE CORRECTION FOR CHIJIOKE AKANIRO (GRACE COURT)', 'grace court', '2023-03-29 09:36:00', '2023-03-29 15:50:00', 'null', 'Customer made payment via Paystack on the 4th of March but was suspended earlier. Issue rectified by the Billing team', '374', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(165, 'FTTH: LINK AT EMMANUEL ANERI (LINKTIN OCHARD)', 'linktin orchard', '2023-03-29 09:40:00', '2023-03-29 16:27:00', 'fiber issue', 'The downtime was as a result of a fiber cut along the transmission route which was resolved to restore service.', '407', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(166, 'FTTH: LINK AT SEAN SEGUN TOLUHI (ASSOCIATED ESTATE)', 'associated estate', '2023-03-29 09:43:00', '2023-03-29 16:27:00', 'fiber issue', 'The downtime was as a result of a fiber cut along the transmission route which was resolved to restore service.', '404', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(167, 'FTTH - TEMITOPE ADEKANMI (LINKTIN OCHARD)', 'linktin orchard', '2023-03-29 09:48:00', '2023-03-29 16:20:00', 'fiber issue', 'The downtime was as a result of a fiber cut along the transmission route which was resolved to restore service.', '392', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(168, 'FTTH - OUTAGE AT RIVER PARK ESTATE', 'riverpark estate', '2023-03-29 16:18:00', '2023-03-29 20:28:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '250', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(169, 'FTTH - HALIMA BELLO (RIVER PARK)', 'riverpark estate', '2023-03-29 17:07:00', '2023-03-29 20:37:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '210', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(170, 'FTTH - ROUTE 66 OUTAGE ', 'route 66', '2023-03-29 18:39:00', '2023-03-29 19:51:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '72', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(171, 'FTTH - AGENEBODE OUTAGE (GARKI)', 'garki', '2023-03-29 18:39:00', '2023-03-29 21:29:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '170', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(172, 'LINK DOWNTIME AT SADIQ NASIR (ASSOCIATED ESTATE)', 'associated estate', '2023-03-29 21:54:00', '2023-03-30 07:11:00', 'frozen device', 'It worked after power cycling it.', '557', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(173, 'LINK AT NAFISAT ABDULLAHI GARBA - (ATTAHIRU JEGA STRT, KATAMPE EXT)', 'attahiru jega residence/ katampe extension', '2023-04-01 10:50:00', '2023-04-01 21:46:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '656', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(174, 'LINK AT CHRIS OMOH - RIVERPARK', 'riverpark estate', '2023-04-01 14:04:00', '2023-04-01 14:18:00', 'na', 'Nothing was done from our end as the link was observed to be up.', '14', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(175, 'FTTH LINK DOWNTIME AT VICKY TECKHANDANI - AWANDE CLOSE', 'awande close', '2023-04-01 14:11:00', '2023-04-01 15:26:00', 'fiber issue', 'Red light on ONT. The IS team resolved the fiber issue to restore service.', '75', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(176, 'OUTAGE AT CORAL ESTATE, THUJA VILLE AND PHILIP SHUAIBU CLOSE', 'coral estate /thuja ville/ philip shuaibu close', '2023-04-01 15:23:00', '2023-04-02 15:20:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1437', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(177, 'FTTH: LINK AT ABDULAZEEZ BABA - Qoral Groove', 'qoral groove', '2023-04-01 18:22:00', '2023-04-02 07:22:00', 'configuration issues', 'Complained of a downtime but observed them to be up. His outdated firmware was upgraded in a bid to restore service.', '780', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(178, 'FTTH: LINK AT ABDULHAMID ZAKARI - FESTRUST', 'festrust', '2023-04-01 18:25:00', '2023-04-02 07:50:00', 'na', 'Nothing was done from our end as the link was observed to be up. ', '805', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(179, 'FTTH: LINK DOWN AT ATIBA ADERONKE (RIVER PARK)', 'riverpark estate', '2023-04-01 18:43:00', '2023-04-02 08:00:00', 'na', 'Nothing was done from our end.', '797', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(180, 'FTTH: LINK JACKSON OLAYE RESIDENCE (PATNASONIC)', 'patnasonic', '2023-04-01 22:35:00', '2023-04-03 14:53:00', 'low optical power', 'The downtime was due to poor power level, which was optimized to restore service ', '2418', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(181, 'FTTH: LINK AT ENGR AJANAH ABDULLAHI NUHU - EFAB VILLE', 'efab ville', '2023-04-02 14:01:00', '2023-04-03 16:39:00', 'configuration issues', 'the aircube UISP key was reset to make the device available on the UNMS.', '1598', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(182, 'LINK AT EHA APARTMENT WUYE', 'eha apartment', '2023-04-02 14:16:00', '2023-04-03 16:39:00', 'fiber issue', 'The downtime was as a result of a fiber issue. The broken core was spliced to restore service', '1583', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(183, 'IFUNANYA MJBAKOR RESIDENCE (PORSCHE A03)', 'porsche', '2023-04-03 09:56:00', '2023-04-04 11:29:00', 'fiber issue', 'Service has been restored to the link after broken was spliced .', '1533', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(184, 'ISIOMA ORAKA - PORSHE', 'porsche', '2023-04-03 09:56:00', '2023-04-04 11:29:00', 'faulty aircube ', 'Aircube was observed to be unstable, It was reset and configured to restore service.', '1533', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(185, 'ANTHONY EUNICE UBA (PORSCHE)', 'porsche', '2023-04-03 10:14:00', '2023-04-05 15:30:00', 'device issues', 'The patch cord and the ONT optical ports were cleaned to restore service.', '3196', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(186, 'LINK AT IRIS SMART ALAUSA', 'iris smart', '2023-04-03 10:57:00', '2023-04-04 12:18:00', 'fiber issue', 'The downtime was as a result of a fiber issue. Which was resolved to restore service', '1521', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(187, 'ESTHER IFY (FESTRUST ESTATE)', 'festrust', '2023-04-03 14:28:00', '2023-04-04 14:09:00', 'na', 'The client confirmed the link is up hence the visit was no longer required. she agreed to monitor it and revert if anything changes.', '1421', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(188, 'LINK AT IRIS SMART MD RESIDENCE', 'iris smart', '2023-04-03 15:38:00', '2023-04-04 17:09:00', 'fiber issue', 'The downtime was as a result of a fiber issue. Which was resolved to restore service', '1531', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(189, 'AHMAD SAMA\'LIA (PATNASONIC)', 'patnasonic', '2023-04-04 06:45:00', '2023-04-04 13:20:00', 'faulty poe', 'The POE was replaced to restore service.', '395', '2023-11-01 05:27:03', '2023-11-01 05:27:03');
INSERT INTO `issues` (`id`, `subject`, `estate`, `startDate`, `endDate`, `rootCause`, `description`, `timeSpent`, `created_at`, `updated_at`) VALUES
(190, 'PAYMENT CONFIRMATION FOR BENJAMIN OGUGUA (PARADISE COURT)', 'paradise court', '2023-04-04 07:53:00', '2023-04-04 08:26:00', 'unms issue', 'the customer paid on the 28th March through Paystack which the system didn’t automatically picked and which was not sent.\n', '33', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(191, 'LINK AT CHRIS OMOH - RIVERPARK', 'riverpark estate', '2023-04-04 16:39:00', '2023-04-05 18:58:00', 'power issue at layer3\'s end', 'The downtime was as a result of a power issue at our PoP which was resolved to restore service. ', '1579', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(192, 'FTTH - RIVER PARK OUTAGE ', 'riverpark estate', '2023-04-04 19:30:00', '2023-04-05 18:58:00', 'power issue at layer3\'s end', 'The downtime was as a result of a power issue at our PoP which was resolved to restore service. ', '1408', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(193, 'LINK AT CHRIS OMOH - RIVERPARK', 'riverpark estate', '2023-04-06 14:08:00', '2023-04-08 13:42:00', 'fiber issue', 'The downtime was as a result of a fiber issue. The broken core was spliced to restore service', '2854', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(194, 'FTTH - FESTUS ASIKHAI ', 'festus asikhai', '2023-04-08 02:11:00', '2023-04-09 16:59:00', 'fiber issue', 'The broken core was spliced to restore service', '2328', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(195, 'OUTAGE ALONG JAHI AXIS ', 'jahi', '2023-04-08 10:00:00', '2023-04-08 17:53:00', 'fiber issue', 'The fiber issue along the route was resolved to restore service.', '473', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(196, 'FTTH: LINK AT MOHAMMED SAFIYANU (FEMI GBAJABIAMILA CRESCENT, JAHI)', 'femi gbajabiamila crescent', '2023-04-08 11:02:00', '2023-04-08 17:53:00', 'fiber issue', 'Affected by the Jahi route downtime', '411', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(197, 'FTTH - ABAYOMI OYELEKE (LINKTIN ORCHARD) - Invoice overdue', 'linktin orchard', '2023-04-09 14:38:00', '2023-04-09 17:23:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '165', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(198, 'PHILIP MSHELBWALA (LINKTIN ORCHARD)', 'linktin orchard', '2023-04-09 20:28:00', '2023-04-18 12:13:00', 'fiber issue', 'Twisted patch cord caused the downtime.', '12465', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(199, 'FTTH - RICHIE NYERE (PORSCHE) ', 'porsche', '2023-04-10 07:54:00', '2023-04-10 13:27:00', 'fiber issue', 'The downtime was as a result of a fiber issue. The broken core was spliced to restore service', '333', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(200, 'FTTH - AHMAD SROUR (DANTATA AND SOWOE) ', 'dantata and sowoe', '2023-04-10 08:10:00', '2023-04-10 16:44:00', 'fiber issue', 'The fiber issue was resolved to restore service', '514', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(201, 'FTTH - KOFFI DESIRE NOEL (RIVER PARK)', 'riverpark estate', '2023-04-10 13:22:00', '2023-04-10 16:44:00', 'low fiber power', 'The fiber issue was resolved to optimize the power level', '202', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(202, 'COMPENSATION REQUEST FOR ANLAINI CHINOKO (RIVER PARK ESTATE)', 'riverpark estate', '2023-04-11 15:32:00', '2023-04-12 09:30:00', 'compensation', 'Given 1 month free based on churned client approval after paying for 1 month.', '1078', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(203, 'FTTH: LINK AT FRANCIS ILENIKHENA (RIVER PARK) - BILLING ISSUE', 'riverpark estate', '2023-04-11 20:27:00', '2023-04-11 21:00:00', 'payment issue', 'Incorrect amount showing on payment receipt', '33', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(204, 'FTTH: LINK AT JOSEPH ENEGELA (COTONOU CRESCENT)', 'cotonou crescent', '2023-04-12 14:08:00', '2023-04-12 15:15:00', 'frozen client device', 'The link was rebooted remotely to optimize the link', '67', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(205, 'FTTH: LINK AT BILHATU OMOMIA (OASIS)', 'oasis court', '2023-04-12 19:45:00', '2023-04-12 19:54:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '9', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(206, 'LINK AT OLUWAMAYOWA AROTIOWA - PORSCHE (Invoice overdue)', 'porsche', '2023-04-12 21:23:00', '2023-04-12 21:28:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '5', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(207, 'FTTH - LINK AT OCHE JOSEPH (PORSCHE) ', 'porsche', '2023-04-13 07:24:00', '2023-04-13 17:00:00', 'fiber issue', 'The customer was visited and the power level was optimized to restore service.', '576', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(208, 'FTTH: LINK AT VIVIAN FAYS (RIVER PARK)', 'riverpark estate', '2023-04-13 07:52:00', '2023-04-16 09:15:00', 'configuration issues', 'The customer\'s LAN cables were replaced and the aircube was reconfigured to successfully restore internet access. She was not available till weekend, hence the long resolution time.', '4403', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(209, 'OLALEKAN OLUWAFEMI ADU - BECCA APARTMENTS', 'becca apartments', '2023-04-13 19:50:00', '2023-04-18 15:52:00', 'fiber issue', 'The broken core has been spliced to restore service to the link.', '6962', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(210, 'KUKOYI FOLASHADE (PARADISE COURT)', 'paradise court', '2023-04-13 20:53:00', '2023-04-14 12:12:00', 'fiber issue', 'The downtime was as a result of a fiber issue. Which was resolved to restore service', '919', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(211, 'LINK AT MUHAMMAD SAFIYANU - JAHI', 'jahi', '2023-04-14 10:27:00', '2023-04-14 13:05:00', 'configuration issues', 'Firmawre was upgraded to optimize link', '158', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(212, 'FTTH: LINK AT ENGR AJANAH ABDULLAHI NUHU - EFAB VILLE', 'efab ville', '2023-04-15 07:13:00', '2023-04-18 15:48:00', 'configuration issues', 'Aircube was reconfigured to optimize the link speed.', '4835', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(213, 'FTTH - OLUGBENGA ADESANWO (BIZARRE APARTMENTS)', 'bizarre apartments', '2023-04-16 01:23:00', '2023-04-16 16:06:00', 'unms issue', 'Incorrect invoice amount', '883', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(214, 'FTTH - OUTAGE AT LARIX HOMES ', 'larix', '2023-04-16 06:11:00', '2023-04-17 16:10:00', 'fiber issue', 'The fiber cable was damaged by fire from refuse burning.', '2039', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(215, 'FTTH - LINK AT STEVE GUKAS (OASIS)', 'oasis court', '2023-04-17 00:37:00', '2023-04-17 10:06:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '569', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(216, 'LINK AT NUUMAN ASHAKA (EFAB VILLE) - EARLY SUSPENSION FROM UNMS GLITCH', 'efab ville', '2023-04-17 08:57:00', '2023-04-17 10:06:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '69', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(217, 'FTTH- ESTHER DELICADO (RIVER PARK)', 'riverpark estate', '2023-04-17 18:37:00', NULL, 'payment issue', 'Over paid their service bill. Paid N1,988,803.75 instead of N19,887.50. Money was refunded to her. ', '-', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(218, 'FTTH: LINK AT SHOLA LAJU (SANCTUARY COURT)', 'sanctuary court', '2023-04-17 19:54:00', '2023-04-17 20:25:00', 'unms issue', 'Service suspended before the due date due to lost records. ', '31', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(219, 'LINK AT HABIB SHUAIB', 'habib shuaib', '2023-04-18 06:09:00', '2023-04-18 13:02:00', 'fiber issue', 'N/A', '413', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(220, 'TERRY AYOOLA HUGHES (RIVER PARK)', 'riverpark estate', '2023-04-18 11:07:00', '2023-04-18 11:18:00', 'power issue at client\'s end', 'Contacted the customer for troubleshooting, a reboot was done', '11', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(221, 'LINK AT SERGE KOSSOUHO - RIVER PARK', 'riverpark estate', '2023-04-19 07:36:00', '2023-04-22 16:08:00', 'low fiber power', 'Power level was optimized to restore normalcy to the link.', '4832', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(222, 'LINK AT MUHAMMAD SAFIYANU - JAHI', 'jahi', '2023-04-20 10:56:00', '2023-04-20 11:00:00', 'configuration issue', 'Firmawre was upgraded to optimize link', '4', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(223, 'DOWNTIME ON GUZAPE OLT', 'guzape', '2023-04-20 18:07:00', '2023-04-21 12:59:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1132', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(224, 'FTTH - USMAN HABUBALBAYA (SAFARI COURT) - Invoice near due date', 'safari court', '2023-04-21 05:56:00', '2023-04-21 06:07:00', 'unms glitch', 'Early suspension due to UNMS being backdated and losing some payment records.', '11', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(225, 'FTTH - DANIEL OGHOJAFOR - BRIDGE ESTATE - PAYMENT CONFIRMATION', 'bridge estate', '2023-04-21 11:24:00', '2023-04-23 00:48:00', 'unms issue', 'Client made payment via paystack but the payment did not reflect on the UNMS. This was rectified by the billing team.', '2244', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(226, 'LAYER3: LINK AT ICRC LINDA CHALKER', 'icrc', '2023-04-21 12:31:00', '2023-04-21 13:02:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '31', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(227, 'LINK AT SUFIYAN ALI - PATNASONIC', 'patnasonic', '2023-04-21 15:04:00', '2023-04-23 00:44:00', 'unms issue', 'Client made a payment, but the outstanding balance has not been cleared. This was rectified by the billing team.', '2020', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(228, 'COMPENSATION REQUEST FOR CHINWE BIADUO (PORSCHE 4 ESTATE)', 'porsche', '2023-04-21 15:26:00', '2023-04-21 15:59:00', 'compensation', 'One month compensation was added to the customer.', '33', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(229, 'COMPENSATION REQUEST FOR CHINWE BIADUO (PORSCHE 4 ESTATE)', 'porsche', '2023-04-21 15:26:00', '2023-04-22 23:31:00', 'compensation', 'Given 1 month free based on churned client approval after paying for 1 month.', '1925', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(230, 'FTTH LINK AT CHIBUZOR OBIDEGWU (PARADISE COURT)', 'paradise court', '2023-04-21 16:39:00', '2023-04-22 16:08:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1409', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(231, 'FTTH: LINK AT BABAGANA DIGIMA - RIVER PARK', 'riverpark estate', '2023-04-22 09:07:00', '2023-04-22 16:05:00', 'local issue at client’s end', 'Following a visit from the IS team, it was discovered that the physical setup was tampered with and was reconnected properly. this was corrected to restore service.', '418', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(232, 'FTTH - PAUL N\'DRI (OASIS COURT)', 'oasis court', '2023-04-22 17:32:00', '2023-04-22 17:40:00', 'frozen client device', 'Device was rebooted to restore normalcy.', '8', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(233, 'LINK AT APAGU GADZAMA - EXCEEDING GRACE (Unstable Internet)', 'exceeding grace', '2023-04-23 10:08:00', '2023-04-23 10:12:00', 'frozen client device', 'Client device was rebooted to restore normalcy.', '4', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(234, 'OUTAGE AT RIVER PARK AND DUNAMIS ', 'riverpark estate/dunamis', '2023-04-24 06:05:00', '2023-04-24 10:21:00', 'power issue at layer3\'s end', 'The downtime was as a result of faulty extension port where the OLT was connected. This was sorted out to restore service. ', '256', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(235, 'FTTH - CHINWE BIADUO (PORSCHE) ', 'porsche', '2023-04-24 11:09:00', '2023-04-25 20:12:00', 'configuration issue', 'The aircube has been reset and reconfigured, the link is up.', '1983', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(236, 'FTTH - DANIEL RENNA (ASPEN)', 'aspen', '2023-04-24 12:51:00', '2023-04-25 18:03:00', 'local issue at client’s end', 'He discovered the Legend cable was wrongly connected to a Layer3 router.', '1752', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(237, 'FTTH: LINK AT BILHATU OMOMIA (OASIS)', 'oasis court', '2023-04-25 07:27:00', '2023-04-25 12:09:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '282', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(238, 'FTTH - ADENRELE SALAMI (KATAMPE EXT.) - Internet downtime', 'katampe extension', '2023-04-25 08:39:00', '2023-04-25 13:28:00', 'unknown', 'The link came back up.', '289', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(239, 'FTTH - LINK AT ABDULLAHI BANYE (SILAS ILO GUZAPE)', 'silas ilo', '2023-04-25 15:06:00', '2023-04-26 15:31:00', 'frozen client device', 'Frozen interface. it was refreshed to restore service.', '1465', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(240, 'OUTAGE AT RIVER PARK AND DUNAMIS ', 'riverpark estate/dunamis', '2023-04-25 16:03:00', '2023-04-25 16:39:00', 'power issue at layer3\'s end', 'Power issue was resolved to restore service', '36', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(241, 'LAYER3: LINK AT GENEVIEVE IHEANACHO ', 'genevieve iheanacho ', '2023-04-26 09:23:00', '2023-04-26 09:40:00', 'password issues', 'A reset link was sent to her', '17', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(242, 'LINK DOWN AT VICTOR CHIDI EZEIBEANU\'S RESIDENCE (RIVER PARK)', 'riverpark estate', '2023-04-26 12:58:00', '2023-04-27 14:52:00', 'fiber issue', 'The connector in the ATB was replaced, the patch cord and also lan cable was replaced to restore service. ', '1554', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(243, 'FTTH: CHARLES OFOEFULE\'S RESIDENCE (Paradise Court Estate, T16 Unit 2, Karmo)', 'paradise court', '2023-04-26 15:44:00', '2023-04-27 08:42:00', 'configuration issue', 'Firmawre was upgraded to optimize link', '1018', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(244, 'LINK AT WINIFRED DANIELS - RIVERPARK (Service suspended after payment made)', 'riverpark estate', '2023-04-27 12:40:00', '2023-04-27 12:46:00', 'unms issue', 'Early suspension due to UNMS being backdated and losing some payment records.', '6', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(245, 'FTTH: INTERMITTENT LINK AT SUFIYANU ALI - PATNASONIC', 'patnasonic', '2023-04-27 12:50:00', '2023-04-28 15:58:00', 'fiber issue', 'Please note the power level of the subject link has been optimized after the connector in the ATB was replaced. ', '1628', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(246, 'LINK DOWN AT IFEANYI IFEDI IFEDI\'S RESIDENCE (RIVER PARK)', 'riverpark estate', '2023-04-27 13:20:00', '2023-04-27 14:09:00', 'unknown', 'Link came back up after a troubleshooting session', '49', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(247, 'FTTH - LINK AT ABUBAKAR SALEH ABISO (LARIX)', 'larix', '2023-04-29 08:18:00', '2023-04-29 17:00:00', 'faulty ont', 'faulty ONT device was replaced', '522', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(248, 'DOWNTIME ON SOME LINKS AT SIL ESTATE: Danjuma Waniko, Sam Omenka, Michael Egor', 'sil estate', '2023-04-29 13:03:00', '2023-04-29 15:26:00', 'fiber issue', 'the broken core in the cassette was spliced to restore service', '143', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(249, 'Payment Confirmation for Nasirdeen Muhammad Yahaya Loko (River Park)', 'riverpark estate', '2023-04-30 00:15:00', '2023-04-30 09:14:00', 'unms issue ', 'Early suspension due to UNMS being backdated and losing some payment records.', '539', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(250, 'FTTH - LINK AT ABUBAKAR SALEH ABISO (LARIX)', 'larix', '2023-04-29 08:18:00', '2023-05-01 12:26:00', 'faulty ont', 'Service has been restored after the faulty ONT device was replaced .', '3128', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(251, 'FTTH: LINK AT UMAR ARMIYAU BABA (CORAL)', 'coral estate', '2023-05-01 15:40:00', '2023-05-02 11:20:00', 'fiber issue', 'The link failure was caused by a broken core behind the house.', '1180', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(252, 'DOWNTIME AT FARUKU SAIDU (LARIX)', 'larix', '2023-05-01 21:31:00', '2023-05-01 21:35:00', 'na', 'Link came back up', '4', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(253, 'LINK AT KLIMATT APARTMENT', 'klimatt apartments', '2023-05-02 13:44:00', '2023-05-02 16:58:00', 'fiber issue', 'The failure was as the result of broken core outside the building', '194', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(254, 'OUTAGE ON BRIDGE OLT', 'bridge estate', '2023-05-04 04:15:00', '2023-05-04 08:58:00', 'fiber issue', 'Core failure was resolved to restore service.', '283', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(255, 'LINK AT SENYAMBA TANTO (ASSOCIATED ESTATE)', 'associated estate', '2023-05-04 07:15:00', '2023-05-04 08:58:00', 'fiber issue.', 'Core failure was resolved to restore service.', '103', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(256, 'FTTH - ZAINAB ALIYU (OASIS COURT)', 'oasis court', '2023-05-04 05:51:00', '2023-05-04 08:58:00', 'fiber issue.', 'Core failure was resolved to restore service.', '187', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(257, 'FTTH - LINK AT NAKENVESO BENJAMIN (PATNASONIC)', 'patnasonic', '2023-05-05 18:31:00', '2023-05-09 23:40:00', 'fiber issue.', 'the downtime was as result of gardening done which damaged the fiber in the process.', '6069', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(258, 'FTTH: LINK AT KABIR OTTAN (REDWOOD)', 'redwood', '2023-05-05 09:23:00', '2023-05-06 19:49:00', 'fiber issue.', 'Fiber issue was resolved to restore service.', '2066', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(259, 'FTTH - JACKSON OLAYE (PATNASONIC)', 'patnasonic', '2023-05-06 11:31:00', '2023-05-06 20:01:00', 'fiber issue.', 'link downtime due to damaged ATB.', '510', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(260, 'LINK AT CAMERON RATHBURN (ROUTE 66)', 'route 66', '2023-05-05 09:54:00', '2023-05-06 12:08:00', 'faulty patch cord.', 'Faulty patch cord was replaced to restore service.', '1574', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(261, 'OUTAGE AT REGENT SERVICE APARTMENTS', 'regent service apartments', '2023-05-06 16:34:00', '2023-05-06 20:16:00', 'fiber issue.', 'The outage was due to a break in the connecting head of the source at the pickup point. It was restored by cutting off the head and splicing directly.', '222', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(262, 'FTTH: LINK AT DANEJI HAMZAT ALIYU (LARIX)', 'larix', '2023-05-06 09:36:00', '2023-05-06 20:05:00', 'fiber issue', 'link has been successfully restored after swapping the splitter leg at the FAT.', '629', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(263, 'OUTAGE AT LIFE CAMP ', 'life camp', '2023-05-07 20:09:00', '2023-05-08 10:22:00', 'power issue at layer3\'s end.', 'Thunder strike affted the power supply', '853', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(264, 'OUTAGE ON DURUMI OLT', 'durumi', '2023-05-07 17:49:00', '2023-05-08 13:41:00', 'power issue at layer3\'s end.', 'Thunder strike affted the power supply', '1192', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(265, 'FTTH - MOHAMMED KABIR (FEMI GBAJABIAMILA CRESCENT JAHI) ', 'femi gbajabiamila crescent', '2023-05-07 20:24:00', '2023-05-08 10:34:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '850', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(266, 'LINK AT ANITA ODIONG - RIVER PARK ', 'riverpark estate', '2023-05-08 14:46:00', '2023-05-08 20:55:00', 'faulty poe', 'Service has been restored to the subject link after the damaged POE was replaced.', '369', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(267, 'OUTAGE AT RIVER PARK ESTATE OLT', 'riverpark estate', '2023-05-08 18:14:00', '2023-05-08 21:16:00', 'power issue at layer3\'s end.', 'The power extension was replaced, and the devices were power cycled to restore service.', '182', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(268, 'LINK AT OLUGBENGA ADESANWO (BIZARRE APARTMENTS)', 'bizarre apartments', '2023-05-07 13:57:00', '2023-05-09 12:52:00', 'faulty patch cord', 'The patch cord was replaced to restore service.', '2815', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(269, 'LINK AT LANRE OYENAME - FESTRUT ', 'festrust', '2023-05-08 13:47:00', '2023-05-09 13:10:00', 'fiber issue', 'There was a fiber cut on the last mile cable. It was spliced back to restore service.', '1403', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(270, 'LAYER3: LINK AT ICRC JABI', 'icrc', '2023-05-07 16:47:00', '2023-05-09 13:11:00', 'configuration issues', 'Devices were reconfigured', '2664', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(271, 'FTTH - OLA OYENAME (FESTRUT)', 'festrust', '2023-05-08 01:31:00', '2023-05-09 13:18:00', 'fiber issue', 'the downtime was due to a fiber cut, which was resolved to restore service.', '2147', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(272, 'FTTH - LINK AT EKEOMA SOLOMON (RIVER PARK)', 'riverpark estate', '2023-05-06 02:25:00', '2023-05-09 13:18:00', 'fiber issue', 'There was a fiber cut on the last mile cable in front of the house, gardeners might have tampered with the cable. It was spliced back to restore service.', '4973', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(273, 'LINK AT ALJANAH ABDULLAHI NUHU - EFAB-VILLE HOMES', 'efab ville', '2023-05-08 12:50:00', '2023-05-12 11:19:00', 'frozen interface', 'The link came up after a troubleshooting session and the devices were rebooted at both ends', '5669', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(274, 'FTTH - USMAN BALBAYA (SAFARI COURT - C10)', 'safari court', '2023-05-10 18:40:00', '2023-05-12 11:19:00', 'configuration issues', 'The aircube has been reconfigured and the service is restored.', '2439', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(275, 'SERVICE DOWNTIME AT SALLAU ABA RESIDENCE - LARIX HOMES', 'larix', '2023-05-09 22:05:00', '2023-05-10 12:07:00', 'faulty patch cord', 'Downtime was due to low power level observed on the link (-32dBm). The patch cord and connector in the ATB was cleaned to optimize power level.', '842', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(276, 'LINK AT MAYA CLEMENT - PORSCHE II', 'porsche', '2023-05-10 12:07:00', '2023-05-10 13:22:00', 'fiber issue', 'link is down due to multiple points of failures. A new span of fiber optic cable was laid to restore your service.', '75', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(277, 'FTTH: LINK AT JOYS AND ABIMBOLA (OPENS GATE)', 'opens gate', '2023-05-10 22:30:00', '2023-05-11 15:31:00', 'configuration issues', 'Kindly note that the downtime was due to loss of configuration on your device which was reconfigured to restore your service.', '1021', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(278, 'OUTAGE AT RIVER PARK ESTATE OLT', 'riverpark estate', '2023-05-08 18:14:00', '2023-05-08 20:22:00', 'power issue at layer3\'s end.', 'Thunder strike affted the power supply', '128', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(279, 'LINK AT LONGI ANDREW - REDWOOD', 'redwood', '2023-05-10 17:38:00', '2023-05-12 13:04:00', 'faulty patch cord.', 'The patch cord was replaced to restore service.', '2606', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(280, 'FTTH - MOHAMMED SAFIYANU (JAHI) - Slow internet Connection', 'jahi', '2023-05-12 15:48:00', '2023-05-12 16:27:00', 'unknown', 'we rebooted the ONT from our end service is now optimal. ', '39', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(281, 'LINK AT TUNJI OLAWUYI (MAMMY\'S COURT)', 'mammy\'s court', '2023-05-12 15:02:00', '2023-05-12 18:38:00', 'fiber issue', 'Downtime was as a result of broken core inside Partrace behind the house, The broken core was splice and restored back the link', '216', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(282, 'BRIDGE OLT IS DOWN', 'bridge estate', '2023-05-12 20:45:00', '2023-05-13 17:33:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1248', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(283, 'LINK AT JOSHUA OGBOLE - LARIX', 'larix', '2023-05-12 22:15:00', '2023-05-13 22:10:00', 'frozen interface', 'A reboot from our end fixed the issue.', '1435', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(284, 'LINK AT ICRC-JABI (No internet access at B21)', 'icrc', '2023-05-13 18:20:00', '2023-05-14 15:45:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1285', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(285, 'LINK AT JOHN SAMAILA - SIL', 'sil estate', '2023-05-15 17:08:00', '2023-05-15 17:36:00', 'frozen interface', 'The link came back up after restarting the devices.', '28', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(286, 'FTTH LINK AT AKEREDOLU CATHERINE (PATNASONIC)', 'patnasonic', '2023-05-15 21:07:00', '2023-05-15 21:14:00', 'unknown', 'nothing was done from our end.', '7', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(287, 'LINK AT PATRICK GRIFFITH - ICRC EKONG O HOUSE L2', 'icrc', '2023-05-16 08:00:00', '2023-05-17 12:46:00', 'fiber issue', 'patch cord was cleaned and arranged properly, and the link is up.', '1726', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(288, 'LINK AT SAM OMENKA - SIL', 'sil estate', '2023-05-15 07:39:00', '2023-05-15 14:48:00', 'fiber issue', 'There was a fiber cut on the last mile cable inside the compound of the house, it was re spliced, and the link is back up.', '429', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(289, 'LINK AT MAINOMA MUHAMMED (CORAL)', 'coral estate', '2023-05-16 06:38:00', '2023-05-16 17:11:00', 'fiber issue', 'The patch cord and connector were cleaned, and fiber power optimized, the link is back up.', '633', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(290, 'FTTH: LINK AT FIDELIS NWODO (DEI GRATIA)', 'dei gratia', '2023-05-16 17:31:00', '2023-05-17 12:01:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1110', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(291, 'UNSTABLE FTTH LINK AT TENI ADEWUMI', 'teni adewumi', '2023-05-17 07:37:00', '2023-05-18 15:39:00', 'fiber issue', 'the link was down due to bad connector in the ATB.', '1922', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(292, 'OUTAGE ON SOME LINKS ALONG JAHI AXIS', 'jahi', '2023-05-16 13:33:00', '2023-05-17 13:59:00', 'fiber issue', 'We observed as cable cut along Jahi route', '1466', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(293, 'LINK AT KLIMATT APARTMENTS', 'klimatt apartments', '2023-05-17 16:08:00', '2023-05-18 11:36:00', 'faulty ont', 'The link is now stable at the subject location after the faulty ONT was replaced. ', '1168', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(294, 'OUTAGE ON SOME LINKS IN PARADISE COURT', 'paradise court', '2023-05-17 20:07:00', '2023-05-18 08:07:00', 'fiber issue.', 'It was down due to a fiber cut along its route.', '720', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(295, 'OUTAGE ON RIVER PARK ESTATE OLT', 'riverpark estate', '2023-05-17 21:46:00', '2023-05-18 12:03:00', 'fiber issue', 'It was down due to a fiber cut along its route.', '857', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(296, 'UNSTABLE FTTH LINK AT TENI ADEWUMI', 'teni adewumi', '2023-05-18 15:24:00', '2023-05-23 17:00:00', 'fiber issue', 'the link was down due to bad connector in the ATB.', '7296', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(297, 'LINK AT BARKA BALAMI - LARIX', 'larix', '2023-05-16 07:45:00', '2023-05-18 17:00:00', 'fiber issue', 'the link was down due to bad connector in the ATB.', '3435', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(298, 'LINK AT RICHARD GBALAKA (PARADISE COURT)', 'paradise court', '2023-05-15 15:01:00', '2023-05-19 17:05:00', 'fiber issue', 'It was down due to a fiber cut along its route.', '5884', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(299, 'LINK AT ADEJO EMMANUEL (THUJAVILLE)', 'thuja ville', '2023-05-18 19:17:00', '2023-05-19 18:03:00', 'fiber issue', 'I discovered that donwtime was as a result of fiber cute outside the estate', '1366', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(300, ' LINK AT SULEIMAN ABUBAKARR (LARIX)', 'larix', '2023-05-20 08:22:00', '2023-05-24 16:10:00', 'faulty aircube', 'Service was restored to the subject link after the faulty aircube  was replaced', '6228', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(301, 'LINK DOWNTIME AT RIVERPARK, ROUTE 66, cROWN COURT, DEI GRATIA, DURUMI GUZAPE, AND CENTRAL AREA', 'riverpark/route 66/crown court/dei gratia /durumi/central area', '2023-05-20 08:36:00', '2023-05-20 15:03:00', 'fiber issue', 'A major fiber issue was resolved.', '387', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(302, 'FTTH - CHRIS OKETA (PARADISE COURT)', 'paradise court', '2023-05-20 08:58:00', '2023-05-24 16:10:00', 'fiber issue', 'A faulty fiber patch cord was changed to restore the service.', '6192', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(303, 'LINK AT EMEKA OJUKWU - THUJJA VILLE', 'thuja ville', '2023-05-18 12:03:00', '1899-12-31 00:00:00', 'fiber issue.', 'Link is unstable', '64891443', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(304, 'LINK AT BILHA OMOMIA DANIEL - OASIS ', 'oasis court', '2023-05-21 17:49:00', '2023-05-21 20:05:00', 'fiber issue', 'fiber cut due to ongoing construction along the route. This was resolved to restore service. ', '136', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(305, 'LINK AT CHINEDU OGBA RESIDENCE - RIVER PARK', 'riverpark estate', '2023-05-19 09:25:00', '2023-05-21 18:00:00', 'fiber issue', 'The connector in the ATB was cleaned and the patch cord was arranged properly to optimize the link.', '3395', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(306, 'LINK AT ABDULLAHI BANYE - GUZAPE', 'guzape', '2023-05-22 13:01:00', '2023-05-23 17:00:00', 'faulty aircube', 'Device was change to restore service', '1679', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(307, 'LINK AT ICRC EKONG OKOLI R2 ', 'icrc', '2023-05-22 12:42:00', '2023-05-22 13:50:00', 'na', 'Link came back up after a reboot', '68', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(308, 'DOWNTIME ALONG IDU AXIS', 'idu axis', '2023-05-22 12:50:00', '2023-05-22 13:57:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '67', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(309, 'LOW POWER LEVEL AT CORAL ESTATE AND THUJA VILLE', 'coral estate/ thuja ville', '2023-05-22 15:50:00', '1899-12-31 00:00:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '64897430', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(310, 'FTTH: LINK AT ABUBAKAR SALEH ABISO - LARIX', 'larix', '2023-05-22 07:35:00', '2023-05-24 16:11:00', 'unknown', 'The Air cube was reconfigured, and the Lan cable replaced to restore service.', '3396', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(311, 'FTTH: LINK AT TENI ADEWUMI - PORSCHE', 'porsche', '2023-05-22 07:42:00', '2023-05-23 17:00:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '1998', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(312, 'LINK DOWNTIME AT SIKEADE EGBUWALO (SILAS ILO, GUZAPE)', 'silas ilo', '2023-05-23 16:35:00', '2023-05-23 16:45:00', 'na', 'nothing was done from our end.', '10', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(313, 'LINK AT TEJUMADE ADEBAYO (GRACE COURT) - EARLY SUSPENSION ', 'grace court', '2023-05-23 18:05:00', '2023-05-23 18:12:00', 'payment issue', 'Billing corrected the records', '7', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(314, 'FTTH LINK AT LANRE OYENAME (FESTRUST)', 'festrust', '2023-05-25 06:43:00', '2023-05-25 15:40:00', 'fiber issue', 'The downtime was due to a fiber issue which was resolved to restore normalcy.', '537', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(315, 'LINK AT CHELSEA NDI (FESTRUST)', 'festrust', '2023-05-25 07:07:00', '2023-05-25 19:00:00', 'faulty poe', 'POE was changed to restore service.', '713', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(316, 'DURUMI OLT - FLUCTUATING', 'durumi', '2023-05-26 18:39:00', '2023-05-26 20:02:00', 'power issue', 'Power issue from our end', '83', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(317, 'FTTH - OPALUWAH AMEH (ASSOCIATED ESTATE) ', 'associated estate', '2023-05-26 18:39:00', '2023-05-28 20:50:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service. ', '3011', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(318, 'FTTH: LINK AT SHO-SILVA NOSA FLAT 9', 'sho-silva nosa', '2023-05-27 20:34:00', '2023-05-28 18:39:00', 'fiber issue', 'The broken core in the cassette was spliced to restore service.', '1325', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(319, 'LINK AT GENEVIEVE IHEANACHO (ASSOCIATED)', 'associated estate', '2023-05-27 20:17:00', '2023-05-28 21:15:00', 'fiber issue', 'The broken core in the cassette was spliced to restore service.', '1498', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(320, 'FTTH: LINK AT SAMSON OPALUWAH AMEH (ASSOCIATED)', 'associated estate', '2023-05-29 18:49:00', '2023-05-31 14:44:00', 'fiber issue', 'Fiber issue was resolved to restore service.', '2635', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(321, 'FAULTY DEVICE AT ALEJANDRO RODRIGUEZ RESIDENCE (RIVER PARK ESTATE) ', 'riverpark estate', '2023-05-30 11:02:00', '2023-05-31 12:50:00', 'faulty devices', 'The Poe and Aircube were affected due to an interference of high voltage of electricity in the house, the Poe was replaced and Aircube reconfigured, the link is back up.', '1548', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(322, 'FTTH: LINK AT SENYAMBA TANTO (ASSOICIATED)', 'associated estate', '2023-05-31 12:50:00', '2023-05-31 18:58:00', 'fiber issue', 'The broken core at joint within the estate was spliced to restore service.', '368', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(323, 'LINK AT GAYE SOWE (WRONG INVOICE)', 'gaye sowe', '2023-06-01 11:38:00', '2023-06-01 11:44:00', 'application issues', 'Paid for 12 months but got suspended eraly. Billing has corrected his records.', '6', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(324, 'FTTH: LINK AT NNAMDI ADIEME (SIL)', 'sil estate', '2023-06-02 02:38:00', '2023-06-02 02:41:00', 'application issues', 'getting invoice overdue mail now even when I still have over 2weeks before my next subscription.', '3', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(325, 'FTTH: LINK AT MUHAMMED LABIB ABUBAKAR - CORAL', 'coral estate', '2023-06-03 09:05:00', '2023-06-03 18:00:00', 'fiber issue', 'The downtime was as a result of broken connector in the ATB. The connector was replaced and the link came up.', '535', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(326, 'Hassana Muhammed Sani - Guzape - Wifi Extender installed yesterday not working', 'guzape', '2023-06-03 11:10:00', '2023-06-03 18:00:00', 'configuration issues', 'the issue with the Wi-Fi extender has been resolved. The SSID of the aircube was changed and as a result, the extender needed to be reconfigured as well.', '410', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(327, 'FTTH: LINK AT JOSHUA OGBOLE - LARIX', 'larix', '2023-06-03 22:38:00', '2023-06-03 22:42:00', 'frozen interface', 'Rebooted from our end', '4', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(328, 'FTTH - FRANCES IWUCHUKWU (CORAL ESTATE)', 'coral estate', '2023-06-04 17:20:00', '2023-06-06 20:31:00', 'faulty patch cord', 'The faulty patch cord was changed to restore service', '3071', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(329, 'FTTH - SHERWIN CAYABYAB (DANTATA & SAWOE CAMP)', 'dantata and sowoe', '2023-06-06 13:38:00', '2023-06-06 19:49:00', 'fiber issue', 'It was down as a result of broken core in the FAT which was spliced to restore service.', '371', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(330, 'FTTH - SADIQ NASIR (ASSOCIATED ESTATE) - Downtime', 'associated estate', '2023-06-06 13:38:00', '2023-06-06 20:45:00', 'configuration issues', 'The Aircube was rebooted physically to restore service.', '427', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(331, 'SOME LINKS DOWN AT RIVER PARK', 'riverpark estate', '2023-06-06 18:43:00', '2023-06-07 11:12:00', 'fiber issue', 'The splitter source core failed which resulted in the downtime. The core was swapped to restore service.', '989', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(332, 'LINK AT OWOICHO OCHOCHE (RIVER PARK)', 'riverpark estate', '2023-06-07 10:45:00', '2023-06-07 18:43:00', 'fiber issue', 'The splitter source core failed which resulted in the downtime. The core was swapped to restore service.', '478', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(333, 'FTTH LINK DOWN AT DAMILARE ADEWOLE (LINKTIN ORCHARD)', 'linktin orchard', '2023-06-08 08:17:00', '2023-06-08 11:52:00', 'faulty poe', 'The Poe has been replaced with a new one and the link is back up.', '215', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(334, 'FTTH LINK DOWN AT MICAH MENDIE (PARADISE COURT)', 'paradise court', '2023-06-08 08:17:00', '2023-06-08 11:48:00', 'faulty patch cord', 'It was down due to a very low power level. The link was optimized by cleaning the connector in the ATB and replacing the patch cord.', '211', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(335, 'LINK AT JERRILYN MULBAH - PARADISE', 'paradise court', '2023-06-08 10:20:00', '2023-06-08 11:36:00', 'fiber issue', 'The link was down due to a broken core at the FAT within the estate. The core was respliced, and the link was restored.', '76', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(336, 'DURUMI OLT', 'durumi', '2023-06-11 10:05:00', '2023-06-11 10:55:00', 'power issue from our end', 'Power Issue from our end.', '50', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(337, 'DURUMI OLT', 'durumi', '2023-06-12 08:56:00', '2023-06-12 15:16:00', 'power issue from our end', 'Power Issue from our end.', '380', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(338, 'Durumi OLT', 'durumi', '2023-06-12 08:56:00', '2023-06-12 15:16:00', 'power issue from our end', 'Please be informed that the downtime is as a result of power issues at the location. Unit finished so inverter ran out.', '380', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(339, 'LINK DOWNTIMEAT MR OLAMIDE ADEGBOYEGA - GRAND MEADOW APT 5', 'grand meadow', '2023-06-12 09:53:00', '2023-06-14 18:01:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '3368', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(340, 'LINK AT JOSHUA OGBOLE - LARIX', 'larix', '2023-06-13 08:01:00', '2023-06-22 20:38:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '13717', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(341, 'JOHN SAMAILA (SIL SUPERMARKET)', 'sil supermarket', '2023-06-13 09:12:00', '2023-06-16 15:08:00', 'fiber issue', 'Damaged ATB was fixed.', '4676', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(342, 'FTTH - IBEKWE OBINNA (S. O. WILLIAMS CRESCENT) Network fault', 's. o. williams crescent', '2023-06-14 17:07:00', '2023-06-14 19:07:00', 'power issue from our end', 'The power issue at the POP was rectified to restore service.', '120', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(343, 'IDI NASIRU (JAHI)', 'jahi', '2023-06-15 11:40:00', '2023-06-15 18:25:00', 'fiber issue', 'The link failed to come up after the renovation activity due to a broken core in the ATB. The core was respliced to restore the link.', '405', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(344, 'LINK AT Mfon Udoh Ogbobine - GUZAPE', 'guzape', '2023-06-15 12:19:00', '2023-06-15 17:01:00', 'fiber issue', 'The downtime was due to a fibre cut resulting from construction activities on the FOC path close to the house. Cable slack was pulled and used to introduce a joint at a secluded point away from the established POF.', '282', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(345, 'IGNATIUS ACHOR (QORAL GROOVE)', 'qoral groove', '2023-06-16 17:38:00', '2023-06-19 16:56:00', 'customer request', 'The customer was visited and the aircube was postioned properly to improve coverage within the house. The customer was ok with it and said he will observe.', '4278', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(346, 'DANIEL OGHOJAFOR (BRIDGE A19)', 'bridge estate', '2023-06-17 14:16:00', '2023-06-19 17:53:00', 'fiber issue', 'The downtime was because of core failing at about 103m from the clients end and a cable of about 50m was replaced to restore the link.', '3097', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(347, 'BOA JEROME (RIVER PARK)', 'riverpark estate', '2023-06-18 15:20:00', '2023-06-19 16:37:00', 'fiber issue', 'Restoration of this link and (3) other links along  Vincent Azike street will continue tomorrow morning. A power level between -27 to -29 was observed , efforts were made to optimize power level but no much improvement.', '1517', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(348, 'ICRC YB - D2 (JABI)', 'icrc', '2023-06-19 10:54:00', '2023-06-23 11:24:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '5790', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(349, 'ADEWALE ONIGBINDE (BRIDGE ESTATE)', 'bridge estate', '2023-06-19 16:21:00', '2023-06-25 15:56:00', 'fiber issue', 'The downtime to be as a result of a major fiber cut along the transmission route.', '8615', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(350, 'Guzape OLT', 'guzape', '2023-06-19 17:55:00', '2023-06-20 17:49:00', 'fiber issue', 'The downtime to be as a result of a major fiber cut along the transmission route.', '1434', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(351, 'Durumi OLT', 'durumi', '2023-06-19 17:55:00', '2023-06-20 15:50:00', 'fiber issue', 'The downtime to be as a result of a major fiber cut along the transmission route.', '1315', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(352, 'River Park OLTs', 'riverpark estate', '2023-06-19 20:43:00', '2023-06-20 15:40:00', 'fiber issue', 'The downtime to be as a result of a major fiber cut along the transmission route.', '1137', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(353, 'DR INNOCENT OKPE (RIVER PARK)', 'riverpark estate', '2023-06-19 20:43:00', '2023-06-20 15:40:00', 'fiber issue', 'Affected by the River Park outage', '1137', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(354, 'OLOGBON ADETUNJI (RIVER PARK)', 'riverpark estate', '2023-06-19 22:09:00', '2023-06-20 15:40:00', 'fiber issue', 'Affected by the River Park outage', '1051', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(355, 'Durumi OLT', 'durumi', '2023-06-21 20:00:00', '2023-06-21 22:54:00', 'power issue', 'Frequent power fluctions causing the OLT to go off and on.', '174', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(356, 'LINK AT LARIX ESTATE', 'larix', '2023-06-22 10:56:00', '2023-06-22 20:38:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '582', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(357, 'Okoli Ekong Street in Jabi, Aqua Bella vista estate on Mike Akhigbe Jabi', 'aqua bella vista estate', '2023-06-23 07:59:00', '2023-06-23 11:24:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '205', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(358, 'River Park OLT', 'riverpark estate', '2023-06-23 22:07:00', '2023-06-24 10:06:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '719', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(359, 'Bridge OLT', 'bridge estate', '2023-06-24 00:15:00', '2023-06-24 20:36:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '1221', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(360, 'Guzape OLT', 'guzape', '2023-06-26 03:24:00', '2023-06-26 12:59:00', 'fiber issue', 'The downtime to be as a result of a fiber cut along the transmission route.', '575', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(361, 'LAYER3: Links down at Bello Yussuf Street, Jabi', 'jabi', '2023-06-26 09:24:00', '2023-06-27 17:15:00', 'fiber issue', 'The core was swapped to optimize the power level and the link is up.', '1911', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(362, 'River Park OLTs', 'riverpark estate', '2023-06-27 07:42:00', '2023-06-27 08:44:00', 'unknown', 'Power issue at the POP', '62', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(363, ' PATNASONIC PLAYGROUND AND KAYODE SOILE', 'patnasonic/kayode soile', '2023-06-27 15:29:00', '2023-06-28 20:09:00', 'configuration issues', 'reconfiguration was carried out on the device to restore service.', '1720', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(364, 'LINK AT JOYCE INZE AGBOOLA - PORSCHE', 'porsche', '2023-06-27 16:01:00', '2023-06-28 20:03:00', 'faulty air cube', 'The aircube was then replaced to restore the link.', '1682', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(365, 'LINK AT BABATUNDE ALH SAKA BABATUNDE - COUNTRY COURT', 'country court', '2023-06-27 16:34:00', '2023-06-29 18:13:00', 'cable issues', 'The patch cord was partially plugged into the ONT device and that resulted in the downtime. ', '2979', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(366, 'FTTH OUTAGE AROUND JAHI AXIS', 'jahi', '2023-06-28 07:27:00', '2023-06-29 17:14:00', 'fiber issue', 'Cable replacement of 150m and resplicing was done to restore service. ', '2027', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(367, 'FTTH OUTAGE ON SOME LINKS IN LARIX ESTATE ', 'larix', '2023-06-28 07:46:00', '2023-06-28 20:04:00', 'fiber issue', 'It was down as a result of a broken core on a PON leg along the cable path (closeure by porsche 1)', '738', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(368, 'LINK DOWNTIME AT DEI GRATIA APARTMENT 402', 'dei gratia', '2023-06-28 09:27:00', '2023-06-30 13:52:00', 'faulty patch cord', 'Kindly note that this link has been restored. The link came up after the patch cord was replaced.', '3145', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(369, 'LINK AT CHIBUZOR OBIDEGWU - PARADISE COURT', 'paradise court', '2023-06-28 11:06:00', '2023-06-29 17:19:00', 'fiber issue', ' downtime was a result of a broken core at the FAT within the estate. The core was respliced to restore the link and the patch cord was also replaced to further optimize the observed power level. ', '1813', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(370, 'LINK AT SIKEADE EGBUWALO - ICRC GUZAPE', 'icrc', '2023-06-28 12:13:00', '2023-06-28 18:47:00', 'configuration issues', 'Link was rebooted multiple times and the firmware was upgraded.', '394', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(371, 'COMPENSATION REQUEST FOR ADAEZE DURU (RIVER PARK ESTATE)', 'riverpark estate', '2023-06-29 12:35:00', '2023-06-29 14:34:00', 'compensation', 'in line with the compensation approval for churn customers, We have received a one-month payment from the named customer. She was eligible for one month free subscription.', '119', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(372, 'FTTH: LINK AT CHARLES OFOEFULE (PARADISE COURT)', 'paradise court', '2023-06-29 16:00:00', '2023-06-29 17:32:00', 'fiber issue', 'The downtime resulted from a poor power level and it was optimized by managing the core properly at the FAT.', '92', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(373, 'FTTH: OUTAGE ON MAUI (AMERICAN COMPOUND)', 'american compound', '2023-06-29 17:39:00', '2023-06-29 18:49:00', 'fiber issue', 'Kindly note that this link has been restored. The splitter leg was respliced at the FAT and the power level improved to bring the customers\' links up.', '70', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(374, 'LINK AT IYEFEMI ADE-COLE (COBUILT ZEPHR) - SYSTEM GLITCH', 'cobuilt zephr', '2023-06-29 19:30:00', '2023-06-29 19:36:00', 'application issues', 'Glitch from24Online suspending customers before the expiry date. The customer was reactivated manually.', '6', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(375, 'LINK AT YEMA ONWUZURUMBA - RIVERPARK (Message for Expiry)', 'riverpark estate', '2023-06-29 20:01:00', '2023-06-29 20:30:00', 'application issues', 'Glitch from24Online suspending customers before the expiry date. The customer was reactivated manually.', '29', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(376, 'LINK AT ICRC Flat 21 Ali baba', 'icrc', '2023-06-30 10:04:00', '2023-07-01 12:15:00', 'application issues', 'Extensive checks have revealed the downtime to be as a result of a fiber cut along the transmission route. ', '1571', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(377, 'FTTH: LINK AT FREDERICK UMERI (PARADISE HILLS)', 'paradise hills', '2023-06-30 23:35:00', '2023-06-30 23:43:00', 'application issues', 'Glitch from24Online suspending customers before the expiry date. The customer was reactivated manually.', '8', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(378, 'UNMS Downtime', 'unms', '2023-06-11 10:05:00', '2023-06-11 22:43:00', 'application issues', 'Server issues. Downtime impeeded support work.', '758', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(379, 'LINK AT ICRC Flat 21 Ali baba', 'icrc', '2023-06-30 10:07:00', '2023-07-01 12:18:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '1571', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(380, 'FTTH LINK AT BABA ARAMIYAH - Coral Residence.', 'coral estate', '2023-07-01 10:12:00', '2023-07-15 18:39:00', 'fiber issue', 'the issue was caused by a faulty device, low fiber power and a fiber cut. The device was changed to resolve the issue. The service was unstable and three visits were made to resolve the issues.', '20667', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(381, 'LINK AT SENYAMBA TANTO', 'senyamba tanto', '2023-07-03 15:56:00', '2023-07-04 18:08:00', 'fiber issue', 'The downtime was due to a fiber cut which was resolved to restore your service.', '1572', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(382, 'FTTH - SAMSON AMEH (ASSOCIATED ESTATE) ', 'associated estate', '2023-07-03 18:12:00', '2023-07-04 08:37:00', 'fiber issue', 'The downtime was due to a fiber cut which was resolved to restore your service.', '865', '2023-11-01 05:27:03', '2023-11-01 05:27:03');
INSERT INTO `issues` (`id`, `subject`, `estate`, `startDate`, `endDate`, `rootCause`, `description`, `timeSpent`, `created_at`, `updated_at`) VALUES
(383, 'FTTH - MODUPE ALBERT (CORAL)', 'coral estate', '2023-07-04 06:50:00', '2023-07-04 08:26:00', 'firmware issue', 'The device firmware was upgraded', '96', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(384, 'COMPENSATION REQUEST FOR AMAKA OGBUOGEBE (SIL ESTATE)', 'sil estate', '2023-07-04 11:30:00', '2023-07-04 14:40:00', 'compensation request', 'We have received a one-month payment from the named customer. Note that she is eligible for a one-month free subscription. She has been a churned customer for 126 days', '190', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(385, 'LINK DOWNTIME AT MODUPE ALBERT (CORAL)', 'coral estate', '2023-07-04 12:44:00', '2023-07-10 17:15:00', 'fiber issue', 'The power level was optimized to restore service the first time. The client has complained of this issue again. During the second visit cable management was carried out within the closure and customer\'s premises.', '8911', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(386, 'FTTH: LINK AT APAGU GADZAMA (EXCEEDING GRACE)', 'exceeding grace', '2023-07-05 09:32:00', '2023-07-05 09:45:00', 'payment issue', 'As discussed, kindly note that investigations have revealed this to be a result of your subscription expiring.', '13', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(387, 'GUZAPE OLT DOWNTIME ', 'guzape', '2023-07-05 18:12:00', '2023-07-06 11:05:00', 'fiber issue', 'Fiber cut in the canal', '1013', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(388, 'LINK AT SIKEADE EGBUWALO - SILAS ILO - CLOSE', 'silas ilo', '2023-07-05 20:18:00', '2023-07-07 13:23:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '2465', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(389, 'LINK DOWNTIME AT YUSUF IBRAHIM ABUBAKAR- REDWOOD HOUSE 5', 'redwood', '2023-07-06 09:52:00', '2023-07-06 17:51:00', 'configuration issue', 'Patch cord was plugged in properly and configuration was carried out on the aircube to restore service ', '479', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(390, 'LINK AT SHERRI LEWIS - BIZARRE', 'bizarre apartments', '2023-07-07 12:45:00', '2023-07-08 11:29:00', 'faulty ont', 'Kindly note the faulty old ONT was replaced with the new one and service restored to this link.', '1364', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(391, 'FTTH LINK AT SOLA LADIPO (MERCY SAMUELSON)', 'mercy samuelson', '2023-07-07 19:52:00', '2023-07-08 19:29:00', 'fiber issue', 'The patch cord within the ATB was rearranged to restore service', '1417', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(392, 'SOME LINKS AT PARADISE COURT', 'paradise court', '2023-07-08 17:52:00', '2023-07-10 17:00:00', 'fiber issue', 'Victor Apeh, Bello Ibrahim Kankia, Ibrahim Dikko were down. The links went down at the same time. Service has been restored to these links through multiple visits on different days.', '2828', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(393, 'LINK DOWNTIME AT MODUPE ALBERT (CORAL)', 'coral estate', '2023-07-09 12:12:00', '2023-07-10 17:15:00', 'fiber issue', 'Please note the power level has been optimized and the link is stable after cable management was carried out within the closure and customer\'s premises.', '1743', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(394, 'FTTH - OGUNFAYO BABATUNDE (OASIS COURT) ', 'oasis court', '2023-07-09 14:00:00', '2023-07-10 10:59:00', 'disconnected device', 'the power cord wasn\'t plugged in properly to the Poe.', '1259', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(395, 'GUZAPE OLT DOWNTIME ', 'guzape', '2023-07-10 12:00:00', '2023-07-10 17:39:00', 'fiber issue', 'Fiber cut in the canal', '339', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(396, 'FTTH LINK DOWN AT ADEBANKE AGBOOLA (CORAL B2)', 'coral estate', '2023-07-13 15:55:00', '2023-07-14 12:44:00', 'fiber issue', 'The broken core in the ATB due to renovations, was spliced to restore service.', '1249', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(397, 'LINK DOWNTIME AT HUZAIFA ISA- EFAB VILLE', 'efab ville', '2023-07-14 06:12:00', '2023-07-16 10:41:00', 'disconnected device', 'The customer was contacted that we no longer need to visit as the link is now back up. We also observed same. We are still monitoring for stability.', '3149', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(398, 'LINK AT SIKEADE EGBUWALO - SILAS ILO - CLOSE', 'silas ilo', '2023-07-14 09:03:00', '2023-07-14 13:23:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '260', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(399, 'COMPENSATION REQUEST FOR UBELEJIT IKURU (PORSCHE 4 ESTATE)', 'porsche', '2023-07-14 12:21:00', '2023-07-14 12:29:00', 'compensation request', 'We have received a one-month payment from the named customer. Note that she is eligible for a one-month free subscription. She has been a churned customer for 144 days.', '8', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(400, 'GUZAPE OLT DOWNTIME ', 'guzape', '2023-07-14 18:16:00', '2023-07-15 09:23:00', 'fiber issue', 'The issue with this POP was the inverter which was not charging as a result of a faulty power supply. This was rectified by our vendor. ', '907', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(401, 'LINK AT SIKEADE EGBUWALO - SILAS ILO - CLOSE', 'silas ilo', '2023-07-14 18:25:00', '2023-07-15 09:36:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '911', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(402, 'LINK DOWN AT JAY SORENSEN (ROUTE 66 D7)', 'route 66', '2023-07-14 22:25:00', '2023-07-15 17:20:00', 'disconnected device', 'Following a call with the client, the device were arrranged properly to reconnect the service.', '1135', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(403, 'FTTH LINK DOWN AT RIVERPARK OFFICE', 'riverpark estate', '2023-07-15 16:46:00', '2023-07-17 15:35:00', 'fiber issue', 'The downtime was because of construction work at the premises that led to cut of the FOC. A Joint was introduced to restore.', '2809', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(404, 'FTTH: LINK AT APAGU GADZAMA (EXCEEDING GRACE)', 'exceeding grace', '2023-07-15 21:18:00', '2023-07-15 22:55:00', 'device firmware', 'The device firmware was upgraded to resolve the unstable service.', '97', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(405, 'OFFIONG OROK - JAHI', 'jahi', '2023-07-16 10:41:00', '2023-07-17 06:12:00', 'disconnected device', 'Be informed that this location was visited yesterday and we discovered that the Aircube was not connected properly to power and hence the downtime. This was rectified to restore service.', '1171', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(406, 'FTTH LINK DOWN AT SVEN MAEDLER - DANTATA & SAWOE', 'dantata and sowoe', '2023-07-16 14:34:00', '2023-07-18 13:12:00', 'faulty aircube', 'Please note the aircube has been replaced and service restored to this link.', '2798', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(407, 'FTTH LINK DOWN AT IFUNAYA MJBAKOR (PORSCHE)', 'porsche', '2023-07-17 08:29:00', '2023-07-19 15:10:00', 'burn damage', 'Rain burnt some parts of the cables. The link is up, the devices have been confirmed to have no issues just the power cord, which is still functional. It just had burnt marks, so she asked for it to be replaced just in case', '3281', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(408, 'SEGUN BABALOGBON\'S RESIDENCE (LAKEVIEW APARTMENT JABI)', 'lakeview apartments', '2023-07-17 09:56:00', '2023-07-17 12:08:00', 'disconnected device', 'After a trouble shooting session, his device was properly arranged and service was restored.', '132', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(409, 'FTTH LINK AT SUNDAY IDOKO (BRIDGE) - EARLY SUSPENSION', 'bridge estate', '2023-07-18 07:31:00', '2023-07-18 09:55:00', 'billing issue', 'The client suspended before his due date after making payment for 2 months on the old UNMS portal.', '144', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(410, 'FTTH LINK DOWN AT TAJUDEEN IBIYEYE (CORAL)', 'coral estate', '2023-07-18 07:41:00', '2023-07-18 13:52:00', 'fiber issue', 'The downtime was caused by a broken core. The core has been re-spliced.', '371', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(411, 'GUZAPE OLT DOWNTIME ', 'guzape', '2023-07-18 14:26:00', '2023-07-18 17:16:00', 'fiber issue', 'Vandalization just after the canal facing the POP. The duct was been unearthed.', '170', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(412, 'DUE DATE CORRECTION FOR HALIMA BELLO - RIVERPARK', 'riverpark estate', '2023-07-19 08:08:00', '2023-07-19 12:26:00', 'application issues', 'customer was suspended before her due date. the client made 3 months payment on the 20th of May.', '258', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(413, 'FTTH: LINK AT ADEJO EMMANUEL (THUJAVILLE)', 'thuja ville', '2023-07-19 11:37:00', '2023-07-20 14:08:00', 'fiber issue', 'It was down due to a broken core in closure which was spliced to restore service', '1591', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(414, 'FTTH: LINK AT YOTAN DELE-OLOWU (PATNASONIC)', 'patnasonic', '2023-07-19 15:03:00', '2023-07-20 17:43:00', 'faulty cable', 'A faulty cable was discovered as the root cause of the downtime. The cable was replaced to restore service.', '1600', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(415, 'YAQUB ABDALLAH ATEIZA - Glendale Pearl Estate', 'glendale pearl estate', '2023-07-19 15:43:00', '2023-07-20 13:25:00', 'fiber issue', 'The broken core in the ATB was spliced to restore service.', '1302', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(416, 'LINK AT TIMMY DAVIES (GUZAPE)', 'guzape', '2023-07-20 09:54:00', '2023-07-21 10:11:00', 'fiber issue', 'The broken core in the ATB was spliced to restore service.', '1457', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(417, 'FTTH: LINK AT YOTAN DELE-OLOWU (PATNASONIC)', 'patnasonic', '2023-07-20 10:45:00', '2023-07-20 12:53:00', 'fiber issue', 'The downtime was a result of a broken core in the ATB and a damaged patch cord.', '128', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(418, 'FTTH: LINK AT SADIQ NASIR (ASSOCIATED ESTATE)', 'associated estate', '2023-07-20 10:45:00', '2023-07-21 15:43:00', 'patch cord issue', 'The downtime was due to a twist on the patch cord resulting in a knot. The point of the knot was loosened and carefully massaged. Afterward, the link was observed to be up.', '1738', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(419, 'REQUEST FOR COMPENSATION DUE TO 24ONLINE GLITCH - LOST DAYS AFTER EARLY PAYMENT', '24online', '2023-07-20 13:45:00', '2023-07-20 15:26:00', 'application issues', 'Multiple customers lost some days of service because they paid earlier than their due date on the new payment portal. The names were compiled and their records were updated by Billing.', '101', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(420, 'FTTH - AGENEBODE CRESCENT APARTMENT 5', 'agenebode crescent', '2023-07-21 15:33:00', '2023-07-21 16:50:00', 'fiber issue', 'Kindly note that this link has been restored by optimizing the optical power', '77', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(421, 'FTTH OUTAGE ON SOME LINKS IN JABI (ALI BABA CRESCENT)', 'ali baba crescent', '2023-07-21 16:29:00', '2023-07-22 10:17:00', 'fiber issue', 'The downtime was caused by a broken core. The core has been re-spliced.', '1068', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(422, 'LINK AT SIKEADE EGBUWALO - SILAS ILO - CLOSE', 'silas ilo', '2023-07-22 16:02:00', '2023-07-22 16:22:00', 'firmware issue', 'The device firmware was upgraded to resolve the unstable link.', '20', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(423, 'FTTH: LINK AT ICRC ALI BABA CRESCENT RESIDENCE B25', 'icrc', '2023-07-24 12:48:00', '2023-07-24 14:39:00', 'frozen interface', 'The downtime was due to a frozen device which was rebooted to restore service', '111', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(424, 'Guzape OLT', 'guzape', '2023-07-24 12:50:00', '2023-07-24 12:57:00', 'power fluctuations', 'The power at the location went off and on', '7', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(425, 'General FTTH Outage', 'general', '2023-07-25 07:55:00', '2023-07-25 12:10:00', 'transmission issue', 'Zain switch went down. Issue affecting Airtel POP', '255', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(426, 'FTTH: LINK AT LAWAL IDRIS (GUZAPE)', 'guzape', '2023-07-25 19:26:00', '2023-07-28 15:23:00', 'faulty poe', 'The faulty POE was replaced to restore service.', '4077', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(427, 'FTTH: LINK AT GENEVIEVE IHEANACHO (ASSOCIATED ESTATE)', 'associated estate', '2023-07-25 19:35:00', '2023-07-27 13:30:00', 'fiber issue', 'It was down as a result of core failure in the FAT which was spliced to restore service.', '2515', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(428, 'FTTH: LINK AT BALA UMAR IBRAHIM (COUNTRY COURT)', 'country court', '2023-07-25 19:40:00', '2023-07-25 19:45:00', 'power issue', 'Client told us that the power at your residence was restored hence the service uptime', '5', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(429, 'LINK AT ALVAN OBI - LARIX ESTATE', 'larix', '2023-07-26 17:54:00', '2023-07-29 18:48:00', 'fiber issue', 'The downtime was because of fire breakout inside the gutter 30m away from FAT. 40m of FOC was replaced to restore the link Up and running fine now.', '4374', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(430, 'FTTH LINK AT GAYE SOWE (GUZAPE) - EARLY SUSPENSION', 'guzape', '2023-07-27 08:22:00', '2023-07-27 16:00:00', 'application issues', 'Please note that your early suspension was caused by a system glitch.', '458', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(431, 'FTTH LINK AT MARIAM YAHAYA (SIL) - BILLING ISSUE', 'sil estate', '2023-07-27 11:26:00', '2023-07-27 15:02:00', 'payment issue', 'Please note that this customer is being suspended before her due date after making payment for 3 months on the old UNMS portal. She now has 1 month left out of 3 months. Her records were corrected by billing.', '216', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(432, 'Guzape OLT', 'guzape', '2023-07-27 15:39:00', '2023-07-27 19:14:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '215', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(433, 'Durumi OLT ', 'durumi', '2023-07-27 18:04:00', '2023-07-27 20:28:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '144', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(434, 'FTTH: LINK AT ICRC ASOKORO APARTMENT 5', 'icrc', '2023-07-28 08:32:00', '2023-07-28 16:35:00', 'faulty device', 'The aircube was replaced to restore service after the unstable one failed to come up even after resetting it.', '483', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(435, 'FTTH LINK AT BOYE YISA (ASSOCIATED)', 'associated estate', '2023-07-28 10:39:00', '2023-07-28 13:12:00', 'payment issue', 'Please be informed that this customer was suspended early from his internet service today, 28th July after making payment on 18th July. It was rectified by billing.', '153', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(436, 'FTTH LINK AT SAM OMENKA (SIL ESTATE) - BILLING ISSUE', 'sil estate', '2023-07-28 11:12:00', '2023-07-28 13:12:00', 'payment issue', 'The customer made a subscription payment on the 9th of July but got an alert to renew their subscription on the 2nd of August. It was rectified by billing.', '120', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(437, 'FTTH LINK DOWN AT F. R ONOJA (AIBEN ESTATE)', 'aiben estate', '2023-07-28 14:26:00', '2023-07-29 13:20:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '1374', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(438, 'FTTH LINK AT NWAFORNSO EBUKA (FESTRUST)', 'festrust', '2023-07-28 17:41:00', '2023-07-30 18:05:00', 'inactive link', 'Customer did not have a 24Online account due to being inactive over the past 4 months.', '2904', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(439, 'Life Camp OLT', 'life camp', '2023-07-30 20:40:00', '2023-07-31 13:21:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '1001', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(440, 'LAYER3: LINKS AT ICRC Bello Yusuf', 'icrc', '2023-07-31 13:02:00', '2023-07-31 15:32:00', 'fiber issue', 'It was down as a result of a fiber issue.', '150', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(441, 'LINK AT SANDRA NWAGBOLOGU (HIS GRACE)', 'his grace', '2023-07-31 15:34:00', '2023-07-31 17:00:00', 'fiber issue', 'The downtime was as a result of a fiber issue which was resolved to restore service.', '86', '2023-11-01 05:27:03', '2023-11-01 05:27:03'),
(442, 'FTTH LINK AT AIR CMDR OLA ABIDOYE (FESTRUT)', 'festrust', '2023-07-31 17:13:00', '2023-08-01 15:00:00', 'faulty device and fiber issue', 'We discovered that the ONT wasn\'t booting up (Faulty) and also the fiber was not through to the splitter. The device was changed and the fiber issue was resolved.', '1307', '2023-11-01 05:27:03', '2023-11-01 05:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_19_093256_create_issues_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
