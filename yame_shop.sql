-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2021 at 02:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yame_shop`
--
CREATE DATABASE IF NOT EXISTS `yame_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yame_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdathang`
--

DROP TABLE IF EXISTS `chitietdathang`;
CREATE TABLE `chitietdathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSHH` varchar(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaDatHang` int(11) NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `MaDC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoDonDH`, `MSHH`, `SoLuong`, `GiaDatHang`, `GiamGia`, `MaDC`) VALUES
(52, 'P2c9500f85', 1, 425000, 0, 36),
(52, 'P2c9db7353', 2, 850000, 0, 36);

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

DROP TABLE IF EXISTS `dathang`;
CREATE TABLE `dathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSKH` varchar(10) NOT NULL,
  `MSNV` varchar(10) DEFAULT NULL,
  `NgayDH` timestamp NOT NULL DEFAULT current_timestamp(),
  `TrangThaiDH` tinyint(4) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `MaDC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`SoDonDH`, `MSKH`, `MSNV`, `NgayDH`, `TrangThaiDH`, `TongTien`, `MaDC`) VALUES
(28, 'KHf7ded7a', NULL, '2021-10-27 17:05:42', 0, 0, NULL),
(29, 'KHf7ded7a', NULL, '2021-10-27 17:05:42', 0, 0, NULL),
(30, 'KH875ccd1', NULL, '2021-10-27 17:07:40', 0, 0, NULL),
(32, 'KHf7ded7a', NULL, '2021-10-27 17:09:19', 0, 0, NULL),
(34, 'KHf7ded7a', NULL, '2021-10-27 17:09:35', 0, 0, NULL),
(35, 'KHf7ded7a', NULL, '2021-10-27 17:09:35', 0, 0, NULL),
(36, 'KHf7ded7a', NULL, '2021-10-27 17:11:03', 0, 0, NULL),
(37, 'KHf7ded7a', NULL, '2021-10-27 17:11:03', 0, 0, NULL),
(38, 'KHf7ded7a', NULL, '2021-10-27 17:11:17', 0, 0, NULL),
(40, 'KHf7ded7a', NULL, '2021-10-28 07:45:38', 0, 0, NULL),
(42, 'KHf7ded7a', NULL, '2021-10-30 17:08:33', 0, 0, NULL),
(52, 'KHc3a8384', NULL, '2021-11-28 01:15:43', 0, 1275000, 36);

-- --------------------------------------------------------

--
-- Table structure for table `diachikh`
--

DROP TABLE IF EXISTS `diachikh`;
CREATE TABLE `diachikh` (
  `MaDC` int(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `MSKH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diachikh`
--

INSERT INTO `diachikh` (`MaDC`, `DiaChi`, `MSKH`) VALUES
(11, '123 Tr???n V??n Ho??i, Ninh Ki???u', 'KH7d2c986'),
(12, '123 Tr???n V??n Ho??i, Ninh Ki???u', 'KH7dfa672'),
(13, 'Nh??n m???', 'KH7f3a400'),
(14, 'Nh??n m???', 'KH7f84848'),
(15, '123 Tr???n V??n Ho??i, Ninh Ki???u', 'KH80ee2a5'),
(16, 'Nh??n m???', 'KH816eb38'),
(17, '', 'KHf1b10cc'),
(18, '12 Tr???n V??n Ho??i, Ninh Ki???u', 'KHf7ded7a'),
(19, '', 'KHf8282f4'),
(20, '12 Tr???n V??n Ho??i, Ninh Ki???u', 'KH5d5501b'),
(21, '12 Tr???n V??n Ho??i, Ninh Ki???u', 'KH5d58179'),
(22, '12 Tr???n V??n Ho??i, Ninh Ki???u', 'KH5d76a0b'),
(23, '12 Tr???n V??n Ho??i, Ninh Ki???u', 'KH5d9daa9'),
(24, '134, nh??n l???c, nh??n m??? , ch??? m???i , an giang', 'KHf7ded7a'),
(25, '134, nh??n l???c, nh??n m??? , ch??? m???i , an giang', 'KH857d627'),
(26, '134, nh??n l???c, nh??n m??? , ch??? m???i , an giang', 'KHf7ded7a'),
(27, '123 t???nh bi??n', 'KHf7ded7a'),
(28, 'ninh ki???u ,c???n th??', 'KHf7ded7a'),
(29, 'Nh??n m???', 'KH875ccd1'),
(30, 'Nh??n m???', 'KH878f9d4'),
(31, 'long an', 'KHf7ded7a'),
(32, 'Nh??n m???', 'KHc80bb55'),
(33, 'Nh??n m???', 'KH1281776'),
(34, 'Nh??n m???', 'KH16c0e32'),
(35, '123 Tr???n V??n Ho??i, Ninh Ki???u', 'KH16c0e32'),
(36, 'Ninh ki???u, C???n Th??', 'KHc3a8384');

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

DROP TABLE IF EXISTS `hanghoa`;
CREATE TABLE `hanghoa` (
  `MSHH` varchar(10) NOT NULL,
  `TenHH` varchar(255) NOT NULL,
  `MoTa` text NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuongHang` int(11) NOT NULL,
  `MaLoaiHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `MoTa`, `Gia`, `SoLuongHang`, `MaLoaiHang`) VALUES
('P2c9500f85', 'Qu???n D??i Loose Pants Linh V???t Olygre ', 'Qu???n D??i Loose Pants Linh V???t Olygre ', 425000, 1000, 2),
('P2c9db7353', 'Qu???n D??i Jean Slimfit ????n Gi???n 12VAHDT V???n Xu??n Ki???n Qu???c', 'Qu???n D??i Jean Slimfit ????n Gi???n 12VAHDT V???n Xu??n Ki???n Qu???c', 425000, 120, 2),
('P2ca71ada0', 'S?? Mi Tay D??i ????n Gi???n', 'S?? Mi Tay D??i ????n Gi???n', 285000, 200, 5),
('P2cac3ea61', 'Qu???n D??i T??y ????n Gi???n', 'Qu???n D??i T??y ????n Gi???n', 425000, 200, 7),
('P2cbe4502d', 'Qu???n D??i T??y ????n Gi???n B2HG03', 'Qu???n D??i T??y ????n Gi???n B2HG03', 425000, 200, 7),
('P2ccaaa587', 'S?? Mi Tay D??i ????n Gi???n M20', 'S?? Mi Tay D??i ????n Gi???n M20', 185000, 100, 5),
('P6df64d2fb', '??o Thun C??? Tr??n ????n Gi???n M18 ', 'Ch???t li???u: Cotton 2 chi???u\r\nTh??nh ph???n: 100% Cotton\r\n- Th??n thi???n\r\n- Th???m h??t tho??t ???m\r\n- M???m m???i\r\n- Ki???m so??t m??i\r\n- ??i???u h??a nhi???t\r\n+ H???a ti???t th??u k??? thu???t s???\r\n- HDSD:\r\n+ N??n gi???t chung v???i s???n ph???m c??ng m??u\r\n+ Kh??ng d??ng thu???c t???y ho???c x?? ph??ng c?? t??nh t???y m???nh\r\n+ N??n ph??i trong b??ng r??m ????? gi??? sp b???n m??u', 185000, 100, 1),
('Pa53893565', '??o Thun C??? Tr??n ????n Gi???n M14', 'Ch???t li???u: Cotton 4 Chi???u\r\nTh??nh ph???n: 95% cotton 5% spandex\r\n- Tho??ng m??t\r\n- H??t ???m t???t\r\n- Co d??n t???t\r\n+ H???a ti???t in b??ng', 155000, 100, 1),
('Pa53d9601d', '??o Thun C??? Tr??n ????n Gi???n M11', 'Ch???t li???u: Cotton 2 chi???u\r\nTh??nh ph???n: 100% Cotton\r\n- Co d??n 2 chi???u\r\n- Th???m h??t m??? h??i t???t mang l???i c???m gi??c tho??ng m??t\r\nIn d???o + Th??u ?????p v???i ph???n quang', 145000, 120, 1),
('Pa5412c711', '??o Thun C??? Tr??n ????n Gi???n M01', 'Ch???t li???u: Cotton 100% (2C)\r\nV???i th??nh ph???n 100% t??? s???i thi??n nhi??n, ??o thun mang l???i c???m gi??c tho??ng m??t, th???m h??t m??? h??i t???t.\r\n\r\nThi???t k???:\r\n- Ki???u d??ng Raglan th???i trang\r\n- C?? t??i ??o ti???n l???i\r\n- Tay v?? t??i ph???i d??y x????ng c?? cotton 1.5cm\r\n- In d???o th??ng ??i???p t??i ??o\r\n- Form ??o c???i ti???n v???i 3 size M - L - XL\r\n(Th??ng s??? chi ti???t ??? cu???i trang)\r\n- M??u s???c: 8 m??u', 185000, 180, 1),
('Pa546528f3', '??o Kho??c Classic ????n Gi???n Th???n C??? ?????i Anubis M1', 'Ch???t li???u: V???i D??\r\nTh??nh ph???n: 100% poly\r\n- Ch???ng tia UV\r\n- C???n gi??\r\n- Ch???ng b???i\r\n- ??t nh??n\r\n- Nhanh kh??\r\n- B???n m??u t???t\r\n- Ch???ng th???m n?????c l??n nhi???u gi??? li???n\r\n- B???o v??? ch???ng t??c ?????ng m??i tr?????ng\r\n+ Logo Anubis in cao\r\n+ D??y lu???ng n??n ph???i m??u cam n???i b???t\r\n+ T??i trong ti???n d???ng\r\n+ N??n ??o c?? m??i che kh??ng b??? b???t n???ng\r\n+ C??? tay ??o c?? n??t b???m c??? ?????nh ph?? h???p v???i tay ng?????i d??ng\r\n+ Reverse Coil Zipper\r\n(Nh???ng chi???c kho?? t??i n??y c?? b??? m???t ngo??i d???p, ph???ng trong khi r??ng kho?? th?? ??? trong)', 320000, 1200, 8);

-- --------------------------------------------------------

--
-- Table structure for table `hinhhanghoa`
--

DROP TABLE IF EXISTS `hinhhanghoa`;
CREATE TABLE `hinhhanghoa` (
  `MaHinh` int(11) NOT NULL,
  `TenHinh` varchar(255) NOT NULL,
  `MSHH` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhhanghoa`
--

INSERT INTO `hinhhanghoa` (`MaHinh`, `TenHinh`, `MSHH`) VALUES
(9, 'image6176df64d34c7.jpg', 'P6df64d2fb'),
(30, 'image617a538935cfc.jpg', 'Pa53893565'),
(31, 'image617a53d960873.jpg', 'Pa53d9601d'),
(32, 'image617a5412c78bc.jpg', 'Pa5412c711'),
(33, 'image617a54652991c.jpg', 'Pa546528f3'),
(34, 'image61a2c95012bb6.jpg', 'P2c9500f85'),
(35, 'image61a2c9db74de8.jpg', 'P2c9db7353'),
(36, 'image61a2ca71b015e.jpg', 'P2ca71ada0'),
(37, 'image61a2cac4021f6.jpg', 'P2cac3ea61'),
(38, 'image61a2cbe451a31.jpg', 'P2cbe4502d'),
(39, 'image61a2ccaaa7f81.jpg', 'P2ccaaa587');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE `khachhang` (
  `MSKH` varchar(10) NOT NULL,
  `HoTenKH` varchar(255) NOT NULL,
  `SoDienThoai` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `SoDienThoai`, `Email`, `username`, `password`) VALUES
('', 'L?? Duy Thanh', '0333618825', 'Thanh123@gmail.com', '', NULL),
('KH1281776', 'Thanh', '0333618825', 'Thanh123@gmail.com', 'leduythanh123', '827ccb0eea8a706c4c34a16891f84e7b'),
('KH16c0e32', 'Thanh', '0333618825', 'Thanh123@gmail.com', 'ldthanh', '827ccb0eea8a706c4c34a16891f84e7b'),
('KH5d5501b', 'Tr???n Th??? M??? Ti??n', '0333618825', 'mytien@gmail.com', NULL, NULL),
('KH5d58179', 'Tr???n Th??? M??? Ti??n', '0333618825', 'mytien@gmail.com', NULL, NULL),
('KH5d76a0b', 'Tr???n Th??? M??? Ti??n', '0333618825', 'mytien@gmail.com', NULL, NULL),
('KH5d9daa9', 'Tr???n Th??? M??? Ti??n', '0333618825', 'mytien@gmail.com', NULL, NULL),
('KH7d2c986', 'L?? Duy Thanh', '0333618825', 'Thanh123@gmail.com', 'ldthanh2', '827ccb0eea8a706c4c34a16891f84e7b'),
('KH7dfa672', 'Ti??n', '0333618825', 'Thanh123@gmail.com', NULL, NULL),
('KH7f3a400', 'Thanh', '0333618825', 'Thanh123@gmail.com', NULL, NULL),
('KH7f84848', 'Than', '1234567', 'Thanh123@gmail.com', NULL, NULL),
('KH80ee2a5', 'L?? Duy Thanh', '0333618825', 'Thanh123@gmail.com', NULL, NULL),
('KH816eb38', 'Thanh', '0333618825', 'Thanh123@gmail.com', NULL, NULL),
('KH857d627', 'Tr???n Th??? M??? Ti??n', '0333618825', 'mytien@gmail.com', NULL, NULL),
('KH875ccd1', 'Thanh', '0333618825', 'Thanh123@gmail.com', NULL, NULL),
('KH878f9d4', 'Thanh', '0333618825', 'Thanh123@gmail.com', NULL, NULL),
('KHc3a8384', 'L?? Duy Thanh', '0333618825', 'ldthanh0301@gmail.com', 'ldthanh0301', '827ccb0eea8a706c4c34a16891f84e7b'),
('KHc80bb55', 'Thanh', '0333618825', 'Thanh123@gmail.com', 'leduythanh', '827ccb0eea8a706c4c34a16891f84e7b'),
('KHf1b10cc', '', '', '', NULL, NULL),
('KHf7ded7a', 'Tr???n Th??? M??? Ti??n', '0333618825', 'mytien@gmail.com', 'mytien', '827ccb0eea8a706c4c34a16891f84e7b'),
('KHf8282f4', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaihanghoa`
--

DROP TABLE IF EXISTS `loaihanghoa`;
CREATE TABLE `loaihanghoa` (
  `MaLoaiHang` int(11) NOT NULL,
  `TenLoaiHang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaihanghoa`
--

INSERT INTO `loaihanghoa` (`MaLoaiHang`, `TenLoaiHang`) VALUES
(1, '??o thun'),
(2, 'Qu???n Jean'),
(5, '??o s?? mi'),
(7, 'Qu???n t??y'),
(8, '??o kho??c');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE `nhanvien` (
  `HoTenNV` varchar(255) NOT NULL,
  `ChucVu` varchar(255) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `SoDienThoai` varchar(255) NOT NULL,
  `MSNV` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`HoTenNV`, `ChucVu`, `DiaChi`, `SoDienThoai`, `MSNV`, `username`, `password`) VALUES
('L?? Duy Thanh', '3', '123 Tr???n V??n Ho??i, Ninh Ki???u', '0333618825', 'staff2705f', 'ldthanh', '827ccb0eea8a706c4c34a16891f84e7b'),
('Y???n Linh', '1', 'Nh??n m???', '0333618825', 'staff3e9eb', 'ylinh', '827ccb0eea8a706c4c34a16891f84e7b'),
('Phan H???u Ph??c', '0', 'Nh??n m???', '0333618825', 'staff590bc', 'phphuc', '827ccb0eea8a706c4c34a16891f84e7b'),
('Tr????ng Thi???n T??n', '0', 'An Ch??u', '0333618825', 'staff79e6b', 'tttin', '827ccb0eea8a706c4c34a16891f84e7b'),
('Tr???n Th??? M??? Ti??n', '2', 'Nh??n m???', '0333618825', 'staffb8cb2', 'ttmtien', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD KEY `SoDonDH` (`SoDonDH`),
  ADD KEY `MSHH_Chitietdathang` (`MSHH`),
  ADD KEY `MaDC_chitietdathang` (`MaDC`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`SoDonDH`),
  ADD KEY `MSNV_DatHang` (`MSNV`),
  ADD KEY `MSKH_DatHang` (`MSKH`),
  ADD KEY `MaDC_DatHang` (`MaDC`);

--
-- Indexes for table `diachikh`
--
ALTER TABLE `diachikh`
  ADD PRIMARY KEY (`MaDC`),
  ADD KEY `MSKH_DiachiKH` (`MSKH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`),
  ADD KEY `MaLoaiHang_hanghoa` (`MaLoaiHang`);

--
-- Indexes for table `hinhhanghoa`
--
ALTER TABLE `hinhhanghoa`
  ADD PRIMARY KEY (`MaHinh`),
  ADD KEY `MSHH_HinhHangHoa` (`MSHH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`),
  ADD UNIQUE KEY `unique_username_khachhang` (`username`);

--
-- Indexes for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD UNIQUE KEY `unique_nhanvien` (`MSNV`),
  ADD UNIQUE KEY `unique_username_nhanvien` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `diachikh`
--
ALTER TABLE `diachikh`
  MODIFY `MaDC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `hinhhanghoa`
--
ALTER TABLE `hinhhanghoa`
  MODIFY `MaHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  MODIFY `MaLoaiHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `MSHH_Chitietdathang` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`) ON UPDATE CASCADE,
  ADD CONSTRAINT `MaDC_chitietdathang` FOREIGN KEY (`MaDC`) REFERENCES `diachikh` (`MaDC`),
  ADD CONSTRAINT `SoDonDH` FOREIGN KEY (`SoDonDH`) REFERENCES `dathang` (`SoDonDH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `MSKH_DatHang` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`) ON UPDATE CASCADE,
  ADD CONSTRAINT `MSNV_DatHang` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`) ON UPDATE CASCADE,
  ADD CONSTRAINT `MaDC_DatHang` FOREIGN KEY (`MaDC`) REFERENCES `diachikh` (`MaDC`) ON UPDATE CASCADE;

--
-- Constraints for table `diachikh`
--
ALTER TABLE `diachikh`
  ADD CONSTRAINT `MSKH_DiachiKH` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `MaLoaiHang_hanghoa` FOREIGN KEY (`MaLoaiHang`) REFERENCES `loaihanghoa` (`MaLoaiHang`);

--
-- Constraints for table `hinhhanghoa`
--
ALTER TABLE `hinhhanghoa`
  ADD CONSTRAINT `MSHH_HinhHangHoa` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
