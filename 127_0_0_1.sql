-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 11:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproject267`
--
CREATE DATABASE IF NOT EXISTS `dbproject267` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbproject267`;

-- --------------------------------------------------------

--
-- Table structure for table `tbbook`
--

CREATE TABLE `tbbook` (
  `bookid` int(11) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `booktypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbook`
--

INSERT INTO `tbbook` (`bookid`, `bookname`, `author`, `price`, `stock`, `booktypeid`) VALUES
(1, 'หนังสือการ์ตูน', 'ทิชชา รำสุด', 100, 6, 1),
(2, 'หนังสือสารคดี', 'อำพร เรืองแสง', 150, 3, 2),
(3, 'หนังสือขายหัวเราะ', 'อาทิตย์ รอคอย', 150, 3, 3),
(18, 'ccc', 'ccc', 0, 2, 2),
(19, 'การ์ตูน', 'การ์ตูน', 0, 200, 2),
(20, 'mbmbnmbn', 'mbmbnmbn', 0, 500, 2),
(21, 'ccc', 'ccc', 0, 300, 3),
(22, 'mbmbnmbn', 'mbmbnmbn', 0, 600, 3),
(23, 'jl', 'ljkl', 200, 2, 2),
(24, 'หนังสือ', 'ยอมแล้ว', 200, 2, 3),
(25, 'หนังสือ', 'boor', 150, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbbooktype`
--

CREATE TABLE `tbbooktype` (
  `booktypeid` int(11) NOT NULL,
  `booktypename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbooktype`
--

INSERT INTO `tbbooktype` (`booktypeid`, `booktypename`) VALUES
(1, 'หนังสือเกี่ยวกับเด็ก'),
(2, 'หนังสือเกี่ยวกับสิ่งแวดล้อม'),
(3, 'หนังสือผ่อนคลาย'),
(4, 'การ์ตูน'),
(5, 'งานน'),
(6, 'แมว'),
(7, 'หมา'),
(8, 'แมว'),
(9, '5656'),
(10, '555');

-- --------------------------------------------------------

--
-- Table structure for table `tbroom`
--

CREATE TABLE `tbroom` (
  `roomid` int(11) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `roomtypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbroom`
--

INSERT INTO `tbroom` (`roomid`, `roomname`, `detail`, `roomtypeid`) VALUES
(1, '203', 'มีโต๊ะ เตียง ตู้', 1),
(2, '204', 'ห้องพักติดระเบียง ติดทะเล ติดภูเขา', 3),
(3, '205', 'ห้องใหญ่ พักได้ 10 ท่าน, มีสระน้ำ', 3),
(4, '201', 'พักได้ 2-3 คน', 2),
(5, '202', 'พักได้ 2-3 คน', 2),
(6, '206', 'พักได้ 2-3 คน', 2),
(7, '203', 'xcvxv', 2),
(8, '203', 'bnbvn', 1),
(9, '205', 'ngnbn', 2),
(10, '205', 'hhcbnbn n', 2),
(11, '209', 'bvb', 2),
(12, '', ',mn,,m', 2),
(13, '210', '.,m.m,.m,', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbroomtype`
--

CREATE TABLE `tbroomtype` (
  `roomtypeid` int(11) NOT NULL,
  `roomtypename` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbroomtype`
--

INSERT INTO `tbroomtype` (`roomtypeid`, `roomtypename`, `price`) VALUES
(1, 'สแตนดาร์ด', 1200),
(2, 'ซูพีเรีย', 2200),
(3, 'ดีลักซ์', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudent`
--

CREATE TABLE `tbstudent` (
  `stdid` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`stdid`, `firstname`, `lastname`, `email`, `address`) VALUES
(1, 'นภัสนันท์', 'นาคภิบาล', '', '21/1 หมู่2 ต.หอรัตนไชย อ.พระนครศรีอยุธยา จ.พระนครศรีอยุธยา 13000'),
(2, 'พัชราภา', 'ขันธราม', '', '32/1 หมู่2 ต.ลุมพลี อ.พระนครศรีอยุธยา จ.พระนครศรีอยุธยา 13000'),
(3, 'นริศรา', 'นาคอินทร์', '', '32/3 หมู่2 ต.ลุมพลี อ.พระนครศรีอยุธยา จ.พระนครศรีอยุธยา 13000'),
(4, 'มิ่งขวัญ', 'ขันธราม', '', '32/1 หมู่2 ต.ลุมพลี อ.พระนครศรีอยุธยา จ.พระนครศรีอยุธยา 13000'),
(5, 'ฆนาคม', 'ศุกร์เกตุ', '', '36/1 หมู่2 ต.สำเภาล่ม อ.พระนครศรีอยุธยา จ.พระนครศรีอยุธยา 13000'),
(9, 'mkjklj', 'ขันธราม', 'Patcharapakhantharam8@gmail.com', '22/2'),
(10, 'tusnee,', 'ขันธราม', 'jji@hhoo.com', '32/1');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `emailAddress`, `city`, `country`, `created_at`) VALUES
(1, 'พัชราภา', 'tusneem8@gmail.com', 'cat', 'thai', '2024-12-06 09:28:27'),
(2, 'นภัสนันท์', 'tong8@gmail.com', 'k', 'thai', '2024-12-06 09:30:13'),
(3, '112', 'tusneem@gmail.com', '121212', '121', '2024-12-06 17:40:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbook`
--
ALTER TABLE `tbbook`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `tbbooktype`
--
ALTER TABLE `tbbooktype`
  ADD PRIMARY KEY (`booktypeid`);

--
-- Indexes for table `tbroom`
--
ALTER TABLE `tbroom`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `tbroomtype`
--
ALTER TABLE `tbroomtype`
  ADD PRIMARY KEY (`roomtypeid`);

--
-- Indexes for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD PRIMARY KEY (`stdid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbbook`
--
ALTER TABLE `tbbook`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbbooktype`
--
ALTER TABLE `tbbooktype`
  MODIFY `booktypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbroom`
--
ALTER TABLE `tbroom`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbroomtype`
--
ALTER TABLE `tbroomtype`
  MODIFY `roomtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbstudent`
--
ALTER TABLE `tbstudent`
  MODIFY `stdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
