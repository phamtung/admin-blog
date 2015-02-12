-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2015 at 03:53 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`comment_id` int(10) NOT NULL,
  `comment_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comment_email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `comment_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=86 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_name`, `comment_email`, `comment_detail`, `comment_time`, `post_id`) VALUES
(13, 'test', 'test@gmail.com', 'aaaaaaaaaaaaaa', '11/02/2015 14:24:10', 7),
(14, 'mr T', 'tung@gmail.com', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\r\nbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '11/02/2015 14:24:28', 7),
(15, 'abcd', 'new@yahoo.com', 'done!!!!\r\n', '11/02/2015 14:26:05', 7),
(16, 'error', 'abc@gmail.com', 'errorerrorerrorerrorerror', '11/02/2015 14:53:24', 7),
(17, 'fix', 'abc@gmail.com', 'fixxxxxx', '11/02/2015 14:59:24', 7),
(18, 'new', 'tung@gmail.com', 'aaaaaa', '11/02/2015 15:00:45', 7),
(19, 'new', 'tung@gmail.com', 'aaaaaa', '11/02/2015 15:00:53', 7),
(20, 'abcd', 'abc@gmail.com', 'ttttt', '11/02/2015 15:01:49', 7),
(21, 'abcd', 'test@gmail.com', 'aaaaaaaaaaaaaaa', '11/02/2015 15:03:12', 7),
(22, 'test2', 'abc@gmail.com', 'dâdadad', '11/02/2015 15:04:28', 7),
(23, '123123', 'test@gmail.com', '123123', '11/02/2015 15:04:53', 7),
(24, 'test', 'tung@gmail.com', '123123123', '11/02/2015 15:05:30', 7),
(25, 'test', 'tung@gmail.com', '123123123', '11/02/2015 15:05:56', 7),
(26, 'tung', 'test@gmail.com', 'aaaaaaaaaaaa', '11/02/2015 16:13:08', 7),
(27, 'abcd', 'test@gmail.com', 'ccccccccccccc', '11/02/2015 16:13:54', 7),
(28, 'new', 'tung@gmail.com', 'êrrr', '11/02/2015 16:16:01', 7),
(29, 'new', 'tung@gmail.com', 'êrrr', '11/02/2015 16:18:08', 7),
(30, 'new', 'tung@gmail.com', 'êrrr', '11/02/2015 16:18:12', 7),
(31, 'abcd', 'test@gmail.com', 'gggggggg', '11/02/2015 16:18:53', 7),
(32, 'test', 'test@gmail.com', 'aaaaaaaaa', '11/02/2015 16:20:00', 7),
(33, 'test2', 'abc@gmail.com', 'aaaa', '11/02/2015 16:22:19', 7),
(34, 'new', 'testaaa@gmail.com', 'aaaaaaaaaaa', '11/02/2015 16:30:46', 7),
(35, 'test', 'abc@gmail.com', 'aaaaaaaaaaa', '11/02/2015 16:32:04', 7),
(36, 'tung', 'tung@gmail.com', '111111', '11/02/2015 16:36:34', 7),
(37, 'error', 'test@gmail.com', 'qqqqq', '11/02/2015 16:41:25', 7),
(38, 'error', 'test@gmail.com', 'qqqqq', '11/02/2015 16:41:39', 7),
(39, 'test', 'test@gmail.com', 'aaaaaaaaaa', '11/02/2015 16:49:16', 7),
(40, 'abcd', 'abc@gmail.com', 'adadad', '11/02/2015 16:50:12', 7),
(41, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:49', 7),
(42, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:49', 7),
(43, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:50', 7),
(44, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:50', 7),
(45, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:51', 7),
(46, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:52', 7),
(47, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:53', 7),
(48, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:54', 7),
(49, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:54', 7),
(50, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:54', 7),
(51, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:55', 7),
(52, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:55', 7),
(53, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:56', 7),
(54, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:56', 7),
(55, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:56', 7),
(56, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:57', 7),
(57, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:57', 7),
(58, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:58', 7),
(59, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:58', 7),
(60, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:59', 7),
(61, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:50:59', 7),
(62, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:00', 7),
(63, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:00', 7),
(64, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:01', 7),
(65, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:01', 7),
(66, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:02', 7),
(67, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:02', 7),
(68, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:03', 7),
(69, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:04', 7),
(70, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:04', 7),
(71, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:05', 7),
(72, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:05', 7),
(73, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:05', 7),
(74, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:06', 7),
(75, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:06', 7),
(76, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:07', 7),
(77, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:07', 7),
(78, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:08', 7),
(79, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:08', 7),
(80, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:08', 7),
(81, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:09', 7),
(82, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:10', 7),
(83, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:10', 7),
(84, 'new', 'new@yahoo.com', 'aaaaaaaaaaa', '11/02/2015 16:51:11', 7),
(85, 'tung', 'tung@gmail.com', 'aaaaaa', '11/02/2015 16:57:28', 7);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(5) NOT NULL,
  `post_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `title_id` int(3) NOT NULL,
  `post_author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `post_time` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_name`, `post_image`, `post_detail`, `title_id`, `post_author`, `post_time`) VALUES
(1, 'Chân dung nữ con tin Mỹ cuối cùng trong tay IS', 'images.jpg', '<p>H&ocirc;m qua, nh&oacute;m khủng bố Nh&agrave; nước Hồi gi&aacute;o (IS) tuy&ecirc;n bố, con tin Mỹ <strong>Kayla </strong><strong>Mueller </strong>đ&atilde; thiệt mạng trong một cuộc kh&ocirc;ng k&iacute;ch của Jordan nhắm v&agrave;o ch&uacute;ng.  Kayla Mueller, 26 tuổi, sống ở th&agrave;nh phố Prescott, bang Arizona ở miền t&acirc;y của Mỹ. Sau khi tốt nghiệp tr</p>', 2, 'abcd', '10/02/2015 15:02:28'),
(3, 'MV "Giữ em đi" gây sốt với chuyện đồng tính nữ', '1423541918-jcrg1_dtxz.jpg', '<p><span style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Ngay sau khi ra mắt, MV ca kh&uacute;c nhạc phim &quot;M&ugrave;a oải hương năm ấy</span><em style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">&quot;&nbsp;</em><span style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">đ&atilde; g&acirc;y được sự ch&uacute; &yacute; lớn từ cộng đồng fan Th&ugrave;y Chi n&oacute;i ri&ecirc;ng v&agrave; kh&aacute;n giả Việt n&oacute;i chung. Đặc biệt, phần giai điệu của &ldquo;Giữ em đi&rdquo; đ&atilde; được l&agrave;m mới ho&agrave;n to&agrave;n với phần song ca cực ăn &yacute; giữa Th&ugrave;y Chi v&agrave; ch&iacute;nh t&aacute;c giả Ti&ecirc;n Tiến mang đến cho kh&aacute;n giả những trải nghiệm mới v&ocirc; c&ugrave;ng th&uacute; vị.</span></p>\r\n<p><span style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Trước đ&oacute;, c&ocirc; g&aacute;i trẻ Ti&ecirc;n Ti&ecirc;n vốn được biết tới l&agrave; gương mặt nhạc sĩ trẻ mới nổi gần đ&acirc;y với một loạt c&aacute;c bản hit từng g&acirc;y b&atilde;o trong giới trẻ. Thế nhưng, lần g&oacute;p giọng c&ugrave;ng Th&ugrave;y Chi trong sản phẩm mới n&agrave;y đ&atilde; khiến kh&ocirc;ng &iacute;t kh&aacute;n giả cảm thấy bất ngờ với c&ocirc; n&agrave;ng t&agrave;i năng n&agrave;y.</span></p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Điểm nhấn của MV ch&iacute;nh l&agrave; mối t&igrave;nh tay ba giữa Ti&ecirc;n Ti&ecirc;n, H&agrave; Th&ugrave;y My (con g&aacute;i diễn vi&ecirc;n Diễm My) v&agrave; ch&agrave;ng MC điển trai Dustin Nguyễn. Nhưng điều kỳ lạ ở đ&acirc;y ch&iacute;nh l&agrave; Dustin lại l&agrave; người thứ ba.</p>\r\n<p>&nbsp;</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Th&ugrave;y My đ&atilde; nhận được v&ocirc; số lời khen ngợi từ đo&agrave;n l&agrave;m phim v&agrave; ch&iacute;nh t&aacute;c giả Ti&ecirc;n Ti&ecirc;n khi thể hiện rất tốt nội t&acirc;m của một c&ocirc; g&aacute;i đang bị giằng x&eacute; giữa một b&ecirc;n l&agrave; ch&agrave;ng trai rất y&ecirc;u m&igrave;nh c&ograve;n b&ecirc;n kia l&agrave; một c&ocirc; g&aacute;i kh&aacute;c với t&igrave;nh y&ecirc;u ngang tr&aacute;i.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Phần h&igrave;nh ảnh của MV cũng được người xem đ&aacute;nh gi&aacute; cao với c&ocirc;ng nghệ quay phim 4K ti&ecirc;n tiến nhất hiện nay. Tuy kh&ocirc;ng ch&iacute;nh thức xuất hiện trong c&aacute;c cảnh quay nhưng giọng h&aacute;t cao v&uacute;t v&agrave; s&acirc;u lắng của Th&ugrave;y Chi cũng đủ hạ gục những đ&ocirc;i tai kh&oacute; t&iacute;nh nhất.</p>', 3, 'Mr.A', '11/02/2015 14:52:27'),
(4, 'Hiện trường vụ TNGT khiến 20 người thương vong', 'Lighthouse.jpg', '<p><span style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Hiện trường vụ tai nạn thương t&acirc;m</span></p>', 2, 'Mr.A', '10/02/2015 14:58:38'),
(5, 'Ai Cập: 30 người chết trong một trận bóng đá', 'Tulips.jpg', '<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Bộ Nội vụ Ai Cập cho biết đụng độ diễn ra sau khi h&agrave;ng ng&agrave;n cổ động vi&ecirc;n t&igrave;m c&aacute;ch tr&agrave;n v&agrave;o s&acirc;n m&agrave; kh&ocirc;ng mua v&eacute;, v&agrave; cảnh s&aacute;t chỉ h&agrave;nh động để &ldquo;ngăn cản họ ph&aacute; hoại của c&ocirc;ng&rdquo;.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Tuy nhi&ecirc;n, nhiều cổ động vi&ecirc;n cho biết s&acirc;n vận động chỉ mở duy nhất một cửa cho c&aacute;c cổ động vi&ecirc;n v&agrave;o, dẫn đến cảnh chen lấn, v&agrave; đ&uacute;ng l&uacute;c n&agrave;y cảnh s&aacute;t đ&atilde; sử dụng hơi cay.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">C&aacute;c trận b&oacute;ng đ&aacute; thường l&agrave; điểm n&oacute;ng bạo lực ở Ai Cập, nơi từng xảy ra vụ bạo động kinh ho&agrave;ng khiến 72 cổ động vi&ecirc;n thiệt mạng trong một trận đấu ở Port Said v&agrave;o th&aacute;ng 2/2012. Kể từ đ&oacute; Ai Cập đ&atilde; ra quy định hạn chế số lượng cổ động vi&ecirc;n v&agrave;o s&acirc;n, khiến nhiều người t&igrave;m mọi c&aacute;ch tr&agrave;n v&agrave;o s&acirc;n bất chấp lệnh cấm.</p>', 1, 'Mr.B', '10/02/2015 14:59:39'),
(6, 'Vì sao đặc nhiệm Mỹ không cứu nữ con tin từ tay IS?', 'Koala.jpg', '<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Ng&agrave;y 7/2, phiến qu&acirc;n Nh&agrave; nước Hồi gi&aacute;o (IS) tuy&ecirc;n bố rằng Kayla Mueller, nữ con tin người Mỹ duy nhất trong tay ch&uacute;ng, đ&atilde; thiệt mạng v&igrave; c&aacute;c cuộc kh&ocirc;ng k&iacute;ch của Jordan sau hơn một năm trời bị IS giam giữ.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Kayla Mueller bị IS bắt l&agrave;m con tin tại th&agrave;nh phố Aleppo (Syria) năm 2013 khi c&ocirc; tới đ&acirc;y thực hiện nhiệm vụ cứu trợ nh&acirc;n đạo cao cả đối với những người d&acirc;n bị mắc kẹt trong v&ugrave;ng chiến sự. Trước đ&acirc;y, danh t&iacute;nh của c&ocirc; đ&atilde; được Mỹ giữ b&iacute; mật để đảm bảo an to&agrave;n cho c&ocirc;.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">L&agrave; một nh&acirc;n vi&ecirc;n cứu trợ, Mueller đ&atilde; từng t&igrave;nh nguyện tham gia c&aacute;c nh&oacute;m nh&acirc;n đạo hoạt động ở Ấn Độ, Israel v&agrave; Palestine. C&ocirc; bị phiến qu&acirc;n IS bắt c&oacute;c v&agrave;o ng&agrave;y 4/8/2013 khi đang tr&ecirc;n đường trở về từ một bệnh viện ở Aleppo.</p>\r\n<p style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">&nbsp;</p>', 2, 'abcd', '10/02/2015 15:02:46'),
(7, 'Hệ điều hành BlackBerry sắp có bản cập nhật hiếm hoi', '1423493896-mohpblackberry_os_10_3_1_e1419971207594_400x242_wjvb.jpg', '<p>PhoneArena, hệ điều h&agrave;nh BlackBerry 10.3.1dự kiến sẽ được tung ra vao ng&agrave;y 19/2 d&agrave;nh cho những d&ograve;ng điện thọai BlackBerry cũng đang chạy phi&ecirc;n bản 10 nhưng cũ hơn. Hiện tại chỉ c&oacute; BlackBerry Classic l&agrave; được c&agrave;i đặt sẵn BlackBerry 10.3.1.</p>\r\n<p>Đ&acirc;y l&agrave; một bản cập nhật hiếm hoi của hệ điều h&agrave;nh BlackBerry m&agrave; đang bị Android v&agrave; iOS bỏ rất xa. Tuy nhi&ecirc;n, phi&ecirc;n bản mới n&agrave;y hứa hẹn sẽ mang tới trợ l&yacute; ảo BlackBerry Assistant tương tự Siri tr&ecirc;n iPhone v&agrave; nhiều t&iacute;nh năng kh&aacute;c.<br />\r\nC&aacute;c t&iacute;nh năng kh&aacute;c của BlackBerry 10.3.1 bao gồm chế độ chuyển đổi m&agrave;n h&igrave;nh từ nền đen sang trắng hoặc nền trắng th&agrave;nh đen. Điều n&agrave;y rất hữu &iacute;ch cho việc sử dụng điện thoại v&agrave;o ban đ&ecirc;m. Một t&iacute;nh năng mới kh&aacute;c l&agrave; cho ph&eacute;p chặn c&aacute;c cuộc gọi hoặc nhắn tin từ một số điện thoại n&agrave;o đ&oacute;.</p>\r\n<p>Bạn cũng c&oacute; thể ẩn h&igrave;nh ảnh v&agrave; video để người mượn điện thoại kh&ocirc;ng thể nh&igrave;n thấy những bức ảnh n&oacute;ng m&agrave; c&oacute; thể bạn đ&atilde; chụp trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n<p><span style="font-family: Arial, Helvetica, sans-serif; text-align: justify;">Ngo&agrave;i ra, c&ograve;n c&oacute; chế độ Battery Saving gi&uacute;p giảm độ s&aacute;ng m&agrave;n h&igrave;nh, loại bỏ c&aacute;c th&ocirc;ng b&aacute;o, giảm hiệu suất CPU v&agrave; loại bỏ nhiều t&aacute;c vụ kh&aacute;c để k&eacute;o d&agrave;i thời gian sử dụng pin. V&agrave; với Custom Notification, bạn c&oacute; thể t&ugrave;y chỉnh nhạc chu&ocirc;ng đi k&egrave;m với một cuộc gọi cụ thể v&agrave; đ&egrave;n LED b&aacute;o hiệu...</span></p>', 5, 'Ngọc Phạm', '11/02/2015 09:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
`title_id` int(3) NOT NULL,
  `title_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`title_id`, `title_name`, `title_image`) VALUES
(1, 'Thể thao', 'title-4.png'),
(2, 'Đời sống', 'title-3.png'),
(3, 'Âm nhạc', 'title-5.png'),
(4, 'Sức khỏe', 'title-2.png'),
(5, 'Công nghệ', 'title-1.png'),
(6, 'test', 'icon-1.png'),
(7, 'test2', 'icon-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `user_image`, `password`, `address`, `user_name`) VALUES
(1, 'admin@gmail.com', 'Koala.jpg', '21232f297a57a5a743894a0e4a801fc3', 'ha nội', 'Administrator'),
(2, 'pttung313@gmail.com', 'Penguins.jpg', '58b1216b06850385d9a4eadbedc806c4', 'việt nam', 'Phạm Thanh Tùng'),
(3, 'test@gmail.com', 'images.jpg', '7fd25c25920a552cb207346b6372c1b8', 'japan', 'Test test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
 ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
MODIFY `title_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
