-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 18, 2021 lúc 05:08 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopdongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Goo', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 2147483647),
(2, 'Mod đz', 'mod@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Danh mục', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Đồng hồ Thể thao', '', 1, 4, '2017-04-22 05:37:23'),
(8, 'Đồng hồ Thông minh', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Đồng hồ Điện tử', '', 1, 5, '2017-04-22 05:37:50'),
(10, 'Đồng hồ Led', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Đồng hồ cơ', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Đồng hồ trẻ em', '', 7, 5, '2017-04-22 09:09:01'),
(15, 'Apple Watch', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'Đồng hồ định vị', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'Đồng hồ Blutooth', '', 8, 3, '2017-04-22 09:23:39'),
(18, 'Đồng hồ laze', '', 8, 4, '2017-04-22 09:23:57'),
(19, 'Đồng hồ dây ', '', 9, 1, '2017-04-22 09:25:55'),
(20, 'Đồng hồ đèn Led', '', 9, 2, '2017-04-22 09:26:21'),
(21, 'Đồng hồ Apple', '', 9, 4, '2017-04-22 09:26:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 3, 12, 1, '360000.00', 0),
(3, 4, 7, 1, '350000.00', 0),
(12, 9, 4, 1, '200000.00', 0),
(13, 10, 17, 1, '450000.00', 0),
(6, 5, 23, 1, '370000.00', 0),
(7, 6, 28, 1, '169000.00', 0),
(8, 6, 25, 1, '300000.00', 0),
(11, 8, 10, 1, '69000.00', 0),
(10, 7, 11, 1, '70000.00', 0),
(14, 11, 25, 1, '300000.00', 0),
(15, 12, 28, 1, '169000.00', 0),
(16, 13, 27, 1, '1600000.00', 0),
(17, 14, 25, 1, '4350000.00', 0),
(18, 14, 1, 1, '6800000.00', 0),
(19, 14, 18, 1, '9000000.00', 0),
(20, 15, 27, 1, '3600000.00', 0),
(21, 16, 9, 1, '5700000.00', 0),
(22, 16, 17, 1, '8000000.00', 0),
(23, 16, 18, 1, '9000000.00', 0),
(24, 17, 24, 2, '8400000.00', 0),
(25, 17, 20, 1, '8300000.00', 0),
(26, 18, 24, 1, '4200000.00', 0),
(27, 18, 9, 1, '5700000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(1, 16, 'Đồng hồ định vị GPRS', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>LED-backlit IPS LCD, 4.7&quot;, Retina HD</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 11</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Apple A10 Fusion 4 nh&acirc;n 64-bit</p>\r\n	</li>\r\n</ul>\r\n', '7000000.00', 200000, 'images_(13).jpg', '[\"images_(13)1.jpg\",\"download_(15).jpg\",\"images_(12).jpg\"]', 25, 2, 14, 3, 1493983674),
(6, 18, 'Đồng hồ Laze 5Hz', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>LED-backlit IPS LCD, 4.7&quot;, Retina HD</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 11</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Apple A10 Fusion 4 nh&acirc;n 64-bit</p>\r\n	</li>\r\n</ul>\r\n', '9500000.00', 200000, 'images_(11)2.jpg', '[\"images_(11).jpg\",\"download_(14)1.jpg\",\"images_(10)1.jpg\"]', 2, 1, 4, 1, 1493983674),
(9, 15, 'Apple Watch 6GPS S51', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:\r\n	<p>LED-backlit IPS LCD, 4.7&quot;, Retina HD</p>\r\n	</li>\r\n	<li>Hệ điều h&agrave;nh:\r\n	<p>iOS 11</p>\r\n	</li>\r\n	<li>Camera sau:\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>Camera trước:\r\n	<p>7 MP</p>\r\n	</li>\r\n	<li>CPU:\r\n	<p>Apple A10 Fusion 4 nh&acirc;n 64-bit</p>\r\n	</li>\r\n</ul>\r\n', '5800000.00', 100000, 'images_(9)2.jpg', '[\"images_(9).jpg\",\"images_(8)1.jpg\",\"download_(13)1.jpg\"]', 5, 2, 4, 1, 1493983674),
(15, 17, 'Đồng hồ Blutooth loại 10GB', '<ul>\r\n	<li>Thương hiệu:<strong>&nbsp;Xiaomi</strong></li>\r\n	<li>T&ecirc;n:&nbsp;<em>V&ograve;ng đeo tay Xiaomi</em>&nbsp;3</li>\r\n	<li>Chức năng:&nbsp;Theo d&otilde;i nhịp tim&nbsp;Nhắc nhở th&ocirc;ng minh Giải tr&iacute; x&atilde; hội Bước chống nước</li>\r\n	<li>Ph&acirc;n loại m&agrave;u:&nbsp;<strong>v&ograve;ng đeo tay</strong>&nbsp;ti&ecirc;u chuẩn m&agrave;u đen 3</li>\r\n	<li>Nh&agrave; sản xuất: An Huy Huami Information Technology Co., Ltd.</li>\r\n	<li>Thời gian bảo h&agrave;nh: 12 th&aacute;ng.</li>\r\n</ul>\r\n', '9500000.00', 180000, 'download_(12)2.jpg', '[\"images_(7)1.jpg\",\"download_(12).jpg\",\"download_(11)1.jpg\"]', 5, 1, 4, 1, 1493983674),
(17, 19, 'Đồng hồ dây Phale Nữ', '<p>Brands:<a href=\"https://donghoxiteen.com/thuong-hieu/dior\">Dior</a></p>\r\n\r\n<ul>\r\n	<li>D&acirc;y lưới nam ch&acirc;m hot trend</li>\r\n	<li>Size 34mm</li>\r\n	<li>Chống nước: 3ATM</li>\r\n	<li>Bảo h&agrave;nh 3 th&aacute;ng có thẻ bảo hành</li>\r\n	<li>14 ng&agrave;y đổi mới nếu lỗi do NSX</li>\r\n</ul>\r\n', '8500000.00', 500000, 'download_(9).jpg', '[\"download_(10).jpg\",\"download_(9)1.jpg\",\"download_(8).jpg\"]', 37, 2, 14, 4, 1493983674),
(18, 20, 'Đồng hồ đèn Led chất liệu Gỗ', '<p>Đồng hồ LED 3D treo tường để b&agrave;n th&ocirc;ng minh phong c&aacute;ch H&agrave;n Quốc Ngo&agrave;i khả năng hiển thị giờ th&igrave; chiếc đồng hồ LED 3d phong c&aacute;ch h&agrave;n quốc c&ograve;n t&ocirc; điểm cho kh&ocirc;ng gian sống của bạn th&ecirc;m sang trọng. Đồng hồ c&oacute; chức năng nhiệt độ, ng&agrave;y th&aacute;ng v&agrave; b&aacute;o thức nữa ạ. Phong c&aacute;ch H&agrave;n Quốc si&ecirc;u iu, đang hot trend hiện nay đ&oacute; ạ Ph&ugrave; hợp với những nơi như: Văn ph&ograve;ng, c&ocirc;ng sở, chung cư, Khu vui chơi giải tr&iacute;, khu thi đấu, ph&ograve;ng GYM tập thể h&igrave;nh, Trang tr&iacute; gia đ&igrave;nh như ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ, bếp&hellip; C&oacute; thể treo tường hoặc để b&agrave;n LED hiển thị thời gian (Giờ : Ph&uacute;t), c&oacute; 2 chế độ hiển thị thời gian 12h v&agrave; 24h, Chức năng hẹn giờ b&aacute;o thức (AL) v&agrave; chức năng b&aacute;o lại (c&oacute; thể điều chỉnh từ 5 ph&uacute;t tới 60 ph&uacute;t, mặc định l&agrave; 05 ph&uacute;t), nhiệt độ, ng&agrave;y th&aacute;ng</p>\r\n', '9000000.00', 0, 'images_(6).jpg', '[\"download_(7).jpg\",\"download_(6).jpg\",\"images_(6)1.jpg\"]', 3, 3, 5, 1, 0),
(20, 21, 'Apple 5GB', '<ul>\r\n	<li>Đ&egrave;n LED<br />\r\n	C&ocirc;ng tắc đ&egrave;n tự động, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn (1,5 gi&acirc;y hoặc 3 gi&acirc;y), ph&aacute;t s&aacute;ng sau</li>\r\n	<li>Giờ thế giới<br />\r\n	29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi Giờ địa phương/Giờ thế giới</li>\r\n	<li>Đồng hồ bấm giờ 1/1000 gi&acirc;y<br />\r\n	Khả năng đo: 99:59&rsquo;59.999&rdquo;<br />\r\n	Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, thời gian v&ograve;ng chạy, ngắt giờ<br />\r\n	Kh&aacute;c: Tốc độ (0 đến 1998 đơn vị / giờ), Nhập khoảng c&aacute;ch (0,0 đến 99,9)</li>\r\n</ul>\r\n', '8800000.00', 500000, 'download_(2).jpg', '[\"download_(3).jpg\",\"download_(2)1.jpg\",\"images_(4).jpg\"]', 33, 1, 4, 1, 1493983674),
(24, 10, 'Đồng hồ Silicon dây Led', '<h3>Th&ocirc;ng số sản phẩm: C&oacute; m&agrave;n h&igrave;nh K&iacute;ch thước:</h3>\r\n\r\n<h3>Khoảng 24cm Chất liệu: Silicone, ABS Chất liệu:</h3>\r\n\r\n<h3>D&acirc;y đeo chống xước tốt</h3>\r\n\r\n<h3>Chạy bằng pin Kh&ocirc;ng thấm nước</h3>\r\n\r\n<h3>C&oacute; đ&egrave;n Kiểm tra thời gian Xem lịch</h3>\r\n', '4200000.00', 0, 'download_(4).jpg', '[\"download_(5).jpg\",\"download_(4)1.jpg\",\"images_(5).jpg\"]', 39, 1, 9, 2, 1493983674),
(25, 11, 'Đồng hồ Nam Aries Gold AG', '<h3>M&agrave;n H&igrave;nh</h3>\r\n\r\n<p>K&iacute;ch Thước M&agrave;n H&igrave;nh</p>\r\n\r\n<p>6.7 inch</p>\r\n\r\n<p>M&agrave;u m&agrave;n h&igrave;nh</p>\r\n\r\n<p>16 triệu m&agrave;u</p>\r\n\r\n<p>Độ ph&acirc;n giải</p>\r\n\r\n<p>C&ocirc;ng nghệ cảm ứng</p>\r\n\r\n<p>Cảm ứng điện dung đa điểm</p>\r\n\r\n<p>&nbsp;</p>\r\n', '4600000.00', 150000, 'images2.jpg', '[\"images_(2)1.jpg\",\"images_(1)1.jpg\",\"images3.jpg\"]', 4, 2, 14, 3, 1493983674);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', '00_15_3_06_10_2020_kEZofJJE491.jpg', 'http://localhost/webshop/phoi-ren-p4', 1, '2017-04-25 15:24:43'),
(4, '2', 'home-slide-dong-ho-dinh-vi-viethungshop.jpg', 'http://localhost/webshop/ao-gia-dinh-ag0560-p16', 4, '2017-04-25 15:36:41'),
(5, '3', '00_15_3_06_10_2020_kEZofJJE49.jpg', 'http://localhost/webshop/phong-cach-phoi-mau-p24', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(17, 0, 0, 'Test', 'tests@test.com', '0123456789', 'Đà Nẵng', 'Ship tới quận liên chiểu', '16700000.00', '', 1610974797),
(16, 1, 0, 'Test', 'tests@test.com', '0123456789', 'Da Nang', 'Ship toi Da Nang', '22700000.00', '', 1610970816),
(18, 0, 9, 'Test', 'a@a.com', '0123456789', 'Đà Nẵng', 'Ship tới Thanh Khê', '9900000.00', '', 1610974855);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(6, 'Nguyen An', 'khachhang1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01201212222', 'Thủy Nguyên - Hải Phòng', 2147483647),
(5, 'User', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2147483647),
(7, 'TEST@gmail.com', 'TEST@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2017),
(9, 'Test', 'a@a.com', 'e9b654fb4686c0da0f12e9472a65c477', '0123456789', 'Đà Nẵng', 2021);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
