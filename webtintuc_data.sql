-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.36 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for webtintuc
CREATE DATABASE IF NOT EXISTS `webtintuc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webtintuc`;

-- Dumping structure for table webtintuc.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table webtintuc.category: ~4 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `name`, `del_flag`) VALUES
	(1, 'Bóng Đá', 0),
	(2, 'Xem TV', 0),
	(3, 'Thời Trang', 0),
	(4, 'Sự Kiện', 0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table webtintuc.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `post_id` int(10) NOT NULL DEFAULT '0',
  `comment` text,
  `createdate` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table webtintuc.comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table webtintuc.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` text,
  `createdate` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- Dumping data for table webtintuc.posts: ~7 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`post_id`, `category_id`, `title`, `content`, `image`, `createdate`, `del_flag`) VALUES
	(11, 1, 'Tin HOT bóng đá tối 17/9: Messi rê bóng 4 trận chấp Ronaldo cả mùa', '<p><strong>Chỉ 4 trận đấu, Messi san bằng th&agrave;nh t&iacute;ch của Ronaldo trong cả m&ugrave;a giải.</strong>&nbsp;Theo thống k&ecirc;, sau 4 trận đấu đầu ti&ecirc;n tại La Liga m&ugrave;a n&agrave;y, Lionel Messi đ&atilde; thực hiện th&agrave;nh c&ocirc;ng 25 pha r&ecirc; b&oacute;ng, ngang&nbsp;bằng với kết quả của Cristiano Ronaldo trong cả m&ugrave;a trước.</p>\r\n\r\n<p><strong>Lỡ cơ hội tới&nbsp;<a href="http://www.24h.com.vn/barcelona-c48e1507.html">Barca</a>, Coutinho CH&Iacute;NH THỨC l&ecirc;n tiếng:</strong>&nbsp;Tiền vệ Philippe Coutinho đ&atilde; c&oacute; những ph&aacute;t biểu đầu ti&ecirc;n li&ecirc;n quan đến thương vụ chuyển nhượng sang&nbsp;<a href="http://www.24h.com.vn/barcelona-c48e1507.html">Barcelona</a>&nbsp;bị đổ vỡ cuối h&egrave; vừa qua:&nbsp;&quot;Đ&uacute;ng vậy! T&ocirc;i đ&atilde; rất quan t&acirc;m tới lời đề nghị từ Barcelona. Tuy nhi&ecirc;n v&agrave;o thời điểm n&agrave;y, t&ocirc;i chỉ muốn tập trung thi đấu để c&oacute; một m&ugrave;a giải th&agrave;nh c&ocirc;ng c&ugrave;ng Liverpool v&agrave; tuyển Brazil.&quot;</p>\r\n\r\n<p><strong>Bi kịch thủ m&ocirc;n người Montenegro bị bắn chết thương t&acirc;m khi đang tập luyện:&nbsp;</strong>Tờ Goal vừa đưa tin, thủ th&agrave;nh&nbsp;Goran Lenac (người Montenegro) vừa tử nạn ở tuổi 33 khi đang tập luyện thể lực c&ugrave;ng một người bạn trong s&acirc;n tập của CLB chủ quản FC Bokelj l&uacute;c 19h30 tối qua (16/9 - giờ địa phương). Hiện cảnh s&aacute;t đang r&aacute;o riết điều tra v&agrave; truy bắt hung thủ đ&atilde; s&aacute;t hại Lenac v&agrave; tẩu tho&aacute;t trong đ&ecirc;m tối.</p>\r\n', '1505647652-messi-ronaldo-cropped_2sbeh3c5l3ee1tigoh7oib06f.jpg', '2017-09-17 06:37:45', 0),
	(12, 1, 'Tin HOT bóng đá tối 25/9: Mourinho thoát án phạt từ FA', '<p><strong>Chỉ 4 trận đấu, Messi san bằng th&agrave;nh t&iacute;ch của Ronaldo trong cả m&ugrave;a giải.</strong>&nbsp;Theo thống k&ecirc;, sau 4 trận đấu đầu ti&ecirc;n tại La Liga m&ugrave;a n&agrave;y, Lionel Messi đ&atilde; thực hiện th&agrave;nh c&ocirc;ng 25 pha r&ecirc; b&oacute;ng, ngang&nbsp;bằng với kết quả của Cristiano Ronaldo trong cả m&ugrave;a trước.</p>\r\n\r\n<p><strong>Lỡ cơ hội tới&nbsp;<a href="http://www.24h.com.vn/barcelona-c48e1507.html">Barca</a>, Coutinho CH&Iacute;NH THỨC l&ecirc;n tiếng:</strong>&nbsp;Tiền vệ Philippe Coutinho đ&atilde; c&oacute; những ph&aacute;t biểu đầu ti&ecirc;n li&ecirc;n quan đến thương vụ chuyển nhượng sang&nbsp;<a href="http://www.24h.com.vn/barcelona-c48e1507.html">Barcelona</a>&nbsp;bị đổ vỡ cuối h&egrave; vừa qua:&nbsp;&quot;Đ&uacute;ng vậy! T&ocirc;i đ&atilde; rất quan t&acirc;m tới lời đề nghị từ Barcelona. Tuy nhi&ecirc;n v&agrave;o thời điểm n&agrave;y, t&ocirc;i chỉ muốn tập trung thi đấu để c&oacute; một m&ugrave;a giải th&agrave;nh c&ocirc;ng c&ugrave;ng Liverpool v&agrave; tuyển Brazil.&quot;</p>\r\n\r\n<p><strong>Bi kịch thủ m&ocirc;n người Montenegro bị bắn chết thương t&acirc;m khi đang tập luyện:&nbsp;</strong>Tờ Goal vừa đưa tin, thủ th&agrave;nh&nbsp;Goran Lenac (người Montenegro) vừa tử nạn ở tuổi 33 khi đang tập luyện thể lực c&ugrave;ng một người bạn trong s&acirc;n tập của CLB chủ quản FC Bokelj l&uacute;c 19h30 tối qua (16/9 - giờ địa phương). Hiện cảnh s&aacute;t đang r&aacute;o riết điều tra v&agrave; truy bắt hung thủ đ&atilde; s&aacute;t hại Lenac v&agrave; tẩu tho&aacute;t trong đ&ecirc;m tối.</p>\r\n', '1506341437-sdfasfsdf.jpg', '2017-09-17 06:37:45', 0),
	(13, 2, '“Nghề” trông tử tù', '<p>D&ugrave; đ&atilde; nghỉ hưu, nhưng Đại t&aacute; Nguyễn Duy Đức, nguy&ecirc;n Gi&aacute;m thị Trại tạm giam C&ocirc;ng an tỉnh Bắc Giang vẫn nhớ như in những ng&agrave;y&hellip; &ldquo;ở trại&rdquo;. &Ocirc;ng bảo, nhiều đ&ecirc;m mưa vẫn giật m&igrave;nh tỉnh giấc, bật khỏi giường t&igrave;m &aacute;o mưa định đi kiểm tra mới chợt nhớ ra m&igrave;nh đ&atilde; nghỉ c&ocirc;ng t&aacute;c, bởi những đ&ecirc;m mưa, lạnh, CBCS g&aacute;c hay lơ l&agrave;, trong khi đối tượng thường lợi dụng điều kiện n&agrave;y để trốn. Ch&iacute;nh v&igrave; vậy, so với những ng&agrave;y thời tiết b&igrave;nh thường, th&igrave; những đ&ecirc;m mưa gi&oacute;, b&atilde;o b&ugrave;ng, tr&aacute;ch nhiệm của l&atilde;nh đạo phải tăng gấp bội.</p>\r\n\r\n<p>Trong số những bị &aacute;n tử h&igrave;nh m&agrave; Trại tạm giam - C&ocirc;ng an tỉnh Bắc Giang đang quản l&yacute;, c&oacute; đối tượng đ&atilde; bị t&ograve;a tuy&ecirc;n &aacute;n tử h&igrave;nh c&aacute;ch đ&acirc;y tới hơn 8 năm, nhưng chưa thể thi h&agrave;nh &aacute;n v&igrave; chờ quyết định của Chủ tịch nước đối với đơn xin &acirc;n giảm.</p>\r\n\r\n<p>Trong đ&oacute; phải kể đến Nguyễn Thị B&iacute;ch Ngọc, tr&uacute; ở thị trấn Quảng Uy&ecirc;n, Cao Bằng. Ngọc phạm tội mua b&aacute;n tr&aacute;i ph&eacute;p chất ma t&uacute;y. C&ocirc; ta c&oacute; ho&agrave;n cảnh kh&aacute; đặc biệt, c&oacute; chồng nghiện ma t&uacute;y n&ecirc;n đ&atilde; dần v&agrave;o con đường tội lỗi n&agrave;y. Sau khi chồng bị bắt, Ngọc &ldquo;cặp&rdquo; với L&ecirc; Văn Sỹ - một b&aacute;c sĩ kh&aacute; giỏi, nhiều triển vọng v&agrave; dẫn dắt g&atilde; b&aacute;c sĩ n&agrave;y v&agrave;o con đường của m&igrave;nh.</p>\r\n\r\n<p>Bị bắt, cả Ngọc v&agrave; Sỹ đều bị kết &aacute;n tử h&igrave;nh. Thời điểm đ&oacute;, chồng Ngọc cũng đang ở trại n&ecirc;n hai đứa con nhỏ kh&ocirc;ng c&oacute; người tr&ocirc;ng nom. Ch&iacute;nh v&igrave; vậy, Ngọc rất ti&ecirc;u cực, thường xuy&ecirc;n quậy ph&aacute;, chửi bới c&aacute;n bộ. Thậm ch&iacute;, c&ocirc; ta đ&ograve;i hỏi nhiều điều hết sức v&ocirc; l&iacute;. Khi kh&ocirc;ng được đ&aacute;p ứng y&ecirc;u cầu v&ocirc; l&yacute;, Ngọc lập tức t&igrave;m c&aacute;ch chống đối.</p>\r\n\r\n<p>Để cảm h&oacute;a những đối tượng như Ngọc, Ban Gi&aacute;m thị đ&atilde; bỏ c&ocirc;ng sức c&ugrave;ng c&aacute;c c&aacute;n bộ nghi&ecirc;n cứu kỹ hồ sơ, nắm bắt diễn biến t&acirc;m l&iacute; để t&igrave;m hướng t&aacute;c động. Qua đ&oacute;, c&aacute;c anh, chị hiểu rằng d&ugrave; chống đối, d&ugrave; nhiều lần vi phạm nhưng Ngọc vẫn l&agrave; một người mẹ biết thương con, ch&iacute;nh v&igrave; vậy, c&aacute;c c&aacute;n bộ đ&atilde; d&agrave;nh nhiều thời gian chuyện tr&ograve;, ph&acirc;n t&iacute;ch đ&uacute;ng sai để Ngọc tự ngẫm về h&agrave;nh vi của m&igrave;nh, để Ngọc thấy rằng, d&ugrave; m&igrave;nh c&oacute; phải chết v&igrave; tội lỗi nhưng c&aacute;c con cũng vẫn cần c&oacute; một người mẹ biết hướng thiện. C&oacute; như vậy, bọn trẻ mới c&oacute; cơ hội trở th&agrave;nh người lương thiện.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, c&aacute;c c&aacute;n bộ quản gi&aacute;o cũng cố gắng đ&aacute;p ứng cho Ngọc một số y&ecirc;u cầu trong phạm vi&nbsp;<a href="http://www.24h.com.vn/tin-phap-luat-c51e3777.html">ph&aacute;p luật</a>&nbsp;cho ph&eacute;p. Chẳng hạn việc Ngọc nằng nặc đ&ograve;i phải d&ugrave;ng đ&uacute;ng loại chăn, gối m&agrave; c&ocirc; ta th&iacute;ch, từ kiểu d&aacute;ng đến m&agrave;u sắc. Đại t&aacute; Nguyễn Duy Đức phải cử c&aacute;n bộ &quot;l&ugrave;ng&quot; bằng được mua đ&uacute;ng loại chăn gối theo y&ecirc;u cầu của Ngọc.</p>\r\n\r\n<p>Theo mi&ecirc;u tả của Ngọc th&igrave; gối c&ocirc; ta th&iacute;ch l&agrave; loại m&agrave;u xanh đậm, hoa m&agrave;u t&iacute;m, c&oacute; cuốn b&egrave;o, d&agrave;i 3 gang tay, rộng 2 gang... C&aacute;c c&aacute;n bộ đi hết chợ n&agrave;y đến cửa h&agrave;ng kh&aacute;c để mua gối theo y&ecirc;u cầu của Ngọc. Tuy nhi&ecirc;n, mua đến cả chục c&aacute;i về mới đ&uacute;ng y&ecirc;u cầu của c&ocirc; ta. Đến c&aacute;i khăn mặt, Ngọc cũng &ldquo;đ&ograve;i&rdquo; loại kh&ocirc;ng to, kh&ocirc;ng nhỏ, kh&ocirc;ng phải khăn tắm, cũng chẳng phải d&ugrave;ng để gội đầu khiến c&aacute;n bộ v&ocirc; c&ugrave;ng kh&oacute; &ldquo;chiều&rdquo;. Kể cả băng vệ sinh cũng vậy, Ngọc phải d&ugrave;ng đ&uacute;ng loại c&ocirc; ta th&iacute;ch... Từ sự quan t&acirc;m, ch&acirc;n th&agrave;nh của c&aacute;c c&aacute;n bộ, Nguyễn Thị B&iacute;ch Ngọc đ&atilde; tự chấp h&agrave;nh tốt nội quy, kh&ocirc;ng c&ograve;n quậy ph&aacute;, chống đối nữa.</p>\r\n\r\n<p>B&acirc;y giờ, đ&atilde; &ldquo;y&ecirc;n vị&rdquo; với mức &aacute;n chung th&acirc;n, thi h&agrave;nh &aacute;n ở Trại giam Ph&uacute; Sơn 4, Nguyễn Thị H&agrave;, tr&uacute; ở N&uacute;i Tr&uacute;c, Ba Đ&igrave;nh, H&agrave; Nội v&agrave; Nguyễn Thị Thưa, ở Phổ Y&ecirc;n, Th&aacute;i Nguy&ecirc;n vẫn kh&ocirc;ng thể qu&ecirc;n những ng&agrave;y trong buồng giam tử t&ugrave; ở Trại tạm giam C&ocirc;ng an tỉnh Th&aacute;i Nguy&ecirc;n v&agrave; những t&igrave;nh cảm m&agrave; CBCS ở đ&acirc;y đối với họ, đặc biệt l&agrave; sự động vi&ecirc;n, gi&uacute;p đỡ của Đại t&aacute; Nguyễn Quốc Hiệu, Gi&aacute;m thị.</p>\r\n\r\n<p>Vốn l&agrave; Ph&oacute; trưởng Ph&ograve;ng Cảnh s&aacute;t h&igrave;nh sự C&ocirc;ng an tỉnh Th&aacute;i Nguy&ecirc;n, Đại t&aacute; Nguyễn Quốc Hiệu (hiện l&agrave; Trưởng ph&ograve;ng Hồ sơ) được l&atilde;nh đạo tin tưởng bổ nhiệm chức vụ Gi&aacute;m thị Trại tạm giam. Mấy th&aacute;ng sau khi anh &ldquo;l&ecirc;n trại&rdquo;, t&ocirc;i đến thăm thấy t&oacute;c anh bạc qu&aacute; nửa. Anh bảo, dạo n&agrave;y đ&ecirc;m anh kh&ocirc;ng ngủ được, huyết &aacute;p ng&agrave;y n&agrave;o cũng tăng, qu&ecirc;n uống thuốc l&agrave; &ldquo;đi&rdquo; lu&ocirc;n. Chỉ cần anh n&oacute;i thế, t&ocirc;i c&oacute; thể hiểu c&ocirc;ng việc n&agrave;y &aacute;p lực đến mức n&agrave;o.</p>\r\n', '1506339272-be358d05-e2f1-48d0-9af3-3d4e8109bf5e.jpg', '2017-09-17 06:37:45', 0),
	(14, 3, 'Mỹ nhân luống cuống che đậy vì trót diện váy xẻ cao "thấu trời"', '<p>Những chiếc v&aacute;y xẻ thấp&nbsp;th&ocirc;ng thường đ&atilde; qu&aacute; lỗi thời, giờ l&agrave; thời đại của c&aacute;c thiết kế kho&eacute;t cao ng&uacute;t tầm mắt. Đầm xẻ h&ocirc;ng cao gi&uacute;p người mặc khoe được trọn vẹn cặp ch&acirc;n thon d&agrave;i gợi cảm, gi&uacute;p người mặc tr&ocirc;ng cao v&agrave; thanh tho&aacute;t hơn, v&igrave; thế nhiều mỹ nh&acirc;n rất t&iacute;ch cực diện kiểu v&aacute;y n&agrave;y trong c&aacute;c sự kiện. Tr&ecirc;n thảm đỏ hiện nay, kiểu mốt v&aacute;y xẻ cao đang l&agrave; kiểu mốt chinh phục nhiều ng&ocirc;i sao Hollywood. Kiểu v&aacute;y n&agrave;y xuất hiện tại c&aacute;c sự kiện nhiều kh&ocirc;ng thua g&igrave; mốt v&aacute;y xuy&ecirc;n thấu.</p>\r\n\r\n<p>Thực tế v&aacute;y xẻ vốn đ&atilde; kh&oacute; mặc, những kiểu thiết kế với đường cắt cao đến h&ocirc;ng c&ograve;n kh&oacute; mặc hơn gấp bội phần. Rất nhiều mỹ nh&acirc;n đ&atilde; gặp phải sự cố hoặc bị l&uacute;ng t&uacute;ng v&igrave; kiểu đầm đẹp m&agrave; hiểm n&agrave;y, Điển h&igrave;nh l&agrave; trường hợp bộ v&aacute;y xẻ cao đến bụng của Chrissy Teigen biến c&ocirc; th&agrave;nh nh&acirc;n vật g&acirc;y tranh c&atilde;i nhất lễ trao giải AMAs 2016. Người đẹp Mỹ n&agrave;y cũng gặp sự cố lộ &quot;v&ugrave;ng cấm địa&quot; v&igrave; chiếc v&aacute;y qu&aacute; t&aacute;o bạo.&nbsp; Sau đ&oacute; c&ocirc; n&agrave;ng đ&atilde; phải l&ecirc;n tiếng v&igrave; tai nạn trang phục n&agrave;y. Thực tế đ&acirc;y l&agrave; kiểu trang phục rất kh&oacute; mặc. Để mặc đầm hở h&ocirc;ng &quot;đ&uacute;ng điệu&quot;, người mặc thường n&ecirc;n d&ugrave;ng băng d&iacute;nh chuy&ecirc;n dụng cho quần &aacute;o v&agrave; nội y dạng d&aacute;n hoặc nội y chữ U.&nbsp;</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; loạt v&aacute;y xẻ qu&aacute; cao của mỹ nh&acirc;n thế giới. Kh&ocirc;ng &iacute;t người đẹp phải loay hoay che chắn v&igrave; tr&oacute;t diện những bộ đầm qu&aacute; đỗi sexy:</p>\r\n', '1506339936-150633902488253-439946.jpg', '2017-09-17 06:37:45', 0),
	(15, 2, 'Sri Lanka: Khám người có dáng lạ, sốc khi thấy thứ trong ruột', '<p>C&aacute;c nh&agrave; chức tr&aacute;ch Sri Lanka vừa bắt giữ một người đ&agrave;n &ocirc;ng bị c&aacute;o buộc bu&ocirc;n lậu v&agrave;ng v&agrave; đồ trang sức nặng tới 1 kg.</p>\r\n\r\n<p>Theo BBC, c&aacute;c quan chức hải quan đ&atilde; t&igrave;m thấy 904 gram v&agrave;ng, trị gi&aacute; khoảng 4,5 triệu rupee Sri Lanka (670 triệu đồng) b&ecirc;n trong trực tr&agrave;ng của người đ&agrave;n &ocirc;ng.</p>\r\n\r\n<p>Kẻ t&igrave;nh nghi 45 tuổi người Sri Lanka đang tr&ecirc;n đường tới Ấn Độ nhưng bị bắt giữ tại s&acirc;n bay quốc tế ở Colombo &ndash; thủ đ&ocirc; của Sri Lanka.</p>\r\n', '1506335999-150633136139508-vang.jpg', '2017-09-17 06:37:45', 0),
	(16, 4, 'Tỷ phú Mark Cuban: Đừng mong giàu nhờ tiền tiết kiệm', '<p>Tuy nhi&ecirc;n, tỷ ph&uacute; Mark Cuban lại c&oacute; quan điểm ho&agrave;n to&agrave;n kh&aacute;c. Theo &ocirc;ng, chỉ tiết kiệm th&ocirc;i th&igrave; chưa đủ để bạn trở n&ecirc;n gi&agrave;u c&oacute;.</p>\r\n\r\n<p>&ldquo;Bạn c&oacute; thể kiếm 1 triệu USD nhờ việc tiết kiệm. Nhưng h&atilde;y tưởng tượng bạn sẽ phải nghi&ecirc;m khắc với bản th&acirc;n m&igrave;nh ra sao để l&agrave;m được điều đ&oacute;. T&ocirc;i thừa nhận rằng việc tiết kiệm gi&uacute;p bạn &iacute;t phải đối mặt với rủi ro hơn, nhưng x&eacute;t về mặt chiến lược, đ&acirc;y kh&ocirc;ng hẳn l&agrave; phương thức đ&uacute;ng đắn để l&agrave;m gi&agrave;u&rdquo; &ndash; Mark Cuban nhận định.</p>\r\n\r\n<p>Theo &ocirc;ng, thay v&igrave; tiết kiệm tiền, bạn h&atilde;y d&ugrave;ng số tiền đ&oacute; để đầu tư, thu lợi nhuận. Một khoản tiền đầu tư nhỏ ở thời điểm hiện tại c&oacute; thể gi&uacute;p bạn nhận lại số tiền l&atilde;i lớn hơn gấp nhiều lần trong tương lai. &nbsp;</p>\r\n\r\n<p>Quan điểm của Mark Cuban đ&atilde; khiến nhiều người thay đổi tư duy về phương ph&aacute;p l&agrave;m gi&agrave;u. Trước đ&oacute;, trang Bankrate.com đ&atilde; thực hiện một cuộc khảo s&aacute;t tr&ecirc;n 1000 người Mỹ, đặt ra c&acirc;u hỏi: &ldquo;Nếu c&oacute; một khoản tiền lớn m&agrave; bạn biết chắc rằng m&igrave;nh sẽ kh&ocirc;ng cần d&ugrave;ng đến ch&uacute;ng trong khoảng 10 năm nữa, bạn sẽ l&agrave;m g&igrave;?&rdquo;.</p>\r\n\r\n<p>28% người tham gia chọn mua bất động sản. 23% muốn gửi tiền tiết kiệm v&agrave;o c&aacute;c ng&acirc;n h&agrave;ng uy t&iacute;n, đưa ra mức l&atilde;i suất cao. Trong khi đ&oacute;, đầu tư&nbsp;<a href="http://www.24h.com.vn/tin-chung-khoan-c161e3864.html">chứng kho&aacute;n</a>&nbsp;xếp thứ 3 với 17% lượt b&igrave;nh chọn.</p>\r\n\r\n<p>Nhưng việc mua nh&agrave; hay gửi tiền tiết kiệm kh&ocirc;ng hẳn l&agrave; c&aacute;ch tốt nhất để tối đa h&oacute;a lợi nhuận trong một thời gian d&agrave;i, chuy&ecirc;n vi&ecirc;n&nbsp;<a href="http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html">t&agrave;i ch&iacute;nh</a>&nbsp;của Bankrate nhận định.</p>\r\n\r\n<p>Một nghi&ecirc;n cứu từ trường Đại học thương mại London chỉ ra rằng, từ năm 1900 đến 2011, gi&aacute; bất động sản kh&ocirc;ng c&oacute; nhiều biến động, tăng trưởng khoảng 1,3% mỗi năm. Trong khi đ&oacute;, nếu đầu tư v&agrave;o chứng kho&aacute;n, bạn sẽ thu lại số lợi nhuận gấp 4 lần.</p>\r\n', '1506335531-15063338402604-mark-cuban-01.jpg', '2017-09-17 06:37:45', 0),
	(17, 2, 'Mùa đông châu Âu lạnh nhất trong 100 năm qua, VN có ảnh hưởng?', '<p>Mới đ&acirc;y, c&aacute;c chuy&ecirc;n gia thời tiết ở ch&acirc;u &Acirc;u dự b&aacute;o, m&ugrave;a đ&ocirc;ng năm 2017 tại ch&acirc;u &Acirc;u c&oacute; thể sẽ l&agrave; m&ugrave;a đ&ocirc;ng lạnh nhất trong v&ograve;ng hơn 100 năm trở lại đ&acirc;y. Thậm ch&iacute; ngay tại thời điểm cuối th&aacute;ng 9/2017, nhiệt độ tại Ireland c&oacute; thể hạ xuống dưới 0 độ C, đ&acirc;y l&agrave; một điều rất bất thường.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n của hiện tượng n&agrave;y kh&ocirc;ng phải l&agrave; do Tr&aacute;i Đất n&oacute;ng l&ecirc;n, m&agrave; l&agrave; do Tr&aacute;i Đất bắt đầu v&agrave;o một chu kỳ thời tiết mới. M&ugrave;a đ&ocirc;ng 2017, hoạt động của Mặt Trời sẽ giảm khiến cho m&ugrave;a đ&ocirc;ng trở n&ecirc;n lạnh hơn.</p>\r\n\r\n<p>Trong những năm sắp tới, m&ugrave;a đ&ocirc;ng ở ch&acirc;u &Acirc;u mưa sẽ nhiều hơn tuyết rơi nhưng sương gi&aacute; mới l&agrave; điều nguy hiểm nhất. Từ th&aacute;ng 11/2017 c&oacute; thể sẽ rất lạnh v&agrave; đến th&aacute;ng 12/2017 nhiệt độ sẽ li&ecirc;n tục ở mức &acirc;m 5 độ C.</p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia nhận định, kh&ocirc;ng chỉ c&aacute;c quốc gia ch&acirc;u &Acirc;u m&agrave; kể cả c&aacute;c quốc gia ch&acirc;u &Aacute; sẽ phải đối mặt với m&ugrave;a đ&ocirc;ng lạnh gi&aacute;, thậm ch&iacute; cả c&aacute;c quốc gia trong nhiều thập kỷ qua chưa hề đối mặt với m&ugrave;a đ&ocirc;ng với nhiệt độ rất thấp.</p>\r\n\r\n<p>Th&ocirc;ng tin n&agrave;y đang khiến người d&acirc;n Việt Nam đặc biệt lo lắng. Nếu ch&acirc;u &Acirc;u lạnh nhất trong v&ograve;ng 100 năm qua th&igrave; liệu thời tiết Việt Nam trong m&ugrave;a đ&ocirc;ng 2017 c&oacute; phải lạnh nhất?</p>\r\n\r\n<p>Về vấn đề n&agrave;y, chiều 25/9, &ocirc;ng Đặng Vũ Tuấn Sơn &ndash; Chủ tịch Hội Thi&ecirc;n văn học trẻ Việt Nam cho biết, hiện &ocirc;ng chưa nghe n&oacute;i đến bất cứ nghi&ecirc;n cứu n&agrave;o khẳng định m&ugrave;a đ&ocirc;ng ở Việt Nam n&oacute;i ri&ecirc;ng hay ch&acirc;u &Acirc;u n&oacute;i chung l&agrave; lạnh nhất trong mấy chục hay 100 năm trở lại đ&acirc;y.</p>\r\n\r\n<p>&ldquo;Người ta đưa ra dự b&aacute;o m&ugrave;a đ&ocirc;ng năm nay, thời tiết c&oacute; thể sẽ lạnh hơn c&aacute;c năm trước một ch&uacute;t. Tuy nhi&ecirc;n, lạnh đến mức n&agrave;o th&igrave; chưa thể khẳng định hay lạnh giống như quay lại kỷ băng h&agrave; th&igrave; kh&ocirc;ng thể xảy ra được. Đ&oacute; l&agrave; một th&ocirc;ng tin v&ocirc; thưởng v&ocirc; phạt v&agrave; người ta đ&atilde; ph&oacute;ng đại n&oacute; l&ecirc;n như vậy&rdquo;, &ocirc;ng Sơn n&oacute;i.</p>\r\n\r\n<p>Đối với thời tiết ở Việt Nam, &ocirc;ng Sơn khẳng định: &ldquo;M&ugrave;a đ&ocirc;ng ở Việt Nam năm nay sẽ lạnh hơn năm trước&rdquo;.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n của hiện tượng lạnh bất thường n&agrave;y kh&ocirc;ng phải l&agrave; do Tr&aacute;i Đất n&oacute;ng l&ecirc;n, m&agrave; l&agrave; do Tr&aacute;i Đất bắt đầu v&agrave;o một chu kỳ thời tiết mới. Chu kỳ n&agrave;y l&agrave; do sự biến động c&aacute;c d&ograve;ng chảy ở ngo&agrave;i biển v&agrave; đại dương.</p>\r\n\r\n<p>Để t&igrave;m th&ecirc;m l&yacute; do g&acirc;y ra sự giảm nhiệt độ trong m&ugrave;a đ&ocirc;ng, &ocirc;ng Sơn cho rằng, cần c&oacute; th&ecirc;m c&aacute;c quan s&aacute;t v&agrave; ghi nhận trong thời gian d&agrave;i, việc ph&aacute;n đo&aacute;n khi trải qua thực nghiệm sẽ đưa ra được kết quả ch&iacute;nh x&aacute;c hơn.</p>\r\n\r\n<p>&Ocirc;ng Sơn nhấn mạnh rằng, m&ugrave;a đ&ocirc;ng ở Việt Nam năm nay lạnh hơn năm trước nhưng nhiệt độ sẽ kh&ocirc;ng phải qu&aacute; thấp. C&aacute;c tỉnh đồng bằng sẽ kh&ocirc;ng c&oacute; hiện tượng tuyết rơi, trừ một số khu vực miền n&uacute;i ph&iacute;a Bắc c&oacute; thể vẫn c&oacute; tuyết v&agrave;o những giai đoạn lạnh nhất.</p>\r\n\r\n<p>Ngo&agrave;i ra, hiện tượng sương gi&aacute; (sương muối) sẽ diễn ra thường xuy&ecirc;n hơn, phổ biến ở c&aacute;c tỉnh miền Bắc v&agrave;o thời gian lạnh nhất trong năm (thường l&agrave; th&aacute;ng 12 hoặc th&aacute;ng 1).</p>\r\n', '1506341835-150634099981807-dt.jpg', '2017-09-17 06:37:45', 0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table webtintuc.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table webtintuc.user: ~8 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `permission`, `username`, `password`, `email`, `createdate`, `del_flag`) VALUES
	(7, 1, 'nguyentricong', '25f9e794323b453885f5181f1b624d0b', 'nguyentricong24@gmail.com', '2017-09-10 08:37:24', 0),
	(8, 0, 'acb', 'e10adc3949ba59abbe56e057f20f883e', 'acb@gmail.com', '2017-09-10 08:41:30', 0),
	(9, 0, 'dsada', 'e10adc3949ba59abbe56e057f20f883e', 'aaaa@gmail.com', '2017-09-10 09:09:19', 0),
	(10, 0, 'test', '25f9e794323b453885f5181f1b624d0b', 'test@gmail.com', '2017-09-10 09:10:16', 0),
	(11, 0, 'adasdsada', '25f9e794323b453885f5181f1b624d0b', 'dsada@gmail.com', '2017-09-10 09:10:54', 0),
	(12, 0, 'aaaaaa', '25f9e794323b453885f5181f1b624d0b', 'aaa@gmail.com', '2017-09-10 09:12:00', 0),
	(13, 0, 'kkkk', '25f9e794323b453885f5181f1b624d0b', 'asdasd@gmail.com', '2017-09-10 09:12:51', 0),
	(14, 0, 'asdsadas', 'e10adc3949ba59abbe56e057f20f883e', 'dsadas@gmail.com', '2017-09-10 09:13:16', 0),
	(15, 0, 'cong', 'ca239895db3465d563b933262974e5c0', 'dsada@gmail.com', '2017-09-10 09:14:53', 0),
	(16, 0, 'test123', '25f9e794323b453885f5181f1b624d0b', 'test123@gmail.com', '2017-09-10 09:47:45', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;