-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 05:30 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depotter`
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
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `email`, `username`, `password`, `phone`, `picture`, `code`, `active`, `regdate`) VALUES
(1, 'Itafor Francis', 'itafrancis@gmail.com', 'frank', 'frank', '08065907948', '', '', 1, '0000-00-00');

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
(1, 'tttCSC 212', 1, 'Introductiowwwn to Computer Electronics ', '3'),
(3, 'csc103', 1, 'Basic Programming 1', '1'),
(4, 'csc110', 2, ' Introduction to Computer Electronics ', '2'),
(5, 'csc120', 2, 'Introduction to Operating System', '3'),
(6, 'csc130', 2, ' Scientific Programming ', '3'),
(7, 'CSC 212', 3, 'Introduction to Computer Electronics ', '3'),
(8, 'CSC221', 3, 'Introduction to Operating System', '3'),
(9, 'CSC 231', 3, 'Scientific Programming', '3'),
(10, 'CSC 232 ', 4, 'Structured Programming ', '2'),
(11, 'CSC 233', 4, 'Programming and Algorithms', '3'),
(12, 'CSC 234', 4, 'Assembly Language Programming', '2'),
(13, 'CSC 301', 5, 'Computer Centre Management', '3'),
(14, 'CSC 302', 5, 'Systems Analysis', '3'),
(15, 'CSC 311', 5, 'Digital Computer Logic Design', '3'),
(16, 'CSC 312', 5, 'Computer Hardware', '2'),
(17, 'CSC 321', 5, 'Computer Operating Systems I', '2'),
(18, 'CSC 332', 5, 'Survey of Programming Languages', '3'),
(19, 'CSC 333', 5, 'Software Engineering I', '4'),
(20, 'CSC 334', 5, 'Systems Programming', '3'),
(21, 'CSC 341', 5, 'Data Structures ', '3'),
(22, 'CSC 351', 5, ' Formal Languages and Automata Theory', '3'),
(23, 'CSC 381', 5, 'Computer Graphics ', '3'),
(24, 'CSC 391', 5, 'File Management', '4'),
(25, 'phy 101', 9, 'Electronics 1', '2'),
(26, 'phy 102', 9, 'PHYSICS PRACTICAL', '1');

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
(4, '', 'Bimbo Adebayo', '08/50066', '2017', '1', '1', '1', '2', '5', '50', '12', '2018-04-27'),
(5, '', 'Bimbo Adebayo', '08/50066', '2017', '1', '1', '1', '2', '6', '34', '12', '2018-04-27'),
(6, '', 'Bimbo Adebayo', '08/50066', '2017', '1', '1', '1', '2', '4', '55', '23', '2018-04-27'),
(7, '', 'Bimbo Adebayo', '08/50066', '2017', '1', '1', '1', '2', '5', '', '', '2018-04-27'),
(8, '', 'Bimbo Adebayo', '08/50066', '2017', '1', '1', '1', '2', '6', '', '', '2018-04-27'),
(9, '', 'LINDA DADA', '08/50044', '2018', '1', '1', '1', '2', '6', '55', '23', '2018-04-27'),
(11, '', 'Laura  Bose', '08/50011', '2018', '1', '1', '1', '1', '2', '', '', '2018-04-27'),
(12, '', 'Laura  Bose', '08/50011', '2018', '1', '1', '1', '1', '3', '36', '23', '2018-04-27'),
(14, '', 'Itafor Francis', '08/50058', '2018', '1', '1', '1', '1', '2', '', '', '2018-04-27'),
(15, '', 'Itafor Francis', '08/50058', '2018', '1', '1', '1', '1', '3', '44', '12', '2018-04-27'),
(16, '', 'Itafor John', '08/50022', '2018', '1', '1', '1', '1', '1', '60', '30', '2018-04-27'),
(17, '', 'Itafor John', '08/50022', '2018', '1', '1', '1', '1', '2', '', '', '2018-04-27'),
(20, '', 'Bimbo Adebayo', '08/50050', '2018', '1', '1', '1', '1', '2', '', '', '2018-04-27'),
(22, '', 'victoria Mick', '08/4000', '2018', '1', '1', '1', '1', '2', '', '', '2018-04-27'),
(23, '', 'victoria Mick', '08/4000', '2018', '1', '1', '1', '1', '3', '70', '23', '2018-04-27'),
(24, '', 'Itafor Francis', '08/50053', '2017', '1', '1', '2', '3', '7', '70', '23', '2018-04-28'),
(25, '', 'Itafor Francis', '08/50053', '2017', '1', '1', '2', '3', '8', '7', '6', '2018-04-28'),
(27, '', 'FREEDOM MAN', '08/50053', '2016', '1', '1', '1', '1', '1', '', '', '2018-04-28'),
(28, '', 'FREEDOM MAN', '08/50053', '2016', '1', '1', '1', '1', '3', '', '89', '2018-04-28'),
(29, '', 'FREEDOM MAN', '08/50053', '2016', '1', '1', '1', '2', '4', '', '', '2018-04-28'),
(30, '', 'FREEDOM MAN', '08/50053', '2016', '1', '1', '1', '2', '5', '', '', '2018-04-28'),
(31, '', 'FREEDOM MAN', '08/50053', '2016', '1', '1', '1', '2', '6', '', '', '2018-04-28'),
(32, 'Computer Science', 'Mr. Francis Edoki', '08/50053', '2018', '1', '1', '2', '3', '7', '', '', '2018-04-29'),
(33, 'Computer Science', 'Mr. Francis Edoki', '08/50053', '2018', '1', '1', '2', '3', '8', '', '', '2018-04-29'),
(34, 'Computer Science', 'Mr. Francis Edoki', '08/50053', '2018', '1', '1', '2', '3', '9', '', '', '2018-04-29'),
(35, 'Statistics', 'Itafor Francis', '08/50053', '2016', '1', '1', '2', '4', '10', '', '', '2018-04-30'),
(36, 'Statistics', 'Itafor Francis', '08/50053', '2016', '1', '1', '2', '4', '11', '', '', '2018-04-30'),
(37, 'Statistics', 'Itafor Francis', '08/50053', '2016', '1', '1', '2', '4', '12', '', '', '2018-04-30'),
(38, 'Computer Science', 'Itafor Francis', '08/50053', '2016', '1', '1', '5', '5', '13', '44', '30', '2018-04-30'),
(40, 'Computer Science', 'Itafor Francis', '08/50053', '2016', '1', '1', '5', '5', '15', '', '', '2018-04-30'),
(41, 'Computer Science', 'Itafor Francis', '08/50053', '2016', '1', '1', '5', '5', '16', '34', '22', '2018-04-30'),
(42, 'Computer Science', 'Itafor Francis', '08/50053', '2016', '1', '1', '5', '5', '17', '', '', '2018-04-30'),
(43, 'Computer Science', 'Itafor Francis', '08/50053', '2016', '1', '1', '5', '5', '18', '', '', '2018-04-30'),
(44, 'Computer Science', 'Itafor Francis', '08/50053', '2016', '1', '1', '5', '5', '19', '', '', '2018-04-30'),
(45, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '13', '', '', '2018-05-01'),
(46, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '14', '', '', '2018-05-01'),
(47, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '15', '', '', '2018-05-01'),
(48, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '16', '', '', '2018-05-01'),
(49, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '17', '', '', '2018-05-01'),
(50, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '18', '', '', '2018-05-01'),
(51, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '19', '', '', '2018-05-01'),
(52, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '20', '', '', '2018-05-01'),
(53, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '21', '', '', '2018-05-01'),
(54, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '22', '', '', '2018-05-01'),
(55, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '23', '', '', '2018-05-01'),
(56, 'Computer Science', 'Itafor Francis', '08/50053', '2018', '1', '1', '5', '5', '24', '', '', '2018-05-01'),
(57, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '13', '56', '23', '2018-05-01'),
(58, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '14', '', '', '2018-05-01'),
(59, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '15', '', '', '2018-05-01'),
(61, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '17', '', '', '2018-05-01'),
(62, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '18', '', '', '2018-05-01'),
(63, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '19', '', '', '2018-05-01'),
(64, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '20', '', '', '2018-05-01'),
(65, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '21', '', '', '2018-05-01'),
(66, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '22', '', '', '2018-05-01'),
(67, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '23', '', '', '2018-05-01'),
(68, 'Statistics', 'Bimbo Adebayo', '08/50066', '2016', '1', '1', '5', '5', '24', '', '', '2018-05-01'),
(69, 'physics', 'FREEDOM MAN', '08/4000', '2016', '1', '1', '5', '5', '13', '32', '12', '2018-05-01'),
(70, 'Computer Science', 'LINDA DADA', '08/50044', '2016', '1', '1', '5', '5', '13', '45', '5', '2018-05-01'),
(71, 'physics', 'Laura  Bose', '08/50022', '2016', '1', '1', '5', '5', '13', '23', '12', '2018-05-01'),
(72, 'Computer Science', 'Bimbo Adebayo', '08/5444', '2018', '1', '1', '1', '1', '1', '0', '0', '2018-05-05'),
(73, 'Computer Science', 'Bimbo Adebayo', '08/5444', '2018', '1', '1', '1', '1', '3', '70', '11', '2018-05-05'),
(74, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '13', '54', '23', '2018-05-05'),
(75, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '14', '0', '0', '2018-05-05'),
(76, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '15', '0', '0', '2018-05-05'),
(77, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '16', '37', '19', '2018-05-05'),
(78, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '17', '0', '0', '2018-05-05'),
(79, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '18', '0', '0', '2018-05-05'),
(80, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '19', '0', '0', '2018-05-05'),
(81, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '20', '0', '0', '2018-05-05'),
(82, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '21', '0', '0', '2018-05-05'),
(83, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '22', '0', '0', '2018-05-05'),
(84, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '23', '0', '0', '2018-05-05'),
(85, 'Computer Science', 'Laura  Bose', '00217', '2016', '1', '1', '5', '5', '24', '0', '0', '2018-05-05'),
(86, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '13', '0', '0', '2018-05-05'),
(87, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '14', '0', '0', '2018-05-05'),
(88, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '15', '0', '0', '2018-05-05'),
(89, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '16', '0', '0', '2018-05-05'),
(90, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '17', '0', '0', '2018-05-05'),
(91, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '18', '0', '0', '2018-05-05'),
(92, 'Computer Science', 'FREEDOM MAN', '08/5000', '2016', '1', '1', '5', '5', '19', '0', '0', '2018-05-05');

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
(1, 'Department of Computer Science', 1),
(2, 'Physics Department ', 1),
(3, 'Chemistry Department ', 1),
(4, 'DEPARTMENT OF TEACHER EDUCATION', 2),
(5, 'DEPARTMENT OF ADULT EDUCATION', 2),
(6, 'DEPARTMENT OF GUIDANCE AND COUNSELLING', 2),
(7, 'Botany', 1),
(8, 'DEPARTMENT OF MUSIC', 3),
(9, 'DEPARTMENT OF ELECTRICAL AND ELECTRONIC ENGINEERING', 0),
(10, 'DEPARTMENT OF MECHANICAL ENGINEERING', 0),
(11, 'DEPARTMENT OF INDUSTRIAL AND PRODUCTION ENGINEERING', 0),
(12, 'DEPARTMENT OF INDUSTRIAL AND PRODUCTION ENGINEERING', 0);

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
(1, 'Faculty of Science'),
(2, 'Faculty of  Education'),
(3, 'Faculty of  Arts'),
(4, 'Faculty of  Social Science'),
(5, 'FACULTY OF AGRICULTURE AND FORESTRY'),
(6, 'COLLEGE OF MEDICINEÂ '),
(7, 'FACULTY OF PHARMACY'),
(8, 'FACULTY OF TECHNOLOGY'),
(9, 'FACULTY OF VETERINARY MEDICINE'),
(10, 'AFRICA REGIONAL CENTRE FOR INFORMATION SCIENCE'),
(11, 'FACULTY OF LAW'),
(12, 'FACULTY OF ALL'),
(13, 'AFRICA REGIONAL CENTRE FOR INFORMATION SCIENCE'),
(14, 'FACULTY OF LAW');

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
(1, '100', 1),
(2, '200', 1),
(3, '300', 4),
(4, '400', 5),
(5, '300', 1),
(6, '600', 6),
(7, '100', 2),
(8, '400', 1),
(9, '500', 1),
(10, '200', 2),
(11, '300', 2),
(12, '400', 2),
(13, '500', 2),
(14, '100', 3),
(15, '200', 3),
(16, '300', 3),
(17, '400', 3),
(18, '500', 3),
(19, '100', 4),
(20, '200', 4),
(21, '300', 4),
(22, '400', 4),
(23, '500', 4),
(24, '100', 8),
(25, '200', 8),
(26, '300', 8),
(27, '400', 8),
(28, '500', 8),
(29, '100', 5),
(30, '200', 5),
(31, '300', 5),
(32, '100', 7);

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
(1, 1, 'Aba South'),
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
(738, 9, 'Abi');

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
(1, 'FIRST SEMESTER', 1),
(2, 'SECOND SEMESTER', 1),
(3, 'FIRST SEMESTER', 2),
(4, 'SECOND SEMESTER', 2),
(5, 'FIRST SEMESTER', 5),
(6, 'SECOND SEMESTER', 5),
(7, 'FIRST SEMESTER', 8),
(8, 'SECOND SEMESTER', 8),
(9, 'FIRST SEMESTER', 7),
(10, 'SECOND SEMESTER', 7),
(11, 'FIRST SEMESTER', 10),
(12, 'SECOND SEMESTER', 10),
(13, 'FIRST SEMESTER', 11),
(14, 'SECOND SEMESTER', 11),
(15, 'FIRST SEMESTER', 12),
(16, 'SECOND SEMESTER', 12),
(17, 'FIRST SEMESTER', 13),
(18, 'SECOND SEMESTER', 13),
(19, 'FIRST SEMESTER', 14),
(20, 'SECOND SEMESTER', 14),
(21, 'FIRST SEMESTER', 15),
(22, 'SECOND SEMESTER', 15),
(23, 'FIRST SEMESTER', 16),
(24, 'SECOND SEMESTER', 16),
(25, 'FIRST SEMESTER', 17),
(26, 'SECOND SEMESTER', 17),
(27, 'FIRST SEMESTER', 18),
(28, 'SECOND SEMESTER', 18),
(29, 'FIRST SEMESTER', 19),
(30, 'SECOND SEMESTER', 19),
(31, 'FIRST SEMESTER', 20),
(32, 'SECOND SEMESTER', 20),
(33, 'FIRST SEMESTER', 21),
(34, 'SECOND SEMESTER', 21),
(35, 'FIRST SEMESTER', 22),
(36, 'SECOND SEMESTER', 22),
(37, 'FIRST SEMESTER', 23),
(38, 'SECOND SEMESTER', 23),
(39, 'FIRST SEMESTER', 4),
(40, 'SECOND SEMESTER', 4);

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
(7, 'Freedom', 'Frankis', 'free', 'frank@gmail.com', '07065907911', 'no. 30, Arikewuyo, Orile Iganmu,Lagos', '9', '738', 'Male', '2018/05/10 11:44', 'Christainity', 'Select One', 'Faculty of  Social Science', 'Department of Economics', 'Economics', '200', '08/5444', '26253c50741faa9c2e2b836773c69fe6', 'Mr. Etuki Felix Itafor', '08070666523', 'No. 1, Osere, Matogun, Ifo, Ogun State ', 'Active', 'admin', '2018-05-03', 'images/20160822_183836.jpg'),
(8, 'FRANO', 'FREEDOM', 'FREEMAN', 'frank111@gmail.com', '07065907988', 'no. 30, Arikewuyo, Orile Iganmu,Lagos', '9', 'ABI', 'Male', '2018/05/10 11:44', 'Christainity', 'single', 'Faculty of  Social Science', 'Department of Economics', 'Economics', '200', '00217', '26253c50741faa9c2e2b836773c69fe6', 'Mr. Etuki Felix Itafor', '08070666520', 'No. 1, Osere, Matogun, Ifo, Ogun State ', 'Active', 'user', '2018-05-04', 'images/20160225_145312.jpg'),
(9, 'Bartholomew', 'John', 'Nwaka ', 'bato@gmail.com', '08065907945', 'no. 30, Arikewuyo, Orile Iganmu,Ogun', '20', '351', 'Male', '2018/05/02 11:44', 'Christainity', 'Single', 'Faculty of Sc', 'Department of Computer Science', 'Computer Science', '2100', '08/50053', '26253c50741faa9c2e2b836773c69fe6', 'Mr. Etuki Felix Itafor', '09033322212', 'No. 1, Osere, Matogun, Ifo, Ogun State ', 'Active', 'user', '2018-05-04', 'images/IMG_20141228_114349.jpg'),
(10, 'Blessing', 'Paul', 'Asor', 'blessing@gmail.com', '07065907949', 'no. 30, Arikewuyo, Orile Iganmu,Lagos', '1', '1', 'Male', '2018/05/03 02:48', 'Christainity', 'single', 'Faculty of  Social Science', 'Department of Computer Science', 'Computer Science', '400', '08/5000', '26253c50741faa9c2e2b836773c69fe6', 'Mr. Etuki Felix Itafor', '08077777700', 'No. 1, Osere, Matogun, Ifo, Ogun State ', 'Inactive', 'user', '2018-05-04', 'images/IMG_20141228_114349.jpg'),
(11, 'Eloko', 'David', 'Itafor', 'david@gmail.com', '07065907945', 'no. 30, Arikewuyo, Orile Iganmu,Lagos', '1', '1', 'Male', '2018/05/02 11:44', 'Christainity', 'single', 'Faculty of Science', 'Department of Computer Science', 'Computer Science', '400', '08/1153', '26253c50741faa9c2e2b836773c69fe6', 'Mr. Etuki Felix Itafor', '08077', 'No. 1, Osere, Matogun, Ifo, Ogun State ', 'Active', 'user', '2018-05-04', 'images/IMG00052.jpg'),
(12, 'PAUL ', 'SUNDAY', 'BASSE', 'paul@gmail.com', '07065907977', 'no. 30, Arikewuyo, Orile Iganmu,Lagos', '9', '738', 'Male', '2018/05/05 13:05', 'Christainity', 'single', 'Faculty of Science', 'Department of Computer Science', 'Computer Science', '400', '09/0001', '26253c50741faa9c2e2b836773c69fe6', 'Mr. Etuki Felix Itafor', '08077000001', 'No. 1, Osere, Matogun, Ifo, Ogun State ', 'Inactive', 'user', '2018-05-06', 'images/20161009_165513.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
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
-- Indexes for table `depts`
--
ALTER TABLE `depts`
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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stdId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `courseregister`
--
ALTER TABLE `courseregister`
  MODIFY `courseRegId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `depts`
--
ALTER TABLE `depts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `locals`
--
ALTER TABLE `locals`
  MODIFY `local_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
