-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2019 at 09:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depotte1_depotter`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `active` tinyint(11) NOT NULL,
  `regdate` date NOT NULL,
  `user_status` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `email`, `username`, `password`, `phone`, `picture`, `code`, `active`, `regdate`, `user_status`, `rank`) VALUES
(8, 'James Jimmy', 'nubiolujimmy@gmail.com', 'james', 'b7af67e06b798240694ed51a0357050f', '07063038955', 'images/headshot_15719_258_0.png', '6d0edc50dc94f5c99e608b759e42fc4f', 1, '2018-05-23', 'Active', 'staff'),
(9, 'Itafor Francis Freedom', 'itaforfrancis@gmail.com', 'admin', 'd0ab7fe6c314f4fe5b6c18a0157c96b4', '07065907948', 'images/de potter logo (2).jpg', '3e0be4cd2a47ddfcc2734618a610a7dd', 1, '2018-05-23', 'Active', 'admin'),
(10, 'Mr. Falodun Ade', 'Falodunadewale@gmail.com', 'wale', '12a9c8f6d7991e6e5039cb209086b4e0', '08132857053', 'n', 'ac63f85a3f334d71a84971edbc7c2305', 1, '2018-05-24', 'Active', 'staff'),
(11, 'Mr. Adeware O.G', 'talk2cheyi@gmail.com', 'depotter', '22ac6807f1c264f716e61bd46a284564', '08038056384', 'n', '77ac013e3657355f926f9fef6061faa6', 0, '2018-05-25', 'Active', 'staff'),
(14, 'nwaka joy', 'joynwaka116@gmail.com', 'nwaka', '914df6e4051b81182490dda8baf2afb2', '07065907910', 'images/Screenshot (6).png', 'ea3ae7c349128080c5e8efe7c9607d30', 1, '2018-06-12', 'Inactive', 'staff'),
(23, 'Nubi james', 'Nubiangalatocecema@yahoo.com', 'Nubian ', 'b7af67e06b798240694ed51a0357050f', '08055355922', 'n', '0d19cdb875006109bfb43d04b5a7ba07', 1, '2018-07-12', 'Active', 'admin'),
(24, 'Oludayo', 'Akinwalemoyo1@gmail.com', 'Admin2', '5d41402abc4b2a76b9719d911017c592', '08156826837', 'n', '778ab6bde2737d88a961a79f792deff6', 1, '2018-07-25', 'Active', 'admin'),
(26, 'Maths tutor', 'mathematicsmadeasy@gmail.com', 'maths', 'd939e7a6b17e374c1e3db59b4df2ae97', '07065907317', 'n', '57f90118b0bf06690615bb20e555175b', 1, '2018-07-28', 'Inactive', 'subadmin'),
(27, 'Nubi James oludayo', 'nubiolujimmy@yahoo.com', 'asadmin', 'b7af67e06b798240694ed51a0357050f', '08163038955', 'n', '1b864c1ebbfe4cf5d17ccbd620550119', 1, '2018-08-10', 'Active', 'subadmin');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `admname` varchar(32) NOT NULL,
  `admpassword` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`admname`, `admpassword`) VALUES
('frank', '26253c50741faa9c2e2b836773c69fe6'),
('root', '63a9f0ea7bb98050796b649e85481845');

-- --------------------------------------------------------

--
-- Table structure for table `anouncement`
--

CREATE TABLE `anouncement` (
  `id` int(11) NOT NULL,
  `mes` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `matricno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `appId` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `lga` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `maritalStatus` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `sponsoraddress` varchar(255) NOT NULL,
  `sponsorphone` varchar(255) NOT NULL,
  `sponsoremail` varchar(255) NOT NULL,
  `sponsoroccupation` varchar(255) NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `disability` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `nokname` varchar(255) NOT NULL,
  `nokaddress` varchar(255) NOT NULL,
  `nokphone` varchar(255) NOT NULL,
  `eduname` varchar(255) NOT NULL,
  `edudate` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `firstchoice` varchar(255) NOT NULL,
  `secondchoice` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `picture` varchar(255) NOT NULL,
  `bankslipno` varchar(255) NOT NULL,
  `totalatm` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `transdate` varchar(255) NOT NULL,
  `paymentitem` varchar(255) NOT NULL,
  `transid` varchar(255) NOT NULL,
  `processedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`appId`, `surname`, `middlename`, `lastname`, `email`, `phone`, `address`, `state`, `lga`, `gender`, `dob`, `religion`, `maritalStatus`, `fullname`, `relationship`, `sponsoraddress`, `sponsorphone`, `sponsoremail`, `sponsoroccupation`, `hobbies`, `disability`, `language`, `nokname`, `nokaddress`, `nokphone`, `eduname`, `edudate`, `certificate`, `firstchoice`, `secondchoice`, `code`, `date`, `picture`, `bankslipno`, `totalatm`, `bankname`, `transdate`, `paymentitem`, `transid`, `processedate`) VALUES
(1, 'ADELAKUN', 'KEHINDE', 'AYOMIDIPUPO', '3OKEAJOIMASAYI@email.com', '09061158176', 'SCHOOL HOSTEL', '28', '539', 'Female', '1999/05/17 15:00', 'CHIRSTAIN', 'single', 'ADELAKUN YEMISI', 'MOTHER', '3OKEAJOIMASAYI', '09061158176', '3OKEAJOIMASAYI@EMAIL.COM', 'TRADER', 'SPORT', 'NILL', 'YORUBA', 'ADELAKUN SEYI', '3 OKE AJO IMASAYI', '09061158176', ' TAL HAT PRIMARY AND SECONDAY SCHOOL', '16 05 2017', 'SS 3 CERTIFICATE', 'Health Assistant (Medical)', 'Health Assistant (Medical)', 'depotter2067408ADELAKUN', '2018-09-11', 'images/IMG_20180522_132555.jpg', 'n', 'n', 'n', 'n', 'n', 'n', '2018-09-11'),
(2, 'Otubanjo', 'Adenike', 'Esther', 'Otubanjoadenike@gmail.com', '07063564872', 'No 2,bayo close off Onirugba,ijebu-ode', '28', '546', 'Female', '1994/07/16 04:21', 'Christian', 'single', 'Otubanjo segun', 'Father', 'No 2,bayo close off Onirugba,ijebu ode', '08054676774', 'ogunnaikedaniel@gmail.com', 'Furniture', 'Football', 'No', 'English', 'Otubanjo segun', 'No 2,bayo close off Onirugba, ijebu ode', '08054676774', 'Molajoye community high school\r\nEpe, Lagos state', '20092016', ' School certificate', 'Health Assistant (Medical)', 'Science Laboratory Technology', 'depotter5279262Otubanjo', '2018-10-29', 'images/11.jpg', 'n', 'n', 'n', 'n', 'n', 'n', '2018-10-29'),
(3, 'AFOLABI', 'IFEOLUWA', 'MARY', 'Iffyluv4@gmail.com', '07066743823', 'C4/12, OLALERE AVENUE,  NEW AIRPORT ROAD, ALAKIA, IBADAN', '30', '587', 'Female', '1996/05/03 01:06', 'CHRISTIANITY', 'single', 'AFOLABI DORCAS OLUFUNKE', 'MOTHER', 'C4/12, OLALERE AVENUE,  NEW AIRPORT ROAD, ALAKIA, IBADAN', '08056612225', 'ibuks2013@gmail.com', 'RETIRED', 'SINGING, WRITING ', 'NON', 'English , Yoruba', 'AFOLABI IBUKUN STEPHEN', '3, OLASHORE STREET, OFF ISHAGA, OJODU BERGER OGUN STATE.', '08062144435', ' ACHIEVERS COMPREHENSIVE HIGH SCHOOL ALAKIA IBADAN', 'JUNE 2013', ' NATIONAL EXAMINATIONS COUNCIL', 'Health Assistant (Medical)', 'Community health (senior)', 'depotter8174329AFOLABI', '2018-12-30', 'images/PASSPORT PHOTOGRAPH.jpg', 'n', 'n', 'n', 'n', 'n', 'n', '2018-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `BTITLE` varchar(255) NOT NULL,
  `KEYWORDS` varchar(255) NOT NULL,
  `FILE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `BTITLE`, `KEYWORDS`, `FILE`) VALUES
(1, 'Dental Implants', 'Dental Implants', 'books/Dental_Implants.mobi'),
(2, 'Consumers Guide', 'Consumers Guide', 'books/Consumers_Guide.mobi'),
(3, 'Basic Epidemiology', 'Basic Epidemiology', 'books/basic epidemiology.pdf'),
(4, 'Community Health for Nursing Education', 'Community Health', 'books/community health for nursing education.pdf'),
(5, 'Community Health', 'Community Healthh', 'books/community health.pdf'),
(6, 'Global Health', 'Global Health', 'books/Global Health.pdf'),
(7, 'Hematology', 'Hematology', 'books/hematology.pdf'),
(8, 'Intro to public health', 'Intro to public health', 'books/into to public health.pdf'),
(9, 'Introduction to public health', 'Introduction to public health', 'books/Introduction to Public Health-Mary Jane.pdf'),
(10, 'principles of epidemiology', 'principles of epidemiology', 'books/principles of epidemiology.pdf'),
(11, 'public health', 'public health', 'books/public health.pdf'),
(12, 'public health foundation', 'public health foundation', 'books/public health foundation.pdf'),
(13, 'INTRODUCTION TO ENVIRONMENTAL HEALTH', 'EVT 101', 'books/Introduction to Environmental health.pdf'),
(14, 'FOUNDATION OF PROFESSIONAL NURSING PRATICE', 'FOUNDATION OF PROFESSIONAL NURSING PRATICE', 'books/FOUNDATION OF PROFESSIONAL NURSING PRATICE.pdf'),
(15, 'Fundamentals Course Description and Curriculum', 'Fundamentals Course Description and Curriculum', 'books/Fundamentals Course Description and Curriculum.pdf'),
(16, 'foundations of nursing', 'nursing', 'books/foundations of nursing.pdf'),
(17, 'Medical Biochemistry', 'Medical Biochemistry', 'books/medical biochemistry.pdf'),
(18, 'HUMAN PHYSIOLOGY', 'HUMAN PHYSIOLOGY', 'books/HUMAN PHYSIOLOGY.pdf'),
(19, 'HUMAN ANATOMY', 'HUMAN ANATOMY', 'books/HUMAN ANATOMY.pdf'),
(20, 'MEDICAL MICROBIOLOGY AND PARASITOLOGY', 'MEDICAL MICROBIOLOGY AND PARASITOLOGY', 'books/MEDICAL MICROBIOLOGY AND PARASITOLOGY.pdf'),
(21, 'PUBLIC HEALTH LAWS AND ETHICS', 'EHT210', 'books/public health law and ethics.pdf'),
(22, 'HYGIENE EDUCATION AND PROMOTION IN  ENVIRONMENTAL HEALTH', 'HYGIENE EDUCATION AND PROMOTION IN\r\n ENVIRONMENTAL HEALTH', 'books/HYGIENE EDUCATION AND PROMOTION IN ENVIRONMENTAL HEALTH.pdf'),
(23, 'GENERAL MICROBIOLOGY ', 'GENERAL MICROBIOLOGY ', 'books/GENERAL MICROBIOLOGY.pdf'),
(24, 'Developmental Psychology', 'Developmental Psychology', 'books/DEVELOPMENTAL PSYCHOLOGY.pdf'),
(25, 'ANATOMY', 'ANATOMY', 'books/ANATOMY.pdf'),
(26, 'INTRODUCTION TO BIOSTATISTICS', 'INTRODUCTION TO BIOSTATISTICS', 'books/INTRODUCTION TO BIOSTATISTICS.pdf'),
(27, 'GENERAL AND CELLULAR PATHOLOGY FOR NURSES', 'GENERAL AND CELLULAR PATHOLOGY FOR\r\nNURSES', 'books/GENERAL AND CELLULAR PATHOLOGY FOR.pdf'),
(28, 'Nutrition in Health and Diseases', 'Nutrition in Health and Diseases', 'books/Nutrition in Health and Diseases.pdf'),
(29, 'MENTAL HEALTH AND PSYCHIATRIC NURSING I', 'MENTAL HEALTH AND PSYCHIATRIC NURSING I', 'books/MENTAL HEALTH AND PSYCHIATRIC NURSING I.pdf'),
(30, 'MATERNAL AND CHILD HEALTH NURSING I', 'MATERNAL AND CHILD HEALTH NURSING I', 'books/MATERNAL AND CHILD HEALTH NURSING I.pdf'),
(31, 'CLINICAL PHARMACOLOGY AND CHEMOTHERAPY', 'CLINICAL PHARMACOLOGY AND CHEMOTHERAPY', 'books/CLINICAL PHARMACOLOGY AND CHEMOTHERAPY.pdf'),
(32, 'Nature of Nursing', 'Nature of Nursing', 'books/Nature of Nursing.pdf'),
(33, 'INTRODUCTION TO DEMOGRAPHY', 'INTRODUCTION TO DEMOGRAPHY', 'books/INTRODUCTION TO DEMOGRAPHY.pdf'),
(34, 'INTRODUCTION TO CLINICAL LABORATORY TECHNIQUES', 'INTRODUCTION TO CLINICAL LABORATORY\r\nTECHNIQUES', 'books/INTRODUCTION TO CLINICAL LABORATORY.pdf'),
(35, 'BIOMETREOLOGY', 'BIOMETREOLOGY', 'books/BIOMETREOLOGY.pdf'),
(36, 'NURSING ETHICS AND JURISPRUDENCE', 'NURSING ETHICS AND JURISPRUDENCE\r\n', 'books/NURSING ETHICS AND JURISPRUDENCE.pdf'),
(37, 'Nutrition in Health &amp; Disease ', 'Nutrition in Health &amp; Disease ', 'books/Nutrition in Health and Diseases.pdf'),
(38, 'Health Economics', 'Health Economics', 'books/Health Economics.pdf'),
(39, 'ACCIDENT AND EMERGENCY ', 'ACCIDENT AND EMERGENCY ', 'books/ACCIDENT AND EMERGENCY.pdf'),
(40, 'OCCUPATIONAL HEALTH AND SAFETY', 'OCCUPATIONAL HEALTH AND\r\nSAFETY', 'books/OCCUPATIONAL HEALTH AND.pdf'),
(41, 'Research for Community Health', 'Research for Community Health', 'books/Research for Community Health.pdf'),
(42, 'ENVIRONMENTAL TOXICOLOGY', 'ENVIRONMENTAL TOXICOLOGY', 'books/ENVIRONMENTAL TOXICOLOGY.pdf'),
(43, 'ENVIRONMENTAL HEALTH ADMINISTRATION', 'ENVIRONMENTAL HEALTH\r\nADMINISTRATION', 'books/ENVIRONMENTAL HEALTH ADMINSTRATION.pdf'),
(44, 'Reproductive and Adolescent Health', 'Reproductive and Adolescent Health', 'books/Reproductive and Adolescent Health.pdf'),
(45, 'RESEARCH METHOD IN NURSING', 'RESEARCH METHOD IN\r\nNURSING', 'books/RESEARCH METHOD IN NURSING.pdf'),
(46, 'MEDICAL SOCIOLOGY', 'MEDICAL SOCIOLOGY', 'books/MEDICAL SOCIOLOGY.pdf'),
(47, 'PRIMARY HEALTH CARE', 'PRIMARY HEALTH CARE', 'books/PRIMARY HEALTH CARE.pdf'),
(48, 'SEWAGE AND WASTE WATER TREATEMENT', 'SEWAGE AND WASTE WATER TREATEMENT', 'books/SEWAGE AND WASTE WATER TREATEMENT.pdf'),
(49, 'INTRODUCTION TO HEALTH RECORD MANAGEMENT', 'HIMS', 'books/INTRODUCTION TO HEALTH RECORD MANAGEMENT.pdf'),
(50, 'Concise Behavioural Sciences for Nursing', 'Concise Behavioural Sciences for Nursing', 'books/Concise Behavioural Sciences for Nursing.pdf'),
(51, 'SCHOOL HEALTH PROGRAMME', 'SCHOOL HEALTH PROGRAMME', 'books/SCHOOL HEALTH PROGRAMME.pdf'),
(52, 'COMMUNITY MOBILISATION AND PARTICIPATION', 'COMMUNITY MOBILISATION AND PARTICIPATION', 'books/COMMUNITY MOBILISATION AND PARTICIPATION.pdf'),
(53, 'INTRODUCTION TO ECOLOGY AND ENVIRONMENTAL  SCIENCE', 'INTRODUCTION TO ECOLOGY AND ENVIRONMENTAL\r\n SCIENCE', 'books/INTRODUCTION TO ECOLOGY AND ENVIRONMENTAL.pdf'),
(54, 'BIODIVERSITY AND CLIMATE CHANGE', 'BIODIVERSITY AND CLIMATE CHANGE\\\r\n', 'books/BIODIVERSITY AND CLIMATE CHANGE.pdf'),
(55, 'FIRST AID MANAGEMENT AND CARE', 'EVT204', 'books/FIRST AID MANAGEMENT AND CARE.pdf'),
(56, 'Science', 'Model', 'books/3B-Scientific-Biology-Catalog-2018_EN.pdf'),
(57, '3B Scientific', '3B Scientific', 'books/3B-Scientific-Biology-Catalog-2018_EN.pdf'),
(58, '3B ', '3B ', 'books/3B-Scientific-Biology-Catalog-2018_EN.pdf'),
(59, 'EPIDEMIOLOGY', 'EPIDEMIOLOGY', 'books/On Epidemiology and Geographic Information Systems  A Review and Discussion of Future Directions - Volume 2, Number 2â€”April 1996 - Emerging Infectious Diseases journal - CDC.htm'),
(60, 'GEOGRAPHCAL INFORMATION SYSTEM', 'GEOGRAPHICAL INFORMATION SYSTEM', 'books/Use of GIS Mapping as a Public Health Toolâ€”From Cholera to Cancer.htm');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subjcode` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subjcode` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `CID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `matricno` varchar(255) NOT NULL,
  `COMM` text NOT NULL,
  `LOGS` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(11) NOT NULL,
  `matricno` varchar(255) NOT NULL,
  `MES` text NOT NULL,
  `LOGS` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `coursetitle` varchar(255) NOT NULL,
  `creditunit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `semester_id`, `coursetitle`, `creditunit`) VALUES
(43, 'EHT 101', 88, 'Introduction to Medical Sociology', '2'),
(44, 'CSC 101', 88, 'Introduction to Computer Science', '3'),
(45, 'MTH 101', 88, 'General Mathematics', '3'),
(46, 'STA 101', 88, 'Introduction to Statistics', '2'),
(47, 'GLT 101', 88, 'General Laboratory Techniques', '3'),
(48, 'PHY101', 88, 'General Physics', '3'),
(49, 'CHM 101', 88, 'General Chemistry', '3'),
(50, 'GST 101', 88, 'Use of English', '2'),
(51, 'PTD 111', 89, 'Technical Drawing', '2'),
(52, 'BQS 103', 89, 'Building Construction', '3'),
(53, 'STB 211', 89, 'Introduction to Microbiology', '3'),
(54, 'EHT 102', 89, 'Introduction to Demography', '2'),
(55, 'EHT 103', 89, 'Introduction to Biochemistry', '2'),
(56, 'EHT 104', 89, 'Introduction to Environmental Health', '2'),
(57, 'EHT 105', 89, ' Environmental Scanning', '1'),
(58, 'DTH 115', 89, 'Human Anatomy and Physiology  1', '2'),
(59, 'PHM 101', 89, 'Introduction to Pharmacology', '2'),
(60, 'STA 112', 59, 'Descriptive Statistics', '2'),
(61, 'COM 111', 59, 'Introduction to Computer', '3'),
(65, 'DTH 115', 59, 'Human Anatomy and Physciogy 1', '2'),
(66, 'GNS 101', 73, 'USE OF ENGLISH', '2'),
(67, 'CHE 211', 73, 'PROFESSIONAL ETHICS', '1'),
(68, 'CHE 212', 73, 'ANATOMY AND PHYSICOLOGY 1', '2'),
(69, 'CHE 213', 73, 'BEHAVIOUR CNANGE COMMUNICATIONS', '2'),
(70, 'GNS 111', 73, 'CITIZENSHIP EDUCATION', '1'),
(71, 'CHE 214', 73, 'HUMAN NUTRITION', '2'),
(72, 'CHE 215', 73, 'INTRODUCTION TO PRIMARY HEALTH CARE', '2'),
(73, 'GNS 411', 73, 'INTRODUCTION TO PSYCHOLOGY', '1'),
(74, 'EHT 111', 73, 'INTRODUCTION TO ENVIRONMENTAL HEALTH', '2'),
(75, 'FOT 111', 73, 'GEOGRAPHY', '1'),
(76, 'COM 111', 73, 'INTRODUCTION TO COMPUTER', '2'),
(77, 'GNS 213', 73, 'INTRODUCTION TO MEDICAL SOCIOLOGY', '2'),
(78, 'CHE 221', 96, 'SYMPTOMATOLOGY', '2'),
(79, 'CHE 222', 96, 'POPULATION DYNAMICS AND FAMILY PLANNING', '3'),
(80, 'CHE 223', 96, 'CLINICAL SKILLS I', '3'),
(81, 'STB 211', 96, 'SCIENCE LABORATORY TECHNOLOGY', '3'),
(82, 'CHE 225', 96, 'CONTROL OF COMMUNICABLE DISEASE', '2'),
(83, 'CHE 226', 96, 'ACCIDENT AND ENERGENCY', '2'),
(84, 'CHE 227', 96, 'SUPERVISED CLINICAL EXPERIENCED I', '2'),
(85, 'GNS 102', 96, 'COMMUNICATION IN ENGLISH', '2'),
(86, 'CHE 231', 74, 'ANATOMY AND PHYSICOLOGY II', '2'),
(87, 'CHE 232', 74, 'ORAL HEALTH', '2'),
(88, 'CHE 233', 74, 'COMMUNITY MENTAL HEALTH', '2'),
(89, 'CHE 234', 74, 'REPRODUCTIVE HEALTH', '2'),
(90, 'CHE 235', 74, 'CHILD HEALTH', '3'),
(91, 'CHE 236', 74, 'SCHOOL HEALTH PROGRAMME', '2'),
(92, 'CHE 237', 74, 'CONTROL OF NON-COMMUNICABLE DISEASES', '2'),
(93, 'BCH 111', 74, 'INTRODUCTION TO PHYSICAL CHEMISTRY', '1'),
(94, 'CHE 238', 74, 'COMMUNITY LINKAGES AND DEVELOPMENT', '3'),
(95, 'CHE 239', 74, 'CARE AND MANAGEMENT OF HIV AND AIDS', '3'),
(96, 'CHE 240', 74, 'OCCUPATIONAL HEALTH AND SAFTY', '2'),
(97, 'CHE 241', 75, 'CLINICAL SKILLS II', '3'),
(98, 'CHE 242', 75, 'MATERNAL HEALTH', '4'),
(99, 'CHE 243', 75, 'MODIFIED ESSENTIAL NEWBORN CARE', '3'),
(100, 'CHE 244', 75, 'COMMUNITY EAR, NOSE AND THROAT CARE (ENT)', '2'),
(101, 'CHE 245', 75, 'COMMUNITY EYE CARE', '1'),
(102, 'CHE 246', 75, 'USE OF STANDING ORDERS', '3'),
(103, 'GNP 123', 75, 'INTRODUCTION TO PHARMACOLOGY', '2'),
(104, 'CHE 247', 75, 'NIGERIAN HEALTH SYSTEM', '2'),
(105, 'CHE 248', 75, 'SUPERVIED CLINICAL EXPERIENCE II', '4'),
(106, 'CHE 251', 97, 'CARE OF OLDER PERSONS', '1'),
(107, 'CHE 252', 97, 'CARE OF PERSONS WITH SPECIAL NEEDS', '2'),
(108, 'CHE 253', 97, 'HEALTH STATISTICS ', '2'),
(109, 'CHE 254', 97, 'ESSENTIAL MEDICINES', '2'),
(110, 'CHE 255', 97, 'HUMMAN RESOURCE FOR HEALTH', '1'),
(111, 'CHE 256', 97, 'RESEARCH METHODOLOGY', '2'),
(112, 'CHE 257', 97, 'COMMUNITY BASED NEWBORN CARE', '2'),
(113, 'CHE 258', 97, 'SUPERVISED COMMUNITY BASED EXPERIENCE (SCBE)', '4'),
(114, 'CHE 261', 98, 'PRIMARY HEALTH CARE MANAGEMENT', '2'),
(115, 'CHE 262', 98, 'REFERRAL SYSTEM AND OUTREACH SERVICES ', '2'),
(116, 'CHE 263', 97, 'ACCOUNTING SYSTEM IN PRIMARY HEALTH CARE ', '1'),
(117, 'CHE 263', 98, 'ACCOUNTING SYSTEM IN PRIMARY HEALTH CARE ', '1'),
(118, 'CHE 264', 98, 'HEALTH MANAGEMENT INFORMATION SYSTEM', '2'),
(119, 'BUS 213', 98, 'ENTREPRENUERSHIP EDUCATION', '2'),
(120, 'CHE 265', 98, 'RESEARCH PROJECT', '4'),
(121, 'HPE 100', 99, 'Origin and Philosophy of Health Promotion and Education', '3'),
(122, 'HPE 101', 99, 'Component of Health', '2'),
(123, 'DTH 115', 99, 'ANATOMY AND PHYSICOLOGY ', '2'),
(124, 'HPE 103', 99, 'ENVIRONMENTAL HEALTH', '2'),
(125, 'HPE 104', 99, 'ACCIDENT PREVENTION ADN SAFTY EDUCATION', '2'),
(126, 'HPE 105', 99, 'COMMUNICATION FOR HEALTH', '3'),
(127, 'GST 101', 99, 'USE OF ENGLISH', '2'),
(128, 'GNS 102', 99, 'USE OF LIBRARY', '2'),
(129, 'STA 102', 100, 'HEALTH STATISTICS', '2'),
(130, 'HPE 107', 100, 'METHOD FOR CONDUCTING HEALTH PROMOTION AND EDUCATION', '2'),
(131, 'EHT 201', 100, 'EPIDAMIOLOGY ', '3'),
(132, 'HPE 109', 100, 'SCHOOL HEALTH PROGRAMME', '2'),
(133, 'HPE 110', 100, 'HEALTH CARE DELIVERY SYSTEM', '3'),
(134, 'HPE 111', 100, 'COMMUNITY ORGANISATION AND DEVELOPMENT', '3'),
(135, 'EHT 403', 100, 'OCCUPATIONAL HEALTH AND SAFTY', '2'),
(136, 'HPE 113', 100, 'FIELD EXPERIENCE IN HEALTH PROMOTION AND EDUCATION', '3'),
(137, 'HPE 207', 102, 'CONSUMER EDUCATION', '2'),
(138, 'HPE 200', 101, 'RESEARCH METHOD IN HEALTH PROMOTION AND EDUCATION', '3'),
(139, 'HPE 201', 101, 'PLANNING, IMPLEMENTATING AND EVALUATION OF HEALTH PROMOTION AND EDUCATION', '2'),
(140, 'NUD 233', 101, 'NUTRITION EDUCATION', '2'),
(141, 'HPE 203', 101, 'COUNSELING IN HEALTH PROMOTION AND EDUATION', '3'),
(142, 'HPE 204', 101, 'SEMINAR IN HEALTH PROMOTION AND EDUATION', '2'),
(143, 'HPE 205', 101, 'FAMILY LIFE AND SEX EDUCATION', '2'),
(144, 'GNS 103', 101, 'COMPUTER EDUCATION', '2'),
(145, 'EHT 207', 101, 'PRINCIPLE AND PRACTICE OF FIRST AID AND SAFTY', '2'),
(146, 'HPE 208', 102, 'ADVOCACY', '2'),
(147, 'HPE 209', 102, 'DRUG EDUCATION', '2'),
(148, 'HPE 210', 102, 'INTERNATIONAL AND GLOBAL HEALTH', '2'),
(149, 'HPE 211', 102, 'ETHICS IN HPE', '2'),
(150, 'HPE 212', 102, 'INTERNSHIP', '3'),
(151, 'HPE 213', 102, ' PROJECT IN HPE ', '4'),
(152, 'HAM 101', 55, 'CLINICAL SKILLS', '3'),
(153, 'EHT 111', 55, 'ENVIRONMENTAL HEALTH', '2'),
(154, 'BCH 111', 55, 'BASIC SCIENCE', '2'),
(155, 'HAM 112', 55, 'ANATOMY AND PHYSIOLOGY I', '3'),
(156, 'SLT 111', 55, 'INTRODUCTION TO MEDICAL LABORATORY', '2'),
(157, 'STA 111', 55, 'HEALTH STATISTICS', '2'),
(158, 'GNS 111', 55, 'BEHAVIOURAL SCIENCE ', '2'),
(159, 'GNS 101', 55, 'USE OF ENGLISH', '2'),
(160, 'CSC 111', 55, 'INTRODUCTION TO COMPUTER SCIENCE', '2'),
(161, 'HAM 113', 55, 'PROFESSIONAL ETHICS', '2'),
(162, 'HAM 122', 56, 'ANATOMY AND PHYSIOLOGY', '3'),
(163, 'HAM 121', 56, 'CLINICAL PROCEDURE II', '3'),
(164, 'GNS 123', 56, 'MEDICAL SOCIOLOGY', '2'),
(165, 'CHE 124', 56, 'REPRODUCTIVE HEALTH I', '3'),
(166, 'ENT 121', 56, 'ENTREPRENUERSHIP', '2'),
(167, 'HAM 123', 56, 'NON-COMMUNICABLE DISEASES', '2'),
(168, 'HAM 124', 56, 'PRIMARY HEALTH CARE ', '2'),
(169, 'HAM 125', 56, 'HEALTH EDUCATION', '2'),
(170, 'SLT 121', 56, 'MEDICAL LABORATORY', '2'),
(171, 'GNS 102', 56, 'COMMUNICATION IN ENGLISH', '2'),
(172, 'DHF 111', 57, 'INTRODUCTION TO DENTAL NURSING CARE', '2'),
(173, 'HAM 212', 57, 'BASIC CLINICAL PROCEDURE II', '3'),
(174, 'HIM 111', 57, 'MEDICAL TECHNOLOGY / RECORD KEEPING', '2'),
(175, 'HIM 111', 57, 'PRINCIPLE EPIDEMIOLOGY/ DISEASE CONTROL', '2'),
(176, 'HAM 211', 57, 'REPRODUCTIVE HEALTH II', '3'),
(177, 'HAM 215', 57, 'MENTAL HEALTH', '2'),
(178, 'HAM 213', 57, 'HUMAN NUTRITION', '2'),
(179, 'HAM 214', 57, 'ADOLESCENT/ADULT/HANDICAP', '2'),
(180, 'PTH 111', 57, 'MANAGEMENT OF ESSENTIAL DRUGS', '2'),
(181, 'HAM 223', 58, 'PRINCIPLE OF PHC MANAGEMENT', '2'),
(182, 'ETH 223', 58, 'OCCUPATIONAL HEALTH AND SAFTY', '3'),
(183, 'HAM 225', 58, 'RESEARCH METHODOLOGY', '2'),
(184, 'COT 212', 58, 'PRIMARY EYE CARE', '3'),
(185, 'PHN 216', 58, 'CHILD HEALTH', '2'),
(186, 'HAM 221', 58, 'COMMUNICABLE DISEASES', '3'),
(187, 'HAM 222', 58, 'SCHOOL HEALTH SERVICES', '2'),
(188, 'HAM 202', 58, 'PROJECT WORK', '6'),
(189, 'HAM 202', 58, 'PROJECT WORK', '6'),
(190, 'EHT 101', 43, 'INTROUCTION TO MEDICAL SOCIOLOGY', '2'),
(191, 'CSC 101', 43, 'INTROUCTION TO COMPUTER SCIENCE', '3'),
(192, 'MTH 101', 43, 'GENERAL MATHEMATICS', '3'),
(193, 'STA 101', 43, 'INTROUCTION TO STATISTICS', '2'),
(194, 'GLT 111', 43, 'GENERAL LABORATORY TECHNIQUES', '3'),
(195, 'PHY 101', 43, 'GENERAL PHYSICS', '3'),
(196, 'CHM 101', 43, 'GENERAL CHEMISTRY', '3'),
(197, 'GST 101', 43, 'USE OF ENGLISH', '2'),
(198, 'HAM 112', 43, 'HUMAN ANATOMY AND PHYSIOLOGY', '3'),
(199, 'GNS 277', 44, 'CITIZENSHIP EDUCATION', '1'),
(200, 'BOS 103', 44, 'BUILDING CONSTRUCTION', '3'),
(201, 'STB 211', 44, 'INTRODCUTION TO MIRCOBIOLOGY', '3'),
(202, 'EHT 102`', 44, 'INTRODCUTION TO DEMOGRAPHY', '2'),
(203, 'EHT 103', 44, 'INTRODCUTION TO BIOCHEMISTRY', '2'),
(204, 'EHT 104', 44, 'INTRODCUTION TO ENVIRONMENTAL HEALTH', '2'),
(205, 'EHT 105', 44, 'ENVIRONMENTAL SCANNING', '1'),
(206, 'DTH 115', 44, 'HUMAN ANATOMY AND PHYSIOLOGY', '2'),
(207, 'PHM 101', 44, 'PRIMARY HEALTH CARE', '2'),
(208, 'EHT 106', 44, 'HEALTH ECOLOGY', '2'),
(209, 'GNS 102', 44, 'COMMUNICATION IN ENGLISH', '2'),
(210, 'PTD 111', 45, 'TECHNICAL DRAWING', '2'),
(211, 'ETH 201', 45, 'PRINCIPLE OF EPIDERMIOLOGY AND DISEASE CONTROL', '3'),
(212, 'ETH 202', 45, 'ENTOMOLOGY AND PEST CONTROL', '3'),
(213, 'PHM 101', 45, 'INTRODCUTION TO PHARMACOLOGY', '2'),
(214, 'NUD 223', 45, 'FOOD SCIENCE AND NUTRITION', '2'),
(215, 'EHT 203', 45, 'ENVIRONMENTAL AND PUBLIC HEALTH PARASITOLOGY', '3'),
(216, 'EHT 204', 45, 'SOLID WASTE MANAGEMENT ', '3'),
(217, 'PEL 217', 45, 'TECHNICAL REPORT AND WRITING', '1'),
(218, 'EHT 205', 45, 'HEALTH AGENCIES (NATIONAL AND INTERNATIONAL)', '2'),
(219, 'EHT 206', 45, 'ENVIRONMENTAL HEALTH LABORATORY 1', '2'),
(220, 'EHT 207', 46, 'PRINCIPLE AND PRACTICE OF FIRST AID', '2'),
(221, 'EHT 206', 46, 'ENVIRONMENTAL HEALTH LABORATORY 1', '2'),
(222, 'EHT 205', 46, 'WATER SANITATION ', '3'),
(223, 'EHT 209', 46, 'FOOD HYGEINE AND INSPECTION ', '3'),
(224, 'EHT 210', 46, 'PUBLIC HEALTH LAWS AND ETHICS ', '2'),
(225, 'EHT 211', 46, 'SANITORY INSPECTION OF PREMISES', '2'),
(226, 'ETH 213', 46, 'INTRODUCTION TO IMMUNIOLOGY', '3'),
(227, 'GNS 101 ', 103, 'USE OF ENGLISH ', '3'),
(228, 'EVT 101', 103, 'ELEMENTARY MICROBIOLOGY', '3'),
(229, 'EVT 103', 103, 'INTRODUCTION TO RURAL  SOCIOLOGY', '2'),
(230, 'EVT 105', 103, 'ENVIRONMENTAL HEALTH ETHICS', '1'),
(231, 'EHT 111', 103, 'INTRODUCTION TO ENVIRONMENTAL HEALTH', '2'),
(232, 'BCH 111', 103, 'GENERAL AND PHYSICAL CHEMISTRY', '3'),
(233, 'MTH 102', 103, 'ALGEBRA AND ELEMENTARY GEOMETRY', '2'),
(234, 'DTH 115', 103, 'HUMAN ANATOMY AND PHYSIOLOGY', '3'),
(235, 'GNS 117', 103, 'CITIZENSHIP EDUCATION', '1'),
(236, 'CSC 111', 43, 'INTRODUCTION TO COMPUTER SCIENCE', '2'),
(237, 'EVT 102', 104, 'INTRODUCTION TO ENVIRONMENTAL POLLUTION', '2'),
(238, 'EVT 104', 104, 'WATER SUPPLY AND TREATMENT TECHNOLOGY', '2'),
(239, 'EVT 106', 104, 'PUBLIC HEALTH SOCIAL SERVICES', '1'),
(240, 'EVT 108', 104, 'BUILDING SANITATION', '3'),
(241, 'EVT 110', 104, 'FOOD AND NUTRITION', '2'),
(242, 'EVT 112', 104, 'PRIMARY HEALTH CARE CONCEPTS AND PRATICE', '1'),
(243, 'EEH 001', 104, 'ENERGY ISSUES IN NIGERIA', '1'),
(244, 'EHT 121', 104, 'STRUCTURE AND ORGANS OF CARCASS', '2'),
(245, 'GNS 102', 104, 'COMMUNICATION IN ENGLISH', '2'),
(246, 'HAM 102', 104, 'HUMAN ANATOMY AND PHYSIOLOGY', '3'),
(247, 'EVT 206', 106, 'ELEMENTARY PARASIOLOGY', '3'),
(248, 'PEL 017', 105, 'TECHNICAL REPORT AND WRITING', '1'),
(249, 'EVT 202', 105, 'VECTOR AND MEDICAL IMPORTANCE ', '2'),
(250, 'EVT 204', 105, 'FIRST AID MANAGEMENT AND CARE ', '3'),
(251, 'EVT 208', 105, 'IMMUNITY AND PUBLIC HEALTH', '2'),
(252, 'EVT 209', 105, 'HOUSE TO HOUSE INSPECTION', '3'),
(253, 'EVT 210', 105, 'INTRODUCTION TO ENVIRONMENTAL HEALTH', '2'),
(254, 'EVT 212', 105, 'GENERAL LABORATORY TECHNIQUES', '3'),
(255, 'EVT 111', 105, 'TECHNICAL DRAWING', '3'),
(256, 'EVT 212', 106, 'COMMUNITY DIAGNOSIS AND MOBILIZATION ', '2'),
(257, 'EVT 213', 106, 'RESEARCH METHODOLOGY', '2'),
(258, 'HAM 221', 106, 'COMMUNICABLE DISEASE', '3'),
(259, 'HAM 222', 106, 'SCHOOL HEALTH SERVICES', '2'),
(260, 'EVT 304', 107, 'FOOD HYGIENE', '3'),
(261, 'EVT 310', 107, 'PUBLIC HEALTH LAWS AND HISTORY', '3'),
(262, 'EVT 312', 107, 'WASTE DISPOSAL', '2'),
(263, 'EVT 318', 107, 'INTRODUCTION TO HEALTH EDUCATON', '2'),
(264, 'EVT 214', 107, 'PRINCIPLE OF EPIDERMIOLOGY AND DISEASE CONTROL', '2'),
(265, 'EVT 302', 108, 'PESTICIDE HANDLING AND SAFTY', '2'),
(266, 'EVT 306', 108, 'COMMUNITY SANITATION', '2'),
(267, 'EVT 308', 108, 'EQUIPMENT AND MAINTENANCE', '2'),
(268, 'EVT 314', 108, 'OCCUPATIONAL HEALTH AND SAFTY', '2');

-- --------------------------------------------------------

--
-- Table structure for table `courseregister`
--

CREATE TABLE `courseregister` (
  `courseRegId` int(11) NOT NULL,
  `discipline` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `matricno` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `examscore` varchar(255) NOT NULL,
  `cascore` varchar(255) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courseregister`
--

INSERT INTO `courseregister` (`courseRegId`, `discipline`, `fullname`, `matricno`, `session`, `faculty`, `dept`, `level`, `semester`, `course`, `examscore`, `cascore`, `regdate`) VALUES
(1, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '', '0', '0', '2018-07-03'),
(2, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '51', '0', '0', '2018-07-03'),
(3, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '52', '0', '0', '2018-07-03'),
(4, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '53', '0', '0', '2018-07-03'),
(5, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '54', '0', '0', '2018-07-03'),
(6, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '55', '0', '0', '2018-07-03'),
(7, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '56', '0', '0', '2018-07-03'),
(8, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '57', '0', '0', '2018-07-03'),
(9, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '58', '0', '0', '2018-07-03'),
(10, 'Environmental Health Technician', 'Bartholomew Francis frank', '08/5444', '2018', '15', '22', '59', '89', '59', '0', '0', '2018-07-03'),
(11, '0', 'Itafor franc clement', '08/50053', '2018', '15', '22', '59', '88', '43', '62', '22', '2018-12-04'),
(12, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '43', '341', '21', '2018-12-04'),
(13, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '44', '0', '0', '2018-12-04'),
(14, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '45', '0', '0', '2018-12-04'),
(15, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '46', '0', '0', '2018-12-04'),
(16, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '47', '0', '0', '2018-12-04'),
(17, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '48', '0', '0', '2018-12-04'),
(18, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '49', '0', '0', '2018-12-04'),
(19, '0', 'Rita i clement', '08/50054', '2018', '15', '22', '59', '88', '50', '0', '0', '2018-12-04'),
(20, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '152', '0', '0', '2019-02-09'),
(21, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '153', '0', '0', '2019-02-09'),
(22, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '154', '0', '0', '2019-02-09'),
(23, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '155', '0', '0', '2019-02-09'),
(24, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '156', '0', '0', '2019-02-09'),
(25, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '157', '0', '0', '2019-02-09'),
(26, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '158', '0', '0', '2019-02-09'),
(27, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '159', '0', '0', '2019-02-09'),
(28, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '160', '0', '0', '2019-02-09'),
(29, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '55', '161', '0', '0', '2019-02-09'),
(30, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '162', '0', '0', '2019-02-09'),
(31, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '163', '0', '0', '2019-02-09'),
(32, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '164', '0', '0', '2019-02-09'),
(33, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '165', '0', '0', '2019-02-09'),
(34, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '166', '0', '0', '2019-02-09'),
(35, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '167', '0', '0', '2019-02-09'),
(36, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '168', '0', '0', '2019-02-09'),
(37, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '169', '0', '0', '2019-02-09'),
(38, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '170', '0', '0', '2019-02-09'),
(39, '0', 'DADA  ADEOLA ABIGEL', '201802003', '2018', '17', '15', '42', '56', '171', '0', '0', '2019-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_tmp` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `file_name`, `file_tmp`, `file_type`, `phone`) VALUES
(1, '../uploads/broardsheet1.pdf', '/tmp/phpNxa8rs', 'application/pdf', '08087097532'),
(2, '../uploads/studentresult.pdf', '/tmp/phpKj869p', 'application/pdf', '08087097532'),
(3, '../uploads/studentdetails.pdf', '/tmp/phprrwiSn', 'application/pdf', '08087097532'),
(4, '../uploads/registeredsubj.pdf', '/tmp/php0ahHMl', 'application/pdf', '08087097532'),
(5, '../uploads/bsheet.doc.oxps', '/tmp/php7C8ODf', 'application/octet-stream', '07065907946'),
(6, '../uploads/school proposal.docx', '/tmp/phpGkIOt6', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '07065907946'),
(7, '../uploads/CSS.pdf', '/tmp/php9klOOr', 'application/pdf', '17065907948'),
(8, '../uploads/IMG_20180522_134608.jpg', '/tmp/php9wuTf1', 'image/jpeg', '09061158176'),
(9, '../uploads/', '', '', '07063564872'),
(10, '../uploads/CERTIFICATE OF BIRTH.jpg', '/tmp/phpfeLOda', 'image/jpeg', '07066743823'),
(11, '../uploads/LOCAL GOV CERT.jpg', '/tmp/phpL4XHSt', 'image/jpeg', '07066743823'),
(12, '../uploads/PASSPORT PHOTOGRAPH.jpg', '/tmp/phpTL78xN', 'image/jpeg', '07066743823'),
(13, '../uploads/311.jpg', '/tmp/phpRovBd7', 'image/jpeg', '07066743823');

-- --------------------------------------------------------

--
-- Table structure for table `depts`
--

CREATE TABLE `depts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `depts`
--

INSERT INTO `depts` (`id`, `name`, `faculty_id`) VALUES
(12, 'Environmental Health Technology', 15),
(13, 'Environmental Health Technician', 15),
(14, 'Health Education and Promoting', 16),
(15, 'Health Assistant (Medical)', 17),
(16, 'Health Information Management Technician', 18),
(17, 'Computer Studies', 18),
(20, 'Science Laboratory Technology', 20),
(21, 'Optometry', 20),
(22, ' .', 15),
(24, 'Health Education', 16);

-- --------------------------------------------------------

--
-- Table structure for table `emaillist`
--

CREATE TABLE `emaillist` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emaillist`
--

INSERT INTO `emaillist` (`id`, `email`) VALUES
(22, 'nubiangalatocecema@gmail.com'),
(23, 'nubiolujimmy@yahoo.com'),
(26, 'mathematicsmadeasy@gmail.com'),
(27, 'itaforfrancis@gmail.com'),
(28, 'Adeteye.abimbola1997@gmail.com'),
(29, 'akinwandefunmilola9@gmail.com'),
(30, 'sakabasirat1@gmail.com'),
(31, 'remmygold12345@gmail.com'),
(32, 'oyetanabidemi84@gmail.com'),
(33, 'hamzatislamiyah194@email.com'),
(34, 'hamzatislamiyah194@gmail.com'),
(35, 'olakunlenifemi6@gmail.com'),
(36, 'adelekeomolararodiat5@gmail.com'),
(37, 'Adelakunkehinde@email.com'),
(38, 'ikheloagift@gmail.com'),
(39, 'musbaubidemi2000@gmail.com'),
(40, 'musbaubidemi200@gmail.com'),
(41, '3okeajoimasayi@email.com'),
(42, 'Igbokoyisusan@gmail.com'),
(43, 'oseniolatunjigbenga@gmail.com'),
(44, 'Tiamiu65@gmail.com'),
(45, 'divineaniagolu@yahoo.com'),
(46, 'ogundeoluwafunmilayo@gmail.com'),
(47, 'motunrayoomolabake25@gmail.com'),
(48, 'sikiruadedokun@gmail.com'),
(49, 'adebolaesther223@gmail.com'),
(50, 'Ayormidewaheed@gmail.com'),
(51, 'kolawolegbemisola14@gmail.com'),
(52, 'omotolaniwaheed58@yahoo.com'),
(53, 'iyayiomolara4@gmail.com'),
(54, 'salaumoria99@gmail.Com'),
(55, 'bussygold25@gmail.com'),
(56, 'alexsandrad998@gmail.com'),
(57, 'giftedajah@yahoo.com'),
(58, ''),
(59, ''),
(60, ''),
(61, 'kennyadelakun75@gmail.com'),
(62, 'Ainasarah358@gmail.com'),
(63, 'oluwaseyifunmielizabeth222@gmail.com'),
(64, 'ngozinwariri@gmail.com'),
(65, 'majek@gmail.com'),
(66, 'Sphatymahopeyemi@gmail.com'),
(67, 'ayomidipupo126@gmail.com'),
(68, 'eniolorundatosin247@gmail.com'),
(69, 'modinatabdulsalam@gmail.com'),
(70, 'haishat01@yahoo.com'),
(71, 'www.abidoye.@gmail.com'),
(72, 'unextdream@gmail.com'),
(73, 'Iffyluv4@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`) VALUES
(15, 'DEPARTMENT OF ENVIRONMENTAL HEALTH'),
(16, 'DEPARTMENT OF HEALTH EDUCATION'),
(17, 'DEPARTMENT OF PUBLIC HEALTH NURSING'),
(18, 'DEPARTMENT OF HEALTH INFORMATION &\nTECHNOLOGY'),
(19, 'DEPARTMENT OF COMMUNITY HEALTH'),
(20, 'DEPARTMENT OF SCIENCE LABORATORY\nTECHNIQUES');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `name`, `dept_id`) VALUES
(33, '100', 12),
(34, '200', 12),
(35, '300', 12),
(36, '400', 12),
(37, '100', 13),
(38, '200', 13),
(39, '300', 13),
(40, '100', 14),
(41, '200', 14),
(42, '100', 15),
(43, '200', 15),
(44, '100', 16),
(45, '200', 16),
(46, '300', 16),
(47, '100', 17),
(48, '200', 17),
(49, '100', 18),
(50, '200', 18),
(51, '100', 19),
(52, '200', 19),
(53, '100', 20),
(54, '200', 20),
(55, '300', 20),
(56, '100', 21),
(57, '200', 21),
(58, '300', 21),
(59, 'ND1', 22),
(60, 'ND2', 22),
(61, '100', 23),
(62, '200', 23),
(63, '300', 19),
(64, '300', 23),
(65, '100 Level', 24),
(66, '200 Level', 24);

-- --------------------------------------------------------

--
-- Table structure for table `locals`
--

CREATE TABLE `locals` (
  `local_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `local_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locals`
--

INSERT INTO `locals` (`local_id`, `state_id`, `local_name`) VALUES
(1, 1, 'Aba North'),
(2, 1, 'Arochukwu'),
(3, 1, 'Bende'),
(4, 1, 'Ikwuano'),
(5, 1, 'Isiala Ngwa North'),
(6, 1, 'Isiala Ngwa South'),
(7, 1, 'Isuikwuato'),
(8, 1, 'Obi Ngwa'),
(9, 1, 'Ohafia'),
(10, 1, 'Osisioma'),
(11, 1, 'Ugwunagbo'),
(12, 1, 'Ukwa East'),
(13, 1, 'Ukwa West'),
(14, 1, 'Umuahia North'),
(15, 1, 'Umuahia South'),
(16, 1, 'Umu Nneochi'),
(17, 2, 'Fufure'),
(18, 2, 'Ganye'),
(19, 2, 'Gayuk'),
(20, 2, 'Gombi'),
(21, 2, 'Grie'),
(22, 2, 'Hong'),
(23, 2, 'Jada'),
(24, 2, 'Lamurde'),
(25, 2, 'Madagali'),
(26, 2, 'Maiha'),
(27, 2, 'Mayo Belwa'),
(28, 2, 'Michika'),
(29, 2, 'Mubi North'),
(30, 2, 'Mubi South'),
(31, 2, 'Numan'),
(32, 2, 'Shelleng'),
(33, 2, 'Song'),
(34, 2, 'Toungo'),
(35, 2, 'Yola North'),
(36, 2, 'Yola South'),
(37, 3, 'Eastern Obolo'),
(38, 3, 'Eket'),
(39, 3, 'Esit Eket'),
(40, 3, 'Essien Udim'),
(41, 3, 'Etim Ekpo'),
(42, 3, 'Etinan'),
(43, 3, 'Ibeno'),
(44, 3, 'Ibesikpo Asutan'),
(45, 3, 'Ibiono-Ibom'),
(46, 3, 'Ika'),
(47, 3, 'Ikono'),
(48, 3, 'Ikot Abasi'),
(49, 3, 'Ikot Ekpene'),
(50, 3, 'Ini'),
(51, 3, 'Itu'),
(52, 3, 'Mbo'),
(53, 3, 'Mkpat-Enin'),
(54, 3, 'Nsit-Atai'),
(55, 3, 'Nsit-Ibom'),
(56, 3, 'Nsit-Ubium'),
(57, 3, 'Obot Akara'),
(58, 3, 'Okobo'),
(59, 3, 'Onna'),
(60, 3, 'Oron'),
(61, 3, 'Oruk Anam'),
(62, 3, 'Udung-Uko'),
(63, 3, 'Ukanafun'),
(64, 3, 'Uruan'),
(65, 3, 'Urue-Offong/Oruko'),
(66, 3, 'Uyo'),
(67, 4, 'Anambra East'),
(68, 4, 'Anambra West'),
(69, 4, 'Anaocha'),
(70, 4, 'Awka North'),
(71, 4, 'Awka South'),
(72, 4, 'Ayamelum'),
(73, 4, 'Dunukofia'),
(74, 4, 'Ekwusigo'),
(75, 4, 'Idemili North'),
(76, 4, 'Idemili South'),
(77, 4, 'Ihiala'),
(78, 4, 'Njikoka'),
(79, 4, 'Nnewi North'),
(80, 4, 'Nnewi South'),
(81, 4, 'Ogbaru'),
(82, 4, 'Onitsha North'),
(83, 4, 'Onitsha South'),
(84, 4, 'Orumba North'),
(85, 4, 'Orumba South'),
(86, 4, 'Oyi'),
(87, 5, 'Bauchi'),
(88, 5, 'Bogoro'),
(89, 5, 'Damban'),
(90, 5, 'Darazo'),
(91, 5, 'Dass'),
(92, 5, 'Gamawa'),
(93, 5, 'Ganjuwa'),
(94, 5, 'Giade'),
(95, 5, 'Itas/Gadau'),
(96, 5, 'Jama\'are'),
(97, 5, 'Katagum'),
(98, 5, 'Kirfi'),
(99, 5, 'Misau'),
(100, 5, 'Ningi'),
(101, 5, 'Shira'),
(102, 5, 'Tafawa Balewa'),
(103, 5, 'Toro'),
(104, 5, 'Warji'),
(105, 5, 'Zaki'),
(106, 6, 'Ekeremor'),
(107, 6, 'Kolokuma/Opokuma'),
(108, 6, 'Nembe'),
(109, 6, 'Ogbia'),
(110, 6, 'Sagbama'),
(111, 6, 'Southern Ijaw'),
(112, 6, 'Yenagoa'),
(113, 7, 'Apa'),
(114, 7, 'Ado'),
(115, 7, 'Buruku'),
(116, 7, 'Gboko'),
(117, 7, 'Guma'),
(118, 7, 'Gwer East'),
(119, 7, 'Gwer West'),
(120, 7, 'Katsina-Ala'),
(121, 7, 'Konshisha'),
(122, 7, 'Kwande'),
(123, 7, 'Logo'),
(124, 7, 'Makurdi'),
(125, 7, 'Obi'),
(126, 7, 'Ogbadibo'),
(127, 7, 'Ohimini'),
(128, 7, 'Oju'),
(129, 7, 'Okpokwu'),
(130, 7, 'Oturkpo'),
(131, 7, 'Tarka'),
(132, 7, 'Ukum'),
(133, 7, 'Ushongo'),
(134, 7, 'Vandeikya'),
(135, 8, 'Askira/Uba'),
(136, 8, 'Bama'),
(137, 8, 'Bayo'),
(138, 8, 'Biu'),
(139, 8, 'Chibok'),
(140, 8, 'Damboa'),
(141, 8, 'Dikwa'),
(142, 8, 'Gubio'),
(143, 8, 'Guzamala'),
(144, 8, 'Gwoza'),
(145, 8, 'Hawul'),
(146, 8, 'Jere'),
(147, 8, 'Kaga'),
(148, 8, 'Kala/Balge'),
(149, 8, 'Konduga'),
(150, 8, 'Kukawa'),
(151, 8, 'Kwaya Kusar'),
(152, 8, 'Mafa'),
(153, 8, 'Magumeri'),
(154, 8, 'Maiduguri'),
(155, 8, 'Marte'),
(156, 8, 'Mobbar'),
(157, 8, 'Monguno'),
(158, 8, 'Ngala'),
(159, 8, 'Nganzai'),
(160, 8, 'Shani'),
(161, 9, 'Akamkpa'),
(162, 9, 'Akpabuyo'),
(163, 9, 'Bakassi'),
(164, 9, 'Bekwarra'),
(165, 9, 'Biase'),
(166, 9, 'Boki'),
(167, 9, 'Calabar Municipal'),
(168, 9, 'Calabar South'),
(169, 9, 'Etung'),
(170, 9, 'Ikom'),
(171, 9, 'Obanliku'),
(172, 9, 'Obubra'),
(173, 9, 'Obudu'),
(174, 9, 'Odukpani'),
(175, 9, 'Ogoja'),
(176, 9, 'Yakuur'),
(177, 9, 'Yala'),
(178, 10, 'Aniocha South'),
(179, 10, 'Bomadi'),
(180, 10, 'Burutu'),
(181, 10, 'Ethiope East'),
(182, 10, 'Ethiope West'),
(183, 10, 'Ika North East'),
(184, 10, 'Ika South'),
(185, 10, 'Isoko North'),
(186, 10, 'Isoko South'),
(187, 10, 'Ndokwa East'),
(188, 10, 'Ndokwa West'),
(189, 10, 'Okpe'),
(190, 10, 'Oshimili North'),
(191, 10, 'Oshimili South'),
(192, 10, 'Patani'),
(193, 10, 'Sapele'),
(194, 10, 'Udu'),
(195, 10, 'Ughelli North'),
(196, 10, 'Ughelli South'),
(197, 10, 'Ukwuani'),
(198, 10, 'Uvwie'),
(199, 10, 'Warri North'),
(200, 10, 'Warri South'),
(201, 10, 'Warri South West'),
(202, 11, 'Afikpo North'),
(203, 11, 'Afikpo South'),
(204, 11, 'Ebonyi'),
(205, 11, 'Ezza North'),
(206, 11, 'Ezza South'),
(207, 11, 'Ikwo'),
(208, 11, 'Ishielu'),
(209, 11, 'Ivo'),
(210, 11, 'Izzi'),
(211, 11, 'Ohaozara'),
(212, 11, 'Ohaukwu'),
(213, 11, 'Onicha'),
(214, 12, 'Egor'),
(215, 12, 'Esan Central'),
(216, 12, 'Esan North-East'),
(217, 12, 'Esan South-East'),
(218, 12, 'Esan West'),
(219, 12, 'Etsako Central'),
(220, 12, 'Etsako East'),
(221, 12, 'Etsako West'),
(222, 12, 'Igueben'),
(223, 12, 'Ikpoba Okha'),
(224, 12, 'Orhionmwon'),
(225, 12, 'Oredo'),
(226, 12, 'Ovia North-East'),
(227, 12, 'Ovia South-West'),
(228, 12, 'Owan East'),
(229, 12, 'Owan West'),
(230, 12, 'Uhunmwonde'),
(231, 13, 'Efon'),
(232, 13, 'Ekiti East'),
(233, 13, 'Ekiti South-West'),
(234, 13, 'Ekiti West'),
(235, 13, 'Emure'),
(236, 13, 'Gbonyin'),
(237, 13, 'Ido Osi'),
(238, 13, 'Ijero'),
(239, 13, 'Ikere'),
(240, 13, 'Ikole'),
(241, 13, 'Ilejemeje'),
(242, 13, 'Irepodun/Ifelodun'),
(243, 13, 'Ise/Orun'),
(244, 13, 'Moba'),
(245, 13, 'Oye'),
(246, 14, 'Awgu'),
(247, 14, 'Enugu East'),
(248, 14, 'Enugu North'),
(249, 14, 'Enugu South'),
(250, 14, 'Ezeagu'),
(251, 14, 'Igbo Etiti'),
(252, 14, 'Igbo Eze North'),
(253, 14, 'Igbo Eze South'),
(254, 14, 'Isi Uzo'),
(255, 14, 'Nkanu East'),
(256, 14, 'Nkanu West'),
(257, 14, 'Nsukka'),
(258, 14, 'Oji River'),
(259, 14, 'Udenu'),
(260, 14, 'Udi'),
(261, 14, 'Uzo Uwani'),
(262, 15, 'Bwari'),
(263, 15, 'Gwagwalada'),
(264, 15, 'Kuje'),
(265, 15, 'Kwali'),
(266, 15, 'Municipal Area Council'),
(267, 16, 'Balanga'),
(268, 16, 'Billiri'),
(269, 16, 'Dukku'),
(270, 16, 'Funakaye'),
(271, 16, 'Gombe'),
(272, 16, 'Kaltungo'),
(273, 16, 'Kwami'),
(274, 16, 'Nafada'),
(275, 16, 'Shongom'),
(276, 16, 'Yamaltu/Deba'),
(277, 17, 'Ahiazu Mbaise'),
(278, 17, 'Ehime Mbano'),
(279, 17, 'Ezinihitte'),
(280, 17, 'Ideato North'),
(281, 17, 'Ideato South'),
(282, 17, 'Ihitte/Uboma'),
(283, 17, 'Ikeduru'),
(284, 17, 'Isiala Mbano'),
(285, 17, 'Isu'),
(286, 17, 'Mbaitoli'),
(287, 17, 'Ngor Okpala'),
(288, 17, 'Njaba'),
(289, 17, 'Nkwerre'),
(290, 17, 'Nwangele'),
(291, 17, 'Obowo'),
(292, 17, 'Oguta'),
(293, 17, 'Ohaji/Egbema'),
(294, 17, 'Okigwe'),
(295, 17, 'Orlu'),
(296, 17, 'Orsu'),
(297, 17, 'Oru East'),
(298, 17, 'Oru West'),
(299, 17, 'Owerri Municipal'),
(300, 17, 'Owerri North'),
(301, 17, 'Owerri West'),
(302, 17, 'Unuimo'),
(303, 18, 'Babura'),
(304, 18, 'Biriniwa'),
(305, 18, 'Birnin Kudu'),
(306, 18, 'Buji'),
(307, 18, 'Dutse'),
(308, 18, 'Gagarawa'),
(309, 18, 'Garki'),
(310, 18, 'Gumel'),
(311, 18, 'Guri'),
(312, 18, 'Gwaram'),
(313, 18, 'Gwiwa'),
(314, 18, 'Hadejia'),
(315, 18, 'Jahun'),
(316, 18, 'Kafin Hausa'),
(317, 18, 'Kazaure'),
(318, 18, 'Kiri Kasama'),
(319, 18, 'Kiyawa'),
(320, 18, 'Kaugama'),
(321, 18, 'Maigatari'),
(322, 18, 'Malam Madori'),
(323, 18, 'Miga'),
(324, 18, 'Ringim'),
(325, 18, 'Roni'),
(326, 18, 'Sule Tankarkar'),
(327, 18, 'Taura'),
(328, 18, 'Yankwashi'),
(329, 19, 'Chikun'),
(330, 19, 'Giwa'),
(331, 19, 'Igabi'),
(332, 19, 'Ikara'),
(333, 19, 'Jaba'),
(334, 19, 'Jema\'a'),
(335, 19, 'Kachia'),
(336, 19, 'Kaduna North'),
(337, 19, 'Kaduna South'),
(338, 19, 'Kagarko'),
(339, 19, 'Kajuru'),
(340, 19, 'Kaura'),
(341, 19, 'Kauru'),
(342, 19, 'Kubau'),
(343, 19, 'Kudan'),
(344, 19, 'Lere'),
(345, 19, 'Makarfi'),
(346, 19, 'Sabon Gari'),
(347, 19, 'Sanga'),
(348, 19, 'Soba'),
(349, 19, 'Zangon Kataf'),
(350, 19, 'Zaria'),
(351, 20, 'Albasu'),
(352, 20, 'Bagwai'),
(353, 20, 'Bebeji'),
(354, 20, 'Bichi'),
(355, 20, 'Bunkure'),
(356, 20, 'Dala'),
(357, 20, 'Dambatta'),
(358, 20, 'Dawakin Kudu'),
(359, 20, 'Dawakin Tofa'),
(360, 20, 'Doguwa'),
(361, 20, 'Fagge'),
(362, 20, 'Gabasawa'),
(363, 20, 'Garko'),
(364, 20, 'Garun Mallam'),
(365, 20, 'Gaya'),
(366, 20, 'Gezawa'),
(367, 20, 'Gwale'),
(368, 20, 'Gwarzo'),
(369, 20, 'Kabo'),
(370, 20, 'Kano Municipal'),
(371, 20, 'Karaye'),
(372, 20, 'Kibiya'),
(373, 20, 'Kiru'),
(374, 20, 'Kumbotso'),
(375, 20, 'Kunchi'),
(376, 20, 'Kura'),
(377, 20, 'Madobi'),
(378, 20, 'Makoda'),
(379, 20, 'Minjibir'),
(380, 20, 'Nasarawa'),
(381, 20, 'Rano'),
(382, 20, 'Rimin Gado'),
(383, 20, 'Rogo'),
(384, 20, 'Shanono'),
(385, 20, 'Sumaila'),
(386, 20, 'Takai'),
(387, 20, 'Tarauni'),
(388, 20, 'Tofa'),
(389, 20, 'Tsanyawa'),
(390, 20, 'Tudun Wada'),
(391, 20, 'Ungogo'),
(392, 20, 'Warawa'),
(393, 20, 'Wudil'),
(394, 21, 'Batagarawa'),
(395, 21, 'Batsari'),
(396, 21, 'Baure'),
(397, 21, 'Bindawa'),
(398, 21, 'Charanchi'),
(399, 21, 'Dandume'),
(400, 21, 'Danja'),
(401, 21, 'Dan Musa'),
(402, 21, 'Daura'),
(403, 21, 'Dutsi'),
(404, 21, 'Dutsin Ma'),
(405, 21, 'Faskari'),
(406, 21, 'Funtua'),
(407, 21, 'Ingawa'),
(408, 21, 'Jibia'),
(409, 21, 'Kafur'),
(410, 21, 'Kaita'),
(411, 21, 'Kankara'),
(412, 21, 'Kankia'),
(413, 21, 'Katsina'),
(414, 21, 'Kurfi'),
(415, 21, 'Kusada'),
(416, 21, 'Mai\'Adua'),
(417, 21, 'Malumfashi'),
(418, 21, 'Mani'),
(419, 21, 'Mashi'),
(420, 21, 'Matazu'),
(421, 21, 'Musawa'),
(422, 21, 'Rimi'),
(423, 21, 'Sabuwa'),
(424, 21, 'Safana'),
(425, 21, 'Sandamu'),
(426, 21, 'Zango'),
(427, 22, 'Arewa Dandi'),
(428, 22, 'Argungu'),
(429, 22, 'Augie'),
(430, 22, 'Bagudo'),
(431, 22, 'Birnin Kebbi'),
(432, 22, 'Bunza'),
(433, 22, 'Dandi'),
(434, 22, 'Fakai'),
(435, 22, 'Gwandu'),
(436, 22, 'Jega'),
(437, 22, 'Kalgo'),
(438, 22, 'Koko/Besse'),
(439, 22, 'Maiyama'),
(440, 22, 'Ngaski'),
(441, 22, 'Sakaba'),
(442, 22, 'Shanga'),
(443, 22, 'Suru'),
(444, 22, 'Wasagu/Danko'),
(445, 22, 'Yauri'),
(446, 22, 'Zuru'),
(447, 23, 'Ajaokuta'),
(448, 23, 'Ankpa'),
(449, 23, 'Bassa'),
(450, 23, 'Dekina'),
(451, 23, 'Ibaji'),
(452, 23, 'Idah'),
(453, 23, 'Igalamela Odolu'),
(454, 23, 'Ijumu'),
(455, 23, 'Kabba/Bunu'),
(456, 23, 'Kogi'),
(457, 23, 'Lokoja'),
(458, 23, 'Mopa Muro'),
(459, 23, 'Ofu'),
(460, 23, 'Ogori/Magongo'),
(461, 23, 'Okehi'),
(462, 23, 'Okene'),
(463, 23, 'Olamaboro'),
(464, 23, 'Omala'),
(465, 23, 'Yagba East'),
(466, 23, 'Yagba West'),
(467, 24, 'Baruten'),
(468, 24, 'Edu'),
(469, 24, 'Ekiti'),
(470, 24, 'Ifelodun'),
(471, 24, 'Ilorin East'),
(472, 24, 'Ilorin South'),
(473, 24, 'Ilorin West'),
(474, 24, 'Irepodun'),
(475, 24, 'Isin'),
(476, 24, 'Kaiama'),
(477, 24, 'Moro'),
(478, 24, 'Offa'),
(479, 24, 'Oke Ero'),
(480, 24, 'Oyun'),
(481, 24, 'Pategi'),
(482, 25, 'Ajeromi-Ifelodun'),
(483, 25, 'Alimosho'),
(484, 25, 'Amuwo-Odofin'),
(485, 25, 'Apapa'),
(486, 25, 'Badagry'),
(487, 25, 'Epe'),
(488, 25, 'Eti Osa'),
(489, 25, 'Ibeju-Lekki'),
(490, 25, 'Ifako-Ijaiye'),
(491, 25, 'Ikeja'),
(492, 25, 'Ikorodu'),
(493, 25, 'Kosofe'),
(494, 25, 'Lagos Island'),
(495, 25, 'Lagos Mainland'),
(496, 25, 'Mushin'),
(497, 25, 'Ojo'),
(498, 25, 'Oshodi-Isolo'),
(499, 25, 'Shomolu'),
(500, 25, 'Surulere'),
(501, 26, 'Awe'),
(502, 26, 'Doma'),
(503, 26, 'Karu'),
(504, 26, 'Keana'),
(505, 26, 'Keffi'),
(506, 26, 'Kokona'),
(507, 26, 'Lafia'),
(508, 26, 'Nasarawa'),
(509, 26, 'Nasarawa Egon'),
(510, 26, 'Obi'),
(511, 26, 'Toto'),
(512, 26, 'Wamba'),
(513, 27, 'Agwara'),
(514, 27, 'Bida'),
(515, 27, 'Borgu'),
(516, 27, 'Bosso'),
(517, 27, 'Chanchaga'),
(518, 27, 'Edati'),
(519, 27, 'Gbako'),
(520, 27, 'Gurara'),
(521, 27, 'Katcha'),
(522, 27, 'Kontagora'),
(523, 27, 'Lapai'),
(524, 27, 'Lavun'),
(525, 27, 'Magama'),
(526, 27, 'Mariga'),
(527, 27, 'Mashegu'),
(528, 27, 'Mokwa'),
(529, 27, 'Moya'),
(530, 27, 'Paikoro'),
(531, 27, 'Rafi'),
(532, 27, 'Rijau'),
(533, 27, 'Shiroro'),
(534, 27, 'Suleja'),
(535, 27, 'Tafa'),
(536, 27, 'Wushishi'),
(537, 28, 'Abeokuta South'),
(538, 28, 'Ado-Odo/Ota'),
(539, 28, 'Egbado North'),
(540, 28, 'Egbado South'),
(541, 28, 'Ewekoro'),
(542, 28, 'Ifo'),
(543, 28, 'Ijebu East'),
(544, 28, 'Ijebu North'),
(545, 28, 'Ijebu North East'),
(546, 28, 'Ijebu Ode'),
(547, 28, 'Ikenne'),
(548, 28, 'Imeko Afon'),
(549, 28, 'Ipokia'),
(550, 28, 'Obafemi Owode'),
(551, 28, 'Odeda'),
(552, 28, 'Odogbolu'),
(553, 28, 'Ogun Waterside'),
(554, 28, 'Remo North'),
(555, 28, 'Shagamu'),
(556, 29, 'Akoko North-West'),
(557, 29, 'Akoko South-West'),
(558, 29, 'Akoko South-East'),
(559, 29, 'Akure North'),
(560, 29, 'Akure South'),
(561, 29, 'Ese Odo'),
(562, 29, 'Idanre'),
(563, 29, 'Ifedore'),
(564, 29, 'Ilaje'),
(565, 29, 'Ile Oluji/Okeigbo'),
(566, 29, 'Irele'),
(567, 29, 'Odigbo'),
(568, 29, 'Okitipupa'),
(569, 29, 'Ondo East'),
(570, 29, 'Ondo West'),
(571, 29, 'Ose'),
(572, 29, 'Owo'),
(573, 30, 'Atakunmosa West'),
(574, 30, 'Aiyedaade'),
(575, 30, 'Aiyedire'),
(576, 30, 'Boluwaduro'),
(577, 30, 'Boripe'),
(578, 30, 'Ede North'),
(579, 30, 'Ede South'),
(580, 30, 'Ife Central'),
(581, 30, 'Ife East'),
(582, 30, 'Ife North'),
(583, 30, 'Ife South'),
(584, 30, 'Egbedore'),
(585, 30, 'Ejigbo'),
(586, 30, 'Ifedayo'),
(587, 30, 'Ifelodun'),
(588, 30, 'Ila'),
(589, 30, 'Ilesa East'),
(590, 30, 'Ilesa West'),
(591, 30, 'Irepodun'),
(592, 30, 'Irewole'),
(593, 30, 'Isokan'),
(594, 30, 'Iwo'),
(595, 30, 'Obokun'),
(596, 30, 'Odo Otin'),
(597, 30, 'Ola Oluwa'),
(598, 30, 'Olorunda'),
(599, 30, 'Oriade'),
(600, 30, 'Orolu'),
(601, 30, 'Osogbo'),
(602, 31, 'Akinyele'),
(603, 31, 'Atiba'),
(604, 31, 'Atisbo'),
(605, 31, 'Egbeda'),
(606, 31, 'Ibadan North'),
(607, 31, 'Ibadan North-East'),
(608, 31, 'Ibadan North-West'),
(609, 31, 'Ibadan South-East'),
(610, 31, 'Ibadan South-West'),
(611, 31, 'Ibarapa Central'),
(612, 31, 'Ibarapa East'),
(613, 31, 'Ibarapa North'),
(614, 31, 'Ido'),
(615, 31, 'Irepo'),
(616, 31, 'Iseyin'),
(617, 31, 'Itesiwaju'),
(618, 31, 'Iwajowa'),
(619, 31, 'Kajola'),
(620, 31, 'Lagelu'),
(621, 31, 'Ogbomosho North'),
(622, 31, 'Ogbomosho South'),
(623, 31, 'Ogo Oluwa'),
(624, 31, 'Olorunsogo'),
(625, 31, 'Oluyole'),
(626, 31, 'Ona Ara'),
(627, 31, 'Orelope'),
(628, 31, 'Ori Ire'),
(629, 31, 'Oyo'),
(630, 31, 'Oyo East'),
(631, 31, 'Saki East'),
(632, 31, 'Saki West'),
(633, 31, 'Surulere'),
(634, 32, 'Barkin Ladi'),
(635, 32, 'Bassa'),
(636, 32, 'Jos East'),
(637, 32, 'Jos North'),
(638, 32, 'Jos South'),
(639, 32, 'Kanam'),
(640, 32, 'Kanke'),
(641, 32, 'Langtang South'),
(642, 32, 'Langtang North'),
(643, 32, 'Mangu'),
(644, 32, 'Mikang'),
(645, 32, 'Pankshin'),
(646, 32, 'Qua\'an Pan'),
(647, 32, 'Riyom'),
(648, 32, 'Shendam'),
(649, 32, 'Wase'),
(650, 33, 'Ahoada East'),
(651, 33, 'Ahoada West'),
(652, 33, 'Akuku-Toru'),
(653, 33, 'Andoni'),
(654, 33, 'Asari-Toru'),
(655, 33, 'Bonny'),
(656, 33, 'Degema'),
(657, 33, 'Eleme'),
(658, 33, 'Emuoha'),
(659, 33, 'Etche'),
(660, 33, 'Gokana'),
(661, 33, 'Ikwerre'),
(662, 33, 'Khana'),
(663, 33, 'Obio/Akpor'),
(664, 33, 'Ogba/Egbema/Ndoni'),
(665, 33, 'Ogu/Bolo'),
(666, 33, 'Okrika'),
(667, 33, 'Omuma'),
(668, 33, 'Opobo/Nkoro'),
(669, 33, 'Oyigbo'),
(670, 33, 'Port Harcourt'),
(671, 33, 'Tai'),
(672, 34, 'Bodinga'),
(673, 34, 'Dange Shuni'),
(674, 34, 'Gada'),
(675, 34, 'Goronyo'),
(676, 34, 'Gudu'),
(677, 34, 'Gwadabawa'),
(678, 34, 'Illela'),
(679, 34, 'Isa'),
(680, 34, 'Kebbe'),
(681, 34, 'Kware'),
(682, 34, 'Rabah'),
(683, 34, 'Sabon Birni'),
(684, 34, 'Shagari'),
(685, 34, 'Silame'),
(686, 34, 'Sokoto North'),
(687, 34, 'Sokoto South'),
(688, 34, 'Tambuwal'),
(689, 34, 'Tangaza'),
(690, 34, 'Tureta'),
(691, 34, 'Wamako'),
(692, 34, 'Wurno'),
(693, 34, 'Yabo'),
(694, 35, 'Bali'),
(695, 35, 'Donga'),
(696, 35, 'Gashaka'),
(697, 35, 'Gassol'),
(698, 35, 'Ibi'),
(699, 35, 'Jalingo'),
(700, 35, 'Karim Lamido'),
(701, 35, 'Kumi'),
(702, 35, 'Lau'),
(703, 35, 'Sardauna'),
(704, 35, 'Takum'),
(705, 35, 'Ussa'),
(706, 35, 'Wukari'),
(707, 35, 'Yorro'),
(708, 35, 'Zing'),
(709, 36, 'Bursari'),
(710, 36, 'Damaturu'),
(711, 36, 'Fika'),
(712, 36, 'Fune'),
(713, 36, 'Geidam'),
(714, 36, 'Gujba'),
(715, 36, 'Gulani'),
(716, 36, 'Jakusko'),
(717, 36, 'Karasuwa'),
(718, 36, 'Machina'),
(719, 36, 'Nangere'),
(720, 36, 'Nguru'),
(721, 36, 'Potiskum'),
(722, 36, 'Tarmuwa'),
(723, 36, 'Yunusari'),
(724, 36, 'Yusufari'),
(725, 37, 'Bakura'),
(726, 37, 'Birnin Magaji/Kiyaw'),
(727, 37, 'Bukkuyum'),
(728, 37, 'Bungudu'),
(729, 37, 'Gummi'),
(730, 37, 'Gusau'),
(731, 37, 'Kaura Namoda'),
(732, 37, 'Maradun'),
(733, 37, 'Maru'),
(734, 37, 'Shinkafi'),
(735, 37, 'Talata Mafara'),
(736, 37, 'Chafe'),
(737, 37, 'Zurmi'),
(738, 9, 'Abi'),
(739, 13, 'Ado Ekiti'),
(740, 1, 'Aba South'),
(741, 2, 'Demsa'),
(742, 3, 'Abak'),
(743, 4, 'Aguata'),
(744, 5, 'Alkaleri'),
(745, 6, 'Brass'),
(746, 7, 'Agatu'),
(747, 8, 'Abadam'),
(748, 10, 'Aniocha North'),
(750, 11, 'Abakaliki'),
(751, 12, 'Akoko Edo'),
(752, 14, 'Aninri'),
(753, 15, 'Abaji'),
(754, 16, 'Akko'),
(755, 17, 'Aboh-Mbaise'),
(756, 18, 'Auyo'),
(757, 20, 'Ajingi'),
(758, 19, 'Birni-Gwari'),
(759, 21, 'Bakori'),
(760, 22, 'Aleiro'),
(761, 23, 'Adavi, Nigeria'),
(762, 24, 'Asa'),
(763, 25, 'Agege'),
(764, 26, 'Akwanga'),
(765, 27, 'Agaie'),
(766, 28, 'Yewa South'),
(767, 28, 'Abeukuta North'),
(768, 30, 'Atakunmosa East'),
(769, 29, 'Akoko South Akure East'),
(770, 31, 'Afijio '),
(771, 32, 'Bokkos'),
(772, 33, 'Abua/Odual'),
(773, 34, 'Binji'),
(774, 35, 'Ardo-Kola'),
(775, 36, 'Bade'),
(776, 37, 'Anka');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `adddate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `body`, `adddate`) VALUES
(3, 'PASS LIST', 'THIS IS TO INFORM ALL 2017/2018 GRADUATING SET THAT THE PASS LIST HAS BEEN PASTED ON THE COLLEGE NOTICE BOARD. YOU CAN NOW CHECK AND START YOUR CLEARANCE PROCEDURE. THANKS', '2018-11-09 10:49:50.000000'),
(4, 'SUG ELECTION', 'THE STUDENT UNION GOVERNMENT ELECTION HAS BEEN SCHEDULED TO HOLD ON FRIDAY 9TH OF NOVEMBER 2018. ', '2018-11-09 10:52:18.000000'),
(5, 'HOLIDAY', 'This is to inform all 100 level students to proceed on a 2 week holiday from Wednesday 30th of January 2019 to Friday Wednesday 13th February 2019. This act is to allow the students source for school fees and also prepare for the next semester. ', '2019-01-31 15:09:57.000000');

-- --------------------------------------------------------

--
-- Table structure for table `newsfiles`
--

CREATE TABLE `newsfiles` (
  `fileId` int(11) NOT NULL,
  `newstitle` varchar(255) NOT NULL,
  `newsfile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsfiles`
--

INSERT INTO `newsfiles` (`fileId`, `newstitle`, `newsfile`) VALUES
(1, 'REGISTRATION IS IN PROGRESS', '../newsfile/'),
(2, 'ORIENTATION', '../newsfile/'),
(3, 'PASS LIST', '../newsfile/'),
(4, 'SUG ELECTION', '../newsfile/'),
(5, 'HOLIDAY', '../newsfile/DSC_4758.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `testid` bigint(20) NOT NULL DEFAULT '0',
  `qnid` int(11) NOT NULL DEFAULT '0',
  `question` varchar(500) DEFAULT NULL,
  `optiona` varchar(100) DEFAULT NULL,
  `optionb` varchar(100) DEFAULT NULL,
  `optionc` varchar(100) DEFAULT NULL,
  `optiond` varchar(100) DEFAULT NULL,
  `correctanswer` enum('optiona','optionb','optionc','optiond') DEFAULT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`testid`, `qnid`, `question`, `optiona`, `optionb`, `optionc`, `optiond`, `correctanswer`, `marks`) VALUES
(1, 1, 'His writing is as illegible as his voice is _________. ', 'Harsh', 'Inarticulate', 'Inaudible  		', 'Unbearable ', 'optionc', 1),
(1, 2, 'The miscreant tried to sow seeds of _________ among members  ', 'Accord', 'Discord', 'Concord', 'Alliance', 'optionb', 1),
(1, 3, 'Following his _____ from the University he decided to set up a poultry farm.', 'dismissal', 'dismiss', 'dismissing', 'dismissed', 'optiona', 1),
(2, 1, 'the cpkjlnnknknknjb', 'juk', 'lll', 'lk', 'jjj', 'optiona', 1),
(2, 2, 'mnnjkhkn;;mkn', 'mnknhk', 'nnknml', 'lmlml', 'lmlm', 'optiond', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reply_complain`
--

CREATE TABLE `reply_complain` (
  `replyID` int(11) NOT NULL,
  `matricno` varchar(255) NOT NULL,
  `MES` text NOT NULL,
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `adusername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `matricno` varchar(255) NOT NULL,
  `MES` text NOT NULL,
  `LOGS` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `matricno`, `MES`, `LOGS`, `status`, `name`, `username`) VALUES
(1, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'james'),
(2, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'read', 'RAHEEM HABEEB', 'admin'),
(3, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'wale'),
(4, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'depotter'),
(5, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'nwaka'),
(6, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'Nubian '),
(7, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'Admin2'),
(8, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'maths'),
(9, '201802045', 'Gifted hands by ben carson\r\n', '2018-11-02', 'unread', 'RAHEEM HABEEB', 'asadmin'),
(10, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'james'),
(11, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'read', 'ALABI KAFAYAT', 'admin'),
(12, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'wale'),
(13, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'depotter'),
(14, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'nwaka'),
(15, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'Nubian '),
(16, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'Admin2'),
(17, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'maths'),
(18, '201804007', 'Pls sir I need medical terminology and principle of management ', '2018-12-23', 'unread', 'ALABI KAFAYAT', 'asadmin');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `name`, `level_id`) VALUES
(43, 'First Semester', 33),
(44, 'Second Semester', 33),
(45, 'First Semester', 34),
(46, 'Second Semester', 34),
(47, 'First Semester', 35),
(48, 'Second Semester', 35),
(49, 'First Semester', 36),
(50, 'Second Semester', 36),
(51, 'FIRST SEMESTER', 40),
(52, 'SECOND SEMESTER', 40),
(53, 'FIRST SEMESTER', 41),
(54, 'SECOND SEMESTER', 41),
(55, 'FIRST SEMESTER', 42),
(56, 'SECOND SEMESTER', 42),
(57, 'FIRST SEMESTER', 43),
(58, 'SECOND SEMESTER', 43),
(59, 'FIRST SEMESTER', 44),
(60, 'SECOND SEMESTER', 44),
(61, 'FIRST SEMESTER', 45),
(62, 'SECOND SEMESTER', 45),
(63, 'FIRST SEMESTER', 46),
(64, 'SECOND SEMESTER', 46),
(65, 'FIRST SEMESTER', 47),
(66, 'SECOND SEMESTER', 47),
(67, 'FIRST SEMESTER', 48),
(68, 'SECOND SEMESTER', 48),
(69, 'FIRST SEMESTER', 49),
(70, 'SECOND SEMESTER', 49),
(71, 'FIRST SEMESTER', 50),
(72, 'SECOND SEMESTER', 50),
(73, 'FIRST SEMESTER', 51),
(74, 'FIRST SEMESTER', 52),
(75, 'SECOND SEMESTER', 52),
(76, 'FIRST SEMESTER', 53),
(77, 'SECOND SEMESTER', 53),
(78, 'FIRST SEMESTER', 54),
(79, 'SECOND SEMESTER', 54),
(80, 'FIRST SEMESTER', 55),
(81, 'SECOND SEMESTER', 55),
(82, 'FIRST SEMESTER', 56),
(83, 'SECOND SEMESTER', 56),
(84, 'FIRST SEMESTER', 57),
(85, 'SECOND SEMESTER', 57),
(86, 'FIRST SEMESTER', 58),
(87, 'SECOND SEMESTER', 58),
(88, 'FIRST SEMESTER', 59),
(89, 'SECOND SEMESTER', 59),
(90, 'FIRST SEMESTER', 60),
(91, 'SECOND SEMESTER', 60),
(92, 'FIRST SEMESTER', 61),
(93, 'SECOND SEMESTER', 61),
(94, 'First Semester', 64),
(95, 'Second Semester', 64),
(96, 'SECOND SEMESTER', 51),
(97, 'FIRST SEMESTER', 63),
(98, 'SECOND SEMESTER', 63),
(99, 'FIRST SEMESTER', 65),
(100, 'SECOND SEMESTER', 65),
(101, 'FIRST SEMESTER', 66),
(102, 'SECOND SEMESTER', 66),
(103, 'first semester', 37),
(104, 'Second Semester', 37),
(105, 'first semester', 38),
(106, 'Second Semester', 38),
(107, 'first semester', 39),
(108, 'Second Semester', 39);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `name`) VALUES
(1, 'Abia State'),
(2, 'Adamawa State'),
(3, 'Akwa Ibom State'),
(4, 'Anambra State'),
(5, 'Bauchi State'),
(6, 'Bayelsa State'),
(7, 'Benue State'),
(8, 'Borno State'),
(9, 'Cross River State'),
(10, 'Delta State'),
(11, 'Ebonyi State'),
(12, 'Edo State'),
(13, 'Ekiti State'),
(14, 'Enugu State'),
(15, 'FCT'),
(16, 'Gombe State'),
(17, 'Imo State'),
(18, 'Jigawa State'),
(19, 'Kaduna State'),
(20, 'Kano State'),
(21, 'Katsina State'),
(22, 'Kebbi State'),
(23, 'Kogi State'),
(24, 'Kwara State'),
(25, 'Lagos State'),
(26, 'Nasarawa State'),
(27, 'Niger State'),
(28, 'Ogun State'),
(29, 'Ondo State'),
(30, 'Osun State'),
(31, 'Oyo State'),
(32, 'Plateau State'),
(33, 'Rivers State'),
(34, 'Sokoto State'),
(35, 'Taraba State'),
(36, 'Yobe State'),
(37, 'Zamfara State');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stdid` bigint(20) NOT NULL,
  `stdname` varchar(40) DEFAULT NULL,
  `stdpassword` varchar(40) DEFAULT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stdid`, `stdname`, `stdpassword`, `emailid`, `contactno`, `address`, `city`, `pincode`) VALUES
(1, 'frank', 'ä:ûáe', 'itaforfrancis@gmail.com', '07065907948', 'Ogun', 'Nubi Oludayo James', '1'),
(2, 'nubi', 'ó±k+¶}2\n', 'nubiolujimmy@gmail.com', '07063038955', 'ijari', 'Ijebu', '0009'),
(3, 'francis', 'ä:ûá±š6', 'itaforfrancis1@gmail.com', '09098787888', 'lagos', 'ITAFOR FREEDOM', '11'),
(4, 'ade', 'cu', 'wale@yahoo.com', '08055355933', 'kkk', 'adeolu', '122'),
(5, 'wale', '.»Å', 'ke@gmail.com', '08044334433', 'gfd', 'lagos', '444'),
(6, 'oye', '+\\=', 'o@gmail.com', '09088665544', 'oli', 'femi', '2'),
(7, 'Adelakun', '«¿¡ÒLFdX2Dù', '3okeajoimasayi@email.com', '09061158176', 'Depotter hostel', 'Adelakun Kehinde ayomidipupo', '158186'),
(8, '88952634', '}D[Å$)', '88952634', '88952634', '88952634', '88952634', '88952634'),
(9, 'Akorede', 'Å¶¤Œð', 'Mmnldamilola@gmail.com', '08156866902', 'No1 ipebi ijebu imusin', 'Tanimowo akorede busayo', '678906');

-- --------------------------------------------------------

--
-- Table structure for table `studentquestion`
--

CREATE TABLE `studentquestion` (
  `stdid` bigint(20) NOT NULL DEFAULT '0',
  `testid` bigint(20) NOT NULL DEFAULT '0',
  `qnid` int(11) NOT NULL DEFAULT '0',
  `answered` enum('answered','unanswered','review') DEFAULT NULL,
  `stdanswer` enum('optiona','optionb','optionc','optiond') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentquestion`
--

INSERT INTO `studentquestion` (`stdid`, `testid`, `qnid`, `answered`, `stdanswer`) VALUES
(1, 1, 1, 'answered', 'optionb'),
(1, 1, 2, 'answered', 'optionb'),
(1, 1, 3, 'answered', 'optionb'),
(1, 2, 1, 'answered', 'optionb'),
(1, 2, 2, 'answered', 'optionc');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stdId` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `stdaddress` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `lga` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `maritalstatus` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `discipline` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `matricno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nokname` varchar(255) NOT NULL,
  `nokphone` varchar(255) NOT NULL,
  `nokaddress` varchar(255) NOT NULL,
  `user_status` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `regdate` date NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stdId`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `stdaddress`, `state`, `lga`, `gender`, `dob`, `religion`, `maritalstatus`, `faculty`, `dept`, `discipline`, `level`, `matricno`, `password`, `nokname`, `nokphone`, `nokaddress`, `user_status`, `user_type`, `regdate`, `picture`) VALUES
(1, 'SAKA', 'BASIRAT ', 'ADEJOKE', 'SAKABASIRAT1@GMAIL.COM', '08025484288', '11, ADEBAYO STREET,AJEBO ORU ', '25', '488', 'Female', '1997/03/23 00:00', 'Islamic ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602078', 'e85916df93bacae6d48ee742d9ad6a3b', 'SAKA RISIKAT', '07084940700', '7,ASHAFA STREET, LANGBASA, AJAH ETI OSA LAGOS', 'Active', 'user', '2018-07-16', 'images/tmp-cam-1012077577.jpg'),
(2, 'Kapala', 'Felicia ', 'Goodness', 'gooddypye@gmail.com', '08064452225', '22,shonubi street oru-ijebu ', '28', '544', 'Female', '1995/11/28 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602097', 'ae8ae8514958b94038a19756e012b72e', 'Samuel Kone', '08107769155', '29,Agric Road Itoikin', 'Active', 'user', '2018-07-18', 'images/1531904776119.jpg'),
(3, 'SHOFELA', 'OLUWASEUN', 'MARY ', 'Shofelaoluwaseun3@gmail.com', '08148696129', '23.iyanucele ifo local government ', '28', '542', 'Female', '2018/07/18 09:39', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602014', 'e8c33a4ab6bfd05f27999711210f2c5b', 'Shofela tobi', '08148885739', '23.iyanucele ifo local government ', 'Active', 'user', '2018-07-18', 'images/BeautyPlus_20180307173534_save-1.jpg'),
(4, 'BOLARINWA ', 'FASILAT ', 'DAMILOLA ', 'damilola112@gmail.com', '09023529957', 'NO 16 OJOBODO STREET MARKET BUSTOP ALONG BADAGRY EXPRESSWAY LAGOS ', '30', '594', 'Female', '1996/01/18 00:00', 'MUSLIM ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 LEVEL ', '201602082', '1c1de4908dd1bb3060d8466d894d6f3a', 'MR BOLARINWA ', '08122325664', 'NO 16 OJOBODO STREET MARKET BUSTOP ALONG BADAGRY EXPRESSWAY LAGOS ', 'Active', 'user', '2018-07-18', 'images/tmp-cam--425878579.jpg'),
(5, 'Majekodunmi', 'Funmilola', 'Omolara ', 'Majek313@gmail.com', '07069585074', '21 okesopin', '28', '767', 'Female', '1995/03/17', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 level', '201602015', 'd862d810a0925fd880027f724cbceadc', 'Toyin', '08028404834', '24, Babs jide otutu street ayobo', 'Active', 'user', '2018-07-18', 'images/15319069646881925362746.jpg'),
(6, 'Badewa', 'Aminat', 'Temitope', 'hameenatab@gmail.com', '09037259141', 'No 34 orimolusi oke tako igbaire ijebu igbo', '28', '544', 'Female', '1992/12/03 00:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602031', 'c1c92731c4e63b9f216c3be779625a4f', 'Badewa Adebukonla', '08052386354', 'No 34 orimolusi oke tako ijebu igbo', 'Active', 'user', '2018-07-18', 'images/HAMEENAT.jpg'),
(7, 'Ugochukwu', 'Eucharia', 'Nkem', 'Eucharia_ugo@yahoo.com', '09097491481', 'Depotter hostel', '17', '284', 'Female', '1974/09/24 10:27', 'Christain', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602069', '6706864efed41f45d95ca45082f1a802', 'Mr.  Chijioke ugochukwu', '08034814580', 'Lagos state ', 'Active', 'user', '2018-07-18', 'images/tmp-cam-1119479770.jpg'),
(8, 'OTUSANYA ', 'OLUWAREMILEKUN', 'ADEBIMPE', 'remmygold12345@gmail.com', '08134719629', 'DE POTTER HOSTEL ', '28', '552', 'Female', '1995/09/29 10:23', 'Christian ', 'Select One', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602025', '1b1d180bc3cb24b836615744954e594b', 'Anuoluwapo', '08038928558', '2oluwatoyin street ogba aguda Lagos state ', 'Active', 'user', '2018-07-18', 'images/IMG_20180719_112651_546.JPG'),
(9, 'BANKOLE', 'JANET', 'OLUWATOBILOBA ', 'bankolejanet035@gmail.com', '08147230874', 'No 33 BALOGUN STREET ', '25', '483', 'Female', '1994/11/03 00:00', 'CHRISTIAN ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 level', '201602017 ', '54cc7c93fed909baa0e8b47445f581e8', 'MRS MARGARET BANKOLE', '07081435343', 'NO 33 BALOGUN STREET ', 'Active', 'user', '2018-07-18', 'images/tmp-cam--187926337.jpg'),
(10, 'HAMEED', 'BASIRAT', 'BUKOLA', 'bukolaomolabake@yahoo.com', '08028981152', '10, yusuf street ijede ikorodu lagos.', '25', '489', 'Female', '2018/07/18 11:19', 'muslim', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602005', '7541883d0c22a8be8ae04c4fe1b915d3', 'ADEDEJI YUSUF ABIOLA', '08029764371', '4 LANRE KUYE STREET IJEDE IKORODU LAGOS', 'Active', 'user', '2018-07-18', 'images/IMG_20180718_091619.jpg'),
(11, 'ADEBANJO', 'MARY', 'ADEDOYIN', 'adebanjoharddeydoyin@yahoo.com', '08122441677', '10, Adifase Street bariga', '28', '553', 'Female', '1995/06/20 00:00', 'Christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602034', '1e74414a1472de240fefe280bb61b9fb', 'Mrs oluwabunmi adebanjo', '09024408331', '10 Adifase Street bariga lagos', 'Active', 'user', '2018-07-18', 'images/BeautyPlus_20180629084446_save.jpg'),
(12, 'SHONIBARE', 'OLAJUMOKE', 'BARAKAT', 'albarkajummy@gmail.com', '08149339689', 'NO 8 A JOKE  BODUNDE AJANGBADI CELE OJO LOCAL GOVERNMENT ', '24', '474', 'Female', '1994/01/24 00:00', 'MUSLIM ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 ', '201602019 ', 'e10adc3949ba59abbe56e057f20f883e', 'SHONIBARE ALABI YUNUS', '08085000987', 'No 8 A JOKE BOUNDED AJANGBADI CELE OJO LOCAL GOVERNMENT ', 'Active', 'user', '2018-07-18', 'images/20180720_101154.jpg'),
(13, 'ABUBAKRY', 'ISLAMIYAT', 'TAIWO', 'ABUBAKRYISLAMIYAT01@GMAIL.COM', '07018434985', 'JAMO VILLA', '28', '552', 'Female', '1995/06/01 00:00', 'ISLAMIC', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200LEVEL', '201602043', 'f3510f07fe3034c27bc49be5c0e1c458', 'ABUBAKRY ISMAIL KEHINDE', '09028967986', 'KAJOLA STREET EJIGBO LAGOS', 'Active', 'user', '2018-07-18', 'images/2018-07-18-14-31-52-332.jpg'),
(14, 'AKINSOWON ', 'OLUWASEYIFUNMI', 'ABIDEMI ', 'oyetan.abidemi@yahoo.com', '09095618413', 'No 4 Opeyemi Oyetan street Offin igbogbo Ikorodu Lagos State Nigeria ', '29', '570', 'Female', '1983/10/27 00:00', 'CHRISTIAN ', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201502011', '0e37de22b5bb43d2261a165cc0173ff2', 'AKINSOWON BABATUNDE ', '08060308089', 'LEADWAY INSURANCE LIMITED ', 'Active', 'user', '2018-07-18', ''),
(15, 'EZEKIEL', 'MARIA', 'OLUWAFUNMILAYO', 'phunmardey78@gmail.com', '08036713534', '5, AGBON STREET, ORU-IJEBU', '28', '538', 'Female', '2018/07/18 20:27', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602063', '6fca40777387913474e8dbb778a2811d', 'EZEKIEL OLUWATAMILORE', '08023841322', '5, AGBON STREET, ORU-IJEBU', 'Active', 'user', '2018-07-18', 'images/funmi.jpg'),
(16, 'ROTIMI', 'ADEBOLA', 'BOLUWATIFE', 'boluwatifehannah@gmail.com', '08156808350', '5, AGBON STREET, ORU-IJEBU', '13', '240', 'Female', '2018/07/18 20:50', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602087', '1778530ac76c25ccfde13bfa4a7f940e', 'IMISI OLAMILEKAN', '08026744669', '5, AGBON STREET, ORU-IJEBU', 'Active', 'user', '2018-07-18', 'images/ROTIMI.jpg'),
(17, 'HAMZAT', 'ISLAMIYAH', 'OLAMIDE', 'hamzatislamiyah194@email.com', '08179569488', '3, ALOWONLE, WEST END', '28', '537', 'Female', '1998/04/19 00:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602041', '40a92d95abc5e5ec6fbfa4888c43d63d', 'HAMZAT SODIQ', '07010807268', '8, ORE OFE CLOSE AKUTE', 'Active', 'user', '2018-07-19', 'images/IMG_20180731_121400.jpg'),
(18, 'ADIGUN', 'WURAOLA', 'AMINAT', 'talknikky20@gmail.com', '08182130093', 'DE POTTER HOSTEL ', '25', '491', 'Female', '1995/09/20 10:33', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602081', '93ca6d8df6ae508a569e4cf914bff31d', 'OLUWATOSIN', '08080828725', '8 OLANREWAJU STREET, LEKKI PHASE 2', 'Active', 'user', '2018-07-19', 'images/IMG_20180719_112503_171.JPG'),
(19, 'Ilupeju', 'shadiat', 'Ayanfolake', 'folakeilupeju@gmail.com', '09099205948', '10 ilesanmi close off Anthony uzum estate akute ogun state.', '30', '585', 'Female', '1993/09/30 04:00', 'Islam', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 ', '201602036', 'd318f9d9dcfc8b28d5772e04719b45a9', 'Alh ilupeju', '08023407714', '10 ilesanmi close off Anthony uzum estate akute ', 'Active', 'user', '2018-07-19', 'images/20180201_090105.jpg'),
(20, 'Oladuntoye', 'Florence', 'Ayodeji', 'floridadeji28@gmail.com', '09033846921', '2,oladuntoye crescent,Offin ile,ikorodu, Lagos state.', '24', '475', 'Female', '1998/01/02', 'Christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602096', '1eb644a77d1d8cc224b66c3fa4c6fdbd', 'Oladuntoye Emmanuel', '08023191357', '2,Oladuntoye crescent,Offin ile,Ikorodu,Lagos state.', 'Active', 'user', '2018-07-19', 'images/tmp-cam-356731250.jpg'),
(21, 'Ogunde', 'Oluwafunmilayo', 'Deborah', 'Ogundeoluwafunmilayo@gmail.com', '08120164251', 'Oru ijebu ', '28', '544', 'Female', '2018/07/19 17:23', 'Christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602092', '4bbbc5dd3b464b9c4fd226dfc4b9eda7', 'Ogunde Ololade', '08120164251', 'ikorodu, Lagos state', 'Active', 'user', '2018-07-19', 'images/IMG_20170608_141048.jpg'),
(22, 'Odunewu', 'Micheal', 'Oluwasegun', 'Smalldoctormike@gmail.com', '09075566738', 'No 10, Aiyegbami street,liberty junction oru ijebu ogun state. ', '28', '538', 'Male', '1992/07/26', 'Christianity ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602002', '0ca1f2a998c47cdc8aa5ed814bc2d10f', 'Ojo oluwatoyin', '08084522738', 'No 7, oloruntedo estate igbesa ogun state. ', 'Active', 'user', '2018-07-19', 'images/BeautyPlus_20180723124851_save.jpg'),
(23, 'SHODA', 'OMOTOYOSI', 'MERCY', 'toyshezzyshowdar01@gmail.com', '08143129751', '23 KEHINDE SHOFOLA WAY, IKENNE', '28', '555', 'Female', '1992/07/22 20:38', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602048', 'fb3552728d31f1ee47c19bc85e757f55', 'SHOBOWALE OLUWATOYOSI', '08108442487', '23 KEHINDE SHOFOLA WAY, IKENNE', 'Active', 'user', '2018-07-19', 'images/toyosi.jpg'),
(24, 'Akindele', 'Folake', 'Ganiyat', 'Oluwafolakemi@gmail.com', '07033257591', '34,Araromi street mushin lagos', '28', '541', 'Female', '1987/04/11 00:00', 'Muslim ', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602083', 'b4bdda26e3dffc7404604e05f3f21173', 'Mr Akindele Akanji', '08184556515', '34,Araromi street mushin lagos', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180608104515_fast.jpg'),
(25, 'MONRUF', 'SHADIAT', 'MORENIKEJI', 'monrufshadiat05@gmail', '09090563449', '38,BUNMI AJEKEYI STEER', '31', '630', 'Female', '2018/07/20 09:32', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602052', '2bf7fcd6f0937533ba31d384902e58aa', 'MRS MONRUF', '08185162720', '38,BUNMI AJEKAYI STEER', 'Active', 'user', '2018-07-20', 'images/IMG-20180530-WA0005.jpg'),
(26, 'IGBOKOYI', 'SUSAN', 'FOLORUNSHO', 'Igbokoyisusan@gmail.com', '09095093818', '3,FOWOSEJE STREET OWODE-ISE', '25', '489', 'Female', '1997/10/06 09:50', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602013', 'f906163e2db7188e7470bae93276224c', 'MOSES', '08120517787', '3,AYEIGBAMI STREET OWODE-ISE', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180715064856_save.jpg'),
(27, 'ATOLAGBE', 'RASHIDAT', 'TEMITOPE', 'atolagbe@yahoo.com', '08051289158', '25,adebayo ige street ijegun ', '24', '478', 'Female', '2018/07/20 10:06', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602089', '93fdb15ad5bd1a5a9b532bb53c090a57', 'atolagbe', '08034852779', '25,adebayo ige street judging lagos', 'Active', 'user', '2018-07-20', 'images/FB_IMG_15195774488203975.jpg'),
(28, 'ADELEKE', 'OMOLARA', 'RODIAT', 'adelekeomolararodiat5@gmail.com', '07037811494', '91kekereowo street ilasamaja mushin lagos', '31', '609', 'Female', '1996/08/31 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602009', 'eafacd794e7113e83e36c3936da86bcf', 'ADELEKE MORUFA', '08025393493', '91kekereowo street ilasamaja mushin lagos', 'Active', 'user', '2018-07-20', 'images/IMG_20180520_085050.jpg'),
(29, 'Yusuf', 'Munirat', 'Omowunmi', 'yusufmunirat00@gmail.com', '09076098618', 'Odosentalu street ijebu- Igbo ,Ogun state', '28', '544', 'Female', '1999/07/31 10:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602093', 'd9fa2933b7a04ae448a4cd6c3522136e', 'Yusuf Abdul- wasiu', '08052152207', 'Odosentalu street ijebu-Igbo Ogun state', 'Active', 'user', '2018-07-20', 'images/IMG_20180713_134135.jpg'),
(30, 'Eshinlokun ', 'Ruth', 'Oluwagbemisola ', 'Geshinlokun@gemail.com', '08026949358', 'No7 otolowo street badore cocacola bus stop', '25', '488', 'Female', '1997/07/22 10:47', 'Christain', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602080', '91e5973c95daaa446d6063dcbdfbc97c', 'Gideon ', '07030143077', 'No7 otolowo street badore cocacola bus stop', 'Active', 'user', '2018-07-20', 'images/IMG_20180720_110036.jpg'),
(31, 'Ojo', 'Tolulope', 'Oreoluwa', 'emmanuelojo2014@gmail.com', '09096854633', 'Depotter hostel', '28', '544', 'Female', '2018/07/20 11:09', 'Christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602094', '29f1d8f3f10fd4ed8ded0501f0b371b6', 'Ojo Emmanuel', '08033821221', '1,Anuoluwapo,ilemijan,Ogun state', 'Active', 'user', '2018-07-20', 'images/tmp-cam-1811099904.jpg'),
(32, 'AFOLABI', 'SARAH', 'OLUWATUMININU', 'Sarahtumininu@gmail.com', '08162475583', '19 GOLDEN ESTATE', '30', '589', 'Female', '1996/02/16 10:54', 'CHRISTAIN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602001', '9e9d7a08e048e9d604b79460b54969c3', 'AFOLABI AYOOLUWA', '07030861247', '19 GOLDEN ESTATE', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180714070246_save.jpg'),
(33, 'Obi', 'Ngozi', 'Jennifer', 'obingozi97@gmail.com', '08131150609', ' School Hostel', '28', '544', 'Female', '2018/02/10 11:10', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602007', '7b2b293ea22776774d84f9fb03611075', 'Obi Oluchi Vera', '08134343629', '20A Oduduwa crescent street Iju lagos', 'Active', 'user', '2018-07-20', 'images/BeautyPlusMe_20180326161305_fast.jpg'),
(34, 'AZEEZ', 'RIHANAT', 'OMOWUNMI', 'arihanat35@gmail.com', '09095037876', 'DE POTTER HOSTEL', '28', '544', 'Female', '2018/07/20 11:34', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602004', '9e77537239b9788ad1d1da386fea461e', 'Azeez aminat', '08032947494', 'lagos state', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180730135342_save.jpg'),
(35, 'IKHELOA', 'GIFT', 'QUEEN', 'Ikheloagift@gmail.com', '07038674244', '45 agura sabo sagamu', '12', '215', 'Female', '12/2/1992', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702041', 'b2dd850535a834ca3b604340781a46ab', 'Obehi', '08162462876', '45 agura sabo sagamu', 'Active', 'user', '2018-07-20', 'images/â€ª+234 816 246 2876â€¬ 20180719_140255.jpg'),
(36, 'Fashola', 'Oluwaseun', 'Victoria', 'victoriaoluwaseun30@gmail.com', '09099228675', 'De potter hostel', '28', '544', 'Female', '2018/07/20 11:47', 'christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602062', '19a8a7e7a48261353f8e19efa5d5a1a5', 'Fashola Abayomi Joseph', '08186481997', '1 fashola abayomi drive ,offin ile ,ikorodu, lagos state', 'Active', 'user', '2018-07-20', 'images/tmp-cam-115447819.jpg'),
(37, 'OLADELE', 'ADEOLA ', 'OYINDAMOLA', 'OLADELE_OYINDAMOLA@YAHOO.COM', '08131577515', '12,TAWA BADIRU CLOSE, AJAH LAGOS', '31', '626', 'Female', '1993/10/20 11:45', 'CHRISTIAN ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702031', 'c372a15d35fbf0133cd45297957c6a67', 'ADEKUNLE OPEYEMI', '08136341214', '12,TAWA BADIRU CLOSE, AJAH LAGOS', 'Active', 'user', '2018-07-20', 'images/tmp-cam--484174401.jpg'),
(38, 'Akinyemi', 'Mary', 'Odunayo', 'maryodunayo05@gmail.com', '08187226907', '1 ododoroye junction,sawmill odoransonyin', '31', '620', 'Female', '1993/12/30 11:51', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602065', 'a91f7d0f27f3c35bd2692c05876cc13f', 'Akinyemi olaitan', '08166115332', '86 obi bus stop, imude lagos', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180730125648694_save.jpg'),
(39, 'OLAYIWOLA', 'BARAKAT', 'BISOLA', 'musbaubidemi200@gmail.com', '07017794704', 'No59 olomi academy jubilerous,Ibadan, Oyo state', '31', '625', 'Female', '1997/06/16 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 level', '201602020', '4104d1e4f0c1f7a25a10bb0fa88d4897', 'OLAYIWOLA MARIAM', '07917794704', 'No56 smallsharaton', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180626115216_save.jpg'),
(40, 'Sanusi', 'Balikis', 'Motunrayo', 'qwin.Motunrayo@gmail.Com', '08181666477', '103 oworoshoki lagos state', '28', '544', 'Female', '1996/02/05 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '2000', '201602072', '17247e4767b5092b1164e7f8106bd3bf', 'Idayat', '08181701027', '103 oworoshoki lagos state', 'Active', 'user', '2018-07-20', ''),
(41, 'Adedeji', 'Tosin', 'Adenike', 'Adedejitosin@Email', '08143858678', 'No37,tai zone 3Amuloko area', '31', '626', 'Female', '1994/10/16 00:00', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602086', 'b415d8343d7b8614bfffde8c666352aa', 'Adedeji Adenike', '08052173598', 'No37 tai zone3 idiosan amulokopo', 'Active', 'user', '2018-07-20', 'images/BeautyPlus_20180705131401206_save.jpg'),
(43, 'Gbadebo', 'Aminat', 'Fadekemi', 'Fadekemitiwatope31@gmail.com', '09099307493', 'Oru road', '28', '544', 'Female', '1993/05/31 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '20160232', '9ce58e3f126a9dff09efd57844d067ff', 'Gbadebo lolade', '09020123955', 'Oru', 'Active', 'user', '2018-07-21', ''),
(44, 'Akanbi', 'Bukola', 'Serah', 'Akanbibukola.s85@gmail.com', '08109792510', 'Oru road', '10', '183', 'Female', '1995/01/27 00:00', 'Christian', 'Select One', 'DEPARTMENT OF HEALTH EDUCATION', 'Health Assistant (Medical)', '0', '200', '201602024', 'c10ea84e5303c5932ce483f76717a1ba', 'Akanbi Paul', '08088644933', 'Olowotedo', 'Active', 'user', '2018-07-21', ''),
(45, 'Oseni', 'Gbenga', 'Olatunji', 'Oseniolatunjigbenga@gmail.com', '08163391056', 'Odorashanyi street ijebu igbo', '28', '551', 'Male', '1993/06/27 09:39', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602012', 'bdd882ffb11d3e49df6ac1ef60b17323', 'Oseni Elijah ', '09056252573', 'Orile ilugun kila.  Ogun state', 'Active', 'user', '2018-07-23', 'images/IMG_20171001_185449.jpg'),
(46, 'Arowolo', 'Tobiloba', 'Dorcas', 'jemic2112@gmail.com', '09035946122', '4,odorasanyin along tundenson hotel', '25', '492', 'Female', '1995/11/06 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201702010', 'd67d9a714535de4e2d47028d225aa6e7', 'Arowolo itunuoluwa', '07055879071', '4, wahab omotola street,magbo estate, ogijo ogun state', 'Active', 'user', '2018-07-23', 'images/DSC_8060a.jpg'),
(47, 'Sosanya', 'Christiana', 'Adebusola', 'adebusolachristiana@gmail.com', '07051139779', '8 orimolusi street oke sopen ijebu igbo', '28', '544', 'Female', '1984/11/22 00:00', 'Christian', 'Select One', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602068', 'f76f046cb44a56e762cc8e6abcd21a84', 'Sosanya Idowu samuel', '08055444520', '8 orimolusi street oke sopen', 'Active', 'user', '2018-07-23', 'images/15323374482941925946252.jpg'),
(48, 'Kolawole', 'Onoara', 'Taiwo', 'kolawolegbemisola@gmail.com', '09083673651', '3 abiodun olowun crescent magboro lagos', '30', '595', 'Female', '1990/10/30 17:00', 'Christian', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602042', '095cc41c22c04ea29dc1bc68b33a054c', 'Olugbade oluwatosin olusola', '07014272848', '3 abiodun olowu crescent magboro lagos', 'Active', 'user', '2018-07-24', ''),
(49, 'TIAMIYU', 'KHADIJAT', 'ABIKE', 'tiamiyukhadijatabike@gmail.com', '07033290109', '23,SERIKKI COMPOUND', '25', '499', 'Female', '1996/05/18 00:06', 'ISLAM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602046', '266e59dde9aeb7f1c03cef097df196a6', 'TIAMIYU QUADRI AYINDE', '08080452482', '23,SERIKKI COMPOUND,BARIGA,LAGOS', 'Active', 'user', '2018-07-25', 'images/IMG-20180224-WA0004.jpg'),
(50, 'TAIWO', 'TOMIWA', 'ADEBIMPE', 'ADEBIMPETOMIWA@gmail.com', '09052872117', 'No 10 ADESEMOWO STREET OKE TAKO IJEBU IGBO ', '31', '616', 'Female', '1998/08/20 00:00', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602070', 'a47822048991352221129ebcf9e70c32', 'TAIWO TOMILOBA', '09056368068', 'No 10 ADESEMOWO STREET OKE TAKO IJEBU IGBO', 'Active', 'user', '2018-07-25', 'images/IMG_20180519_133841.jpg'),
(52, 'Abdulfatai', 'Nofisat', 'Bukola', 'olakunlenifemi6@gmail.com', '09030057110', 'No1 olorunisola street,mowe,Ogun state', '30', '594', 'Female', '1996/12/24 09:47', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602039', '6babcc46ecc95e45a991cb523a499914', 'Abdulrouf kafayat', '08039105379', 'No1 olorunisola street,mowe,Ogun state', 'Active', 'user', '2018-07-26', 'images/Snapchat-1544428943.jpg'),
(53, 'OLAYIWOLA', 'MORUFAT ', 'OLUWAKEMI', 'arikeade403@gmail.com', '08099858486', '21A cele street,Rasaq bus/top,ileba awori ojo', '31', '619', 'Female', '2018/07/26 09:51', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 level', '201602026', '2dc53840476eed47b26322ffd7dd0714', 'ABDULLAHI  OLAITAN TAIWO', '08099858486', '21A Cele street,Rasaq bus/top ,ileba awori ojo', 'Active', 'user', '2018-07-26', 'images/tmp-cam-36121687.jpg'),
(54, 'Ojugbele', 'Oluwaseun', 'Kikelomo', 'Oluwaseunfunmiojugbele@gmail.com', '09034274127', 'O9 mayungbe odorasanyin ijebu igbo', '28', '767', 'Female', '1993/11/15 09:47', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602075', 'b1c828b99e95960f78f2fec0b3ea7f8e', 'Popoola Adetayo', '08136389322', '11idowa ijebo ode', 'Active', 'user', '2018-07-26', 'images/IMG_20180730_051537_131.JPG'),
(55, 'Babaranti', 'Blessing', 'Olamide', 'Chriatianah859@gmail.com', '09091154465', 'De Potter hostel', '28', '550', 'Female', '2018/07/26 11:25', 'Christianity ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602079', '69a269ce608a5daf0c3ca2a4a5485ab4', 'Babaranti Boluwatife peace', '09065308861', '22unity street loburo mowe ogun state', 'Active', 'user', '2018-07-26', 'images/BeautyPlus_20180731091841_fast.jpg'),
(56, 'Atanda', 'Olamide', 'Rukayat', 'Atandaolamiderukayat667@gmail.com', '08142152039', '50, Alhaji Popoola Street,  Offin ile, igbogbo, ikorodu', '30', '594', 'Female', '2000/03/12 10:27', 'Islam', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602053', '916beebe57c21bd9ceafc16f4e3244d1', 'Mrs Atanda', '08030731199', 'Offin', 'Active', 'user', '2018-07-26', 'images/1532613169898887670227.jpg'),
(57, 'Tobun', 'Haroun ', 'Dolapo ', 'www.dollydizzy44@gmail.com', '08183215039', '1,adewole adesanya street,  off shade, Epe,  lagos state', '25', '487', 'Male', '1996/09/19 09:29', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602037', 'f2be7394e9870513f710fbdf466a0bbf', 'Mrs Khadijat Tobun ', '08163211596', '1,adewole adesanya street, off shade, Epe, lagos state ', 'Active', 'user', '2018-07-27', ''),
(58, 'ALIMI', 'MOJISOLA', 'AFUSAT', 'mojysolarmojysolar@gmail.com', '07082026761', '30,MOYEGESO CLUB ROAD ITELE', '28', '543', 'Female', '1998/03/16 00:00', 'ISLAM', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200Level', '201602047', '5ce031457af402a04872bb5f677c4ba7', 'ALIMI NOFISAT TITILAYO', '07082026761', '30,MOYEGESO CLUB ROAD ITELE', 'Active', 'user', '2018-07-30', 'images/BeautyPlus_20180620153336_fast.jpg'),
(59, 'NURENI', 'ZAINAB', 'KOFOWOROLA', 'nurenizainab2@gmail.com', '08151757513', '9,OJOWO STREET IJEBU IGBO', '28', '544', 'Female', '1996/08/30 00:00', 'Muslim ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602066', '8fb9382b20501442c5bb59b0cdf8c0be', 'MRS NURENI', '08059446981', '9 OJOWO STREET IJEBU IGBO', 'Active', 'user', '2018-07-30', 'images/Snapchat-736627288.jpg'),
(60, 'Oyeyemi', 'Wasilat', 'Yetunde', 'Queenexcel6930@gmail.com', '08100196930', '14,independent street,ogunstate', '31', '611', 'Female', '1998/04/12 00:00', 'Muslim ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602003', 'e6b6b620e1cf2d95854b5dd651a218ac', 'Oyeyemi basit atanda', '07060850072', '14,independent street, ogunstate ', 'Active', 'user', '2018-07-30', 'images/BeautyPlus_20180718114506_save.jpg'),
(61, 'Ananni', 'Joy', 'Ayomide', 'anannijoy@gmail.com', '09094753246', '53 shokas street Ijebu igbo', '28', '544', 'Female', '1997/08/02 11:55', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602008', '0dd09cfce09c363508c38052fc58c63d', 'Mrs blessing Ananni', '09098050171', '8 molitala street ojo lagos', 'Active', 'user', '2018-07-30', 'images/tmp-cam-1399874647.jpg'),
(62, 'Joseph', 'Gift', 'Esin', 'giftjoseph586@gmail.com', '08181876139', '53 shokas street Ijebu igbo', '28', '544', 'Female', '1996/02/14 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602057', '671f8ff3e6c9b665f711c75a801c04b1', 'Mrs Lovina Joseph', '09098979175', '18b Hassan street Afro media ojo lagos', 'Active', 'user', '2018-07-30', 'images/tmp-cam-1444189137.jpg'),
(63, 'LAWAL', 'ESTHER', 'AYOMIDE', 'ESTHERAYOMIDE56@gmail.com', '09078779509', 'No 51 AYOLO BUS STOP OGUN STATE', '28', '767', 'Female', '1996/12/26 00:00', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602056', '247e081462a43b070e2b540c477d78fd', 'MR LAWAL', '08028037921', 'No 51 AYOLO BUS STOP OGUN STATE', 'Active', 'user', '2018-07-30', 'images/IMG_20180327_183455.jpg'),
(64, 'Adejumo', 'Mary', 'Ibukun', 'MaryAdejumoIbukunoluwa@gmail.com', '08174569838', '45 soccers', '28', '544', 'Female', '2018/07/30 18:58', 'Christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602023', 'd30d58e43664004454c822238a639fc1', 'Adejumo Adewunmi', '08188719030', 'Lagos state', 'Active', 'user', '2018-07-30', 'images/tmp-cam-2082458330.jpg'),
(65, 'Aniagolu', 'Onyedika', 'Divine', 'talkdivine6@gmail.com', '08139396531', 'Depotterhostel', '14', '250', 'Female', '1996/08/16 20:28', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602038', '72db6d3e91d7b235e339e75d94d9c630', 'Veronica', '07065176509', 'Ojo Lagos state', 'Active', 'user', '2018-07-30', 'images/Snapchat-1935545268.jpg'),
(66, 'Imimole', 'Queen', 'Juliet', 'Queenimole@gmail.com', '09085482533', '22, Onanuga Street, Off Ota', '28', '546', 'Female', '2000/03/12 10:27', 'Christain', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602091', '25f9e794323b453885f5181f1b624d0b', 'Zainab Abas', '09085482533', '22, Onanuga Street, off otta', 'Active', 'user', '2018-07-31', 'images/1533027461781511405728.jpg'),
(67, 'ALLI', 'YETUNDE', 'HALIMAT', 'YEHTUNDEX@YAHOO.COM', '07065801356', '49,ADEKITAN STREET PALM AVENUNE', '28', '537', 'Female', '1996/10/19 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602010', '8744874f5075672c318f973812fb9075', 'ALLI RIDWAN', '08082126215', '49,ADEKITAN STREET PALM AVENUE MUSHIN LAGOS', 'Active', 'user', '2018-07-31', 'images/1533027573169-1385967400.jpg'),
(68, 'KUYE', 'YUSIRAT', 'MOTUNRAYO', 'Motunrayoomolabake25@gmail.com', '08100934578', '31 alimi oke street oshodi lagos', '28', '537', 'Female', '2018/07/31 10:24', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602088', 'f2408e7a0ebd7e582d1603f5197a4fe6', 'KUYE RASAK ABIODUN', '08034694161', '31 alimi oke oshodi lagos', 'Active', 'user', '2018-07-31', 'images/IMG_20180731_121326.jpg'),
(69, 'ADEDOKUN', 'SIKIRU', 'PELUMI', 'Sikiruadedokun@gmail.com', '08118176030', '25moyegoso street itele ijebu', '28', '543', 'Male', '1996/05/17 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602074', '764b40d321ec48b7d3328c59ab5f3f93', 'Adedokun jamiu', '07089050365', '25moyegeso street itele ijebu', 'Active', 'user', '2018-07-31', ''),
(70, 'RUFAI', 'SUNMISOLA', 'ADIAT', 'sunmisolarufai@gmail.com', '07010636746', 'No3.Ajebo Oru,Ogun State', '24', '471', 'Female', '1994/07/03 00:00', 'islamic', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602028', '0aa3ea05405498fda314ff6e8e2bad5f', 'RUFAI OLAYEMI', '09098862410', 'NO 4,ORISUNMIBARE,LAGOS STATE', 'Active', 'user', '2018-07-31', ''),
(71, 'LAWAL', 'OLUWAKEMI', 'CHRISTIANAH', 'lawaloluwakemi37@gmail.com', '08022025870', 'No3.Ajebo Oru,Ogun State', '28', '538', 'Female', '1993/08/24 18:42', 'CHRISTANITY', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Health Assistant (Medical)', '0', '200', '201602049', '93eac918b6c784012805148a6bf0ed03', 'LAWAL OLAMILEKAN', '08020787794', 'No 42,sikiru rotimi,Ejigbo Lagos State', 'Active', 'user', '2018-07-31', ''),
(72, 'Ikekhide', ' Lawrenta', ' Favour', 'favourlawrenta@gmail.com', '07036364630', ' 20,uduake effiong crescent makogi magboro ', '12', '217', 'Female', '1978/09/12 12:00', ' Christian ', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', ' 200', '201502059', 'b38c2bd1a8ba62a26c56fe986b820245', ' Hassan waidi olayinka', '08028328688', ' 20, uduake effiong crescent makogi magboro ', 'Active', 'user', '2018-08-02', ''),
(73, 'IGE', 'OPEYEMI', 'IYABO', 'sunbo.opeyemi7@gmail.com', '08080400335', 'NO 8, OBOYE STREET EJIGBO LAGOS', '24', '470', 'Female', '1994/01/31 00:00', 'CHRISTIANITY', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 level', '201702047', 'f75b757d3459c3e93e98ddab7b903938', 'MRS FALETI ADEBIMPE', '08024747320', 'NO 8, OBOYE STREET EJIGBO LAGOS', 'Active', 'user', '2018-08-11', 'images/FB_IMG_15355758927015694.jpg'),
(74, 'SALAU', 'MORIAMO', 'OLUBUNMI', 'salaumoria99@gmail.Com', '09033919261', '10, moshood salaudeen street,ipaja ayobo lagos.', '31', '614', 'Female', '2018/08/16 08:57', 'ISLAMIC', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201702030', 'b13a4e876e0e1109304de2e4973ec4e8', 'SALAU MUTEEU BABATUNDE', '08186446912', '10, moshood salaudeen street, ipaja ayobo lagos.', 'Active', 'user', '2018-08-16', 'images/IMG_20180525_073326.jpg'),
(79, 'Jumah', 'Saeedat', 'Demilade', 'jumah@gmail.com', '07030872522', '11, oladipupo street, ago--iwoye, ogun state', '28', '544', 'Female', '2000/10/02 06:00', 'Muslim', 'single', 'DEPARTMENT OF HEALTH EDUCATION', 'Health Education and Promoting', '0', '100 level', '201805001', 'e13eba7a6731ab70198cfd205ef8843c', 'Jumah Taofeek', '08116232092', '11, oladipupo street, ago--iwoye, ogun state', 'Inactive', 'user', '2018-08-20', ''),
(80, 'AKINREMI', 'BUSHIRAT', 'OMOBOLANLE', 'akinremiomobolanle41@gmail.com', '08141192937', '22 peace avenue lafenwa itele ota ogun state', '30', '592', 'Female', '1997/06/23 11:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802001', '4f73b8b156cdda8c6f5ec49edb4aa786', 'Mr Teslim', '08037218400', '22 peace avenue lafenwa itele ota ogun state', 'Active', 'user', '2018-08-20', 'images/4a.jpg'),
(82, 'DADA', ' ADEOLA', 'ABIGEL', 'dada@gmail.com', '08180633986', '4 imere rd ago-iwoye ogun state', '28', '544', 'Female', '1997/02/07 12:00', 'christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802003', 'b01abf84324066bdb4eed4d5bf20f887', 'Mr dada', '08180633986', '4 imere rd ago-iwoye ogun state', 'Active', 'user', '2018-08-20', 'images/15452126270756844372240182800334.jpg'),
(83, 'Ogunsanya', 'Fesyisola', 'Marvelous', 'ogunsanya@gmail.com', '08134079767', '11, Ashaye street, maku, shagamu, ogun state', '28', '555', 'Female', '1998/05/01 06:00', 'Christian', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100 level', '201804004', 'd565783ca18dfc930ca1df7f1b375658', 'Ogunsanya Olakunle', '08111111111', '11, Ashaye street, maku, shagamu, ogun state', 'Active', 'user', '2018-08-20', ''),
(84, 'EHUCHIE', 'EZINNE', 'TOVIA', 'ezinnet200@gmail.com', '07038595988', '2/4 ifelodun street egbeda-idimu rd lagos', '17', '283', 'Female', '1987/03/03 10:00', 'christian', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804005', 'c4815805b6baffa38d29394c65aedda2', 'Mr charles EHUCHIE', '08034365403', 'umugamara amaeke iho dimeze imo state', 'Active', 'user', '2018-08-20', 'images/DSC_7922aq.jpg'),
(85, 'Awodemurin', 'Yetunde', 'Oluwabukola', 'awodemurin@gmail.com', '09037679853', '11, oladipupo street, ago--iwoye, ogun state', '28', '544', 'Female', '2000/09/12 06:00', 'Muslim', 'single', 'DEPARTMENT OF HEALTH EDUCATION', 'Health Education and Promoting', '0', '100 level', '201805002', 'f1652fca432994554b6e735a4e22c187', 'Awodemurin Damilola', '08110567142', '11, oladipupo street, ago--iwoye, ogun state', 'Inactive', 'user', '2018-08-20', ''),
(87, 'John', 'Uyo-Obong', 'Francis', 'voicejohn86@gmail.com', '08038560537', '18, Biodun Sobanjo, Agidingbi, Lagos State', '3', '45', 'Female', '1982/02/22 07:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802005', '527bd5b5d689e2c32ae974c6229ff785', 'Oto-Obong Francis John ', '08164020029', '18, Biodun Sobanjo, Agidingbi, Lagos State', 'Active', 'user', '2018-08-20', 'images/VVVVa.jpg'),
(88, 'ERINOLA', 'OREOLUWA', 'ESTHER', 'erinola@gmail.com', '08091194931', '49 lagos street ebute-meta lagos', '28', '539', 'Female', '2002/06/28 12:00', 'christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802006', 'eeb6df4645fecd82f6dd7fb1a8733847', 'Mr  ERINOLA asabi', '08023685426', '49 lagos street ebute-meta lagos', 'Active', 'user', '2018-08-20', 'images/Untitled-1.jpg'),
(89, 'Ayeyun', 'Testimony', 'Adedoja', 'ayeyun@mail.com', '08173133641', 'Road 4, Ikangba town, Ijebu Ode, Ogun  State', '28', '544', 'Female', '1997/01/09 07:00', 'Christian', 'single', 'DEPARTMENT OF HEALTH EDUCATION', 'Health Education and Promoting', '0', '100 level', '201805003', '84d89740ff3401de8e620cf6e1302b36', 'Felix Ayeyun', '08111111112', '3, Imota street, oru-ijebu, ogun state', 'Active', 'user', '2018-08-20', 'images/DSC_8245a.jpg'),
(91, 'Soyemi', 'Opeyemi', 'Feyikemi', 'soyemi@gmail.com', '08106098761', 'Lecturers quaters, Ilaporu-Ijebu, Ogun State', '28', '544', 'Female', '1993/11/16 07:00', 'Christian', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802008', '9dbacb751e7fe04b40f6f3b047ca097c', 'Soyemi Adejoke', '08073047861', '15, igbodile street, awa-ijebu', 'Active', 'user', '2018-08-20', 'images/DSC_8039a.jpg'),
(92, 'ONASELU', 'AYOMIDE', 'SERAH', 'bussygold25@gmail.com', '09068273986', '3 aborisade street ago-iwoye ogun state', '28', '544', 'Female', '2001/12/10 03:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802009', '33e28374c07e60bbd5a09ac7755b2cd5', 'MRS ONASELU ABIODUN ', '08141264384', '3 aborisade street ago-iwoye ogun state', 'Active', 'user', '2018-08-23', 'images/IMG_20180920_132623_7~2.jpg'),
(94, 'ADENIYI', 'OLUWATOBILOBA', 'ARIKE', 'adeolatobiloba@yahoo.com', '08123961437', 'OLWOTEDO MOWE OGUN-STATE', '31', '622', 'Female', '1997/11/11 08:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804006', '8bd10a61f0d7f76f18e63431c4ec4cc8', 'MR ADENIYI', '08167649082', 'OLOWOTEDO MOWE OGUN-STATE', 'Active', 'user', '2018-08-23', 'images/DSC_8002a.jpg'),
(95, 'ALABI', 'KAFAYAT', 'IBUKUNOLUWA', 'queenebudola@gmail.com', '08182924835', '17 ajibola makinde street iyesi ota ogun state ', '28', '767', 'Female', '1997/03/26 13:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804007', '1a679835db25eaa1b52bec711368f396', 'MRS ALABI', '08115558374', '17 ajibola makinde street iyesi ota ogun state ', 'Active', 'user', '2018-08-24', 'images/0YK4I9TcCMRtdPtuLYirwky3LZX.jpg'),
(96, 'OLANIYAN', 'ADEJOKE', 'ROFIAT', 'olaniyanjoke2017@gmail.com', '08185230602', '30 TAIWO AJIBADE FIWAKESIN AGBEDE IKORODU LAGOS', '30', '592', 'Female', '2000/05/27 00:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802011', '389ee403f1caea43a93e81d298a1efb0', 'MRS OLANIYAN BOLANLE', '08062510405', '30 TAIWO AJIBADE FIWAKESIN AGBEDE IKORODU LAGOS', 'Active', 'user', '2018-08-24', 'images/DSC_7956a.jpg'),
(97, 'AJENIFUJA', 'FATIMA', 'ADEDOYIN', 'ajenifuja22@gmail', '09065349368', '3 odoladugba street oru ijebu ogun-state', '28', '544', 'Female', '1998/05/08 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802012', '676357a854a3eb4abf6706f56393ca7f', 'MRS FATAI AJENIFUJA ', '08026109668', '3 odoladugba street oru ijebu ogun-state', 'Active', 'user', '2018-08-24', 'images/DSC_7781A.jpg'),
(98, 'SODIQ', 'LATEEFAT', 'OLUWAPELUMI', 'sodiq22@gmail', '09064442703', '1 OLUWADUROTIMI STREET IDI-IRIKO IKORODU LAGOS', '28', '552', 'Female', '1995/10/10 15:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802013', '8d9e987964802e7e133c6c1c579e6753', 'MISS SODIQ NAIMOT OLUWADAMILOLA', '09064442703', '1 OLUWADUROTIMI STREET IDI-IRIKO IKORODU LAGOS', 'Active', 'user', '2018-08-24', 'images/DSC_8000a.jpg'),
(99, 'OLUYEMI', 'MABAYOMIJE', 'IFEOLUWA', 'oluyemi22@gmail', '07012721410', '23 ONALA STREET IGBAIRE IJEBU-IGBO OGUN STATE', '28', '544', 'Female', '1999/12/3115:00', 'Christian', 'Single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802014', '0be12a264f0561c1d1ca8a7164bcdca3', 'MRSOLUYEMI ADIJAT ASABI', '08092454361', '23 ONALA STREET IGBAIRE IJEBU-IGBO OGUN STATE', 'Active', 'user', '2018-08-24', 'images/DSC_7998a.jpg'),
(100, 'ABDULLAHI', 'EBUNOLUWA', 'OMOWUNMI', 'ebunoluwaomowunmi@gmail', '09078609924', '19 ADEBAYO IGE STREET IJEGUN IKOTUN LAGOS', '28', '552', 'Female', '2000/18/03 11:24', 'MUSLIM', 'Select One', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802015', '1e99a24df4edf90e11db28abe315b1a6', 'MISS ABDULLAHI BALIKIS', '09078609924', '19 ADEBAYO IGE STREET IJEGUN IKOTUN LAGOS', 'Active', 'user', '2018-08-24', 'images/DSC_7986 (2)a.jpg'),
(101, 'ADEDEJI', ' ANUOLUWAPO', 'DAMIOLA', 'adedeji22@gmail.com', '08137947923', '1 OLAWOYIN STREET IFO OGUN STATE', '28', '541', 'Female', '1997/03/27 12:00', 'christianity', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802016', 'bad6c4c7055e3d0e87511a56dff3f16f', 'Mr ADEDEJI', '08163973075', '1 OLAWOYIN STREET IFO OGUN STATE', 'Active', 'user', '2018-08-27', 'images/DSC_7757.JPG'),
(102, 'ADESHINA', ' MARY', 'DEMILADE', 'adeshina22@gmail.com', '08105030901', '6 FAKOYA STREET ELEPE IKORODU LAGOS STATE', '30', '596', 'Female', '1998/06/10 13:00', 'christianity', 'married', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804008', 'f08ff9c7446aa1b159d9d378c6094ba3', 'Mr MAFIKUYOMI OLADIPUPO', '07083146975', ' 6 FAKOYA STREET ELEPE IKORODU LAGOS STATE', 'Active', 'user', '2018-08-27', 'images/XCDCC (1)A.jpg'),
(103, 'IGWE', 'CHINAZA', 'JOSEPHINE', 'rosejessica508@gmail.com', '09068745244', '13 prosperity oke-afa isolo lagos state', '11', '208', 'Female', '1996/05/20 17:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802017', '38a4df0e918d64add31c515a982a9d9f', 'Mr   EMEKA', '08107720641', '13 prosperity oke-afa isolo lagos state', 'Active', 'user', '2018-08-27', 'images/DSC_8007a.jpg'),
(104, 'MAJEKODUNMI', 'JOY', 'TIMILEYIN', 'majek@gmail.com', '08108060466', '9 atileyinoluwa street sanni abeokuta ogun state', '28', '767', 'Female', '1996/04/29 08:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802018', 'c9e6690698747df4993074f3b86ded53', 'Miss MAJEKODUNMI', '08108294755', '9 atileyinoluwa street sanni abeokuta ogun state', 'Active', 'user', '2018-08-27', 'images/Snapchat-1230550098.jpg'),
(105, 'SALAUDEEN', 'AMINAT', 'SADE', 'salaudeen@gmail.com', '07088123992', '33 moniki street off ijegun ikotun lagos state', '30', '588', 'Female', '2000/08/08 01:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802019', 'cdd047d2653818a980ad286c29cb81bb', 'Miss ayomide', '07088123992', '33 moniki street off ijegun ikotun lagos state', 'Active', 'user', '2018-08-27', 'images/15417544825887162075711634849964.jpg'),
(106, 'ADELE', 'NOFISAT', 'ADEOLA', 'adele22@gmail.com', '07085199723', '5 OKE-EROFON IWATA OKE-AGBO IJEBU-IGBO OGUN STATE', '28', '544', 'Female', '1998/05/05 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802020', 'ee2652075ad33343c79c5a6a1161371b', 'MR ABUDULAZEEZ ', '08090571281', '5 OKE-EROFON IWATA OKE-AGBO IJEBU-IGBO OGUN STATE', 'Active', 'user', '2018-08-27', 'images/15439230751448294530190866296232.jpg'),
(109, 'AKINOLA', 'GBEMISOLA', 'FOLASHADE', 'akinola@gmail.com', '08071162362', '9 IJU OKE ROAD OMOTOSHO ONDO STATE', '29', '568', 'Female', '2001/07/15 15:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802023', '36546c644ddb3bb26ae3ab71d3acd928', 'MR AKINOLA', '09022554041', '9 IJU OKE ROAD OMOTOSHO ONDO STATE', 'Active', 'user', '2018-08-27', 'images/1540986822378978449192.jpg'),
(110, 'ADEJUMO', 'IKIMAT', 'OYINDAMOLA', 'adejuwon22@gmail.com', '09020933256', ' 12 APABIELESIN SOKORO ILESEU OLOMI IBADAN OYO STATE', '31', '625', 'Female', '2001/11/15 16:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802024', '9a4ef8994f5bd1131641469dcf936c91', 'MRS ADEJUWON', '08055744634', ' 12 APABIELESIN SOKORO ILESEU OLOMI IBADAN OYO STATE', 'Active', 'user', '2018-08-27', 'images/15417559179211470246202867719699.jpg'),
(112, 'Sulaimon', 'Rofiat', 'Omowunmi', 'sulaimonrofiat01@gmail.com', '08172520267', '10, Aro compound, odole  quarters, Ijebu-Itele.', '30', '587', 'Female', '1999/12/18 07:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802026', 'ecfa345d24a57f5161b425eecc1eedde', 'Okunuga Lukman', '08054473236', '10, Aro compound, odole  quarters, Ijebu-Itele.', 'Active', 'user', '2018-08-27', 'images/DSC_7983a.jpg'),
(114, 'Omoyeni', 'Dolapo', 'Chrisrtiana', 'omoyeni@gmail.com', '07052054023', '52, oke-ola street, oru-ijebu', '28', '544', 'Female', '2000/03/05 06:00', 'Christian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '100 level', '201803001', 'f26c36c9c85e977c4fb97d7fef1e4fb6', 'Ipaye Fatimoh', '08073191101', '52, oke-ola street, oru-ijebu', 'Active', 'user', '2018-08-27', 'images/IMG_20181018_090742_9.jpg'),
(115, 'Yusuf', 'Nofisat', 'Oluwakemi', 'yusuf@gmail.com', '09082524848', '8, Cele street, off araromi bus-stop, shibiri ekupa, Ojo.', '31', '619', 'Female', '2000/05/05 07:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802028', 'dd2eb170076a5dec97cdbbbbff9a4405', 'Yusuf Toheeb', '07019982576', '8, Cele street, off araromi bus-stop, shibiri ekupa, Ojo.', 'Active', 'user', '2018-08-27', 'images/aa.jpg'),
(116, 'ADESANYA', 'AMINAT', 'OLUWABUSAYO', 'adesanya@gmail.com', '07056875193', '4 SHONIKE STREET AGO-IWOYE OGUN STATE', '28', '544', 'Female', '1985/11/16 18:00', 'MUSLIM', 'married', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804009', '571dc7e687207018a69297d24eaddc51', 'ALHAJI ADEBANJO', '07056875193', '4 SHONIKE STREET AGO-IWOYE OGUN STATE', 'Active', 'user', '2018-08-27', 'images/DSC_7937a.jpg'),
(117, 'Ayegusi', 'Abisola', 'Esther', 'ayegusi@gmail.com', '08032796592', '1, toroju street, odo-kekere, igbosoro.', '28', '544', 'Female', '1997/07/18 07:00', 'Christian', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100 level', '201804010', '0af3dcd4ff43e5e3077ec88c5bfbfe70', 'Micheal Kaan', '08032796592', '26, Igbogbo, Ikorodu, Lagos State', 'Inactive', 'user', '2018-08-27', ''),
(118, 'Sanyaolu', 'Damilola', 'Abisola', 'damilolasanyaolu8@gmail.com', '09039564320', '33, taiwo bamgbose street, ijede road, Ikorodu, Lagos State', '28', '555', 'Female', '1997/05/30 07:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802029', '9214d379a38d5b5e9973aea0a88a9326', 'Mrs Sanyaolu', '08163883616', '33, taiwo bamgbose street, ijede road, Ikorodu, Lagos State', 'Active', 'user', '2018-08-27', 'images/DSC_8258a.jpg'),
(119, 'ADEBANJO', 'ABIOLA', 'ABIGEL', 'adebanjo22@gmail.com', '08137163681', '10 taofik giwa street agbede ikorodu lagos state', '28', '546', 'Female', '2000/06/02 18:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804011', '10b2d5cb1d59783878508e5b6b36a1c9', 'MRS ADEBANJO', '08137163681', '10 taofik giwa street agbede ikorodu lagos state', 'Active', 'user', '2018-08-27', 'images/15434916617654228922370894050188.jpg'),
(120, 'Agbabiaka ', 'Azizat', 'Oluwabusayo', 'azizatagbabiaka@yahoo.com', '08154395086', 'A8, Laiyeode Ikordu Lagos', '25', '489', 'Female', '2002/02/26 07:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802030', 'b5b771bb230ed932598b6dc6a9780c22', 'Mrs Agbabiaka', '08028494842', 'A8, Laiyeode Ikordu Lagos', 'Active', 'user', '2018-08-27', 'images/DSC_7920a.jpg'),
(121, 'ALLI', 'OLAIDE', 'JUSTINA', 'alliolaide94@gmail.com', '09022824665', '2 ADEBAYO STREET MOWE OGUN STATE', '31', '622', 'Female', '2000/05/05 20:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804012', '06c8cb034ab79912327a5d2e87a5e06e', 'MR ALLI BALOGUN', '09022824665', '2 ADEBAYO STREET MOWE OGUN STATE', 'Active', 'user', '2018-08-27', 'images/1544190390452711228530433278522.jpg'),
(122, 'Akinyemi', 'Abosede', 'Motunrayo', 'akinyemi@gmail.com', '08107393301', '5, Eniafe close, Mowe-Ofada, Ogun State', '28', '550', 'Female', '1995/03/03 05:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802031', 'fec74496fa81fe0958c928f3f0a14b2f', 'Akinyemi Victoria', '08163055857', '5, Eniafe close, Mowe-Ofada, Ogun State', 'Active', 'user', '2018-08-27', 'images/DSC_7775a.jpg'),
(124, 'Nsofor', 'Blessing', 'Ifeeoma', 'blessingnsofor123@gmail.com', '09069793914', '28, Glover street, Ebute-metta, Lagos State', '4', '74', 'Female', '1978/01/19 20:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100 level', '201802033', '3a65d6db94c1668c7536b97407774be8', 'Mrs Gloria Ugoh', '09069793914', '28, Glover street, Ebute-metta, Lagos State', 'Active', 'user', '2018-08-27', 'images/DSC_7779a.jpg'),
(125, 'EBIALE', 'SUNDAY', 'LUKPATA', 'ebiale@gmail.com', '08024728430', '33 OWOLABI STREET ORU OGUN STATE', '9', '177', 'Male', '1993/05/10 21:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804013', '0fa401273bb549bdc0f9663f8cf4c148', 'MR FRIDAY', '08024728430', '33 OWOLABI STREET ORU OGUN STATE', 'Active', 'user', '2018-08-27', 'images/DSC_7761a.jpg');
INSERT INTO `students` (`stdId`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `stdaddress`, `state`, `lga`, `gender`, `dob`, `religion`, `maritalstatus`, `faculty`, `dept`, `discipline`, `level`, `matricno`, `password`, `nokname`, `nokphone`, `nokaddress`, `user_status`, `user_type`, `regdate`, `picture`) VALUES
(126, 'BISUGA', 'OMOLALA', 'OMOTOYOSI', 'bisuga@gmail.com', '07010402115', '1 oke alafia oke agbo ijebu igbo ogun state', '28', '544', 'Female', '1998/05/16 22:00', 'christianity', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '100', '201803002', '7adf2a6350f3527ff4658e00c6c7d1dc', 'MR BISUGA', '07010402115', '1 oke alafia oke agbo ijebu igbo ogun state', 'Active', 'user', '2018-08-27', 'images/DSC_7764a.jpg'),
(127, 'GOODLUCK', 'MARVELLOUS', 'AYOMIKUN', 'goodluck22@gmail', '09067111890', '5 college road igbo-otu ondo state', '29', '561', 'Female', '1999/05/21 01:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804014', '14ed1a22176d3805f01deeab4c7aae03', 'MRS MONIOLA ODUNMOMI', '08168929382', '5 college road igbo-otu ondo state', 'Active', 'user', '2018-08-28', 'images/DSC_8005a.jpg'),
(128, 'APENA', ' DAMILOLA', ' CHRISTIANA', 'apena22@gmail', '08185151523', 'BEHIND ODOPOTU GRAMMAR SCHOOL ERUNWON IJEBU-ODE OGUN STATE ', '28', '544', 'Female', '2001/07/21 02:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804015', 'daf43d2110a9fa69707191926d522e8c', 'MR MAFE', '08185151523', 'BEHIND ODOPOTU GRAMMAR SCHOOL ERUNWON IJEBU-ODE OGUN STATE ', 'Active', 'user', '2018-08-28', 'images/DSC_8271a.jpg'),
(130, 'ANWOJUOLUWA', 'DAMILOLA', 'ANUOLUWAPO', 'anwojuoluwa22@gmail', '09066433565', '2 araromi street epe lagos', '25', '487', 'Female', '1999/07/31 01:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804017', 'b4c422b4d02d94986c6c605581ebb651', 'MR ANWOJUOLUWA', '09066433565', '2 araromi street epe lagos', 'Inactive', 'user', '2018-08-29', ''),
(131, 'ABIDOYE', 'ABDUL-QUDDUS', 'AYOMO', 'abidoye22@gmail', '08140627088', '1 ABIDOYE AVENUE ODORAGUSI EPE', '30', '591', 'Male', '1995/05/26 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804018', '9e592b3ed0de583fa0fdfda5ac6833be', 'MR ABIDOYE', '08023876142', '1 ABIDOYE AVENUE ODORAGUSI EPE', 'Active', 'user', '2018-08-29', 'images/DSC_7976a.jpg'),
(132, 'AKINREMI', 'FAISAT', 'MORENIKEJI', 'akinremi22@gmail', '08027855089', '6 isolo road ijegun lagos', '25', '483', 'Female', '2000/11/19 07:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802034', '4f73b8b156cdda8c6f5ec49edb4aa786', 'MRS   AKINREMI', '08027855089', '6 isolo road ijegun lagos', 'Active', 'user', '2018-08-29', 'images/CCCa.jpg'),
(133, 'ADEOTAN', 'ARIKE', 'YESIRO', 'adeotan22@gmail', '09090310003', '3 AKINSOLA STREET ELEMU BUS STOP IJEDE IKORODU LAGOS', '28', '549', 'Female', '1998/05/05 10:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802035', '92b0220e114a2096f6c3f19cc2bc1bce', 'MRS   YUSUF ADEOTAN', '08055613205', '3 AKINSOLA STREET ELEMU BUS STOP IJEDE IKORODU LAGOS', 'Active', 'user', '2018-08-29', 'images/DSC_8160a.jpg'),
(134, 'ADEMOLA', 'VICTORIA', 'ADEPEJU', 'ademola@gmail', '08054412412', 'OBANISUN COMPOUND IGBOPE ESTATE OYO STATE', '31', '627', 'Female', '1997/11/19 03:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802036', 'ded029ad9ca9bedbb6f149ccfe32c4a1', 'MR JOHN ADEMOLA', '08050310830', 'ANISUN COMPOUND IGBOPE ESTATE OYO STATE', 'Active', 'user', '2018-08-30', 'images/2018-11-01 13.23.01.jpg'),
(136, 'ADAM', 'MARIAM', 'AYONI', 'adam@gmail', '09058384338', '29 MUIBI  OLUWA STREET OJO LAGOS STAT', '31', '615', 'Female', '1996/08/27 17:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802038', '1d7c2923c1684726dc23d2901c4d8157', 'MRS FAUSAT ADAM', '07017091729', '29 MUIBI  OLUWA STREET OJO LAGOS STAT', 'Active', 'user', '2018-08-30', 'images/2018-11-01 13.30.12.jpg'),
(137, 'WAHEED', 'DORCAS', 'AYOMIDE', 'ayormidewaheed@gmail', '09097262820', 'ATE IYANA-ERA BADAGRY LAGOS', '28', '552', 'Female', '1997/09/19 05:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802039', 'ba3cf6913b5f7ffd594af1f36237a0ae', 'MR YAYA   WAHEED', '08186951022', 'ATE IYANA-ERA BADAGRY LAGOS', 'Active', 'user', '2018-08-30', 'images/IMG_20180829_084121.jpg'),
(138, 'ATANDA', 'KAUSARAT', 'TEMITOPE', 'atanda@gmail', '09020922900', '234 IMUDE ROAD SIBIRI LAGOS', '24', '474', 'Female', '1997/05/16 08:00', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802040', '8d2da142e28c615d640d329e2dda3b4a', 'MR MUYIZ ATANDA', '08134603068', '234 IMUDE ROAD SIBIRI LAGOS', 'Active', 'user', '2018-08-31', 'images/DSC_8039ab.jpg'),
(139, 'AKINDILENI', 'AYOMIKUN', 'OLUWAFUNMILAYO', 'akindileni@gmail', '08185704565', '10 EJIGBO TITIN ILO OTA OGUN STATE', '29', '562', 'Female', '1997/01/14 01:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802041', '798b084294f1b37e0a35a46471a9a2e3', 'MR OLUWASEGUN  AKINDILENI', '08057906599', '10 EJIGBO TITIN ILO OTA OGUN STATE', 'Active', 'user', '2018-08-31', 'images/ab.jpg'),
(140, 'ARIJE ', 'ADEOLA', 'ENIOLA', 'arije@gmail', '07066014660', '55 ILE-EPO AINA STREET AGO-IWOYE OGUN STATE', '28', '544', 'Female', '1995/09/29 11:00', 'MUSLIM', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '100', '201803003', '11f1e98f9774f52fe64d6fc1a899a84e', 'MR  JENROLA ALLI', '07066014660', '55 ILE-EPO AINA STREET AGO-IWOYE OGUN STATE', 'Inactive', 'user', '2018-08-31', ''),
(141, 'ACQUAR', 'PAULINA', 'ABIDEMI', 'acquarpaulina7@gmail', '08184282418', '37 AFOLABI STREET MARKET ROAD OTA OGUN STATE ', '28', '537', 'Female', '1997/02/07 08:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802042', '198acadcb0bcc4330922c211eb680aa9', 'MRS OLAIDE  ACQUAR', '08184282418', '37 AFOLABI STREET MARKET ROAD OTA OGUN STATE ', 'Active', 'user', '2018-08-31', 'images/aa.jpg'),
(142, 'OBATERU', 'FAITH', 'IJEOMA', 'obateru@gmail', '08053192564', 'OGUNYEMODU STREET ILUTITUN ONDO STATE', '29', '568', 'Female', '2003/05/27 02:00', 'christianity', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '100', '201803004', 'f30b4ffd44e8694cc510598abc24c9ec', 'MR OBATERU', '08053192564', 'OGUNYEMODU STREET ILUTITUN ONDO STATE', 'Active', 'user', '2018-09-03', 'images/15428117510188204775537890101610.jpg'),
(143, 'OLANIYAN', 'ROFIAT', 'WURAOLA', 'olaniyanrofiat@gmail', '08182135253', '16 IPAO STREET SUPERMARKET BUS STOP BADAGRY', '30', '587', 'Female', '1997/09/29 06:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804019', '389ee403f1caea43a93e81d298a1efb0', 'MR ISIAK OLANIYAN', '09092158374', '16 IPAO STREET SUPERMARKET BUS STOP BADAGRY', 'Active', 'user', '2018-09-03', 'images/DSC_7975.JPG'),
(144, 'BABAMUYIWA', 'OMOLARA', 'EUNICE', 'babamuyiwa@gmail', '07015186653', '2 AFUAPE STREET KUTO ROAD ABEOKUTA', '28', '537', 'Female', '1999/11/21 08:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802043', '9f4e9ad0647bafd38858663f4dee1457', 'MRS BABAMUYIWA', '08060966462', '2 AFUAPE STREET KUTO ROAD ABEOKUTA', 'Active', 'user', '2018-09-03', 'images/DSC_7960a.jpg'),
(145, 'AJAH', 'GIFT', ' ALADI', 'giftedajah@yahoo.com', '09099863091', '49 oyenaya street bariga lagos', '7', '130', 'Female', '1997/08/31 10:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802044', 'f04e62312e492a409c966dbedc6dda4a', 'MRS  VICTORIA AJAH', '07061967087', '49 oyenaya street bariga lagos', 'Active', 'user', '2018-09-03', 'images/DSC_7985a.jpg'),
(146, 'GOODLUCK', 'AMAKA', 'CHRISTIANA', 'makadike24@gmail.com', '08038861066', '5 ALAKANDE CRESENT OFF LOVE AND FAITH ILOYE OGUN STATE', '1', '12', 'Female', '1988/12/15 05:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804020', '14ed1a22176d3805f01deeab4c7aae03', 'MRS EVELYN GOODLUCK', '08074645639', '5 ALAKANDE CRESENT OFF LOVE AND FAITH ILOYE OGUN STATE', 'Active', 'user', '2018-09-03', 'images/DSC_7924.JPG'),
(147, 'ABOYEJI', 'IFEOLUWA', 'AYOMIDE ', 'aboyeji@gmail.com', '08108019920', '27 olorunwa street afunrugin road lagos state', '24', '474', 'Female', '1996/02/03 07:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804021', 'e25c67610d0c30ee0b3f9f8172073b01', 'MRS FOLAKE GBELE', '08176040877', '27 olorunwa street afunrugin road lagos state', 'Active', 'user', '2018-09-03', 'images/DSC_7993a.jpg'),
(148, 'RAHEEM', 'HABEEB', 'DOLAPO', 'raheemhabeeb78@gmail.com', '08080932050', '8 OGUNKOYA BARIGA LAGOS', '31', '607', 'Male', '1999/08/16 04:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802045', 'd96fe37fcfcdf139dfdc30dfba8422d1', 'MR ABIODUN WAHEED RAHEEM', '08080932050', '8 OGUNKOYA BARIGA LAGOS', 'Active', 'user', '2018-09-03', 'images/DSC_7994a.jpg'),
(149, 'AGANMUYI', 'GLORY', 'ABIKE', 'aganmuyiglorious@gmail.com', '08166398676', '1 OLADIPUPO STREET ,BABAODE OFFIN IGBOGBO IKORODU LAGOS ', '29', '564', 'Female', '1998/01/15 08:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802027', '24685b4645f178edf92c9880195d3279', 'MR OLADEJI AGANMUYI', '08027281356', '1 OLADIPUPO STREET ,BABAODE OFFIN IGBOGBO IKORODU LAGOS ', 'Active', 'user', '2018-09-03', 'images/ac.jpg'),
(152, 'ADEDEJI', 'DAMILARE', 'DANIEL', 'alexsandrad998@gmail', '08156639545', '3 odiolowo street ago iwoye ogun state', '28', '544', 'Male', '1998/04/24 04:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802046', 'f69a66c1de98f19f2807ce135cdd7b51', 'MR  ISIAH ADEDEJI', '08127040793', '3 odiolowo street ago iwoye ogun state', 'Active', 'user', '2018-09-04', ''),
(153, 'OMOLUKARE', 'OLUWAKEMI', 'ABISOLA', 'omolukare@gmail.com', '09033405986', '21 LAFENWA STREET EJIGBO LAGOS', '29', '558', 'Female', '1999/03/17 08:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804023', '83beec7c44079abf3c76e14b73c6cc25', ' MR TOSIN OMOLUKARE', '08166899940', '21 LAFENWA STREET EJIGBO LAGOS', 'Active', 'user', '2018-09-04', 'images/1541410359957189434576.jpg'),
(154, 'RAMONI', 'OYINDAMOLA', 'BALIKIS', 'ramoni@gmail.com', '08136909283', '7 BAKERY BUS STOP OFF NNPC ROAD EJIGBO LAGOS ', '28', '767', 'Female', '1999/03/23 05:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804024', '82cab2a926e00becc87ff835504d0aa1', 'MRS FAUSAT JUBRIL', '08097610112', '7 BAKERY BUS STOP OFF NNPC ROAD EJIGBO LAGOS ', 'Active', 'user', '2018-09-04', 'images/15409872277121218605731.jpg'),
(155, 'Taiwo', 'Oluwaseyi', 'Rebecca', 'rebeccataiwo1999@gmail.com', '08069322765', '2, Ajeniya street off oke agbo road. Lagos State', '25', '497', 'Female', '1999/03/20', 'Christianity ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702071', '5ec829debe54b19a5f78d9a65b900a39', 'Taiwo oluwabukola Caroline', '08133654994', '2,Ajeniya street off oke agbo road. Lagos State', 'Active', 'user', '2018-09-04', 'images/IMG_20180903_084427_5~2.jpg'),
(159, 'ABDULSALAM', 'MODINAT', 'OLAMIDE', 'modinatabdulsalam@gmail.com', '09090430170', '26 OKE JIDE STREET EJIGBO LAGOS', '31', '603', 'Female', '1996/10/20 16:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804027', '6a213e6c358731587a15b0fffcf2f213', 'MRS BALQEEZ ABDULSALAM', '08073097363', '26 OKE JIDE STREET EJIGBO LAGOS', 'Active', 'user', '2018-09-11', 'images/1540987478214961105799.jpg'),
(160, 'Makinde', 'Abigeal', 'Yetunde', 'Makinde.abigeal24@gmail.com', '08038465041', 'Former popopola street, ijebu igbo', '31', '607', 'Female', '1995/04/24', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702072', '0eb49926331972487960b6514adb8368', 'Makinde Oluwatoyin Victoria', '08032872593', '11,Awo-Adoko street, shibiri,ojo,lagos', 'Active', 'user', '2018-09-11', 'images/tmp-cam-2108611452.jpg'),
(161, 'TIAMIYU', 'MARIA', 'ABOSEDE', 'tiamiu65@gmail.com', '08091740765', '5 ODORASONYIN IJEBU IGBO OGUN STATE', '25', '497', 'Female', '1992/01/14 10:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702054', '887a503299f8a63bc24645e9e68d9e29', 'MRS AFUSAT TIAMIYU', '08089698071', '1 TESLIM STREET AJANGBADI OJO LAGOS ', 'Active', 'user', '2018-09-11', 'images/DSC_8088a.jpg'),
(162, 'MURITALA', 'OMOTAYO', 'TAWAKALITU', 'omotmuritala9@gmail', '09030546582', '82 ORODU STREET AJEGUNLE APAPA LAGOS STATE', '24', '480', 'Female', '1994/10/09 10:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702050', '0fd2b85dce7241a44ac91185794f8963', 'MRS NOFISAT MURITALA', '08153259369', '82 ORODU STREET AJEGUNLE APAPA LAGOS STATE', 'Active', 'user', '2018-09-11', 'images/DSC_7927a.jpg'),
(163, 'OLADEJO', 'ROFIAT', 'ABIOLA', 'oladejoomobolanle1994@gmail.com', '08154184308', '35 adeleke abimbola street ikorodu lagos', '30', '581', 'Female', '1994/12/27 13:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702052', 'c3c280b6a1bfb4bb11f3ef5d975ff7b9', 'MRS OLADEJO', '08105526435', '35 adeleke abimbola street ikorodu lagos', 'Active', 'user', '2018-09-11', 'images/DSC_8033a.jpg'),
(166, 'BALOGUN', 'MARIAM', 'AYANSHOLA', 'mariambalogun135@yahoo.com', '08073046570', '18  KANKAFO STREET ORU IJEBU OGUN STATE', '28', '544', 'Female', '2022/03/28 02:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802049', 'bed94237c27bf6d2e4098e26f4011069', 'MR BALOGUN', '08073046570', '18  KANKAFO STREET ORU IJEBU OGUN STATE', 'Active', 'user', '2018-09-13', 'images/IMG_20181031_154300_5.jpg'),
(169, 'ASHAYE', 'IYANUOLUWA', 'ADERONKE', 'miraclecliford@yahoo.com', '08029155225', '52 HOMECARE OKE SHOPIN IJEBU IGBO OGUN STATE', '28', '555', 'Female', '1999/05/29 14:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804029', 'b6fca70a62b892b2fc4559a66bd81a7d', 'MRS OLUPEJU ASHAYE', '08068137413', '52 HOMECARE OKE SHOPIN IJEBU IGBO OGUN STATE', 'Inactive', 'user', '2018-09-14', ''),
(170, 'BOLAJI', 'SARATU', 'TANWA', 'bolaji@gmail', '08187130489', '27 ADURALERE STREET AJANGBADI OJO LAGOS STATE', '28', '767', 'Female', '1997/11/10 10:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702040', '0c80c124799585376519959d2374b07c', 'MR RASHEED BOLAJI', '08187130489', '27 ADURALERE STREET AJANGBADI OJO LAGOS STATE', 'Active', 'user', '2018-09-14', 'images/DSC_8004a.jpg'),
(171, 'Otubanjo', 'Adenike', 'Esther', 'otubanjoadenike@gmail.com', '07063564872', 'no 2,bayo close,off onirugba ijebu-ode', '28', '546', 'Female', '1994/07/16', 'christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200L', '201702006', '3c2adaf607094ddcf6bf08e6b046083c', 'Otubanjo segun', '08054676774', 'No,2 bayo close,off onirugba ijebu-ode', 'Active', 'user', '2018-09-17', 'images/15409090447201521712944.jpg'),
(172, 'Aina', 'Sarah', 'Oluwadamilola ', 'Ainasarah358@gmail.com', '08134300355', 'No 3, Adesina street off ododoroye, odorasanyin Ijebu igbo. ', '28', '547', 'Female', '1995/02/28 00:00', 'Christianity ', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603007', '4afc49c16977f16816f91f03ecf0ae5f', 'Aina Mary Motunrayo', '08066568983', 'No 1, solesi street, Ikenne remo,  ogun state. ', 'Active', 'user', '2018-09-19', 'images/15386584636111363432834.jpg'),
(173, 'Nwariri', 'Juliet', 'Ngozi', 'ngozinwariri@gmail.com', '08063125348', 'No 3, Adesina street off ododoroye,  odorasanyin ijebu igbo. ', '17', '297', 'Female', '2018/09/19 12:09', 'Christianity ', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603001', '717f93f5a6c4d5c82c8970e1b9734152', 'ezeora j chidi', '08063125348', 'no 4, jonah eze close, mende Maryland, Lagos ', 'Active', 'user', '2018-09-19', 'images/1538648024933983875653.jpg'),
(174, 'Situ', 'Damilola ', 'Ganiyat', 'abosedemusfat@gmail.com', '09033988870', 'no1, market street oru ijebu ', '28', '544', 'Female', '2001/01/29 00:00', 'Islam ', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703018', 'c8b509a820c3236a35864b76791da536', 'Situ Tolani', '07013105848', 'no1, market street oru ijebu ', 'Active', 'user', '2018-09-19', 'images/1542110717976163451413.jpg'),
(175, 'Odunsi', 'Opeyemi', 'Jariyat', 'Hoduncyopeyemi@gmail.com', '08117155211', '19, Igan Road Ago iwoye ogun state', '28', '544', 'Female', '1998/09/25', 'Muslim', 'single', 'DEPARTMENT OF SCIENCE LABORATORY\r\nTECHNIQUES', 'Science Laboratory Technology', '0', '200', '201704002', '415a27af893f9376fa9bf18af63327ca', 'Mrs.Odunsi', '08073251526', '19, Igan Road Ago iwoye ogun state', 'Active', 'user', '2018-09-19', 'images/IMG_2272.JPG'),
(176, 'ELEGBEDE', 'OMOBOLANLE', 'MEMUNAT', 'elegbede@gmail.com', '09063288291', '5 SECRETARIAT ROAD, ARAROMI, ABEOKUTA OGUN STATE ', '28', '537', 'Female', '1999/04/20 15:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702070', '829675b72a28732aa302e542542d9852', 'MISS JUMOKE ELEGBEDE ', '08139292022', '5 SECRETARIAT ROAD, ARAROMI, ABEOKUTA OGUN STATE ', 'Active', 'user', '2018-09-25', 'images/DSC_8027a.jpg'),
(177, 'EWULO', 'VICTORIA', 'OLUWATOSIN', 'ewulo@gmail.com', '08052674261', '3 IFELODUN STREET IMASAYI OGUN STATE', '28', '539', 'Female', '2018/07/27 07:00', 'christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702020', '1178c2bf14ddd5ca6eb5b2241f02ec01', 'MR BOLARINWA EWULO', '09065221220', '3 IFELODUN STREET IMASAYI OGUN STATE', 'Active', 'user', '2018-09-25', 'images/DSC_8015a.jpg'),
(178, 'ABDULGANIYU', 'MARUFAT', 'AJIBOLA', 'abdulganiyu@gmail.com', '08168994281', '3 olatifenwa street ikorodu lagos', '30', '579', 'Female', '1996/05/04 10:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802022', '16c0ac70b2edf2d0f186810129a66116', 'MRS ABDULGANIYU', '08168994281', '3 olatifenwa street ikorodu lagos', 'Active', 'user', '2018-09-25', 'images/DSC_8051qa.jpg'),
(179, 'ADELANI', 'FELICIA', 'TEMITOPE', 'temitopefelicia123@gmail.com', '07037547181', 'OKEBALOGUN COMPOUND APAARA AREA OYO,OYO STATE', '31', '630', 'Female', '1996/02/14 05:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804022', 'd71186d4d28b3040ac2be950218496ce', '	MRS ADERONKE ADELANI', '08143386297', 'OKEBALOGUN COMPOUND APAARA AREA OYO,OYO STATE', 'Active', 'user', '2018-09-25', 'images/Untitled-1dfff.jpg'),
(180, 'OLOWO', 'RASHIDAT', 'OLUWAKEMI', 'olowo@gmail.com', '07055545214', '40 agbodo street oke agbo ijebu igbo ogun state', '28', '544', 'Female', '1980/09/01 01:00', 'MUSLIM', 'married', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804028', 'dddea817a419f13106769e36c2d7190a', 'MR HAMED OLOWO', '07033812378', '40 agbodo street oke agbo ijebu igbo ogun state', 'Active', 'user', '2018-09-25', 'images/DSC_7996a.jpg'),
(181, 'NWABUEZE', 'BLESSING', 'CHIDIMA', 'nwabueze@gmail.com', '09061862910', '17 ASIWAJU STREET SHIBIRI LAGOS.', '17', '297', 'Female', '1999/10/16 07:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804026', '6918ed0c2642ee8be471eba4b6dc407e', 'MRS ESTHER NWABUEZE', '08030448365', '17 ASIWAJU STREET SHIBIRI LAGOS.', 'Active', 'user', '2018-09-25', 'images/DSC_7982a.jpg'),
(182, 'Ogunyemi', 'Oluwaseyi', 'Elizabeth ', 'oluwaseyifunmielizabeth222@gmail.com', '08055021555', 'No3,shokas street off sky bank, ijebu-igbo ', '28', '545', 'Female', '2001/06/29 11:52', 'Christian', 'single', 'DEPARTMENT OF SCIENCE LABORATORY\r\nTECHNIQUES', 'Science Laboratory Technology', '0', '200', '201704007 ', 'f747d177600215658ed8f36bbbed8534', 'Adewale ekishola', '08055021555', 'No1,Abayomi estate isomu', 'Active', 'user', '2018-09-27', 'images/154201065092964534358.jpg'),
(183, 'AKOBAJE', 'FOLASHADE', 'OLUWAKEMI', 'akobaje@gmail.com', '09072420755', 'IDI ARIKA STREET MAMU OGUN STATE ', '13', '233', 'Female', '1993/09/19 13:00', 'christianity', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603003', '10546171622929a899310328d043bf69', 'MRS MARY AKOBAJE', '08086864627', 'IDI ARIKA STREET MAMU OGUN STATE ', 'Active', 'user', '2018-09-27', 'images/15420132214795302077846548816563.jpg'),
(184, 'Ayinla', 'Aminat ', 'Toyosi ', 'toyosiaminat6@gmail.com', '08136546062', 'Oru town hall,  off Ijebu Igbo road,Ogun state off', '24', '473', 'Female', '1998/09/10 00:00', 'Muslim', 'single', 'DEPARTMENT OF SCIENCE LABORATORY\r\nTECHNIQUES', 'Science Laboratory Technology', '0', '200', '201704003', '2b1c263313d6acab95313a5a8665ce1a', 'Ayinla Balikis', '09033162427', 'Madam poultry,Adesan Road, Off Mowe Ogun state ', 'Active', 'user', '2018-09-27', 'images/02AA7F68-8B30-40F5-A3B0-50D29487AD7F.jpeg'),
(185, 'Fasuyi', 'Joy', 'Abiodun', 'Fasuyijoy99@gmail.com', '08167345802', 'No3,shokas street off sky bank, ijebu-igbo ', '29', '568', 'Female', '1999/12/30 12:22', 'Christian', 'single', 'DEPARTMENT OF SCIENCE LABORATORY\r\nTECHNIQUES', 'Science Laboratory Technology', '0', '200', '201704006', 'd71f2db5b7a15b7862b4c77b03543476', 'Iwajomo Damilola', '09076257667', 'No160 holy Mary ccc,iworo road ogbogbo', 'Active', 'user', '2018-09-27', 'images/1542612888062541539880.jpg'),
(186, 'Lawal', 'Abiodun', 'Aminat', 'Lawalaminat222@gmail.com', '08146666736', 'No3,shokas street off sky bank, ijebu-igbo ', '28', '544', 'Female', '1996/01/01 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702012', 'a54268f37a2e9f0f3d65a9e0b9768686', 'Lawal Damilare', '07062168118', 'No3,shokas street off sky bank, ijebu-igbo ', 'Active', 'user', '2018-09-27', 'images/15416787963881347399848.jpg'),
(187, 'Quazeem ', 'Blessing', 'Odunayo', 'blessingpelumi00@gmail.com', '08068365126', 'No,5 westend alowonle castle ijebu igbo', '23', '461', 'Female', '2000/12/30 13:20', 'Christian', 'single', 'DEPARTMENT OF SCIENCE LABORATORY\r\nTECHNIQUES', 'Science Laboratory Technology', '0', '200', '201704005', '79338706d6f99184c9405595ef3fd729', 'Adegboyega Emmanuel', '08164413149', 'No,10 feyisara street sango otta', 'Active', 'user', '2018-09-27', 'images/IMG_20181004_154750_2~2.jpg'),
(188, 'Doherty', 'Boluwatife', 'Pelumi', 'Boluwatife787@gmail.com', '08091212388', 'Oru ijebu igbo', '28', '554', 'Female', '1998/09/12 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702046', 'feedaf62ffd9b46231694685edcd99e2', 'Mrs bolanle', '08028999475', 'No 7, ganiu str, oluwakemi bus stop agric, ikorodu, lagos', 'Active', 'user', '2018-09-27', 'images/tmp-cam-309004726.jpg'),
(189, 'Ndukwe', 'Chinenye', 'Deborah', 'Ndukwechinenye55@gmail.com', '07063484129', 'Oru ijebu igbo', '1', '14', 'Female', '2018/09/27 13:43', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702042', '199d21cc284ec52244514fb28cb7e63a', 'Mrs comfort ', '09066684274', 'No,9 fagbile ijegu Lagos State', 'Active', 'user', '2018-09-27', 'images/15414990759144173695264464164317.jpg'),
(190, 'OSUNNUGA', 'DEBORAH', 'OYINDAMOLA', 'osunnuga@gmail.com', '08117591769', '4 IDODE RAOD AGO IWOYE OGUN STATE', '28', '544', 'Female', '1997/10/30 10:00', 'CHRISTIANITY', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703004', 'b9090a3f8c8989bbe72544c66618029c', 'MR FELIX FOLORUNSO OSUNNUGA', '08117591769', '4 IDODE RAOD AGO IWOYE OGUN STATE', 'Active', 'user', '2018-10-02', 'images/1542119723374617242340174896291.jpg'),
(191, 'OREBIYI', 'ABIGAEL', 'OLUWATOSIN', 'orebiyiabigael2002@gmail.com', '07060447692', '2, Oke Oba street, Odorasonyin, Ijebu Igbo, Ogun state.', '28', '544', 'Female', '2002/09/10 09:00', 'Christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804030', '5c22b3d3215478f0152a0c2f53603f2f', 'MRS AYAN MODUPEOLA AWERO', '07060905284', '2, oke oba street, Odorasonyin, Ijebu Igbo, Ogun state.', 'Active', 'user', '2018-10-02', 'images/15417543345334927085853492215140.jpg'),
(192, 'GBADEBO', 'KEHINDE', 'OPEYEMI', 'gbadegbo@gmail.com', '07083342268', '1, lawyer Adaramaja strt, Japara, Ijebu Igbo, Ogun State', '28', '544', 'Female', '2000/07/05 13:00', 'Christianity', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703011', 'f7765f5eaf0ce2a670458f6cbb8f6bf2', 'MISS GBADEBO TAIWO', '08118072925', '12, Bankole strt, Agege, Lagos State.', 'Active', 'user', '2018-10-02', 'images/15421200185695932084885015713388.jpg'),
(193, 'Adenekan', 'Taiwo', 'Oluwakemisola', 'adenekantaiwo.kemi@gmail.com', '09080497911', '2 pyramid hall Igan road ago iwoye', '28', '537', 'Female', '1998/12/30 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702022', '1e9fb4cfeb1128999a55c68892e93e8f', 'Adenekan kehinde', '08162547547', '2 pyramid hall igan road ago iwoye', 'Active', 'user', '2018-10-03', 'images/IMG_20181126_153051.jpg'),
(194, 'EWUKOYA', 'BUKONLA', 'KIKELOMO', 'ewukoyabukky@gmail.com', '08079575032', 'B162 Olomore, Abeokuta, Ogun State.', '28', '553', 'Female', '1972/05/06 11:00', 'Christian ', 'married', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603005', '6d9e15ac2c91275417e8a1860af1ec24', 'MISS OYINKANSOLA SANI', '07012105996', 'B162 Olomore, Abeokuta, Ogun State.', 'Active', 'user', '2018-10-04', 'images/tmp-cam-1272376990.jpg'),
(195, 'Ikujuni', 'Oluwaseyi ', 'Elizabeth ', 'Ikujunioluwaseyi20@gmail.com', '08079759272', 'Liberty junction, Oru-Ijebu, Ogun State', '29', '568', 'Female', '1995/12/30 00:00', 'Christian ', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603004', '6378be29b71470cf8843228358fc9234', 'Ikujuni Deborah ', '08079759272', '29, Akindele street Okitipupa, Ondo state', 'Active', 'user', '2018-10-04', 'images/image.jpg'),
(196, 'ALABI', 'AMINAT', 'ABISOLA', 'Alabiaminat214@gmail.com', '08034582902', 'Oru ijebu igbo', '28', '538', 'Female', '1999/03/10 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702053', 'fcace809fd2edef9b0421d00fefd24ff', 'Alabi Ahmed Olawale', '07016713087', 'No,9 sule ewenla ijegun', 'Active', 'user', '2018-10-08', 'images/BeautyPlus_20181106133401_save.jpg'),
(197, 'AGBAJE', ' HAJARAH', ' ADEOLA', 'agbajehajarah@gmail.com', '08022868784', '191 IPIMYEWON ADAMO IKORODU LAGOS STATE', '25', '487', 'Female', '2001/04/12 13:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702027', 'c47d567b95c31c5cdd6c566ceac66c49', 'MR AFEEZ AGBAJE', '08051794181', '191 IPIMYEWON ADAMO IKORODU LAGOS STATE', 'Active', 'user', '2018-10-08', 'images/CSC_8108a.jpg'),
(198, 'OSENI', 'MARIA', 'MOTUNRAYO', 'oseni@gmail.com', '08030422475', '23 AYEGBAMI STREET AGO IWOYE OGUN STATE', '28', '544', 'Female', '1994/09/07 03:00', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702064', '0f0656ce098f3541c257314a1c2e5f82', 'MR JAMIU AYOOLA ', '09023247945', '23 AYOOLA STREET BARIGA LAGOS STATE', 'Active', 'user', '2018-10-08', 'images/15421982545593993363591866278816.jpg'),
(199, 'ADEWALE', 'OLUWAFUNMIKE', 'MORENIKE', 'ade08169531569@gmail.com', '08169531569', '1/3 FOLA AGORO STREET SHOMOLU LAGOS STATE', '28', '544', 'Female', '1994/04/09 05:00', 'CHRISTIANITY', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804031', '8977c4746fef0149df6eb19886b83a11', 'MR OGUNJIMI SULAIMON', '08023950572', '1/3 FOLA AGORO STREET SHOMOLU LAGOS STATE', 'Active', 'user', '2018-10-09', 'images/IMG_20181011_140739.jpg'),
(200, 'WAHEED', 'AMINAT', 'OMOTOLANI', 'omotolaniwaheed58@yahoo.com', '09039905577', '8 BELLO STREET OFF ORI OKE BUS STOP IKOTUN EPE LAGOS', '31', '616', 'Female', '1993/10/01 07:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201702048', 'ba3cf6913b5f7ffd594af1f36237a0ae', 'MR BIOLA WAHEED', '08126265438', '8 BELLO STREET OFF ORI OKE BUS STOP IKOTUN EPE LAGOS', 'Active', 'user', '2018-10-09', 'images/DSC_8218a.jpg'),
(201, 'OGUNMOLA', 'RAHEAL', 'SAKI', 'ogunmola@gmail.com', '07037504967', '22 MERCY STREET MTN ALONG BADAGRY EXPRESS WAY LAGOS', '31', '606', 'Female', '1995/07/27 03:00', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702055', 'f844027f99d61b82a9b28d4aecf0fe38', 'MISS MONSURAT OGUNMOLA', '07037504967', '22 MERCY STREET MTN ALONG BADAGRY EXPRESS WAY LAGOS', 'Active', 'user', '2018-10-10', 'images/DSC_8056a.jpg'),
(202, 'ADISA', 'ZAINAB', 'ABOSEDE', 'adisa@gmail.com', '07030570623', '4 olutimileyin street off military zone ejigbo lagos ', '28', '767', 'Female', '1997/04/13 13:00', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702092', '3c69a2a9dee71cd1ce97700902d6758e', 'MISS  AISHAT', '07030570623', '4 olutimileyin street off military zone ejigbo lagos ', 'Active', 'user', '2018-10-10', 'images/15414993616851753747558.jpg'),
(203, 'ABOLADE', ' EBUNOLUWA', 'OLUWATOSIN', 'abolade@gmail.com', '09097363908', '7 LAFENWA STREET EJIGBO LAGOS', '28', '767', 'Female', '1994/12/09 15:00', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702018', '292feab2db015c2c205811714d7bad0a', ' MRS OLASUNBO ABOLADE', '09097363908', '7 LAFENWA STREET EJIGBO LAGOS', 'Active', 'user', '2018-10-10', 'images/1541498966863742250128.jpg'),
(204, 'Eniolorunda', 'Tosin', 'Tunmishe', 'eniolorundatosin247@gmai.com', '07034582394', 'No 8 iju oke ilutitun,okitipupa,ondo state', '29', '568', 'Male', '1999/04/08 00:00', 'Christian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603009', '7b1685c5096a83118905bc9bba442026', 'Eniolorunda serah', '09060569461', 'No 8 iju oke ilutitun,okitipupa,ondo star', 'Active', 'user', '2018-10-11', 'images/IMG_20181129_111700.jpg'),
(205, 'Osuji', 'Gift', 'Damilola', 'Damilolagift48@gmail.com', '07014569909', 'Oru Ijebu Igbo', '17', '301', 'Female', '2001/09/05 00:00', 'Christian', 'single', 'DEPARTMENT OF SCIENCE LABORATORY\r\nTECHNIQUES', 'Science Laboratory Technology', '0', '200', '201704001', '4afc49c16977f16816f91f03ecf0ae5f', 'Mrs.Fausat Adams', '08180064515', 'Ajah Lagos State', 'Active', 'user', '2018-10-11', 'images/tmp-cam-1929174986.jpg'),
(206, 'ODEN ', 'CYNTHIA', 'INNOCCENT', 'odencynthia48@gmail.com', '09059377492', '13 WATERSIDE, LEKKI PHASE 1, LAGOS STATE ', '9', '173', 'Female', '1998/06/12 10:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804003', 'c759131a2c448ca4abc7d49786aa813d', 'MISS DORATHY JAMES O', '08089342952', '13 WATERSIDE, LEKKI PHASE 1, LAGOS STATE ', 'Active', 'user', '2018-10-19', 'images/2018-11-01 13.19.39.jpg'),
(207, 'JIMOH', 'ADIJAT', 'OMOLARA', 'jimohadijat@gmail.com', '09092587452', '29, C0MMUNITY RD, AJEGUNLE, IKORODU, LAGOS STATE.', '28', '553', 'Female', '1998/02/13 13:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802002', '827e7b89978c2d7867caa6d264861911', 'MR KAZEEM JIMOH', '09092587452', '29, C0MMUNITY RD, AJEGUNLE, IKORODU, LAGOS STATE.', 'Active', 'user', '2018-10-19', 'images/15440141334585341459858060896182.jpg'),
(208, 'HASSAN', 'HASSANAT', 'OLUWADAMILOLA', 'hassanhassanat@gmail.com', '08102908976', '226 ADEBOYE ROAD, OKE SOPEN, IJEBU IGBO', '28', '544', 'Female', '1999/10/15 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802004', 'f04e1fd4cbfeecfdce8aa2ad6e9cf4ac', 'MRS MUINAT HASSAN', '07057752099', '226 ADEBOYE ROAD, OKE SOPEN, IJEBU IGBO', 'Active', 'user', '2018-10-19', 'images/IMG_20181031_154159_9.jpg'),
(209, 'LINUS', 'CHRISTIANA', 'MICHAEL', 'linuschristiana56@gmail.com', '09035340732', 'ARADAGUN BUS STOP, BADAGRY, LAGOS STATE.', '3', '51', 'Female', '2000/08/18 15:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804001', '6cd71071ccd0edfe7500231c77eea572', 'DR OSCAR LINUS', '08031111616', 'ARADAGUN BUS STOP, BADAGRY, LAGOS STATE.', 'Active', 'user', '2018-10-19', 'images/15421068574323706547991872156737.jpg'),
(210, 'ALADE', 'SAMUEL', 'ADEYEMI', 'alade@gmail.com', '08169869916', 'OKE OWODE ILE ONISAPA OGBOMOSHO OYO STATE', '31', '621', 'Male', '1997/01/14 02:00', 'Christian ', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703012', '7b3d40a155f96184b0af850821d5435a', 'MR TAIWO ALADE', '08069844192', 'OKE OWODE ILE ONISAPA OGBOMOSHO OYO STATE', 'Active', 'user', '2018-10-29', 'images/15421198998595327388362286076381.jpg'),
(211, 'ADELAKUN', 'KEHINDE', 'AYOMIDIPUPO', 'Ayomidipupo126@gmail.com', '07066674006', '3okeajoimasayi', '28', '539', 'Female', '1999/05/17 00:00', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702017', '115589979c2cab848a30b040f48cd196', 'ADELAKUN SEYI', '08025053840', '3OKEAJOIMASAYI', 'Active', 'user', '2018-10-30', 'images/IMG_20180522_134608.jpg'),
(212, 'SAHEED', 'OMOLARA', 'ZAINAB', 'demilade@yahoo..com', '09055966164', '47 oluwoidikan street Agric ', '31', '606', 'Female', '1996/11/16 12:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702034', '17940dcb9f4cb5c1cc4ce29e1f066219', 'Mrs Saheed', '08179679539', '4 olayinka street agric ikorodu lagos', 'Active', 'user', '2018-10-30', 'images/1541427287109-436218940.jpg'),
(213, 'ODERINDE', 'ADEBISI', 'OLUWATOSIN', 'oderindeadebisitosin@gmail.com', '08086121565', 'OLORUNESAN STREET ORILE-IFO, IFO, OGUN STATE.', '28', '542', 'Female', '1995/08/04 12:00', 'MUSLIM', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702007', '49f3b324bc8e3f6f5714470c63f295f4', 'MR AJANI ODERINDE', '08023480287', 'OLORUNESAN STREET ORILE-IFO, IFO, OGUN STATE.', 'Active', 'user', '2018-11-05', 'images/tmp-cam-3393504185185193996.jpg'),
(214, 'taiwo', 'tomiwa', 'Esther', 'taiwoewatomi8@gmail.com', '08118599633', '23,oke Alafia atikori,ijebu igbo', '28', '544', 'Female', '2018/11/05 14:35', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 level', '201702023', '5cf7573f250dd48c04cce437c37bebf5', 'taiwo omowunmi', '08079630441', '25,oke ife atikori ijebu igbo', 'Active', 'user', '2018-11-05', 'images/tmp-cam-4647105644938985034.jpg'),
(215, 'ibrahim', 'oreoluwa', 'rofiat', 'ibrahimoreoluwa7@gmail.com', '08069346914', '34,agbole olowu ijebu igbo', '28', '544', 'Female', '2018/11/05 14:44', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702011', 'bb44b8d3289e18ff3b3ac23cfd994186', 'ibraheem adeleke', '08074151572', '34,agbole olowu ijebu igbo', 'Active', 'user', '2018-11-05', 'images/tmp-cam-8484884234490255442.jpg'),
(216, 'Raimi', 'Rofiat', 'Oluwabukola', 'oluwabukolaraimi@gmail.com', '08094570408', '20 Asimiu Ashiwaju street', '31', '607', 'Female', '2018/11/06 11:17', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702009', 'a039b3974f96bc773f7410feaa56f079', 'Mr Raimi', '07052264940', '20 Asimiu Ashiwaju street', 'Active', 'user', '2018-11-06', 'images/15434938357927724307057463994645.jpg'),
(217, 'ALIU', 'AZEEZ', 'OLAYINKA', 'aliu@gmail.com', '08177909806', '17 apata street,shomolu lagos', '24', '470', 'Male', '1993/06/20/12:30', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702021', '5643e7fedf7688184b0c5560ef7c5da9', 'MRS ALIU', '08176349245', '17 apata street,shomolu lagos', 'Active', 'user', '2018-11-06', 'images/1541679222391471877986671296425.jpg'),
(218, 'ADEGBOLA', 'MERCY', 'VICTORIA', 'mercyfulmexi@gmail.com', '07068385442', 'OGIJO OGUN STATE', '24', '480', 'Female', '1999/04/14 11:02', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702008', '1e9769440d071d92107804d4dc5e7222', 'MR ISAAC ADEGBOLA', '08029682733', 'OGIJO OGUN STATE', 'Active', 'user', '2018-11-06', 'images/IMG_20181106_142840.jpg'),
(219, 'Bakare', 'Hannah', 'Abisoye', 'hannahabisoye@gmail.com', '08095496627', 'No 6, Aladeken way oke ako ijebu ode,Ogun state.', '28', '546', 'Female', '2000/06/26', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702065', 'c5eabd6c710ee2b1eb50651376e57def', 'Bakare Hannah oyinade', '08057539695', 'No 6 Aladeken way,oke ako ijebu ode, Ogun States', 'Active', 'user', '2018-11-06', 'images/IMG_20181106_145847.jpg'),
(220, 'Koledafe', 'Mojisola', 'Abosede', 'mojisolakoledafe@gmail.com', '08103056764', 'No 33,oluwapelumi street,atikori ijebu Igbo.', '28', '544', 'Female', '1998/08/4', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702025', 'abe2812fe645eb4e202b7ccb5d5a1dab', 'Koledafe kuburat temitope', '08070656649', 'No 33,oluwapelumi street atikori ijebu Igbo.', 'Active', 'user', '2018-11-06', 'images/IMG_20181106_150131.jpg'),
(221, 'Abulawal', 'Oyinkansola', 'Fatimah', 'abulawaloyinkansola2009@gmail.com', '08180765054', '3 justice abimbola street  stadium road g.r.a ijebu ode', '28', '546', 'Female', '2018/11/06 12:22', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200 ', '201702016', '90c618708b850bc6d6725583316f18a1', 'Abulawal Teniola', '09031313184', '3 justice abimbola street stadium road g.r.a ijebu ode', 'Active', 'user', '2018-11-06', 'images/tmp-cam--1396876633.jpg'),
(222, 'Dauda', 'Sofiat', 'Adebimpe', 'hardebimpesofiat@gmail.com', '08027364106', 'No 6, babalegba ijola street, ikotun lagos.', '28', '538', 'Female', '2000/08/04 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702005', '6d591b474a248763e62da2d5c490aaca', 'Dauda Adeola basirat', '08024464642', 'No 6,babalegba ijola street,ikotun Lagos.', 'Active', 'user', '2018-11-06', 'images/tmp-cam--1283660369.jpg'),
(224, 'Effiong ', 'Gift ', 'Mercy', 'effionggiftmercy@gmail.com', '07089739080', '31,Alaworo street, Ile epo araromi, Badagry expressway, Lagos ', '3', '58', 'Female', '1997/07/27 00:00', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702004', '45301bacf56431aba6d3e20502e48215', 'Rita Effiong ', '07036272610', '31, Alaworo street, Ile epo araromi, Badagry expressway  Lagos ', 'Active', 'user', '2018-11-06', 'images/IMG_20181108_091403_5.jpg'),
(226, 'ABDULGANIYU', 'HAISHAT', 'OLASUNKANMI', 'aishat01@yahoo.com', '08140626551', '67, ADESAN ROAD, OFF, ORISUNMIBARE JUNCTION, MOWE, OGUN STATE.', '13', '232', 'Female', '1999/05/16 15:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802007', '16c0ac70b2edf2d0f186810129a66116', 'ABDULGANIYU ZAINAB', '08061391303', '67, ADESAN ROAD, OFF, ORISUNMIBARE JUNCTION, MOWE, OGUN STATE.', 'Active', 'user', '2018-11-06', 'images/IMG_20181110_043153_094.JPG'),
(227, 'Ilo', 'Suliat', 'Ayomide', 'Ilosuliat@gmail.com', '08099789898', 'No6 omowunmi street igbesa ogun state ', '28', '538', 'Female', '1992/06/12 00:00', 'Muslim ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702077', '8afa847f50a716e64932d995c8e7435a', 'Ilo jimoh', '08034546065', 'No6 omowunmi street igbesa ogun state ', 'Active', 'user', '2018-11-06', 'images/15421985602653661229563513359430.jpg'),
(228, 'adebayi', 'israel', 'adeola', 'adebayoadeola392@gmail.com', '08077146829', 'No:16b sobe,obantoko abeokuta ogun state', '28', '767', 'Male', '2018/11/06 13:44', 'islamic', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702073', 'ee0c248d5e51c0033e19a4605c252928', 'mrs Juliana Mathew adebayo  ', '09051559794', 'No:16b sobe abeokuta,ogun state', 'Active', 'user', '2018-11-06', ''),
(229, 'Akeem', 'Aishat', 'Olajumoke', 'Aishatolajumoke@gmail.Com', '08109606608', 'No5,western strt,secretariat,ijebu_igbo', '30', '592', 'Female', '2018/11/25 11:25', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702043', 'd2d9cf395e7bd2247adbc670cd27f2cb', 'Akeem Alimat olawumi', '09022257409', 'No5,eyonbo anobi strt ,egbeda,ibadan', 'Active', 'user', '2018-11-06', 'images/15426327023618439444759725286262.jpg'),
(230, 'Kolawole ', 'Bisola ', 'Fisayo ', 'Kolawolebisola233@gmail.com', '08118255728', '5 kajola street ilepa ifo', '31', '611', 'Female', '2018/11/06 15:00', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200Lv ', '201702063', '97b9409b02527f3d2bc06bf31bbc2633', 'Kolawole  Sunday ', '08059316368', '5 kajola street ilepa  ifo ', 'Active', 'user', '2018-11-06', 'images/tmp-cam-2758182655850385787.jpg'),
(231, 'MAKINDE', 'OMOLOLA', 'ELIZABETH', 'makindeomololaqueenlizzy94@gmail.com', '09069621767', '23 MAKINDE ST OFF ODOFA ST LAFENWA SANGO', '28', '767', 'Female', '1994/05/11 09:05', 'CHRISTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702013', '281d12ffd431e2b6cd407a389c542e65', 'MAKINDE TITILAYOMIJOY AKINREMI', '08094183858', '25 IPAJA AYOBO ESTATE', 'Active', 'user', '2018-11-06', 'images/15433254569388555349042373633502.jpg'),
(232, 'Oloye', 'Anita', 'chidinma', 'Anitachidima26@gmail.com', '09022638885', 'Igbeolerin,no 12 lasupalace ashadeestate near newyorker', '10', '188', 'Female', '1999/10/01 18:31', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702026', '4c919295f3248ad36037dddb28e82e2c', 'Oloye chioma', '08170876005', 'Igboelerin,no 12 lasupalace near newyorker', 'Active', 'user', '2018-11-07', 'images/1542628158726652319225900296246.jpg'),
(233, 'OYAWA', 'JANET', 'OLUWASEUN', 'oyawajanetoluwaseun@gmail.com', '08186757638', 'MORICAZ LAFENWA LAGOS STATE', '13', '245', 'Female', '1995/10/01 14:00', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702074', '56c1c8593dcf973b110d00cecdc1e756', 'Mrs Oyawa', '08028560763', 'MORICAZ LAFENWA LAGOS STATE', 'Active', 'user', '2018-11-08', 'images/1542197776688172704236029064403.jpg'),
(234, 'AWOFISAYO', 'PELUMI', 'ABIODUN', 'awofisayopelumi@gmail.com', '08170353422', 'ADAMO IKORODU LAGOS', '30', '581', 'Male', '1997/12/20 17:00', 'Xtian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703009', 'abe960d1e1e5ed1324dae17cfcbbd918', 'Mr bolu AWOFISAYO', '08038564024', 'ADAMO IKORODU LAGOS', 'Active', 'user', '2018-11-08', 'images/15426283695074106302584629891757.jpg'),
(235, 'IDOWU', 'ELIZABETH', 'OLUWABUSAYO', 'idowu@gmail.com', '08138065256', 'IYIN EKITI ', '13', '242', 'Female', '2019/10/27 18:00', 'Xtian', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702059', 'd0a5802798ee3b4cad067790729535e7', 'REVD IDOWU', '07034923343', 'IYIN EKITI', 'Active', 'user', '2018-11-08', 'images/15429735020437985679734416642293.jpg'),
(236, 'YUSUF', 'SELIAT', 'AJOKE', 'hadejoke10@gmail.com', '09081192424', '12 ALABEDE STREET AYOBO IPAJA LAGOS STATE', '30', '574', 'Female', '1997/08/28 09:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702060', 'e565ea2e2d400b6461382ca1fce17391', 'MR ADAM OGUNDELE', '08028515736', '12 ALABEDE STREET AYOBO IPAJA LAGOS STATE', 'Active', 'user', '2018-11-09', ''),
(237, 'Alao', 'Omowunmi', 'Omogbolahan', 'Hormowunmi36@gmail.com', '07087201978', 'Liberty oru ijebu', '31', '620', 'Female', '2000/05/27 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702015', '0e1f4f4acfd8223fdc71b9d50e51e05a', 'Mr idowu', '09038366895', 'No,ojuodo  ijegu Lagos State', 'Active', 'user', '2018-11-12', 'images/tmp-cam-4892588002825379303.jpg'),
(238, 'ADESANLU', 'KIKELOMO', 'TOFUNMI', 'adesanlukikelomo@gmail.com', '08099650741', '5 ITAMARUN QUATERZ IJEBU IMUSHIN OGUN STATE. No', '28', '546', 'Female', '1993/03/11 19:00', 'Xtian', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702082', '4012daff221ec576d36c76a96d39b4bd', 'MR ADESANLU STEPHEN', '08099650741', '5 ITAMARUN QUATERZ IJEBU IMUSHIN OGUN STATE.', 'Active', 'user', '2018-11-12', 'images/15421975149906900876747643424340.jpg'),
(239, 'Christopher ', 'Blessing ', 'Faith ', 'Christoblessing@gmail.com', '09030650552', '4,westend ijebu igbo', '9', '173', 'Female', '2018/11/12 11:21', 'Christianity', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200Lv ', '201702061', '0a90787d6bcd3900ada086b3b6766bc5', 'Christopher joy', '09055531410', '9,awobajo str, ilisan remo, ogun state', 'Active', 'user', '2018-11-12', 'images/15428030269115676919147136447818.jpg'),
(240, 'Osumare', 'Basirat', 'Titilope', 'Basiratosumare@yahoo.com', '08136830579', '4,westend ijebu igbo', '25', '486', 'Female', '2018/11/12 11:30', 'Islamic', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200Lv ', '201702029', '824d36a79cc494b913d4d54cb7d2101b', 'Osumare rashidat', '08066596348', '9,hassan street off aiye bus stop isolo lagos', 'Active', 'user', '2018-11-12', 'images/15428034131202027817152345232513.jpg'),
(241, 'SALAUDEEN', 'ologonimi', 'abosede', 'abosede27@gmail.com', '08128909835', 'liberty oru ijebu', '28', '550', 'Female', '1999/04/18 00:00', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702036', 'cdd047d2653818a980ad286c29cb81bb', 'kemi', '08020900245', 'No 2 sanusi ejigbo', 'Active', 'user', '2018-11-12', 'images/tmp-cam-1010575432686258739.jpg'),
(242, 'Badero', 'Oluwasayo', 'Adeola', 'oluwasayo.badero1@gmail.com', '09038323741', '15, Isogun st., Oke agbo, Ijebu Igbo, Ogun state', '28', '544', 'Male', '2001/03/08 13:30', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702002', '754ec4f1c11412304b00121d0c2003ca', 'Ms. Badero Adunni', '08080673557', '15, Isogun st., Oke agbo, Ijebu Igbo Ogun state.', 'Active', 'user', '2018-11-12', 'images/IMG_20181128_035521~2.jpg'),
(243, 'AKINYERA', 'sukurat', 'busayo', 'sukurat85@gmail.com', '08117422379', 'ijebu igbo', '28', '544', 'Female', '2000/07/30 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702085', 'cb46ce62bf0845ed1a8e26ae7570838c', 'kamarudeen', '08056283382', 'No 42,church road ojowo igbo', 'Active', 'user', '2018-11-12', 'images/tmp-cam-1338835954456909726.jpg'),
(244, 'Ayuba', 'Jamiu ', 'Olanrewaju ', 'Jamiuayuba@yahoo.com', '08096615937', 'Oru-ijebu', '28', '555', 'Male', '2018/11/13 11:03', 'Muslim ', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200 ', '201703008', '860a63861a9d2c1aae3677aff60b3902', 'Solaja taofeek', '08138446386', 'Atoyo egben sagamu ogun state ', 'Active', 'user', '2018-11-13', 'images/tmp-cam-7008312633927417006.jpg'),
(245, 'Oladele', 'Opeyemi', 'Selimat', 'Oladeleselimat@yahoo.com', '08144631338', 'Oru_ijebu', '30', '577', 'Female', '2018/11/13 13:10', 'Muslim', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703002', '68727d15820a0c2ebc29636a8ba6d666', 'Oladele Ayuba', '08074648081', 'Bamikemo56 ondo state', 'Active', 'user', '2018-11-13', 'images/15427931635971748517450.jpg'),
(246, 'ODEFADEHAN', 'TEMILADE', 'IYABO', 'temmy@gmail.com', '08169743270', '18 IKANSI ORU IJEBU OGUN STATE', '29', '565', 'Female', '1999/09/23 19:00', 'Xtian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703014', '619c42cabd012506fff5f96021416dc0', 'MR ODEFADEHAN', '07031600388', '2 MOSE BALOGUN IFO OGUN STATE', 'Active', 'user', '2018-11-13', 'images/tmp-cam-508783321271577257.jpg');
INSERT INTO `students` (`stdId`, `firstname`, `middlename`, `lastname`, `email`, `phone`, `stdaddress`, `state`, `lga`, `gender`, `dob`, `religion`, `maritalstatus`, `faculty`, `dept`, `discipline`, `level`, `matricno`, `password`, `nokname`, `nokphone`, `nokaddress`, `user_status`, `user_type`, `regdate`, `picture`) VALUES
(247, 'JOHN', 'PATIENCE', 'FAVOUR', 'john@gmail.com', '08088154906', '18 IKANSI ORU IJEBU OGUN STATE', '11', '212', 'Female', '1993/09/03 19:00', 'Xtian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703006', 'e2577c04131c5b0c7e7580f978322b31', 'MR GODDAY JOHN', '08088154906', '85 IGBE IKORODU LAGOS', 'Active', 'user', '2018-11-13', 'images/tmp-cam-1070968761736750994.jpg'),
(248, 'MOHAMMED', 'HAWA', 'EVE', 'eve@gmail.com', '09061935598', '32 AHOADA ROAD RIVER STATE', '23', '449', 'Female', '2000/02/14 21:00', 'Xtian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703010', '6de66ac1b2bc41a9661b12f3b45aa86b', 'MR PRINCE MOHAMMED', '08130500362', '32 AHOADA ROAD RIVER STATE', 'Active', 'user', '2018-11-13', 'images/tmp-cam-8014592024674994432.jpg'),
(250, 'SODIPO', 'MORENIKEJI', 'FLORENCE', 'sodipo@gmail.com', '07062992361', '2 ABSY9MI JONES IKOTUN LAGOS ', '28', '537', 'Female', '2018/11/08 13:36', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702062', 'dffefdea461ca83991f34e08e62d7c96', ' MR OLA SODIPO', '07062992361', '2 ABSY9MI JONES IKOTUN LAGOS', 'Active', 'user', '2018-11-14', 'images/1542795417531797569924.jpg'),
(251, 'Banjo', 'Azeezat', 'Olajumoke', 'Banjoazeezat@gmail.com', '09066107875', '20 cele str ajanbadi ojo lagos', '28', '544', 'Female', '1997/03/09 00:00', 'Muslim', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702019', 'cbb3fd9d1c28b28d53bb7e4cd7d4bf72', 'Banjo rashidat', '08029642041', '20 cele str ajanbadi ojo lagos', 'Inactive', 'user', '2018-11-14', 'images/tmp-cam--426133879.jpg'),
(252, 'OMONIYI', 'TAIWO', 'DANIEL', 'taiwoomo79@gmail.com', '09065816113', '2 BLESSED JUNCTION ORU IJEBU', '29', '566', 'Male', '1997/02/07 14:31', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702069', '5cf7573f250dd48c04cce437c37bebf5', 'OMONIYI KEHINDE', '08025870761', 'IDIROKO IKORODU LAGOS', 'Active', 'user', '2018-11-14', 'images/tmp-cam-6519780799139370079.jpg'),
(254, 'Ejalonibu', 'Oluwapelumi', 'Omolara', 'Ejalonibupelumi1@gmail.com', '09020158694', 'No 3 ijebu ode', '31', '612', 'Female', '2018/11/19 10:36', 'Christian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200level', '201702076', 'cc5c794da5f60a9f1600352da8a59461', 'Ejalonibu oluwaseyi', '08098848885', 'No3 ijebu ode', 'Active', 'user', '2018-11-19', ''),
(255, 'TIJANI', 'OMOGBOLAHUN', 'WARIZ', 'wariz@gmail.com', '07037440259', '8 OLUSHOLA ODIJA STREET MAKUN SHAGAMU OGUN STATE', '31', '609', 'Male', '2000/10/18 17:00', 'Xtian', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703005', 'd4d2f11c57a1880f4572bf198a886de0', 'MR GAFARU', '07037440259', '8 OLUSHOLA ODIJA STREET MAKUN SHAGAMU OGUN STATE', 'Active', 'user', '2018-11-19', 'images/1542794642572207797806.jpg'),
(256, 'AKANDE', 'OLUBUKOLA', 'JANET', 'akandejanet7911@gmail.com', '07037948237', '21 ADESINA OGUNFOLU EYITA IKORODU LAGOS STATE', '29', '556', 'Female', '1979/09/11 09:00', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201602061', 'de449db2559fe095b7d933287353c51f', 'MR AKANDE ALEX ADEKOYA', '07032375075', '21 ADESINA OGUNFOLU EYITA IKORODU LAGOS STATE', 'Active', 'user', '2018-11-21', 'images/15434139841824854742277046859575.jpg'),
(257, 'ODUNTAN', 'MOTUNRAYO', 'OLUWADAMILOLA', 'damilola@gmail.com', '08073109600', '17 KAZEEM STREET ODORASONYIN IJEBU IGBO OGUN STATE', '28', '544', 'Female', '2003/07/08 14:00', 'Xtian', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804016', '074759434803b300a3fa36bc0df22a61', 'MISS BAMIRO MOTUNRAYO', '07056612962', '17 KAZEEM STREET ODORASONYIN IJEBU IGBO OGUN STATE', 'Active', 'user', '2018-11-22', ''),
(259, 'OLAITAN', 'MONSURAT', 'ABIODUN', 'abiodun@gmail.com', '08187250271', '2 OWOLABI STREET AGBEDE IKORODU LAGOS STATE', '24', '470', 'Female', '1995/11/13 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804025', '0682f527953a89beb0b1cd669bf281a8', 'MRS SIDIKAT OLAITAN', '08167584675', '2 OWOLABI STREET AGBEDE IKORODU LAGOS STATE', 'Active', 'user', '2018-11-27', 'images/15434860326641139028235223054222.jpg'),
(260, 'FOLORUNSO', 'TAWA', 'OLAJUMOKE', 'jumoke@gmail.com', '08137387289', '38 OREMEJI STREET IKOTUN LAGOS STATE', '29', '556', 'Female', '1995/11/25 11:00', 'Xtian', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804032', '007001dec1ffc74b031b14129d121dac', 'MR ALABA FOLORUNSO', '08137387289', '38 OREMEJI STREET IKOTUN LAGOS STATE', 'Active', 'user', '2018-11-27', 'images/15440139280026670675979855193079.jpg'),
(261, 'AKINWANDE', 'OKIKIOLA', 'SERIFAT', 'okikiola@gmail.com', '08160420823', 'IDOWU SABA OLOSUN OTA OGUN STATE', '28', '538', 'Female', '2003/05/29 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804002', '8929bea9f98416daead595cc8e20f1de', 'MRS SIDIKAT AKINWANDE', '08097450963', 'IDOWU SABA OLOSUN OTA OGUN STATE', 'Active', 'user', '2018-11-27', 'images/15434947607627369662223052823160.jpg'),
(262, 'NUBI', 'JM', 'DAY', 'talk2nubi@gmail.com', '07063039755', 'EROKE QUATERS ATTE, AKOKO EDO  LOCAL GOVERNMENT', '15', '263', 'Male', '2018/11/16 16:38', 'christianity', 'single', 'DEPARTMENT OF HEALTH INFORMATION &amp;\r\nTECHNOLOGY', 'Health Information Management Technician', '0', '100', 'dpt12345', '827ccb0eea8a706c4c34a16891f84e7b', 'daddy', '08055343666', 'ogun', 'Active', 'user', '2018-11-27', ''),
(263, 'ADEBAJO', 'ADESHOLA', 'MARY', 'adeshola@gmail.com', '08074549187', '11 NEW MARKET ROAD ATIKORI IJEBU IGBO OGUN STATE', '30', '595', 'Female', '1986/10/23 03:00', 'Xtian', 'married', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300', '201603002', 'ca0c1e2c7df1a339aa13eb1dea0f88b4', 'MR ABIODUN ADEBAJO', '08074549187', '11 NEW MARKET ROAD ATIKORI IJEBU IGBO OGUN STATE', 'Active', 'user', '2018-11-28', 'images/15434084630761165766985354648707.jpg'),
(264, 'BAYODE', 'YETUNDE', 'FLORENCE', 'yetunde@gmail.com', '07018968557', '14 ADESAN STREET WOME OGUN STATE', '29', '560', 'Female', '2000/08/05 16:00', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802032', '64f2c83edb17097e5652804fac2e794e', 'MR SOJI BAYODE', '09026819478', '14 ADESAN STREET WOME OGUN STATE', 'Active', 'user', '2018-11-28', 'images/tmp-cam-2134022535.jpg'),
(266, 'Akunyemi', 'Oluwabamitoyi', 'Roseline', 'Akunyemi98@gmail.com', '09068837020', 'Funmodara along Olad Hospital', '29', '568', 'Female', '1998/01/27 00:00', 'Christain', 'Select One', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technician', '0', '300 ', '201603006', '422c956653a743ac9f2272d89f4829de', 'Akunyemi Aduragbemi', '08054521936', 'No 35 iju oke street ', 'Inactive', 'user', '2018-11-28', ''),
(267, 'Adeyemo', 'Abimbola', 'Adenike', 'Adeyemoabimbola1@gmail.com', '09077919064', '13 goodness and mercy street ikorodu Lagos ', '31', '606', 'Female', '2018/11/28 15:12', 'Christian ', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702028', '3a955b7921b80b96894e98bdf115ed3b', 'Adeyemo sunmisola', '08123472889', '13 goodness and mercy street ikorodu Lagos ', 'Active', 'user', '2018-11-28', 'images/1545216990757121743179227790647.jpg'),
(268, 'ADENUGA', 'ADESEWA', 'OLUWAFERANMI', 'adenuga@gmail.com', '08118618845', '11 ODOPETUNJI STREET OJOWO IJEBU IGBO OGUN STATE', '28', '544', 'Female', '1998/04/07 11:13', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802037', '32624f3d4116759926d45d037e58dd50', 'MR DOMINION OLATUNJI', '07055814024', '11 ODOPETUNJI STREET OJOWO IJEBU IGBO OGUN STATE', 'Active', 'user', '2018-11-29', 'images/15475570002717196706329978045576.jpg'),
(269, 'ODEKUNLE', 'WASILAT', 'AJEFUNKE', 'wasilat@gmail.com', '08139142583', '20 OLUWASEUN STREET IKOTUN EGBE LAGOS ', '28', '542', 'Female', '1999/10/03 14:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802010', 'b427804d47a16a3c9f7336383ac23f93', 'MRS OLAYINKA TAIWO', '07037456970', '20 OLUWASEUN STREET IKOTUN EGBE LAGOS ', 'Active', 'user', '2018-11-29', 'images/Lara.jpg'),
(270, 'AJAYI', 'TITILAYO', 'QUEEN', 'queen@gmail.com', '07081370883', '17 OKE ERI STREET OWORONSOKI LAGOS', '28', '546', 'Female', '2000/10/09 16:00', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802051', 'f1b20b0fb7bd022772a30efa391f9595', 'MRS HELLEN AJAYI', '08038012883', '17 OKE ERI STREET OWORONSOKI LAGOS', 'Active', 'user', '2018-11-29', 'images/154349590103428339667523240134.jpg'),
(271, 'RAJI', 'MORUFAT', 'OLAIDE', 'rajimorufat7@yahoo.com', '08160250171', 'AMULOKO ABA OTUN IBADAN', '31', '626', 'Female', '1996/12/08 15:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702024', '109f867ea7883c9de5f22390d463d01d', 'MRS WASIU SAKIRAT', '08074291516', 'AMULOKO ABA OTUN IBADAN', 'Active', 'user', '2018-11-29', 'images/15434955404996828702393084495196.jpg'),
(273, 'Itafor', 'franc', 'clement', 'itaforfrancis@gmail.com', '07065907948', 'Ikorodu, Lagos Nigeria', '12', '740', 'Male', '2018/12/07 10:14', 'christianity', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '100', '08/50053', 'd0ab7fe6c314f4fe5b6c18a0157c96b4', 'Francis', '09065907948', 'Abgado', 'Active', 'user', '2018-12-03', ''),
(274, 'BADEWA', 'KHADIJAT', 'OMOWUNMK', 'KHADDYQUEEN11@GMAIL.COM', '07057257415', 'NO 2B BADEWA CLOSE', '28', '544', 'Female', '1997/11/11 00:00', 'MUSLIM', 'single', 'DEPARTMENT OF ENVIRONMENTAL HEALTH', 'Environmental Health Technology', '0', '200', '201703013', '1a13c6b306a7294a482ea2cb5d0a3ba9', 'ROFIAT', '07057257415', 'NO 2B BADEWA CLOSE', 'Active', 'user', '2018-12-04', ''),
(275, 'IPAYE', 'FATIMO', 'ADENIKE', 'ipaye@gmail.com', '08073191101', '58 OKE OLA STREET ORU IJEBU OGUN STATE', '28', '544', 'Female', '1970/04/27 14:00', 'Xtian', 'married', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804033', 'cc1ed9d1e00398d82971716eafef06d6', 'MR SAKIRU BAKARE OLUWANISHOLA', '08155666952', '58 OKE OLA STREET ORU IJEBU OGUN STATE', 'Active', 'user', '2018-12-04', 'images/15482350861194106072872173098997.jpg'),
(276, 'BOLAJI', 'DASOLA', 'RACHEL', 'bolajidasola2018@yahoo.com', '08156576522', 'CALVARY STREET ARAROMI OYO TOWN OYO STATE', '31', '621', 'Female', '2000/08/22 16:00', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804034', '22e000ce2ea2a95610c6426e650f9f93', 'MR OLAOLUWA  BOLAJI', '08137749002', 'CALVARY STREET ARAROMI OYO TOWN OYO STATE', 'Inactive', 'user', '2018-12-05', ''),
(277, 'AWODIOKE', 'OLUWASEUN', 'TEMITOPE ', 'oluwadami680@gmail.com', '09058765573', 'IYANALOGBO SANGO OTA, OGUN STATE', '29', '769', 'Female', '2018/12/26 10:03', 'XTIAN', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702003', 'bc0cbcacee08d345efe88f4e447db6ab', 'AWODIOKE DAMILOLA', '08122194409', 'IYANALOGBO SANGO OTA, OGUN STATE', 'Inactive', 'user', '2018-12-06', ''),
(278, 'BANKOLE', 'ESTHER', 'ANJOLA', 'bankoleesther200@gmail.com', '09021244324', '75,bambi street,opposite railway station,ijoko,Otta,ogun state', '28', '541', 'Female', '1996/04/04 14:49', 'christianity', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804035', '63f7e4b3b89bf381a4b5e9eeb53ba5f2', 'MISS TOLULOPE BANKOLE', '08181811351', '75,bambi street,opposite railway station,ijoko,Otta,Ogun state', 'Active', 'user', '2018-12-07', ''),
(279, 'ASHIRU', 'OYINDAMOLA', 'MONSURAT', 'ashiruoyindamola90@gmail.com', '07064775621', '27 ODO BALOGUN STREET OKE SHOPIN IJEBU IGBO', '28', '544', 'Female', '2018/12/25 18:00', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702014', 'bcb9684baf715eacab3bba56bcecbf56', 'MISS OLORUNJEDALO ASHIRU', '08167635875', '27 ODO BALOGUN STREET OKE SHOPIN IJEBU IGBO', 'Active', 'user', '2018-12-11', 'images/15452168016962321384363922113857.jpg'),
(280, 'OLALEKAN', 'AISHAT', 'OLUWAKEMI', 'olalekanaishat88@yahoo.com', '09071445127', 'KAJOLA STATION IFO OGUN STSTE', '30', '594', 'Female', '1996/02/11 18:00', 'MUSLIM', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '200', '201702058', '0b7177481da7c261cf65d4011a1784f4', 'MRS OLALEKAN', '09033951729', 'KAJOLA STATION IFO OGUN STATE', 'Active', 'user', '2018-12-14', ''),
(281, 'AKINGBOYE', 'DAYO', 'RACHEL', 'dayorachel9@gmail.com', '08187027594', '10 ADEGUN ADURALERE STREET JAKANDE ESTATE LAGOS no', '29', '561', 'Female', '1997/12/04 16:00', 'Xtian', 'single', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802021', '201055508918f13e384fba99eec41de5', 'MRS CHRISTANA', '08026341862', '10 ADEGUN ADURALERE STREET JAKANDE ESTATE LAGOS', 'Active', 'user', '2019-01-10', 'images/15475575187162974325400647077930.jpg'),
(282, 'Lawal', 'Fatimoh', 'Omotola', 'fatimohlawal101@gmail.com', '08059561790', 'No4, olowolagba avenue onirugba ijebu ode', '28', '546', 'Female', '1987/10/17 00:00', 'Muslim', 'married', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804036', 'ca99662119ecd84baac0fcf4d6415508', 'Lawal Ayub Adebola', '08079946464', 'No4, olowolagba avenue onirugba ijebu ode', 'Active', 'user', '2019-01-14', 'images/IMG_20190112_153914_1.jpg'),
(283, 'AKINTOYE', 'AZEEZAT', 'OLUWASEUN', 'seun@gmail.com', '08023463840', '14B AINA OBEY STREET AJAKA SHAGAMU', '28', '555', 'Female', '1997/04/06 12:00', 'christian', 'single', 'DEPARTMENT OF COMMUNITY HEALTH', 'Community health (senior)', '0', '100', '201804037', 'f4cc831ea3d61bd42236257e9b834509', 'MISS AKINTOYE MONSURAT', '09095505596', '14B AINA OBEY STREET AJAKA SHAGAMU', 'Active', 'user', '2019-01-15', ''),
(284, 'AGOH', 'MARTHA', 'NKIRUKA', 'unextdream@gmail.com', '08062322821', '12 IFELODUN STREET IGBOELERIN OJO LAGOS', '17', '277', 'Female', '1984/11/14 19:00', 'Xtian', 'married', 'DEPARTMENT OF PUBLIC HEALTH NURSING', 'Health Assistant (Medical)', '0', '100', '201802047', 'b8e1f83e16388a3f1896babe53a8b15a', 'MR MOSES UCHENNA ', '08033229599', '12 IFELODUN STREET IGBOELERIN OJO LAGOS', 'Inactive', 'user', '2019-01-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `studenttest`
--

CREATE TABLE `studenttest` (
  `stdid` bigint(20) NOT NULL DEFAULT '0',
  `testid` bigint(20) NOT NULL DEFAULT '0',
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `correctlyanswered` int(11) DEFAULT NULL,
  `status` enum('over','inprogress') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttest`
--

INSERT INTO `studenttest` (`stdid`, `testid`, `starttime`, `endtime`, `correctlyanswered`, `status`) VALUES
(1, 1, '2018-07-25 11:26:42', '2018-07-25 11:46:42', 0, 'over'),
(1, 2, '2018-07-25 11:39:10', '2018-07-25 11:41:10', 0, 'over'),
(8, 1, '2018-05-28 20:32:29', '2018-05-28 21:02:29', 0, 'over'),
(8, 2, '2018-05-28 22:28:04', '2018-05-28 22:53:04', 0, 'over'),
(8, 3, '2018-05-28 23:10:22', '2018-05-28 23:11:22', 0, 'over'),
(8, 5, '2018-05-28 20:25:47', '2018-05-28 21:25:47', 0, 'over'),
(8, 8, '2018-05-28 20:15:17', '2018-05-28 23:15:17', 0, 'over'),
(8, 10, '2018-05-28 17:46:30', '2018-05-28 22:46:30', 0, 'over'),
(8, 12, '2018-05-28 16:45:01', '2018-05-31 04:45:01', 0, 'over'),
(8, 13, '2018-05-31 18:50:00', '2018-05-31 18:52:00', 0, 'over'),
(10, 8, '2018-05-30 11:12:50', '2018-05-30 14:12:50', 0, 'over'),
(12, 8, '2018-06-08 14:48:51', '2018-06-08 17:48:51', 0, 'inprogress');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subid` int(11) NOT NULL,
  `subname` varchar(40) DEFAULT NULL,
  `subdesc` varchar(100) DEFAULT NULL,
  `tcid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subid`, `subname`, `subdesc`, `tcid`) VALUES
(1, '2018 ENTRANCE EXAMINATION', '2018 EXAM', NULL),
(2, 'English', 'Enlish lsngnknn', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `testid` bigint(20) NOT NULL,
  `testname` varchar(30) NOT NULL,
  `testdesc` varchar(100) DEFAULT NULL,
  `testdate` date DEFAULT NULL,
  `testtime` time DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `testfrom` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `testto` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) DEFAULT NULL,
  `totalquestions` int(11) DEFAULT NULL,
  `attemptedstudents` bigint(20) DEFAULT NULL,
  `testcode` varchar(40) NOT NULL,
  `tcid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`testid`, `testname`, `testdesc`, `testdate`, `testtime`, `subid`, `testfrom`, `testto`, `duration`, `totalquestions`, `attemptedstudents`, `testcode`, `tcid`) VALUES
(1, '2018', 'ENTRANCE EXAMINATION ', '2018-07-25', '11:23:53', 1, '2018-07-25 10:32:27', '2018-07-25 22:59:59', 20, 3, 0, 'zKly', NULL),
(2, 'eng', 'enhhh', '2018-07-25', '12:34:57', 2, '2018-07-25 11:34:57', '2018-07-25 22:59:59', 2, 2, 0, '.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testconductor`
--

CREATE TABLE `testconductor` (
  `tcid` bigint(20) NOT NULL,
  `tcname` varchar(40) DEFAULT NULL,
  `tcpassword` varchar(40) DEFAULT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testconductor`
--

INSERT INTO `testconductor` (`tcid`, `tcname`, `tcpassword`, `emailid`, `contactno`, `address`, `city`, `pincode`) VALUES
(1, 'itafor', '5òÿªÿ', 'itaforfrancis@gmail.com', '09098787888', 'Lambe', 'ogun', '777'),
(2, 'wale', '.»Å', 'wale@yahoo.com', '08055355933', 'lagos', 'lagos', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`admname`);

--
-- Indexes for table `anouncement`
--
ALTER TABLE `anouncement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseregister`
--
ALTER TABLE `courseregister`
  ADD PRIMARY KEY (`courseRegId`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depts`
--
ALTER TABLE `depts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emaillist`
--
ALTER TABLE `emaillist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locals`
--
ALTER TABLE `locals`
  ADD PRIMARY KEY (`local_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsfiles`
--
ALTER TABLE `newsfiles`
  ADD PRIMARY KEY (`fileId`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`testid`,`qnid`);

--
-- Indexes for table `reply_complain`
--
ALTER TABLE `reply_complain`
  ADD PRIMARY KEY (`replyID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stdid`),
  ADD UNIQUE KEY `stdname` (`stdname`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `studentquestion`
--
ALTER TABLE `studentquestion`
  ADD PRIMARY KEY (`stdid`,`testid`,`qnid`),
  ADD KEY `testid` (`testid`,`qnid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stdId`);

--
-- Indexes for table `studenttest`
--
ALTER TABLE `studenttest`
  ADD PRIMARY KEY (`stdid`,`testid`),
  ADD KEY `testid` (`testid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `subname` (`subname`),
  ADD KEY `subject_fk1` (`tcid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`testid`),
  ADD UNIQUE KEY `testname` (`testname`),
  ADD KEY `test_fk1` (`subid`),
  ADD KEY `test_fk2` (`tcid`);

--
-- Indexes for table `testconductor`
--
ALTER TABLE `testconductor`
  ADD PRIMARY KEY (`tcid`),
  ADD UNIQUE KEY `stdname` (`tcname`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `anouncement`
--
ALTER TABLE `anouncement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `appId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `courseregister`
--
ALTER TABLE `courseregister`
  MODIFY `courseRegId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `depts`
--
ALTER TABLE `depts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `emaillist`
--
ALTER TABLE `emaillist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `locals`
--
ALTER TABLE `locals`
  MODIFY `local_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=777;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsfiles`
--
ALTER TABLE `newsfiles`
  MODIFY `fileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reply_complain`
--
ALTER TABLE `reply_complain`
  MODIFY `replyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`testid`) REFERENCES `test` (`testid`);

--
-- Constraints for table `studentquestion`
--
ALTER TABLE `studentquestion`
  ADD CONSTRAINT `studentquestion_ibfk_1` FOREIGN KEY (`stdid`) REFERENCES `student` (`stdid`),
  ADD CONSTRAINT `studentquestion_ibfk_2` FOREIGN KEY (`testid`,`qnid`) REFERENCES `question` (`testid`, `qnid`);

--
-- Constraints for table `studenttest`
--
ALTER TABLE `studenttest`
  ADD CONSTRAINT `studenttest_ibfk_1` FOREIGN KEY (`stdid`) REFERENCES `student` (`stdid`),
  ADD CONSTRAINT `studenttest_ibfk_2` FOREIGN KEY (`testid`) REFERENCES `test` (`testid`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_fk1` FOREIGN KEY (`tcid`) REFERENCES `testconductor` (`tcid`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_fk1` FOREIGN KEY (`subid`) REFERENCES `subject` (`subid`),
  ADD CONSTRAINT `test_fk2` FOREIGN KEY (`tcid`) REFERENCES `testconductor` (`tcid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
