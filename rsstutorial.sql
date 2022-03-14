-- -------------------------------------------------------------
-- TablePlus 4.5.2(402)
--
-- https://tableplus.com/
--
-- Database: rsstutorial
-- Generation Time: 2022-02-10 00:52:20.3430
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `blog_content` text,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `blog_log`;
CREATE TABLE `blog_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latest_modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `blog` (`id`, `title`, `blog_content`, `date`) VALUES
(1, 'Blog Title One', 'Habitasse occaecat ex perspiciatis nullam, nulla, anim rerum? Eiusmod donec? Doloremque elit, metus quaerat faucibus. Eius. Malesuada montes nostrud mollis odio tellus wisi nam! Laborum tempore. Autem. Labore repellendus, id.', '2022-01-17 09:09:15'),
(2, 'Blog Title Two', 'Habitasse occaecat ex perspiciatis nullam, nulla, anim rerum? Eiusmod donec? Doloremque elit, metus quaerat faucibus. Eius. Malesuada montes nostrud mollis odio tellus wisi nam! Laborum tempore. Autem. Labore repellendus, id.', '2022-01-17 09:09:15'),
(3, 'Blog Title Three', 'Habitasse occaecat ex perspiciatis nullam, nulla, anim rerum? Eiusmod donec? Doloremque elit, metus quaerat faucibus. Eius. Malesuada montes nostrud mollis odio tellus wisi nam! Laborum tempore. Autem. Labore repellendus, id.', '2022-01-17 09:09:15'),
(4, 'Blog Title Four', 'Habitasse occaecat ex perspiciatis nullam, nulla, anim rerum? Eiusmod donec? Doloremque elit, metus quaerat faucibus. Eius. Malesuada montes nostrud mollis odio tellus wisi nam! Laborum tempore. Autem. Labore repellendus, id.', '2022-01-17 09:09:15'),
(5, 'New blog title', 'somethingsomethinng', '2022-01-01 00:00:00'),
(6, 'MY BLOG TITLE', 'SOMETHINNG', '2022-01-02 14:16:29'),
(7, 'new year blog', 'somethinng somethingn', '2022-01-24 14:15:58'),
(8, 'title one', 'title one blog content', '2022-01-24 14:17:03'),
(9, 'title two', 'title two blog contennt', '2022-01-24 14:17:40'),
(10, 'title three', 'title three blog content', '2022-01-24 14:18:50'),
(11, 'title threee', 'title three blog content', '2022-01-24 14:42:21'),
(12, 'bloog four', 'bloog foour title content', '2022-01-24 14:43:24'),
(13, 'title four', 'title four blog content', '2022-01-24 14:58:22'),
(14, 'title four', 'title four blog content', '2022-01-24 14:59:14'),
(15, 'title four', 'title four blog content', '2022-01-24 14:59:36'),
(16, 'title eight', 'title eight blog content', '2022-01-25 10:18:39'),
(17, 'title nine', 'title nine bloog content', '2022-01-25 10:19:08'),
(18, 'title nine', 'title ninnee bloog content', '2022-01-25 11:25:28');

INSERT INTO `blog_log` (`id`, `latest_modified_date`) VALUES
(1, '2022-01-24 14:59:36'),
(2, '2022-01-25 10:18:39'),
(3, '2022-01-25 10:19:08'),
(4, '2022-01-25 11:25:28');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;