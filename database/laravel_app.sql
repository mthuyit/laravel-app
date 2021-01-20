-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 09:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT 1,
  `stt` int(11) DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `description`, `body`, `active`, `stt`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Have you changed your political allegiance ?', 'have-you-changed-your-political-allegiance', 'blogs\\December2019\\hgourcDL0EaS5m7tujlM.jpg', 'We’re looking for people who are planning to vote for a different party in the next election. Perhaps you’ve gone from Labour to Green, or Lib Dem to Ukip. If so, we want to hear from you', '<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>\n<p>&nbsp;</p>\n<blockquote>\n<p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. In venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque. Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex</p>\n</blockquote>\n<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>', 1, 0, 'Have you changed your political allegiance?', '', 'We’re looking for people who are planning to vote for a different party in the next election. Perhaps you’ve gone from Labour to Green, or Lib Dem to Ukip. If so, we want to hear from you', '2019-12-19 20:41:00', '2020-10-14 07:04:55'),
(2, 'Spot the real Guardian headlines amid the fakes', 'spot-the-real-guardian-headlines-amid-the-fakes', 'blogs\\December2019\\6jBjj0isQoASkc5x3oHQ.jpg', 'A new Tumblr blog has been making fun of the Guardian\'s comment pages – but can you tell the difference between the real headlines and the fakes?', '<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>\r\n<p>&nbsp;</p>\r\n<blockquote>\r\n<p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. In venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque. Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex</p>\r\n</blockquote>\r\n<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>', 1, 0, NULL, NULL, NULL, '2019-12-19 20:43:18', '2019-12-19 20:43:18'),
(3, 'What are your experiences of renting in London?', 'what-are-your-experiences-of-renting-in-london', 'blogs\\December2019\\wYJerYngltCeMc56bJFr.jpg', 'Rental prices in London are rising five times faster than tenant pay. What are your experiences of being a private tenant in the capital?', '<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>\r\n<p>&nbsp;</p>\r\n<blockquote>\r\n<p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. In venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque. Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex</p>\r\n</blockquote>\r\n<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>', 1, 0, NULL, NULL, NULL, '2019-12-19 20:44:21', '2019-12-19 20:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `stt`, `active`, `created_at`, `updated_at`, `links`) VALUES
(1, 'brands\\December2019\\pIA8UKMI0U1Vu3H2w7K0.png', 0, 1, '2019-12-14 00:50:49', '2019-12-14 00:50:49', NULL),
(2, 'brands\\December2019\\un3pYLeVo4gWjbWPeUtM.png', 0, 1, '2019-12-14 00:51:04', '2019-12-14 00:51:04', NULL),
(3, 'brands\\December2019\\Aw9n38FzEqtFuWgN1loN.png', 0, 1, '2019-12-14 00:51:50', '2019-12-14 00:51:50', NULL),
(4, 'brands\\December2019\\L1Brgnyx1h9tJfBkGMiG.png', 0, 1, '2019-12-14 00:52:01', '2019-12-14 00:52:01', NULL),
(5, 'brands\\December2019\\G7dv3hKNVOE11FNEFTct.png', 0, 1, '2019-12-14 00:52:17', '2019-12-14 00:52:17', NULL),
(6, 'brands\\December2019\\GjVin2zDrLPDQCX9kfKT.png', 0, 1, '2019-12-14 00:52:28', '2019-12-14 00:52:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '{}', 1),
(16, 2, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 3),
(18, 2, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(19, 2, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 4),
(20, 2, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(21, 2, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(23, 2, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 9),
(24, 2, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 11),
(25, 2, 'image', 'image', 'Ảnh đại diện', 0, 0, 1, 1, 1, 1, '{}', 2),
(26, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 3, 'name', 'text', 'Họ và tên', 1, 1, 1, 1, 1, 1, '{}', 2),
(28, 3, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(29, 3, 'password', 'password', 'Mật khẩu', 1, 0, 0, 1, 1, 0, '{}', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Chức vụ', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(32, 3, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 0, '{}', 6),
(33, 3, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 7),
(34, 3, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(47, 6, 'name', 'text', 'Quyền', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(48, 6, 'created_at', 'timestamp', 'Ngày tạo', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(49, 6, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(50, 6, 'display_name', 'text', 'Tên hiển thị', 1, 1, 1, 1, 1, 1, '\"\"', 5),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, '{}', 9),
(54, 3, 'user_belongstomany_role_relationship', 'relationship', 'Chức vụ phụ', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(79, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(80, 10, 'product_id', 'number', 'Product Id', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(81, 10, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(82, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(83, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(84, 11, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 11, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 0, 0, 0, 1, '{}', 13),
(103, 11, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 14),
(104, 12, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 12, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(106, 12, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 4),
(107, 12, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{}', 5),
(108, 12, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(109, 12, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(110, 12, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 13),
(111, 12, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 8),
(112, 12, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(113, 12, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(114, 12, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(115, 12, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 14),
(116, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 13, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 4),
(118, 13, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 5),
(119, 13, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{}', 6),
(120, 13, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(121, 13, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(122, 13, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 12),
(123, 13, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 8),
(124, 13, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(125, 13, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(126, 13, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 11),
(127, 13, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 13),
(128, 13, 'id_list', 'text', 'Id List', 0, 1, 1, 1, 1, 1, '{}', 14),
(129, 13, 'product_cat_belongsto_product_list_relationship', 'relationship', 'Danh mục cấp 1', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductList\",\"table\":\"product_lists\",\"type\":\"belongsTo\",\"column\":\"id_list\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(130, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(131, 14, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 5),
(132, 14, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 6),
(133, 14, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{}', 7),
(134, 14, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 8),
(135, 14, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(136, 14, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 15),
(137, 14, 'id_list', 'text', 'Id List', 0, 1, 1, 1, 1, 1, '{}', 9),
(138, 14, 'id_cat', 'text', 'Id Cat', 0, 1, 1, 1, 1, 1, '{}', 10),
(139, 14, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 11),
(140, 14, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 12),
(141, 14, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 13),
(142, 14, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 14),
(143, 14, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 16),
(144, 14, 'product_item_belongsto_product_list_relationship', 'relationship', 'Danh mục cấp 1', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductList\",\"table\":\"product_lists\",\"type\":\"belongsTo\",\"column\":\"id_list\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(145, 14, 'product_item_belongsto_product_cat_relationship', 'relationship', 'Danh mục cấp 2', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCat\",\"table\":\"product_cats\",\"type\":\"belongsTo\",\"column\":\"id_cat\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(146, 15, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(147, 15, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 6),
(148, 15, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 7),
(149, 15, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 8),
(150, 15, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 9),
(151, 15, 'image', 'image', 'Ảnh đại diện', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"500\",\"height\":\"500\"}}]}', 10),
(152, 15, 'images', 'multiple_images', 'Ảnh kèm theo', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"500\",\"height\":\"500\"}}]}', 11),
(153, 15, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(154, 15, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 16),
(155, 15, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 12),
(156, 15, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 13),
(157, 15, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 14),
(158, 15, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 15),
(159, 15, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 18),
(160, 15, 'id_list', 'text', 'Id List', 0, 1, 1, 1, 1, 1, '{}', 21),
(161, 15, 'id_cat', 'text', 'Id Cat', 0, 1, 1, 1, 1, 1, '{}', 23),
(162, 15, 'id_item', 'text', 'Id Item', 0, 1, 1, 1, 1, 1, '{}', 25),
(163, 15, 'product_belongsto_product_list_relationship', 'relationship', 'Danh mục cấp 1', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductList\",\"table\":\"product_lists\",\"type\":\"belongsTo\",\"column\":\"id_list\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(164, 15, 'product_belongsto_product_cat_relationship', 'relationship', 'Danh mục cấp 2', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductCat\",\"table\":\"product_cats\",\"type\":\"belongsTo\",\"column\":\"id_cat\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(165, 15, 'product_belongsto_product_item_relationship', 'relationship', 'Danh mục cấp 3', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProductItem\",\"table\":\"product_items\",\"type\":\"belongsTo\",\"column\":\"id_item\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(166, 15, 'featured', 'checkbox', 'Nổi bật', 0, 1, 0, 0, 0, 1, '{}', 17),
(167, 15, 'price', 'number', 'Giá', 0, 0, 1, 1, 1, 1, '{}', 19),
(168, 12, 'icon', 'text', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 6),
(169, 16, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(170, 16, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 3),
(171, 16, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(172, 16, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"870\",\"height\":\"475\"}}]}', 5),
(173, 16, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 6),
(174, 16, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 8),
(175, 16, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(176, 16, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 7),
(177, 12, 'footer', 'checkbox', 'Footer', 0, 1, 0, 0, 0, 1, '{}', 12),
(178, 17, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(179, 17, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(180, 17, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 4),
(181, 17, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 5),
(182, 17, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 6),
(183, 17, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(184, 17, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(185, 17, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 9),
(186, 17, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 0, 0, 1, '{}', 8),
(187, 17, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 10),
(188, 18, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(189, 18, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"160\",\"height\":\"65\"}}]}', 3),
(190, 18, 'stt', 'number', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(191, 18, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 7),
(192, 18, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 5),
(193, 18, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 6),
(194, 18, 'links', 'text', 'Links', 0, 1, 1, 1, 1, 1, '{}', 4),
(195, 15, 'hot', 'checkbox', 'Hot', 0, 1, 0, 0, 0, 1, '{}', 22),
(196, 15, 'new', 'checkbox', 'Mới', 0, 1, 0, 0, 0, 1, '{}', 24),
(197, 2, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 5),
(198, 2, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 10),
(199, 2, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 12),
(200, 15, 'oldprice', 'number', 'Giá cũ', 0, 0, 1, 1, 1, 1, '{}', 20),
(201, 19, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(202, 19, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 3),
(203, 19, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', 4),
(204, 19, 'image', 'image', 'Ảnh đại diện', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"512\",\"height\":\"305\"}}]}', 5),
(205, 19, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 6),
(206, 19, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(207, 19, 'active', 'checkbox', 'Hiển thị', 0, 1, 0, 0, 0, 1, '{}', 9),
(208, 19, 'stt', 'text', 'STT', 0, 1, 0, 0, 0, 1, '{}', 2),
(209, 19, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 10),
(210, 19, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(211, 19, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 12),
(212, 19, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 8),
(213, 19, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 13),
(214, 11, 'fullname', 'text', 'Họ và tên', 0, 1, 1, 1, 1, 1, '{}', 4),
(215, 11, 'phone', 'text', 'Điện thoại', 0, 1, 1, 1, 1, 1, '{}', 5),
(216, 11, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(217, 11, 'address', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 7),
(218, 11, 'note', 'text_area', 'Ghi chú', 0, 0, 1, 0, 0, 1, '{}', 8),
(219, 11, 'adminnote', 'text_area', 'Admin Note', 0, 0, 1, 1, 1, 1, '{}', 9),
(220, 11, 'error', 'text', 'Lỗi', 0, 0, 1, 0, 0, 1, '{}', 10),
(221, 11, 'total', 'number', 'Tổng tiền', 0, 1, 0, 0, 0, 1, '{}', 11),
(222, 3, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(223, 3, 'email_verified_at', 'timestamp', 'Email xác minh', 0, 1, 1, 1, 1, 1, '{}', 11),
(224, 20, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(225, 20, 'name', 'text', 'Họ và tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(226, 20, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(227, 20, 'phone', 'text', 'Điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(228, 20, 'address', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 5),
(229, 20, 'subject', 'text', 'Tiêu đề', 0, 0, 1, 1, 1, 1, '{}', 6),
(230, 20, 'message', 'text', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(231, 20, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 8),
(232, 20, 'updated_at', 'timestamp', 'Ngày cập nhật', 0, 0, 0, 0, 0, 0, '{}', 9),
(233, 20, 'error', 'text', 'Lỗi', 0, 1, 1, 1, 1, 1, '{}', 10),
(235, 15, 'product_belongstomany_tag_relationship', 'relationship', 'Tags', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 26),
(236, 20, 'view', 'checkbox', 'Đã xem', 0, 1, 0, 0, 0, 0, '{}', 11),
(237, 21, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(238, 21, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 4),
(239, 21, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(240, 21, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(241, 21, 'hotline', 'text', 'Hotline', 0, 1, 1, 1, 1, 1, '{}', 7),
(242, 21, 'workingtime', 'text', 'Thời gian làm việc', 0, 1, 1, 1, 1, 1, '{}', 8),
(243, 21, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"166\",\"height\":\"65\"}}]}', 9),
(244, 21, 'freeship', 'text', 'Miễn phí giao hàng', 0, 1, 1, 1, 1, 1, '{}', 10),
(245, 21, 'moneyback', 'text', 'Hoàn tiền', 0, 1, 1, 1, 1, 1, '{}', 11),
(246, 21, 'address', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 12),
(247, 21, 'copyright', 'text', 'Copyright', 0, 1, 1, 1, 1, 1, '{}', 13),
(248, 21, 'contact', 'rich_text_box', 'Thông tin liên hệ', 0, 1, 1, 1, 1, 1, '{}', 14),
(249, 21, 'map', 'text_area', 'Iframe bản đồ', 0, 1, 1, 1, 1, 1, '{}', 15),
(250, 21, 'favicon', 'image', 'Favicon', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"thumbnails\":[{\"name\":\"cropped\",\"crop\":{\"width\":\"50\",\"height\":\"50\"}}]}', 16),
(251, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 17),
(252, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(253, 21, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(254, 3, 'phone', 'text', 'Điện thoại', 0, 1, 1, 1, 1, 1, '{}', 12),
(255, 3, 'address', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 13),
(256, 11, 'user_id', 'number', 'ID Người mua', 0, 1, 0, 0, 0, 1, '{}', 2),
(257, 21, 'geo', 'text', 'Tọa độ', 0, 1, 1, 1, 1, 1, '{}', 19),
(258, 21, 'website', 'text', 'Trang web', 0, 1, 1, 1, 1, 1, '{}', 20),
(259, 11, 'order_code', 'text', 'Mã đơn hàng', 0, 1, 1, 0, 0, 1, '{}', 3),
(262, 11, 'payment_type', 'select_dropdown', 'Phương thức thanh toán', 0, 0, 1, 0, 0, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Thanh to\\u00e1n ngay\",\"2\":\"Thanh to\\u00e1n t\\u1ea1m gi\\u1eef\"}}', 17),
(264, 11, 'status', 'select_dropdown', 'Tình trạng', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"\\u0110\\u01a1n b\\u1ecb h\\u1ee7y\",\"1\":\"\\u0110\\u01a1n ch\\u1edd x\\u00e1c nh\\u1eadn\",\"2\":\"\\u0110ang giao h\\u00e0ng\",\"3\":\"\\u0110\\u00e3 giao h\\u00e0ng\",\"4\":\"\\u0110\\u00e3 thanh to\\u00e1n\",\"5\":\"\\u0110\\u00e3 ho\\u00e0n ti\\u1ec1n (L\\u00fd do: h\\u1ebft h\\u00e0ng)\"}}', 8),
(265, 11, 'payment_method', 'select_dropdown', 'Phương thức thanh toán', 0, 0, 1, 0, 0, 1, '{\"default\":\"cash\",\"options\":{\"cash\":\"Thanh to\\u00e1n khi nh\\u1eadn h\\u00e0ng\",\"nganluong\":\"Thanh to\\u00e1n ng\\u00e2n l\\u01b0\\u1ee3ng\"}}', 19),
(266, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(267, 22, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(268, 22, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 3),
(269, 22, 'updated_at', 'timestamp', 'Ngày sửa', 0, 0, 0, 0, 0, 0, '{}', 4),
(270, 21, 'title', 'text', 'Tên công ty', 0, 1, 1, 1, 1, 1, '{}', 2),
(271, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(272, 23, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(273, 23, 'star', 'number', 'Số SAO', 0, 1, 1, 1, 1, 1, '{}', 8),
(275, 23, 'fullname', 'text', 'Họ và tên', 0, 1, 1, 1, 1, 1, '{}', 4),
(276, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(277, 23, 'review', 'text', 'Nhận xét', 0, 1, 1, 1, 1, 1, '{}', 6),
(278, 23, 'active', 'checkbox', 'Hiển thị', 0, 1, 1, 1, 1, 1, '{}', 9),
(279, 23, 'created_at', 'timestamp', 'Ngày tạo', 0, 1, 1, 1, 0, 1, '{}', 10),
(280, 23, 'updated_at', 'timestamp', 'Ngày sửa', 0, 0, 0, 0, 0, 0, '{}', 11),
(281, 23, 'rating_belongsto_product_relationship', 'relationship', 'Sản phẩm', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"blogs\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(282, 23, 'ip', 'text', 'Ip', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Trang', 'Trang', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-10 23:08:01', '2020-09-05 08:22:24'),
(3, 'users', 'users', 'Thành viên', 'Thành viên', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"getNotInDevelop\"}', '2019-12-10 23:08:01', '2020-10-10 08:39:39'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-10 23:08:01', '2019-12-10 23:08:01'),
(6, 'roles', 'roles', 'Phân quyền', 'Phân quyền', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-10 23:08:01', '2020-09-07 07:39:46'),
(10, 'category-product', 'category-product', 'Category Product', 'Category Products', 'voyager-categories', 'App\\Models\\CategoryProduct', NULL, '', '', 1, 0, NULL, '2019-12-10 23:08:13', '2019-12-10 23:08:13'),
(11, 'orders', 'orders', 'Đơn hàng', 'Đơn hàng', 'voyager-documentation', 'App\\Models\\Order', NULL, '\\App\\Http\\Controllers\\Voyager\\OrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-10 23:08:13', '2020-11-25 08:10:56'),
(12, 'product_lists', 'product-lists', 'Danh mục cấp 1', 'Danh mục cấp 1', 'voyager-tag', 'App\\Models\\ProductList', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 00:35:54', '2020-09-16 06:01:47'),
(13, 'product_cats', 'product-cats', 'Danh mục cấp 2 ', 'Danh mục cấp 2 ', 'voyager-tag', 'App\\Models\\ProductCat', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 01:36:07', '2020-09-16 06:02:35'),
(14, 'product_items', 'product-items', 'Danh mục cấp 3', 'Danh mục cấp 3', 'voyager-tag', 'App\\Models\\ProductItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 02:12:58', '2020-09-16 06:03:00'),
(15, 'products', 'products', 'Sản phẩm', 'Sản phẩm', 'voyager-bag', 'App\\Models\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 19:53:21', '2020-11-11 08:22:31'),
(16, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-13 01:57:23', '2020-09-16 06:03:35'),
(17, 'tags', 'tags', 'Tag', 'Tags', 'voyager-tag', 'App\\Models\\Tag', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-13 20:25:36', '2020-09-19 09:13:30'),
(18, 'brands', 'brands', 'Thương hiệu', 'Thương hiệu', 'voyager-photo', 'App\\Models\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-14 00:46:29', '2020-09-16 06:04:15'),
(19, 'blogs', 'blogs', 'Tin tức', 'Tin tức', 'voyager-news', 'App\\Models\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"stt\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-19 20:13:09', '2020-09-16 06:04:29'),
(20, 'contacts', 'contacts', 'Liên hệ', 'Liên hệ', 'voyager-mail', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-28 02:09:09', '2020-09-16 04:24:03'),
(21, 'site_settings', 'site-settings', 'Cấu hình chung', 'Cấu hình chung', 'voyager-company', 'App\\Models\\SiteSetting', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-25 01:27:29', '2020-12-18 02:37:23'),
(22, 'newsletters', 'newsletters', 'Đăng ký nhận tin', 'Đăng ký nhận tin', 'voyager-receipt', 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-17 03:20:58', '2020-12-17 03:27:05'),
(23, 'ratings', 'ratings', 'Đánh giá sao', 'Đánh giá sao', 'voyager-medal-rank-star', 'App\\Models\\Rating', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-19 08:11:23', '2020-12-21 03:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-10 23:08:05', '2019-12-10 23:08:05'),
(2, 'main', '2019-12-10 23:08:15', '2019-12-10 23:08:15'),
(3, 'social', '2019-12-10 23:08:15', '2019-12-13 19:39:48'),
(4, 'footer', '2019-12-13 19:46:22', '2019-12-13 19:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Bảng điều khiển', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2019-12-10 23:08:05', '2020-09-03 09:07:33', 'voyager.dashboard', 'null'),
(2, 1, 'Thư viện ảnh', '', '_self', 'voyager-images', '#000000', NULL, 9, '2019-12-10 23:08:05', '2020-08-28 07:20:43', 'voyager.media.index', 'null'),
(4, 1, 'Quản lý thành viên', '', '_self', 'voyager-person', '#000000', 8, 1, '2019-12-10 23:08:05', '2020-09-25 03:45:34', 'voyager.users.index', 'null'),
(6, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', NULL, 10, '2019-12-10 23:08:05', '2020-08-28 07:19:22', 'voyager.pages.index', 'null'),
(7, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 8, 2, '2019-12-10 23:08:05', '2020-09-25 03:45:34', 'voyager.roles.index', 'null'),
(8, 1, 'Công cụ', '', '_self', 'voyager-tools', '#000000', NULL, 13, '2019-12-10 23:08:05', '2020-12-19 08:21:17', NULL, ''),
(9, 1, 'Xây dựng Menu', '', '_self', 'voyager-list', '#000000', 8, 5, '2019-12-10 23:08:05', '2020-09-25 03:45:48', 'voyager.menus.index', 'null'),
(10, 1, 'Cơ sở dữ liệu', '', '_self', 'voyager-data', '#000000', 8, 4, '2019-12-10 23:08:06', '2020-09-25 03:45:48', 'voyager.database.index', 'null'),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 6, '2019-12-10 23:08:06', '2020-09-25 03:45:51', 'voyager.compass.index', NULL),
(12, 1, 'Cài đặt', '', '_self', 'voyager-settings', '#000000', 8, 8, '2019-12-10 23:08:06', '2020-09-25 03:45:48', 'voyager.settings.index', 'null'),
(13, 1, 'Đơn hàng', '/admin/orders', '_self', 'voyager-documentation', '#000000', NULL, 3, '2019-12-10 23:08:15', '2020-08-28 07:17:44', NULL, ''),
(14, 1, 'Sản phẩm', '', '_self', 'voyager-bag', '#000000', NULL, 2, '2019-12-10 23:08:15', '2020-08-28 07:10:24', NULL, ''),
(18, 2, 'Trang chủ', '', '_self', NULL, '#000000', NULL, 1, '2019-12-10 23:08:16', '2020-10-01 03:18:40', NULL, ''),
(19, 2, 'Giới thiệu', 'about-us', '_self', NULL, '#000000', NULL, 2, '2019-12-10 23:08:16', '2020-10-01 03:09:27', NULL, ''),
(20, 2, 'Sản phẩm', 'product', '_self', NULL, '#000000', NULL, 2, '2019-12-10 23:08:16', '2020-10-01 03:10:08', NULL, ''),
(21, 3, 'Facebook', '', '_self', 'fa-facebook', '#000000', NULL, 1, '2019-12-10 23:08:16', '2019-12-13 19:33:16', NULL, ''),
(22, 3, 'Twitter', '', '_self', 'fa-twitter', '#000000', NULL, 2, '2019-12-10 23:08:16', '2019-12-13 19:33:46', NULL, ''),
(23, 3, 'Instagram', '', '_self', 'fa-instagram', '#000000', NULL, 3, '2019-12-10 23:08:16', '2019-12-13 23:02:10', NULL, ''),
(24, 3, 'Google-plus', '', '_self', 'fa-google-plus', '#000000', NULL, 4, '2019-12-10 23:08:16', '2019-12-13 23:02:10', NULL, ''),
(25, 3, 'Youtube', '', '_self', 'fa-youtube', '#000000', NULL, 5, '2019-12-10 23:08:16', '2019-12-13 23:02:10', NULL, ''),
(26, 1, 'BREAD', 'admin/bread', '_self', 'voyager-bread', '#000000', 8, 3, '2019-12-10 23:42:43', '2020-09-25 03:45:48', NULL, ''),
(27, 1, 'Danh mục cấp 1', '', '_self', 'voyager-tag', '#000000', 14, 1, '2019-12-12 00:35:55', '2020-08-28 07:13:45', 'voyager.product-lists.index', 'null'),
(28, 1, 'Danh mục cấp 2', '', '_self', 'voyager-tag', '#000000', 14, 2, '2019-12-12 01:36:08', '2020-08-28 07:15:16', 'voyager.product-cats.index', 'null'),
(29, 1, 'Danh mục cấp 3', '', '_self', 'voyager-tag', '#000000', 14, 3, '2019-12-12 02:12:59', '2020-08-28 07:15:34', 'voyager.product-items.index', 'null'),
(30, 1, 'Sản phẩm', '/admin/products', '_self', 'voyager-bag', '#000000', 14, 4, '2019-12-12 02:20:02', '2020-08-28 07:17:33', NULL, ''),
(32, 2, 'Tin tức', 'blog', '_self', NULL, '#000000', NULL, 15, '2019-12-13 00:31:24', '2020-10-01 03:10:24', NULL, ''),
(33, 2, 'Liên hệ', 'contact-us', '_self', NULL, '#000000', NULL, 16, '2019-12-13 00:31:46', '2020-10-01 03:10:31', NULL, ''),
(34, 1, 'Hình ảnh slide', '', '_self', 'voyager-images', '#000000', NULL, 5, '2019-12-13 01:57:24', '2020-08-28 07:18:07', 'voyager.sliders.index', 'null'),
(35, 4, 'Giới thiệu', '/about-us', '_self', NULL, '#000000', NULL, 17, '2019-12-13 19:46:50', '2020-09-19 09:10:37', NULL, ''),
(36, 4, 'Sản phẩm', '/product', '_self', NULL, '#000000', NULL, 18, '2019-12-13 19:47:15', '2020-09-19 09:10:48', NULL, ''),
(37, 4, 'Liên hệ', '/contact-us', '_self', NULL, '#000000', NULL, 19, '2019-12-13 19:47:34', '2020-09-19 09:11:00', NULL, ''),
(39, 4, 'Giỏ hàng', '/cart', '_self', NULL, '#000000', NULL, 21, '2019-12-13 19:48:15', '2020-09-19 09:11:09', NULL, ''),
(40, 1, 'Tags', '', '_self', 'voyager-tag', NULL, NULL, 6, '2019-12-13 20:25:36', '2019-12-28 02:09:27', 'voyager.tags.index', NULL),
(41, 1, 'Thương hiệu', '', '_self', 'voyager-photo', '#000000', NULL, 7, '2019-12-14 00:46:30', '2020-08-28 07:18:28', 'voyager.brands.index', 'null'),
(42, 1, 'Tin tức', '', '_self', 'voyager-news', '#000000', NULL, 8, '2019-12-19 20:13:09', '2020-08-28 07:18:53', 'voyager.blogs.index', 'null'),
(43, 1, 'Liên hệ', '', '_self', 'voyager-mail', '#000000', NULL, 4, '2019-12-28 02:09:09', '2020-08-28 07:17:54', 'voyager.contacts.index', 'null'),
(44, 1, 'Cập nhật Sitemap', '', '_self', 'voyager-cloud-download', '#000000', 8, 7, '2020-01-15 05:42:48', '2020-12-19 03:39:54', 'voyager.sitemap', 'null'),
(46, 1, 'Cấu hình chung', '', '_self', 'voyager-company', '#000000', NULL, 14, '2020-09-25 03:24:23', '2020-12-19 08:21:17', 'voyager.site-settings.edit', '{\"id\": 1}'),
(47, 1, 'Đăng ký nhận tin', '', '_self', 'voyager-receipt', '#000000', NULL, 11, '2020-12-17 03:20:59', '2020-12-17 03:28:44', 'voyager.newsletters.index', 'null'),
(48, 1, 'Đánh giá sao', '', '_self', 'voyager-medal-rank-star', '#000000', NULL, 12, '2020-12-19 08:11:24', '2020-12-19 08:21:17', 'voyager.ratings.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_11_26_013050_add_user_role_relationship', 1),
(25, '2017_11_26_015000_create_user_roles_table', 1),
(26, '2017_12_11_054653_create_products_table', 1),
(27, '2018_01_11_060124_create_category_table', 1),
(28, '2018_01_11_060548_create_category_product_table', 1),
(29, '2018_01_14_215535_create_coupons_table', 1),
(30, '2018_02_08_021546_add_image_to_products_table', 1),
(31, '2018_02_08_032544_add_images_to_products_table', 1),
(32, '2018_02_25_005243_create_orders_table', 1),
(33, '2018_02_25_010522_create_order_product_table', 1),
(34, '2018_03_11_000000_add_user_settings', 1),
(35, '2018_03_14_000000_add_details_to_data_types_table', 1),
(36, '2018_03_16_000000_make_settings_value_nullable', 1),
(37, '2018_04_23_011947_add_user_role_relationship_fix', 1),
(38, '2018_04_23_012009_create_user_roles_table_fix', 1),
(39, '2018_06_29_032914_add_quantity_to_products_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 2),
(41, '2021_01_19_133820_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'mthuy.it@gmail.com', '2020-12-17 06:11:14', '2020-12-17 06:11:14'),
(4, 'minhthuy.nina@gmail.com', '2020-12-19 02:47:19', '2020-12-19 02:47:19'),
(5, 'xxxx@gmail.com', '2020-12-19 04:28:54', '2020-12-19 04:28:54'),
(6, 'mthuy.dev@gmail.com', '2020-12-19 06:06:21', '2020-12-19 06:06:21'),
(7, 'ggg@gmail.com', '2020-12-19 06:22:10', '2020-12-19 06:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('344e473b-1e0e-4943-a847-25b7fd54d4f0', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 4, '{\"title\":\"Highcharts Demo\",\"description\":\"\\u00ea\",\"url\":null}', NULL, '2021-01-20 06:19:11', '2021-01-20 06:19:11'),
('59d93dba-083f-4074-8b6c-e4af35bffc40', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 2, '{\"title\":\"Highcharts Demo\",\"description\":\"\\u00ea\",\"url\":null}', NULL, '2021-01-20 06:19:10', '2021-01-20 06:19:10'),
('ae0b9958-e605-4f49-b8cb-c45c05c30cab', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 4, '{\"title\":\"Computer\",\"description\":\"xxx\",\"url\":null}', NULL, '2021-01-19 07:47:36', '2021-01-19 07:47:36'),
('cc6548eb-73cc-4cc2-908c-e0dc09fdf9ba', 'App\\Notifications\\UserNotification', 'App\\Models\\User', 2, '{\"title\":\"Computer\",\"description\":\"xxx\",\"url\":null}', NULL, '2021-01-19 07:47:35', '2021-01-19 07:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminnote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_code` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone`, `email`, `address`, `note`, `adminnote`, `status`, `created_at`, `updated_at`, `error`, `total`, `user_id`, `order_code`, `payment_type`, `payment_method`) VALUES
(1, 'Thuy', '0123456789', 'minhthuy.nina@gmail.com', 'HCM', 'GHN', NULL, 0, '2020-11-23 07:35:30', '2020-11-23 07:35:30', NULL, 5350, 4, 'MT_1606116930', NULL, 'nganluong'),
(2, 'Thuy', '0123456789', 'minhthuy.nina@gmail.com', 'HCM', NULL, NULL, 5, '2020-11-23 07:38:39', '2020-11-25 08:17:25', NULL, 10380, 4, 'MT_1606117119', 2, 'nganluong'),
(3, 'Thuy', '0123456789', 'minhthuy.nina@gmail.com', 'HCM', 'GHN', NULL, 0, '2020-11-23 07:42:33', '2020-11-23 07:42:33', NULL, 5260, 4, 'MT_1606117353', NULL, 'nganluong'),
(4, 'Nguyễn Minh Thụy', '0366470449', 'mthuy.it@gmail.com', 'Đồng Nai', 'GHN', NULL, 1, '2020-12-02 09:24:27', '2020-12-02 09:24:28', NULL, 5260, 1, 'MT_1606901067', NULL, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, '2020-11-23 07:35:30', '2020-11-23 07:35:30'),
(2, 2, 4, 2, '2020-11-23 07:38:39', '2020-11-23 07:38:39'),
(3, 3, 5, 1, '2020-11-23 07:42:33', '2020-11-23 07:42:33'),
(4, 4, 5, 1, '2020-12-02 09:24:28', '2020-12-02 09:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`, `seo_title`) VALUES
(2, 'Giới thiệu', '', '<h3>Provide Best</h3>\n<h2>Product For You</h2>\n<p>We provide the best Beard oile all over the world. We are the worldd best store in indi for Beard Oil. You can buy our product without any hegitation because they truste us and buy our product without any hagitation because they belive and always happy buy our product.</p>\n<p>Some of our customer say&rsquo;s that they trust us and buy our product without any hagitation because they belive us and always happy to buy our product.</p>\n<p>We provide the beshat they trusted us and buy our product without any hagitation because they belive us and always happy to buy.</p>', 'pages\\December2019\\9NrGd5kRvZcv6mpclJZT.jpg', 'about-us', '', '', 1, '2019-12-17 20:51:08', '2020-11-09 09:01:07', 'Giới thiệu');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(2, 'browse_bread', NULL, '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(3, 'browse_database', NULL, '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(4, 'browse_media', NULL, '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(5, 'browse_compass', NULL, '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(6, 'browse_menus', 'menus', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(7, 'read_menus', 'menus', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(8, 'edit_menus', 'menus', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(9, 'add_menus', 'menus', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(10, 'delete_menus', 'menus', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(11, 'browse_pages', 'pages', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(12, 'read_pages', 'pages', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(13, 'edit_pages', 'pages', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(14, 'add_pages', 'pages', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(15, 'delete_pages', 'pages', '2019-12-10 23:08:06', '2019-12-10 23:08:06', NULL),
(16, 'browse_roles', 'roles', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(17, 'read_roles', 'roles', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(18, 'edit_roles', 'roles', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(19, 'add_roles', 'roles', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(20, 'delete_roles', 'roles', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(21, 'browse_users', 'users', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(22, 'read_users', 'users', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(23, 'edit_users', 'users', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(24, 'add_users', 'users', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(25, 'delete_users', 'users', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(36, 'browse_settings', 'settings', '2019-12-10 23:08:07', '2019-12-10 23:08:07', NULL),
(37, 'read_settings', 'settings', '2019-12-10 23:08:08', '2019-12-10 23:08:08', NULL),
(38, 'edit_settings', 'settings', '2019-12-10 23:08:08', '2019-12-10 23:08:08', NULL),
(39, 'add_settings', 'settings', '2019-12-10 23:08:08', '2019-12-10 23:08:08', NULL),
(40, 'delete_settings', 'settings', '2019-12-10 23:08:08', '2019-12-10 23:08:08', NULL),
(61, 'browse_orders', 'orders', '2019-12-10 23:08:17', '2019-12-10 23:08:17', NULL),
(62, 'read_orders', 'orders', '2019-12-10 23:08:18', '2019-12-10 23:08:18', NULL),
(63, 'edit_orders', 'orders', '2019-12-10 23:08:18', '2019-12-10 23:08:18', NULL),
(64, 'add_orders', 'orders', '2019-12-10 23:08:18', '2019-12-10 23:08:18', NULL),
(65, 'delete_orders', 'orders', '2019-12-10 23:08:18', '2019-12-10 23:08:18', NULL),
(66, 'browse_product_lists', 'product_lists', '2019-12-12 00:35:54', '2019-12-12 00:35:54', NULL),
(67, 'read_product_lists', 'product_lists', '2019-12-12 00:35:54', '2019-12-12 00:35:54', NULL),
(68, 'edit_product_lists', 'product_lists', '2019-12-12 00:35:54', '2019-12-12 00:35:54', NULL),
(69, 'add_product_lists', 'product_lists', '2019-12-12 00:35:54', '2019-12-12 00:35:54', NULL),
(70, 'delete_product_lists', 'product_lists', '2019-12-12 00:35:54', '2019-12-12 00:35:54', NULL),
(71, 'browse_product_cats', 'product_cats', '2019-12-12 01:36:08', '2019-12-12 01:36:08', NULL),
(72, 'read_product_cats', 'product_cats', '2019-12-12 01:36:08', '2019-12-12 01:36:08', NULL),
(73, 'edit_product_cats', 'product_cats', '2019-12-12 01:36:08', '2019-12-12 01:36:08', NULL),
(74, 'add_product_cats', 'product_cats', '2019-12-12 01:36:08', '2019-12-12 01:36:08', NULL),
(75, 'delete_product_cats', 'product_cats', '2019-12-12 01:36:08', '2019-12-12 01:36:08', NULL),
(76, 'browse_product_items', 'product_items', '2019-12-12 02:12:59', '2019-12-12 02:12:59', NULL),
(77, 'read_product_items', 'product_items', '2019-12-12 02:12:59', '2019-12-12 02:12:59', NULL),
(78, 'edit_product_items', 'product_items', '2019-12-12 02:12:59', '2019-12-12 02:12:59', NULL),
(79, 'add_product_items', 'product_items', '2019-12-12 02:12:59', '2019-12-12 02:12:59', NULL),
(80, 'delete_product_items', 'product_items', '2019-12-12 02:12:59', '2019-12-12 02:12:59', NULL),
(81, 'browse_products', 'products', '2019-12-12 19:53:21', '2019-12-12 19:53:21', NULL),
(82, 'read_products', 'products', '2019-12-12 19:53:21', '2019-12-12 19:53:21', NULL),
(83, 'edit_products', 'products', '2019-12-12 19:53:21', '2019-12-12 19:53:21', NULL),
(84, 'add_products', 'products', '2019-12-12 19:53:21', '2019-12-12 19:53:21', NULL),
(85, 'delete_products', 'products', '2019-12-12 19:53:21', '2019-12-12 19:53:21', NULL),
(86, 'browse_sliders', 'sliders', '2019-12-13 01:57:24', '2019-12-13 01:57:24', NULL),
(87, 'read_sliders', 'sliders', '2019-12-13 01:57:24', '2019-12-13 01:57:24', NULL),
(88, 'edit_sliders', 'sliders', '2019-12-13 01:57:24', '2019-12-13 01:57:24', NULL),
(89, 'add_sliders', 'sliders', '2019-12-13 01:57:24', '2019-12-13 01:57:24', NULL),
(90, 'delete_sliders', 'sliders', '2019-12-13 01:57:24', '2019-12-13 01:57:24', NULL),
(91, 'browse_tags', 'tags', '2019-12-13 20:25:36', '2019-12-13 20:25:36', NULL),
(92, 'read_tags', 'tags', '2019-12-13 20:25:36', '2019-12-13 20:25:36', NULL),
(93, 'edit_tags', 'tags', '2019-12-13 20:25:36', '2019-12-13 20:25:36', NULL),
(94, 'add_tags', 'tags', '2019-12-13 20:25:36', '2019-12-13 20:25:36', NULL),
(95, 'delete_tags', 'tags', '2019-12-13 20:25:36', '2019-12-13 20:25:36', NULL),
(96, 'browse_brands', 'brands', '2019-12-14 00:46:29', '2019-12-14 00:46:29', NULL),
(97, 'read_brands', 'brands', '2019-12-14 00:46:29', '2019-12-14 00:46:29', NULL),
(98, 'edit_brands', 'brands', '2019-12-14 00:46:29', '2019-12-14 00:46:29', NULL),
(99, 'add_brands', 'brands', '2019-12-14 00:46:29', '2019-12-14 00:46:29', NULL),
(100, 'delete_brands', 'brands', '2019-12-14 00:46:29', '2019-12-14 00:46:29', NULL),
(101, 'browse_blogs', 'blogs', '2019-12-19 20:13:09', '2019-12-19 20:13:09', NULL),
(102, 'read_blogs', 'blogs', '2019-12-19 20:13:09', '2019-12-19 20:13:09', NULL),
(103, 'edit_blogs', 'blogs', '2019-12-19 20:13:09', '2019-12-19 20:13:09', NULL),
(104, 'add_blogs', 'blogs', '2019-12-19 20:13:09', '2019-12-19 20:13:09', NULL),
(105, 'delete_blogs', 'blogs', '2019-12-19 20:13:09', '2019-12-19 20:13:09', NULL),
(106, 'browse_contacts', 'contacts', '2019-12-28 02:09:09', '2019-12-28 02:09:09', NULL),
(107, 'read_contacts', 'contacts', '2019-12-28 02:09:09', '2019-12-28 02:09:09', NULL),
(108, 'edit_contacts', 'contacts', '2019-12-28 02:09:09', '2019-12-28 02:09:09', NULL),
(109, 'add_contacts', 'contacts', '2019-12-28 02:09:09', '2019-12-28 02:09:09', NULL),
(110, 'delete_contacts', 'contacts', '2019-12-28 02:09:09', '2019-12-28 02:09:09', NULL),
(111, 'browse_site_settings', 'site_settings', '2020-09-25 01:27:29', '2020-09-25 01:27:29', NULL),
(112, 'read_site_settings', 'site_settings', '2020-09-25 01:27:29', '2020-09-25 01:27:29', NULL),
(113, 'edit_site_settings', 'site_settings', '2020-09-25 01:27:29', '2020-09-25 01:27:29', NULL),
(114, 'add_site_settings', 'site_settings', '2020-09-25 01:27:29', '2020-09-25 01:27:29', NULL),
(115, 'delete_site_settings', 'site_settings', '2020-09-25 01:27:29', '2020-09-25 01:27:29', NULL),
(116, 'browse_newsletters', 'newsletters', '2020-12-17 03:20:59', '2020-12-17 03:20:59', NULL),
(117, 'read_newsletters', 'newsletters', '2020-12-17 03:20:59', '2020-12-17 03:20:59', NULL),
(118, 'edit_newsletters', 'newsletters', '2020-12-17 03:20:59', '2020-12-17 03:20:59', NULL),
(119, 'add_newsletters', 'newsletters', '2020-12-17 03:20:59', '2020-12-17 03:20:59', NULL),
(120, 'delete_newsletters', 'newsletters', '2020-12-17 03:20:59', '2020-12-17 03:20:59', NULL),
(121, 'browse_ratings', 'ratings', '2020-12-19 08:11:24', '2020-12-19 08:11:24', NULL),
(122, 'read_ratings', 'ratings', '2020-12-19 08:11:24', '2020-12-19 08:11:24', NULL),
(123, 'edit_ratings', 'ratings', '2020-12-19 08:11:24', '2020-12-19 08:11:24', NULL),
(124, 'add_ratings', 'ratings', '2020-12-19 08:11:24', '2020-12-19 08:11:24', NULL),
(125, 'delete_ratings', 'ratings', '2020-12-19 08:11:24', '2020-12-19 08:11:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 1),
(6, 5),
(7, 1),
(7, 5),
(8, 1),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(10, 5),
(11, 1),
(11, 5),
(12, 1),
(12, 5),
(13, 1),
(13, 5),
(14, 1),
(14, 5),
(15, 1),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 1),
(21, 5),
(22, 1),
(22, 5),
(23, 1),
(23, 5),
(24, 1),
(24, 5),
(25, 1),
(25, 5),
(36, 1),
(36, 5),
(37, 1),
(37, 5),
(38, 1),
(38, 5),
(39, 1),
(39, 5),
(40, 1),
(40, 5),
(61, 1),
(61, 5),
(62, 1),
(62, 5),
(63, 1),
(63, 5),
(66, 1),
(66, 5),
(67, 1),
(67, 5),
(68, 1),
(68, 5),
(69, 1),
(69, 5),
(70, 1),
(70, 5),
(71, 1),
(71, 5),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 1),
(74, 5),
(75, 1),
(75, 5),
(76, 1),
(76, 5),
(77, 1),
(77, 5),
(78, 1),
(78, 5),
(79, 1),
(79, 5),
(80, 1),
(80, 5),
(81, 1),
(81, 5),
(82, 1),
(82, 5),
(83, 1),
(83, 5),
(84, 1),
(84, 5),
(85, 1),
(85, 5),
(86, 1),
(86, 5),
(87, 1),
(87, 5),
(88, 1),
(88, 5),
(89, 1),
(89, 5),
(90, 1),
(90, 5),
(91, 1),
(91, 5),
(92, 1),
(92, 5),
(93, 1),
(93, 5),
(94, 1),
(94, 5),
(95, 1),
(95, 5),
(96, 1),
(96, 5),
(97, 1),
(97, 5),
(98, 1),
(98, 5),
(99, 1),
(99, 5),
(100, 1),
(100, 5),
(101, 1),
(101, 5),
(102, 1),
(102, 5),
(103, 1),
(103, 5),
(104, 1),
(104, 5),
(105, 1),
(105, 5),
(106, 1),
(106, 5),
(107, 1),
(107, 5),
(108, 1),
(108, 5),
(110, 1),
(110, 5),
(113, 1),
(113, 5),
(116, 1),
(116, 5),
(117, 1),
(117, 5),
(118, 1),
(118, 5),
(119, 1),
(119, 5),
(120, 1),
(120, 5),
(121, 1),
(121, 5),
(122, 1),
(122, 5),
(123, 1),
(123, 5),
(124, 1),
(124, 5),
(125, 1),
(125, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT 0,
  `price` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `oldprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `body`, `image`, `images`, `stt`, `active`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `id_list`, `id_cat`, `id_item`, `featured`, `price`, `hot`, `new`, `oldprice`) VALUES
(2, 'Samsung Galaxy A50 - 4GB/64GB VN', 'samsung-galaxy-a50-4gb-64gb-vn', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '<p><img src=\"http://localhost:8000/storage/products/October2020/banglai-truoc.jpg\" alt=\"\" /></p>', 'products\\December2019\\xeN9fhTPWvEuwonNWH0Q.jpg', '[\"products\\\\December2019\\\\0yWxafulwOvC8Il8JrmV.jpg\",\"products\\\\December2019\\\\36qMws86Zz84xcgoEL9u.jpg\",\"products\\\\December2019\\\\WvbPkHxYvgWdF0d4qJUu.jpg\",\"products\\\\December2019\\\\z9KJ2G288QXQI3d91zh8.jpg\"]', 1, 1, 'Samsung Galaxy A50 - 4GB/64GB', NULL, NULL, '2019-12-14 01:13:00', '2021-01-19 06:33:09', 3, 1, 1, 1, 5320, 1, 0, 4500),
(3, 'Huawei P30 Lite - Chính hãng', 'huawei-p30-lite-chinh-hang', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '', 'products\\December2019\\2hEpH0LK4H74EG8Ybjd0.jpg', '[\"products\\\\December2019\\\\nuZefMZmyAXe1GjNUFZG.jpg\",\"products\\\\December2019\\\\w1p4UHWHxroBSHDwWl1s.jpg\",\"products\\\\December2019\\\\PDOeGks1aq3PunoeDYi7.jpg\"]', 2, 1, 'Huawei P30 Lite - Chính hãng', '', '', '2019-12-14 01:14:00', '2020-10-01 06:13:57', 3, NULL, NULL, 1, 5350, 1, 1, NULL),
(4, 'Oppo F11 - Xanh', 'oppo-f11-xanh', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '', 'products\\December2019\\Cs6A5qWRqGOV715LdLLE.jpg', '[\"products\\\\December2019\\\\ajKn4StCdPS1AXNVB6fe.jpg\",\"products\\\\December2019\\\\Va8N0AjXyzJZkqgoGZvs.jpg\",\"products\\\\December2019\\\\wAC0ZmgzBovqHgmQhhbs.jpg\",\"products\\\\December2019\\\\6BdfxSMRB1DyXvmxIWYL.jpg\"]', 3, 1, '', '', '', '2019-12-14 01:16:00', '2020-10-01 06:14:30', 3, NULL, NULL, 1, 5190, 1, 1, NULL),
(5, 'Samsung Galaxy A30 - 4GB/64GB', 'samsung-galaxy-a30-4gb-64gb', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '', 'products\\December2019\\zR9ad8fKub7K18qjnrFy.jpg', '[\"products\\\\December2019\\\\RIjMb5JRlGFe2DESY9Po.jpg\",\"products\\\\December2019\\\\Ovo6DOgHKWyABEYwiM9x.jpg\",\"products\\\\December2019\\\\qGcxTg17TzX7F8GU0Asa.jpg\",\"products\\\\December2019\\\\BRRAfH98mancLcRG8Hcy.jpg\",\"products\\\\December2019\\\\nB6uweWpE2UgOYBI7MA4.jpg\"]', 4, 1, '', '', '', '2019-12-14 01:17:00', '2020-10-01 06:14:44', 3, NULL, NULL, 1, 5260, 1, 1, NULL),
(6, 'Xiaomi Mi A3 - 4GB/64GB', 'xiaomi-mi-a3-4gb-64gb', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '', 'products\\December2019\\ey8EkrujMvmxksnHGiRt.jpg', '[\"products\\\\December2019\\\\KR8zEUrTiyTM0TqGMZOp.jpg\",\"products\\\\December2019\\\\R4fs3FKle7kcHTjhL35P.jpg\",\"products\\\\December2019\\\\B8qUR5yjXALsAjUK4vuZ.jpg\",\"products\\\\December2019\\\\3x8QL06cGfJp60c8pMdU.jpg\",\"products\\\\December2019\\\\r9jiQmBuiEz59lnY7xFL.jpg\"]', 5, 1, '', '', '', '2019-12-14 01:18:00', '2020-10-01 06:14:54', 3, NULL, NULL, 1, 3990, 0, 1, NULL),
(7, 'Oppo A7 - Ram 4GB', 'oppo-a7-ram-4gb', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '', 'products\\December2019\\XLokPGGym6jDOxOy5CKJ.jpg', '[\"products\\\\December2019\\\\IQiS7N4vEdoQMrRd9VQ4.jpg\",\"products\\\\December2019\\\\Sm2rxyJ0yg9nnkZ61X4X.jpg\",\"products\\\\December2019\\\\sqTmOIEDD8YXQcD4Pnsb.jpg\",\"products\\\\December2019\\\\OppVCCrTXlEvitBWjHc1.jpg\"]', 6, 1, '', '', '', '2019-12-14 01:19:00', '2020-10-22 07:29:27', 3, NULL, NULL, 1, 3990, 0, NULL, NULL),
(8, 'Vsmart Active 1+ Chính Hãng', 'vsmart-active-1-chinh-hang', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '', 'products\\December2019\\ZPG0hzkYmHwmYXxaxJjr.jpg', '[\"products\\\\December2019\\\\FNSKS84xGJX0pjTIzTkw.jpg\",\"products\\\\December2019\\\\ZMw9ceC5r7OWkRrSR2Vk.jpg\",\"products\\\\December2019\\\\wyP8phAI2qGgnfjNTLIf.jpg\",\"products\\\\December2019\\\\1mrQRMxH5ROazFkJMVmB.jpg\"]', 7, 1, '', '', '', '2019-12-14 01:21:00', '2020-10-22 07:29:50', 3, NULL, NULL, 1, 4900, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_cats`
--

CREATE TABLE `product_cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_cats`
--

INSERT INTO `product_cats` (`id`, `title`, `slug`, `image`, `body`, `stt`, `active`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `id_list`) VALUES
(1, 'Phụ kiện', 'phu-kien', NULL, '', 0, 1, '', '', '', '2019-12-12 01:53:00', '2020-09-11 08:38:09', 3),
(2, 'Tai nghe', 'tai-nghe', NULL, '', 0, 1, '', '', '', '2019-12-12 01:54:00', '2020-09-15 04:16:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `id_list` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`id`, `title`, `slug`, `image`, `body`, `stt`, `active`, `id_list`, `id_cat`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Dây cáp điện', 'day-cap-dien', NULL, '', 0, 1, 1, NULL, '', '', '', '2019-12-12 02:17:00', '2020-09-15 08:32:06'),
(2, 'Pin', 'pin', NULL, NULL, 0, 1, 3, 1, NULL, NULL, NULL, '2019-12-12 02:17:00', '2020-09-11 08:32:10'),
(4, 'Cáp dữ liệu', 'cap-du-lieu', NULL, '', 0, 1, 3, 1, '', '', '', '2019-12-12 02:18:00', '2020-09-16 04:06:49'),
(6, 'Tai nghe máy tính để bàn', 'tai-nghe-may-tinh-de-ban', NULL, '', 0, 1, 1, 2, '', '', '', '2019-12-12 02:18:00', '2020-11-27 04:17:29'),
(7, 'Tai nghe di động', 'tai-nghe-di-dong', NULL, '', 0, 1, 1, 2, '', '', '', '2019-12-12 02:18:00', '2020-11-27 04:17:54'),
(8, 'Tai nghe không dây', 'tai-nghe-khong-day', NULL, '', 0, 1, 1, 2, '', '', '', '2019-12-12 02:18:00', '2020-11-27 04:18:06'),
(9, 'Tai nghe LED', 'tai-nghe-led', NULL, '', 0, 1, 1, 2, '', '', '', '2019-12-12 02:19:00', '2020-11-27 04:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_lists`
--

CREATE TABLE `product_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_lists`
--

INSERT INTO `product_lists` (`id`, `title`, `slug`, `image`, `body`, `stt`, `active`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `icon`, `footer`) VALUES
(1, 'Máy tính', 'may-tinh', NULL, '', 0, 1, 'Máy tính', 'Máy tính', 'Máy tính', '2019-12-12 01:12:00', '2020-09-26 08:18:01', 'fa-desktop', 1),
(2, 'Máy ảnh', 'may-anh', NULL, '', 0, 1, '', '', '', '2019-12-12 01:12:00', '2020-09-26 07:44:48', 'fa-camera', 1),
(3, 'Điện thoại', 'dien-thoai', NULL, '', 0, 1, '', '', '', '2019-12-12 01:13:00', '2020-09-26 07:45:13', 'fa-book', 1),
(4, 'Bullhorn', 'bullhorn', NULL, NULL, 0, 1, NULL, NULL, NULL, '2019-12-12 01:32:00', '2019-12-12 01:32:00', 'fa-bullhorn', 1),
(5, 'Vi mạch', 'vi-mach', NULL, '', 0, 1, '', '', '', '2019-12-12 01:32:00', '2020-09-26 07:45:27', 'fa-microchip', 1),
(6, 'Sách', 'sach', NULL, '', 0, 1, '', '', '', '2019-12-12 01:32:00', '2020-09-26 07:45:41', 'fa-book', 0),
(7, 'Máy tính bảng', 'may-tinh-bang', NULL, '', 0, 1, '', '', '', '2019-12-12 01:32:00', '2020-09-26 07:45:55', 'fa-tablet', 0),
(8, 'Điện tử', 'dien-tu', NULL, '', 0, 1, '', '', '', '2019-12-12 01:32:00', '2020-09-26 07:46:08', 'fa-television', 0),
(9, 'Đồng hồ', 'dong-ho', NULL, '', 0, 1, '', '', '', '2019-12-12 01:32:00', '2020-09-26 07:46:20', 'fa-clock-o', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`) VALUES
(3, 2, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `star`, `ip`, `fullname`, `email`, `review`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'ddd', 1, '2020-12-21 06:05:10', '2020-12-21 06:05:10'),
(2, 2, 4, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'xxx', 1, '2020-12-21 06:05:33', '2020-12-21 06:05:33'),
(3, 2, 3, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'xx', 0, '2020-12-21 06:08:28', '2020-12-21 06:08:28'),
(4, 2, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'xx', 0, '2020-12-21 06:08:57', '2020-12-21 06:08:57'),
(5, 2, 4, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'gggg', 1, '2020-12-21 08:07:21', '2020-12-21 08:07:21'),
(6, 2, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'ewer', 1, '2020-12-21 08:34:11', '2020-12-21 08:34:11'),
(7, 2, 4, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'dd', 1, '2020-12-21 08:34:50', '2020-12-21 08:34:50'),
(8, 2, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'xx', 1, '2020-12-21 08:35:55', '2020-12-21 08:35:55'),
(9, 2, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'đáad', 1, '2020-12-21 08:36:04', '2020-12-21 08:36:04'),
(10, 3, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'Sản phẩm tuyệt vời', 1, '2020-12-23 03:44:33', '2020-12-23 03:44:33'),
(11, 3, 4, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'Tạm chấp nhận', 1, '2020-12-23 03:49:01', '2020-12-23 03:49:01'),
(12, 3, 5, '127.0.0.1', 'Thuy', 'mthuy.it@gmail.com', 'Hay', 1, '2020-12-23 03:49:30', '2020-12-23 03:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-10 23:08:06', '2019-12-10 23:08:06'),
(2, 'user', 'Normal User', '2019-12-10 23:08:06', '2019-12-10 23:08:06'),
(5, 'develop', 'Developer', '2020-08-27 07:11:57', '2020-09-07 09:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 8, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 5, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 7, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '694051152065-onfkriih22l6dlvkqn99km2d6g1e4td8.apps.googleusercontent.com', '', 'text', 4, 'Admin'),
(27, 'admin.description', 'Description', 'Chào mừng đến với trang quản trị', NULL, 'text', 3, 'Admin'),
(28, 'admin.title', 'Title', 'Admin', NULL, 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workingtime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freeship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneyback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `geo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`seo_title`, `meta_keywords`, `meta_description`, `email`, `hotline`, `workingtime`, `logo`, `freeship`, `moneyback`, `address`, `copyright`, `contact`, `map`, `favicon`, `created_at`, `updated_at`, `id`, `geo`, `website`, `title`) VALUES
('✓ Điện thoại di động gía rẻ nhất - Siêu thị điện thoại Quỳnh Store VN', 'Thế giới di động, Thegioididong, điện thoại di động, dtdd, smartphone, tablet, máy tính bảng, Laptop, máy tính xách tay, phụ kiện điện thoại, tin công nghệ VN', 'Hệ thống bán lẻ điện thoại di động, smartphone, máy tính bảng, tablet, laptop, phụ kiện chính hãng mới nhất, giá tốt, dịch vụ khách hàng được yêu thích nhất VN', 'mthuy.it@gmail.com', '0366 470 449', 'Thứ 2 – Thứ 7: 08AM – 22PM', 'site-settings\\September2020\\BAPYO4bFtUvNcGJIwNMS.png', 'Hóa đơn trên 199k', '30 ngày sau khi giao hàng', '106 An Nhơn, P.17, Gò vấp, TP HCM', '© Copyright 2018 quynhstore.com, All rights reserved', '<p>Độ s&aacute;ng Dynamicus cũng l&agrave; qu&aacute; tr&igrave;nh diễn ra theo sự thay đổi của c&aacute;c lớp nền. Thật ngạc nhi&ecirc;n khi lưu &yacute; rằng được viết bằng Gothic, t&ocirc;i nghĩ b&acirc;y giờ r&otilde; r&agrave;ng l&agrave; c&aacute;c chữ c&aacute;i anteposuerit của h&igrave;nh dạng con người.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3916.503058922198!2d107.02478301526111!3d11.000832458018445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174e581b18005e7%3A0xca748d05a593df08!2zVHLhuqFpIE7huqVtIELDoG8gTmfGsA!5e0!3m2!1svi!2s!4v1602833521121!5m2!1svi!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'site-settings\\September2020\\qXvMcODQH1CEIMU1EMth.png', NULL, '2020-12-18 03:17:59', 1, '10.836508, 106.679204', 'quynhstore.com', 'Công ty TNHH siêu thị điện thoại Quỳnh Store');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `stt`, `active`) VALUES
(1, 'Samson s90', 'Typi Non Habent Claritatem Insitam; Est Usus Legentis', 'sliders\\December2019\\JJLvXJdOkjVD7xkBEbhd.jpg', '2019-12-13 02:00:31', '2019-12-13 02:00:31', 0, 1),
(2, 'Headphones az12', 'Typi Non Habent Claritatem Insitam; Est Usus Legentis', 'sliders\\December2019\\O5dBefgaMCO2LuVjLB4T.jpg', '2019-12-13 02:01:25', '2019-12-13 02:01:25', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT 0,
  `active` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `seo_title`, `meta_keywords`, `meta_description`, `stt`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Máy tính', 'may-tinh', 'Máy tính', '', '', 0, 1, '2019-12-13 20:27:00', '2020-11-09 08:17:24'),
(2, 'Máy ảnh', 'may-anh', NULL, NULL, NULL, 0, 1, '2019-12-13 20:27:00', '2020-09-19 09:12:47'),
(3, 'Điện thoại thông minh', 'dien-thoai-thong-minh', NULL, NULL, NULL, 0, 1, '2019-12-13 20:27:00', '2020-09-19 09:12:58'),
(4, 'Đồng hồ', 'dong-ho', NULL, NULL, NULL, 0, 1, '2019-12-13 21:29:00', '2020-09-19 09:13:06'),
(5, 'Máy tính bảng', 'may-tinh-bang', NULL, NULL, NULL, 0, 1, '2019-12-13 21:29:00', '2020-09-19 09:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2019-12-10 23:08:11', '2019-12-10 23:08:11'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2019-12-10 23:08:12', '2019-12-10 23:08:12'),
(31, 'data_rows', 'display_name', 146, 'pt', 'Id', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(32, 'data_rows', 'display_name', 147, 'pt', 'Title', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(33, 'data_rows', 'display_name', 148, 'pt', 'Tên không dấu', '2019-12-23 17:53:45', '2019-12-23 18:39:10'),
(34, 'data_rows', 'display_name', 149, 'pt', 'Description', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(35, 'data_rows', 'display_name', 150, 'pt', 'Body', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(36, 'data_rows', 'display_name', 151, 'pt', 'Image', '2019-12-23 17:53:45', '2019-12-23 18:38:19'),
(37, 'data_rows', 'display_name', 152, 'pt', 'Images', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(38, 'data_rows', 'display_name', 153, 'pt', 'Stt', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(39, 'data_rows', 'display_name', 154, 'pt', 'Active', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(40, 'data_rows', 'display_name', 155, 'pt', 'Seo Title', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(41, 'data_rows', 'display_name', 156, 'pt', 'Meta Keywords', '2019-12-23 17:53:45', '2019-12-23 18:31:39'),
(42, 'data_rows', 'display_name', 157, 'pt', 'Meta Description', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(43, 'data_rows', 'display_name', 158, 'pt', 'Created At', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(44, 'data_rows', 'display_name', 159, 'pt', 'Updated At', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(45, 'data_rows', 'display_name', 160, 'pt', 'Id List', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(46, 'data_rows', 'display_name', 161, 'pt', 'Id Cat', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(47, 'data_rows', 'display_name', 162, 'pt', 'Id Item', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(48, 'data_rows', 'display_name', 166, 'pt', 'Featured', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(49, 'data_rows', 'display_name', 167, 'pt', 'Price', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(50, 'data_rows', 'display_name', 195, 'pt', 'Hot', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(51, 'data_rows', 'display_name', 196, 'pt', 'New PT', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(52, 'data_rows', 'display_name', 200, 'pt', 'Old Price', '2019-12-23 17:53:45', '2019-12-23 19:36:15'),
(53, 'data_rows', 'display_name', 163, 'pt', 'Product List', '2019-12-23 17:53:45', '2019-12-23 18:38:19'),
(54, 'data_rows', 'display_name', 164, 'pt', 'Product Cat', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(55, 'data_rows', 'display_name', 165, 'pt', 'Product Item', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(56, 'data_types', 'display_name_singular', 15, 'pt', 'Product PT', '2019-12-23 17:53:45', '2019-12-23 17:53:45'),
(57, 'data_types', 'display_name_plural', 15, 'pt', 'Products PT', '2019-12-23 17:53:45', '2019-12-23 19:57:29'),
(58, 'products', 'title', 1, 'pt', 'Nokia 3.2 - 2GB/16GB PT', '2019-12-23 18:17:41', '2019-12-23 18:17:41'),
(73, 'data_rows', 'display_name', 26, 'pt', 'id', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(74, 'data_rows', 'display_name', 53, 'pt', 'role_id', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(75, 'data_rows', 'display_name', 27, 'pt', 'name', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(76, 'data_rows', 'display_name', 28, 'pt', 'email', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(77, 'data_rows', 'display_name', 34, 'pt', 'avatar', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(78, 'data_rows', 'display_name', 29, 'pt', 'password', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(79, 'data_rows', 'display_name', 31, 'pt', 'remember_token', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(80, 'data_rows', 'display_name', 32, 'pt', 'created_at', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(81, 'data_rows', 'display_name', 33, 'pt', 'updated_at', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(82, 'data_rows', 'display_name', 30, 'pt', 'Role', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(83, 'data_rows', 'display_name', 54, 'pt', 'Roles', '2019-12-24 00:32:51', '2019-12-24 00:32:51'),
(84, 'data_rows', 'display_name', 222, 'pt', 'Settings', '2019-12-24 00:59:29', '2019-12-24 00:59:29'),
(94, 'data_rows', 'display_name', 224, 'pt', 'Id', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(95, 'data_rows', 'display_name', 225, 'pt', 'Name', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(96, 'data_rows', 'display_name', 226, 'pt', 'Email', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(97, 'data_rows', 'display_name', 227, 'pt', 'Phone', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(98, 'data_rows', 'display_name', 228, 'pt', 'Address', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(99, 'data_rows', 'display_name', 229, 'pt', 'Subject', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(100, 'data_rows', 'display_name', 230, 'pt', 'Message', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(101, 'data_rows', 'display_name', 231, 'pt', 'Created At', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(102, 'data_rows', 'display_name', 232, 'pt', 'Updated At', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(103, 'data_types', 'display_name_singular', 20, 'pt', 'Contact', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(104, 'data_types', 'display_name_plural', 20, 'pt', 'Contacts', '2019-12-28 02:15:17', '2019-12-28 02:15:17'),
(105, 'data_rows', 'display_name', 234, 'pt', 'tags', '2019-12-29 23:42:22', '2019-12-29 23:42:22'),
(106, 'data_rows', 'display_name', 235, 'pt', 'tags', '2019-12-30 00:21:40', '2019-12-30 00:21:40'),
(107, 'pages', 'title', 2, 'pt', 'About us', '2020-01-02 19:56:35', '2020-01-02 19:56:35'),
(108, 'pages', 'slug', 2, 'pt', 'about-us', '2020-01-02 19:56:35', '2020-01-02 19:56:35'),
(109, 'pages', 'body', 2, 'pt', '<h3>Provide Best</h3>\r\n<h2>Product For You</h2>\r\n<p>We provide the best Beard oile all over the world. We are the worldd best store in indi for Beard Oil. You can buy our product without any hegitation because they truste us and buy our product without any hagitation because they belive and always happy buy our product.</p>\r\n<p>Some of our customer say&rsquo;s that they trust us and buy our product without any hagitation because they belive us and always happy to buy our product.</p>\r\n<p>We provide the beshat they trusted us and buy our product without any hagitation because they belive us and always happy to buy.</p>', '2020-01-02 19:56:35', '2020-01-02 19:56:35'),
(110, 'products', 'title', 2, 'pt', 'Samsung Galaxy A50 - 4GB/64GB', '2020-01-02 20:34:51', '2020-01-02 20:34:51'),
(111, 'menu_items', 'title', 39, 'pt', 'My cart', '2020-01-04 02:17:38', '2020-01-04 02:17:38'),
(112, 'menu_items', 'title', 1, 'en', 'Dashboard', '2020-08-28 06:51:42', '2020-08-28 06:51:42'),
(113, 'menu_items', 'title', 14, 'en', 'Products', '2020-08-28 07:10:24', '2020-08-28 07:10:24'),
(114, 'menu_items', 'title', 27, 'en', 'Product Lists', '2020-08-28 07:13:45', '2020-08-28 07:13:45'),
(115, 'menu_items', 'title', 28, 'en', 'Product Cats', '2020-08-28 07:15:16', '2020-08-28 07:15:16'),
(116, 'menu_items', 'title', 29, 'en', 'Product Items', '2020-08-28 07:15:34', '2020-08-28 07:15:34'),
(117, 'menu_items', 'title', 30, 'en', 'Products', '2020-08-28 07:17:33', '2020-08-28 07:17:33'),
(118, 'menu_items', 'title', 13, 'en', 'Orders', '2020-08-28 07:17:44', '2020-08-28 07:17:44'),
(119, 'menu_items', 'title', 43, 'en', 'Contacts', '2020-08-28 07:17:54', '2020-08-28 07:17:54'),
(120, 'menu_items', 'title', 34, 'en', 'Sliders', '2020-08-28 07:18:06', '2020-08-28 07:18:06'),
(121, 'menu_items', 'title', 41, 'en', 'Brands', '2020-08-28 07:18:28', '2020-08-28 07:18:28'),
(122, 'menu_items', 'title', 42, 'en', 'Blogs', '2020-08-28 07:18:53', '2020-08-28 07:18:53'),
(123, 'menu_items', 'title', 6, 'en', 'Pages', '2020-08-28 07:19:22', '2020-08-28 07:19:22'),
(124, 'menu_items', 'title', 2, 'en', 'Media', '2020-08-28 07:20:05', '2020-08-28 07:20:05'),
(125, 'menu_items', 'title', 8, 'en', 'Tools', '2020-08-28 07:20:52', '2020-08-28 07:20:52'),
(126, 'menu_items', 'title', 4, 'en', 'Users', '2020-08-28 07:21:20', '2020-08-28 07:21:20'),
(127, 'menu_items', 'title', 7, 'en', 'Roles', '2020-08-28 07:21:37', '2020-08-28 07:21:37'),
(128, 'menu_items', 'title', 9, 'en', 'Menu Builder', '2020-08-28 07:22:04', '2020-08-28 07:22:04'),
(129, 'menu_items', 'title', 10, 'en', 'Database', '2020-08-28 07:22:19', '2020-08-28 07:22:19'),
(130, 'menu_items', 'title', 44, 'en', 'Update Sitemap', '2020-08-28 07:22:30', '2020-08-28 07:22:30'),
(131, 'menu_items', 'title', 12, 'en', 'Settings', '2020-08-28 07:22:48', '2020-08-28 07:22:48'),
(132, 'product_lists', 'title', 1, 'en', 'Computer', '2020-08-28 08:41:07', '2020-08-28 08:41:07'),
(133, 'data_rows', 'display_name', 146, 'en', 'Id', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(134, 'data_rows', 'display_name', 147, 'en', 'Title', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(135, 'data_rows', 'display_name', 148, 'en', 'Slug', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(136, 'data_rows', 'display_name', 149, 'en', 'Description', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(137, 'data_rows', 'display_name', 150, 'en', 'Body', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(138, 'data_rows', 'display_name', 151, 'en', 'Image', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(139, 'data_rows', 'display_name', 152, 'en', 'Images', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(140, 'data_rows', 'display_name', 153, 'en', 'STT', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(141, 'data_rows', 'display_name', 154, 'en', 'Active', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(142, 'data_rows', 'display_name', 155, 'en', 'Seo Title', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(143, 'data_rows', 'display_name', 156, 'en', 'Meta Keywords', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(144, 'data_rows', 'display_name', 157, 'en', 'Meta Description', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(145, 'data_rows', 'display_name', 158, 'en', 'Created At', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(146, 'data_rows', 'display_name', 159, 'en', 'Updated At', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(147, 'data_rows', 'display_name', 160, 'en', 'Id List', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(148, 'data_rows', 'display_name', 161, 'en', 'Id Cat', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(149, 'data_rows', 'display_name', 162, 'en', 'Id Item', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(150, 'data_rows', 'display_name', 166, 'en', 'Featured', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(151, 'data_rows', 'display_name', 167, 'en', 'Price', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(152, 'data_rows', 'display_name', 195, 'en', 'Hot', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(153, 'data_rows', 'display_name', 196, 'en', 'New', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(154, 'data_rows', 'display_name', 200, 'en', 'Old Price', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(155, 'data_rows', 'display_name', 163, 'en', 'Product List', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(156, 'data_rows', 'display_name', 164, 'en', 'Product Cat', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(157, 'data_rows', 'display_name', 165, 'en', 'Product Item', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(158, 'data_rows', 'display_name', 235, 'en', 'Tags', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(159, 'data_types', 'display_name_singular', 15, 'en', 'Product', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(160, 'data_types', 'display_name_plural', 15, 'en', 'Products', '2020-09-05 07:39:44', '2020-09-05 07:39:44'),
(161, 'data_rows', 'display_name', 201, 'en', 'Id', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(162, 'data_rows', 'display_name', 202, 'en', 'Title', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(163, 'data_rows', 'display_name', 203, 'en', 'Slug', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(164, 'data_rows', 'display_name', 204, 'en', 'Image', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(165, 'data_rows', 'display_name', 205, 'en', 'Description', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(166, 'data_rows', 'display_name', 206, 'en', 'Body', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(167, 'data_rows', 'display_name', 207, 'en', 'Active', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(168, 'data_rows', 'display_name', 208, 'en', 'STT', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(169, 'data_rows', 'display_name', 209, 'en', 'Seo Title', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(170, 'data_rows', 'display_name', 210, 'en', 'Meta Keywords', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(171, 'data_rows', 'display_name', 211, 'en', 'Meta Description', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(172, 'data_rows', 'display_name', 212, 'en', 'Created At', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(173, 'data_rows', 'display_name', 213, 'en', 'Updated At', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(174, 'data_types', 'display_name_singular', 19, 'en', 'Blog', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(175, 'data_types', 'display_name_plural', 19, 'en', 'Blogs', '2020-09-05 08:14:51', '2020-09-05 08:14:51'),
(176, 'data_rows', 'display_name', 188, 'en', 'Id', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(177, 'data_rows', 'display_name', 189, 'en', 'Image', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(178, 'data_rows', 'display_name', 190, 'en', 'STT', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(179, 'data_rows', 'display_name', 191, 'en', 'Active', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(180, 'data_rows', 'display_name', 192, 'en', 'Created At', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(181, 'data_rows', 'display_name', 193, 'en', 'Updated At', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(182, 'data_rows', 'display_name', 194, 'en', 'Links', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(183, 'data_types', 'display_name_singular', 18, 'en', 'Brand', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(184, 'data_types', 'display_name_plural', 18, 'en', 'Brands', '2020-09-05 08:16:06', '2020-09-05 08:16:06'),
(185, 'data_rows', 'display_name', 224, 'en', 'Id', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(186, 'data_rows', 'display_name', 225, 'en', 'Name', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(187, 'data_rows', 'display_name', 226, 'en', 'Email', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(188, 'data_rows', 'display_name', 227, 'en', 'Phone', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(189, 'data_rows', 'display_name', 228, 'en', 'Address', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(190, 'data_rows', 'display_name', 229, 'en', 'Subject', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(191, 'data_rows', 'display_name', 230, 'en', 'Message', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(192, 'data_rows', 'display_name', 231, 'en', 'Created At', '2020-09-05 08:17:11', '2020-09-05 08:17:11'),
(193, 'data_rows', 'display_name', 232, 'en', 'Updated At', '2020-09-05 08:17:12', '2020-09-05 08:17:12'),
(194, 'data_rows', 'display_name', 233, 'en', 'Error', '2020-09-05 08:17:12', '2020-09-05 08:17:12'),
(195, 'data_types', 'display_name_singular', 20, 'en', 'Contact', '2020-09-05 08:17:12', '2020-09-05 08:17:12'),
(196, 'data_types', 'display_name_plural', 20, 'en', 'Contacts', '2020-09-05 08:17:12', '2020-09-05 08:17:12'),
(197, 'data_rows', 'display_name', 84, 'en', 'Id', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(198, 'data_rows', 'display_name', 214, 'en', 'Name', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(199, 'data_rows', 'display_name', 215, 'en', 'Phone', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(200, 'data_rows', 'display_name', 216, 'en', 'Email', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(201, 'data_rows', 'display_name', 217, 'en', 'Address', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(202, 'data_rows', 'display_name', 218, 'en', 'Note', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(203, 'data_rows', 'display_name', 219, 'en', 'Admin Note', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(204, 'data_rows', 'display_name', 100, 'en', 'Shipped', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(205, 'data_rows', 'display_name', 102, 'en', 'Created At', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(206, 'data_rows', 'display_name', 103, 'en', 'Updated At', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(207, 'data_rows', 'display_name', 220, 'en', 'Error', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(208, 'data_rows', 'display_name', 221, 'en', 'Total', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(209, 'data_types', 'display_name_singular', 11, 'en', 'Order', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(210, 'data_types', 'display_name_plural', 11, 'en', 'Orders', '2020-09-05 08:21:34', '2020-09-05 08:21:34'),
(211, 'data_rows', 'display_name', 14, 'en', 'id', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(212, 'data_rows', 'display_name', 16, 'en', 'Title', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(213, 'data_rows', 'display_name', 197, 'en', 'Description', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(214, 'data_rows', 'display_name', 18, 'en', 'Body', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(215, 'data_rows', 'display_name', 25, 'en', 'Image', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(216, 'data_rows', 'display_name', 19, 'en', 'Slug', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(217, 'data_rows', 'display_name', 20, 'en', 'Meta Description', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(218, 'data_rows', 'display_name', 21, 'en', 'Meta Keywords', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(219, 'data_rows', 'display_name', 198, 'en', 'Active', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(220, 'data_rows', 'display_name', 23, 'en', 'Created At', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(221, 'data_rows', 'display_name', 24, 'en', 'Updated At', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(222, 'data_rows', 'display_name', 199, 'en', 'Seo Title', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(223, 'data_types', 'display_name_singular', 2, 'en', 'Page', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(224, 'data_types', 'display_name_plural', 2, 'en', 'Pages', '2020-09-05 08:22:24', '2020-09-05 08:22:24'),
(225, 'data_rows', 'display_name', 116, 'en', 'Id', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(226, 'data_rows', 'display_name', 117, 'en', 'Title', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(227, 'data_rows', 'display_name', 118, 'en', 'Slug', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(228, 'data_rows', 'display_name', 119, 'en', 'Image', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(229, 'data_rows', 'display_name', 120, 'en', 'Body', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(230, 'data_rows', 'display_name', 121, 'en', 'STT', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(231, 'data_rows', 'display_name', 122, 'en', 'Active', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(232, 'data_rows', 'display_name', 123, 'en', 'Seo Title', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(233, 'data_rows', 'display_name', 124, 'en', 'Meta Keywords', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(234, 'data_rows', 'display_name', 125, 'en', 'Meta Description', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(235, 'data_rows', 'display_name', 126, 'en', 'Created At', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(236, 'data_rows', 'display_name', 127, 'en', 'Updated At', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(237, 'data_rows', 'display_name', 128, 'en', 'Id List', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(238, 'data_rows', 'display_name', 129, 'en', 'Product List', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(239, 'data_types', 'display_name_singular', 13, 'en', 'Product Cat', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(240, 'data_types', 'display_name_plural', 13, 'en', 'Product Cats', '2020-09-05 08:23:20', '2020-09-05 08:23:20'),
(241, 'data_rows', 'display_name', 130, 'en', 'Id', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(242, 'data_rows', 'display_name', 131, 'en', 'Title', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(243, 'data_rows', 'display_name', 132, 'en', 'Slug', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(244, 'data_rows', 'display_name', 133, 'en', 'Image', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(245, 'data_rows', 'display_name', 134, 'en', 'Body', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(246, 'data_rows', 'display_name', 135, 'en', 'Stt', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(247, 'data_rows', 'display_name', 136, 'en', 'Active', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(248, 'data_rows', 'display_name', 137, 'en', 'Id List', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(249, 'data_rows', 'display_name', 138, 'en', 'Id Cat', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(250, 'data_rows', 'display_name', 139, 'en', 'Seo Title', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(251, 'data_rows', 'display_name', 140, 'en', 'Meta Keywords', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(252, 'data_rows', 'display_name', 141, 'en', 'Meta Description', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(253, 'data_rows', 'display_name', 142, 'en', 'Created At', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(254, 'data_rows', 'display_name', 143, 'en', 'Updated At', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(255, 'data_rows', 'display_name', 144, 'en', 'Product List', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(256, 'data_rows', 'display_name', 145, 'en', 'Product Cat', '2020-09-05 08:32:41', '2020-09-05 08:32:41'),
(257, 'data_types', 'display_name_singular', 14, 'en', 'Product Item', '2020-09-05 08:32:42', '2020-09-05 08:32:42'),
(258, 'data_types', 'display_name_plural', 14, 'en', 'Product Items', '2020-09-05 08:32:42', '2020-09-05 08:32:42'),
(259, 'data_rows', 'display_name', 104, 'en', 'Id', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(260, 'data_rows', 'display_name', 105, 'en', 'Title', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(261, 'data_rows', 'display_name', 106, 'en', 'Slug', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(262, 'data_rows', 'display_name', 107, 'en', 'Image', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(263, 'data_rows', 'display_name', 108, 'en', 'Body', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(264, 'data_rows', 'display_name', 109, 'en', 'STT', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(265, 'data_rows', 'display_name', 110, 'en', 'Active', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(266, 'data_rows', 'display_name', 111, 'en', 'Seo Title', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(267, 'data_rows', 'display_name', 112, 'en', 'Meta Keywords', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(268, 'data_rows', 'display_name', 113, 'en', 'Meta Description', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(269, 'data_rows', 'display_name', 114, 'en', 'Created At', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(270, 'data_rows', 'display_name', 115, 'en', 'Updated At', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(271, 'data_rows', 'display_name', 168, 'en', 'Icon', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(272, 'data_rows', 'display_name', 177, 'en', 'Footer', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(273, 'data_types', 'display_name_singular', 12, 'en', 'Product List', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(274, 'data_types', 'display_name_plural', 12, 'en', 'Product Lists', '2020-09-05 08:33:32', '2020-09-05 08:33:32'),
(275, 'data_rows', 'display_name', 46, 'en', 'id', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(276, 'data_rows', 'display_name', 47, 'en', 'Name', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(277, 'data_rows', 'display_name', 50, 'en', 'Display Name', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(278, 'data_rows', 'display_name', 48, 'en', 'created_at', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(279, 'data_rows', 'display_name', 49, 'en', 'updated_at', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(280, 'data_types', 'display_name_singular', 6, 'en', 'Role', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(281, 'data_types', 'display_name_plural', 6, 'en', 'Roles', '2020-09-05 08:34:44', '2020-09-05 08:34:44'),
(282, 'data_rows', 'display_name', 169, 'en', 'Id', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(283, 'data_rows', 'display_name', 170, 'en', 'Title', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(284, 'data_rows', 'display_name', 171, 'en', 'Description', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(285, 'data_rows', 'display_name', 172, 'en', 'Image', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(286, 'data_rows', 'display_name', 173, 'en', 'Created At', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(287, 'data_rows', 'display_name', 174, 'en', 'Updated At', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(288, 'data_rows', 'display_name', 175, 'en', 'STT', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(289, 'data_rows', 'display_name', 176, 'en', 'Active', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(290, 'data_types', 'display_name_singular', 16, 'en', 'Slider', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(291, 'data_types', 'display_name_plural', 16, 'en', 'Sliders', '2020-09-05 08:37:38', '2020-09-05 08:37:38'),
(292, 'data_rows', 'display_name', 178, 'en', 'Id', '2020-09-05 08:38:01', '2020-09-05 08:38:01'),
(293, 'data_rows', 'display_name', 179, 'en', 'Title', '2020-09-05 08:38:01', '2020-09-05 08:38:01'),
(294, 'data_rows', 'display_name', 180, 'en', 'Slug', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(295, 'data_rows', 'display_name', 181, 'en', 'Seo Title', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(296, 'data_rows', 'display_name', 182, 'en', 'Meta Keywords', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(297, 'data_rows', 'display_name', 183, 'en', 'Meta Description', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(298, 'data_rows', 'display_name', 184, 'en', 'Stt', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(299, 'data_rows', 'display_name', 185, 'en', 'Active', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(300, 'data_rows', 'display_name', 186, 'en', 'Created At', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(301, 'data_rows', 'display_name', 187, 'en', 'Updated At', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(302, 'data_types', 'display_name_singular', 17, 'en', 'Tag', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(303, 'data_types', 'display_name_plural', 17, 'en', 'Tags', '2020-09-05 08:38:02', '2020-09-05 08:38:02'),
(304, 'data_rows', 'display_name', 26, 'en', 'ID', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(305, 'data_rows', 'display_name', 53, 'en', 'role_id', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(306, 'data_rows', 'display_name', 27, 'en', 'Name', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(307, 'data_rows', 'display_name', 28, 'en', 'Email', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(308, 'data_rows', 'display_name', 34, 'en', 'Avatar', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(309, 'data_rows', 'display_name', 29, 'en', 'Password', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(310, 'data_rows', 'display_name', 31, 'en', 'Remember Token', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(311, 'data_rows', 'display_name', 222, 'en', 'Settings', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(312, 'data_rows', 'display_name', 32, 'en', 'Created At', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(313, 'data_rows', 'display_name', 33, 'en', 'Updated At', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(314, 'data_rows', 'display_name', 223, 'en', 'Email Verified At', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(315, 'data_rows', 'display_name', 30, 'en', 'Role', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(316, 'data_rows', 'display_name', 54, 'en', 'Roles', '2020-09-05 08:39:30', '2020-09-05 08:39:30'),
(317, 'data_types', 'display_name_singular', 3, 'en', 'User', '2020-09-05 08:39:31', '2020-09-05 08:39:31'),
(318, 'data_types', 'display_name_plural', 3, 'en', 'Users', '2020-09-05 08:39:31', '2020-09-05 08:39:31'),
(320, 'product_lists', 'title', 2, 'en', 'Camera', '2020-09-11 08:28:44', '2020-09-11 08:28:44'),
(321, 'product_lists', 'title', 3, 'en', 'Smart phones', '2020-09-11 08:29:03', '2020-09-11 08:29:03'),
(322, 'product_lists', 'title', 5, 'en', 'Microchip', '2020-09-11 08:30:13', '2020-09-11 08:30:13'),
(323, 'product_lists', 'title', 6, 'en', 'Books', '2020-09-11 08:30:29', '2020-09-11 08:30:29'),
(324, 'product_lists', 'title', 7, 'en', 'Tablet', '2020-09-11 08:30:40', '2020-09-11 08:30:40'),
(325, 'product_lists', 'title', 8, 'en', 'Electronic', '2020-09-11 08:30:59', '2020-09-11 08:30:59'),
(326, 'product_lists', 'title', 9, 'en', 'Watch', '2020-09-11 08:31:10', '2020-09-11 08:31:10'),
(327, 'product_cats', 'title', 1, 'en', 'Accessories', '2020-09-11 08:38:09', '2020-09-11 08:38:09'),
(328, 'product_cats', 'slug', 1, 'en', 'accessories', '2020-09-11 08:38:09', '2020-09-11 08:38:09'),
(329, 'product_cats', 'title', 2, 'en', 'Headphone', '2020-09-11 08:38:44', '2020-09-11 08:38:44'),
(330, 'product_cats', 'slug', 2, 'en', 'headphone', '2020-09-11 08:38:44', '2020-09-11 08:38:44'),
(331, 'product_lists', 'slug', 1, 'en', 'computer', '2020-09-11 08:51:06', '2020-09-11 08:51:38'),
(332, 'product_lists', 'seo_title', 1, 'en', 'Computer', '2020-09-11 08:51:38', '2020-09-26 08:17:14'),
(333, 'product_lists', 'meta_keywords', 1, 'en', 'Computer', '2020-09-11 09:17:11', '2020-09-26 08:18:01'),
(334, 'product_lists', 'meta_description', 1, 'en', 'Computer', '2020-09-11 09:17:11', '2020-09-26 08:18:01'),
(335, 'product_lists', 'body', 1, 'en', '<p>e</p>', '2020-09-11 09:21:48', '2020-09-11 09:22:20'),
(336, 'product_items', 'title', 1, 'en', 'Power cable', '2020-09-12 07:50:13', '2020-09-16 04:06:24'),
(337, 'product_items', 'slug', 1, 'en', 'power-cable', '2020-09-12 07:50:13', '2020-09-16 04:06:24'),
(339, 'product_items', 'title', 4, 'en', 'Data cable', '2020-09-16 04:06:49', '2020-09-16 04:06:49'),
(340, 'product_items', 'slug', 4, 'en', 'data-cable', '2020-09-16 04:06:49', '2020-09-16 04:06:49'),
(341, 'product_items', 'title', 6, 'en', 'Desktop headphones', '2020-09-16 04:07:23', '2020-09-16 04:07:23'),
(342, 'product_items', 'slug', 6, 'en', 'desktop-headphones', '2020-09-16 04:07:23', '2020-09-16 04:07:23'),
(343, 'product_items', 'title', 7, 'en', 'Mobile Headphone', '2020-09-16 04:08:21', '2020-09-16 04:08:21'),
(344, 'product_items', 'slug', 7, 'en', 'mobile-headphone', '2020-09-16 04:08:21', '2020-09-16 04:08:21'),
(345, 'product_items', 'title', 8, 'en', 'Wireless Headphone', '2020-09-16 04:08:45', '2020-09-16 04:08:45'),
(346, 'product_items', 'slug', 8, 'en', 'wireless-headphone', '2020-09-16 04:08:45', '2020-09-16 04:08:45'),
(347, 'product_items', 'title', 9, 'en', 'LED Headphone', '2020-09-16 04:09:01', '2020-09-16 04:09:01'),
(348, 'product_items', 'slug', 9, 'en', 'led-headphone', '2020-09-16 04:09:01', '2020-09-16 04:09:01'),
(349, 'data_rows', 'display_name', 236, 'en', 'Watched', '2020-09-16 04:23:31', '2020-09-16 04:23:31'),
(350, 'menu_items', 'title', 18, 'en', 'Home', '2020-09-19 09:00:30', '2020-09-19 09:02:09'),
(351, 'menu_items', 'title', 19, 'en', 'About us', '2020-09-19 09:01:16', '2020-09-19 09:01:16'),
(352, 'menu_items', 'title', 20, 'en', 'Product', '2020-09-19 09:01:26', '2020-09-19 09:01:26'),
(353, 'menu_items', 'title', 32, 'en', 'Blog', '2020-09-19 09:01:35', '2020-09-19 09:01:35'),
(354, 'menu_items', 'title', 33, 'en', 'Contact us', '2020-09-19 09:01:42', '2020-09-19 09:01:42'),
(355, 'menu_items', 'title', 35, 'en', 'About us', '2020-09-19 09:10:37', '2020-09-19 09:10:37'),
(356, 'menu_items', 'title', 36, 'en', 'Product', '2020-09-19 09:10:47', '2020-09-19 09:10:47'),
(357, 'menu_items', 'title', 37, 'en', 'Contact us', '2020-09-19 09:11:00', '2020-09-19 09:11:00'),
(358, 'menu_items', 'title', 39, 'en', 'My cart', '2020-09-19 09:11:09', '2020-09-19 09:11:09'),
(359, 'tags', 'title', 1, 'en', 'Computer', '2020-09-19 09:12:18', '2020-09-19 09:12:18'),
(360, 'tags', 'slug', 1, 'en', 'computer', '2020-09-19 09:12:18', '2020-09-19 09:12:18'),
(361, 'tags', 'title', 2, 'en', 'Camera', '2020-09-19 09:12:47', '2020-09-19 09:12:47'),
(362, 'tags', 'slug', 2, 'en', 'camera', '2020-09-19 09:12:48', '2020-09-19 09:12:48'),
(363, 'tags', 'title', 3, 'en', 'Smart Phone', '2020-09-19 09:12:58', '2020-09-19 09:12:58'),
(364, 'tags', 'slug', 3, 'en', 'smart-phone', '2020-09-19 09:12:58', '2020-09-19 09:12:58'),
(365, 'tags', 'title', 4, 'en', 'Watch', '2020-09-19 09:13:06', '2020-09-19 09:13:06'),
(366, 'tags', 'slug', 4, 'en', 'watch', '2020-09-19 09:13:06', '2020-09-19 09:13:06'),
(367, 'tags', 'title', 5, 'en', 'Tablet', '2020-09-19 09:13:14', '2020-09-19 09:13:14'),
(368, 'tags', 'slug', 5, 'en', 'tablet', '2020-09-19 09:13:14', '2020-09-19 09:13:14'),
(369, 'data_rows', 'display_name', 237, 'en', 'Seo Title', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(370, 'data_rows', 'display_name', 238, 'en', 'Meta Keywords', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(371, 'data_rows', 'display_name', 239, 'en', 'Meta Description', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(372, 'data_rows', 'display_name', 240, 'en', 'Email', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(373, 'data_rows', 'display_name', 241, 'en', 'Hotline', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(374, 'data_rows', 'display_name', 242, 'en', 'Working Time', '2020-09-25 01:29:38', '2020-09-25 03:36:34'),
(375, 'data_rows', 'display_name', 243, 'en', 'Logo', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(376, 'data_rows', 'display_name', 244, 'en', 'Free Ship', '2020-09-25 01:29:38', '2020-09-25 03:36:34'),
(377, 'data_rows', 'display_name', 245, 'en', 'Money Back', '2020-09-25 01:29:38', '2020-09-25 03:36:34'),
(378, 'data_rows', 'display_name', 246, 'en', 'Address', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(379, 'data_rows', 'display_name', 247, 'en', 'Copyright', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(380, 'data_rows', 'display_name', 248, 'en', 'Contact', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(381, 'data_rows', 'display_name', 249, 'en', 'Iframe map', '2020-09-25 01:29:38', '2020-10-16 07:31:12'),
(382, 'data_rows', 'display_name', 250, 'en', 'Favicon', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(383, 'data_types', 'display_name_singular', 21, 'en', 'Site Setting', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(384, 'data_types', 'display_name_plural', 21, 'en', 'Site Settings', '2020-09-25 01:29:38', '2020-09-25 01:29:38'),
(385, 'menu_items', 'title', 45, 'en', 'Site Settings', '2020-09-25 01:30:31', '2020-09-25 01:30:31'),
(386, 'data_rows', 'display_name', 251, 'en', 'Created At', '2020-09-25 02:51:17', '2020-09-25 02:51:17'),
(387, 'data_rows', 'display_name', 252, 'en', 'Updated At', '2020-09-25 02:51:17', '2020-09-25 02:51:17'),
(388, 'data_rows', 'display_name', 253, 'en', 'Id', '2020-09-25 03:18:18', '2020-09-25 03:18:18'),
(389, 'menu_items', 'title', 46, 'en', 'Site Settings', '2020-09-25 03:24:49', '2020-09-25 03:24:49'),
(390, 'site_settings', 'workingtime', 1, 'en', 'Monday – Saturday: 08AM – 22PM', '2020-09-25 03:38:57', '2020-09-25 03:44:00'),
(391, 'site_settings', 'seo_title', 1, 'en', 'Điện thoại di động gía rẻ nhất - Siêu thị điện thoại Quỳnh Store EN', '2020-09-25 03:40:59', '2020-09-25 08:49:17'),
(392, 'site_settings', 'meta_keywords', 1, 'en', 'Thế giới di động, Thegioididong, điện thoại di động, dtdd, smartphone, tablet, máy tính bảng, Laptop, máy tính xách tay, phụ kiện điện thoại, tin công nghệ EN', '2020-09-25 03:40:59', '2020-09-25 08:49:17'),
(393, 'site_settings', 'meta_description', 1, 'en', 'Hệ thống bán lẻ điện thoại di động, smartphone, máy tính bảng, tablet, laptop, phụ kiện chính hãng mới nhất, giá tốt, dịch vụ khách hàng được yêu thích nhất EN', '2020-09-25 03:40:59', '2020-09-25 08:49:17'),
(394, 'site_settings', 'copyright', 1, 'en', '© Copyright 2018 quynhstore.com, All rights reserved', '2020-09-25 03:40:59', '2020-09-25 03:40:59'),
(395, 'site_settings', 'freeship', 1, 'en', 'On order over $199', '2020-09-25 03:44:00', '2020-09-25 03:44:00'),
(396, 'site_settings', 'moneyback', 1, 'en', 'Within 30 Days after delivery', '2020-09-25 03:44:00', '2020-09-25 03:44:00'),
(397, 'site_settings', 'address', 1, 'en', '106 An Nhon, Wards 17, Go Vap District , TP HCM', '2020-09-25 03:44:00', '2020-09-25 03:44:00'),
(398, 'site_settings', 'contact', 1, 'en', '<p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human.</p>', '2020-09-25 03:47:38', '2020-09-25 03:47:38'),
(399, 'product_lists', 'slug', 2, 'en', 'camera', '2020-09-26 07:44:48', '2020-09-26 07:44:48'),
(400, 'product_lists', 'slug', 3, 'en', 'smart-phones', '2020-09-26 07:45:13', '2020-09-26 07:45:13'),
(401, 'product_lists', 'slug', 5, 'en', 'microchip', '2020-09-26 07:45:27', '2020-09-26 07:45:27'),
(402, 'product_lists', 'slug', 6, 'en', 'books', '2020-09-26 07:45:41', '2020-09-26 07:45:41'),
(403, 'product_lists', 'slug', 7, 'en', 'tablet', '2020-09-26 07:45:55', '2020-09-26 07:45:55'),
(404, 'product_lists', 'slug', 8, 'en', 'electronic', '2020-09-26 07:46:08', '2020-09-26 07:46:08'),
(405, 'product_lists', 'slug', 9, 'en', 'watch', '2020-09-26 07:46:21', '2020-09-26 07:46:21'),
(406, 'products', 'title', 2, 'en', 'Samsung Galaxy A50 - 4GB/64GB EN', '2020-09-26 08:44:12', '2020-09-26 08:44:12'),
(407, 'products', 'slug', 2, 'en', 'samsung-galaxy-a50-4gb-64gb-en', '2020-09-26 08:44:12', '2020-09-26 08:44:12'),
(408, 'products', 'seo_title', 2, 'en', 'Samsung Galaxy A50 - 4GB/64GB', '2020-09-26 08:44:12', '2020-09-26 08:44:12'),
(409, 'products', 'title', 3, 'en', 'Huawei P30 Lite - Chính hãng', '2020-10-01 06:13:57', '2020-10-01 06:13:57'),
(410, 'products', 'slug', 3, 'en', 'huawei-p30-lite-chinh-hang', '2020-10-01 06:13:57', '2020-10-01 06:13:57'),
(411, 'products', 'title', 4, 'en', 'Oppo F11 - Xanh', '2020-10-01 06:14:30', '2020-10-01 06:14:30'),
(412, 'products', 'slug', 4, 'en', 'oppo-f11-xanh', '2020-10-01 06:14:30', '2020-10-01 06:14:30'),
(413, 'products', 'title', 5, 'en', 'Samsung Galaxy A30 - 4GB/64GB', '2020-10-01 06:14:44', '2020-10-01 06:14:44'),
(414, 'products', 'slug', 5, 'en', 'samsung-galaxy-a30-4gb-64gb', '2020-10-01 06:14:44', '2020-10-01 06:14:44'),
(415, 'products', 'title', 6, 'en', 'Xiaomi Mi A3 - 4GB/64GB', '2020-10-01 06:14:54', '2020-10-01 06:14:54'),
(416, 'products', 'slug', 6, 'en', 'xiaomi-mi-a3-4gb-64gb', '2020-10-01 06:14:54', '2020-10-01 06:14:54'),
(417, 'products', 'title', 7, 'en', 'Oppo A7 - Ram 4GB', '2020-10-01 06:15:02', '2020-10-01 06:15:02'),
(418, 'products', 'slug', 7, 'en', 'oppo-a7-ram-4gb', '2020-10-01 06:15:03', '2020-10-01 06:15:03'),
(419, 'products', 'title', 8, 'en', 'Vsmart Active 1+ Chính Hãng', '2020-10-01 06:15:11', '2020-10-01 06:15:11'),
(420, 'products', 'slug', 8, 'en', 'vsmart-active-1-chinh-hang', '2020-10-01 06:15:11', '2020-10-01 06:15:11'),
(421, 'products', 'body', 2, 'en', '<p><strong>Khuyến mại:</strong></p>\n<p>Giảm th&ecirc;m 5% tới 300K qua VnPay QR code</p>\n<p>Hỗ trợ trả g&oacute;p 0% d&agrave;nh cho c&aacute;c chủ thẻ t&iacute;n dụng VPBank, VIB v&agrave; Shinhan Bank</p>\n<p>Khuyến mại mua Pin dự ph&ograve;ng Samsung ki&ecirc;m sạc kh&ocirc;ng d&acirc;y 10000 mAh EB-U1200 - Ch&iacute;nh H&atilde;ng với gi&aacute; chỉ 790.000</p>', '2020-10-01 07:35:13', '2020-10-01 07:35:13'),
(422, 'blogs', 'title', 1, 'en', 'Have you changed your political allegiance?', '2020-10-07 08:36:29', '2020-10-07 08:36:29'),
(423, 'blogs', 'slug', 1, 'en', 'have-you-changed-your-political-allegiance', '2020-10-07 08:36:29', '2020-10-07 08:36:29'),
(424, 'blogs', 'description', 1, 'en', 'We’re looking for people who are planning to vote for a different party in the next election. Perhaps you’ve gone from Labour to Green, or Lib Dem to Ukip. If so, we want to hear from you', '2020-10-07 08:36:29', '2020-10-07 08:36:29'),
(425, 'blogs', 'body', 1, 'en', '<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>\r\n<p>&nbsp;</p>\r\n<blockquote>\r\n<p>Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. In venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque. Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex</p>\r\n</blockquote>\r\n<p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Cras pretium arcu ex. Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum laborum in labore rerum</p>', '2020-10-07 08:36:29', '2020-10-07 08:36:29'),
(426, 'blogs', 'seo_title', 1, 'en', 'Have you changed your political allegiance?', '2020-10-07 08:36:30', '2020-10-07 08:36:30'),
(427, 'blogs', 'meta_description', 1, 'en', 'We’re looking for people who are planning to vote for a different party in the next election. Perhaps you’ve gone from Labour to Green, or Lib Dem to Ukip. If so, we want to hear from you', '2020-10-07 08:36:30', '2020-10-07 08:36:30'),
(428, 'data_rows', 'display_name', 254, 'en', 'Phone', '2020-10-09 08:04:19', '2020-10-09 08:04:19'),
(429, 'data_rows', 'display_name', 255, 'en', 'Địa chỉ', '2020-10-10 07:24:47', '2020-10-10 07:24:47'),
(430, 'data_rows', 'display_name', 257, 'en', 'Geo', '2020-11-06 08:50:10', '2020-11-06 08:50:10'),
(431, 'data_rows', 'display_name', 258, 'en', 'Website', '2020-11-06 09:01:58', '2020-11-06 09:01:58'),
(432, 'tags', 'seo_title', 1, 'en', 'Computer', '2020-11-09 08:17:24', '2020-11-09 08:17:24'),
(433, 'pages', 'title', 2, 'en', 'About us', '2020-11-09 08:56:32', '2020-11-09 08:56:32'),
(434, 'pages', 'slug', 2, 'en', 'about-us', '2020-11-09 08:56:32', '2020-11-09 08:56:32'),
(435, 'pages', 'body', 2, 'en', '<h3>Provide Best</h3>\n<h2>Product For You</h2>\n<p>We provide the best Beard oile all over the world. We are the worldd best store in indi for Beard Oil. You can buy our product without any hegitation because they truste us and buy our product without any hagitation because they belive and always happy buy our product.</p>\n<p>Some of our customer say&rsquo;s that they trust us and buy our product without any hagitation because they belive us and always happy to buy our product.</p>\n<p>We provide the beshat they trusted us and buy our product without any hagitation because they belive us and always happy to buy.</p>', '2020-11-09 08:56:32', '2020-11-09 08:56:32'),
(436, 'pages', 'meta_description', 2, 'en', 'We provide the best Beard oile all over the world. We are the worldd best store in indi for Beard Oil. You can buy our product without any hegitation because they truste us and buy our product without any hagitation because they belive and always happy buy our product.', '2020-11-09 08:56:32', '2020-11-09 08:56:32'),
(437, 'pages', 'seo_title', 2, 'en', 'About us', '2020-11-09 08:56:32', '2020-11-09 08:56:32'),
(438, 'data_rows', 'display_name', 256, 'en', 'ID Người mua', '2020-11-20 08:00:38', '2020-11-20 08:00:38'),
(439, 'data_rows', 'display_name', 259, 'en', 'Mã đơn hàng', '2020-11-20 08:04:28', '2020-11-20 08:04:28'),
(440, 'data_rows', 'display_name', 260, 'en', 'Thông tin giao dịch', '2020-11-20 08:04:28', '2020-11-20 08:04:28'),
(441, 'data_rows', 'display_name', 261, 'en', 'Mã giao dịch', '2020-11-20 08:04:28', '2020-11-20 08:04:28'),
(442, 'data_rows', 'display_name', 262, 'en', 'Phương thức thanh toán', '2020-11-20 08:04:28', '2020-11-20 08:04:28'),
(443, 'data_rows', 'display_name', 263, 'en', 'Mã checksum', '2020-11-20 08:04:28', '2020-11-20 08:04:28'),
(444, 'data_rows', 'display_name', 264, 'en', 'Tình trạng', '2020-11-20 08:19:05', '2020-11-20 08:19:05'),
(445, 'data_rows', 'display_name', 265, 'en', 'Phương thức thanh toán', '2020-11-21 09:21:24', '2020-11-21 09:21:24'),
(446, 'products', 'description', 2, 'en', '<b>Khuyến mại:</b>\r\n<p>Giảm thêm 5% tới 300K qua VnPay QR code</p>\r\n<p>Hỗ trợ trả góp 0% dành cho các chủ thẻ tín dụng VPBank, VIB và Shinhan Bank</p>\r\n<p>Khuyến mại mua Pin dự phòng Samsung kiêm sạc không dây 10000 mAh EB-U1200 - Chính Hãng với giá chỉ 790.000</p>', '2020-11-24 02:30:45', '2020-11-24 02:30:45'),
(447, 'data_rows', 'display_name', 266, 'en', 'Id', '2020-12-17 03:27:05', '2020-12-17 03:27:05'),
(448, 'data_rows', 'display_name', 267, 'en', 'Email', '2020-12-17 03:27:05', '2020-12-17 03:27:05'),
(449, 'data_rows', 'display_name', 268, 'en', 'Created At', '2020-12-17 03:27:05', '2020-12-17 03:27:05'),
(450, 'data_rows', 'display_name', 269, 'en', 'Updated At', '2020-12-17 03:27:05', '2020-12-17 03:27:05'),
(451, 'data_types', 'display_name_singular', 22, 'en', 'Newsletter', '2020-12-17 03:27:05', '2020-12-17 03:27:05'),
(452, 'data_types', 'display_name_plural', 22, 'en', 'Newsletters', '2020-12-17 03:27:05', '2020-12-17 03:27:05'),
(453, 'menu_items', 'title', 47, 'en', 'Newsletters', '2020-12-17 03:28:44', '2020-12-17 03:28:44'),
(454, 'data_rows', 'display_name', 270, 'en', 'Company Name', '2020-12-18 02:37:23', '2020-12-18 02:37:23'),
(455, 'site_settings', 'title', 1, 'en', 'Công ty TNHH Quynhstore.com', '2020-12-18 02:53:56', '2020-12-18 02:53:56'),
(456, 'data_rows', 'display_name', 271, 'en', 'Id', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(457, 'data_rows', 'display_name', 272, 'en', 'Product Id', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(458, 'data_rows', 'display_name', 273, 'en', 'Star', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(459, 'data_rows', 'display_name', 274, 'en', 'Token', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(460, 'data_rows', 'display_name', 275, 'en', 'Fullname', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(461, 'data_rows', 'display_name', 276, 'en', 'Email', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(462, 'data_rows', 'display_name', 277, 'en', 'Review', '2020-12-19 08:15:25', '2020-12-19 08:15:25');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(463, 'data_rows', 'display_name', 278, 'en', 'Active', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(464, 'data_rows', 'display_name', 279, 'en', 'Created At', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(465, 'data_rows', 'display_name', 280, 'en', 'Updated At', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(466, 'data_rows', 'display_name', 281, 'en', 'products', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(467, 'data_types', 'display_name_singular', 23, 'en', 'Rating', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(468, 'data_types', 'display_name_plural', 23, 'en', 'Ratings', '2020-12-19 08:15:25', '2020-12-19 08:15:25'),
(469, 'menu_items', 'title', 48, 'en', 'Ratings', '2020-12-19 08:20:43', '2020-12-19 08:20:43'),
(470, 'data_rows', 'display_name', 282, 'en', 'Ip', '2020-12-21 03:27:29', '2020-12-21 03:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `email_verified_at`, `phone`, `address`) VALUES
(1, 5, 'Nguyễn Minh Thụy', 'mthuy.it@gmail.com', 'users/default.png', '$2y$10$ya2wcWh5cu3Gdf5zsm3pn.bnbRzn3vrutjCA/xjceID5h1al5QyWy', 'K3zcFyemwRKouold1GW4U5a7C48OizYgk4fk3XbxjFYEXlWZYNy0Nbfj2WtA', '{\"locale\":\"vi\"}', '2020-08-27 07:16:50', '2021-01-19 06:23:28', NULL, '0366470449', 'Đồng Nai'),
(2, 2, 'User', 'user@user.com', 'users/default.png', '$2y$10$f/1sEgFqN/LBihlCkQp10.KkffkXDl9as/K0LrhQmtyQTva7rDEH.', NULL, '{\"locale\":\"en\"}', '2020-09-07 07:38:24', '2020-10-10 08:27:29', NULL, NULL, NULL),
(3, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$9kPQVpnhJNRgU0MasBYoAuC5CL5mtyPK9paQynPEshGJLUq25vtLG', NULL, '{\"locale\":\"vi\"}', '2020-09-07 09:13:08', '2020-10-10 08:27:29', NULL, NULL, NULL),
(4, 2, 'Thuy', 'minhthuy.nina@gmail.com', 'users/default.png', '$2y$10$aNiJ2F8F0f4wLLCJlKEv2e1rdO/Z7Er1G5610bkYGsEESPO7IYz/W', 'dGNUHikBwhFpLx0osOhweKFzXXq6ESTVYn4zMB1DCCUqhuv4OJkqe3E7MBSD', NULL, '2020-10-09 08:07:30', '2021-01-19 07:17:36', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_code_unique` (`order_code`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cats`
--
ALTER TABLE `product_cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_cats_slug_unique` (`slug`);

--
-- Indexes for table `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_items_slug_unique` (`slug`);

--
-- Indexes for table `product_lists`
--
ALTER TABLE `product_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_lists_slug_unique` (`slug`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_cats`
--
ALTER TABLE `product_cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_lists`
--
ALTER TABLE `product_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
