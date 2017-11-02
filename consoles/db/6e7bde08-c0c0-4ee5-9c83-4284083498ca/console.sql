-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2017 at 08:45 AM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `goodmaker`
--

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE IF NOT EXISTS `aboutus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `content`, `created_at`, `updated_at`) VALUES
  (1, '<p></p>', '2016-05-30 15:57:04', '2017-01-10 18:16:53'),
  (2, 'Start', '2016-06-11 23:48:21', '2016-06-11 23:48:21'),
  (3, 'Start', '2016-06-11 23:52:52', '2016-06-11 23:52:52'),
  (4, 'Start', '2016-06-23 15:22:03', '2016-06-23 15:22:03'),
  (5, 'Start', '2016-06-23 15:23:06', '2016-06-23 15:23:06'),
  (6, 'Start', '2016-06-23 15:23:25', '2016-06-23 15:23:25'),
  (7, 'Start', '2016-07-03 16:40:28', '2016-07-03 16:40:28'),
  (8, 'Start', '2016-07-16 23:43:31', '2016-07-16 23:43:31'),
  (9, 'Start', '2016-11-02 23:43:30', '2016-11-02 23:43:30'),
  (10, 'Start', '2016-11-02 23:44:27', '2016-11-02 23:44:27'),
  (11, 'Start', '2016-11-02 23:44:48', '2016-11-02 23:44:48'),
  (12, 'Start', '2016-12-02 12:32:45', '2016-12-02 12:32:45'),
  (13, 'Start', '2017-01-10 17:18:46', '2017-01-10 17:18:46'),
  (14, 'Start', '2017-01-10 17:26:50', '2017-01-10 17:26:50'),
  (15, 'Start', '2017-01-10 17:50:42', '2017-01-10 17:50:42'),
  (16, 'Start', '2017-01-10 18:16:03', '2017-01-10 18:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogcomments`
--

CREATE TABLE IF NOT EXISTS `blogcomments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(10) unsigned NOT NULL,
  `commentter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentter_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogposts`
--

CREATE TABLE IF NOT EXISTS `blogposts` (
  `blogpost_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blogpost_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blogpost_readmore` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blogpost_content` text COLLATE utf8_unicode_ci NOT NULL,
  `blogpost_comment_count` int(11) NOT NULL,
  `blogpost_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`blogpost_id`),
  FULLTEXT KEY `search` (`blogpost_title`,`blogpost_content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `blogposts`
--

INSERT INTO `blogposts` (`blogpost_id`, `blogpost_title`, `blogpost_readmore`, `blogpost_content`, `blogpost_comment_count`, `blogpost_image`, `created_at`, `updated_at`) VALUES
  (7, 'Discharge ink', 'Tinta plastisol adalah tinta yang fleksibel karena hasil akhirnya bisa menyesuaikan&nbsp;dengan keinginan kita', '<p>Discharge adalah tinta dengan hasil yg sangat halus karena hasil sablonnya&nbsp;menyatu dengan kaos, namun dengan hasil sablonan yang tetap bright meskipun di sablon di kaos berwarna gelap.</p>\r\n\r\n<p>Pada umumnya discharge di gunakan untuk sablon di kaos berwarna gelap dan hanya bisa bereaksi pada&nbsp;bahan&nbsp;khusus, yaitu&nbsp;katun reaktif agar mendapatkan hasil sablon yang terang.</p>\r\n\r\n<p>Cara kerja tinta discharge berbeda dengan tinta pada umumnya, ketika tinta di sablon di kaos, reaksi kimia pada tinta discharge secara otomatis menghapus warna kaos dan menggantinya dengan warna tinta sehingga warna yang di hasilkan menjadi lebih terang dengan&nbsp;hasil sablonan yang tipis (handsoft feel)</p>\r\n', 0, 'uploads/blogcover-115104.jpg', '2016-07-09 19:39:14', '2017-01-10 17:45:58'),
  (6, 'Seputar Tinta Plastisol', 'tinta yang fleksibel', '\n					<p>Tinta plastisol adalah tinta yang fleksibel karena hasil akhirnya bisa menyesuaikan&nbsp;dengan keinginan kita, bisa tebal, tipis, high density, maupun raster (sablon berupa dot dot kecil)..<br>\n<br>\nNamun pada proses pengeringannya, tinta plastisol membutuhkan suhu yang tinggi agar bisa kering sempurna, sehingga membutuhkan peralatan yang mendukung dan bahan yang akan di sablon harus tahan panas agar tidak rusak pada saat pengeringan.</p>\n\n<ol>\n</ol>\n\n				', 0, 'uploads/blogcover-115166.jpg', '2016-07-09 19:21:34', '2016-09-17 09:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `address`, `phone`, `message`, `ip`, `created_at`, `updated_at`) VALUES
  (3, 'avioem@gmail.com', '', '', 'test', '36.84.143.133', '2016-06-17 10:17:00', '2016-06-17 10:17:00'),
  (4, 'jenniferwarner.mkt@gmail.com', '', '', 'We strongly believe that we have an excellent opportunity to increase the number of visitors to your website through our white-hat SEO services at a very affordable price.Email us back to get a full proposal.', '182.69.214.88', '2016-09-01 09:07:23', '2016-09-01 09:07:23'),
  (5, 'jenniferwarner.mkt@gmail.com', '', '', 'We strongly believe that we have an excellent opportunity to increase the number of visitors to your website through our white-hat SEO services at a very affordable price.Email us back to get a full proposal.', '182.69.214.88', '2016-09-01 09:32:50', '2016-09-01 09:32:50'),
  (6, 'deepalisharma@seoexpertsindia.net', '', '', 'Hi! I’m an Online Marketing Expert in SEOExperts India; I’d like to bring to your notice about your online reputation.\r\nWhether it be fair or not, anyone looking for you online would often assess you by what other people are saying about you. A dissatisfi', '122.173.44.192', '2016-10-20 13:53:40', '2016-10-20 13:53:40'),
  (7, 'servicepromotion2422@gmail.com', '', '', 'I WANT TO WORK IN YOUR ORGANIZATION', '119.30.38.97', '2016-10-20 19:34:12', '2016-10-20 19:34:12'),
  (8, 'angelina.subbs@gmail.com', '', '', 'Hi\r\nWe can help your website to get on first page of Google and increase the number of leads and sales you are getting from your website. Please email us back for full proposal.\r\n\r\nBest Regards\r\nAngelina', '103.212.147.155', '2016-11-21 15:57:54', '2016-11-21 15:57:54'),
  (9, 'Hanus72978@gmail.com', '', '', 'Hello,\r\nI want to introduce the Website Reviewer is an incredibly useful tool for those who are involved in SEO and web designing. This particular tool will provide you with quick website review and SEO audit of the websites you’ve created so you will be ', '', '2016-12-03 00:51:33', '2016-12-03 00:51:33'),
  (10, '6822Kaemingk@gmail.com', '', '', 'Hi,\r\nI want to introduce the Website Reviewer is an incredibly useful tool for those who are involved in SEO and web designing. This particular tool will provide you with quick website review and SEO audit of the websites you’ve created so you will be abl', '', '2016-12-07 22:34:02', '2016-12-07 22:34:02'),
  (11, '68870Heimbigner@gmail.com', '', '', 'Hi,\r\nI want to introduce the Website Reviewer is an incredibly useful tool for those who are involved in SEO and web designing. This particular tool will provide you with quick website review and SEO audit of the websites you’ve created so you will be abl', '', '2016-12-08 07:45:13', '2016-12-08 07:45:13'),
  (12, 'jacominawarner.mkt@gmail.com', '', '', 'Do you wish you could increase your online leads? We have helped a lot of businesses thrive in this market and we can help you! Simply hit reply and I’ll share with you the cost and the benefits.\r\n', '182.69.205.8', '2017-01-06 13:27:53', '2017-01-06 13:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `currency_value` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `content`, `created_at`, `updated_at`) VALUES
  (1, '<div class="container"><hr />\r\n<div id="accordion" class="panel-group">\r\n<div class="panel panel-default">\r\n<div style="background-color:#24180a" class="panel-heading">\r\n<h4 class="panel-title"><a href="#collapseOne" style="color:white" data-toggle="collapse" data-parent="#accordion">1. Cara Pembelian ?</a></h4>\r\n</div>\r\n<div id="collapseOne" class="panel-collapse collapse in">\r\n<div class="panel-body">\r\n<p>Currently we do not have any specific question </p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="panel panel-default">\r\n<div style="background-color:#24180a" class="panel-heading">\r\n<h4 class="panel-title"><a href="#collapseTwo" style="color:white" data-toggle="collapse" data-parent="#accordion">3. Cara Pembelian ?</a></h4>\r\n</div>\r\n<div id="collapseTwo" class="panel-collapse collapse">\r\n<div class="panel-body">\r\n<p>Currently we do not have any specific question </p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="panel panel-default">\r\n<div style="background-color:#24180a" class="panel-heading">\r\n<h4 class="panel-title"><a href="#collapseThree" style="color:white" data-toggle="collapse" data-parent="#accordion">3. Cara Pembelian ?</a></h4>\r\n</div>\r\n<div id="collapseThree" class="panel-collapse collapse">\r\n<div class="panel-body">\r\n<p>Currently we do not have any specific question </p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2016-05-29 20:06:47', '2016-11-02 23:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE IF NOT EXISTS `featured` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `file_mime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `title`, `description`, `file_name`, `file_path`, `file_size`, `file_mime`, `published`, `width`, `height`, `created_at`, `updated_at`) VALUES
  (7, 'We only provide the best quality', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Order now!</p>\r\n</body>\r\n</html>\r\n', '5759445253978slide1.jpg', 'uploads/featured/5759445253978slide1.jpg', '', 'image/jpeg', 1, '3508', '1630', '2016-06-09 14:26:26', '2016-11-02 23:45:14'),
  (8, 'Contact us!', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><a href="http://195.110.58.42/contact">contact us now</a></p>\r\n</body>\r\n</html>\r\n', '5759449551992slide2.jpg', 'uploads/featured/5759449551992slide2.jpg', '', 'image/jpeg', 1, '3508', '1630', '2016-06-09 14:27:33', '2016-06-20 01:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `filename`, `mime`, `original_filename`, `created_at`, `updated_at`) VALUES
  (1, 'phpxGWexI.jpg', 'image/jpeg', '413-66316.jpg', '2016-05-30 15:53:09', '2016-05-30 15:53:09'),
  (2, 'phpz6GvuK.jpg', 'image/jpeg', 'd.jpg', '2016-06-09 14:35:13', '2016-06-09 14:35:13'),
  (3, 'phphMaceT.jpg', 'image/jpeg', 'hitam web.jpg', '2016-07-09 17:12:42', '2016-07-09 17:12:42'),
  (4, 'phpfrMaGY.jpg', 'image/jpeg', 'putih web.jpg', '2016-07-09 17:14:16', '2016-07-09 17:14:16'),
  (5, 'phpzM1Ybr.jpg', 'image/jpeg', 'abu misty light web.jpg', '2016-07-09 17:16:22', '2016-07-09 17:16:22'),
  (6, 'phpzn1VKH.jpg', 'image/jpeg', 'abu gelap web.jpg', '2016-07-09 17:18:52', '2016-07-09 17:18:52'),
  (7, 'phpcbg909.jpg', 'image/jpeg', 'biru web.jpg', '2016-07-09 17:19:42', '2016-07-09 17:19:42'),
  (8, 'phpZgYNaE.jpg', 'image/jpeg', 'merah web.jpg', '2016-07-09 17:20:36', '2016-07-09 17:20:36'),
  (9, 'phprBNxXK.jpg', 'image/jpeg', 'maroon web.jpg', '2016-07-09 17:23:46', '2016-07-09 17:23:46'),
  (10, 'phpgNxBeL.jpg', 'image/jpeg', 'navy blue web.jpg', '2016-07-09 17:24:54', '2016-07-09 17:24:54'),
  (11, 'phpPgMyc0.jpg', 'image/jpeg', 'coklat kopi web.jpg', '2016-07-09 17:25:53', '2016-07-09 17:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `gallery_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `name`, `created_by`, `published`, `created_at`, `updated_at`) VALUES
  (12, 'SUPERWHITE', 1, 1, '2016-06-19 18:09:44', '2016-06-19 18:09:44'),
  (13, 'DISCHARGE', 1, 1, '2016-06-19 18:09:49', '2016-06-19 18:09:49'),
  (15, 'PLASTISOL', 1, 1, '2016-07-09 17:04:35', '2016-07-09 17:04:35'),
  (16, 'RUBBER', 1, 1, '2016-07-09 17:06:07', '2016-07-09 17:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(10) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_name` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_album_id_foreign` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `content`, `created_at`, `updated_at`) VALUES
  (1, '<p><a href="http://www.google.co.id/maps/place/Goodmaker+Studio+(Konveksi)/@-6.207323,106.9754243,17z/data=!3m1!4b1!4m5!3m4!1s0x2e698b8bf8d890ff:0xec05b537f2825c8e!8m2!3d-6.207323!4d106.977613">http://www.google.co.id/maps/place/Goodmaker+Studio+(Konveksi)/@-6.207323,106.9754243,17z/data=!3m1!4b1!4m5!3m4!1s0x2e698b8bf8d890ff:0xec05b537f2825c8e!8m2!3d-6.207323!4d106.977613</a></p>\r\n', '2016-05-29 19:24:53', '2017-01-10 17:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
  ('2014_10_12_100000_create_password_resets_table', 1),
  ('2016_05_09_114805_buat_table_users', 1),
  ('2016_05_18_135121_create_products_table', 1),
  ('2016_05_19_014445_create_currency_list_table', 1),
  ('2016_05_19_131128_create_blogpost_table', 1),
  ('2016_05_19_132325_create_blogcomments_table', 1),
  ('2016_05_20_212423_create_widgets_table', 1),
  ('2016_05_21_124851_create_images_tables', 1),
  ('2016_05_21_125053_create_albums_table', 1),
  ('2016_05_21_172259_create_contacts_table', 1),
  ('2016_05_21_173235_create_faq_table', 1),
  ('2016_05_21_173244_create_aboutus_table', 1),
  ('2016_05_21_173255_create_workshop_table', 1),
  ('2016_05_25_155711_create_gallery_table', 1),
  ('2016_05_25_155834_create_photos_table', 1),
  ('2016_05_27_202116_create_workshop2_table', 1),
  ('2016_05_27_220127_create_location_table', 1),
  ('2016_05_28_084857_create_featured_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `file_mime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_height` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_width` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `gallery_id`, `file_name`, `file_size`, `file_mime`, `file_path`, `created_by`, `created_at`, `updated_at`, `file_height`, `file_width`) VALUES
  (30, 12, '5780f5ddf1180angel & the dog sml.jpg', '129751', 'image/jpeg', 'uploads/5780f5ddf1180angel & the dog sml.jpg', 4, '2016-07-09 17:02:21', '2016-07-09 17:02:21', '1240', '1748'),
  (31, 12, '5780f5de78530darth maul copy.jpg', '164588', 'image/jpeg', 'uploads/5780f5de78530darth maul copy.jpg', 4, '2016-07-09 17:02:22', '2016-07-09 17:02:22', '1240', '1748'),
  (32, 12, '5780f5e1465e0deadly stormtrooper copy.jpg', '194914', 'image/jpeg', 'uploads/5780f5e1465e0deadly stormtrooper copy.jpg', 4, '2016-07-09 17:02:25', '2016-07-09 17:02:25', '1240', '1748'),
  (33, 12, '5780f6160edcadeadpool copy.jpg', '151267', 'image/jpeg', 'uploads/5780f6160edcadeadpool copy.jpg', 4, '2016-07-09 17:03:18', '2016-07-09 17:03:18', '1240', '1748'),
  (34, 13, '5780f63c6f941facelady copy.jpg', '186246', 'image/jpeg', 'uploads/5780f63c6f941facelady copy.jpg', 4, '2016-07-09 17:03:56', '2016-07-09 17:03:56', '1240', '1748'),
  (35, 13, '5780f63d3580cgirlface copy.jpg', '194763', 'image/jpeg', 'uploads/5780f63d3580cgirlface copy.jpg', 4, '2016-07-09 17:03:57', '2016-07-09 17:03:57', '1240', '1748'),
  (36, 13, '5780f63f7f3degoodmaker typogrf.jpg', '175071', 'image/jpeg', 'uploads/5780f63f7f3degoodmaker typogrf.jpg', 4, '2016-07-09 17:03:59', '2016-07-09 17:03:59', '1240', '1748'),
  (37, 13, '5780f6411ccafGundam Barbatos GDMKR.jpg', '156411', 'image/jpeg', 'uploads/5780f6411ccafGundam Barbatos GDMKR.jpg', 4, '2016-07-09 17:04:01', '2016-07-09 17:04:01', '1240', '1748'),
  (38, 15, '5780f6852ff28monkey gangsta copy.jpg', '197846', 'image/jpeg', 'uploads/5780f6852ff28monkey gangsta copy.jpg', 4, '2016-07-09 17:05:09', '2016-07-09 17:05:09', '1240', '1748'),
  (39, 15, '5780f688607d7skullbox copy.jpg', '179947', 'image/jpeg', 'uploads/5780f688607d7skullbox copy.jpg', 4, '2016-07-09 17:05:12', '2016-07-09 17:05:12', '1240', '1748'),
  (40, 15, '5780f6888d641jump rabbit.jpg', '165407', 'image/jpeg', 'uploads/5780f6888d641jump rabbit.jpg', 4, '2016-07-09 17:05:12', '2016-07-09 17:05:12', '1240', '1748'),
  (41, 15, '5780f68ac0ddcthe curse.jpg', '133468', 'image/jpeg', 'uploads/5780f68ac0ddcthe curse.jpg', 4, '2016-07-09 17:05:14', '2016-07-09 17:05:14', '827', '1165'),
  (42, 16, '5780f6dd86954good galaxy copy.jpg', '173218', 'image/jpeg', 'uploads/5780f6dd86954good galaxy copy.jpg', 4, '2016-07-09 17:06:37', '2016-07-09 17:06:37', '1473', '920'),
  (43, 16, '5780f6e0b1563tiger samurai53.36546546.jpg', '178331', 'image/jpeg', 'uploads/5780f6e0b1563tiger samurai53.36546546.jpg', 4, '2016-07-09 17:06:40', '2016-07-09 17:06:40', '1240', '1748'),
  (44, 16, '5780f6e1605d8owl & wolf crop.jpg', '164230', 'image/jpeg', 'uploads/5780f6e1605d8owl & wolf crop.jpg', 4, '2016-07-09 17:06:41', '2016-07-09 17:06:41', '1748', '1240'),
  (45, 16, '5780f6e8a133dzootopia copy.jpg', '187229', 'image/jpeg', 'uploads/5780f6e8a133dzootopia copy.jpg', 4, '2016-07-09 17:06:48', '2016-07-09 17:06:48', '1240', '1748');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` double(20,2) NOT NULL,
  `product_imageurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_file_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `products_product_file_id_foreign` (`product_file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_material`, `product_color`, `product_price`, `product_imageurl`, `product_file_id`, `created_at`, `updated_at`) VALUES
  (3, 'BLACK BASIC', '', 'cotton combed 30s', 'black', 40000.00, 'phphMaceT.jpg', 3, '2016-07-09 17:12:42', '2016-11-29 11:58:34'),
  (4, 'WHITE BASIC', '', 'cotton combed 30s', 'white', 40000.00, 'phpfrMaGY.jpg', 4, '2016-07-09 17:14:16', '2016-11-29 11:58:47'),
  (5, 'MISTY GREY BASIC', '', 'cotton combed 30s', 'GREY', 40000.00, 'phpzM1Ybr.jpg', 5, '2016-07-09 17:16:22', '2016-11-29 11:58:58'),
  (6, 'DARK GREY BASIC', '', 'cotton combed 30s', 'dark grey', 40000.00, 'phpzn1VKH.jpg', 6, '2016-07-09 17:18:52', '2016-11-29 11:59:06'),
  (7, 'BLUE BASIC', '', 'cotton combed 30s', 'blue', 40000.00, 'phpcbg909.jpg', 7, '2016-07-09 17:19:42', '2016-11-29 11:59:17'),
  (8, 'RED BASIC', '', 'cotton combed 30s', 'red', 40000.00, 'phpZgYNaE.jpg', 8, '2016-07-09 17:20:36', '2016-11-29 11:59:33'),
  (9, 'MAROON BASIC', '', 'cotton combed 30s', 'maroon', 40000.00, 'phprBNxXK.jpg', 9, '2016-07-09 17:23:46', '2016-11-29 11:59:53'),
  (10, 'NAVY BLUE BASIC', '', 'cotton combed 30s', 'navy blue', 40000.00, 'phpgNxBeL.jpg', 10, '2016-07-09 17:24:54', '2016-11-29 12:00:08'),
  (11, 'BROWN BASIC', '', 'cotton combed 30s', 'brown', 40000.00, 'phpPgMyc0.jpg', 11, '2016-07-09 17:25:53', '2016-11-29 12:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userrole` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userrole`, `username`, `password`, `email`, `name`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
  (1, 'Admin', 'saveroo', '$2y$10$bZaZ5oC3MWt1lec2gRAf7.EkZGRpybhpHf/y0ukFuhWlXwVar9mCa', 'saveroo27@gmail.com', 'Surga Savero', 'Jl. Walet No. G/91 Komplek Hankam Slipi', 'OrhKXVhrJSAzGpCMzRZAMUm2gIAqTyQ4nsHOvlRAVcLvMWj3XOaOHece1UbN', '2016-05-29 18:37:59', '2016-05-29 18:37:59'),
  (2, 'Admin', 'goodmaker', '$2y$10$niWYNIRBBrJOde41Ys4eQOKU695k/d.v1e4KFhj9xZNEDIL0S1spW', 'good@gm.co.id', 'Good Maker', 'teas', '3q26C7BRr4LHnNq3bjBSZaXkTL5Iba2f4MAY2sGotaK3GGpzJR7NanH2n765', '2016-05-29 18:52:51', '2016-05-29 18:52:51'),
  (3, 'Admin', 'goodmakerd', '$2y$10$mZbnxV.LohFrR6bjXbfX/.RHN.G8B5Y0ddL.JouEpkqUF7mm9R6x.', 'godod@gm.co.id', 'Good Maker', 'teas', NULL, '2016-05-29 19:20:11', '2016-05-29 19:20:11'),
  (4, 'Admin', 'thabowo', '$2y$10$k7sAJK5m3o80xpXLtY3tj.MoKYq7oyVfdoOxQkt3BgwYxQGB57umG', 'intank39@gmail.com', 'intan kartika', 'villa tanggerang regency 1', 'LbT8UxaCwMKHVThlJOMPrjDryGkJ2bY8ba7cZyvIoJQrj9CshE8Zwz2MNlE4', '2016-05-30 15:51:19', '2016-05-30 15:51:19'),
  (5, 'Admin', 'avioem', '$2y$10$S2OVhx5ftkzoKj21tC/s3.N/Pu20991lQMCj0yt3pJl8eEnVg8tzi', 'avioem@gmail.com', 'avioem', '', NULL, '2016-07-09 19:43:20', '2016-07-09 19:43:20'),
  (6, 'Admin', 'iyung', '$2y$10$591oz4P1BaKze.hVYNFLK.ypkuShA8IbQc6MDSpBsljY.12xTkPC6', 'iyung.199@gmail.com', 'amirullah', '', 'BR1wf10QwahuJq8XJ4po2eoRozRrGL4oFIZGVA4zdYHgxARPcotViOIDQR6m', '2016-10-06 06:34:00', '2016-10-06 06:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `widgets_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `widgets_name` varchar(255) NOT NULL,
  `widgets_slug` varchar(255) NOT NULL,
  `widgets_content` text,
  `integer_value` int(11) NOT NULL,
  `float_value` double(8,2) NOT NULL,
  `decimal_value` decimal(8,2) NOT NULL,
  `double_value` double NOT NULL,
  `boolean_value` tinyint(1) NOT NULL,
  `date_value` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`widgets_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`widgets_id`, `widgets_name`, `widgets_slug`, `widgets_content`, `integer_value`, `float_value`, `decimal_value`, `double_value`, `boolean_value`, `date_value`, `created_at`, `updated_at`) VALUES
  (1, 'Currency', 'USD', NULL, 0, 0.00, 0.00, 13052, 0, '0000-00-00', '2016-11-02 19:41:04', '2016-11-02 23:41:04'),
  (2, 'Facebook', 'FB', 'http://yourfblink.com', 0, 0.00, 0.00, 0, 0, '0000-00-00', '2016-06-19 14:11:37', '2016-06-19 18:11:37'),
  (3, 'Instagram', 'IG', 'http://instagram.com/goodmaker_studio', 0, 0.00, 0.00, 0, 0, '0000-00-00', '2017-01-10 12:22:10', '2017-01-10 17:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE IF NOT EXISTS `workshop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workshop_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workshop2`
--

CREATE TABLE IF NOT EXISTS `workshop2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `workshop2`
--

INSERT INTO `workshop2` (`id`, `content`, `created_at`, `updated_at`) VALUES
  (1, ' <style>\r\n	.workshop{position:relative;width:100%;height:100%}.workshop img{width:100%;vertical-align:top}.workshop:after,.workshop:before{position:absolute;opacity:0;transition:all .5s;-webkit-transition:all .5s}.workshop:after{content:''\\A'';width:100%;height:100%;top:0;left:0;background:linear-gradient(rgba(0,100,100,.3),rgba(0,150,50,.3))}.workshop:before{content:attr(data-content);width:100%;color:#fff;z-index:1;bottom:0;padding:4px 10px;text-align:center;font-family:monospace;font-size:120%;opacity:.1;background:rgba(0,100,120,.4);box-sizing:border-box;-moz-box-sizing:border-box}.workshop:hover:after,.workshop:hover:before{opacity:1}\r\n	</style>\r\n	<div class="container">\r\n            <div class="row">\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Pemotongan Bahan">\r\n                        <img class="img-responsive" src="asset/w1.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Pemotongan Bahan">\r\n                        <img class="img-responsive" src="asset/w2.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Mesin Jahit Union Special">\r\n                        <img class="img-responsive" src="asset/w3.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Proses Jahit">\r\n                        <img class="img-responsive" src="asset/w4.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Proses Jahit">\r\n                        <img class="img-responsive" src="asset/w5.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Meja Sablon Rotari">\r\n                        <img class="img-responsive" src="asset/w6.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Mesin Press">\r\n                        <img class="img-responsive" src="asset/w7.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Tinta Sablon">\r\n                        <img class="img-responsive" src="asset/w8.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n                <div class="col-xs-12 col-md-4 col-centered" style="padding:0px">\r\n                    <div class="workshop" data-content="Meja Sablon Rel">\r\n                        <img class="img-responsive" src="asset/w9.jpg" alt="">\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>', '2016-05-30 15:55:30', '2016-06-11 23:52:35');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_file_id_foreign` FOREIGN KEY (`product_file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
  ('root', '[{"db":"goodmaker","table":"photos"},{"db":"goodmaker","table":"files"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;