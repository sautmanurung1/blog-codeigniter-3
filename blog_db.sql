-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 05:50 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  `category_slug` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`) VALUES
(1, 'Pengembangan diri', 'pengembangan-diri'),
(2, 'Success', 'success'),
(3, 'Tips dan Tricks', 'tips-dan-tricks');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_name` varchar(60) DEFAULT NULL,
  `comment_email` varchar(90) DEFAULT NULL,
  `comment_message` text,
  `comment_status` int(11) DEFAULT '0',
  `comment_parent` int(11) DEFAULT '0',
  `comment_post_id` int(11) DEFAULT NULL,
  `comment_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_date`, `comment_name`, `comment_email`, `comment_message`, `comment_status`, `comment_parent`, `comment_post_id`, `comment_image`) VALUES
(1, '2019-04-07 03:15:05', 'Joko', 'joko@gmail.com', 'Nice Post, thanks', 1, 0, 6, 'user_blank.png'),
(2, '2019-04-12 04:22:34', 'M Fikri', 'fikrifiver97@gmail.com', 'Thank you.<br>', 1, 1, 6, 'fcee14ca639c3ca3c5b93b7c7fc70ba2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE IF NOT EXISTS `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_name` varchar(50) DEFAULT NULL,
  `inbox_email` varchar(80) DEFAULT NULL,
  `inbox_subject` varchar(200) DEFAULT NULL,
  `inbox_message` text,
  `inbox_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` varchar(2) DEFAULT '0' COMMENT '0=Unread, 1=Read',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_name`, `inbox_email`, `inbox_subject`, `inbox_message`, `inbox_created_at`, `inbox_status`) VALUES
(1, 'Fikri', 'fikrifiver97@gmail.com', 'Request Artikel', 'Saya mau request artikel tentang mindset.', '2019-04-11 03:46:56', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE IF NOT EXISTS `tbl_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text,
  `post_contents` longtext,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(1, 'Bangun Karakter Idaman Anda Dalam 5 Langkah', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3>Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.<br></p>', '18f65f55e2bc21c3a54031a74ef6c56c.jpg', '2019-04-05 07:45:42', '2019-04-14 09:07:00', 1, 'Psikologi,Motivasi', 'membangun-karakter', 1, 2, 1),
(2, '7 Tips untuk menemukan passion Anda', '', '<p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style="font-family: " open="" sans",="" sans-serif;="" color:="" rgb(78,="" 94,="" 106);"="">Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', '787f035149ba2179b8bc4c5ac01c5001.jpg', '2019-04-05 07:52:06', '2019-04-14 09:08:10', 1, 'Psikologi,Motivasi', 'tips-untuk-menemukan-passion-anda', 1, 3, 1),
(3, '5 Alasan kenapa Anda perlu berbuat baik', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style="font-family: " open="" sans",="" sans-serif;="" color:="" rgb(78,="" 94,="" 106);"="">Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', 'a06ae9341405a292ae12b67ed85dc1dc.jpg', '2019-04-05 12:25:13', '2019-04-14 09:08:51', 2, 'Psikologi,Motivasi,Kesehatan', '5-alasan-kenapa-anda-perlu-berbuat-baik', 1, 4, 1),
(4, '7 Tips untuk meningkatkan pendapatan Anda', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style="font-family: " open="" sans",="" sans-serif;="" color:="" rgb(78,="" 94,="" 106);"="">Ini adalah Sub Heading&nbsp;</h3><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', '9a734ed5d107f0f378da0a1e13dfc92e.jpg', '2019-04-05 12:26:55', '2019-04-14 09:09:16', 3, 'Teknologi,Motivasi', 'tips-untuk-meningkatkan-pendapatan-anda', 1, 4, 1),
(5, '5 Alasan kenapa Anda harus mengajar', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style="font-family: " open="" sans",="" sans-serif;="" color:="" rgb(78,="" 94,="" 106);"="">Ini adalah Sub Heading&nbsp;</h3><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', 'c534b8d570a496102d49262217195a50.jpeg', '2019-04-05 12:28:19', '2019-04-14 09:10:03', 2, 'Psikologi,Motivasi', 'alasan-kenapa-anda-harus-mengajar', 1, 4, 1),
(6, '3 Rahasia Manajemen Waktu', '', '<p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><h3 style="font-family: " open="" sans",="" sans-serif;="" color:="" rgb(78,="" 94,="" 106);"="">Ini adalah Sub Heading&nbsp;</h3><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p style="outline: 0px !important;">Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p><p>Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten Ini adalah artikel konten.</p>', 'ee094df754cba6976747236e74949a43.jpg', '2019-04-05 13:05:56', '2019-04-14 09:10:15', 3, 'Psikologi,Motivasi', 'rahasia-manajemen-waktu', 1, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_views`
--

CREATE TABLE IF NOT EXISTS `tbl_post_views` (
  `view_id` int(11) NOT NULL AUTO_INCREMENT,
  `view_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `view_ip` varchar(50) DEFAULT NULL,
  `view_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`view_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`view_id`, `view_date`, `view_ip`, `view_post_id`) VALUES
(1, '2019-04-06 13:33:39', '::1', 6),
(2, '2019-04-06 23:04:18', '::1', 6),
(3, '2019-04-07 03:32:54', '::1', 5),
(4, '2019-04-07 03:33:14', '::1', 4),
(5, '2019-04-07 04:03:50', '::1', 3),
(6, '2019-04-09 12:19:36', '::1', 6),
(7, '2019-04-09 13:28:30', '::1', 4),
(8, '2019-04-10 01:33:10', '::1', 5),
(9, '2019-04-10 10:00:27', '::1', 2),
(10, '2019-04-10 10:58:17', '::1', 1),
(11, '2019-04-10 13:20:32', '::1', 3),
(12, '2019-04-10 13:20:46', '::1', 6),
(13, '2019-04-11 03:32:18', '::1', 6),
(14, '2019-04-11 04:24:22', '::1', 4),
(15, '2019-04-11 07:58:35', '::1', 2),
(16, '2019-04-12 04:23:04', '::1', 6),
(17, '2019-04-12 10:09:30', '::1', 5),
(18, '2019-04-13 01:42:27', '::1', 6),
(19, '2019-04-13 02:01:01', '::1', 5),
(20, '2019-04-13 02:01:18', '::1', 3),
(21, '2019-04-13 03:23:34', '::1', 4),
(22, '2019-04-14 01:39:17', '::1', 1),
(23, '2019-04-14 03:24:24', '::1', 3),
(24, '2019-04-14 04:08:24', '::1', 2),
(25, '2019-04-15 03:44:42', '::1', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site`
--

CREATE TABLE IF NOT EXISTS `tbl_site` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_description` text,
  `site_logo_header` varchar(50) DEFAULT NULL,
  `site_logo_footer` varchar(50) DEFAULT NULL,
  `site_facebook` varchar(150) DEFAULT NULL,
  `site_twitter` varchar(150) DEFAULT NULL,
  `site_instagram` varchar(150) DEFAULT NULL,
  `site_pinterest` varchar(150) DEFAULT NULL,
  `site_linkedin` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_description`, `site_logo_header`, `site_logo_footer`, `site_facebook`, `site_twitter`, `site_instagram`, `site_pinterest`, `site_linkedin`) VALUES
(1, 'MBLOG', 'MBLOG - Source Code untuk Blogger', 'Open Source source code untuk personal blog, simple, elegan, full responsif, dan mudah di customize.  ', 'logo-black.png', 'logo-white1.png', 'https://www.facebook.com/mfikridotcom/', 'https://twitter.com/MFikri75770694/', 'https://www.instagram.com/mfikricom/', 'https://id.pinterest.com/mfikricom/', 'https://www.linkedin.com/in/m-fikri-setiadi-b03370148/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribe`
--

CREATE TABLE IF NOT EXISTS `tbl_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe_email` varchar(100) DEFAULT NULL,
  `subscribe_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `subscribe_status` int(11) DEFAULT '0',
  `subscribe_rating` int(11) DEFAULT '0',
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_subscribe`
--

INSERT INTO `tbl_subscribe` (`subscribe_id`, `subscribe_email`, `subscribe_created_at`, `subscribe_status`, `subscribe_rating`) VALUES
(1, 'fikrifiver97@gmail.com', '2019-04-11 07:40:16', 1, 1),
(3, 'porthere@gmail.com', '2019-04-11 07:57:28', 1, 0),
(4, 'mufty@gmail.com', '2019-04-11 07:58:44', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE IF NOT EXISTS `tbl_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'Teknologi'),
(2, 'Psikologi'),
(3, 'Motivasi'),
(4, 'Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_level`, `user_status`, `user_photo`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', 'fcee14ca639c3ca3c5b93b7c7fc70ba2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitors`
--

CREATE TABLE IF NOT EXISTS `tbl_visitors` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=541341 ;

--
-- Dumping data for table `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
