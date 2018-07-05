-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 05, 2018 at 10:03 AM
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
  `id_don_hang` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  PRIMARY KEY (`id_don_hang`,`id_san_pham`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Chi tiết đơn hàng';

--
-- Dumping data for table `ct_don_hang`
--

INSERT INTO `ct_don_hang` (`id_don_hang`, `id_san_pham`, `so_luong`) VALUES
(4, 7, 10),
(5, 4, 13),
(5, 7, 10),
(6, 4, 13),
(6, 7, 10),
(7, 3, 1),
(7, 4, 1),
(7, 5, 1);

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
  `ghi_chu` text COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_don_hang`,`id_khach_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Đơn hàng';

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id_don_hang`, `id_khach_hang`, `ghi_chu`, `trang_thai`) VALUES
(1, 123, '', 'chưa thanh toán'),
(2, 4, '', 'chưa thanh toán'),
(3, 12, '', 'chưa thanh toán'),
(4, 13, '', 'chưa thanh toán'),
(5, 14, '', 'chưa thanh toán'),
(6, 15, '', 'chưa thanh toán'),
(7, 16, 'lẹ má', 'chưa thanh toán');

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE IF NOT EXISTS `khach_hang` (
  `id_khach_hang` int(11) NOT NULL AUTO_INCREMENT,
  `ten_khach_hang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_khach_hang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_khach_hang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dc_khach_hang` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_khach_hang`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Khách hàng';

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`id_khach_hang`, `ten_khach_hang`, `sdt_khach_hang`, `email_khach_hang`, `dc_khach_hang`) VALUES
(1, 'Nghĩa', '123456789', 'haha@nghia.com', 'safsdfsadfasd'),
(2, 'NghÄ©a', '123456789', 'haha@nghia.com', 'safsdfsadfasd'),
(3, '', '123456789', 'haha@nghia.com', 'safsdfsadfasd'),
(4, 'asdfasdf', '123456789', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(5, 'afasdfasdf', 'afsdfasdfasd', 'pdt@gmail.com', 'asdfasdf'),
(6, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(7, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(8, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(9, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'asdfasdf'),
(10, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'asdfasdf'),
(11, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'asdfasdf'),
(12, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(13, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(14, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(15, 'Trần Thanh Phương', '6132165165121', 'pdt@gmail.com', 'salkdfjalskdjfklsdfj'),
(16, 'asdfasdf', '6132165165121', 'pdt@gmail.com', 'asdfasdf');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) NOT NULL,
  `ho_ten` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(50) NOT NULL,
  `dia_chi` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COMMENT='User';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `ho_ten`, `so_dien_thoai`, `dia_chi`, `role`) VALUES
(12, 'test2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'TEST lần 2', '000909099', 'test 2', 0),
(16, 'phuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Thanh PHương', '074027272', 'TEST địa chỉ', 0),
(18, 'kiet@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'Kiệt LÂm', '000009090', 'test địa chỉ Kiệt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
CREATE TABLE IF NOT EXISTS `voucher` (
  `id_voucher` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_code` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `voucher_value` int(3) NOT NULL,
  PRIMARY KEY (`id_voucher`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='voucher';

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id_voucher`, `voucher_code`, `voucher_value`) VALUES
(1, 'MISSMESSI', 10),
(2, '10DIEM', 500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
