-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2022 at 07:07 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `leave`
--
CREATE DATABASE IF NOT EXISTS `leave` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `leave`;

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE IF NOT EXISTS `tblcompany` (
  `COMPID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY` text NOT NULL,
  PRIMARY KEY (`COMPID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPID`, `COMPANY`) VALUES
(2, 'BAYON'),
(4, 'SOA'),
(5, 'MOLY');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepts`
--

CREATE TABLE IF NOT EXISTS `tbldepts` (
  `DEPTID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPTNAME` text NOT NULL,
  `DEPTSHORTNAME` varchar(30) NOT NULL,
  PRIMARY KEY (`DEPTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbldepts`
--

INSERT INTO `tbldepts` (`DEPTID`, `DEPTNAME`, `DEPTSHORTNAME`) VALUES
(1, 'IT DEPARTMENTS', 'IT'),
(2, 'HR DEPARTMENT', 'HR'),
(3, 'TECHNICAL DEPARTMENT', 'TD'),
(4, 'FINANCE DEPARTMENT', 'FD'),
(6, 'CALL CENTRE', 'CC');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE IF NOT EXISTS `tblemployee` (
  `EMPID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPNAME` varchar(60) NOT NULL,
  `EMPPOSITION` varchar(30) NOT NULL,
  `USERNAME` varchar(30) NOT NULL,
  `PASSWRD` text NOT NULL,
  `ACCSTATUS` varchar(5) NOT NULL DEFAULT 'NO',
  `EMPSEX` varchar(10) CHARACTER SET macce COLLATE macce_bin NOT NULL DEFAULT 'MALE',
  `COMPANY` varchar(30) NOT NULL,
  `DEPARTMENT` varchar(30) NOT NULL,
  `EMPLOYID` varchar(30) NOT NULL,
  `AVELEAVE` int(11) NOT NULL DEFAULT '18',
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`EMPID`, `EMPNAME`, `EMPPOSITION`, `USERNAME`, `PASSWRD`, `ACCSTATUS`, `EMPSEX`, `COMPANY`, `DEPARTMENT`, `EMPLOYID`, `AVELEAVE`) VALUES
(1, 'Julias  Ogweno', 'Administrator', 'juliasogweno20189@gmail.com', 'a4ac914c09d7c097fe1f4f96b897e625b6922069', 'YES', 'MALE', 'BAYON', 'IT DEPARTMENTS', '34', 18),
(17, 'Virginia Nyakangi', 'Normal user', 'nyakangi@gmail.com', 'a4ac914c09d7c097fe1f4f96b897e625b6922069', 'YES', 'FEMALE', 'BAYON', 'CALL CENTRE', '050', 8),
(18, 'Lilian Nyamoita', 'Normal user', 'nyamoita@gmail.com', 'a4ac914c09d7c097fe1f4f96b897e625b6922069', 'YES', 'FEMALE', 'BAYON', 'FINANCE DEPARTMENT', '020', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblleave`
--

CREATE TABLE IF NOT EXISTS `tblleave` (
  `LEAVEID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYID` varchar(30) NOT NULL,
  `DATESTART` date NOT NULL,
  `DATEEND` date NOT NULL,
  `NODAYS` double NOT NULL,
  `SHIFTTIME` varchar(10) NOT NULL,
  `TYPEOFLEAVE` varchar(30) NOT NULL,
  `REASON` text NOT NULL,
  `LEAVESTATUS` varchar(30) NOT NULL,
  `ADMINREMARKS` text NOT NULL,
  `DATEPOSTED` date NOT NULL,
  PRIMARY KEY (`LEAVEID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tblleave`
--

INSERT INTO `tblleave` (`LEAVEID`, `EMPLOYID`, `DATESTART`, `DATEEND`, `NODAYS`, `SHIFTTIME`, `TYPEOFLEAVE`, `REASON`, `LEAVESTATUS`, `ADMINREMARKS`, `DATEPOSTED`) VALUES
(1, '10890', '2019-02-21', '2019-02-21', 1, 'All Day', 'CASUAL LEAVE', 'All day it meant one day.', 'PENDING', 'N/A', '2019-02-16'),
(2, '10890', '2019-02-23', '2019-02-23', 0.5, 'AM', 'SICK LEAVE', 'A haft of day.', 'PENDING', 'N/A', '2019-02-16'),
(3, '10890', '2019-02-26', '2019-02-28', 3, 'All Day', 'CASUAL LEAVE', 'Three Days', 'PENDING', 'N/A', '2019-02-16'),
(4, '10888', '2019-02-19', '2019-02-19', 1, 'All Day', 'SICK LEAVE', 'A day leave', 'APPROVED', 'N/A', '2020-04-01'),
(5, '10888', '2019-02-20', '2019-02-20', 0.5, 'PM', 'SICK LEAVE', 'A haft of day', 'PENDING', 'N/A', '2019-02-16'),
(6, '3012', '2019-02-18', '2019-02-18', 1, 'All Day', 'SICK LEAVE', 'Same', 'APPROVED', 'N/A', '2019-02-18'),
(7, '3011', '2019-02-18', '2019-02-18', 1, 'All Day', 'SICK LEAVE', 'Lucy', 'PENDING', 'N/A', '2019-02-17'),
(8, '3012', '2019-02-19', '2019-02-19', 1, 'All Day', 'SICK LEAVE', 'Bora', 'REJECTED', 'N/A', '2019-02-18'),
(9, '10888', '2019-02-20', '2019-02-20', 1, 'All Day', 'SICK LEAVE', 'Sokmeng', 'PENDING', 'N/A', '2019-02-17'),
(10, '555', '2019-02-26', '2019-02-28', 3, 'All Day', '', 'sick leave', 'APPROVED', 'N/A', '2019-02-26'),
(11, '555', '2019-03-01', '2019-03-02', 1, 'AM', 'CASUAL LEAVE', 'casual', 'APPROVED', 'N/A', '2019-02-26'),
(12, '555', '2019-03-12', '2019-03-16', 5, 'All Day', 'CASUAL LEAVE', 'cad', 'REJECTED', 'N/A', '2019-02-26'),
(13, '555', '2020-04-01', '2020-04-30', 30, 'All Day', 'CASUAL LEAVE', 'sdsd', 'PENDING', 'N/A', '2020-04-01'),
(14, '050', '2022-06-03', '2022-06-12', 10, 'All Day', 'SICK LEAVE', 'Not feeling well', 'APPROVED', 'N/A', '2022-06-01'),
(15, '020', '2022-06-16', '2022-06-30', 15, 'All Day', 'CASUAL LEAVE', 'Need a rest for while', 'REJECTED', 'why do you need a rest', '2022-06-01'),
(16, '020', '2022-06-16', '2022-06-30', 15, 'All Day', 'CASUAL LEAVE', 'Need a rest for while', 'REJECTED', 'why need rest', '2022-06-01'),
(17, '020', '2022-06-02', '2022-06-18', 8.5, 'AM', 'CASUAL LEAVE', 'sdwewqe', 'APPROVED', 'N/A', '2022-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE IF NOT EXISTS `tblleavetype` (
  `LEAVTID` int(11) NOT NULL AUTO_INCREMENT,
  `LEAVETYPE` varchar(30) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  PRIMARY KEY (`LEAVTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`LEAVTID`, `LEAVETYPE`, `DESCRIPTION`) VALUES
(1, 'SICK LEAVE', 'SICK LEAVE'),
(2, 'CASUAL LEAVE', 'CASUAL LEAVE'),
(3, 'UNPAID LEAVE', 'UNPAID LEAVE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
