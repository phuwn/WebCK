-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 25, 2018 at 02:31 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noi_that`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_don_hang`
--

DROP TABLE IF EXISTS `ct_don_hang`;
CREATE TABLE IF NOT EXISTS `ct_don_hang` (
  `id_don_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_san_pham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  PRIMARY KEY (`id_don_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Chi tiết đơn hàng';

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia`
--

DROP TABLE IF EXISTS `danh_gia`;
CREATE TABLE IF NOT EXISTS `danh_gia` (
  `id_danh_gia` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `muc_danh_gia` int(11) NOT NULL,
  `nd_danh_gia` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_danh_gia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Đánh giá';

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
CREATE TABLE IF NOT EXISTS `don_hang` (
  `id_don_hang` int(11) NOT NULL AUTO_INCREMENT,
  `id_khach_hang` int(11) NOT NULL,
  `trang_thai` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_don_hang`,`id_khach_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Đơn hàng';

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE IF NOT EXISTS `khach_hang` (
  `id_khach_hang` int(11) NOT NULL AUTO_INCREMENT,
  `ten_khach_hang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_khach_hang` int(11) NOT NULL,
  `email_khach_hang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dc_khach_hang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_khach_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Khách hàng';

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

DROP TABLE IF EXISTS `loai_san_pham`;
CREATE TABLE IF NOT EXISTS `loai_san_pham` (
  `id_loai` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_loai`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Loại sản phẩm';

--
-- Dumping data for table `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`id_loai`, `ten_loai`) VALUES
(1, 'Nội thất làm việc'),
(2, 'Nội thất phòng ngủ '),
(3, 'Nội thất nhà bếp'),
(4, 'Nội thất phòng khách');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE IF NOT EXISTS `san_pham` (
  `id_sp` int(11) NOT NULL AUTO_INCREMENT,
  `ten_sp` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `id_loai` int(11) NOT NULL,
  `don_gia` int(20) NOT NULL,
  `hinh` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sp`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Sản phẩm';

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id_sp`, `ten_sp`, `id_loai`, `don_gia`, `hinh`) VALUES
(3, 'Bộ bàn ghế làm việc 1', 1, 7413000, 'work1.jpg'),
(4, 'Bộ bàn ghế làm việc 2', 1, 6505000, 'work2.jpg'),
(5, 'Bộ bàn ghế làm việc 3', 1, 6222000, 'work3.jpg'),
(6, 'Bộ bàn ghế làm việc 4', 1, 8089000, 'work4.jpg'),
(7, 'Kệ sách 1', 1, 2830000, 'work5.jpg'),
(8, 'Kệ sách 2', 1, 4717000, 'work6.jpg'),
(9, 'Bộ bàn ghế làm việc 5', 1, 6368000, 'work7.jpg'),
(10, 'Sofa 1', 4, 6739000, 'living1.jpg'),
(11, 'Sofa 2', 4, 7536000, 'living2.jpg'),
(12, 'Sofa 3', 4, 4869000, 'living3.jpg'),
(13, 'Bộ sofa 1', 4, 8424000, 'living4.jpg'),
(14, 'Bộ sofa 2', 4, 16849000, 'living5.jpg'),
(15, 'Bộ sofa 3', 4, 16849000, 'living6.jpg'),
(16, 'Bộ sofa 4', 4, 10424000, 'living7.jpg'),
(17, 'Giường ngủ đơn 1', 2, 7750000, 'sleep1.jpg'),
(18, 'Giường ngủ đôi 1', 2, 11794000, 'sleep2.jpg'),
(19, 'Giường ngủ đôi 2', 2, 15169000, 'sleep3.jpg'),
(20, 'Giường ngủ đôi 3', 2, 12468000, 'sleep4.jpg'),
(21, 'Giường ngủ đôi 4', 2, 16512000, 'sleep5.jpg'),
(22, 'Giường ngủ đôi 5', 2, 17860000, 'sleep6.jpg'),
(23, 'Giường ngủ đôi 6', 2, 15164000, 'sleep7.jpg'),
(24, 'Bộ bàn ghế phòng ăn 1', 3, 16175000, 'dining1.jpg'),
(25, 'Bộ bàn ghế phòng ăn 2', 3, 10783000, 'dining2.jpg'),
(26, 'Bộ bàn ghế phòng ăn 3', 3, 12131000, 'dining3.jpg'),
(27, 'Bộ bàn ghế phòng ăn 4', 3, 25274000, 'dining4.jpg'),
(28, 'Bộ bàn ghế phòng ăn 5', 3, 16175000, 'dining5.jpg'),
(29, 'Bộ bàn ghế phòng ăn 6', 3, 23589000, 'dining6.jpg'),
(30, 'Bộ bàn ghế phòng ăn 7', 3, 32014000, 'dining7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `role_user` tinyint(3) NOT NULL,
  `email_user` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password_user` int(11) NOT NULL,
  `ten_user` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='User';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
