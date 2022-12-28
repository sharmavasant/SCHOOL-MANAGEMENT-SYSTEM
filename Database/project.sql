-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2020 at 06:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignedData`
--

CREATE TABLE `assignedData` (
  `faculty` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `classroom` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `Semister` int(11) NOT NULL,
  `dayId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignedData`
--

INSERT INTO `assignedData` (`faculty`, `subject`, `classroom`, `period`, `Semister`, `dayId`) VALUES
('Dr. Muneer Umar', 'network security ', 'IOC1 ', '1', 4, 1),
('Dr Irfan u din', 'Database ', 'IOC2 ', '2', 4, 1),
('Dr Shafaq', 'software project management ', 'IOC4 ', '4', 4, 4),
('Dr Zeeshan', 'Data Structure ', 'IOC5 ', '5', 4, 4),
('Mr. Ali zeb', 'Artificial Intelligence  ', 'IOC3 ', '3', 4, 4),
('sir saqib', 'Software graphics ', 'IOC5 ', '4', 4, 3),
('Dr Irfan u din', 'Database ', 'IOC5 ', '3', 1, 1),
('Dr Zeeshan', 'Software graphics ', 'IOC5 ', '3', 4, 3),
('sir saqib', 'software project management ', 'IOC4 ', '5', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Days`
--

CREATE TABLE `Days` (
  `id` int(11) NOT NULL,
  `day` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Days`
--

INSERT INTO `Days` (`id`, `day`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`) VALUES
(1, 'Dr. Muneer Umar'),
(2, 'Dr Irfan u din'),
(3, 'Mr. Ali zeb'),
(4, 'Dr Shafaq'),
(5, 'Mr sanaullah'),
(6, 'sir saqib'),
(7, 'Dr Zeeshan'),
(99, 'Sir Roman');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `id` varchar(16) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`id`, `startTime`, `endTime`) VALUES
('1', '08:30:00', '10:00:00'),
('2', '10:10:00', '11:40:00'),
('3', '11:50:00', '13:20:00'),
('4', '14:00:00', '15:30:00'),
('5', '15:40:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomId` varchar(32) NOT NULL,
  `roomDept` varchar(32) NOT NULL,
  `capacity` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomId`, `roomDept`, `capacity`) VALUES
('IOC1', 'Institute of computing', 50),
('IOC2', 'Institute of computing', 50),
('IOC3', 'Institute of computing', 50),
('IOC4', 'Institute of computing', 50),
('IOC5', 'Institute of computing', 50);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semisterNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semisterNumber`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`) VALUES
('CS101', 'software project management'),
('CS102', 'Database'),
('CS103', 'Artificial Intelligence '),
('CS105', 'network security'),
('CS106', 'Software graphics'),
('CS107', 'Data Structure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Days`
--
ALTER TABLE `Days`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomId`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD UNIQUE KEY `semisterNumber` (`semisterNumber`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
