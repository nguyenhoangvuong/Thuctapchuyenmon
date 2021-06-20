-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 06:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
`ID` int(10) NOT NULL,
  `Tenadmin` char(50) DEFAULT NULL,
  `Taikhoan` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `Sodienthoai` bigint(10) DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `Matkhau` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `NgayDangKyAdmin` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Tenadmin`, `Taikhoan`, `Sodienthoai`, `Email`, `Matkhau`, `NgayDangKyAdmin`) VALUES
(1, 'Nguyen Hoang Vuong', 'admin', 347689482, 'hoangvuong1225@gmail.com', 'bf288aa8e84f49c6f74b5faa301243ed', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblctod`
--

CREATE TABLE IF NOT EXISTS `tblctod` (
`Id` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `SanphamId` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblctod`
--

INSERT INTO `tblctod` (`Id`, `OrderId`, `SanphamId`, `Soluong`) VALUES
(14, 1, 81, 1),
(15, 1, 108, 1),
(16, 2, 81, 2),
(17, 3, 61, 2),
(18, 3, 82, 1),
(19, 4, 62, 1),
(20, 5, 62, 1),
(21, 6, 62, 1),
(22, 7, 62, 1),
(23, 8, 62, 1),
(24, 9, 62, 1),
(25, 10, 63, 1),
(26, 11, 63, 1),
(27, 12, 66, 2),
(28, 13, 62, 2),
(29, 14, 61, 2),
(30, 14, 62, 1),
(31, 15, 61, 2),
(32, 15, 62, 1),
(33, 15, 63, 3),
(34, 16, 66, 1),
(35, 17, 69, 1),
(36, 18, 65, 1),
(37, 19, 82, 1),
(38, 20, 62, 1),
(39, 21, 62, 1),
(40, 22, 63, 1),
(41, 23, 62, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcuochen`
--

CREATE TABLE IF NOT EXISTS `tblcuochen` (
`ID` int(10) NOT NULL,
  `Socuochen` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Ten` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Sodienthoai` bigint(11) DEFAULT NULL,
  `Ngayhen` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Giohen` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Dichvu` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Ngayapdung` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Nhanxet` varchar(250) CHARACTER SET utf8 NOT NULL,
  `Trangthai` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Ngaynhanxet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tblcuochen`
--

INSERT INTO `tblcuochen` (`ID`, `Socuochen`, `Ten`, `Email`, `Sodienthoai`, `Ngayhen`, `Giohen`, `Dichvu`, `Ngayapdung`, `Nhanxet`, `Trangthai`, `Ngaynhanxet`) VALUES
(1, '945550275', 'a', 'hoangvuong1225@gmail.com', 1647689482, '6/2/2021', '12:30am', 'Charcol Facial', '2021-05-14 02:41:25', '12', '2', '2021-06-02 13:49:08'),
(2, '122585053', 'b', 'hoangvuong1225@gmail.com', 1647689482, '6/2/2021', '12:00am', 'Charcol Facial', '2021-05-14 02:42:28', 'Ä‘Æ°á»£c', '1', '2021-06-02 13:49:10'),
(3, '916248641', 'bca', 'hoangvuong1225@gmail.com', 1647689482, '5/18/2021', '12:30am', 'Test', '2021-05-14 02:45:51', 'ok', '1', '2021-06-02 13:49:18'),
(4, '977764536', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '5/28/2021', '7:00am', 'Body Spa', '2021-05-16 14:23:04', '1222', '1', '2021-05-28 07:53:17'),
(5, '813516023', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '5/12/2021', '12:30am', 'Fruit Facial', '2021-05-17 06:21:20', '11', '1', '2021-05-28 12:50:03'),
(6, '344293199', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '5/18/2021', '12:30am', 'Rebonding', '2021-05-22 16:00:14', '12', '1', '2021-05-29 15:40:02'),
(7, '241109324', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '5/20/2021', '1:00am', 'Massage', '2021-05-27 05:59:56', '123', '1', '2021-05-28 12:54:15'),
(8, '779656121', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '5/20/2021', '1:30am', 'Massage', '2021-06-01 03:09:26', 'ok', '1', '2021-06-02 06:57:07'),
(9, '917703766', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 14:15:48', 'TÃ´i báº­n giá» Ä‘Ã³ mong báº¡n Ä‘áº·t láº¡i 1 lá»‹ch khÃ¡c', '2', '2021-06-05 16:45:48'),
(10, '901162619', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 16:48:12', 'CHáº¤P NHáº¬N', '1', '2021-06-05 16:51:51'),
(11, '157631158', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 16:55:11', 'ok he', '2', '2021-06-05 16:55:27'),
(12, '936017098', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '1:00am', 'Fruit Facial', '2021-06-05 16:58:50', 'Toi ban', '1', '2021-06-05 16:59:22'),
(13, '388013279', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 17:01:32', 'ÄÆ°á»£c nÃ¨', '1', '2021-06-05 17:01:47'),
(14, '618595289', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/23/2021', '12:00am', 'Fruit Facial', '2021-06-05 17:11:57', 'cháº¥p nháº­n', '1', '2021-06-09 05:16:35'),
(15, '767990575', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/17/2021', '12:30am', 'Táº¯m tráº¯ng', '2021-06-09 12:40:44', '', '', '0000-00-00 00:00:00'),
(16, '242910382', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/18/2021', '1:00am', 'Tháº£i Ä‘á»™c chÃ¬', '2021-06-10 05:16:35', '', '', '0000-00-00 00:00:00'),
(17, '153660636', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/25/2021', '12:30am', 'ChÄƒm sÃ³c da/Massage cÆ¡ báº£n', '2021-06-11 14:03:24', '', '', '0000-00-00 00:00:00'),
(18, '587300209', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/24/2021', '12:30am', 'ChÄƒm sÃ³c da/Massage cÆ¡ báº£n', '2021-06-18 11:01:44', '', '', '0000-00-00 00:00:00'),
(19, '482990931', 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, '6/24/2021', '12:30am', 'Wax', '2021-06-18 11:09:22', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbldanhgiasanpham`
--

CREATE TABLE IF NOT EXISTS `tbldanhgiasanpham` (
`Id` int(11) NOT NULL,
  `SanphamId` int(11) DEFAULT NULL,
  `Chatluong` int(11) DEFAULT NULL,
  `Gia` int(11) DEFAULT NULL,
  `Giatri` int(11) DEFAULT NULL,
  `Ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tomluoc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Review` longtext CHARACTER SET utf8,
  `Ngayreview` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldanhgiasanpham`
--

INSERT INTO `tbldanhgiasanpham` (`Id`, `SanphamId`, `Chatluong`, `Gia`, `Giatri`, `Ten`, `Tomluoc`, `Review`, `Ngayreview`) VALUES
(1, 82, 1, 2, 4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'Sáº£n pháº©m tá»‘t', 'giao hÃ ng nhanh', '2021-06-09 05:30:34'),
(2, 83, 3, 3, 3, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'á»•n', 'ok', '2021-06-12 06:38:51'),
(3, 62, 2, 5, 4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'Sáº£n pháº©m tá»‘t', 'abc', '2021-06-15 03:33:23'),
(4, 62, 2, 5, 4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'Sáº£n pháº©m tá»‘t', 'abc', '2021-06-15 03:33:29'),
(5, 115, 4, 3, 2, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'á»•n', 'haha', '2021-06-15 07:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbldichvu`
--

CREATE TABLE IF NOT EXISTS `tbldichvu` (
`ID` int(10) NOT NULL,
  `Tendichvu` varchar(200) DEFAULT NULL,
  `Chiphi` int(10) DEFAULT NULL,
  `Ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldichvu`
--

INSERT INTO `tbldichvu` (`ID`, `Tendichvu`, `Chiphi`, `Ngaytao`) VALUES
(1, 'ChÄƒm sÃ³c da/Massage cÆ¡ báº£n', 200000, '2019-07-25 11:22:38'),
(2, 'Tháº£i Ä‘á»™c chÃ¬', 250000, '2019-07-25 11:22:53'),
(3, 'ChÄƒm sÃ³c da Vitamin C', 300000, '2019-07-25 11:23:10'),
(4, 'Cáº¥y táº£o tÆ°Æ¡i Nháº­t Báº£n', 300000, '2019-07-25 11:23:34'),
(5, 'Háº¥p tráº¯ng máº·t Gold Liquid', 400000, '2019-07-25 11:23:47'),
(6, 'XÃ³a nhÄƒn cÄƒng da', 500000, '2019-07-25 11:24:01'),
(7, 'Háº¥p tráº¯ng máº·t tháº£o má»™c hoÃ ng cung', 600000, '2019-07-25 11:24:19'),
(8, 'Phi kim cáº¥y DNA cÃ¡ há»“i tráº» hÃ³a', 900000, '2019-07-25 11:24:38'),
(9, 'Trá»‹ má»¥n chuyÃªn sÃ¢u', 300000, '2019-07-25 11:24:53'),
(10, 'Vi kiá»ƒm táº£o biá»ƒn trá»‹ má»¥n', 1200000, '2019-07-25 11:25:08'),
(11, 'Táº©y táº¿ bÃ o cháº¿t vá»›i muá»‘i cÃ¡t, cafe, dá»«a, trÃ  , dáº§u oil', 100000, '2019-07-25 11:25:35'),
(12, 'Táº¯m tráº¯ng', 350000, '2019-08-19 13:36:27'),
(14, 'Wax', 110000, '2019-08-21 15:45:50'),
(16, 'Thanh táº©y vÃ  sÃ¡ng má»‹n da vá»›i kem sá»¯a', 150000, '2021-06-08 02:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblgopy`
--

CREATE TABLE IF NOT EXISTS `tblgopy` (
  `Gopy` varchar(200) NOT NULL,
`Id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblgopy`
--

INSERT INTO `tblgopy` (`Gopy`, `Id`) VALUES
('abc', 1),
('a', 2),
('Cáº§n giáº£m giÃ¡ sáº£n pháº©m xuá»‘ng tÃ­', 3),
('Cáº§n giáº£m giÃ¡ sáº£n pháº©m xuá»‘ng tÃ­', 4),
('Cáº§n giáº£m giÃ¡ sáº£n pháº©m xuá»‘ng tÃ­', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblhoadon`
--

CREATE TABLE IF NOT EXISTS `tblhoadon` (
`id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `DichvuId` int(11) DEFAULT NULL,
  `BillId` int(11) DEFAULT NULL,
  `SanphamId` int(11) DEFAULT NULL,
  `NgayDang` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhoadon`
--

INSERT INTO `tblhoadon` (`id`, `Userid`, `DichvuId`, `BillId`, `SanphamId`, `NgayDang`) VALUES
(1, 8, 10, 409036939, NULL, '2021-06-09 05:16:49'),
(2, 8, 11, 409036939, NULL, '2021-06-09 05:16:49'),
(3, 4, NULL, 546985416, 61, '2021-06-09 05:17:24'),
(4, 4, NULL, 546985416, 62, '2021-06-09 05:17:24'),
(5, 4, 6, 687336277, NULL, '2021-06-12 03:40:21'),
(6, 4, 7, 687336277, NULL, '2021-06-12 03:40:21'),
(7, 9, NULL, 692625824, 61, '2021-06-12 03:41:13'),
(8, 9, NULL, 692625824, 62, '2021-06-12 03:41:13'),
(9, 9, NULL, 692625824, 63, '2021-06-12 03:41:13'),
(10, 4, NULL, 907877577, 61, '2021-06-16 13:22:08'),
(11, 4, NULL, 907877577, 62, '2021-06-16 13:22:08'),
(12, 4, NULL, 303354530, 61, '2021-06-16 15:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblkhachhang`
--

CREATE TABLE IF NOT EXISTS `tblkhachhang` (
`ID` int(10) NOT NULL,
  `Ten` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Sodienthoai` bigint(11) DEFAULT NULL,
  `Gioitinh` enum('Female','Male','Transgender') CHARACTER SET utf8 DEFAULT NULL,
  `Chitiet` mediumtext CHARACTER SET utf8,
  `Ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`ID`, `Ten`, `Email`, `Sodienthoai`, `Gioitinh`, `Chitiet`, `Ngaytao`, `Ngaycapnhat`) VALUES
(4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, 'Female', '1231', '2021-05-17 03:04:29', '2021-05-23 15:50:55'),
(5, 'Pháº¡m Trá»ng TrÆ°á»ng', 'trongtruong@gmail.com', 35568585, 'Female', '123', '2021-05-28 12:55:17', NULL),
(6, 'Äá»— Quá»‘c Tuáº¥n', 'babywell40@gmail.com', 347689482, 'Female', 'khÃ´ng cÃ³ gÃ¬', '2021-06-05 03:47:27', '2021-06-11 05:26:09'),
(7, 'HoÃ ng Huy Tuáº¥n', 'htuan8288@gmail.com', 56855845, 'Female', '1', '2021-06-05 03:53:33', '2021-06-11 05:24:33'),
(8, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', 1647689482, 'Female', '123', '2021-06-05 04:12:49', NULL),
(9, 'Pháº¡m Trá»ng TrÆ°á»ng', 'tuong0305@gmail.com', 354585685, 'Transgender', 'abc', '2021-06-10 02:01:57', '2021-06-11 05:26:28'),
(10, 'Hoang Vuong', 'anhbahung@gmail.com', 1647689482, NULL, NULL, '2021-06-16 08:28:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnhatkynguoidung`
--

CREATE TABLE IF NOT EXISTS `tblnhatkynguoidung` (
`Id` int(11) NOT NULL,
  `Emailnguoidung` varchar(255) DEFAULT NULL,
  `Ipnguoidung` binary(16) DEFAULT NULL,
  `Thoigianlogin` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Thoigianlogout` varchar(255) DEFAULT NULL,
  `Trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnhatkynguoidung`
--

INSERT INTO `tblnhatkynguoidung` (`Id`, `Emailnguoidung`, `Ipnguoidung`, `Thoigianlogin`, `Thoigianlogout`, `Trangthai`) VALUES
(24, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:01:26', NULL, 0),
(25, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:18:07', '18-05-2021 08:55:09 AM', 1),
(26, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:30:26', NULL, 1),
(27, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:30:36', '18-05-2021 09:03:00 AM', 1),
(28, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:33:20', '18-05-2021 09:03:27 AM', 1),
(29, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:33:53', '18-05-2021 09:03:56 AM', 1),
(30, 'baba@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:35:27', NULL, 0),
(31, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:38:52', NULL, 0),
(32, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:39:20', '18-05-2021 09:10:04 AM', 1),
(34, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:46:04', NULL, 0),
(35, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 03:48:28', NULL, 1),
(36, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 09:37:12', '18-05-2021 03:07:46 PM', 1),
(37, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 09:37:51', '18-05-2021 03:09:25 PM', 1),
(38, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-18 09:39:29', '18-05-2021 03:50:28 PM', 1),
(45, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 02:48:09', NULL, 1),
(46, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 07:57:05', NULL, 0),
(47, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-19 07:57:09', NULL, 1),
(48, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 01:07:08', NULL, 1),
(49, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 02:23:29', NULL, 1),
(50, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 02:47:38', NULL, 0),
(51, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 02:47:43', '20-05-2021 08:17:55 AM', 1),
(52, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 03:15:51', '20-05-2021 10:14:48 AM', 1),
(53, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-20 04:45:24', NULL, 1),
(54, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-22 05:35:16', NULL, 1),
(55, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 06:21:29', NULL, 0),
(56, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-23 06:21:45', NULL, 0),
(59, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 16:26:22', '25-05-2021 09:57:30 PM', 1),
(60, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 16:27:35', NULL, 1),
(61, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 16:34:15', '25-05-2021 10:04:51 PM', 1),
(62, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 16:34:54', '25-05-2021 10:16:06 PM', 1),
(63, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 16:46:12', '25-05-2021 10:17:04 PM', 1),
(64, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 16:49:46', '25-05-2021 11:49:48 PM', 1),
(65, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 02:51:03', '26-05-2021 09:51:58 AM', 1),
(66, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 02:52:05', NULL, 1),
(67, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 14:11:35', '26-05-2021 09:11:38 PM', 1),
(68, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-26 14:24:54', NULL, 1),
(69, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 01:26:22', '27-05-2021 12:59:37 PM', 1),
(70, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-27 13:51:19', NULL, 1),
(71, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 01:06:09', NULL, 1),
(72, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-28 14:06:39', NULL, 1),
(73, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 05:29:39', '02-06-2021 04:25:44 PM', 1),
(74, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-02 09:25:48', NULL, 1),
(75, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-03 06:18:47', '04-06-2021 05:10:55 PM', 1),
(76, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-04 10:11:00', '04-06-2021 08:48:41 PM', 0),
(77, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-04 10:11:08', '04-06-2021 07:22:31 PM', 1),
(78, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-05 17:13:47', NULL, 1),
(79, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 02:55:52', NULL, 1),
(80, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-09 02:07:03', NULL, 1),
(81, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-10 01:44:16', '10-06-2021 09:49:07 PM', 1),
(83, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-10 14:49:12', NULL, 1),
(84, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 09:06:21', NULL, 0),
(85, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 09:06:28', NULL, 0),
(86, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 09:06:33', NULL, 1),
(87, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 14:30:45', NULL, 0),
(88, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-12 14:30:49', NULL, 1),
(89, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-13 09:09:24', '16-06-2021 04:21:51 PM', 0),
(90, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-13 09:09:29', NULL, 1),
(91, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-14 02:02:43', NULL, 1),
(92, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-14 03:53:01', NULL, 1),
(93, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-14 07:01:10', NULL, 1),
(94, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-14 14:40:50', NULL, 1),
(95, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-15 09:07:15', '15-06-2021 04:07:17 PM', 1),
(96, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-15 09:28:25', NULL, 1),
(97, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-16 09:21:59', '16-06-2021 04:22:13 PM', 1),
(98, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-16 13:11:19', '16-06-2021 08:11:57 PM', 1),
(99, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-16 13:12:02', '16-06-2021 09:45:30 PM', 1),
(100, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-16 14:45:35', NULL, 1),
(101, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-17 03:55:49', NULL, 1),
(102, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-18 02:08:43', '18-06-2021 09:20:23 AM', 1),
(103, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-18 02:20:28', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE IF NOT EXISTS `tblorders` (
`Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Phuongthucthanhtoan` varchar(20) DEFAULT NULL,
  `Tinhtrangorder` varchar(20) DEFAULT NULL,
  `Tongtien` varchar(50) DEFAULT NULL,
  `Ngayorder` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`Id`, `UserId`, `Phuongthucthanhtoan`, `Tinhtrangorder`, `Tongtien`, `Ngayorder`) VALUES
(1, 4, 'COD', 'Delivered', '7551000.00', '2021-06-13 02:37:48'),
(2, 4, 'COD', 'Delivered', '14230000.00', '2021-06-14 03:10:26'),
(7, 4, 'COD', 'Delivered', '1117000.00', '2021-06-14 04:01:46'),
(9, 4, 'COD', NULL, '1117000.00', '2021-06-14 07:19:22'),
(14, 4, 'COD', NULL, '2301000.00', '2021-06-14 15:39:17'),
(15, 4, 'COD', NULL, '6554000.00', '2021-06-14 15:50:41'),
(16, 4, NULL, NULL, '1171000.00', '2021-06-14 15:52:50'),
(18, 17, 'COD', NULL, '1108000.00', '2021-06-15 09:22:43'),
(19, 17, 'COD', 'Delivered', '1840000.00', '2021-06-16 15:35:13'),
(20, 17, 'COD', NULL, '1117000.00', '2021-06-16 17:05:26'),
(21, 17, 'COD', 'Delivered', '1117000.00', '2021-06-16 17:06:20'),
(23, 13, 'COD', 'Delivered', '1117000.00', '2021-06-18 02:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblsanpham`
--

CREATE TABLE IF NOT EXISTS `tblsanpham` (
`Id` int(11) NOT NULL,
  `TheloaiId` int(11) NOT NULL,
  `TheloaiphuId` int(11) DEFAULT NULL,
  `Tensanpham` varchar(255) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `Sanphamcongty` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Giasanpham` int(11) DEFAULT NULL,
  `Giasanphamtruockhigiam` int(11) DEFAULT NULL,
  `Motasanpham` longtext CHARACTER SET utf8,
  `Hinhanh1` varchar(255) DEFAULT NULL,
  `Hinhanh2` varchar(255) DEFAULT NULL,
  `Hinhanh3` varchar(255) DEFAULT NULL,
  `Phivanchuyen` int(11) DEFAULT NULL,
  `Sanphamcosan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaydang` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Ngaycapnhat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsanpham`
--

INSERT INTO `tblsanpham` (`Id`, `TheloaiId`, `TheloaiphuId`, `Tensanpham`, `Sanphamcongty`, `Giasanpham`, `Giasanphamtruockhigiam`, `Motasanpham`, `Hinhanh1`, `Hinhanh2`, `Hinhanh3`, `Phivanchuyen`, `Sanphamcosan`, `Ngaydang`, `Ngaycapnhat`) VALUES
(61, 3, 8, 'Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free spf 50- 50ml', 'ABC', 1172000, 1172000, '											<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml</span></li></ol>										', 'small-1.png', 'small-2.png', 'small-1.png', 12000, 'In Stock', '2021-06-08 02:57:47', NULL),
(62, 3, 8, 'Kem chá»‘ng náº¯ng Heliocare XF Gel SPF50', 'ABC', 1097000, 1197000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh1.png', 'hinh2.png', 'hinh3.png', 20000, 'In Stock', '2021-06-08 03:00:20', NULL),
(63, 3, 8, 'Kem Chá»‘ng Náº¯ng Heliocare Cream SPF 50', 'ABC', 1022000, 1032000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml</span></li></ol>', 'Hinh4.png', 'hinh5.jpg', 'hinh6.png', 15000, 'In Stock', '2021-06-08 03:12:57', NULL),
(64, 3, 8, 'Kem Chá»‘ng Náº¯ng Heliocare Ultra Gel SPF 90', 'ABC', 1094000, 1097000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh7.png', 'hinh8.png', 'Hinh9.png', 20000, 'In Stock', '2021-06-08 03:17:55', NULL),
(65, 3, 8, 'Kem Chá»‘ng Náº¯ng Dáº¡ng Xá»‹t Heliocare Spray SPF 50', 'ABC', 1097000, 1097000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh10.png', 'hinh12.png', 'hinh13.png', 11000, 'In Stock', '2021-06-08 03:19:53', NULL),
(66, 3, 8, 'ViÃªn uá»‘ng chá»‘ng náº¯ng Heliocare Oral - ABC', 'ABC', 1147000, 1197000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'Hinh14.jpg', 'hinh15.jpg', 'hinh16.jpg', 24000, 'In Stock', '2021-06-08 03:21:22', NULL),
(67, 3, 8, 'ViÃªn uá»‘ng chá»‘ng náº¯ng Heliocare Sunsafe 60 viÃªn', 'ABC', 1147000, 1157000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh17.png', 'hinh18.jpg', 'hinh19.jpg', 17000, 'Out of Stock', '2021-06-08 04:12:59', NULL),
(68, 3, 2, 'Bá»™ kit má»¥n Murad Blemish Control Travel Set', 'BCD', 1210000, 1220000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh20.jpg', 'hinh21.jpg', 'hinh22.jpg', 14500, 'In Stock', '2021-06-08 04:17:08', NULL),
(69, 3, 2, 'Kem giÃºp giáº£m má»¥n Neostrata Spot Treatment', 'BCD', 698000, 798000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh23.jpg', 'hinh24.jpg', 'hinh25.jpg', 16000, 'In Stock', '2021-06-08 04:18:32', NULL),
(70, 3, 2, 'Kem giáº£m má»¥n táº§ng sÃ¢u Murad Acne CLearing Solution', 'BCD', 1658000, 1688000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh26.png', 'hinh27.jpg', 'hinh28.jpg', 16000, 'In Stock', '2021-06-08 04:20:10', NULL),
(71, 3, 2, 'Toner giÃºp giáº£m Má»¥n Dáº¡ng Xá»‹t Murad Clarifying Body', 'BCD', 1209000, 1219000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh29.png', 'hinh30.jpg', 'hinh31.jpg', 25000, 'In Stock', '2021-06-08 04:22:08', NULL),
(72, 3, 2, 'Kem giÃºp giáº£m Má»¥n Cáº¥p Tá»‘c Murad Blemish Spot Treat', 'BCD', 614000, 619000, '																						a                                    																				', 'hinh32.jpg', 'hinh33.jpg', 'hinh34.jpg', 14500, 'In Stock', '2021-06-08 04:23:42', NULL),
(73, 3, 2, 'Kem giÃºp giáº£m má»¥n Dermalogica Clear Start Emergenc', 'BCD', 1768000, 1771000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh35.jpg', 'hinh36.jpg', 'hinh37.jpg', 5000, 'In Stock', '2021-06-08 04:26:49', NULL),
(74, 3, 3, 'Kem giÃºp giáº£m nÃ¡m The Perfect Bleaching Cream', 'CDE', 2000000, 2030000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh39.jpg', 'hÃ¬nh38.jpg', 'hinh40.jpg', 1000, 'In Stock', '2021-06-08 04:31:54', NULL),
(75, 3, 3, 'Serum giÃºp giáº£m nÃ¡m Nanoluxe Dark Spot Remover by', 'CDE', 1400000, 1470000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh41.jpg', 'hinh42.jpg', 'hinh43.jpg', 2000, 'In Stock', '2021-06-08 04:34:50', NULL),
(76, 3, 3, 'Serum giáº£m nÃ¡m lÃ m khá»e da Active Radiance Serum M', 'CDE', 7292000, 7297000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh46.jpg', 'hinh45.jpg', 'hinh45.jpg', 12000, 'In Stock', '2021-06-08 04:36:29', NULL),
(77, 3, 3, 'Kem Che Khuyáº¿t Äiá»ƒm giÃºp giáº£m Má»¥n TÃ´ng Vá»«a Murad B', 'CDE', 685000, 687000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh47.jpg', 'hinh48.jpg', 'hinh49.jpg', 8000, 'In Stock', '2021-06-08 04:38:21', NULL),
(78, 3, 3, 'Serum giÃºp giáº£m nÃ¡m chá»‘ng lÃ£o hÃ³a da Rapid Age Spo', 'CDE', 2855000, 2857000, 'a                                    ', 'hinh50.jpg', 'hinh51.jpg', 'hinh52.jpg', 7500, 'In Stock', '2021-06-08 04:39:46', NULL),
(79, 3, 3, 'Vitamin C 15â€° Ä‘iá»u giÃºp giáº£m nÃ¡m Is Clinical C-15', 'CDE', 1978000, 1988000, 'a                                    ', 'hinh53.jpg', 'hinh54.jpg', 'hinh55.jpg', 7500, 'In Stock', '2021-06-08 04:41:40', NULL),
(80, 3, 3, 'Kem giÃºp giáº£m nÃ¡m Ä‘á»‘m nÃ¢u Mesoestetic Ultimate W W', 'CDE', 2189000, 2199000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh56.jpg', 'hinh57.jpg', 'hinh58.jpg', 0, 'Out of Stock', '2021-06-08 04:43:21', NULL),
(81, 3, 4, 'Serum há»“i sinh sá»©c sá»‘ng cho da Murad Intensive Age', 'DEF', 7115000, 7125000, 'a                                    ', 'hinh59.jpg', 'hinh60.jpg', 'hinh61.jpg', 0, 'Out of Stock', '2021-06-08 04:47:40', NULL),
(82, 3, 4, 'Serum dÆ°á»¡ng lÃ m sÃ¡ng da Endocare Tensage Serum', 'DEF', 1832000, 1832000, 'a                                    ', 'hinh62.jpg', 'hinh63.jpg', 'hinh64.jpg', 8000, 'In Stock', '2021-06-08 04:48:48', NULL),
(83, 3, 4, 'Tinh cháº¥t cÄƒng má»ng Murad Hydro Dynamic Quenching', 'DEF', 6351000, 6351000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh68.jpg', 'hinh69.jpg', 'hinh70.jpg', 7000, 'In Stock', '2021-06-08 04:51:05', NULL),
(84, 3, 4, 'Collagen tháº¿ há»‡ má»›i Murad Rapid Collagen Infusion', 'ABCH', 6858000, 6878000, 'a                                    ', 'hinh71.jpg', 'hinn72.jpg', 'hinh73.jpg', 7500, 'In Stock', '2021-06-08 15:45:16', NULL),
(85, 3, 4, 'Collagen tháº¿ há»‡ má»›i Murad Rapid Collagen Infusion', 'AHNG', 2700000, 2706000, '<ol><li><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;lÃ  má»™t loáº¡i&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;dÆ°á»¡ng da, xá»‹t, gel hoáº·c cÃ¡c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">sáº£n pháº©m</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;Ä‘áº·c&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">trá»‹</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;khÃ¡c giÃºp háº¥p thá»¥ hoáº·c pháº£n xáº¡ má»™t sá»‘ bá»©c xáº¡ tia cá»±c tÃ­m (UV) cá»§a máº·t trá»i do Ä‘Ã³ giÃºp&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">chá»‘ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;láº¡i chÃ¡y&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">. Sá»­ dá»¥ng thÆ°á»ng xuyÃªn&nbsp;</span><b style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">kem chá»‘ng náº¯ng</b><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">&nbsp;cÅ©ng cÃ³ thá»ƒ lÃ m cháº­m hoáº·c giáº£m sá»± phÃ¡t triá»ƒn cá»§a náº¿p nhÄƒn, ná»‘t ruá»“i vÃ  da cháº£y xá»‡.</span><br></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Kem Chá»‘ng Náº¯ng Heliocare 360 Gel Oil-Free - Kem chá»‘ng náº¯ng tÃ¢n tiáº¿n nháº¥t giÃºp chá»‘ng láº¡i &amp; tia há»“ng ngoáº¡i<br></span></li><li><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif;">Heliocare 360 Water Gel SPF 50+- Gel / náº¯ng dáº¡ng nÆ°á»›c 50ml<br></span></li></ol>', 'hinh74.jpg', 'hinh75.jpg', 'hinh76.jpg', 8500, 'Out of Stock', '2021-06-08 15:47:11', NULL),
(86, 3, 4, 'Báº£o vá»‡ & lÃ m dá»‹u da vÃ  mÃ´i Murad Soothing Skin Lip', 'AHY', 2092000, 2098000, 'a                                    ', 'small-bao-ve-lam-diu-da-va-moi-Murad-Soothing-Skin-Lip-Curticle-Care-a.png', 'hinh77.png', 'hinh78.jpg', 9000, 'In Stock', '2021-06-08 15:48:30', NULL),
(87, 3, 5, 'Kem táº¯m tráº¯ng bÃ¹n khoÃ¡ng thiÃªn nhiÃªn vÃ  tinh cháº¥t', 'Há»´UY', 185000, 189000, 'a                                    ', 'small-kem-tam-trang-bun-bien-skaura-dead-sea-mineral-mud-whitening-mask-cream-d.png', 'hinh79.jpg', 'hinh80.jpg', 2000, 'In Stock', '2021-06-08 15:50:18', NULL),
(88, 3, 5, 'Bá»™ kem táº¯m tráº¯ng cao cáº¥p tiÃªu chuáº©n Spa Sakura Sup', 'AHY', 350000, 350000, 'a                                    ', 'small-kem-tam-trang-sakura-super-white-spa-system-m.png', 'hinh81.png', 'hinh82.jpg', 0, 'In Stock', '2021-06-08 15:51:33', NULL),
(89, 3, 5, 'Bá»™ kem táº¯m tráº¯ng Vitamin C vÃ  tháº£o dÆ°á»£c tá»•ng há»£p S', 'ABH', 250000, 258000, 'a                                    ', 'small-set-kem-tam-trang-sakura-multivitamin-herbals-hoaanhdaovn-r.png', 'hinh83.png', 'hinh84.jpg', 500, 'In Stock', '2021-06-08 15:52:51', NULL),
(90, 3, 5, 'Kem táº¯m tráº¯ng toÃ n thÃ¢n ngá»c trai tÆ¡ táº±m Sakura Pe', 'HJYY', 185000, 195000, 'a                                    ', 'small-kem-tam-trang-ngoc-trai-to-tam-sakura-pearl-silk-rich-special-whitrning-cream.png', 'hinh85.jpg', 'hinh86.jpg', 19000, 'Out of Stock', '2021-06-08 15:55:06', NULL),
(91, 3, 5, 'Kem táº¯m tráº¯ng Ipsasa tá»« ngá»c trai vÃ  tÆ¡ táº±m', 'HYUY', 165000, 169000, 'a                                    ', 'small-kem-tam-trang-ngoc-trai-to-tam-sakura1.png', 'hom87.jpg', 'hinh88.jpg', 6000, 'In Stock', '2021-06-08 15:57:02', NULL),
(92, 3, 5, 'Kem táº¯m tráº¯ng Ipsasa tá»« cÃ  phÃª vÃ  hoa cÃºc', 'AHY', 165000, 175000, 'a                                    ', 'small-kem-tam-trang-ipsasa-tu-ngoc-trai-to-tam1.png', 'hinh89.jpg', 'hinh90.jpg', 7000, 'In Stock', '2021-06-08 15:58:23', NULL),
(93, 3, 6, 'Kem DÆ°á»¡ng Tráº¯ng Da ToÃ n ThÃ¢n Body Hydrating Cream', 'NHU', 2103000, 2113000, 'a                                    ', 'small-body-hydrating-cream-473ml-a.png', 'hinh91.jpg', 'hinh92.png', 15000, 'In Stock', '2021-06-08 16:00:56', NULL),
(94, 3, 6, 'Gel táº¯m Dermalogica Conditioning Body Wash 500ml', 'HUY', 1877000, 1897000, 'a                                    ', 'hinh93.jpg', 'hinh94.jpg', 'hinh95.jpg', 6000, 'In Stock', '2021-06-08 16:02:07', NULL),
(95, 3, 6, 'Kem DÆ°á»¡ng Tráº¯ng Da Tay Dermalogica Multivitamin Ha', 'HUIKJ', 943000, 948000, 'a                                    ', 'small-kem-duong-tay-va-mong-Dermalogica-Multivitamin-Hand-And-Nail-Treatment-a.png', 'hinh96.jpg', 'hinh97.jpg', 0, 'In Stock', '2021-06-08 16:03:32', NULL),
(96, 3, 6, 'Combo 3 Bá»™ sáº£n pháº©m lÃ m tráº¯ng da body cao cáº¥p Saku', 'VUNH', 2365000, 2395000, 'a                                    ', 'hinh98.jpg', 'hinh99.jpg', 'hinh100.jpg', 0, 'Out of Stock', '2021-06-08 16:05:37', NULL),
(97, 3, 6, 'Bá»™ kem dÆ°á»¡ng tráº¯ng da toÃ n thÃ¢n Sakura Body Gift S', 'HUIYA', 4180000, 4188000, 'a                                    ', 'hinh101.jpg', 'hinh012.jpg', 'hinh103.jpg', 19000, 'In Stock', '2021-06-08 16:07:02', NULL),
(98, 3, 6, 'Combo 6 Bá»™ Sáº£n pháº©m lÃ m tráº¯ng da body cao cáº¥p Saku', 'AKTI', 2630000, 2638000, 'a                                    ', 'small-combo-6-bo-san-pham-lam-trang-da-body-cao-cap-sakura-tieu-chuan-nhat-ban-new.png', 'inh104.jpg', 'hinh105.jpg', 500, 'In Stock', '2021-06-08 16:08:09', NULL);
INSERT INTO `tblsanpham` (`Id`, `TheloaiId`, `TheloaiphuId`, `Tensanpham`, `Sanphamcongty`, `Giasanpham`, `Giasanphamtruockhigiam`, `Motasanpham`, `Hinhanh1`, `Hinhanh2`, `Hinhanh3`, `Phivanchuyen`, `Sanphamcosan`, `Ngaydang`, `Ngaycapnhat`) VALUES
(99, 4, 10, 'Kem Trang Äiá»ƒm Chá»‘ng Náº¯ng SK-II Atmosphere CC Cream UV', 'HYU', 1980000, 1999000, '											<ol><li><span style="font-family: Helvetica, Arial, sans-serif; font-size: 14px;">&nbsp;SK-II Atmosphere CC Cream Ä‘Æ°á»£c phÃ¡i Ä‘áº¹p Nháº­t yÃªu thÃ­ch vÃ  nháº­n Ä‘Æ°á»£c hai giáº£i thÆ°á»Ÿng danh giÃ¡ vá» má»¹ pháº©m â€œthe bestâ€ cá»§a Cosme vÃ  giáº£i thÆ°á»Ÿng Division vá» dÃ²ng kem CC Cream Ä‘Æ°á»£c Æ°a chuá»™ng.</span><br></li><li><span style="font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Kem trang Ä‘iá»ƒm SK-II Atmosphere CC Cream tÃ­ch há»£p thÃªm kháº£ nÄƒng chá»‘ng náº¯ng cá»±c cao SPF 50+ vÃ  PA++++, giÃºp báº£o vá»‡ lÃ n da má»™t cÃ¡ch toÃ n diá»‡n vÃ  hiá»‡u quáº£ hÆ¡n.<br></span></li><li><span style="font-family: Helvetica, Arial, sans-serif; font-size: 14px;">Trong kem trang Ä‘iá»ƒm chá»‘ng náº¯ng SK-II nÃ y báº¡n sáº½ báº¯t gáº·p nhá»¯ng thÃ nh pháº§n dÆ°á»¡ng da quen thuá»™c nhÆ° tinh cháº¥t Pitera Ä‘á»™c quyá»n giÃºp báº¡n sá»Ÿ há»¯u lÃ n da khÃ´ng tÃ¬ váº¿t hay chiáº¿t xuáº¥t quáº£ mÆ¡ tÄƒng thÃªm sá»©c sá»‘ng cho lÃ n da, vÃ  cáº£ Niacinamide (dáº«n xuáº¥t cá»§a vitamin B3) giÃºp tÄƒng kháº£ nÄƒng sáº£n sinh táº¿ bÃ o má»›i vÃ  se khÃ­t lá»— chÃ¢n lÃ´ng, Ä‘á»ƒ sau má»—i lá»›p trang Ä‘iá»ƒm, lÃ n da báº¡n váº«n Ä‘Æ°á»£c cung cáº¥p cÃ¡c cháº¥t nuÃ´i dÆ°á»¡ng váº» Ä‘áº¹p tá»± nhiÃªn tá»« bÃªn trong.<br></span></li></ol>										', 'h1.jpg', 'h1.jpg', 'h1.jpg', 5000, 'In Stock', '2021-06-08 16:36:36', NULL),
(100, 4, 10, 'Kem Trang Äiá»ƒm SK-II Atmosphere CC Cream SPF50/PA ++++', 'HUY', 1800000, 1900000, 'a                                    ', 'h2.jpg', 'h3.jpg', 'h4.jpg', 9000, 'In Stock', '2021-06-08 16:38:29', NULL),
(101, 4, 10, 'Kem lÃ³t trang Ä‘iá»ƒm dÆ°á»¡ng da SK-II Signs Control Base SPF20 25g', 'AUH', 1550000, 1590000, 'a                                    ', 'h5.jpg', 'h6.jpg', 'h7.jpg', 8000, 'Out of Stock', '2021-06-08 16:39:27', NULL),
(102, 4, 10, 'Kem LÃ³t Trang Äiá»ƒm SK-II Clear Beauty Care & Control Cream', 'AKI', 1150000, 1150000, 'a                                    ', 'h8.jpg', 'h9.jpg', 'h10.jpg', 7500, 'In Stock', '2021-06-08 16:40:19', NULL),
(103, 4, 11, 'Son DÆ°á»¡ng MÃ´i Má»m Má»‹n Vaseline 4.8g Lip Therapy Original Stick', 'HUY', 45000, 47000, 'a                                    ', 'abc.jpg', 'h12.jpeg', 'abc1.jpg', 1000, 'In Stock', '2021-06-09 01:27:55', NULL),
(104, 4, 11, 'Son DÆ°á»¡ng MÃ´i Lip Smacker HÆ°Æ¡ng TrÃ  Xanh Sá»¯a 7.4g', 'ABC', 150000, 155000, '																						a                                    																				', 'ab.jpg', 'ab1.jpg', 'ab2.jpg', 5000, 'In Stock', '2021-06-09 01:30:20', NULL),
(105, 4, 11, 'Son DÆ°á»¡ng MÃ´i Nivea HÆ°Æ¡ng DÃ¢u 4.8g Strawberry Shine Lip Balm', 'NHG', 60000, 63000, '											a                                    										', 'b1.jpg', 'b2.jpg', 'b3.jpg', 3000, 'Out of Stock', '2021-06-09 01:31:30', NULL),
(106, 4, 11, 'Son DÆ°á»¡ng MÃ´i HURRAW! HÆ°Æ¡ng Báº¡c HÃ  4.8g Mint Lip Balm', 'ABG', 109000, 115000, 'a                                    ', 'h111.jpg', 'h112.jpg', 'h111.jpg', 7000, 'In Stock', '2021-06-09 01:32:29', NULL),
(107, 4, 12, 'Pháº¥n MÃ¡ Há»“ng 3ce Face Blush - Blush - gra', 'aGH', 250000, 259000, '											a                                    										', 'h23.jpg', 'h24.jpg', 'h25.jpg', 5000, 'In Stock', '2021-06-09 01:43:19', NULL),
(108, 4, 12, 'Pháº¥n MÃ¡ Há»“ng Moart - Velvet Blusher - 9g', 'AGT', 430000, 440000, '											a                                    										', 'h26.jpg', 'h27.jpg', 'h28.jpg', 6000, 'In Stock', '2021-06-09 01:45:10', NULL),
(109, 4, 12, 'Pháº¥n MÃ¡ Há»“ng Chanel Jouse - 3row - twich1', 'AHY', 1150000, 1200000, '																						a                                    																				', 'h29.jpg', '30.jpg', 'h31.jpg', 0, 'In Stock', '2021-06-09 01:46:32', NULL),
(110, 4, 13, 'Son mÃ´i 3CE Red Recipe Matte Lip Color #214 ChÃ­nh hÃ£ng HÃ n Quá»‘c', 'AHY', 335000, 335000, 'a                                    ', 'h32.jpg', 'h33.jpg', 'h34.jpg', 2000, 'In Stock', '2021-06-09 01:48:33', NULL),
(111, 4, 13, 'Son Tom Ford MÃ u 06 Flame Äá» Cam LÃ´i Cuá»‘n (New)', 'AHY', 1100000, 1200000, 'a                                    ', 'h36.png', 'h35.jpg', 'h37.png', 0, 'In Stock', '2021-06-09 01:50:03', NULL),
(112, 4, 13, 'Son LÃ¬ Christian Louboutin MÃ u 215M Rococotte', 'aHY', 2850000, 2850000, 'a                                    ', 'h38.jpg', 'h39.jpg', '40.jpg', 0, 'In Stock', '2021-06-09 01:51:43', NULL),
(113, 5, 16, 'ViÃªn uá»‘ng cáº£i thiá»‡n tone mÃ u da Heliocare Purewhit', 'AGT', 2607000, 2607000, 'a                                    ', 'h41.png', 'h42.jpg', 'h43.jpg', 1000, 'In Stock', '2021-06-09 01:54:25', NULL),
(114, 5, 16, 'ViÃªn uá»‘ng tráº¯ng da chá»‘ng lÃ£o hoÃ¡ Sakura White Adva', 'HU', 1600000, 1620000, 'a                                    ', 'h44.jpg', 'h45.jpg', 'h46.jpg', 2000, 'In Stock', '2021-06-09 01:56:09', NULL),
(115, 5, 16, 'ViÃªn uá»‘ng Ä‘áº¹p da Sakura CHP Enhanced Beauty Nutraceuticals', 'HU', 1500000, 1580000, '											a                                    										', 'h47.jpg', 'h48.jpg', 'h49.jpg', 3000, 'In Stock', '2021-06-09 01:57:40', NULL),
(116, 5, 18, 'ViÃªn Káº½m Há»— Trá»£ Trá»‹ Má»¥n Zinc For Acne Puritanâ€™s Pride Cá»§a Má»¹', 'A', 244000, 248000, '											a                                    										', 'h50.jpg', 'h51.jpg', 'h52.jpg', 10000, 'In Stock', '2021-06-09 02:00:43', NULL),
(117, 5, 18, 'ViÃªn Káº½m Há»— Trá»£ Trá»‹ Má»¥n Zinc For Acne Puritanâ€™s Pride Cá»§a Má»¹', 'AGT', 1580999, 1582000, '											a                                    										', 'h54.jpg', 'h53.jpg', 'h55.jpg', 2000, 'In Stock', '2021-06-09 02:02:10', NULL),
(118, 5, 18, 'ViÃªn Uá»‘ng Giáº£m Má»¥n, XÃ³a Tan Sáº¹o ThÃ¢m Sakura AcnePill Nháº­t Báº£n', 'AHY', 600999, 695000, '											a                                    										', 'h56.png', 'h57.jpg', 'h58.jpg', 10000, 'Out of Stock', '2021-06-09 02:03:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltheloai`
--

CREATE TABLE IF NOT EXISTS `tbltheloai` (
`Id` int(11) NOT NULL,
  `Tentheloai` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Motatheloai` longtext CHARACTER SET utf8,
  `Ngaytao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltheloai`
--

INSERT INTO `tbltheloai` (`Id`, `Tentheloai`, `Motatheloai`, `Ngaytao`, `Ngaycapnhat`) VALUES
(3, 'Má»¹ Pháº©m', 'Má»¹ pháº©m spa chuyÃªn dá»¥ng', '2017-01-24 19:17:37', '2021-06-08 02:05:09'),
(4, 'Trang Äiá»ƒm', 'Sáº£n pháº©m Ä‘Æ°á»£c Æ°u dÃ¹ng vÃ  tá»‘t nháº¥t', '2017-01-24 19:19:32', '2021-06-08 02:05:50'),
(5, 'Dinh DÆ°á»¡ng - Sá»©c Khá»e', 'Dinh dÆ°á»¡ng, Sá»©c khá»e', '2017-01-24 19:19:54', '2021-06-09 03:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbltheloaiphu`
--

CREATE TABLE IF NOT EXISTS `tbltheloaiphu` (
`Id` int(11) NOT NULL,
  `TheloaiId` int(11) DEFAULT NULL,
  `theloaiphu` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltheloaiphu`
--

INSERT INTO `tbltheloaiphu` (`Id`, `TheloaiId`, `theloaiphu`, `Ngaytao`, `Ngaycapnhat`) VALUES
(2, 3, 'Kem Giáº£m Má»¥n', '2017-01-26 16:24:52', '2021-06-08 02:14:05'),
(3, 3, 'Kem Trá»‹ NÃ¡m', '2017-01-26 16:29:09', '2021-06-08 02:14:11'),
(4, 3, 'Kem DÆ°á»¡ng Da', '2017-01-30 16:55:48', '2021-06-08 02:14:24'),
(5, 3, 'Kem táº¯m tráº¯ng', '2017-02-04 04:12:40', '2021-06-08 02:14:51'),
(6, 3, 'Kem DÆ°á»¡ng Tráº¯ng', '2017-02-04 04:13:00', '2021-06-08 02:15:03'),
(7, 3, 'Kem DÆ°á»¡ng áº¨m', '2017-02-04 04:13:27', '2021-06-08 02:15:23'),
(8, 3, 'Kem Chá»‘ng Náº¯ng', '2017-02-04 04:13:54', '2021-06-08 02:13:23'),
(9, 3, 'Kem GiÃºp Giáº£m sáº¹o', '2017-02-04 04:36:45', '2021-06-08 02:15:42'),
(10, 4, 'Kem Trang Äiá»ƒm', '2017-02-04 04:37:02', '2021-06-08 02:16:06'),
(11, 4, 'Son DÆ°á»¡ng MÃ´i', '2017-02-04 04:37:51', '2021-06-08 02:16:19'),
(12, 4, 'Pháº¥n MÃ¡ Há»“ng', '2017-03-10 20:12:59', '2021-06-08 02:16:32'),
(13, 4, 'Son MÃ´i', '2021-06-08 02:16:40', NULL),
(16, 5, 'ViÃªn Uá»‘ng Tráº¯ng Da', '2021-06-08 02:17:30', NULL),
(17, 5, 'ViÃªn Uá»‘ng Giáº£m NÃ¡m Da', '2021-06-08 02:17:38', '2021-06-09 03:16:40'),
(18, 5, '	 ViÃªn Uá»‘ng GiÃºp Giáº£m Má»¥n', '2021-06-08 02:17:49', NULL),
(19, 6, 'CÃ¡ch DÆ°á»¡ng Tráº¯ng Da', '2021-06-08 02:19:00', NULL),
(20, 6, 'CÃ¡ch Chá»‘ng Náº¯ng', '2021-06-08 02:19:07', NULL),
(21, 6, 'Äiá»u Trá»‹ Má»¥n', '2021-06-08 02:19:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltheodoilichsu`
--

CREATE TABLE IF NOT EXISTS `tbltheodoilichsu` (
`Id` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `Trangthai` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Nhanxet` mediumtext CHARACTER SET utf8,
  `NgayDang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltheodoilichsu`
--

INSERT INTO `tbltheodoilichsu` (`Id`, `OrderId`, `Trangthai`, `Nhanxet`, `NgayDang`) VALUES
(1, 3, 'In Process', 'abc', '2021-06-10 01:53:05'),
(2, 3, 'In Process', 'abc', '2021-06-10 01:53:15'),
(3, 9, 'In Process', 'Äá»£i kiá»ƒm tra kho', '2021-06-11 03:15:33'),
(4, 8, 'In Process', 'Äang kiá»ƒm tra', '2021-06-11 03:15:46'),
(5, 11, 'In Process', 'Ä‘ang kiá»ƒm tra', '2021-06-11 03:15:55'),
(6, 9, 'Delivered', 'ok', '2021-06-11 03:16:03'),
(7, 1, 'In Process', 'ok\r\n', '2021-06-14 02:51:59'),
(8, 1, 'Delivered', 'Ä‘Ã£ giao', '2021-06-14 02:52:29'),
(9, 2, 'Delivered', 'Ä‘Ã£ giao', '2021-06-14 03:40:13'),
(10, 7, 'In Process', 'chá» kiá»ƒm tra hÃ ng', '2021-06-14 07:01:02'),
(11, 7, 'Delivered', 'he', '2021-06-16 13:21:18'),
(12, 19, 'Delivered', 'Äang váº­n chuyá»ƒn hÃ ng', '2021-06-16 15:36:02'),
(13, 21, 'In Process', 'Ä‘á»£i kiá»ƒm tra', '2021-06-16 17:07:36'),
(14, 21, 'Delivered', 'Ä‘Ã£ gá»­i hÃ ng', '2021-06-16 17:07:52'),
(15, 23, 'In Process', 'Ä‘á»£i kiá»ƒm tra hÃ ng', '2021-06-18 02:21:46'),
(16, 23, 'Delivered', 'Ä‘Ã£ giao', '2021-06-18 02:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrang`
--

CREATE TABLE IF NOT EXISTS `tbltrang` (
`ID` int(10) NOT NULL,
  `Loaitrang` varchar(200) DEFAULT NULL,
  `Tieudetrang` mediumtext,
  `Motatrang` mediumtext,
  `Email` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `Sodienthoai` bigint(10) DEFAULT NULL,
  `Ngaycapnhat` date DEFAULT NULL,
  `Thoigian` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltrang`
--

INSERT INTO `tbltrang` (`ID`, `Loaitrang`, `Tieudetrang`, `Motatrang`, `Email`, `Sodienthoai`, `Ngaycapnhat`, `Thoigian`) VALUES
(1, 'aboutus', 'About Us', '<span style="font-family: " comic="" sans="" ms";"="">Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings...</span><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        					        					        					        					        					        					<font color="#ff3333" face="times new roman"><b style="">        					41/58A Cáº§u XÃ¢y, PhÆ°á»ng TÃ¢n PhÃº, Quáº­n 9, TP HCM</b></font>', 'hoangvuong1225@gmail.com', 347689482, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
`Id` int(11) NOT NULL,
  `Ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Lienhe` bigint(11) DEFAULT NULL,
  `Matkhau` varchar(255) DEFAULT NULL,
  `Diachigiaohang` longtext CHARACTER SET utf8,
  `Thanhphovanchuyen` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Mapinvanchuyen` int(11) DEFAULT NULL,
  `Ngaydangky` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ngaycapnhat` varchar(255) DEFAULT NULL,
  `id_fb` varchar(100) NOT NULL,
  `Token` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`Id`, `Ten`, `Email`, `Lienhe`, `Matkhau`, `Diachigiaohang`, `Thanhphovanchuyen`, `Mapinvanchuyen`, `Ngaydangky`, `Ngaycapnhat`, `id_fb`, `Token`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', NULL, NULL, NULL, '2017-02-04 12:30:50', NULL, '', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', NULL, NULL, NULL, '2017-03-15 10:21:22', NULL, '', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, '2018-04-29 02:30:32', NULL, '', ''),
(4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'hoangvuong11225@gmail.com', 347689482, 'bf288aa8e84f49c6f74b5faa301243ed', '41/58A Cáº§u XÃ¢y, P.TÃ¢n PhÃº, Quáº­n 9 , TP. HCM', 'TP Há»“ ChÃ­ Minh', 1843, '2021-05-17 20:18:00', NULL, '', ''),
(13, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'hoangvuong1225@gmail.com', NULL, NULL, '41/58A, Cau Xay, P.Tan Phu, Quan 9\r\nQngai', 'HCM', 6666, '2021-06-18 02:20:28', NULL, '503605900690878', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblyeuthich`
--

CREATE TABLE IF NOT EXISTS `tblyeuthich` (
`Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `SanphamId` int(11) DEFAULT NULL,
  `NgayDang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblyeuthich`
--

INSERT INTO `tblyeuthich` (`Id`, `UserId`, `SanphamId`, `NgayDang`) VALUES
(1, 4, 83, '2021-06-09 04:03:04'),
(2, 4, 61, '2021-06-14 09:26:48'),
(4, 4, 91, '2021-06-16 13:12:07'),
(5, 17, 100, '2021-06-16 16:47:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblctod`
--
ALTER TABLE `tblctod`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblcuochen`
--
ALTER TABLE `tblcuochen`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldanhgiasanpham`
--
ALTER TABLE `tbldanhgiasanpham`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbldichvu`
--
ALTER TABLE `tbldichvu`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgopy`
--
ALTER TABLE `tblgopy`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblhoadon`
--
ALTER TABLE `tblhoadon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnhatkynguoidung`
--
ALTER TABLE `tblnhatkynguoidung`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsanpham`
--
ALTER TABLE `tblsanpham`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbltheloai`
--
ALTER TABLE `tbltheloai`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbltheloaiphu`
--
ALTER TABLE `tbltheloaiphu`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbltheodoilichsu`
--
ALTER TABLE `tbltheodoilichsu`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbltrang`
--
ALTER TABLE `tbltrang`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblyeuthich`
--
ALTER TABLE `tblyeuthich`
 ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblctod`
--
ALTER TABLE `tblctod`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tblcuochen`
--
ALTER TABLE `tblcuochen`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbldanhgiasanpham`
--
ALTER TABLE `tbldanhgiasanpham`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbldichvu`
--
ALTER TABLE `tbldichvu`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tblgopy`
--
ALTER TABLE `tblgopy`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblhoadon`
--
ALTER TABLE `tblhoadon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblnhatkynguoidung`
--
ALTER TABLE `tblnhatkynguoidung`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tblsanpham`
--
ALTER TABLE `tblsanpham`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `tbltheloai`
--
ALTER TABLE `tbltheloai`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbltheloaiphu`
--
ALTER TABLE `tbltheloaiphu`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbltheodoilichsu`
--
ALTER TABLE `tbltheodoilichsu`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbltrang`
--
ALTER TABLE `tbltrang`
MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tblyeuthich`
--
ALTER TABLE `tblyeuthich`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
