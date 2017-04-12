-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2017 at 06:39 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notice_board`
--

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `sr` int(11) NOT NULL,
  `faculty` varchar(31) NOT NULL,
  `date` varchar(31) NOT NULL,
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`sr`, `faculty`, `date`, `notice`) VALUES
(1, 'NJK', '10/04/2017', 'Nothing. Just testing!'),
(2, 'NJK', 'aajw', 'Nothing'),
(3, 'Dummy Teacher1', 'Wed Apr 12 21:51:42 IST 2017', 'Hello guys!!'),
(4, 'Dummy Teacher1', 'Wed Apr 12 21:55:03 IST 2017', 'Hello'),
(5, 'Dummy Teacher1', 'Wed Apr 12 21:56:57 IST 2017', 'hello guys\r\nnothing, just testing'),
(6, 'Dummy Teacher1', 'Wed Apr 12 21:57:22 IST 2017', 'dfskarijge\r\n\r\n\r\ndgdsgkmrg\r\ndldgkg;ksmd\r\ng;kd;kgnk;ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_detail`
--

CREATE TABLE `teacher_detail` (
  `tid` varchar(31) NOT NULL,
  `tname` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_detail`
--

INSERT INTO `teacher_detail` (`tid`, `tname`) VALUES
('teacher1', 'Dummy Teacher1');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `tid` varchar(31) NOT NULL,
  `password` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`tid`, `password`) VALUES
('teacher1', 'password1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `teacher_detail`
--
ALTER TABLE `teacher_detail`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
