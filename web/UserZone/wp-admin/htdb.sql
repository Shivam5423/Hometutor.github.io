-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2019 at 09:29 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `htdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `EnquiryId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MbNo` varchar(15) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `EnquiryDT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`EnquiryId`, `Name`, `EmailId`, `MbNo`, `Message`, `EnquiryDT`) VALUES
(1, 'Alok Singh', 'alok78003@gmail.com', '9560273715', '             adsfsdhfgj sagsdfgs  ', '5/7/119 - 16:40:37'),
(2, 'Raj Singh', 'rajs98645@gmail.com', '9807871929', '     I want to know          ', '8/7/119 - 17:26:0'),
(3, 'Alok Singh', 'alok78003@gmail.com', '9554545423', '          hello     ', '11/7/119 - 21:1:11'),
(4, '', '', '1232144', '               ', '12/7/119 - 11:50:55'),
(5, '', '', '434235', '               ', '12/7/119 - 11:55:46'),
(6, 'Alok Singh', 'alok78003@gmail.com', '87', '               dfSD', '12/7/119 - 23:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_final`
--

CREATE TABLE `tbl_final` (
  `FinalId` int(11) NOT NULL,
  `RequestId` int(11) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `FDT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_final`
--

INSERT INTO `tbl_final` (`FinalId`, `RequestId`, `Remark`, `FDT`) VALUES
(1, 1, 'adsgaadfhadb', '11/7/119 - 17:20:48'),
(2, 3, 'fdadsgfdgdf', '13/7/119 - 0:40:27'),
(3, 3, 'svdfavfdvf', '13/7/119 - 0:42:18'),
(4, 3, 'svdfavfdvf', '13/7/119 - 0:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `UserId` int(11) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Utype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`UserId`, `Pass`, `Utype`) VALUES
(1, '876', 'USER'),
(2, '876', 'USER'),
(2565, '8', 'ADMIN'),
(3, '876', 'USER'),
(4, '876', 'USER'),
(5, '876', 'USER'),
(6, '876', 'USER'),
(7, '876', 'USER'),
(8, '876', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `Notification_Id` int(11) NOT NULL,
  `Notification_Msg` varchar(200) NOT NULL,
  `Notification_DT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`Notification_Id`, `Notification_Msg`, `Notification_DT`) VALUES
(31, 'Home Tutors Are Best Way To Guide Childrens..', '25-07-2019'),
(32, 'Last Date For Students Registration...-31/08/2019', '13/7/119-0:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `TutorId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `classtoteach` varchar(50) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `City` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`TutorId`, `name`, `gender`, `DOB`, `subject`, `qualification`, `experience`, `classtoteach`, `mobno`, `email`, `picname`, `address`, `City`) VALUES
(5, 'Satyam', 'Male', '2019-08-03', 'Hindi', 'High School', '2 Year', 'From class 1 to class 5', '8127908027', 'alok78003@gmail.com', 'PicsArt_05-15-05.06.34849_7_119_8.jpg', 'Jankikund', 'Chitrakoot'),
(6, 'Alok Singh', 'Male', '2018-11-16', 'Hindi', 'Intermediate', '1 Year', 'From class 9 to class 12', '9807871929', 'alok78003@gmail.com', '20190606_073443-0128810_7_119_9.jpeg', 'Chitrakoot', 'Chitrakoot'),
(7, 'Alok Singh', 'Male', '2019-08-18', 'English', 'Under Graduate', '2 Year', 'From class 1 to class 5', '9554545423', 'alok78003@gmail.com', '17795687_1712374432394524_7945918817304005681_n1311_7_119_23.jpg', 'karwi', 'Chitrakoot'),
(8, 'Anjali Mishra', 'Male', '1999-05-05', 'Science', 'Under Graduate', '1 Year', 'From class 6 to class 8', '9807871929', 'anjali2652@gmail.com', '17795687_1712374432394524_7945918817304005681_n89413_7_119_15.jpg', 'Bharwari, Kaushambi', 'Kaushambi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `ReviewId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `SubmittedBy` varchar(100) NOT NULL,
  `MobNo` varchar(15) NOT NULL,
  `StarRating` int(11) NOT NULL,
  `SubmittedOn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`ReviewId`, `Name`, `Subject`, `Message`, `SubmittedBy`, `MobNo`, `StarRating`, `SubmittedOn`) VALUES
(1, 'Kargil Singh', 'physics', 'hi shddwjhd', 'Alok Singh', '9560273715', 5, '6/7/119-16:45:29'),
(2, '', '', 'hi shddwjhd', 'Alok Singh', '9560273715', 5, '6/7/119-16:45:39'),
(3, 'Alok Singh', 'physics', 'hii', 'Alok Singh', '9560273715', 5, '6/7/119-16:47:8'),
(4, 'Kargil Singh', 'Mathematics', 'hello', 'Alok Singh', '9560273715', 5, '6/7/119-16:49:13'),
(5, 'Kargil Singh', 'physics', 'hiii', 'Alok Singh', '9807871929', 5, '7/7/119-12:55:34'),
(6, 'Alok Singh', 'physics', 'i want', 'Abhi Singh', '9807871929', 5, '9/7/119-11:11:25'),
(7, 'Amit Mishra', 'physics', 'good', 'Raj Singh', '', 5, '11/7/119-21:3:55'),
(8, 'Kargil Singh', 'Chemistry', 'dasgasgad', 'Rahul Singh', '9807', 5, '12/7/119-23:27:13'),
(9, 'Amit Mishra', 'Mathematics', 'DFDsVdsd', 'null', 'null', 4, '12/7/119-23:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studymaterial`
--

CREATE TABLE `tbl_studymaterial` (
  `MaterialId` int(11) NOT NULL,
  `SubName` varchar(50) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Filename` varchar(200) NOT NULL,
  `UploadDT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_studymaterial`
--

INSERT INTO `tbl_studymaterial` (`MaterialId`, `SubName`, `Title`, `Description`, `Filename`, `UploadDT`) VALUES
(1, 'Hindi', 'hello', 'hii', 'null', 'Sun Aug 11 00:24:23 IST 2019'),
(2, 'null', 'null', 'null', '06de2c964036a55476effd65599afeac47511_7_119_8.jpg', 'Sun Aug 11 10:30:08 IST 2019'),
(3, 'null', 'null', 'null', '1fd41f78bd30ec9cd34999ff17aa3a1c44911_7_119_43.jpg', 'Sun Aug 11 10:30:43 IST 2019'),
(4, 'null', 'null', 'null', '2e3ba7d71681d117e86c66b165541c1933911_7_119_12.jpg', 'Sun Aug 11 10:32:12 IST 2019'),
(5, 'null', 'null', 'null', '2e3ba7d71681d117e86c66b165541c195311_7_119_50.jpg', 'Sun Aug 11 11:55:50 IST 2019'),
(6, 'null', 'null', 'null', 'B3411_7_119_43.jpg', 'Sun Aug 11 19:04:43 IST 2019'),
(7, 'Hindi', 'hello', 'uri3', '1xs_lines_sad_heart_touc53011_7_119_38.jpg', 'Sun Aug 11 19:15:38 IST 2019'),
(8, 'Sanskrit', 'sdfghj', 'safeG', '15873274_648061232039931_2161301030461210239_n3611_7_119_46.jpg', 'Sun Aug 11 19:23:46 IST 2019'),
(9, 'Hindi', 'dtdfhujhtdrrfcgvhjkj', 'sterdytfyugi', '17795687_1712374432394524_7945918817304005681_n74312_7_119_52.jpg', 'Mon Aug 12 15:51:52 IST 2019'),
(10, 'Sanskrit', 'dfgghuj', 'tyftfyg', 'alok singh-135312_7_119_52.pdf', 'Mon Aug 12 16:06:52 IST 2019'),
(11, 'Social study', 'rytugu', 'ghhjh', 'PicsArt_02-02-11.59.0545512_7_119_40.jpg', 'Mon Aug 12 16:08:40 IST 2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tutionrequest`
--

CREATE TABLE `tbl_tutionrequest` (
  `RequestId` int(11) NOT NULL,
  `TutorId` int(11) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `RequestedBy` varchar(50) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `RequestDT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tutionrequest`
--

INSERT INTO `tbl_tutionrequest` (`RequestId`, `TutorId`, `Subject`, `City`, `RequestedBy`, `ContactNo`, `Address`, `Remark`, `RequestDT`) VALUES
(1, 5, 'Hindi', 'Chitrakoot', 'Raj Singh', '9807871929', 'aesdhfjg', 'fdsfgdhfj', '11_7_119_16:38:17'),
(2, 6, 'Hindi', 'Chitrakoot', 'Abhi Singh', '9560273715', 'Karwi', 'adhdgfhasd dwjhdfjasd', '11_7_119_17:38:54'),
(3, 5, 'Hindi', 'Chitrakoot', 'Alok Singh', '9554545423', 'karwi', 'fghjk', '11_7_119_21:8:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`EnquiryId`);

--
-- Indexes for table `tbl_final`
--
ALTER TABLE `tbl_final`
  ADD PRIMARY KEY (`FinalId`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`Notification_Id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`TutorId`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`ReviewId`);

--
-- Indexes for table `tbl_studymaterial`
--
ALTER TABLE `tbl_studymaterial`
  ADD PRIMARY KEY (`MaterialId`);

--
-- Indexes for table `tbl_tutionrequest`
--
ALTER TABLE `tbl_tutionrequest`
  ADD PRIMARY KEY (`RequestId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `EnquiryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_final`
--
ALTER TABLE `tbl_final`
  MODIFY `FinalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `Notification_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `TutorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `ReviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_studymaterial`
--
ALTER TABLE `tbl_studymaterial`
  MODIFY `MaterialId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_tutionrequest`
--
ALTER TABLE `tbl_tutionrequest`
  MODIFY `RequestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
