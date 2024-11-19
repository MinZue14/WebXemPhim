-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for website_film
CREATE DATABASE IF NOT EXISTS `website_film` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `website_film`;

-- Dumping structure for table website_film.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table website_film.admin: ~1 rows (approximately)
DELETE FROM `admin`;
INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pass`) VALUES
	(1, 'cham', '123');

-- Dumping structure for table website_film.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(70) NOT NULL AUTO_INCREMENT,
  `name_menu` varchar(255) DEFAULT NULL,
  `parent_id_menu` int(50) DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `menu_fbik_1` (`parent_id_menu`),
  CONSTRAINT `menu_fbik_1` FOREIGN KEY (`parent_id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table website_film.menu: ~51 rows (approximately)
DELETE FROM `menu`;
INSERT INTO `menu` (`id_menu`, `name_menu`, `parent_id_menu`) VALUES
	(1, 'XEM PHIM', NULL),
	(2, 'NĂM PHÁT HÀNH', NULL),
	(3, 'THỂ LOẠI', NULL),
	(4, 'TOP PHIM', NULL),
	(5, 'QUỐC GIA', NULL),
	(6, 'Năm 2023', 2),
	(7, 'Năm 2022', 2),
	(8, 'Năm 2021', 2),
	(9, 'Năm 2020', 2),
	(10, 'Năm 2019', 2),
	(11, 'Năm 2018', 2),
	(12, 'Năm 2017', 2),
	(13, 'Năm 2016', 2),
	(14, 'Năm 2015', 2),
	(15, 'Năm 2015', 2),
	(16, 'Năm 2013', 2),
	(17, 'Năm 2012', 2),
	(18, 'Năm 2011', 2),
	(19, 'Năm 2010', 2),
	(20, 'Năm 2009', 2),
	(21, 'Năm 2008', 2),
	(22, 'Bạo Lực', 3),
	(23, 'Bí Ẩn', 3),
	(24, 'Chiến Tranh', 3),
	(25, 'Cổ Trang', 3),
	(26, 'Giả Tưởng', 3),
	(27, 'Gia Đình', 3),
	(28, 'Hài Hước', 3),
	(29, 'Hành Động', 3),
	(30, 'Hoạt Hình', 3),
	(31, 'Học Đường', 3),
	(32, 'Khoa Học', 3),
	(33, 'Kinh Dị', 3),
	(34, 'Lãng Mạn', 3),
	(35, 'Phiêu Lưu', 3),
	(36, 'Tâm Lý', 3),
	(37, 'Trinh Thám', 3),
	(38, 'Võ Thuật', 3),
	(39, 'Viễn Tưởng', 3),
	(40, 'Vũ Trụ', 3),
	(41, 'Theo ngày', 4),
	(42, 'Theo tháng', 4),
	(43, 'Theo năm', 4),
	(44, 'Hàn Quốc', 5),
	(45, 'Hồng Kong', 5),
	(46, 'Mỹ', 5),
	(47, 'Nhật Bản', 5),
	(48, 'Pháp', 5),
	(49, 'Thái Lan', 5),
	(50, 'Trung Quốc', 5),
	(51, 'Việt Nam', 5);

-- Dumping structure for table website_film.movie
CREATE TABLE IF NOT EXISTS `movie` (
  `id_movie` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `updated_episode` varchar(100) DEFAULT NULL,
  `url_movie` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_movie`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table website_film.movie: ~74 rows (approximately)
DELETE FROM `movie`;
INSERT INTO `movie` (`id_movie`, `name`, `description`, `genre`, `country`, `status`, `release_year`, `director`, `actor_name`, `updated_episode`, `url_movie`) VALUES
	(1, '28 Days', 'Bộ phim hài của Sandra Bullock, nơi cô đóng cùng Viggo Mortensen và Dominic West.', 'Hài Hước, Gia Đình, Hoạt Hình', 'Mỹ', 'Đã phát sóng', 2009, 'Mozart', 'Sandra Bullock, Viggo Mortensen, Dominic West', '5/100', 'https://th.bing.com/th/id/R.1042967fd35f92947fcce581e312dc0a?rik=V%2bEj9V6Dt8JUJg&pid=ImgRaw&r=0'),
	(2, 'A League of Its Own', 'Tom Hanks và Geena Davis đóng vai chính trong bộ phim hài thể thao này kể về hai chị em tham gia giải bóng chày chuyên nghiệp nữ đầu tiên.', 'Hài, Thể thao', 'Pháp', 'Đã phát sóng', 2009, 'Jonás Cuarón', 'Tom Hanks, Geena Davis', 'MOVIE', 'https://th.bing.com/th/id/OIP.di5vRvkJoxfD4r9d2Rt2SQAAAA?pid=ImgDet&rs=1'),
	(3, 'American Hustle', 'Một dàn diễn viên khổng lồ cùng nhau tham gia bộ phim này dựa trên câu chuyện có thật về một kẻ lừa đảo và người tình của anh ta hỗ trợ một đặc vụ FBI vạch trần tham nhũng chính trị.', 'Hình sự, Tâm lý', 'Mỹ', 'Đã phát sóng', 2013, 'Peter Berg', 'Burt Reynolds', 'FULL', 'https://th.bing.com/th/id/R.2a78cee9cb3db0a2684ab23d6a5a1d71?rik=dGBzl%2b62cHzJ%2fQ&pid=ImgRaw&r=0'),
	(4, 'Battleship (2012)', 'Peter Berg đạo diễn phim hành động khoa học viễn tưởng.', 'Hành động, Khoa học viễn tưởng', 'Mỹ', 'Đã phát sóng', 2012, 'Peter Berg', 'Burt Reynolds', '12/20', 'https://www.themoviedb.org/t/p/original/zkw0UOWRFOknmb0UjGskNJ5BdGZ.jpg'),
	(5, 'Beyblade Burst Quad Drive (Phần 1)', 'Loạt phim hoạt hình dành cho trẻ em.', 'Hoạt hình, Trẻ em', 'Mỹ', 'Đã phát sóng', 2008, 'Peter Berg', 'Burt Reynolds', '5/7', 'https://th.bing.com/th/id/OIP.KhsvM40T3Mf7bycYUxkkWQHaKm?pid=ImgDet&rs=1'),
	(6, 'Những cuộc phiêu lưu của Blippi (Bộ sưu tập 7)', 'Loạt phim người thật đóng dành cho trẻ em do Clayton Grimm đóng vai chính.', 'Người thật, Trẻ em', 'Pháp', 'Chưa phát sóng', 2010, 'Đằng La Vi Chi', 'Clayton Grimm', 'MOVIE', 'https://th.bing.com/th/id/OIP.wCeas4J997whB2druAWrHQHaEc?pid=ImgDet&rs=1'),
	(7, 'Sinh ngày 4 tháng 7 (1989)', 'Phim tiểu sử chiến tranh Tom Cruise của Ron Kovic lấy bối cảnh chiến tranh Việt Nam.', 'Tiểu sử, Chiến tranh', 'Pháp', 'Đã phát sóng', 2023, 'Thục Khách', 'Tom Cruise', 'Đang cập nhật', 'https://th.bing.com/th/id/R.e3cd14297e3e36123151d3b2d13e4da8?rik=Fe4QRoLJDXIJMw&pid=ImgRaw&r=0'),
	(8, 'Cuộc chiến của Charlie Wilson (2007)', 'Tom Hanks, Julia Robers và Philip Seymour Hoffman đóng vai chính trong bộ phim được đề cử giải Oscar này.', 'Chính kịch, Lịch sử', 'Mỹ', 'Đã phát sóng', 2007, 'Jonás Cuarón', 'Tom Hanks, Julia Roberts, Philip Seymour Hoffman', '12/20', 'https://th.bing.com/th/id/OIP.JuLcE9XLqzSB3_HA77TpzwHaLH?pid=ImgDet&w=826&h=1239&rs=1'),
	(9, 'Kẻ hủy diệt Conan (1984)', 'Arnold Schwarzenegger đóng vai Conan, người dẫn đầu một nhóm phiêu lưu tìm kiếm công chúa.', 'Hành động, Phiêu lưu', 'Mỹ', 'Đã phát sóng', 2012, 'Cửu Lộ Phi Hương', 'Arnold Schwarzenegger', 'MOVIE', 'https://th.bing.com/th/id/OIP.z1k9RfFWFfRt3yq4ZOKk3wHaLH?pid=ImgDet&w=480&h=720&rs=1'),
	(10, 'Tiến sĩ Seuss \'Con mèo trong chiếc mũ (2003)', 'Mike Myers đóng vai chính trong bản chuyển thể Tiến sĩ Seuss này.', 'Hoạt hình, Gia đình', 'Mỹ', 'Đã phát sóng', 2012, 'Đồng Hoa', 'Mike Myers', 'FULL', 'https://i.pinimg.com/736x/df/0e/0f/df0e0f97a5577d25c19ee32611916451--dr-seuss-good-movies.jpg'),
	(11, 'Tiến sĩ Seuss Con mèo trong chiếc mũ', 'Mike Myers đóng vai chính trong bản chuyển thể Tiến sĩ Seuss này.', 'Hoạt hình, Gia đình', 'Pháp', 'Đã phát sóng', 2003, 'Đồng Hoa', 'Mike Myers', 'FULL', 'https://pictures.abebooks.com/isbn/9780007128341-es.jpg'),
	(12, 'Dr. Seuss’ The Lorax', 'Phim hoạt hình của Illumination lấy bối cảnh thế giới The Lorax.', 'Hoạt hình', 'Mỹ', 'Đã phát sóng', 2012, 'Peter Berg', 'Burt Reynolds', 'MOVIE', 'https://th.bing.com/th/id/OIP.KBKfjY4Y9e9mVxjkN9gk1gHaLH?pid=ImgDet&rs=1'),
	(13, 'Friday Night Lights', 'Peter Berg đạo diễn phim thể thao hành động dựa trên cuốn sách của H.G. Bissinger.', 'Thể thao', 'Mỹ', 'Chưa phát sóng', 2004, 'Peter Berg', ' Lee Je Hoon, Kim Eui Sung, Pyo Ye Jin, Jang Hyuk Jin', 'MOVIE', 'https://th.bing.com/th/id/OIP.njSTozfkKxR60gJ8nbPTHAAAAA?pid=ImgDet&w=473&h=640&rs=1'),
	(14, 'Hatfields & McCoys', 'Sê-ri lịch sử của Kênh phương Tây với sự tham gia của Kevin Costner và Bill Paxton.', 'Lịch sử', 'Việt Nam', 'Đã phát sóng', 2009, 'Lí Nam', 'Kevin Costner, Bill Paxton', 'FULL', 'https://68.media.tumblr.com/tumblr_m4x8bhwS1Q1qcby54o1_500.jpg'),
	(15, 'Hoarders', 'Loạt phim thực tế chán nản.', 'Thực tế', 'Mỹ', 'Đã phát sóng', 2008, 'Spike Lee', 'Burt Reynolds', '12/20', 'https://www.tvseries.video/getimg/344/861570/300.jpg'),
	(16, 'Hotel Transylvania', 'Tất cả quái vật yêu thích của bạn từ nền văn hóa đại chúng cùng hội tụ trong bộ phim hoạt hình hài hước này của Sony Animation. Có giọng nói của Adam Sandler, Kevin James và Andy Samberg.', 'Hoạt hình', 'Thái Lan', 'Đã phát sóng', 2012, 'Jonás Cuarón', 'Adam Sandler, Kevin James, Andy Samberg', 'MOVIE', 'https://th.bing.com/th/id/OIP.90z210oplhy-nxKEwoZUUwHaJ4?pid=ImgDet&w=1920&h=2560&rs=1'),
	(17, 'How to Lose a Guy in 10 Days', 'Phim hài lãng mạn của Paramount với sự tham gia của Kate Hudson và Matthew McConaughey.', 'Hài lãng mạn', 'Việt Nam', 'Đã phát sóng', 2003, 'Đằng La Vi Chi', 'Kate Hudson, Matthew McConaughey', 'FULL', 'https://th.bing.com/th/id/R.3db305edb02bb6b268e0d5999fe232d3?rik=sUuSvnHmOjBrSA&pid=ImgRaw&r=0'),
	(18, 'Bí Kíp Luyện Rồng', 'Phim hoạt hình mở đầu cho loạt phim Bí Kíp Luyện Rồng.', 'Hoạt hình', 'Mỹ', 'Chưa phát sóng', 2010, 'Spike Lee', 'Burt Reynolds', '12/15', 'https://th.bing.com/th/id/OIP.dZFyAOq1Ch3BZz4dGQsSBwHaLT?pid=ImgDet&rs=1'),
	(19, 'I, Frankenstein', 'Phim khoa học viễn tưởng với sự tham gia của Aaron Eckhart.', 'Khoa học viễn tưởng', 'Thái Lan', 'Đã phát sóng', 2014, 'Jonás Cuarón', 'Aaron Eckhart', '5/7', 'https://th.bing.com/th/id/R.bacb566908b9a5940dfdbf68336b000d?rik=mxt446BfI2D0CA&pid=ImgRaw&r=0'),
	(20, 'Inception', 'Bộ phim khoa học viễn tưởng bẻ cong giấc mơ hoành tráng của Christopher Nolan.', 'Khoa học viễn tưởng', 'Mỹ', 'Đã phát sóng', 2010, 'Peter Berg', ' Lee Je Hoon, Kim Eui Sung, Pyo Ye Jin, Jang Hyuk Jin', 'MOVIE', 'https://th.bing.com/th/id/OIP.6WES5nhdyXVDPrxHG0vCvgHaKz?pid=ImgDet&rs=1'),
	(21, 'Inside Man (2006)', 'Tâm lý tội phạm của đạo diễn Spike Lee.', 'Tâm lý, Tội phạm', 'Mỹ', 'Chưa phát sóng', 2006, 'Spike Lee', 'Burt Reynolds', '12/15', 'https://th.bing.com/th/id/OIP.mAjFvU5DoRyO5QUnQRRBsAHaLH?pid=ImgDet&rs=1'),
	(22, 'Invisible (Phần 1)', 'Loạt phim kinh dị tội phạm của Nhật Bản.', 'Kinh dị, Tội phạm', 'Nhật Bản', 'Đã phát sóng', 2008, 'Spike Lee', 'Burt Reynolds', 'FULL', 'https://th.bing.com/th/id/OIP.Tscc3icTINR7DfnAJBHoOgHaLG?pid=ImgDet&rs=1'),
	(23, 'Marnie (1964)', 'Phim kinh dị tội phạm kinh điển của Alfred Hitchcock.', 'Kinh dị, Tội phạm', 'Hồng Kong', 'Chưa phát sóng', 1964, 'Spike Lee', ' Lee Je Hoon, Kim Eui Sung, Pyo Ye Jin, Jang Hyuk Jin', 'FULL', 'https://image.tmdb.org/t/p/original/x4SXKkgM3V1b7tnnV1Matmw8VhW.jpg'),
	(24, 'Matilda (1996)', 'Phim gia đình do Danny Devito đạo diễn và đóng vai chính chuyển thể từ tiểu thuyết kinh điển của Roald Dahl.', 'Gia đình, Kỳ ảo', 'Hồng Kong', 'Đã phát sóng', 2008, 'Danny Devito', 'Burt Reynolds', 'FULL', 'https://th.bing.com/th/id/R.709056366199804483355b820ad2af78?rik=L5%2f3aYwd7OUUXg&pid=ImgRaw&r=0'),
	(25, 'Norm of the North (2016)', 'Phim truyện hoạt hình kể về một chú gấu bắc cực phải đến thành phố New York để ngăn chặn kế hoạch phát triển nhà ở ở Bắc Cực.', 'Hoạt hình, Gia đình', 'Hồng Kong', 'Chưa phát sóng', 2016, 'Alfred Hitchcock', 'Châu Dã, Trần Minh Hạo', 'FULL', 'https://th.bing.com/th/id/R.ad82be833040c2208905e46a75fdae95?rik=bSUs07y%2f8UFHrg&pid=ImgRaw&r=0'),
	(26, 'Not Another Teen Movie (2001)', 'Phim hài nhại với sự tham gia của Chris Evans.', 'Hài', 'Việt Nam', 'Chưa phát sóng', 2012, 'Đằng La Vi Chi', 'Chris Evans', 'FULL', 'https://th.bing.com/th/id/OIP.9i0RhX3ndCBOi4rH4fHpLgHaNK?pid=ImgDet&w=1240&h=2204&rs=1'),
	(27, 'Over the Hedge (2006)', 'Phim hoạt hình của DreamWorks kể về chú gấu trúc mưu mô đánh lừa một gia đình sinh vật rừng không phù hợp để giúp nó trả nợ thức ăn.', 'Hoạt hình, Gia đình', 'Hồng Kong', 'Đã phát sóng', 2006, 'Alfred Hitchcock', 'Châu Dã, Trần Minh Hạo', 'FULL', 'https://image.tmdb.org/t/p/original/kmwE7w46GVedbOsAtoDCoPZyaiC.jpg'),
	(28, 'Tâm lý (1960)', 'Kinh điển Alfred Hitchcok.', 'Tâm lý', 'Hồng Kong', 'Chưa phát sóng', 2008, 'Alfred Hitchcock', ' Lee Je Hoon, Kim Eui Sung, Pyo Ye Jin, Jang Hyuk Jin', '2/..', 'https://i.pinimg.com/originals/7f/16/3c/7f163c1ce8b61a5b14275fdb32279603.jpg'),
	(29, 'Puss in Boots (2011)', 'Chú Mèo Đi Hia - Puss in Boots (2011) là phim Trước khi Puss gặp Shrek, chàng hiệp sỹ mèo bảnh trai của chúng ta làm một chuyến phiêu lưu rồi nhập đội với quân sư Alexander Trứng Lùn và cô nàng Mèo Con Vuốt Mềm thông thạo đường phố để ăn cắp con ngỗng đẻ trứng vàng nổi tiếng.\r\n', 'Hoạt hình, Gia đình', 'Mỹ\r\n', 'Đã phát sóng', 2011, 'Chris Miller', 'Antonio Banderas Salma Hayek Zach Galifianakis', 'FULL', 'https://cdn.traileraddict.com/content/dreamworks-animation/puss_in_boots-7.jpg'),
	(30, 'Safari (2022)', 'Phim châu Phi của đạo diễn Bill Afwani.', 'Châu Phi', 'Hồng Kong', 'Đã phát sóng', 2008, 'Bill Afwani', 'Châu Dã, Trần Minh Hạo', 'FULL', 'https://th.bing.com/th/id/OIP.88PDxMS6Lalj207ktr8j3AHaLH?pid=ImgDet&rs=1'),
	(31, 'Shark Tale (2004)', 'Khi Mèo Đi Hia biết được rằng anh đã sử dụng 8 trên 9 mạng, anh bắt đầu một cuộc hành trình để đi tìm Điều ước Cuối cùng thần bí và khôi phục các mạng anh đã mất cùng Kitty Softpaws và bạn đồng hành mới của anh là Perro, một chú chó trị liệu đã cải trang thành mèo ở nhà Mama Luna, đồng thời anh cũng phải chạy trốn khỏi những kẻ thù mới đang cố săn lùng anh do danh tiếng của anh sau phần phim thứ nhất.\r\n\r\n', 'Hoạt hình, Hài', 'Pháp', 'Chưa phát sóng', 2004, 'Lí Nam', 'Martin Scorsese, Will Smith', 'FULL', 'https://www.themoviedb.org/t/p/original/octeSDSzUxH6YF7fSqp2zXrHrid.jpg'),
	(32, 'Shrek Forever After (2010)', 'Phần cuối cùng trong bộ ba phim hoạt hình Shrek.', 'Hoạt hình, Hài', 'Hồng Kong', 'Đã phát sóng', 2010, 'Alfred Hitchcock', 'Châu Dã, Trần Minh Hạo', 'FULL', 'https://i.pinimg.com/originals/14/1b/04/141b0412eec2aaaace8df8e4b8aade1b.jpg'),
	(33, 'Smokey and the Bandit (1977)', 'Burt Reynolds đóng vai nhân vật mang tính biểu tượng của Smokey trong phần đầu tiên của loạt phim hài hành động này.', 'Hài, Hành động', 'Pháp', 'Đã phát sóng', 2023, 'Đằng La Vi Chi', 'Burt Reynolds', 'FULL', 'https://image.tmdb.org/t/p/original/vDkVT8DN9kRhir8hK94HkzpPWFU.jpg'),
	(34, 'Smokey and the Bandit II (1980)', 'Tên cướp tiếp tục một cuộc chạy việt dã khác.', 'Hài, Hành động', 'Hồng Kong', 'Đã phát sóng', 2008, 'Chris Miller', 'Fang Yilun Huang Riying Leslie Ma Qiu Shi Lun', 'FULL', 'https://th.bing.com/th/id/OIP.b4l3krpXoaOY-CwH5o1v5AHaLH?pid=ImgDet&rs=1'),
	(35, 'Mo\'Nique: My Name is Mo\'Nique (2023)', 'Bạn nghĩ bạn hiểu Mo\'Nique? Từ việc nhìn chằm chằm giáo viên phân biệt chủng tộc cho đến cảnh báo của bà về tình dục, Mo\'Nique kể hết trong chương trình hài độc thoại đặc biệt này.', 'Hài', 'Hồng Kong', 'Đã phát sóng', 2023, 'Alfred Hitchcock', 'Fang Yilun Huang Riying Leslie Ma Qiu Shi Lun', 'MOVIE', 'https://assets.gadgets360cdn.com/pricee/assets/product/202303/My-Name-Is-MoNique_1679848963.jpg'),
	(36, 'The Signing (Phần 1)', 'Trong chương trình thực tế này, các nghệ sĩ trẻ người Latin phải gây ấn tượng với các huyền thoại âm nhạc như Lex Borrero, Tainy và Rauw Alejandro để ký được hợp đồng đáng mơ ước.\r\n', 'Truyền Hình', 'Việt Nam', 'Chưa phát sóng', 2009, 'Đồng Hoa', 'Rauw Alejandro, Nicki Nicole, Yandel', 'FULL', 'https://th.bing.com/th/id/R.cefe9e9ce63693dc381a419d046aa87e?rik=8%2booOLq7wA5sHQ&pid=ImgRaw&r=0'),
	(37, 'Lewis Capaldi: How I\'m Feeling Now (2023)', 'Bộ phim tài liệu chân thật, hé lộ tất cả này ghi lại hành trình của Lewis Capaldi từ thiếu niên tham vọng có màn trình diễn nổi tiếng đến ngôi sao nhạc pop được đề cử giải Grammy.\r\n', 'Truyền Hình, Tài Liệu', 'Hồng Kong', 'Đã phát sóng', 2023, 'Chris Miller', 'Fang Yilun Huang Riying Leslie Ma Qiu Shi Lun', 'FULL', 'https://th.bing.com/th/id/OIP.vB1QJcr0zWZYBKxn_Xy6uAAAAA?pid=ImgDet&rs=1'),
	(38, 'Andala Rakshasi', 'Gautham, a wealthy man, falls for a woman named Mithuna only to learn that she loves another man. However, a sudden chain of events changes their lives forever.', 'Chính Kịch, Lãng Mạn', 'Hồng Kong', 'Chưa phát sóng', 2008, 'Chris Miller', 'Burt Reynolds', '5/10', 'https://th.bing.com/th/id/OIP.Mvm1Bl3I3-jGx3xqmaH9qgHaJ4?pid=ImgDet&rs=1'),
	(39, 'Beef (Phần 1)', 'Bản gốc Netflix – Phim hài-chính kịch từ A24 Tivi với sự tham gia của Ali Wong và Steven Yeun.', NULL, 'Thái Lan', 'Đã phát sóng', 2018, 'Cửu Lộ Phi Hương', 'Ali Wong, Steven Yeun', 'MOVIE', 'https://th.bing.com/th/id/OIP.zr0NiaMb1K6o4oV7GJTmOAHaKe?pid=ImgDet&rs=1'),
	(40, 'IRL – In Real Love (Phần 1)', 'Đang kiếm tìm tình yêu, bốn người độc thân xoay xở với những thăng trầm của hành trình này qua các kết nối ngoài đời thật và trên mạng. Nhưng họ sẽ chọn tình ảo hay tình thật?\r\n\r\n', 'Lãng Mạn, Tình Cảm', 'Ấn Độ', 'Chưa phát sóng', 2023, 'Chris Miller', 'Arnold Schwarzenegger', 'FULL', 'https://images.indianexpress.com/2023/04/In-Real-Love-Poster.jpg'),
	(41, 'Kamalatho Naa Prayanam (2013)', 'Phim truyền hình Ấn Độ lấy bối cảnh thập niên 1950.', 'Tài Liệu, Chính Kịch', 'Thái Lan', 'Đã phát sóng', 2012, 'Jonás Cuarón', 'Archana,Sivaji,Pavala Syamala', 'MOVIE', 'https://th.bing.com/th/id/OIP.dw6p0H-g5lAxFK1JXAygiQAAAA?pid=ImgDet&w=474&h=692&rs=1'),
	(42, 'The Last Stand (2013)', 'Arnold Schwarzegger đứng đầu bộ phim hành động kinh dị này.', 'Hành động, Kinh dị', 'Mỹ', 'Đã phát sóng', 2013, 'Cửu Lộ Phi Hương', 'Arnold Schwarzegger', 'MOVIE', 'https://th.bing.com/th/id/OIP.G9Ybgm3RaYJiP0e5RYsOTgHaLH?pid=ImgDet&rs=1'),
	(43, 'The Nutty Boy (Phần 2)', 'Loạt phim tiếp tục kể câu chuyện xoay quanh trí tưởng tượng vô biên của các nhân vật chính. Trong những tập đầu tiên, cuộc sống của Nutty đã hoàn toàn thay đổi: bố mẹ cậu ly hôn, mẹ cậu có công việc ở một thành phố mới và bố cậu cũng chuyển đến ở gần họ hơn. Những câu chuyện mới xoay quanh sự tự do của một đứa trẻ và vẫn tôn vinh văn hóa bản sắc Brazil trong vũ trụ hoạt hình.\r\n\r\n', 'Hoạt hình', 'Việt Nam', 'Đã phát sóng', 2008, 'Alfred Hitchcock', 'Burt Reynolds', 'FULL', 'https://a.ltrbxd.com/resized/film-poster/1/4/5/9/0/14590-menino-maluquinho-o-filme-0-460-0-690-crop.'),
	(44, 'A Simple Lie (2021)', 'They find themselves plunging into chaos, and it seems unstoppable and brutal. Is it possible to learn from old mistakes and has a once peaceful community another chance?', 'Hành động, Kinh dị', 'Việt Nam', 'Chưa phát sóng', 2021, 'Chris Miller', 'Dương Siêu Việt, Từ Chính Khê', 'FULL', 'https://i.pinimg.com/736x/94/5d/a4/945da45d7617367e9e222e1244c646d6.jpg'),
	(45, 'Chupa (2023)', 'Netflix Original – Phim phiêu lưu giả tưởng gia đình của đạo diễn Jonás Cuarón, sản xuất bởi Chris Columbus. Kể về một thiếu niên trẻ làm bạn đồng hành dưới hình dạng một con chupacabra trẻ tuổi.', 'Phiêu lưu, Giả tưởng, Gia đình', 'Việt Nam', 'Đã phát sóng', 2012, 'Jonás Cuarón', 'Arnold Schwarzenegger', 'FULL', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgY03Q68lcfv7UXFquSTfFyAFGwPTmqBwLo8HMYUUn'),
	(46, 'Tooth Pari: When Love Bites (Phần 1)', 'Bản gốc của Netflix – Loạt phim YA của Ấn Độ kể về một ma cà rồng nổi loạn phải lòng một nha sĩ.', 'Hài Hước, Lãng Mạn, Chính Kịch', 'Ấn Độ', 'Đã phát sóng', 2010, 'Thục Khách', 'Tanya Maniktala, Shantanu Maheshwar', 'FULL', 'https://th.bing.com/th/id/OIP.I6r5b8e_Mmrm8W8EHS1JWwHaHa?pid=ImgDet&w=1000&h=1000&rs=1'),
	(47, 'A Tourist\'s Guide to Love (2023)', 'Bản gốc của Netflix – Rachael Leigh Cook và Scott Ly đóng chính trong bộ phim hài lãng mạn này.', 'Phiêu Lưu, Hài Hước, Lãng Mạn', 'Ấn Độ', 'Đã phát sóng', 2023, 'Steven K. Tsuchida', 'Rachael Leigh Cook, Scott Ly, Ben Feldman', 'MOVIE', 'https://th.bing.com/th/id/OIP.XYEQFo9Yla45ItrCyZTXrwAAAA?pid=ImgDet&w=428&h=630&rs=1'),
	(48, 'Nhất Niệm Hoa Khai (2023)', 'Nhất Niệm Hoa Khai - Blooming (2023) là phim Chuyển thể từ tiểu thuyết nổi tiếng cùng tên của Hàn Dịch Thủy, câu chuyện kể về đại sư huynh Thôi Trần, thiên tài của Thanh Nguyên Kiếm Phái cùng sư muội lắm chiêu Triệu Thản Thản bước vào hành trình hài hước tìm kiếm "Thất Diệp Phạn Liên", hai người cùng trưởng thành và thu hoạch được tình yêu, bắt tay vực dậy sư môn. ', 'Chính Kịch, Cổ Trang', 'Trung Quốc', 'Đã phát sóng', 2023, 'Đằng La Vi Chi', 'Fang Yilun Huang Riying Leslie Ma Qiu Shi Lun', 'MOVIE', 'https://phimcuon.com/public/upload/cover/nhat-niem-hoa-khai-2023.webp'),
	(49, 'Trường Tương Tư', 'Nội dung xoay quanh cuộc đời, số phận và tình yêu của một tiểu yêu tinh tên là Tiểu Yêu. Ngay từ nhỏ, cô đã mất đi cha mẹ và có sức mạnh đặc biệt Trụ nhan hoa, cho phép cô biến đổi hình dạng một cách tự do. Tuy nhiên, cô không thể tìm được cách để trở về trạng thái ban đầu và sau đó, cô đã gặp gỡ Đàm Kiện Thứ – một tiên nhân và bắt đầu một câu chuyện tình ngọt ngào.', 'Cổ trang, Tình cảm', 'Trung Quốc', 'Đã phát sóng', 2023, 'Đằng La Vi Chi', 'Dương Tử, Đàn Kiệt Thứ', 'FULL', 'https://th.bing.com/th/id/OIP.FCgJtkLCyxIxyYOeGekdSgHaLH?pid=ImgDet&rs=1'),
	(50, 'Trường Nguyệt Tẫn Minh', 'Nữ chính Lê Tô Tô là con gái của chưởng môn phái Hành Dương Tông. Cô đã dũng cảm nhận nhiệm vụ quay trở về 500 năm trước để ngăn chặn tà cốt xâm chiếm thân thể của Ma thần Đạm Đài Tẫn. Cuối cùng, cô đã sử dụng nhiệm vụ này để đắc thành đạo quả, thay đổi kết cục của Ma thần và bảo vệ tam giới. Bộ phim đem đến nhiều tình tiết hấp dẫn, kịch tính cho khán giả.\r\n\r\n', 'Cổ trang, Tình cảm, Tiên giới', 'Trung Quốc', 'Đã phát sóng', 2023, 'Đồng Hoa', 'La Vân Hi, Bạch Lộc', 'FULL', 'https://th.bing.com/th/id/OIP.SDrCnaMovmTVmh1glZVqGQHaNH?pid=ImgDet&w=739&h=1309&rs=1'),
	(51, 'Dữ Phượng Hành', 'Trong phim, Triệu Lệ Dĩnh đóng vai Thẩm Ly, nữ tướng quân của ma giới, được biết đến với cây ngân thương là vũ khí. Khi trốn xuống thế giới phàm trần, cô gặp nhiều khó khăn và gặp Thần quân Hành Chỉ từ thời kỳ thượng cổ. Sau đó, Thẩm Ly phát hiện ra rằng cô đang yêu Hành Chỉ mặc dù không biết thân phận thật sự của anh ta. Cùng theo dõi để xem kết phim cặp đôi này có đến được với nhau không nhé.\r\n\r\n', 'Cổ trang, Tình cảm', 'Trung Quốc', 'Chưa phát sóng', 2023, 'Cửu Lộ Phi Hương', 'Triệu Lệ Dĩnh, Lâm Canh Tân', 'FULL', 'https://th.bing.com/th/id/OIP.U44Y5L1oWrHXUY56kb5AOwHaK3?pid=ImgDet&rs=1'),
	(52, 'Hồ yêu Tiểu Hồng Nương', 'Bộ phim cổ trang Trung Quốc Hồ yêu Tiểu Hồng Nương kể về câu chuyện tình yêu đầy sóng gió giữa tiểu hồ ly Đồ Sơn Hồng và đạo sĩ Đông Phương Nguyệt sơ. Sau những gian nan thử thách và cả những lần phải chứng kiến tình yêu của người khác, hai người cuối cùng cũng đã vượt qua và đến với nhau.', 'Tình cảm, Linh Dị', 'Trung Quốc', 'Đã phát sóng', 2023, 'Jonás Cuarón', 'Trần Hiểu, Lưu Diệc Phi', 'FULL', 'https://th.bing.com/th/id/R.4b137e0601621450d9592b6496f83dfb?rik=KpY2ew2YgbTZpg&pid=ImgRaw&r=0'),
	(53, 'Bảy Kiếp May Mắn', 'Câu chuyện của Bảy Kiếp May Mắn xoay quanh Vân Tường (Dương Siêu Việt), một áng mây được Nguyệt lão biến thành tiên để trông coi tơ hồng nhân duyên và Sơ Không – một tiên quân.Do có sự hiểu lầm, Sơ Không và Vân Tường đã xô đẩy nhau và làm đứt dây tơ hồng của tam giới. Nguyệt lão đã phạt cả hai phải trải qua 7 kiếp yêu nhau trên trần gian. Từ đó, câu chuyện của họ bắt đầu với những thân phận và hoàn cảnh khác nhau.\r\n\r\n\r\n\r\n', 'Lãng Mạn,Viễn Tưởng,Cổ Trang', 'Trung Quốc', 'Đã phát sóng', 2023, 'Lí Nam', 'Dương Siêu Việt, Đinh Vũ Hề', 'MOVIE', 'https://i.mydramalist.com/x8xDq_4c.jpg?v=1'),
	(54, 'Hộ tâm', 'Trong câu chuyện, nữ chính Nhạn Hồi là một tiên nữ thuộc phái huyền môn bị trục xuất khỏi thiên giới vì tội phản nghịch. Cô ấy mong muốn có một cuộc sống bình yên nhưng số phận lại đưa cô đến với con rồng Ác Long – người đã bị phong ấn do bị người mình yêu phản bội.', 'Tình cảm,Tu tiên', 'Trung Quốc', 'Đã phát sóng', 2023, 'Cửu Lộ Phi Hương', 'Châu Dã, Trần Minh Hạo', 'FULL', 'https://th.bing.com/th/id/R.eb0177a899f4ea0251fccd851079ef0b?rik=ZZXALsMDZhdqQw&pid=ImgRaw&r=0'),
	(55, 'Mộng Hoa Lục', 'Mộng Hoa Lục là bộ phim cổ trang tình cảm Trung Quốc tập trung kể về cuộc đời của nhân vật Phán Nhi trong hành trình trả thù tại kinh thành. Cô ấy có xuất thân danh giá và ngoại hình kiều diễm, nhưng đã bị đày xuống làm nô lệ từ khi chỉ mới 9 tuổi do tội của phụ vương. Vào khi cô 16 tuổi, cô nàng lại bị từ hôn bởi Âu Dương Húc.\r\n\r\n', 'Cổ trang, Tình cảm', 'Trung Quốc', 'Đã phát sóng', 2023, NULL, 'Trần Hiểu, Lưu Diệc Phi', 'FULL', 'https://th.bing.com/th/id/OIP.YLV98l35V5eIqsEkSOoddAAAAA?pid=ImgDet&rs=1'),
	(56, 'Ngọc Cốt Dao', 'Nội dung của bộ phim xoay quanh câu chuyện tình yêu đầy sóng gió giữa Chu Nhan – một quận chúa của Xích Tộc và Thời Ảnh – một thế tử.Sau khi hoàng hậu Không Tang bị đổ tội oan, Thời Ảnh bị đày đến núi để tu luyện và tại đây, anh đã gặp quận chúa và hai người trở thành thầy trò của nhau.\r\n\r\n', 'Cổ trang, Tình cảm', 'Trung Quốc', 'Chưa phát sóng', 2023, 'Thục Khách', 'Tiêu Chiến, Nhậm Mẫn', 'FULL', 'https://th.bing.com/th/id/OIP.2uMx4jAtFT9OnvpHU5CWLQHaLH?pid=ImgDet&rs=1'),
	(57, 'Trùng Tử', 'ội dung phim xoay quanh mối tình thầy trò khó đoán định giữa Lạc Âm Phàm và Trùng Tử. Trùng Tử từ nhỏ đã phải chịu cảnh ăn mày vì thân thể mang sát khí, bị xa lánh bởi mọi người.Mặc dù mong muốn tu tiên, nhưng vì dễ bị lạc đường vào con đường tẩu hỏa nhập ma nên cô bị từ chối. Tuy nhiên, Trọng Hoa tôn giả Lạc Phàm đã quyết định nhận cô làm đệ tử. Trong suốt thời gian tu luyện, Trùng Tử đã phải đối mặt với nhiều thử thách khó khăn, đặc biệt là tình cảm đầy bi kịch giữa cô và sư phụ. Tình yêu đầy đau khổ đã khiến Trùng Tử phải chịu ba kiếp luân hồi.', 'Cổ trang, Tình cảm, Tiên giới', 'Trung Quốc', 'Chưa phát sóng', 2023, 'Thục Khách', 'Dương Siêu Việt, Từ Chính Khê', 'FULL', 'https://th.bing.com/th/id/R.d4b9b8dcc8bd65508080841cd893474e?rik=ibm8dmudNWYkMQ&pid=ImgRaw&r=0'),
	(58, 'Thỏa Thuận Với Quỷ Dữ ', 'Kim Min Jun, người đàn ông nghèo khó và thất nghiệp. Anh đã gặp một người đàn ông bí ẩn, người đề nghị giúp anh ấy đổi lấy linh hồn của mình. Min Jun đồng ý với thỏa thuận, anh nhanh chóng trở nên giàu có và quyền lực. Tuy nhiên, Min Jun đã phải trả một cái giá đắt.', 'Kinh Dị, Linh Dị, Hành Động', 'Hàn Quốc', 'Đã phát sóng', 2023, 'Lí Nam', 'Kim Min Jun', 'FULL', 'https://th.bing.com/th/id/OIP.Ak_I5WFICKUiMTyO4nHZNwAAAA?pid=ImgDet&w=400&h=600&rs=1'),
	(59, 'Lá phiếu tử hình', 'Bản gốc Netflix – Phim lãng mạn Ba Lan.', 'Tội Phạm, Hành Động, Kinh Dị', 'Hàn Quốc', 'Đã phát sóng', 2023, 'Lí Nam', 'Lim Ji Yeon, Park Hae-jin, Park Sung-woong', 'FULL', 'https://motchilltv.online/storage/avatar/la-phieu-tu-hinh-x500.webp'),
	(60, 'The Escape of the Seven', 'Là một tác phẩm truyền hình Hàn Quốc nằm trong dòng phim trả thù, bí ẩn và hình sự, “The Escape of the Seven” xoay quanh câu chuyện của bảy nhân vật chính có hoàn cảnh và quá khứ khác nhau, tuy nhiên có điểm chung là đều liên quan đến sự biến mất của một cô gái 15 năm về trước. Trong quá trình tìm ra sự thật và báo oán cho cô gái nhỏ, họ phải đương đầu với những biến cố lớn, những lời nói dối và tham vọng tàn ác.\r\n\r\n', 'Chính kịch,, Tội Phạm, Báo Thù, Hành Động', 'Hàn Quốc', 'Đã phát sóng', 2023, 'Cửu Lộ Phi Hương', 'Uhm Ki Joon, Hwang Jung Eum, Lee Joon', 'FULL', 'https://th.bing.com/th/id/OIP.5sxnH15k2AGTtV7CNgwRAAAAAA?pid=ImgDet&rs=1'),
	(61, 'Cô nàng mạnh mẽ Do Bong Soon ', 'Netflix Original – Phim bộ Hàn Quốc.', 'Hành Động, Viễn Tưởng, Hài Hước, Tình Cảm', 'Hàn Quốc', 'Chưa phát sóng', 2023, 'Lí Nam', 'Lee Yoo Mi, Kim Jung Eun,Kim Hae Sook', 'FULL', 'https://th.bing.com/th/id/OIP.RFs5S8VLgDbKwJS2ltYcAQHaKn?pid=ImgDet&rs=1'),
	(64, 'Bác sĩ Cha', 'Bác sĩ Cha là một bộ phim Hàn Quốc hay 2023 xoay quanh Cha Jeong Suk, một bác sĩ tài năng bỏ nghề để theo chồng là Seo In Ho, một bác sĩ phẫu thuật nổi danh ở một bệnh viện đại học. Cô dành cả cuộc đời làm vợ và mẹ, chăm lo cho gia đình. Nhưng trớ trêu thay, đáp lại sự hy sinh tần tảo của cô là cú sốc khi phát hiện chồng mình ngoại tình với Choi Seung Hi, một bác sĩ thẩm mỹ hàng đầu. Cô quyết tâm ly dị và quay lại làm việc trong ngành y sau 20 năm như một bác sĩ thực tập năm nhất. Cô gặp nhiều khó khăn và thách thức trong công việc mới, cũng như những rối ren trong tình cảm với chồng cũ, người bạn thân Roy Kim và hai con của mình.\r\n\r\n', 'Chính Kịch, Hài Hước, Tình Cảm, Gia Đình', 'Hàn Quốc', 'Đã phát sóng', 2009, 'Cửu Lộ Phi Hương', 'Uhm Jung-hwa, Kim Byung-chul, Myung Se-bin', 'FULL', 'https://flxt.tmsimg.com/assets/p20479927_b_v13_aj.jpg'),
	(65, 'Người thầy y đức 3', 'Tiếp nối câu chuyện của bộ phim truyền hình Hàn Quốc ăn khách về sự nghiệp và đời sống của các bác sĩ ở bệnh viện Doldam, “Người Thầy Y Đức Phần 3” là phần mới nhất của series phim y học này. Bác sĩ Kim Sa Bu, người từng làm việc tại một bệnh viện lớn, đã chọn bệnh viện nhỏ Doldam để dạy dỗ và chỉ dẫn cho nhiều thế hệ bác sĩ trẻ tài giỏi, trong đó có Kang Dong Joo, Yoo Seo Jung và Cha Eun Jae. Trong phần này, bác sĩ Kim Sa Bu gặp phải nhiều khó khăn khi bệnh viện Doldam đứng trước nguy cơ bị một tập đoàn y tế lớn thôn tính. Ông cũng phải giải quyết những rắc rối và mâu thuẫn trong nhóm bác sĩ của mình, cùng với những vấn đề cá nhân và gia đình.\r\n\r\n', 'Hài Hước,Tình Cảm', 'Hàn Quốc', 'Đã phát sóng', 2023, 'Đằng La Vi Chi', 'Han Seok-gyu, Ahn Hyo-seop, Lee Sung-kyung, Kim Min-jae', 'FULL', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/9/17/1094299/Anh-5.jpg'),
	(66, 'Cậu út nhà tài phiệt', 'Đây là bộ phim Hàn Quốc dài tập lấy bối cảnh những năm 80 đầy biến động, xoay quanh Yoon Hyun Woo, một thư ký của gia tộc giàu có, bị Tập đoàn Sunyang vu oan tham nhũng và chết oan. Anh được sống lại trong thân xác của một người khác và tìm cách báo thù. Trên hành trình đầy rẫy âm mưu này, anh gặp gỡ và phải lòng Kim Hye Jin, một bác sĩ tài năng và xinh đẹp.\r\n\r\n', 'Hài Hước, Lãng Mạn, Giả Tưởng', 'Hàn Quốc', 'Chưa phát sóng', 2009, 'Đồng Hoa', 'Song Joong-ki, Lee Sung-min, Shin Hyun-bin', 'FULL', 'https://th.bing.com/th/id/OIP.1cJHH2OdJAvEIxq0OA3nDgHaKl?w=700&h=1000&rs=1&pid=ImgDetMain'),
	(67, 'Ẩn danh 2 (Taxi Driver 2)', ' Đây là bộ phim Hàn Quốc hành động trinh thám đáng xem nhất. Phim không chỉ khiến người xem cảm thấy thỏa mãn với những cảnh quay, kỹ xảo chất lượng mà còn chứa đựng những ý nghĩa sâu sắc về cuộc sống, tình bạn và tình yêu. Phim cũng có nhiều pha hành động gay cấn và những chi tiết hài hước, thu hút sự chú ý của người xem.', 'Hành Động, Tội Phạm', 'Thái Lan', 'Đã phát sóng', 2012, 'Jonás Cuarón', ' Lee Je Hoon, Kim Eui Sung, Pyo Ye Jin, Jang Hyuk Jin', 'FULL', 'https://th.bing.com/th/id/OIP.jUAI24uuCtj6XAu3GQMQCAHaK9?pid=ImgDet&rs=1'),
	(68, 'InuYasha (Phần 6)', 'They find themselves plunging into chaos, and it seems unstoppable and brutal. Is it possible to learn from old mistakes and has a once peaceful community another chance?', 'Chính Kịch, Lãng Mạn', 'Hàn Quốc', 'Đã phát sóng', 2023, 'Jonás Cuarón', 'Dương Siêu Việt, Từ Chính Khê', 'FULL', 'https://th.bing.com/th/id/OIP.mLXJOZh091j5UQxmKKi3CgHaLH?pid=ImgDet&rs=1'),
	(69, 'It\'s Us / Ni Sisi (2013)', 'i Sisi portrays a typical Kenyan community: a harmonious muddle of tribes, intermarriages, and extended families who have lived and worked together all their lives. Then one day rumors begin to spread and suddenly mistrust takes hold. People are identified as belonging to a different tribe rather than by their identity as a person. ', 'Hành động, Kinh dị', 'Thái Lan', 'Đã phát sóng', 2013, 'Cửu Lộ Phi Hương', 'Fang Yilun Huang Riying Leslie Ma Qiu Shi Lun', 'FULL', 'https://th.bing.com/th/id/OIP.oEecTWufKTzP-ukVkasb6gHaLH?pid=ImgDet&rs=1'),
	(70, 'King of Collectibles: The Goldin Touch (Phần 1)', 'Bản gốc của Netflix – Ken Goldin và đội ngũ hiểu biết của anh ấy thực hiện các pha hành động ly kỳ trong loạt phim này diễn ra bên trong một nhà đấu giá hàng đầu chuyên về những món đồ sưu tập quý hiếm.', 'Chính Kịch, Lãng Mạn', 'Thái Lan', 'Chưa phát sóng', 2012, 'Jonás Cuarón', 'Arnold Schwarzenegger', 'FULL', 'https://th.bing.com/th/id/OIP.RiDRG9JAmwGHVHp9oJ8hewAAAA?pid=ImgDet&w=450&h=630&rs=1'),
	(72, 'Người Vợ Cuối Cùng', 'Bộ phim này đưa khán giả vào một thế giới cổ trang đậm chất Việt Nam triều Nguyễn. Cuốn theo cuộc sống đầy khó khăn của Linh, người vợ bất đắc dĩ của một viên quan tri huyện. Linh phải đối mặt với sự áp lực từ những người vợ lớn trong nhà vì không thể sinh con nối dõi.\r\nTuy nhiên, sự gặp gỡ tình cờ với người yêu thời thanh mai trúc mã của mình là Nhân, đã đánh dấu một bước ngoặt quan trọng trong cuộc đời cô. Những câu chuyện bất ngờ và những thay đổi đầy kỳ diệu bắt đầu xuất hiện. ', 'Lãng Mạn, Gia Đình', 'Việt Nam', 'Đã phát sóng', 2023, 'Victor Vũ', 'Kaity Nguyễn, Ngọc Diệp, Thuận Nguyễn, Quang Thắng,…', 'CONTINUE', 'https://cinematone.info/public/poster-22/230718142724_Nguoi-Vo-Cuoi-Cung_oDHM8.jpg'),
	(73, 'Quỷ Lùn Tinh Nghịch: Đồng Tâm Hiệp Nhạc', 'Quỷ Lùn Tinh Nghịch: Đồng Tâm Hiệp Nhạc kể về câu chuyện tiếp tục theo chân Poppy và Branch trong hành trình phiêu lưu đầy màu sắc.\r\n\r\nTrailer đầu tiên của phần 3 bắt đầu bằng một buổi tiệc cưới hoàng gia cho Bridget và Gristle. Nhưng một bất ngờ lớn xuất hiện khi John Dory - anh trai thất lạc của Branch xuất hiện. Sự xuất hiện của John Dory tiết lộ một khía cạnh bí mật của quá khứ của Branch mà anh từng giấu kín.', 'Hoạt Hình, Lãng Mạn, Gia Đình', 'Mỹ', 'Đã phát sóng', 2023, 'Walt Dohrn', 'Anna Kendrick, Eric André, Justin Timberlake, Daveed Diggs, Kid Cudi...', 'Đang cập nhật', 'https://cinema.momocdn.net/img/12753097245288952-rZGFcl01VIdfMpLOIuiO6IFdq1U.jpg'),
	(74, 'Lễ Tạ Ơn Kinh Hoàng', 'Đối với cư dân của thành phố này, Lễ Tạ Ơn không chỉ là dịp để biểu đạt lòng biết ơn, nhớ về những phước lành đã đón nhận, mà còn tưởng nhớ những người yêu thương của họ, là thời điểm mà gia đình họ có cơ hội xum vầy bên nhau. Nhưng điều gì đã xảy ra trong ngày lễ này?', ' Kinh Dị, Bạo Lực', 'Mỹ', 'Đã phát sóng', 2023, 'Eli Roth', 'Rick Hoffman, Jenna Warren, Tim Dillon, Gina Gershon, Tomaso Sanelli', 'MOVIE', 'https://th.bing.com/th/id/OIP.zXvzmvUDGxHfuOR9O8ojhQHaK-?rs=1&pid=ImgDetMain'),
	(75, 'Wave Makers (Phần 1)', 'Netflix Original – Bộ phim truyền hình chính trị Đài Loan kể về một nhóm nhân viên chiến dịch đối mặt với những lựa chọn khó khăn trong bối cảnh chính trị khó khăn.', 'Chính Kịch, Lãng Mạn', 'Thái Lan', 'Đã phát sóng', 2012, 'Cửu Lộ Phi Hương', 'Dương Siêu Việt, Từ Chính Khê', 'MOVIE', 'https://th.bing.com/th/id/OIP.__DGkPpz9LQxYM5lunrBawAAAA?pid=ImgDet&rs=1'),
	(76, 'Ninja Rùa: Hỗn Loạn Tuổi Dậy Thì', 'Do sự khác biệt mà họ chỉ có thể hoạt động bình thường vào buổi tối – khi thành phố lên đèn. Bốn anh em luôn mong muốn được chấp nhận và sống hòa nhập như những người bình thường. Vi vậy, họ luôn cố gắng phá những phi vụ của kẻ xấu và hành động như những vị anh hùng để có thể lấy cảm tình của cư dân nơi đây.\r\n\r\n', 'Hoạt Hình, Phiêu Lưu, Hài Hước', 'Mỹ', 'Đã phát hành', 2023, 'Jeff Rowe', 'Seth Rogen, Nicolas Cantu, Shamon Brown Jr., …', 'MOVIE', 'https://th.bing.com/th/id/OIP.AaHtuEv1BsoPtif9aMZzEAHaKo?rs=1&pid=ImgDetMain'),
	(84, 'Vẹt Cò Phiêu Lưu Ký: Viên Ngọc Bí Ẩn', 'Phim kể về Richard – chú vẹt lớn lên giữa đàn cò luôn tự tin với sự dũng cảm của mình chú sẽ có được vị trí dẫn đàn. Thế nhưng, vị trí ấy lại được trao cho một chú cò khác – Marx, khiến Richard ấm ức và quyết định rời đàn. Trên hành trình đơn độc, Richard gặp một đàn chim sẻ bị giam cầm bởi chim công xấu xa Zamano và chỉ có thể được tự do nếu tìm được một viên ngọc quý. Richard cùng những người bạn sẽ tạo nên một biệt đội dũng cảm và đoàn kết để đi tìm viên ngọc.\r\n\r\n', 'Hoạt Hình, Hài Hước', 'Mỹ', 'Đã phát sóng', 2004, 'Mette Tange, Benjamin Quabeck', 'Jay Myers, Monica Solem, Blake Farha, Viktor Pavel, Amalia Hohl', 'MOVIE', 'https://th.bing.com/th/id/OIP.7DT2kBfNGchYz-ZuJfPyOAAAAA?w=424&h=600&rs=1&pid=ImgDetMain');

-- Dumping structure for table website_film.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table website_film.user: ~5 rows (approximately)
DELETE FROM `user`;
INSERT INTO `user` (`user_id`, `name`, `password`, `email`) VALUES
	(1, 'cham', '123', 'cham@123'),
	(3, 'han', '123', 'han@123'),
	(4, 'hieu', '111', 'hieu@456'),
	(8, 'dat', '222', 'dat@123'),
	(9, 'anh', '789', 'anh@000'),
	(13, 'ngoc', '123', 'ngockt@gmail.com');

-- Dumping structure for table website_film.views
CREATE TABLE IF NOT EXISTS `views` (
  `id` int(70) NOT NULL AUTO_INCREMENT,
  `id_user` int(70) DEFAULT NULL,
  `id_movie` int(255) DEFAULT NULL,
  `viewTime` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_view_user` (`id_user`),
  KEY `FK_view_movie` (`id_movie`),
  CONSTRAINT `FK_view_movie` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_view_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table website_film.views: ~35 rows (approximately)
DELETE FROM `views`;
INSERT INTO `views` (`id`, `id_user`, `id_movie`, `viewTime`) VALUES
	(1, 3, 1, '2023-06-10'),
	(2, 9, 44, '2023-06-10'),
	(49, 1, 1, '2023-06-15'),
	(50, 3, 2, '2023-06-16'),
	(51, 4, 3, '2023-06-17'),
	(52, 8, 4, '2023-06-18'),
	(53, 9, 5, '2023-06-19'),
	(54, 1, 6, '2023-06-20'),
	(55, 3, 7, '2023-06-21'),
	(56, 4, 8, '2023-06-22'),
	(57, 8, 9, '2023-06-23'),
	(58, 9, 10, '2023-06-24'),
	(59, 1, 11, '2023-06-25'),
	(60, 3, 12, '2023-06-26'),
	(61, 4, 13, '2023-06-27'),
	(62, 8, 14, '2023-06-28'),
	(63, 9, 15, '2023-06-29'),
	(64, 1, 16, '2023-06-30'),
	(65, 3, 17, '2023-07-01'),
	(66, 4, 18, '2023-07-02'),
	(67, 8, 19, '2023-07-03'),
	(68, 9, 20, '2023-07-04'),
	(69, 1, 38, '2023-08-07'),
	(70, 3, 39, '2023-08-08'),
	(71, 4, 40, '2023-08-09'),
	(72, 1, 76, '2024-01-01'),
	(73, 1, 48, '2024-01-02'),
	(76, 1, 10, '2024-01-06'),
	(77, 1, 10, '2024-01-06'),
	(79, 1, 74, '2024-01-06'),
	(80, 1, 49, '2024-01-06'),
	(81, 1, 7, '2024-01-06'),
	(82, 1, 76, '2024-01-06'),
	(83, 1, 74, '2024-01-06'),
	(84, 1, 49, '2024-01-06'),
	(88, 1, 68, '2024-11-18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
