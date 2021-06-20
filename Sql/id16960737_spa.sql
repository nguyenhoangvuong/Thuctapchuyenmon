-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 20, 2021 lúc 03:21 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id16960737_spa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Tenadmin` char(50) DEFAULT NULL,
  `Taikhoan` char(50) CHARACTER SET latin1 DEFAULT NULL,
  `Sodienthoai` bigint(10) DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `Matkhau` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `NgayDangKyAdmin` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Tenadmin`, `Taikhoan`, `Sodienthoai`, `Email`, `Matkhau`, `NgayDangKyAdmin`) VALUES
(1, 'Nguyen Hoang Vuong', 'admin', 347689482, 'hoangvuong1225@gmail.com', 'bf288aa8e84f49c6f74b5faa301243ed', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblctod`
--

CREATE TABLE `tblctod` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `SanphamId` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblctod`
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
(41, 23, 62, 1),
(42, 24, 62, 2),
(43, 25, 62, 1),
(44, 26, 63, 1),
(45, 27, 61, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcuochen`
--

CREATE TABLE `tblcuochen` (
  `ID` int(10) NOT NULL,
  `Socuochen` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `Ten` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Sodienthoai` bigint(11) DEFAULT NULL,
  `Ngayhen` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Giohen` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `Dichvu` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Ngayapdung` timestamp NULL DEFAULT current_timestamp(),
  `Nhanxet` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Trangthai` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaynhanxet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcuochen`
--

INSERT INTO `tblcuochen` (`ID`, `Socuochen`, `Ten`, `Email`, `Sodienthoai`, `Ngayhen`, `Giohen`, `Dichvu`, `Ngayapdung`, `Nhanxet`, `Trangthai`, `Ngaynhanxet`) VALUES
(1, '945550275', 'a', 'hoangvuong1225@gmail.com', 1647689482, '6/2/2021', '12:30am', 'Charcol Facial', '2021-05-14 02:41:25', '12', '2', '2021-06-02 13:49:08'),
(2, '122585053', 'b', 'hoangvuong1225@gmail.com', 1647689482, '6/2/2021', '12:00am', 'Charcol Facial', '2021-05-14 02:42:28', 'Ä‘Æ°á»£c', '1', '2021-06-02 13:49:10'),
(3, '916248641', 'bca', 'hoangvuong1225@gmail.com', 1647689482, '5/18/2021', '12:30am', 'Test', '2021-05-14 02:45:51', 'ok', '1', '2021-06-02 13:49:18'),
(4, '977764536', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '5/28/2021', '7:00am', 'Body Spa', '2021-05-16 14:23:04', '1222', '1', '2021-06-19 02:43:36'),
(5, '813516023', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '5/12/2021', '12:30am', 'Fruit Facial', '2021-05-17 06:21:20', '11', '1', '2021-06-19 02:43:45'),
(6, '344293199', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '5/18/2021', '12:30am', 'Rebonding', '2021-05-22 16:00:14', '12', '1', '2021-06-19 02:43:42'),
(7, '241109324', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '5/20/2021', '1:00am', 'Massage', '2021-05-27 05:59:56', '123', '1', '2021-06-19 02:43:49'),
(8, '779656121', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '5/20/2021', '1:30am', 'Massage', '2021-06-01 03:09:26', 'ok', '1', '2021-06-19 02:43:55'),
(10, '901162619', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 16:48:12', 'abc', '1', '2021-06-19 02:45:25'),
(11, '157631158', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 16:55:11', 'ok he', '2', '2021-06-19 02:43:59'),
(12, '936017098', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '1:00am', 'Fruit Facial', '2021-06-05 16:58:50', 'Toi ban', '1', '2021-06-19 02:44:03'),
(13, '388013279', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '6/15/2021', '12:30am', 'Fruit Facial', '2021-06-05 17:01:32', 'abc', '1', '2021-06-19 02:45:19'),
(14, '618595289', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '6/23/2021', '12:00am', 'Fruit Facial', '2021-06-05 17:11:57', 'abc', '1', '2021-06-19 02:45:15'),
(18, '446609032', 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, '6/25/2021', '12:30am', 'Cấy tảo tươi Nhật Bản', '2021-06-19 03:15:11', NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldanhgiasanpham`
--

CREATE TABLE `tbldanhgiasanpham` (
  `Id` int(11) NOT NULL,
  `SanphamId` int(11) DEFAULT NULL,
  `Chatluong` int(11) DEFAULT NULL,
  `Gia` int(11) DEFAULT NULL,
  `Giatri` int(11) DEFAULT NULL,
  `Ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tomluoc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Review` longtext CHARACTER SET utf8 DEFAULT NULL,
  `Ngayreview` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbldanhgiasanpham`
--

INSERT INTO `tbldanhgiasanpham` (`Id`, `SanphamId`, `Chatluong`, `Gia`, `Giatri`, `Ten`, `Tomluoc`, `Review`, `Ngayreview`) VALUES
(1, 82, 1, 2, 4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'Sáº£n pháº©m tá»‘t', 'giao hÃ ng nhanh', '2021-06-09 05:30:34'),
(2, 83, 3, 3, 3, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng', 'á»•n', 'ok', '2021-06-12 06:38:51'),
(3, 62, 2, 5, 4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'Sáº£n pháº©m tá»‘t', 'abc', '2021-06-15 03:33:23'),
(4, 62, 2, 5, 4, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'Sáº£n pháº©m tá»‘t', 'abc', '2021-06-15 03:33:29'),
(5, 115, 4, 3, 2, 'Nguyá»…n HoÃ ng VÆ°Æ¡ng1', 'á»•n', 'haha', '2021-06-15 07:42:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldichvu`
--

CREATE TABLE `tbldichvu` (
  `ID` int(10) NOT NULL,
  `Tendichvu` varchar(200) DEFAULT NULL,
  `Chiphi` int(10) DEFAULT NULL,
  `Ngaytao` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbldichvu`
--

INSERT INTO `tbldichvu` (`ID`, `Tendichvu`, `Chiphi`, `Ngaytao`) VALUES
(1, 'Chăm sóc da/Massage cơ bản', 200000, '2019-07-25 11:22:38'),
(2, 'Thải độc chì', 250000, '2019-07-25 11:22:53'),
(3, 'Chăm sóc da Vitamin C', 300000, '2019-07-25 11:23:10'),
(4, 'Cấy tảo tươi Nhật Bản', 300000, '2019-07-25 11:23:34'),
(5, 'Hấp trắng mặt Gold Liquid', 400000, '2019-07-25 11:23:47'),
(6, 'Xóa nhăn căng da', 500000, '2019-07-25 11:24:01'),
(7, 'Hấp trắng mặt thảo mộc hoàng cung', 600000, '2019-07-25 11:24:19'),
(8, 'Phi kim cấy DNA cá hồi trẻ hóa', 900000, '2019-07-25 11:24:38'),
(9, 'Trị mụn chuyên sâu', 300000, '2019-07-25 11:24:53'),
(10, 'Vi kiểm tảo biển trị mụn', 1200000, '2019-07-25 11:25:08'),
(11, 'Tẩy tế bào chết với muối cát, cafe, dừa, trà , dầu oil', 100000, '2019-07-25 11:25:35'),
(12, 'Tắm trắng', 350000, '2019-08-19 13:36:27'),
(14, 'Wax', 110000, '2019-08-21 15:45:50'),
(16, 'Thanh tẩy và sáng mịn da với kem sữa', 150000, '2021-06-08 02:02:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblgopy`
--

CREATE TABLE `tblgopy` (
  `Gopy` varchar(200) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblgopy`
--

INSERT INTO `tblgopy` (`Gopy`, `Id`) VALUES
('abc', 1),
('a', 2),
('Cáº§n giáº£m giÃ¡ sáº£n pháº©m xuá»‘ng tÃ­', 3),
('Cáº§n giáº£m giÃ¡ sáº£n pháº©m xuá»‘ng tÃ­', 4),
('Cáº§n giáº£m giÃ¡ sáº£n pháº©m xuá»‘ng tÃ­', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblhoadon`
--

CREATE TABLE `tblhoadon` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `DichvuId` int(11) DEFAULT NULL,
  `BillId` int(11) DEFAULT NULL,
  `SanphamId` int(11) DEFAULT NULL,
  `NgayDang` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblhoadon`
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
-- Cấu trúc bảng cho bảng `tblkhachhang`
--

CREATE TABLE `tblkhachhang` (
  `ID` int(10) NOT NULL,
  `Ten` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Sodienthoai` bigint(11) DEFAULT NULL,
  `Gioitinh` enum('Female','Male','Transgender') CHARACTER SET utf8 DEFAULT NULL,
  `Chitiet` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Ngaytao` timestamp NULL DEFAULT current_timestamp(),
  `Ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblkhachhang`
--

INSERT INTO `tblkhachhang` (`ID`, `Ten`, `Email`, `Sodienthoai`, `Gioitinh`, `Chitiet`, `Ngaytao`, `Ngaycapnhat`) VALUES
(4, 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, 'Male', '1231', '2021-05-17 03:04:29', '2021-06-18 14:03:33'),
(5, 'Phạm Trọng Trường', 'trongtruong@gmail.com', 35568585, 'Male', '123', '2021-05-28 12:55:17', '2021-06-18 14:03:44'),
(6, 'Đỗ Quốc Tuấn', 'babywell40@gmail.com', 347689482, 'Transgender', 'khÃ´ng cÃ³ gÃ¬', '2021-06-05 03:47:27', '2021-06-18 14:03:54'),
(7, 'Hoàng Huy Tuấn', 'htuan8288@gmail.com', 56855845, 'Female', '1', '2021-06-05 03:53:33', '2021-06-18 14:04:07'),
(8, 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', 1647689482, 'Female', '123', '2021-06-05 04:12:49', '2021-06-18 14:04:17'),
(9, 'Phạm Trọng Trường', 'tuong0305@gmail.com', 354585685, 'Transgender', 'abc', '2021-06-10 02:01:57', '2021-06-18 14:04:30'),
(10, 'Hoang Vuong', 'anhbahung@gmail.com', 1647689482, NULL, NULL, '2021-06-16 08:28:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblnhatkynguoidung`
--

CREATE TABLE `tblnhatkynguoidung` (
  `Id` int(11) NOT NULL,
  `Emailnguoidung` varchar(255) DEFAULT NULL,
  `Ipnguoidung` binary(16) DEFAULT NULL,
  `Thoigianlogin` timestamp NULL DEFAULT current_timestamp(),
  `Thoigianlogout` varchar(255) DEFAULT NULL,
  `Trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblnhatkynguoidung`
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
(99, 'hoangvuong11225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-16 13:12:02', '19-06-2021 02:16:59 PM', 1),
(100, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-16 14:45:35', NULL, 1),
(101, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-17 03:55:49', NULL, 1),
(102, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-18 02:08:43', '18-06-2021 09:20:23 AM', 1),
(103, 'hoangvuong1225@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-18 02:20:28', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblorders`
--

CREATE TABLE `tblorders` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Phuongthucthanhtoan` varchar(20) DEFAULT NULL,
  `Tinhtrangorder` varchar(20) DEFAULT NULL,
  `Tongtien` varchar(50) DEFAULT NULL,
  `Ngayorder` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tblorders`
--

INSERT INTO `tblorders` (`Id`, `UserId`, `Phuongthucthanhtoan`, `Tinhtrangorder`, `Tongtien`, `Ngayorder`) VALUES
(1, 4, 'COD', 'Delivered', '7551000.00', '2021-06-13 02:37:48'),
(2, 4, 'COD', 'Delivered', '14230000.00', '2021-06-14 03:10:26'),
(7, 4, 'COD', 'Delivered', '1117000.00', '2021-06-14 04:01:46'),
(9, 4, 'COD', NULL, '1117000.00', '2021-06-14 07:19:22'),
(14, 4, 'COD', NULL, '2301000.00', '2021-06-14 15:39:17'),
(15, 4, 'COD', NULL, '6554000.00', '2021-06-14 15:50:41'),
(16, 4, 'COD', NULL, '1171000.00', '2021-06-14 15:52:50'),
(18, 17, 'COD', NULL, '1108000.00', '2021-06-15 09:22:43'),
(19, 17, 'COD', 'Delivered', '1840000.00', '2021-06-16 15:35:13'),
(20, 17, 'COD', NULL, '1117000.00', '2021-06-16 17:05:26'),
(21, 17, 'COD', 'Delivered', '1117000.00', '2021-06-16 17:06:20'),
(23, 13, 'COD', 'Delivered', '1117000.00', '2021-06-18 02:20:43'),
(24, 4, 'COD', NULL, '2214000.00', '2021-06-18 10:45:31'),
(25, 4, NULL, NULL, '1117000.00', '2021-06-18 10:48:11'),
(26, 4, NULL, NULL, '1037000.00', '2021-06-18 13:10:03'),
(27, 4, NULL, NULL, '1184000.00', '2021-06-18 15:37:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsanpham`
--

CREATE TABLE `tblsanpham` (
  `Id` int(11) NOT NULL,
  `TheloaiId` int(11) NOT NULL,
  `TheloaiphuId` int(11) DEFAULT NULL,
  `Tensanpham` varchar(255) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `Sanphamcongty` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Giasanpham` int(11) DEFAULT NULL,
  `Giasanphamtruockhigiam` int(11) DEFAULT NULL,
  `Motasanpham` longtext CHARACTER SET utf8 DEFAULT NULL,
  `Hinhanh1` varchar(255) DEFAULT NULL,
  `Hinhanh2` varchar(255) DEFAULT NULL,
  `Hinhanh3` varchar(255) DEFAULT NULL,
  `Phivanchuyen` int(11) DEFAULT NULL,
  `Sanphamcosan` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaydang` timestamp NULL DEFAULT current_timestamp(),
  `Ngaycapnhat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblsanpham`
--

INSERT INTO `tblsanpham` (`Id`, `TheloaiId`, `TheloaiphuId`, `Tensanpham`, `Sanphamcongty`, `Giasanpham`, `Giasanphamtruockhigiam`, `Motasanpham`, `Hinhanh1`, `Hinhanh2`, `Hinhanh3`, `Phivanchuyen`, `Sanphamcosan`, `Ngaydang`, `Ngaycapnhat`) VALUES
(61, 3, 8, 'Kem Chống Nắng Heliocare 360 Gel Oil-Free spf 50- 50ml', 'ABC', 1172000, 1172000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-1.png', 'small-2.png', 'small-1.png', 12000, 'In Stock', '2021-06-08 02:57:47', NULL),
(62, 3, 8, 'Kem chống nắng Heliocare XF Gel SPF50', 'ABC', 1097000, 1197000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh1.png', 'hinh2.png', 'hinh3.png', 20000, 'In Stock', '2021-06-08 03:00:20', NULL),
(63, 3, 8, '	Kem Chống Nắng Heliocare Cream SPF 50', 'ABC', 1022000, 1032000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'Hinh4.png', 'hinh5.jpg', 'hinh6.png', 15000, 'In Stock', '2021-06-08 03:12:57', NULL),
(64, 3, 8, 'Kem Chống Nắng Heliocare Ultra Gel SPF 90', 'ABC', 1094000, 1097000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh7.png', 'hinh8.png', 'Hinh9.png', 20000, 'In Stock', '2021-06-08 03:17:55', NULL),
(65, 3, 8, 'Kem Chống Nắng Dạng Xịt Heliocare Spray SPF 50', 'ABC', 1097000, 1097000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh10.png', 'hinh12.png', 'hinh13.png', 11000, 'In Stock', '2021-06-08 03:19:53', NULL),
(66, 3, 8, 'Viên uống chống nắng Heliocare Oral - ABC', 'ABC', 1147000, 1197000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'Hinh14.jpg', 'hinh15.jpg', 'hinh16.jpg', 24000, 'In Stock', '2021-06-08 03:21:22', NULL),
(67, 3, 8, 'Viên uống chống nắng Heliocare Sunsafe 60 viên', 'ABC', 1147000, 1157000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh17.png', 'hinh18.jpg', 'hinh19.jpg', 17000, 'Out of Stock', '2021-06-08 04:12:59', NULL),
(68, 3, 2, 'Bộ kit mụn Murad Blemish Control Travel Set', 'BCD', 1210000, 1220000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh20.jpg', 'hinh21.jpg', 'hinh22.jpg', 14500, 'In Stock', '2021-06-08 04:17:08', NULL),
(69, 3, 2, 'Kem giúp giảm mụn Neostrata Spot Treatment', 'BCD', 698000, 798000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh23.jpg', 'hinh24.jpg', 'hinh25.jpg', 16000, 'In Stock', '2021-06-08 04:18:32', NULL),
(70, 3, 2, 'Kem giảm mụn tầng sâu Murad Acne CLearing Solution', 'BCD', 1658000, 1688000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh26.png', 'hinh27.jpg', 'hinh28.jpg', 16000, 'In Stock', '2021-06-08 04:20:10', NULL),
(71, 3, 2, 'Toner giúp giảm Mụn Dạng Xịt Murad Clarifying Body', 'BCD', 1209000, 1219000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh29.png', 'hinh30.jpg', 'hinh31.jpg', 25000, 'In Stock', '2021-06-08 04:22:08', NULL),
(72, 3, 2, 'Kem giúp giảm Mụn Cấp Tốc Murad Blemish Spot Treat', 'BCD', 614000, 619000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh32.jpg', 'hinh33.jpg', 'hinh34.jpg', 14500, 'In Stock', '2021-06-08 04:23:42', NULL),
(73, 3, 2, 'Kem giúp giảm mụn Dermalogica Clear Start Emergenc', 'BCD', 1768000, 1771000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh35.jpg', 'hinh36.jpg', 'hinh37.jpg', 5000, 'In Stock', '2021-06-08 04:26:49', NULL),
(74, 3, 3, 'Kem giúp giảm nám The Perfect Bleaching Cream', 'CDE', 2000000, 2030000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh39.jpg', 'hÃ¬nh38.jpg', 'hinh40.jpg', 1000, 'In Stock', '2021-06-08 04:31:54', NULL),
(75, 3, 3, 'Serum giúp giảm nám Nanoluxe Dark Spot Remover by', 'CDE', 1400000, 1470000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh41.jpg', 'hinh42.jpg', 'hinh43.jpg', 2000, 'In Stock', '2021-06-08 04:34:50', NULL),
(76, 3, 3, 'Serum giảm nám làm khỏe da Active Radiance Serum M', 'CDE', 7292000, 7297000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh46.jpg', 'hinh45.jpg', 'hinh45.jpg', 12000, 'In Stock', '2021-06-08 04:36:29', NULL),
(77, 3, 3, 'Kem Che Khuyết Điểm giúp giảm Mụn Tông Vừa Murad B', 'CDE', 685000, 687000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh47.jpg', 'hinh48.jpg', 'hinh49.jpg', 8000, 'In Stock', '2021-06-08 04:38:21', NULL),
(78, 3, 3, 'Serum giúp giảm nám chống lão hóa da Rapid Age Spo', 'CDE', 2855000, 2857000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh50.jpg', 'hinh51.jpg', 'hinh52.jpg', 7500, 'In Stock', '2021-06-08 04:39:46', NULL),
(79, 3, 3, 'Vitamin C 15‰ điều giúp giảm nám Is Clinical C-15', 'CDE', 1978000, 1988000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh53.jpg', 'hinh54.jpg', 'hinh55.jpg', 7500, 'In Stock', '2021-06-08 04:41:40', NULL),
(80, 3, 3, 'Kem giúp giảm nám đốm nâu Mesoestetic Ultimate W W', 'CDE', 2189000, 2199000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh56.jpg', 'hinh57.jpg', 'hinh58.jpg', 0, 'Out of Stock', '2021-06-08 04:43:21', NULL),
(81, 3, 4, 'Serum hồi sinh sức sống cho da Murad Intensive Age', 'DEF', 7115000, 7125000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh59.jpg', 'hinh60.jpg', 'hinh61.jpg', 0, 'Out of Stock', '2021-06-08 04:47:40', NULL),
(82, 3, 4, 'Serum dưỡng làm sáng da Endocare Tensage Serum', 'DEF', 1832000, 1832000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh62.jpg', 'hinh63.jpg', 'hinh64.jpg', 8000, 'In Stock', '2021-06-08 04:48:48', NULL),
(83, 3, 4, 'Tinh chất căng mọng Murad Hydro Dynamic Quenching', 'DEF', 6351000, 6351000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh68.jpg', 'hinh69.jpg', 'hinh70.jpg', 7000, 'In Stock', '2021-06-08 04:51:05', NULL),
(84, 3, 4, 'Collagen thế hệ mới Murad Rapid Collagen Infusion', 'ABCH', 6858000, 6878000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh71.jpg', 'hinn72.jpg', 'hinh73.jpg', 7500, 'In Stock', '2021-06-08 15:45:16', NULL);
INSERT INTO `tblsanpham` (`Id`, `TheloaiId`, `TheloaiphuId`, `Tensanpham`, `Sanphamcongty`, `Giasanpham`, `Giasanphamtruockhigiam`, `Motasanpham`, `Hinhanh1`, `Hinhanh2`, `Hinhanh3`, `Phivanchuyen`, `Sanphamcosan`, `Ngaydang`, `Ngaycapnhat`) VALUES
(85, 3, 4, 'Collagen thế hệ mới Murad Rapid Collagen Infusion', 'AHNG', 2700000, 2706000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh74.jpg', 'hinh75.jpg', 'hinh76.jpg', 8500, 'Out of Stock', '2021-06-08 15:47:11', NULL),
(86, 3, 4, 'Bảo vệ & làm dịu da và môi Murad Soothing Skin Lip', 'AHY', 2092000, 2098000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-bao-ve-lam-diu-da-va-moi-Murad-Soothing-Skin-Lip-Curticle-Care-a.png', 'hinh77.png', 'hinh78.jpg', 9000, 'In Stock', '2021-06-08 15:48:30', NULL),
(87, 3, 5, 'Kem tắm trắng bùn khoáng thiên nhiên và tinh chất', 'Há»´UY', 185000, 189000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-kem-tam-trang-bun-bien-skaura-dead-sea-mineral-mud-whitening-mask-cream-d.png', 'hinh79.jpg', 'hinh80.jpg', 2000, 'In Stock', '2021-06-08 15:50:18', NULL),
(88, 3, 5, 'Bộ kem tắm trắng cao cấp tiêu chuẩn Spa Sakura Sup', 'AHY', 350000, 350000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-kem-tam-trang-sakura-super-white-spa-system-m.png', 'hinh81.png', 'hinh82.jpg', 0, 'In Stock', '2021-06-08 15:51:33', NULL),
(89, 3, 5, 'Bộ kem tắm trắng Vitamin C và thảo dược tổng hợp S', 'ABH', 250000, 258000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-set-kem-tam-trang-sakura-multivitamin-herbals-hoaanhdaovn-r.png', 'hinh83.png', 'hinh84.jpg', 500, 'In Stock', '2021-06-08 15:52:51', NULL),
(90, 3, 5, 'Kem tắm trắng toàn thân ngọc trai tơ tằm Sakura Pe', 'HJYY', 185000, 195000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-kem-tam-trang-ngoc-trai-to-tam-sakura-pearl-silk-rich-special-whitrning-cream.png', 'hinh85.jpg', 'hinh86.jpg', 19000, 'Out of Stock', '2021-06-08 15:55:06', NULL),
(91, 3, 5, '	Kem tắm trắng Ipsasa từ ngọc trai và tơ tằm', 'HYUY', 165000, 169000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-kem-tam-trang-ngoc-trai-to-tam-sakura1.png', 'hom87.jpg', 'hinh88.jpg', 6000, 'In Stock', '2021-06-08 15:57:02', NULL),
(92, 3, 5, 'Kem tắm trắng Ipsasa từ cà phê và hoa cúc', 'AHY', 165000, 175000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-kem-tam-trang-ipsasa-tu-ngoc-trai-to-tam1.png', 'hinh89.jpg', 'hinh90.jpg', 7000, 'In Stock', '2021-06-08 15:58:23', NULL),
(93, 3, 6, 'Kem Dưỡng Trắng Da Toàn Thân Body Hydrating Cream', 'NHU', 2103000, 2113000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-body-hydrating-cream-473ml-a.png', 'hinh91.jpg', 'hinh92.png', 15000, 'In Stock', '2021-06-08 16:00:56', NULL),
(94, 3, 6, 'Gel tắm Dermalogica Conditioning Body Wash 500ml', 'HUY', 1877000, 1897000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh93.jpg', 'hinh94.jpg', 'hinh95.jpg', 6000, 'In Stock', '2021-06-08 16:02:07', NULL),
(95, 3, 6, 'Kem Dưỡng Trắng Da Tay Dermalogica Multivitamin Ha', 'HUIKJ', 943000, 948000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-kem-duong-tay-va-mong-Dermalogica-Multivitamin-Hand-And-Nail-Treatment-a.png', 'hinh96.jpg', 'hinh97.jpg', 0, 'In Stock', '2021-06-08 16:03:32', NULL),
(96, 3, 6, 'Combo 3 Bộ sản phẩm làm trắng da body cao cấp Saku', 'VUNH', 2365000, 2395000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh98.jpg', 'hinh99.jpg', 'hinh100.jpg', 0, 'Out of Stock', '2021-06-08 16:05:37', NULL),
(97, 3, 6, 'Bộ kem dưỡng trắng da toàn thân Sakura Body Gift S', 'HUIYA', 4180000, 4188000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'hinh101.jpg', 'hinh012.jpg', 'hinh103.jpg', 19000, 'In Stock', '2021-06-08 16:07:02', NULL),
(98, 3, 6, 'Combo 6 Bộ Sản phẩm làm trắng da body cao cấp Saku', 'AKTI', 2630000, 2638000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'small-combo-6-bo-san-pham-lam-trang-da-body-cao-cap-sakura-tieu-chuan-nhat-ban-new.png', 'inh104.jpg', 'hinh105.jpg', 500, 'In Stock', '2021-06-08 16:08:09', NULL),
(99, 4, 10, 'Kem Trang Điểm Chống Nắng SK-II Atmosphere CC Cream UV', 'HYU', 1980000, 1999000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h1.jpg', 'h1.jpg', 'h1.jpg', 5000, 'In Stock', '2021-06-08 16:36:36', NULL),
(100, 4, 10, 'Kem Trang Điểm SK-II Atmosphere CC Cream SPF50/PA ++++', 'HUY', 1800000, 1900000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h2.jpg', 'h3.jpg', 'h4.jpg', 9000, 'In Stock', '2021-06-08 16:38:29', NULL),
(101, 4, 10, 'Kem lót trang điểm dưỡng da SK-II Signs Control Base SPF20 25g', 'AUH', 1550000, 1590000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h5.jpg', 'h6.jpg', 'h7.jpg', 8000, 'Out of Stock', '2021-06-08 16:39:27', NULL),
(102, 4, 10, 'Kem Lót Trang Điểm SK-II Clear Beauty Care & Control Cream', 'AKI', 1150000, 1150000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h8.jpg', 'h9.jpg', 'h10.jpg', 7500, 'In Stock', '2021-06-08 16:40:19', NULL),
(103, 4, 11, 'Son Dưỡng Môi Mềm Mịn Vaseline 4.8g Lip Therapy Original Stick', 'HUY', 45000, 47000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'abc.jpg', 'h12.jpeg', 'abc1.jpg', 1000, 'In Stock', '2021-06-09 01:27:55', NULL),
(104, 4, 11, 'Son Dưỡng Môi Lip Smacker Hương Trà Xanh Sữa 7.4g', 'ABC', 150000, 155000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'ab.jpg', 'ab1.jpg', 'ab2.jpg', 5000, 'In Stock', '2021-06-09 01:30:20', NULL),
(105, 4, 11, 'Son Dưỡng Môi Nivea Hương Dâu 4.8g Strawberry Shine Lip Balm', 'NHG', 60000, 63000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'b1.jpg', 'b2.jpg', 'b3.jpg', 3000, 'Out of Stock', '2021-06-09 01:31:30', NULL),
(106, 4, 11, 'Son Dưỡng Môi HURRAW! Hương Bạc Hà 4.8g Mint Lip Balm', 'ABG', 109000, 115000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h111.jpg', 'h112.jpg', 'h111.jpg', 7000, 'In Stock', '2021-06-09 01:32:29', NULL),
(107, 4, 12, 'Phấn Má Hồng 3ce Face Blush - Blush - gra', 'aGH', 250000, 259000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h23.jpg', 'h24.jpg', 'h25.jpg', 5000, 'In Stock', '2021-06-09 01:43:19', NULL),
(108, 4, 12, 'Phấn Má Hồng Moart - Velvet Blusher - 9g', 'AGT', 430000, 440000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h26.jpg', 'h27.jpg', 'h28.jpg', 6000, 'In Stock', '2021-06-09 01:45:10', NULL);
INSERT INTO `tblsanpham` (`Id`, `TheloaiId`, `TheloaiphuId`, `Tensanpham`, `Sanphamcongty`, `Giasanpham`, `Giasanphamtruockhigiam`, `Motasanpham`, `Hinhanh1`, `Hinhanh2`, `Hinhanh3`, `Phivanchuyen`, `Sanphamcosan`, `Ngaydang`, `Ngaycapnhat`) VALUES
(109, 4, 12, 'Phấn Má Hồng Chanel Jouse - 3row - twich1', 'AHY', 1150000, 1200000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h29.jpg', '30.jpg', 'h31.jpg', 0, 'In Stock', '2021-06-09 01:46:32', NULL),
(110, 4, 13, 'Son môi 3CE Red Recipe Matte Lip Color #214 Chính hãng Hàn Quốc', 'AHY', 335000, 335000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h32.jpg', 'h33.jpg', 'h34.jpg', 2000, 'In Stock', '2021-06-09 01:48:33', NULL),
(111, 4, 13, 'Son Tom Ford Màu 06 Flame Đỏ Cam Lôi Cuốn (New)', 'AHY', 1100000, 1200000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h36.png', 'h35.jpg', 'h37.png', 0, 'In Stock', '2021-06-09 01:50:03', NULL),
(112, 4, 13, 'Son Lì Christian Louboutin Màu 215M Rococotte', 'aHY', 2850000, 2850000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h38.jpg', 'h39.jpg', '40.jpg', 0, 'In Stock', '2021-06-09 01:51:43', NULL),
(113, 5, 16, 'Viên uống cải thiện tone màu da Heliocare Purewhit', 'AGT', 2607000, 2607000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h41.png', 'h42.jpg', 'h43.jpg', 1000, 'In Stock', '2021-06-09 01:54:25', NULL),
(114, 5, 16, 'Viên uống trắng da chống lão hoá Sakura White Adva', 'HU', 1600000, 1620000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h44.jpg', 'h45.jpg', 'h46.jpg', 2000, 'In Stock', '2021-06-09 01:56:09', NULL),
(115, 5, 16, 'Viên uống đẹp da Sakura CHP Enhanced Beauty Nutraceuticals', 'HU', 1500000, 1580000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h47.jpg', 'h48.jpg', 'h49.jpg', 3000, 'In Stock', '2021-06-09 01:57:40', NULL),
(116, 5, 18, 'Viên Kẽm Hỗ Trợ Trị Mụn Zinc For Acne Puritan’s Pride Của Mỹ', 'A', 244000, 248000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h50.jpg', 'h51.jpg', 'h52.jpg', 10000, 'In Stock', '2021-06-09 02:00:43', NULL),
(117, 5, 18, 'Viên Kẽm Hỗ Trợ Trị Mụn Zinc For Acne Puritan’s Pride Của Mỹ', 'AGT', 1580999, 1582000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h54.jpg', 'h53.jpg', 'h55.jpg', 2000, 'In Stock', '2021-06-09 02:02:10', NULL),
(118, 5, 18, 'Viên Uống Giảm Mụn, Xóa Tan Sẹo Thâm Sakura AcnePill Nhật Bản', 'AHY', 600999, 695000, '																																	<ol><li><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;là một loại&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;dưỡng da, xịt, gel hoặc các&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">sản phẩm</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;đặc&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">trị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;khác giúp hấp thụ hoặc phản xạ một số bức xạ tia cực tím (UV) của mặt trời do đó giúp&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">chống</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;lại cháy&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Sử dụng thường xuyên&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">kem chống nắng</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">&nbsp;cũng có thể làm chậm hoặc giảm sự phát triển của nếp nhăn, nốt ruồi và da chảy xệ.</span><br></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Kem Chống Nắng Heliocare 360 Gel Oil-Free - Kem chống nắng tân tiến nhất giúp chống lại &amp; tia hồng ngoại<br></span></li><li><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Heliocare 360 Water Gel SPF 50+- Gel / nắng dạng nước 50ml</span></li></ol>', 'h56.png', 'h57.jpg', 'h58.jpg', 10000, 'Out of Stock', '2021-06-09 02:03:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltheloai`
--

CREATE TABLE `tbltheloai` (
  `Id` int(11) NOT NULL,
  `Tentheloai` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Motatheloai` longtext CHARACTER SET utf8 DEFAULT NULL,
  `Ngaytao` timestamp NOT NULL DEFAULT current_timestamp(),
  `Ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbltheloai`
--

INSERT INTO `tbltheloai` (`Id`, `Tentheloai`, `Motatheloai`, `Ngaytao`, `Ngaycapnhat`) VALUES
(3, 'Mỹ Phẩm', 'Mỹ phẩm spa chuyên dụng', '2017-01-24 19:17:37', '2021-06-18 12:26:02'),
(4, 'Trang Điểm', 'Sản phẩm được ưu dùng và tốt nhất', '2017-01-24 19:19:32', '2021-06-18 12:26:12'),
(5, 'Dinh Dưỡng - Sức Khỏe', 'Dinh dưỡng, Sức khỏe', '2017-01-24 19:19:54', '2021-06-18 12:26:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltheloaiphu`
--

CREATE TABLE `tbltheloaiphu` (
  `Id` int(11) NOT NULL,
  `TheloaiId` int(11) DEFAULT NULL,
  `theloaiphu` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaytao` timestamp NULL DEFAULT current_timestamp(),
  `Ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbltheloaiphu`
--

INSERT INTO `tbltheloaiphu` (`Id`, `TheloaiId`, `theloaiphu`, `Ngaytao`, `Ngaycapnhat`) VALUES
(2, 3, 'Kem Giảm Mụn', '2017-01-26 16:24:52', '2021-06-18 12:26:49'),
(3, 3, 'Kem Trị Nám', '2017-01-26 16:29:09', '2021-06-18 12:27:05'),
(4, 3, 'Kem Dưỡng Da', '2017-01-30 16:55:48', '2021-06-18 12:27:15'),
(5, 3, 'Kem Tắm Trắng', '2017-02-04 04:12:40', '2021-06-18 12:27:36'),
(6, 3, 'Kem Dưỡng Trắng', '2017-02-04 04:13:00', '2021-06-18 12:27:47'),
(7, 3, 'Kem Dưỡng Ẩm', '2017-02-04 04:13:27', '2021-06-18 12:33:22'),
(8, 3, 'Kem Chống Nắng', '2017-02-04 04:13:54', '2021-06-18 12:33:12'),
(9, 3, 'Kem Giúp Giảm sẹo', '2017-02-04 04:36:45', '2021-06-18 12:33:30'),
(10, 4, 'Kem Trang Điểm', '2017-02-04 04:37:02', '2021-06-18 12:33:41'),
(11, 4, 'Son Dưỡng Môi', '2017-02-04 04:37:51', '2021-06-18 12:33:49'),
(12, 4, 'Phấn Má Hồng', '2017-03-10 20:12:59', '2021-06-18 12:33:59'),
(13, 4, 'Son Môi', '2021-06-08 02:16:40', '2021-06-18 12:34:06'),
(16, 5, 'Viên Uống Trắng Da', '2021-06-08 02:17:30', '2021-06-18 12:34:15'),
(17, 5, 'Viên Uống Giảm Nám Da', '2021-06-08 02:17:38', '2021-06-18 12:34:27'),
(18, 5, 'Viên Uống Giúp Giảm Mụn', '2021-06-08 02:17:49', '2021-06-18 12:34:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltheodoilichsu`
--

CREATE TABLE `tbltheodoilichsu` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `Trangthai` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Nhanxet` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `NgayDang` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbltheodoilichsu`
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
-- Cấu trúc bảng cho bảng `tbltrang`
--

CREATE TABLE `tbltrang` (
  `ID` int(10) NOT NULL,
  `Loaitrang` varchar(200) DEFAULT NULL,
  `Tieudetrang` mediumtext DEFAULT NULL,
  `Motatrang` mediumtext DEFAULT NULL,
  `Email` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `Sodienthoai` bigint(10) DEFAULT NULL,
  `Ngaycapnhat` date DEFAULT NULL,
  `Thoigian` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbltrang`
--

INSERT INTO `tbltrang` (`ID`, `Loaitrang`, `Tieudetrang`, `Motatrang`, `Email`, `Sodienthoai`, `Ngaycapnhat`, `Thoigian`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"font-family: \" comic=\"\" sans=\"\" ms\";\"=\"\">Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings...</span><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        					        					        					        					        					        					        					<font color=\"#ff3333\" face=\"times new roman\"><b style=\"\">        					41/58A Cầu Xây, Phường Tân Phú, Quận 9, TP HCM</b></font>', 'hoangvuong1225@gmail.com', 347689482, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusers`
--

CREATE TABLE `tblusers` (
  `Id` int(11) NOT NULL,
  `Ten` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Lienhe` bigint(11) DEFAULT NULL,
  `Matkhau` varchar(255) DEFAULT NULL,
  `Diachigiaohang` longtext CHARACTER SET utf8 DEFAULT NULL,
  `Thanhphovanchuyen` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Mapinvanchuyen` int(11) DEFAULT NULL,
  `Ngaydangky` timestamp NOT NULL DEFAULT current_timestamp(),
  `Ngaycapnhat` varchar(255) DEFAULT NULL,
  `id_fb` varchar(100) NOT NULL,
  `Token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblusers`
--

INSERT INTO `tblusers` (`Id`, `Ten`, `Email`, `Lienhe`, `Matkhau`, `Diachigiaohang`, `Thanhphovanchuyen`, `Mapinvanchuyen`, `Ngaydangky`, `Ngaycapnhat`, `id_fb`, `Token`) VALUES
(4, 'Nguyễn Hoàng Vương', 'hoangvuong11225@gmail.com', 347689482, 'bf288aa8e84f49c6f74b5faa301243ed', '41/58A Cáº§u XÃ¢y, P.TÃ¢n PhÃº, Quáº­n 9 , TP. HCM', 'TP Há»“ ChÃ­ Minh', 1843, '2021-05-17 20:18:00', NULL, '', ''),
(13, 'Nguyễn Hoàng Vương', 'hoangvuong1225@gmail.com', NULL, NULL, '41/58A, Cau Xay, P.Tan Phu, Quan 9\r\nQngai', 'HCM', 6666, '2021-06-18 02:20:28', NULL, '503605900690878', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblyeuthich`
--

CREATE TABLE `tblyeuthich` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `SanphamId` int(11) DEFAULT NULL,
  `NgayDang` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblyeuthich`
--

INSERT INTO `tblyeuthich` (`Id`, `UserId`, `SanphamId`, `NgayDang`) VALUES
(1, 4, 83, '2021-06-09 04:03:04'),
(2, 4, 61, '2021-06-14 09:26:48'),
(4, 4, 91, '2021-06-16 13:12:07'),
(5, 17, 100, '2021-06-16 16:47:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblctod`
--
ALTER TABLE `tblctod`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tblcuochen`
--
ALTER TABLE `tblcuochen`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbldanhgiasanpham`
--
ALTER TABLE `tbldanhgiasanpham`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbldichvu`
--
ALTER TABLE `tbldichvu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblgopy`
--
ALTER TABLE `tblgopy`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblnhatkynguoidung`
--
ALTER TABLE `tblnhatkynguoidung`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbltheloai`
--
ALTER TABLE `tbltheloai`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbltheloaiphu`
--
ALTER TABLE `tbltheloaiphu`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbltheodoilichsu`
--
ALTER TABLE `tbltheodoilichsu`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tbltrang`
--
ALTER TABLE `tbltrang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `tblyeuthich`
--
ALTER TABLE `tblyeuthich`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblctod`
--
ALTER TABLE `tblctod`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tblcuochen`
--
ALTER TABLE `tblcuochen`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbldanhgiasanpham`
--
ALTER TABLE `tbldanhgiasanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbldichvu`
--
ALTER TABLE `tbldichvu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tblgopy`
--
ALTER TABLE `tblgopy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tblhoadon`
--
ALTER TABLE `tblhoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblkhachhang`
--
ALTER TABLE `tblkhachhang`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tblnhatkynguoidung`
--
ALTER TABLE `tblnhatkynguoidung`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tblsanpham`
--
ALTER TABLE `tblsanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `tbltheloai`
--
ALTER TABLE `tbltheloai`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbltheloaiphu`
--
ALTER TABLE `tbltheloaiphu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbltheodoilichsu`
--
ALTER TABLE `tbltheodoilichsu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbltrang`
--
ALTER TABLE `tbltrang`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tblyeuthich`
--
ALTER TABLE `tblyeuthich`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
