-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2020 lúc 12:44 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mvcnews`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Tin hoạt động SXKD'),
(2, 'Bưu chính quốc tế'),
(3, 'Hoạt động cộng đồng'),
(4, 'Gương BC điển hình'),
(5, 'Công nghệ bưu chính'),
(6, 'Góc nhìn quản lý'),
(15, 'Chuyên mục mới 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `new_id` int(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `content`, `new_id`, `created`) VALUES
(2, 'Le Huy Hung', 'hunglh89@gmail.com', 'TEST COMMENT', 2, '0000-00-00 00:00:00'),
(3, 'Le Huy Hung', 'hunglh89@gmail.com', 'TEST COMMENT', 10, '0000-00-00 00:00:00'),
(4, 'Nguyen Thuy Linh', 'linhnt90@gmail.com', 'TEST COMMENT', 2, '0000-00-00 00:00:00'),
(5, 'Nguyen Thuy Linh', 'linhnt90@gmail.com', 'TEST COMMENT', 10, '0000-00-00 00:00:00'),
(6, 'NGUYEN HOANG HA', 'hahh@gmail.com', 'TEST', 10, '2020-07-20 14:32:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_modified` datetime DEFAULT NULL,
  `highlights` tinyint(4) NOT NULL DEFAULT 0,
  `category_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `intro`, `content`, `image`, `created_modified`, `highlights`, `category_id`) VALUES
(2, 'Bưu điện tỉnh Hà Nam: năng suất lao động tăng 20% trong năm 2013', 'Ngày 13/01/2014, Bưu điện tỉnh Hà Nam tổ chức Hội nghị Tổng kết công tác năm 2013 và triển khai kế hoạch năm 2014. Ông Phạm Sỹ Lợi - Phó Chủ tịch UBND tỉnh Hà Nam; bà Đinh Thị Yến - Bí thư Đảng ủy...', '<p><strong>Ngày 13/01/2014, Bưu điện tỉnh Hà Nam tổ chức Hội nghị Tổng kết công tác năm 2013 và triển khai kế hoạch năm 2014. Ông Phạm Sỹ Lợi - Phó Chủ tịch UBND tỉnh Hà Nam; bà Đinh Thị Yến - Bí thư Đảng ủy...</strong></p>\r\n', '21232f297a57a5a743894a0e4a801fc3_1390878453.jpg', '2014-01-28 10:07:33', 1, 1),
(3, 'Tổ chức dâng hiệu, truy điệu, an táng hài cốt Liệt sỹ Ngành Bưu điện và khánh thành nhà Truyền thống Ban Giao bưu vận và Ban Thông tin liên lạc Trung ương Cục miền Nam', 'Ngày 18/01/2014, tại Nghĩa trang liệt sỹ Giao bưu - Thông tin R, tỉnh Tây Ninh đã diễn ra lễ dâng hương, truy điệu, an táng hài cốt của 3 liệt sỹ thuộc ngành Bưu điện anh dũng hy sinh trong các cuộc...', '<p><strong>Ngày 18/01/2014, tại Nghĩa trang liệt sỹ Giao bưu - Thông tin R, tỉnh Tây Ninh đã diễn ra lễ dâng hương, truy điệu, an táng hài cốt của 3 liệt sỹ thuộc ngành Bưu điện anh dũng hy sinh trong các cuộc...</strong></p>\r\n', '21232f297a57a5a743894a0e4a801fc3_1390878495.jpg', '2014-01-28 10:08:15', 1, 6),
(4, 'Bưu điện tỉnh Lai Châu: phấn đấu tăng trưởng 17% trong năm 2014', 'Ngày 14/1/2013, Bưu điện tỉnh Lai Châu đã tổ chức hội nghị tổng kết công tác năm 2013 và triển khai nhiệm vụ năm 2014.', '<p><strong>Ngày 14/1/2013, Bưu điện tỉnh Lai Châu đã tổ chức hội nghị tổng kết công tác năm 2013 và triển khai nhiệm vụ năm 2014.</strong></p>\r\n', '21232f297a57a5a743894a0e4a801fc3_1390878533.jpg', '2014-01-28 10:08:53', 1, 1),
(5, 'Bưu điện tỉnh Cao Bằng và mục tiêu tăng trưởng trên 21% trong năm 2014', 'Ngày 17/01/2014. Bưu điện tỉnh đã tổ chức hội nghị tổng kết sản xuất kinh doanh năm 2013 và triển khai kế hoạch năm 2014. Ông Nguyễn Quốc Vinh, Phó Tổng Giám đốc Tổng công ty Bưu điện Việt Nam; đại diện Lãnh đạo Sở Thông tin và Truyền thông, Liên đoàn lao động tỉnh, Đảng ủy khối doanh nghiệp tỉnh đã tới dự hội nghị.', '<p><strong>Ngày 17/01/2014. Bưu điện tỉnh đã tổ chức hội nghị tổng kết sản xuất kinh doanh năm 2013 và triển khai kế hoạch năm 2014. Ông Nguyễn Quốc Vinh, Phó Tổng Giám đốc Tổng công ty Bưu điện Việt Nam; đại diện Lãnh đạo Sở Thông tin và Truyền thông, Liên đoàn lao động tỉnh, Đảng ủy khối doanh nghiệp tỉnh đã tới dự hội nghị.</strong></p>\r\n', '21232f297a57a5a743894a0e4a801fc3_1390880042.jpg', '2014-01-28 10:34:08', 1, 1),
(6, 'Cuộc họp cấp cao giữa Bưu điện Việt Nam và Bưu chính Thái Lan', 'Trong các ngày 22-24/2013, đoàn cấp cao Bưu chính Thái Lan do bà Anusra Chittmittrapap – Tổng Giám đốc Bưu chính Thái Lan đã thăm và làm việc với Tổng công ty Bưu điện Việt Nam.', '<p><strong>Trong các ngày 22-24/2013, đoàn cấp cao Bưu chính Thái Lan do bà Anusra Chittmittrapap – Tổng Giám đốc Bưu chính Thái Lan đã thăm và làm việc với Tổng công ty Bưu điện Việt Nam.</strong></p>\r\n', '21232f297a57a5a743894a0e4a801fc3_1390882910.jpg', '2014-01-28 11:21:50', 1, 6),
(7, 'Bông hồng phố Núi', 'Mọi người biết tới Chị là một doanh nhân trưởng thành từ một nhà giáo. 32 năm công tác liên tục, thành đạt trong sự nghiệp và có cuộc sống gia đình hạnh phúc, Chị xứng đáng với danh hiệu được tôn vinh: “Doanh nhân tiêu biểu”,  “Phụ nữ hai giỏi”.', '<p><strong>Mọi người biết tới Chị là một doanh nhân trưởng thành từ một nhà giáo. 32 năm công tác liên tục, thành đạt trong sự nghiệp và có cuộc sống gia đình hạnh phúc, Chị xứng đáng với danh hiệu được tôn vinh: “Doanh nhân tiêu biểu”,  “Phụ nữ hai giỏi”.</strong></p>\r\n', '', '2014-01-28 11:24:57', 0, 4),
(8, 'Họa sỹ Đỗ Lệnh Tuấn - Cuộc đời và những con tem', 'Với Anh, nghệ thuật không có điểm dừng, người sáng tác phấn đấu bao nhiêu cũng chưa đủ. Anh đi nhiều, đọc nhiều, hiểu nhiều và đặc biệt là rất nhiều ý tưởng cho những bộ Tem của mình.', '<p>Với Anh, nghệ thuật không có điểm dừng, người sáng tác phấn đấu bao nhiêu cũng chưa đủ. Anh đi nhiều, đọc nhiều, hiểu nhiều và đặc biệt là rất nhiều ý tưởng cho những bộ Tem của mình.</p>\r\n', '', '2014-01-28 11:25:12', 0, 1),
(9, ' Ban Giao bưu vận và Ban Thông tin liên lạc Trung ương Cục miền Nam được phong tặng danh hiệu Anh hùng Lực lượng Vũ trang nhân dân', 'Ngày 15/8, tại TP. Hồ Chí Minh, Bộ Thông tin và Truyền thông và Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT) tổ chức Lễ đón nhận danh hiệu Anh hùng Lực lượng Vũ trang nhân dân cho Ban Giao bưu vận và Ban Thông tin liên lạc Trung ương Cục miền Nam.\r\n ', '<p><strong>Ngày 15/8, tại TP. Hồ Chí Minh, Bộ Thông tin và Truyền thông và Tập đoàn Bưu chính Viễn thông Việt Nam (VNPT) tổ chức Lễ đón nhận danh hiệu Anh hùng Lực lượng Vũ trang nhân dân cho Ban Giao bưu vận và Ban Thông tin liên lạc Trung ương Cục miền Nam.<br />\r\n </strong></p>\r\n', '', '2014-01-28 11:25:29', 0, 1),
(10, 'Người kết nối sức mạnh tập thể', 'Tích cực các hoạt động hưởng ứng chào mừng 65 năm ngày Chủ tịch Hồ Chí Minh ra lời kêu gọi thi đua ái quốc - Ngày truyền thống thi đua yêu nước (11/6/1948 -11/6/2013)', '<p><strong>Tích cực các hoạt động hưởng ứng chào mừng 65 năm ngày Chủ tịch Hồ Chí Minh ra lời kêu gọi thi đua ái quốc - Ngày truyền thống thi đua yêu nước (11/6/1948 -11/6/2013)</strong></p>\r\n', '', '2014-01-28 11:25:58', 0, 1),
(11, 'Người phụ nữ đam mê với nghề bán Bảo hiểm', 'Tổng kết năm 2012, Nguyễn Thị Trinh - nhân viên bán hàng dịch vụ bảo hiểm của Bưu Điện Bình Chánh - là người dẫn đầu Bưu Điện TP. Hồ Chí Minh về công tác bán bảo hiểm đạt doanh thu cao với tổng số tiền trên 2,54 tỷ đồng.', '<p><strong>Tổng kết năm 2012, Nguyễn Thị Trinh - nhân viên bán hàng dịch vụ bảo hiểm của Bưu Điện Bình Chánh - là người dẫn đầu Bưu Điện TP. Hồ Chí Minh về công tác bán bảo hiểm đạt doanh thu cao với tổng số tiền trên 2,54 tỷ đồng.</strong></p>\r\n', '', '2014-01-28 11:26:13', 0, 1),
(17, 'Bưu điện tỉnh Hòa Bình: Vững vàng sau 6 năm chia tách', 'Năm 2008 là thời điểm lịch sử đánh dấu một chặng đường khó khăn với những người làm bưu chính. Vừa thực hiện các nhiệm vụ của quá trình chia tách vừa phải tìm...', '<p><strong>Năm 2008 là thời điểm lịch sử đánh dấu một chặng đường khó khăn với những người làm bưu chính. Vừa thực hiện các nhiệm vụ của quá trình chia tách vừa phải tìm...</strong></p>\r\n', 'bca1b0142f05ca640ffa0cbcd207ca3c.jpg', '2014-02-07 11:14:07', 1, 6),
(18, 'Bộ trưởng Bộ Thông tin, Văn hóa và Du lịch Lào thăm và làm việc tại Việt Nam', 'Ngày 28.1.2014, Đoàn Bộ Thông tin, Văn hóa và Du lịch Lào do Bộ trưởng Bosengkham Vongdara dẫn đầu đã thăm và làm việc tại Việt Nam.', '<p><strong>Ngày 28.1.2014, Đoàn Bộ Thông tin, Văn hóa và Du lịch Lào do Bộ trưởng Bosengkham Vongdara dẫn đầu đã thăm và làm việc tại Việt Nam.</strong></p>\r\n', '3eefdee2507c63c1327b1ff4fb753285.jpg', '2014-02-07 11:14:43', 1, 2),
(19, 'Năm Giáp Ngọ nói chuyện về... Ngựa', 'Trong số mười hai con vật biểu tượng của mười hai con giáp là: chuột, trâu, hổ, mèo, rồng, rắn, ngựa, dê, khỉ, gà, chó, lợn thì con ngựa - biểu tượng của năm Ngọ – là một trong vài con vật được con người coi trọng và sử dụng nhiều nhất.', '<p><strong>Trong số mười hai con vật biểu tượng của mười hai con giáp là: chuột, trâu, hổ, mèo, rồng, rắn, ngựa, dê, khỉ, gà, chó, lợn thì con ngựa - biểu tượng của năm Ngọ – là một trong vài con vật được con người coi trọng và sử dụng nhiều nhất.</strong></p>\r\n', '8bb76302f180e8450761a2e99f91e6a4.jpg', '2014-02-07 11:15:44', 0, 3),
(20, 'Tòa nhà Bưu điện Thành phố Hồ Chí Minh tráng lệ với hệ thống chiếu sáng mỹ thuật', 'Tối qua, Chủ nhật, 22/9, Ủy ban Nhân dân TP Hồ Chí Minh đã tổ chức lễ khánh thành công trình chiếu sáng mỹ thuật bưu điện thành phố. Đây là công trình hợp tác giữa Công ty Chiếu sáng thành phố Lyon - Pháp và UBND thành phố Hồ Chí Minh với tổng kinh phí đầu tư hơn 4 tỷ đồng, nhằm góp phần bảo tồn và phát huy giá trị di sản kiến trúc của thành phố. ', '<p><strong>Tối qua, Chủ nhật, 22/9, Ủy ban Nhân dân TP Hồ Chí Minh đã tổ chức lễ khánh thành công trình chiếu sáng mỹ thuật bưu điện thành phố. Đây là công trình hợp tác giữa Công ty Chiếu sáng thành phố Lyon - Pháp và UBND thành phố Hồ Chí Minh với tổng kinh phí đầu tư hơn 4 tỷ đồng, nhằm góp phần bảo tồn và phát huy giá trị di sản kiến trúc của thành phố. </strong></p>\r\n', 'd65cf47ce20032563a415ea27f2c0eec.jpg', '2014-02-07 11:17:54', 1, 5),
(22, 'Trả lại ví tiền bị rơi cho cán bộ hưu trí', 'Ngày 09/12/2013, tại Bàn 2 - điểm chi trả lương hưu và trợ cấp Bảo hiểm xã hội của Nhà Văn hóa phường Tân Thịnh, thành phố Thái Nguyên, nhân viên chi...', '<p><strong>Ngày 09/12/2013, tại Bàn 2 - điểm chi trả lương hưu và trợ cấp Bảo hiểm xã hội của Nhà Văn hóa phường Tân Thịnh, thành phố Thái Nguyên, nhân viên chi...</strong></p>\r\n', '', '2014-02-07 11:25:03', 1, 4),
(23, 'Nữ giao dịch viên được khách hàng gửi cả niềm tin', 'Triển khai cuộc vận động \"Nâng cao chất lượng các dịch vụ Bưu chính\" và kế hoạch rà soát tổ chức sản xuất của Tổng công ty Bưu điện Việt Nam, Nhóm công tác thực tế của Tổng công ty đã thực hiện khảo sát ở một số khu vực. Trong các buổi làm việc, Nhóm đã gặp gỡ, trao đổi với anh chị em lao động trực tiếp, mỗi người một vẻ, nhưng ở họ luôn toát lên ý chí, nghị lực vượt khó và đặc biệt là sự tận tụy và sáng tạo trong công việc.  ', '<p><strong>Triển khai cuộc vận động \"Nâng cao chất lượng các dịch vụ Bưu chính\" và kế hoạch rà soát tổ chức sản xuất của Tổng công ty Bưu điện Việt Nam, Nhóm công tác thực tế của Tổng công ty đã thực hiện khảo sát ở một số khu vực. Trong các buổi làm việc, Nhóm đã gặp gỡ, trao đổi với anh chị em lao động trực tiếp, mỗi người một vẻ, nhưng ở họ luôn toát lên ý chí, nghị lực vượt khó và đặc biệt là sự tận tụy và sáng tạo trong công việc.  </strong></p>\r\n', '30500b2b52d94c345d958bc4b8f42302.jpg', '2014-02-07 11:26:13', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`) VALUES
(1, 'myadmin2014', '123', 'myadmin2014@mvc.vn', 1),
(2, 'admin', '123', 'admin@mvc.vn', 1),
(3, 'myuser001', 'abc', 'user1@mvc.vn', 2),
(7, 'myuser002', '321456789', 'user2@mvc.vn', 2),
(8, 'myuser00303up', '123456789', 'user303@mvc.vn', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
