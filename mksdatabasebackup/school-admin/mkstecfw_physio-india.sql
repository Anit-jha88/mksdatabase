-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2024 at 09:17 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mkstecfw_physio-india`
--

-- --------------------------------------------------------

--
-- Table structure for table `phy_commentmeta`
--

CREATE TABLE `phy_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phy_comments`
--

CREATE TABLE `phy_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_comments`
--

INSERT INTO `phy_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-02-17 15:39:24', '2024-02-17 15:39:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phy_links`
--

CREATE TABLE `phy_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phy_options`
--

CREATE TABLE `phy_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_options`
--

INSERT INTO `phy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://www.physioadviserindia.com/services', 'yes'),
(2, 'home', 'https://www.physioadviserindia.com/services', 'yes'),
(3, 'blogname', 'Physio Adviser India', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aa@gg.mm', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:125:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"treatment-for/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"treatment-for/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"treatment-for/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"treatment-for/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"treatment-for/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"treatment-for/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"treatment-for/([^/]+)/embed/?$\";s:46:\"index.php?treatment-for=$matches[1]&embed=true\";s:34:\"treatment-for/([^/]+)/trackback/?$\";s:40:\"index.php?treatment-for=$matches[1]&tb=1\";s:42:\"treatment-for/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?treatment-for=$matches[1]&paged=$matches[2]\";s:49:\"treatment-for/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?treatment-for=$matches[1]&cpage=$matches[2]\";s:38:\"treatment-for/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?treatment-for=$matches[1]&page=$matches[2]\";s:30:\"treatment-for/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"treatment-for/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"treatment-for/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"treatment-for/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"treatment-for/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"treatment-for/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"service-for/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"service-for/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"service-for/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"service-for/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"service-for/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"service-for/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"service-for/([^/]+)/embed/?$\";s:44:\"index.php?service-for=$matches[1]&embed=true\";s:32:\"service-for/([^/]+)/trackback/?$\";s:38:\"index.php?service-for=$matches[1]&tb=1\";s:40:\"service-for/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?service-for=$matches[1]&paged=$matches[2]\";s:47:\"service-for/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?service-for=$matches[1]&cpage=$matches[2]\";s:36:\"service-for/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?service-for=$matches[1]&page=$matches[2]\";s:28:\"service-for/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"service-for/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"service-for/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"service-for/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"service-for/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"service-for/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:119:\"/home2/mkstecfw/demo.mkstechnosoft.com/physio-india/services/wp-content/themes/twentytwentyone/single-treatment-for.php\";i:2;s:117:\"/home2/mkstecfw/demo.mkstechnosoft.com/physio-india/services/wp-content/themes/twentytwentyone/single-service-for.php\";i:3;s:104:\"/home2/mkstecfw/demo.mkstechnosoft.com/physio-india/services/wp-content/themes/twentytwentyone/style.css\";i:4;s:105:\"/home2/mkstecfw/demo.mkstechnosoft.com/physio-india/services/wp-content/themes/twentytwentyone/single.php\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1723736364', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'phy_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1708619964;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1708659564;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1708659574;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1708702764;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1708702774;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1708702777;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1708789186;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1708875564;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1708184596;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:0:{}', 'yes'),
(135, '_site_transient_timeout_browser_9fea701a627a57d0c458db2e1cb60d62', '1708789176', 'no'),
(136, '_site_transient_browser_9fea701a627a57d0c458db2e1cb60d62', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"121.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_76614dff29bd4b48d50e2e5eb62563b8', '1708789177', 'no'),
(138, '_site_transient_php_check_76614dff29bd4b48d50e2e5eb62563b8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(139, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(140, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(141, 'wp_attachment_pages_enabled', '1', 'yes'),
(142, 'db_upgraded', '', 'yes'),
(143, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(145, 'can_compress_scripts', '0', 'yes'),
(146, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:8:\"aa@gg.mm\";s:7:\"version\";s:5:\"6.4.3\";s:9:\"timestamp\";i:1708184379;}', 'no'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(169, 'finished_updating_comment_type', '1', 'yes'),
(172, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1708616764;s:15:\"version_checked\";s:5:\"6.4.3\";s:12:\"translations\";a:0:{}}', 'no'),
(175, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1708616770;s:7:\"checked\";a:2:{s:12:\"twentytwenty\";s:3:\"2.5\";s:15:\"twentytwentyone\";s:3:\"2.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:2:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.2.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(176, 'current_theme', 'Twenty Twenty-One', 'yes'),
(177, 'theme_mods_twentytwentyone', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(178, 'theme_switched', '', 'yes'),
(183, 'acf_version', '6.2.6.1', 'yes'),
(188, 'wp_calendar_block_has_published_posts', '', 'yes'),
(228, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiTnpJMFkyTmpZelE0TXpaak5HVmhNR05sWlRrMVpUWTFPR05oWWpCbU56ZzNPR1UzTkRBeFlUQmhPREl3WVdNMVpXRTBNelF4IjtzOjM6InVybCI7czo1MjoiaHR0cHM6Ly9kZW1vLm1rc3RlY2hub3NvZnQuY29tL3BoeXNpby1pbmRpYS9zZXJ2aWNlcyI7fQ==', 'yes');
INSERT INTO `phy_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(232, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1708616770;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.6.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240207\";s:6:\"reason\";s:10:\"up_to_date\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.6.1\";s:19:\"akismet/akismet.php\";s:5:\"5.3.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(235, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:1671111138;s:6:\"expiry\";i:1734593277;s:4:\"name\";s:6:\"Agency\";s:8:\"lifetime\";b:0;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:73:\"https://www.advancedcustomfields.com/my-account/view-subscription/360628/\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1708411875;s:16:\"legacy_multisite\";b:1;}', 'yes'),
(240, '_site_transient_timeout_browser_964bc4cbd672b9ba2876cca92ea5f766', '1708833665', 'no'),
(241, '_site_transient_browser_964bc4cbd672b9ba2876cca92ea5f766', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"121.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(272, 'category_children', 'a:0:{}', 'yes'),
(278, '_site_transient_timeout_browser_65206bd50646a143c509073c060ab8eb', '1708930273', 'no'),
(279, '_site_transient_browser_65206bd50646a143c509073c060ab8eb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"121.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(280, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":4,\"critical\":0}', 'yes'),
(297, '_site_transient_timeout_browser_fd543c9bd2fcd4334f1e83986efb5058', '1708940995', 'no'),
(298, '_site_transient_browser_fd543c9bd2fcd4334f1e83986efb5058', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"121.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(302, '_site_transient_timeout_browser_12cff7c401b241581c1f347ece73543d', '1708946853', 'no'),
(303, '_site_transient_browser_12cff7c401b241581c1f347ece73543d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"116.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(305, '_site_transient_timeout_browser_b8d1bd2b4708d18ddd364c29ad2ee653', '1708948293', 'no'),
(306, '_site_transient_browser_b8d1bd2b4708d18ddd364c29ad2ee653', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"121.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(334, '_site_transient_timeout_browser_2cd856b5db3fc94c7c894edb95d93c37', '1709013244', 'no'),
(335, '_site_transient_browser_2cd856b5db3fc94c7c894edb95d93c37', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"121.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(353, '_transient_timeout_acf_plugin_updates', '1708789565', 'no'),
(354, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:0:{}s:9:\"no_update\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.6.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20240207\";s:6:\"reason\";s:10:\"up_to_date\";}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:7:\"6.2.6.1\";}}', 'no'),
(355, '_site_transient_timeout_theme_roots', '1708618569', 'no'),
(356, '_site_transient_theme_roots', 'a:2:{s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `phy_postmeta`
--

CREATE TABLE `phy_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_postmeta`
--

INSERT INTO `phy_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1708184514'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1708184516'),
(8, 3, '_wp_desired_post_slug', 'privacy-policy'),
(11, 1, '_wp_trash_meta_status', 'publish'),
(12, 1, '_wp_trash_meta_time', '1708185385'),
(13, 1, '_wp_desired_post_slug', 'hello-world'),
(14, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(15, 11, '_wp_attached_file', '2024/02/interferential-therapy-ift-2.webp'),
(16, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:41:\"2024/02/interferential-therapy-ift-2.webp\";s:8:\"filesize\";i:35760;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"interferential-therapy-ift-2-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9066;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"interferential-therapy-ift-2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4610;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"interferential-therapy-ift-2-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:27878;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 10, '_edit_last', '1'),
(18, 10, '_thumbnail_id', '11'),
(21, 10, '_edit_lock', '1708247151:1'),
(24, 13, '_edit_last', '1'),
(25, 13, '_edit_lock', '1708190245:1'),
(26, 13, '_thumbnail_id', '11'),
(29, 15, '_edit_last', '1'),
(30, 15, '_edit_lock', '1708247079:1'),
(31, 15, '_thumbnail_id', '11'),
(34, 17, '_edit_last', '1'),
(35, 17, '_edit_lock', '1708247022:1'),
(36, 17, '_thumbnail_id', '11'),
(39, 19, '_edit_last', '1'),
(40, 19, '_edit_lock', '1708247173:1'),
(41, 19, '_thumbnail_id', '11'),
(44, 21, '_edit_last', '1'),
(45, 21, '_edit_lock', '1708247204:1'),
(46, 21, '_thumbnail_id', '11'),
(49, 23, '_edit_last', '1'),
(50, 23, '_edit_lock', '1708247236:1'),
(51, 23, '_thumbnail_id', '11'),
(54, 25, '_edit_last', '1'),
(55, 25, '_edit_lock', '1708247506:1'),
(58, 25, '_thumbnail_id', '11'),
(61, 27, '_edit_last', '1'),
(62, 27, '_edit_lock', '1708246698:1'),
(65, 25, 'question', '2'),
(66, 25, '_question', 'field_65d0e2f621356'),
(67, 25, 'meta_tille', 'demo title'),
(68, 25, '_meta_tille', 'field_65d0e65a2135a'),
(69, 25, 'meta_keywords', 'demo keyword'),
(70, 25, '_meta_keywords', 'field_65d0e6eac97ce'),
(71, 25, 'meta_description', 'demo description'),
(72, 25, '_meta_description', 'field_65d0e6f5c97cf'),
(73, 26, 'question', ''),
(74, 26, '_question', 'field_65d0e2f621356'),
(75, 26, 'meta_tille', ''),
(76, 26, '_meta_tille', 'field_65d0e65a2135a'),
(77, 26, 'meta_keywords', ''),
(78, 26, '_meta_keywords', 'field_65d0e6eac97ce'),
(79, 26, 'meta_description', ''),
(80, 26, '_meta_description', 'field_65d0e6f5c97cf'),
(83, 23, 'question', ''),
(84, 23, '_question', 'field_65d0e2f621356'),
(85, 23, 'meta_tille', ''),
(86, 23, '_meta_tille', 'field_65d0e65a2135a'),
(87, 23, 'meta_keywords', ''),
(88, 23, '_meta_keywords', 'field_65d0e6eac97ce'),
(89, 23, 'meta_description', ''),
(90, 23, '_meta_description', 'field_65d0e6f5c97cf'),
(91, 24, 'question', ''),
(92, 24, '_question', 'field_65d0e2f621356'),
(93, 24, 'meta_tille', ''),
(94, 24, '_meta_tille', 'field_65d0e65a2135a'),
(95, 24, 'meta_keywords', ''),
(96, 24, '_meta_keywords', 'field_65d0e6eac97ce'),
(97, 24, 'meta_description', ''),
(98, 24, '_meta_description', 'field_65d0e6f5c97cf'),
(101, 21, 'question', ''),
(102, 21, '_question', 'field_65d0e2f621356'),
(103, 21, 'meta_tille', ''),
(104, 21, '_meta_tille', 'field_65d0e65a2135a'),
(105, 21, 'meta_keywords', ''),
(106, 21, '_meta_keywords', 'field_65d0e6eac97ce'),
(107, 21, 'meta_description', ''),
(108, 21, '_meta_description', 'field_65d0e6f5c97cf'),
(109, 22, 'question', ''),
(110, 22, '_question', 'field_65d0e2f621356'),
(111, 22, 'meta_tille', ''),
(112, 22, '_meta_tille', 'field_65d0e65a2135a'),
(113, 22, 'meta_keywords', ''),
(114, 22, '_meta_keywords', 'field_65d0e6eac97ce'),
(115, 22, 'meta_description', ''),
(116, 22, '_meta_description', 'field_65d0e6f5c97cf'),
(119, 19, 'question', ''),
(120, 19, '_question', 'field_65d0e2f621356'),
(121, 19, 'meta_tille', ''),
(122, 19, '_meta_tille', 'field_65d0e65a2135a'),
(123, 19, 'meta_keywords', ''),
(124, 19, '_meta_keywords', 'field_65d0e6eac97ce'),
(125, 19, 'meta_description', ''),
(126, 19, '_meta_description', 'field_65d0e6f5c97cf'),
(127, 20, 'question', ''),
(128, 20, '_question', 'field_65d0e2f621356'),
(129, 20, 'meta_tille', ''),
(130, 20, '_meta_tille', 'field_65d0e65a2135a'),
(131, 20, 'meta_keywords', ''),
(132, 20, '_meta_keywords', 'field_65d0e6eac97ce'),
(133, 20, 'meta_description', ''),
(134, 20, '_meta_description', 'field_65d0e6f5c97cf'),
(137, 17, 'question', ''),
(138, 17, '_question', 'field_65d0e2f621356'),
(139, 17, 'meta_tille', ''),
(140, 17, '_meta_tille', 'field_65d0e65a2135a'),
(141, 17, 'meta_keywords', ''),
(142, 17, '_meta_keywords', 'field_65d0e6eac97ce'),
(143, 17, 'meta_description', ''),
(144, 17, '_meta_description', 'field_65d0e6f5c97cf'),
(145, 18, 'question', ''),
(146, 18, '_question', 'field_65d0e2f621356'),
(147, 18, 'meta_tille', ''),
(148, 18, '_meta_tille', 'field_65d0e65a2135a'),
(149, 18, 'meta_keywords', ''),
(150, 18, '_meta_keywords', 'field_65d0e6eac97ce'),
(151, 18, 'meta_description', ''),
(152, 18, '_meta_description', 'field_65d0e6f5c97cf'),
(155, 15, 'question', ''),
(156, 15, '_question', 'field_65d0e2f621356'),
(157, 15, 'meta_tille', ''),
(158, 15, '_meta_tille', 'field_65d0e65a2135a'),
(159, 15, 'meta_keywords', ''),
(160, 15, '_meta_keywords', 'field_65d0e6eac97ce'),
(161, 15, 'meta_description', ''),
(162, 15, '_meta_description', 'field_65d0e6f5c97cf'),
(163, 16, 'question', ''),
(164, 16, '_question', 'field_65d0e2f621356'),
(165, 16, 'meta_tille', ''),
(166, 16, '_meta_tille', 'field_65d0e65a2135a'),
(167, 16, 'meta_keywords', ''),
(168, 16, '_meta_keywords', 'field_65d0e6eac97ce'),
(169, 16, 'meta_description', ''),
(170, 16, '_meta_description', 'field_65d0e6f5c97cf'),
(173, 41, 'question', ''),
(174, 41, '_question', 'field_65d0e2f621356'),
(175, 41, 'meta_tille', ''),
(176, 41, '_meta_tille', 'field_65d0e65a2135a'),
(177, 41, 'meta_keywords', ''),
(178, 41, '_meta_keywords', 'field_65d0e6eac97ce'),
(179, 41, 'meta_description', ''),
(180, 41, '_meta_description', 'field_65d0e6f5c97cf'),
(183, 37, 'question', ''),
(184, 37, '_question', 'field_65d0e2f621356'),
(185, 37, 'meta_tille', ''),
(186, 37, '_meta_tille', 'field_65d0e65a2135a'),
(187, 37, 'meta_keywords', ''),
(188, 37, '_meta_keywords', 'field_65d0e6eac97ce'),
(189, 37, 'meta_description', ''),
(190, 37, '_meta_description', 'field_65d0e6f5c97cf'),
(193, 38, 'question', ''),
(194, 38, '_question', 'field_65d0e2f621356'),
(195, 38, 'meta_tille', ''),
(196, 38, '_meta_tille', 'field_65d0e65a2135a'),
(197, 38, 'meta_keywords', ''),
(198, 38, '_meta_keywords', 'field_65d0e6eac97ce'),
(199, 38, 'meta_description', ''),
(200, 38, '_meta_description', 'field_65d0e6f5c97cf'),
(203, 39, 'question', ''),
(204, 39, '_question', 'field_65d0e2f621356'),
(205, 39, 'meta_tille', ''),
(206, 39, '_meta_tille', 'field_65d0e65a2135a'),
(207, 39, 'meta_keywords', ''),
(208, 39, '_meta_keywords', 'field_65d0e6eac97ce'),
(209, 39, 'meta_description', ''),
(210, 39, '_meta_description', 'field_65d0e6f5c97cf'),
(213, 40, 'question', ''),
(214, 40, '_question', 'field_65d0e2f621356'),
(215, 40, 'meta_tille', ''),
(216, 40, '_meta_tille', 'field_65d0e65a2135a'),
(217, 40, 'meta_keywords', ''),
(218, 40, '_meta_keywords', 'field_65d0e6eac97ce'),
(219, 40, 'meta_description', ''),
(220, 40, '_meta_description', 'field_65d0e6f5c97cf'),
(223, 13, 'question', ''),
(224, 13, '_question', 'field_65d0e2f621356'),
(225, 13, 'meta_tille', ''),
(226, 13, '_meta_tille', 'field_65d0e65a2135a'),
(227, 13, 'meta_keywords', ''),
(228, 13, '_meta_keywords', 'field_65d0e6eac97ce'),
(229, 13, 'meta_description', ''),
(230, 13, '_meta_description', 'field_65d0e6f5c97cf'),
(231, 14, 'question', ''),
(232, 14, '_question', 'field_65d0e2f621356'),
(233, 14, 'meta_tille', ''),
(234, 14, '_meta_tille', 'field_65d0e65a2135a'),
(235, 14, 'meta_keywords', ''),
(236, 14, '_meta_keywords', 'field_65d0e6eac97ce'),
(237, 14, 'meta_description', ''),
(238, 14, '_meta_description', 'field_65d0e6f5c97cf'),
(241, 10, 'question', ''),
(242, 10, '_question', 'field_65d0e2f621356'),
(243, 10, 'meta_tille', ''),
(244, 10, '_meta_tille', 'field_65d0e65a2135a'),
(245, 10, 'meta_keywords', ''),
(246, 10, '_meta_keywords', 'field_65d0e6eac97ce'),
(247, 10, 'meta_description', ''),
(248, 10, '_meta_description', 'field_65d0e6f5c97cf'),
(249, 12, 'question', ''),
(250, 12, '_question', 'field_65d0e2f621356'),
(251, 12, 'meta_tille', ''),
(252, 12, '_meta_tille', 'field_65d0e65a2135a'),
(253, 12, 'meta_keywords', ''),
(254, 12, '_meta_keywords', 'field_65d0e6eac97ce'),
(255, 12, 'meta_description', ''),
(256, 12, '_meta_description', 'field_65d0e6f5c97cf'),
(259, 25, 'question_0_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(260, 25, '_question_0_question', 'field_65d0e5dc21357'),
(261, 25, 'question_0_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(262, 25, '_question_0_answer', 'field_65d0e60121358'),
(263, 36, 'question', '1'),
(264, 36, '_question', 'field_65d0e2f621356'),
(265, 36, 'meta_tille', ''),
(266, 36, '_meta_tille', 'field_65d0e65a2135a'),
(267, 36, 'meta_keywords', ''),
(268, 36, '_meta_keywords', 'field_65d0e6eac97ce'),
(269, 36, 'meta_description', ''),
(270, 36, '_meta_description', 'field_65d0e6f5c97cf'),
(271, 36, 'question_0_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(272, 36, '_question_0_question', 'field_65d0e5dc21357'),
(273, 36, 'question_0_answer', ''),
(274, 36, '_question_0_answer', 'field_65d0e60121358'),
(277, 25, 'question_1_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(278, 25, '_question_1_question', 'field_65d0e5dc21357'),
(279, 25, 'question_1_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(280, 25, '_question_1_answer', 'field_65d0e60121358'),
(281, 49, 'question', '2'),
(282, 49, '_question', 'field_65d0e2f621356'),
(283, 49, 'meta_tille', ''),
(284, 49, '_meta_tille', 'field_65d0e65a2135a'),
(285, 49, 'meta_keywords', ''),
(286, 49, '_meta_keywords', 'field_65d0e6eac97ce'),
(287, 49, 'meta_description', ''),
(288, 49, '_meta_description', 'field_65d0e6f5c97cf'),
(289, 49, 'question_0_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(290, 49, '_question_0_question', 'field_65d0e5dc21357'),
(291, 49, 'question_0_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(292, 49, '_question_0_answer', 'field_65d0e60121358'),
(293, 49, 'question_1_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(294, 49, '_question_1_question', 'field_65d0e5dc21357'),
(295, 49, 'question_1_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(296, 49, '_question_1_answer', 'field_65d0e60121358'),
(299, 50, 'question', '2'),
(300, 50, '_question', 'field_65d0e2f621356'),
(301, 50, 'meta_tille', 'demo title'),
(302, 50, '_meta_tille', 'field_65d0e65a2135a'),
(303, 50, 'meta_keywords', 'demo keyword'),
(304, 50, '_meta_keywords', 'field_65d0e6eac97ce'),
(305, 50, 'meta_description', 'demo description'),
(306, 50, '_meta_description', 'field_65d0e6f5c97cf'),
(307, 50, 'question_0_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(308, 50, '_question_0_question', 'field_65d0e5dc21357'),
(309, 50, 'question_0_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(310, 50, '_question_0_answer', 'field_65d0e60121358'),
(311, 50, 'question_1_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(312, 50, '_question_1_question', 'field_65d0e5dc21357'),
(313, 50, 'question_1_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(314, 50, '_question_1_answer', 'field_65d0e60121358'),
(317, 51, 'question', '2'),
(318, 51, '_question', 'field_65d0e2f621356'),
(319, 51, 'meta_tille', 'demo title'),
(320, 51, '_meta_tille', 'field_65d0e65a2135a'),
(321, 51, 'meta_keywords', 'demo keyword'),
(322, 51, '_meta_keywords', 'field_65d0e6eac97ce'),
(323, 51, 'meta_description', 'demo description'),
(324, 51, '_meta_description', 'field_65d0e6f5c97cf'),
(325, 51, 'question_0_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(326, 51, '_question_0_question', 'field_65d0e5dc21357'),
(327, 51, 'question_0_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(328, 51, '_question_0_answer', 'field_65d0e60121358'),
(329, 51, 'question_1_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(330, 51, '_question_1_question', 'field_65d0e5dc21357'),
(331, 51, 'question_1_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(332, 51, '_question_1_answer', 'field_65d0e60121358'),
(335, 25, 'question_0_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(336, 25, '_question_0_questiont', 'field_65d0e5dc21357'),
(337, 25, 'question_1_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(338, 25, '_question_1_questiont', 'field_65d0e5dc21357'),
(339, 51, 'question_0_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(340, 51, '_question_0_questiont', 'field_65d0e5dc21357'),
(341, 51, 'question_1_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(342, 51, '_question_1_questiont', 'field_65d0e5dc21357'),
(345, 52, 'question', '2'),
(346, 52, '_question', 'field_65d0e2f621356'),
(347, 52, 'meta_tille', 'demo title'),
(348, 52, '_meta_tille', 'field_65d0e65a2135a'),
(349, 52, 'meta_keywords', 'demo keyword'),
(350, 52, '_meta_keywords', 'field_65d0e6eac97ce'),
(351, 52, 'meta_description', 'demo description'),
(352, 52, '_meta_description', 'field_65d0e6f5c97cf'),
(353, 52, 'question_0_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(354, 52, '_question_0_question', 'field_65d0e5dc21357'),
(355, 52, 'question_0_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(356, 52, '_question_0_answer', 'field_65d0e60121358'),
(357, 52, 'question_1_question', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(358, 52, '_question_1_question', 'field_65d0e5dc21357'),
(359, 52, 'question_1_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(360, 52, '_question_1_answer', 'field_65d0e60121358'),
(361, 52, 'question_0_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(362, 52, '_question_0_questiont', 'field_65d0e5dc21357'),
(363, 52, 'question_1_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(364, 52, '_question_1_questiont', 'field_65d0e5dc21357'),
(367, 53, '_edit_last', '1'),
(368, 53, '_edit_lock', '1708246979:1'),
(369, 53, '_thumbnail_id', '11'),
(372, 53, 'question_0_questiont', 'We care about you and your health'),
(373, 53, '_question_0_questiont', 'field_65d0e5dc21357'),
(374, 53, 'question_0_answer', 'We care about you and your health and will do everything we can to make sure that you stay healthy. This means that we will keep an eye on your health, make sure you are getting the proper nutrition, and that you are staying active. We want you to be the best you can be,\r\n<ul>\r\n 	<li>hhkjhkjhkhkjhk</li>\r\n 	<li>mnvmbmbmbmb</li>\r\n 	<li>mvmgkjbkjkjb</li>\r\n 	<li>hgkjgkjkjgkjgkg</li>\r\n</ul>\r\n&nbsp;'),
(375, 53, '_question_0_answer', 'field_65d0e60121358'),
(376, 53, 'question_1_questiont', 'Book Your Appointment To Get Quality Services '),
(377, 53, '_question_1_questiont', 'field_65d0e5dc21357'),
(378, 53, 'question_1_answer', 'Working on a computer for long periods of time can lead to back pain, but there are steps you can take to minimize this risk..\r\n\r\nWorking on a computer for long periods of time can lead to back pain, but there are steps you can take to minimize this risk..'),
(379, 53, '_question_1_answer', 'field_65d0e60121358'),
(380, 53, 'question', '2'),
(381, 53, '_question', 'field_65d0e2f621356'),
(382, 53, 'meta_tille', ''),
(383, 53, '_meta_tille', 'field_65d0e65a2135a'),
(384, 53, 'meta_keywords', ''),
(385, 53, '_meta_keywords', 'field_65d0e6eac97ce'),
(386, 53, 'meta_description', ''),
(387, 53, '_meta_description', 'field_65d0e6f5c97cf'),
(388, 54, 'question_0_questiont', 'We care about you and your health'),
(389, 54, '_question_0_questiont', 'field_65d0e5dc21357'),
(390, 54, 'question_0_answer', 'We care about you and your health and will do everything we can to make sure that you stay healthy. This means that we will keep an eye on your health, make sure you are getting the proper nutrition, and that you are staying active. We want you to be the best you can be,\r\n<ul>\r\n 	<li>hhkjhkjhkhkjhk</li>\r\n 	<li>mnvmbmbmbmb</li>\r\n 	<li>mvmgkjbkjkjb</li>\r\n 	<li>hgkjgkjkjgkjgkg</li>\r\n</ul>\r\n&nbsp;'),
(391, 54, '_question_0_answer', 'field_65d0e60121358'),
(392, 54, 'question_1_questiont', 'Book Your Appointment To Get Quality Services '),
(393, 54, '_question_1_questiont', 'field_65d0e5dc21357'),
(394, 54, 'question_1_answer', 'Working on a computer for long periods of time can lead to back pain, but there are steps you can take to minimize this risk..\r\n\r\nWorking on a computer for long periods of time can lead to back pain, but there are steps you can take to minimize this risk..'),
(395, 54, '_question_1_answer', 'field_65d0e60121358'),
(396, 54, 'question', '2'),
(397, 54, '_question', 'field_65d0e2f621356'),
(398, 54, 'meta_tille', ''),
(399, 54, '_meta_tille', 'field_65d0e65a2135a'),
(400, 54, 'meta_keywords', ''),
(401, 54, '_meta_keywords', 'field_65d0e6eac97ce'),
(402, 54, 'meta_description', ''),
(403, 54, '_meta_description', 'field_65d0e6f5c97cf'),
(404, 55, '_edit_last', '1'),
(405, 55, '_edit_lock', '1708246796:1'),
(406, 55, 'question_0_questiont', 'what is back pain?'),
(407, 55, '_question_0_questiont', 'field_65d0e5dc21357'),
(408, 55, 'question_0_answer', 'rwyttukyiuyjh fdhtryjtuykiy fhyruytutyfjyfryfrjyfr\r\n\r\njcdjffjmg\r\n\r\nhgdyjfgku\r\n\r\njhfjgjggjg\r\n<ul>\r\n 	<li>fiuylououlyi</li>\r\n 	<li>jgdjyfjutguj</li>\r\n 	<li>hdshtdhfjfjh</li>\r\n 	<li>dhdfjfgg</li>\r\n</ul>\r\ngdtjyfjfgmhjgmj\r\n\r\n&nbsp;'),
(409, 55, '_question_0_answer', 'field_65d0e60121358'),
(410, 55, 'question_1_questiont', 'type of back pain'),
(411, 55, '_question_1_questiont', 'field_65d0e5dc21357'),
(412, 55, 'question_1_answer', 'deytrjyugjkyhky\r\n\r\nmhcmhfmjgmjmh\r\ngxdfhfvhnvhnvhn\r\n\r\nngxngdcngcfhvmhngv'),
(413, 55, '_question_1_answer', 'field_65d0e60121358'),
(414, 55, 'question', '2'),
(415, 55, '_question', 'field_65d0e2f621356'),
(416, 55, 'meta_tille', ''),
(417, 55, '_meta_tille', 'field_65d0e65a2135a'),
(418, 55, 'meta_keywords', ''),
(419, 55, '_meta_keywords', 'field_65d0e6eac97ce'),
(420, 55, 'meta_description', ''),
(421, 55, '_meta_description', 'field_65d0e6f5c97cf'),
(422, 56, 'question_0_questiont', 'what is back pain?'),
(423, 56, '_question_0_questiont', 'field_65d0e5dc21357'),
(424, 56, 'question_0_answer', 'rwyttukyiuyjh fdhtryjtuykiy fhyruytutyfjyfryfrjyfr\r\n\r\njcdjffjmg\r\n\r\nhgdyjfgku\r\n\r\njhfjgjggjg\r\n<ul>\r\n 	<li>fiuylououlyi</li>\r\n 	<li>jgdjyfjutguj</li>\r\n 	<li>hdshtdhfjfjh</li>\r\n 	<li>dhdfjfgg</li>\r\n</ul>\r\ngdtjyfjfgmhjgmj\r\n\r\n&nbsp;'),
(425, 56, '_question_0_answer', 'field_65d0e60121358'),
(426, 56, 'question_1_questiont', 'type of back pain'),
(427, 56, '_question_1_questiont', 'field_65d0e5dc21357'),
(428, 56, 'question_1_answer', ''),
(429, 56, '_question_1_answer', 'field_65d0e60121358'),
(430, 56, 'question', '2'),
(431, 56, '_question', 'field_65d0e2f621356'),
(432, 56, 'meta_tille', ''),
(433, 56, '_meta_tille', 'field_65d0e65a2135a'),
(434, 56, 'meta_keywords', ''),
(435, 56, '_meta_keywords', 'field_65d0e6eac97ce'),
(436, 56, 'meta_description', ''),
(437, 56, '_meta_description', 'field_65d0e6f5c97cf'),
(438, 57, '_wp_attached_file', '2024/02/101.png'),
(439, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:15:\"2024/02/101.png\";s:8:\"filesize\";i:620142;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"101-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:73939;}s:5:\"large\";a:5:{s:4:\"file\";s:17:\"101-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:585089;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"101-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22154;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"101-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:366239;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 55, '_thumbnail_id', '57'),
(443, 58, 'question_0_questiont', 'what is back pain?'),
(444, 58, '_question_0_questiont', 'field_65d0e5dc21357'),
(445, 58, 'question_0_answer', 'rwyttukyiuyjh fdhtryjtuykiy fhyruytutyfjyfryfrjyfr\r\n\r\njcdjffjmg\r\n\r\nhgdyjfgku\r\n\r\njhfjgjggjg\r\n<ul>\r\n 	<li>fiuylououlyi</li>\r\n 	<li>jgdjyfjutguj</li>\r\n 	<li>hdshtdhfjfjh</li>\r\n 	<li>dhdfjfgg</li>\r\n</ul>\r\ngdtjyfjfgmhjgmj\r\n\r\n&nbsp;'),
(446, 58, '_question_0_answer', 'field_65d0e60121358'),
(447, 58, 'question_1_questiont', 'type of back pain'),
(448, 58, '_question_1_questiont', 'field_65d0e5dc21357'),
(449, 58, 'question_1_answer', 'deytrjyugjkyhky\r\n\r\nmhcmhfmjgmjmh\r\ngxdfhfvhnvhnvhn\r\n\r\nngxngdcngcfhvmhngv'),
(450, 58, '_question_1_answer', 'field_65d0e60121358'),
(451, 58, 'question', '2'),
(452, 58, '_question', 'field_65d0e2f621356'),
(453, 58, 'meta_tille', ''),
(454, 58, '_meta_tille', 'field_65d0e65a2135a'),
(455, 58, 'meta_keywords', ''),
(456, 58, '_meta_keywords', 'field_65d0e6eac97ce'),
(457, 58, 'meta_description', ''),
(458, 58, '_meta_description', 'field_65d0e6f5c97cf'),
(461, 60, '_edit_last', '1'),
(462, 60, '_edit_lock', '1708246338:1'),
(463, 62, '_edit_last', '1'),
(464, 62, '_edit_lock', '1708241102:1'),
(465, 63, '_edit_last', '1'),
(466, 63, '_edit_lock', '1708241138:1'),
(467, 64, '_edit_last', '1'),
(468, 64, '_edit_lock', '1708241147:1'),
(469, 65, '_edit_last', '1'),
(470, 65, '_edit_lock', '1708241227:1'),
(471, 66, '_edit_last', '1'),
(472, 66, '_edit_lock', '1708247517:1'),
(473, 60, '_wp_page_template', 'page-Treatment-For.php'),
(474, 64, '_wp_trash_meta_status', 'publish'),
(475, 64, '_wp_trash_meta_time', '1708246505'),
(476, 64, '_wp_desired_post_slug', 'b1'),
(477, 63, '_wp_trash_meta_status', 'publish'),
(478, 63, '_wp_trash_meta_time', '1708246507'),
(479, 63, '_wp_desired_post_slug', 'a1'),
(480, 69, '_edit_last', '1'),
(481, 69, '_edit_lock', '1708246804:1'),
(482, 69, '_thumbnail_id', '57'),
(483, 69, 'question_0_questiont', 'this is demo question of back pain1'),
(484, 69, '_question_0_questiont', 'field_65d0e5dc21357'),
(485, 69, 'question_0_answer', 'answer goes here'),
(486, 69, '_question_0_answer', 'field_65d0e60121358'),
(487, 69, 'question_1_questiont', 'this is demo question of back pain2'),
(488, 69, '_question_1_questiont', 'field_65d0e5dc21357'),
(489, 69, 'question_1_answer', 'answer goes here'),
(490, 69, '_question_1_answer', 'field_65d0e60121358'),
(491, 69, 'question', '2'),
(492, 69, '_question', 'field_65d0e2f621356'),
(493, 69, 'meta_tille', ''),
(494, 69, '_meta_tille', 'field_65d0e65a2135a'),
(495, 69, 'meta_keywords', ''),
(496, 69, '_meta_keywords', 'field_65d0e6eac97ce'),
(497, 69, 'meta_description', ''),
(498, 69, '_meta_description', 'field_65d0e6f5c97cf'),
(499, 70, '_edit_last', '1'),
(500, 70, '_edit_lock', '1708246969:1'),
(501, 70, '_thumbnail_id', '11'),
(502, 70, 'question_0_questiont', 'We care about you and your health'),
(503, 70, '_question_0_questiont', 'field_65d0e5dc21357'),
(504, 70, 'question_0_answer', 'We care about you and your health and will do everything we can to make sure that you stay healthy. This means that we will keep an eye on your health, make sure you are getting the proper nutrition, and that you are staying active. We want you to be the best you can be,\r\n<ul>\r\n 	<li>hhkjhkjhkhkjhk</li>\r\n 	<li>mnvmbmbmbmb</li>\r\n 	<li>mvmgkjbkjkjb</li>\r\n 	<li>hgkjgkjkjgkjgkg</li>\r\n</ul>\r\n&nbsp;'),
(505, 70, '_question_0_answer', 'field_65d0e60121358'),
(506, 70, 'question_1_questiont', 'Book Your Appointment To Get Quality Services '),
(507, 70, '_question_1_questiont', 'field_65d0e5dc21357'),
(508, 70, 'question_1_answer', 'Working on a computer for long periods of time can lead to back pain, but there are steps you can take to minimize this risk..\r\n\r\nWorking on a computer for long periods of time can lead to back pain, but there are steps you can take to minimize this risk..'),
(509, 70, '_question_1_answer', 'field_65d0e60121358'),
(510, 70, 'question', '2'),
(511, 70, '_question', 'field_65d0e2f621356'),
(512, 70, 'meta_tille', ''),
(513, 70, '_meta_tille', 'field_65d0e65a2135a'),
(514, 70, 'meta_keywords', ''),
(515, 70, '_meta_keywords', 'field_65d0e6eac97ce'),
(516, 70, 'meta_description', ''),
(517, 70, '_meta_description', 'field_65d0e6f5c97cf'),
(518, 71, '_edit_last', '1'),
(519, 71, '_edit_lock', '1708247011:1'),
(520, 71, '_thumbnail_id', '11'),
(521, 71, 'question_0_questiont', ''),
(522, 71, '_question_0_questiont', 'field_65d0e5dc21357'),
(523, 71, 'question_0_answer', ''),
(524, 71, '_question_0_answer', 'field_65d0e60121358'),
(525, 71, 'question', '1'),
(526, 71, '_question', 'field_65d0e2f621356'),
(527, 71, 'meta_tille', ''),
(528, 71, '_meta_tille', 'field_65d0e65a2135a'),
(529, 71, 'meta_keywords', ''),
(530, 71, '_meta_keywords', 'field_65d0e6eac97ce'),
(531, 71, 'meta_description', ''),
(532, 71, '_meta_description', 'field_65d0e6f5c97cf'),
(533, 72, '_edit_last', '1'),
(534, 72, '_edit_lock', '1708247043:1'),
(535, 72, '_thumbnail_id', '11'),
(536, 72, 'question', ''),
(537, 72, '_question', 'field_65d0e2f621356'),
(538, 72, 'meta_tille', ''),
(539, 72, '_meta_tille', 'field_65d0e65a2135a'),
(540, 72, 'meta_keywords', ''),
(541, 72, '_meta_keywords', 'field_65d0e6eac97ce'),
(542, 72, 'meta_description', ''),
(543, 72, '_meta_description', 'field_65d0e6f5c97cf'),
(544, 73, '_edit_last', '1'),
(545, 73, '_edit_lock', '1708247075:1'),
(546, 73, '_thumbnail_id', '11'),
(547, 73, 'question', ''),
(548, 73, '_question', 'field_65d0e2f621356'),
(549, 73, 'meta_tille', ''),
(550, 73, '_meta_tille', 'field_65d0e65a2135a'),
(551, 73, 'meta_keywords', ''),
(552, 73, '_meta_keywords', 'field_65d0e6eac97ce'),
(553, 73, 'meta_description', ''),
(554, 73, '_meta_description', 'field_65d0e6f5c97cf'),
(555, 74, '_edit_last', '1'),
(556, 74, '_edit_lock', '1708247134:1'),
(557, 74, '_thumbnail_id', '11'),
(558, 74, 'question', ''),
(559, 74, '_question', 'field_65d0e2f621356'),
(560, 74, 'meta_tille', ''),
(561, 74, '_meta_tille', 'field_65d0e65a2135a'),
(562, 74, 'meta_keywords', ''),
(563, 74, '_meta_keywords', 'field_65d0e6eac97ce'),
(564, 74, 'meta_description', ''),
(565, 74, '_meta_description', 'field_65d0e6f5c97cf'),
(566, 75, '_edit_last', '1'),
(567, 75, '_edit_lock', '1708247170:1'),
(568, 75, '_thumbnail_id', '11'),
(569, 75, 'question', ''),
(570, 75, '_question', 'field_65d0e2f621356'),
(571, 75, 'meta_tille', ''),
(572, 75, '_meta_tille', 'field_65d0e65a2135a'),
(573, 75, 'meta_keywords', ''),
(574, 75, '_meta_keywords', 'field_65d0e6eac97ce'),
(575, 75, 'meta_description', ''),
(576, 75, '_meta_description', 'field_65d0e6f5c97cf'),
(577, 76, '_edit_last', '1'),
(578, 76, '_edit_lock', '1708247200:1'),
(579, 76, '_thumbnail_id', '11'),
(580, 76, 'question', ''),
(581, 76, '_question', 'field_65d0e2f621356'),
(582, 76, 'meta_tille', ''),
(583, 76, '_meta_tille', 'field_65d0e65a2135a'),
(584, 76, 'meta_keywords', ''),
(585, 76, '_meta_keywords', 'field_65d0e6eac97ce'),
(586, 76, 'meta_description', ''),
(587, 76, '_meta_description', 'field_65d0e6f5c97cf'),
(588, 79, '_edit_last', '1'),
(589, 79, '_edit_lock', '1708247232:1'),
(590, 79, '_thumbnail_id', '11'),
(591, 79, 'question', ''),
(592, 79, '_question', 'field_65d0e2f621356'),
(593, 79, 'meta_tille', ''),
(594, 79, '_meta_tille', 'field_65d0e65a2135a'),
(595, 79, 'meta_keywords', ''),
(596, 79, '_meta_keywords', 'field_65d0e6eac97ce'),
(597, 79, 'meta_description', ''),
(598, 79, '_meta_description', 'field_65d0e6f5c97cf'),
(599, 80, '_edit_last', '1'),
(600, 80, '_edit_lock', '1708247324:1'),
(601, 80, '_thumbnail_id', '11'),
(602, 80, 'question_0_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES?'),
(603, 80, '_question_0_questiont', 'field_65d0e5dc21357'),
(604, 80, 'question_0_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n'),
(605, 80, '_question_0_answer', 'field_65d0e60121358'),
(606, 80, 'question_1_questiont', 'WHAT IS ULTRASOUND THERAPY OR THERAPEUTIC ULTRASOUND? WHAT ARE ITS TYPES2?'),
(607, 80, '_question_1_questiont', 'field_65d0e5dc21357'),
(608, 80, 'question_1_answer', '<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>\r\n\r\n<p>This therapy involves the application of Ultrasound waves above the range of human hearing to treat various types of injuries. The application of Ultrasound Therapy helps in increasing the blood flow of a localized area to reduce the swelling and inflammation in that area. It is also used to enhance the healing of a bone fracture.\r\n</p>'),
(609, 80, '_question_1_answer', 'field_65d0e60121358'),
(610, 80, 'question', '2'),
(611, 80, '_question', 'field_65d0e2f621356'),
(612, 80, 'meta_tille', 'demo title'),
(613, 80, '_meta_tille', 'field_65d0e65a2135a'),
(614, 80, 'meta_keywords', 'demo keyword'),
(615, 80, '_meta_keywords', 'field_65d0e6eac97ce'),
(616, 80, 'meta_description', 'demo description'),
(617, 80, '_meta_description', 'field_65d0e6f5c97cf'),
(618, 55, '_wp_trash_meta_status', 'publish'),
(619, 55, '_wp_trash_meta_time', '1708247471'),
(620, 55, '_wp_desired_post_slug', 'back-pain'),
(621, 53, '_wp_trash_meta_status', 'publish'),
(622, 53, '_wp_trash_meta_time', '1708247473'),
(623, 53, '_wp_desired_post_slug', 'orthopedic-physiotherapy'),
(624, 25, '_wp_trash_meta_status', 'publish'),
(625, 25, '_wp_trash_meta_time', '1708247474'),
(626, 25, '_wp_desired_post_slug', 'kinesio-taping-taping'),
(627, 23, '_wp_trash_meta_status', 'publish'),
(628, 23, '_wp_trash_meta_time', '1708247475'),
(629, 23, '_wp_desired_post_slug', 'dry-needling-therapy'),
(630, 21, '_wp_trash_meta_status', 'publish'),
(631, 21, '_wp_trash_meta_time', '1708247477'),
(632, 21, '_wp_desired_post_slug', 'thermotherapy'),
(633, 19, '_wp_trash_meta_status', 'publish'),
(634, 19, '_wp_trash_meta_time', '1708247478'),
(635, 19, '_wp_desired_post_slug', 'transcutaneous-electrical'),
(636, 17, '_wp_trash_meta_status', 'publish'),
(637, 17, '_wp_trash_meta_time', '1708247479'),
(638, 17, '_wp_desired_post_slug', 'laser-therapy'),
(639, 15, '_wp_trash_meta_status', 'publish'),
(640, 15, '_wp_trash_meta_time', '1708247481'),
(641, 15, '_wp_desired_post_slug', 'ultrasound-therapy'),
(642, 13, '_wp_trash_meta_status', 'publish'),
(643, 13, '_wp_trash_meta_time', '1708247482'),
(644, 13, '_wp_desired_post_slug', 'chiropractic-therapy'),
(645, 10, '_wp_trash_meta_status', 'publish'),
(646, 10, '_wp_trash_meta_time', '1708247484'),
(647, 10, '_wp_desired_post_slug', 'interferential-therapy'),
(648, 66, '_wp_page_template', 'page-service-for.php'),
(649, 81, '_edit_last', '1'),
(650, 81, '_edit_lock', '1708325860:1'),
(651, 82, '_wp_attached_file', '2024/02/Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post.jpg'),
(652, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:64:\"2024/02/Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post.jpg\";s:8:\"filesize\";i:154766;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:64:\"Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22386;}s:5:\"large\";a:5:{s:4:\"file\";s:66:\"Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132310;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:64:\"Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9796;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:64:\"Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:84066;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(653, 81, '_thumbnail_id', '82'),
(654, 81, 'question_0_questiont', '1 What is Lorem Ipsum?'),
(655, 81, '_question_0_questiont', 'field_65d0e5dc21357'),
(656, 81, 'question_0_answer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(657, 81, '_question_0_answer', 'field_65d0e60121358'),
(658, 81, 'question_1_questiont', '2 What is Lorem Ipsum?'),
(659, 81, '_question_1_questiont', 'field_65d0e5dc21357'),
(660, 81, 'question_1_answer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Details are below</strong>\r\n<ol>\r\n 	<li>publishing software</li>\r\n 	<li>publishing software</li>\r\n 	<li>publishing software</li>\r\n 	<li>publishing software</li>\r\n</ol>\r\n<strong>Details are below</strong>\r\n<ul>\r\n 	<li>publishing software</li>\r\n 	<li>publishing software</li>\r\n 	<li>publishing software</li>\r\n</ul>\r\nalso the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(661, 81, '_question_1_answer', 'field_65d0e60121358'),
(662, 81, 'question', '2'),
(663, 81, '_question', 'field_65d0e2f621356'),
(664, 81, 'meta_tille', ''),
(665, 81, '_meta_tille', 'field_65d0e65a2135a'),
(666, 81, 'meta_keywords', ''),
(667, 81, '_meta_keywords', 'field_65d0e6eac97ce'),
(668, 81, 'meta_description', ''),
(669, 81, '_meta_description', 'field_65d0e6f5c97cf'),
(670, 83, '_edit_last', '1'),
(671, 83, '_edit_lock', '1708326615:1'),
(672, 83, '_thumbnail_id', '82'),
(673, 83, 'question_0_questiont', 'question 1'),
(674, 83, '_question_0_questiont', 'field_65d0e5dc21357'),
(675, 83, 'question_0_answer', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(676, 83, '_question_0_answer', 'field_65d0e60121358'),
(677, 83, 'question_1_questiont', 'question 2'),
(678, 83, '_question_1_questiont', 'field_65d0e5dc21357'),
(679, 83, 'question_1_answer', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(680, 83, '_question_1_answer', 'field_65d0e60121358'),
(681, 83, 'question', '2'),
(682, 83, '_question', 'field_65d0e2f621356'),
(683, 83, 'meta_tille', ''),
(684, 83, '_meta_tille', 'field_65d0e65a2135a'),
(685, 83, 'meta_keywords', ''),
(686, 83, '_meta_keywords', 'field_65d0e6eac97ce'),
(687, 83, 'meta_description', ''),
(688, 83, '_meta_description', 'field_65d0e6f5c97cf'),
(689, 84, '_edit_last', '1'),
(690, 84, '_edit_lock', '1708349469:1'),
(691, 84, 'question', ''),
(692, 84, '_question', 'field_65d0e2f621356'),
(693, 84, 'meta_tille', 'esting1esting1esting1'),
(694, 84, '_meta_tille', 'field_65d0e65a2135a'),
(695, 84, 'meta_keywords', 'esting1'),
(696, 84, '_meta_keywords', 'field_65d0e6eac97ce'),
(697, 84, 'meta_description', 'esting1'),
(698, 84, '_meta_description', 'field_65d0e6f5c97cf'),
(699, 86, '_edit_last', '1'),
(700, 86, '_edit_lock', '1708411993:1'),
(701, 86, '_thumbnail_id', '82'),
(702, 86, 'question_0_questiont', 'question 1'),
(703, 86, '_question_0_questiont', 'field_65d0e5dc21357'),
(704, 86, 'question_0_answer', 'Examples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes Examples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes\r\n\r\n&nbsp;\r\n\r\nExamples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes'),
(705, 86, '_question_0_answer', 'field_65d0e60121358'),
(706, 86, 'question_1_questiont', 'Question 2'),
(707, 86, '_question_1_questiont', 'field_65d0e5dc21357');
INSERT INTO `phy_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(708, 86, 'question_1_answer', 'Examples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes Examples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes\r\n<ul>\r\n 	<li><em>treatment</em> programmes</li>\r\n 	<li><em>treatment</em> programmes 2</li>\r\n 	<li><em>treatment</em> programmes 3</li>\r\n 	<li><em>treatment</em> programmes 4</li>\r\n</ul>\r\nbased <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes'),
(709, 86, '_question_1_answer', 'field_65d0e60121358'),
(710, 86, 'question', '2'),
(711, 86, '_question', 'field_65d0e2f621356'),
(712, 86, 'meta_tille', 'what is treatment'),
(713, 86, '_meta_tille', 'field_65d0e65a2135a'),
(714, 86, 'meta_keywords', 'treatment in delhi'),
(715, 86, '_meta_keywords', 'field_65d0e6eac97ce'),
(716, 86, 'meta_description', 'Examples of community-based treatments are opioid substitution pro- grammes, counselling programmes and after- care services. Residential treatment programmes'),
(717, 86, '_meta_description', 'field_65d0e6f5c97cf'),
(718, 87, '_edit_last', '1'),
(719, 87, '_edit_lock', '1708410487:1'),
(720, 87, 'question', ''),
(721, 87, '_question', 'field_65d0e2f621356'),
(722, 87, 'meta_tille', 'rohit service'),
(723, 87, '_meta_tille', 'field_65d0e65a2135a'),
(724, 87, 'meta_keywords', 'rohit service'),
(725, 87, '_meta_keywords', 'field_65d0e6eac97ce'),
(726, 87, 'meta_description', 'rohit service'),
(727, 87, '_meta_description', 'field_65d0e6f5c97cf');

-- --------------------------------------------------------

--
-- Table structure for table `phy_posts`
--

CREATE TABLE `phy_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_posts`
--

INSERT INTO `phy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-02-17 15:39:24', '2024-02-17 15:39:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2024-02-17 15:56:25', '2024-02-17 15:56:25', '', 0, 'https://www.physioadviserindia.com/services/?p=1', 0, 'post', '', 1),
(2, 1, '2024-02-17 15:39:24', '2024-02-17 15:39:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://www.physioadviserindia.com/services/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-02-17 15:41:54', '2024-02-17 15:41:54', '', 0, 'https://www.physioadviserindia.com/services/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-02-17 15:39:24', '2024-02-17 15:39:24', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://www.physioadviserindia.com/services.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2024-02-17 15:41:56', '2024-02-17 15:41:56', '', 0, 'https://www.physioadviserindia.com/services/?page_id=3', 0, 'page', '', 0),
(4, 1, '2024-02-17 15:39:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-02-17 15:39:37', '0000-00-00 00:00:00', '', 0, 'https://www.physioadviserindia.com/services/?p=4', 0, 'post', '', 0),
(5, 1, '2024-02-17 15:41:54', '2024-02-17 15:41:54', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://www.physioadviserindia.com/services/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-02-17 15:41:54', '2024-02-17 15:41:54', '', 2, 'https://www.physioadviserindia.com/services/?p=5', 0, 'revision', '', 0),
(6, 1, '2024-02-17 15:41:56', '2024-02-17 15:41:56', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://www.physioadviserindia.com/services.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-02-17 15:41:56', '2024-02-17 15:41:56', '', 3, 'https://www.physioadviserindia.com/services/?p=6', 0, 'revision', '', 0),
(8, 1, '2024-02-17 15:52:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-02-17 15:52:10', '0000-00-00 00:00:00', '', 0, 'https://www.physioadviserindia.com/services/?post_type=acf-field-group&p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2024-02-17 15:56:25', '2024-02-17 15:56:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-02-17 15:56:25', '2024-02-17 15:56:25', '', 1, 'https://www.physioadviserindia.com/services/?p=9', 0, 'revision', '', 0),
(10, 1, '2024-02-17 15:58:12', '2024-02-17 15:58:12', 'This therapy involves the application of Ultrasound waves above the ra...', 'Interferential Therapy', '', 'trash', 'open', 'open', '', 'interferential-therapy__trashed', '', '', '2024-02-18 09:11:24', '2024-02-18 09:11:24', '', 0, 'https://www.physioadviserindia.com/services/?p=10', 0, 'post', '', 0),
(11, 1, '2024-02-17 15:57:15', '2024-02-17 15:57:15', '', 'interferential-therapy-ift-2', '', 'inherit', 'open', 'closed', '', 'interferential-therapy-ift-2', '', '', '2024-02-17 15:57:15', '2024-02-17 15:57:15', '', 10, 'https://www.physioadviserindia.com/services/wp-content/uploads/2024/02/interferential-therapy-ift-2.webp', 0, 'attachment', 'image/webp', 0),
(12, 1, '2024-02-17 15:58:12', '2024-02-17 15:58:12', '', 'Interferential Therapy', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-02-17 15:58:12', '2024-02-17 15:58:12', '', 10, 'https://www.physioadviserindia.com/services/?p=12', 0, 'revision', '', 0),
(13, 1, '2024-02-17 16:10:42', '2024-02-17 16:10:42', 'This therapy involves the application of Ultrasound waves above the ra...', 'Chiropractic Therapy', '', 'trash', 'open', 'open', '', 'chiropractic-therapy__trashed', '', '', '2024-02-18 09:11:22', '2024-02-18 09:11:22', '', 0, 'https://www.physioadviserindia.com/services/?p=13', 0, 'post', '', 0),
(14, 1, '2024-02-17 16:10:42', '2024-02-17 16:10:42', '', 'Chiropractic Therapy', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-02-17 16:10:42', '2024-02-17 16:10:42', '', 13, 'https://www.physioadviserindia.com/services/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-02-17 16:11:04', '2024-02-17 16:11:04', 'This therapy involves the application of Ultrasound waves above the ra', 'Ultrasound Therapy', '', 'trash', 'open', 'open', '', 'ultrasound-therapy__trashed', '', '', '2024-02-18 09:11:21', '2024-02-18 09:11:21', '', 0, 'https://www.physioadviserindia.com/services/?p=15', 0, 'post', '', 0),
(16, 1, '2024-02-17 16:11:04', '2024-02-17 16:11:04', '', 'Ultrasound Therapy', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-02-17 16:11:04', '2024-02-17 16:11:04', '', 15, 'https://www.physioadviserindia.com/services/?p=16', 0, 'revision', '', 0),
(17, 1, '2024-02-17 16:12:06', '2024-02-17 16:12:06', 'This therapy involves the application of Ultrasound waves above the ra', 'Laser Therapy', '', 'trash', 'open', 'open', '', 'laser-therapy__trashed', '', '', '2024-02-18 09:11:19', '2024-02-18 09:11:19', '', 0, 'https://www.physioadviserindia.com/services/?p=17', 0, 'post', '', 0),
(18, 1, '2024-02-17 16:12:06', '2024-02-17 16:12:06', '', 'Laser Therapy', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-02-17 16:12:06', '2024-02-17 16:12:06', '', 17, 'https://www.physioadviserindia.com/services/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-02-17 16:13:28', '2024-02-17 16:13:28', 'This therapy involves the application of Ultrasound waves above the ra', 'Transcutaneous Electrical', '', 'trash', 'open', 'open', '', 'transcutaneous-electrical__trashed', '', '', '2024-02-18 09:11:18', '2024-02-18 09:11:18', '', 0, 'https://www.physioadviserindia.com/services/?p=19', 0, 'post', '', 0),
(20, 1, '2024-02-17 16:13:28', '2024-02-17 16:13:28', '', 'Transcutaneous Electrical', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-02-17 16:13:28', '2024-02-17 16:13:28', '', 19, 'https://www.physioadviserindia.com/services/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-02-17 16:13:55', '2024-02-17 16:13:55', 'This therapy involves the application of Ultrasound waves above the ra', 'Thermotherapy', '', 'trash', 'open', 'open', '', 'thermotherapy__trashed', '', '', '2024-02-18 09:11:17', '2024-02-18 09:11:17', '', 0, 'https://www.physioadviserindia.com/services/?p=21', 0, 'post', '', 0),
(22, 1, '2024-02-17 16:13:55', '2024-02-17 16:13:55', '', 'Thermotherapy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2024-02-17 16:13:55', '2024-02-17 16:13:55', '', 21, 'https://www.physioadviserindia.com/services/?p=22', 0, 'revision', '', 0),
(23, 1, '2024-02-17 16:14:26', '2024-02-17 16:14:26', 'This therapy involves the application of Ultrasound waves above the ra', 'Dry Needling Therapy', '', 'trash', 'open', 'open', '', 'dry-needling-therapy__trashed', '', '', '2024-02-18 09:11:15', '2024-02-18 09:11:15', '', 0, 'https://www.physioadviserindia.com/services/?p=23', 0, 'post', '', 0),
(24, 1, '2024-02-17 16:14:26', '2024-02-17 16:14:26', '', 'Dry Needling Therapy', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-02-17 16:14:26', '2024-02-17 16:14:26', '', 23, 'https://www.physioadviserindia.com/services/?p=24', 0, 'revision', '', 0),
(25, 1, '2024-02-17 16:14:42', '2024-02-17 16:14:42', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'trash', 'open', 'open', '', 'kinesio-taping-taping__trashed', '', '', '2024-02-18 09:11:14', '2024-02-18 09:11:14', '', 0, 'https://www.physioadviserindia.com/services/?p=25', 0, 'post', '', 0),
(26, 1, '2024-02-17 16:14:42', '2024-02-17 16:14:42', '', 'Kinesio Taping / Taping', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-02-17 16:14:42', '2024-02-17 16:14:42', '', 25, 'https://www.physioadviserindia.com/services/?p=26', 0, 'revision', '', 0),
(27, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:8:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"treatment-for\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"service-for\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Content Section', 'content-section', 'publish', 'closed', 'closed', '', 'group_65d0e2711d67a', '', '', '2024-02-18 09:00:40', '2024-02-18 09:00:40', '', 0, 'https://www.physioadviserindia.com/services/?post_type=acf-field-group&#038;p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Content Purpuse', 'content_purpose', 'publish', 'closed', 'closed', '', 'field_65d0e2a221355', '', '', '2024-02-17 17:01:36', '2024-02-17 17:01:36', '', 27, 'https://www.physioadviserindia.com/services/?post_type=acf-field&p=28', 0, 'acf-field', '', 0),
(29, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Question Answer', 'question', 'publish', 'closed', 'closed', '', 'field_65d0e2f621356', '', '', '2024-02-17 17:24:21', '2024-02-17 17:24:21', '', 27, 'https://www.physioadviserindia.com/services/?post_type=acf-field&#038;p=29', 1, 'acf-field', '', 0),
(30, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'questiont', 'publish', 'closed', 'closed', '', 'field_65d0e5dc21357', '', '', '2024-02-17 17:35:19', '2024-02-17 17:35:19', '', 29, 'https://www.physioadviserindia.com/services/?post_type=acf-field&#038;p=30', 0, 'acf-field', '', 0),
(31, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_65d0e60121358', '', '', '2024-02-17 17:01:36', '2024-02-17 17:01:36', '', 29, 'https://www.physioadviserindia.com/services/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Seo Purpuse', 'seo_purpuse', 'publish', 'closed', 'closed', '', 'field_65d0e63121359', '', '', '2024-02-17 17:01:36', '2024-02-17 17:01:36', '', 27, 'https://www.physioadviserindia.com/services/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 1, '2024-02-17 17:01:36', '2024-02-17 17:01:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Meta Tille', 'meta_tille', 'publish', 'closed', 'closed', '', 'field_65d0e65a2135a', '', '', '2024-02-17 17:01:36', '2024-02-17 17:01:36', '', 27, 'https://www.physioadviserindia.com/services/?post_type=acf-field&p=33', 3, 'acf-field', '', 0),
(34, 1, '2024-02-17 17:04:21', '2024-02-17 17:04:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Meta keywords', 'meta_keywords', 'publish', 'closed', 'closed', '', 'field_65d0e6eac97ce', '', '', '2024-02-17 17:04:21', '2024-02-17 17:04:21', '', 27, 'https://www.physioadviserindia.com/services/?post_type=acf-field&p=34', 4, 'acf-field', '', 0),
(35, 1, '2024-02-17 17:04:21', '2024-02-17 17:04:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Meta description', 'meta_description', 'publish', 'closed', 'closed', '', 'field_65d0e6f5c97cf', '', '', '2024-02-17 17:04:21', '2024-02-17 17:04:21', '', 27, 'https://www.physioadviserindia.com/services/?post_type=acf-field&p=35', 5, 'acf-field', '', 0),
(36, 1, '2024-02-17 17:17:23', '2024-02-17 17:17:23', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-02-17 17:17:23', '2024-02-17 17:17:23', '', 25, 'https://www.physioadviserindia.com/services/?p=36', 0, 'revision', '', 0),
(37, 1, '2024-02-17 17:18:16', '2024-02-17 17:18:16', '>This therapy involves the application of Ultrasound waves above the ra', 'Dry Needling Therapy', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-02-17 17:18:16', '2024-02-17 17:18:16', '', 23, 'https://www.physioadviserindia.com/services/?p=37', 0, 'revision', '', 0),
(38, 1, '2024-02-17 17:18:23', '2024-02-17 17:18:23', '>This therapy involves the application of Ultrasound waves above the ra', 'Thermotherapy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2024-02-17 17:18:23', '2024-02-17 17:18:23', '', 21, 'https://www.physioadviserindia.com/services/?p=38', 0, 'revision', '', 0),
(39, 1, '2024-02-17 17:18:30', '2024-02-17 17:18:30', '>This therapy involves the application of Ultrasound waves above the ra', 'Transcutaneous Electrical', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-02-17 17:18:30', '2024-02-17 17:18:30', '', 19, 'https://www.physioadviserindia.com/services/?p=39', 0, 'revision', '', 0),
(40, 1, '2024-02-17 17:18:38', '2024-02-17 17:18:38', '>This therapy involves the application of Ultrasound waves above the ra', 'Laser Therapy', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-02-17 17:18:38', '2024-02-17 17:18:38', '', 17, 'https://www.physioadviserindia.com/services/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-02-17 17:18:46', '2024-02-17 17:18:46', '>This therapy involves the application of Ultrasound waves above the ra', 'Ultrasound Therapy', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-02-17 17:18:46', '2024-02-17 17:18:46', '', 15, 'https://www.physioadviserindia.com/services/?p=41', 0, 'revision', '', 0),
(42, 1, '2024-02-17 17:19:01', '2024-02-17 17:19:01', 'This therapy involves the application of Ultrasound waves above the ra', 'Ultrasound Therapy', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-02-17 17:19:01', '2024-02-17 17:19:01', '', 15, 'https://www.physioadviserindia.com/services/?p=42', 0, 'revision', '', 0),
(43, 1, '2024-02-17 17:19:07', '2024-02-17 17:19:07', 'This therapy involves the application of Ultrasound waves above the ra', 'Dry Needling Therapy', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-02-17 17:19:07', '2024-02-17 17:19:07', '', 23, 'https://www.physioadviserindia.com/services/?p=43', 0, 'revision', '', 0),
(44, 1, '2024-02-17 17:19:13', '2024-02-17 17:19:13', 'This therapy involves the application of Ultrasound waves above the ra', 'Thermotherapy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2024-02-17 17:19:13', '2024-02-17 17:19:13', '', 21, 'https://www.physioadviserindia.com/services/?p=44', 0, 'revision', '', 0),
(45, 1, '2024-02-17 17:19:21', '2024-02-17 17:19:21', 'This therapy involves the application of Ultrasound waves above the ra', 'Transcutaneous Electrical', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-02-17 17:19:21', '2024-02-17 17:19:21', '', 19, 'https://www.physioadviserindia.com/services/?p=45', 0, 'revision', '', 0),
(46, 1, '2024-02-17 17:19:30', '2024-02-17 17:19:30', 'This therapy involves the application of Ultrasound waves above the ra', 'Laser Therapy', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-02-17 17:19:30', '2024-02-17 17:19:30', '', 17, 'https://www.physioadviserindia.com/services/?p=46', 0, 'revision', '', 0),
(47, 1, '2024-02-17 17:19:44', '2024-02-17 17:19:44', 'This therapy involves the application of Ultrasound waves above the ra...', 'Chiropractic Therapy', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-02-17 17:19:44', '2024-02-17 17:19:44', '', 13, 'https://www.physioadviserindia.com/services/?p=47', 0, 'revision', '', 0),
(48, 1, '2024-02-17 17:19:59', '2024-02-17 17:19:59', 'This therapy involves the application of Ultrasound waves above the ra...', 'Interferential Therapy', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2024-02-17 17:19:59', '2024-02-17 17:19:59', '', 10, 'https://www.physioadviserindia.com/services/?p=48', 0, 'revision', '', 0),
(49, 1, '2024-02-17 17:24:30', '2024-02-17 17:24:30', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-02-17 17:24:30', '2024-02-17 17:24:30', '', 25, 'https://www.physioadviserindia.com/services/?p=49', 0, 'revision', '', 0),
(50, 1, '2024-02-17 17:26:36', '2024-02-17 17:26:36', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-02-17 17:26:36', '2024-02-17 17:26:36', '', 25, 'https://www.physioadviserindia.com/services/?p=50', 0, 'revision', '', 0),
(51, 1, '2024-02-17 17:27:14', '2024-02-17 17:27:14', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-02-17 17:27:14', '2024-02-17 17:27:14', '', 25, 'https://www.physioadviserindia.com/services/?p=51', 0, 'revision', '', 0),
(52, 1, '2024-02-17 17:36:03', '2024-02-17 17:36:03', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-02-17 17:36:03', '2024-02-17 17:36:03', '', 25, 'https://www.physioadviserindia.com/services/?p=52', 0, 'revision', '', 0),
(53, 1, '2024-02-18 04:05:50', '2024-02-18 04:05:50', 'We are the Best Physiotherapy, Chiropractic and Osteopathy Service Provider in Delhi-NCR. PhysioAdviserIndia introduced the concept of \'Advance Physiotherapy and Rehabilitation\'.', 'Orthopedic Physiotherapy', '', 'trash', 'open', 'open', '', 'orthopedic-physiotherapy__trashed', '', '', '2024-02-18 09:11:13', '2024-02-18 09:11:13', '', 0, 'https://www.physioadviserindia.com/services/?p=53', 0, 'post', '', 0),
(54, 1, '2024-02-18 04:05:50', '2024-02-18 04:05:50', 'We are the Best Physiotherapy, Chiropractic and Osteopathy Service Provider in Delhi-NCR. PhysioAdviserIndia introduced the concept of \'Advance Physiotherapy and Rehabilitation\'.', 'Orthopedic Physiotherapy', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-02-18 04:05:50', '2024-02-18 04:05:50', '', 53, 'https://www.physioadviserindia.com/services/?p=54', 0, 'revision', '', 0),
(55, 1, '2024-02-18 06:51:33', '2024-02-18 06:51:33', 'mechanical back pain is comman problum 90% of papilation hjfhkhkuh,  jgiutukhhkh', 'back pain', '', 'trash', 'open', 'open', '', 'back-pain__trashed', '', '', '2024-02-18 09:11:11', '2024-02-18 09:11:11', '', 0, 'https://www.physioadviserindia.com/services/?p=55', 0, 'post', '', 0),
(56, 1, '2024-02-18 06:48:12', '2024-02-18 06:48:12', 'mechanical back pain is comman problum 90% of papilation hjfhkhkuh,  jgiutukhhkh', 'back pain', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2024-02-18 06:48:12', '2024-02-18 06:48:12', '', 55, 'https://www.physioadviserindia.com/services/?p=56', 0, 'revision', '', 0),
(57, 1, '2024-02-18 06:50:41', '2024-02-18 06:50:41', '', '101', '', 'inherit', 'open', 'closed', '', '101', '', '', '2024-02-18 06:50:41', '2024-02-18 06:50:41', '', 55, 'https://www.physioadviserindia.com/services/wp-content/uploads/2024/02/101.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2024-02-18 06:51:33', '2024-02-18 06:51:33', 'mechanical back pain is comman problum 90% of papilation hjfhkhkuh,  jgiutukhhkh', 'back pain', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2024-02-18 06:51:33', '2024-02-18 06:51:33', '', 55, 'https://www.physioadviserindia.com/services/?p=58', 0, 'revision', '', 0),
(59, 1, '2024-02-18 07:04:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-02-18 07:04:29', '0000-00-00 00:00:00', '', 0, 'https://www.physioadviserindia.com/services/?page_id=59', 0, 'page', '', 0),
(60, 1, '2024-02-18 07:24:08', '2024-02-18 07:24:08', '', 'Treatment For', '', 'publish', 'closed', 'closed', '', 'treatment-for', '', '', '2024-02-18 08:53:01', '2024-02-18 08:53:01', '', 0, 'https://www.physioadviserindia.com/services/?page_id=60', 0, 'page', '', 0),
(61, 1, '2024-02-18 07:24:08', '2024-02-18 07:24:08', '', 'Treatment For', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2024-02-18 07:24:08', '2024-02-18 07:24:08', '', 60, 'https://www.physioadviserindia.com/services/?p=61', 0, 'revision', '', 0),
(62, 1, '2024-02-18 07:27:22', '2024-02-18 07:27:22', 'a:35:{s:9:\"post_type\";s:13:\"treatment-for\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:13:\"Treatment For\";s:13:\"singular_name\";s:13:\"Treatment For\";s:9:\"menu_name\";s:13:\"Treatment For\";s:9:\"all_items\";s:17:\"All Treatment For\";s:9:\"edit_item\";s:18:\"Edit Treatment For\";s:9:\"view_item\";s:18:\"View Treatment For\";s:10:\"view_items\";s:18:\"View Treatment For\";s:12:\"add_new_item\";s:21:\"Add New Treatment For\";s:7:\"add_new\";s:21:\"Add New Treatment For\";s:8:\"new_item\";s:17:\"New Treatment For\";s:17:\"parent_item_colon\";s:21:\"Parent Treatment For:\";s:12:\"search_items\";s:20:\"Search Treatment For\";s:9:\"not_found\";s:22:\"No treatment for found\";s:18:\"not_found_in_trash\";s:31:\"No treatment for found in Trash\";s:8:\"archives\";s:22:\"Treatment For Archives\";s:10:\"attributes\";s:24:\"Treatment For Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:25:\"Insert into treatment for\";s:21:\"uploaded_to_this_item\";s:30:\"Uploaded to this treatment for\";s:17:\"filter_items_list\";s:25:\"Filter treatment for list\";s:14:\"filter_by_date\";s:28:\"Filter treatment for by date\";s:21:\"items_list_navigation\";s:29:\"Treatment For list navigation\";s:10:\"items_list\";s:18:\"Treatment For list\";s:14:\"item_published\";s:24:\"Treatment For published.\";s:24:\"item_published_privately\";s:34:\"Treatment For published privately.\";s:22:\"item_reverted_to_draft\";s:32:\"Treatment For reverted to draft.\";s:14:\"item_scheduled\";s:24:\"Treatment For scheduled.\";s:12:\"item_updated\";s:22:\"Treatment For updated.\";s:9:\"item_link\";s:18:\"Treatment For Link\";s:21:\"item_link_description\";s:26:\"A link to a treatment for.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Treatment For', 'treatment-for', 'publish', 'closed', 'closed', '', 'post_type_65d1b140b31fa', '', '', '2024-02-18 07:27:22', '2024-02-18 07:27:22', '', 0, 'https://www.physioadviserindia.com/services/?post_type=acf-post-type&#038;p=62', 0, 'acf-post-type', '', 0),
(63, 1, '2024-02-18 07:28:00', '2024-02-18 07:28:00', '', 'a1', '', 'trash', 'closed', 'closed', '', 'a1__trashed', '', '', '2024-02-18 08:55:07', '2024-02-18 08:55:07', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=63', 0, 'treatment-for', '', 0),
(64, 1, '2024-02-18 07:28:09', '2024-02-18 07:28:09', '', 'b1', '', 'trash', 'closed', 'closed', '', 'b1__trashed', '', '', '2024-02-18 08:55:05', '2024-02-18 08:55:05', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=64', 0, 'treatment-for', '', 0),
(65, 1, '2024-02-18 07:29:12', '2024-02-18 07:29:12', 'a:35:{s:9:\"post_type\";s:11:\"service-for\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:11:\"Service For\";s:13:\"singular_name\";s:11:\"Service For\";s:9:\"menu_name\";s:11:\"Service For\";s:9:\"all_items\";s:15:\"All Service For\";s:9:\"edit_item\";s:16:\"Edit Service For\";s:9:\"view_item\";s:16:\"View Service For\";s:10:\"view_items\";s:16:\"View Service For\";s:12:\"add_new_item\";s:19:\"Add New Service For\";s:7:\"add_new\";s:19:\"Add New Service For\";s:8:\"new_item\";s:15:\"New Service For\";s:17:\"parent_item_colon\";s:19:\"Parent Service For:\";s:12:\"search_items\";s:18:\"Search Service For\";s:9:\"not_found\";s:20:\"No service for found\";s:18:\"not_found_in_trash\";s:29:\"No service for found in Trash\";s:8:\"archives\";s:20:\"Service For Archives\";s:10:\"attributes\";s:22:\"Service For Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:23:\"Insert into service for\";s:21:\"uploaded_to_this_item\";s:28:\"Uploaded to this service for\";s:17:\"filter_items_list\";s:23:\"Filter service for list\";s:14:\"filter_by_date\";s:26:\"Filter service for by date\";s:21:\"items_list_navigation\";s:27:\"Service For list navigation\";s:10:\"items_list\";s:16:\"Service For list\";s:14:\"item_published\";s:22:\"Service For published.\";s:24:\"item_published_privately\";s:32:\"Service For published privately.\";s:22:\"item_reverted_to_draft\";s:30:\"Service For reverted to draft.\";s:14:\"item_scheduled\";s:22:\"Service For scheduled.\";s:12:\"item_updated\";s:20:\"Service For updated.\";s:9:\"item_link\";s:16:\"Service For Link\";s:21:\"item_link_description\";s:24:\"A link to a service for.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Service For', 'service-for', 'publish', 'closed', 'closed', '', 'post_type_65d1b1b400c53', '', '', '2024-02-18 07:29:12', '2024-02-18 07:29:12', '', 0, 'https://www.physioadviserindia.com/services/?post_type=acf-post-type&#038;p=65', 0, 'acf-post-type', '', 0),
(66, 1, '2024-02-18 07:29:39', '2024-02-18 07:29:39', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2024-02-18 09:14:19', '2024-02-18 09:14:19', '', 0, 'https://www.physioadviserindia.com/services/?page_id=66', 0, 'page', '', 0),
(67, 1, '2024-02-18 07:29:39', '2024-02-18 07:29:39', '', 'Service', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2024-02-18 07:29:39', '2024-02-18 07:29:39', '', 66, 'https://www.physioadviserindia.com/services/?p=67', 0, 'revision', '', 0),
(68, 1, '2024-02-18 07:29:58', '2024-02-18 07:29:58', '', 'Services', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2024-02-18 07:29:58', '2024-02-18 07:29:58', '', 66, 'https://www.physioadviserindia.com/services/?p=68', 0, 'revision', '', 0),
(69, 1, '2024-02-18 08:55:28', '2024-02-18 08:55:28', 'mechanical back pain is comman problum 90% of papilation hjfhkhkuh,  jgiutukhhkh', 'Back pain', '', 'publish', 'closed', 'closed', '', 'back-pain', '', '', '2024-02-18 09:01:58', '2024-02-18 09:01:58', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=69', 0, 'treatment-for', '', 0),
(70, 1, '2024-02-18 09:04:16', '2024-02-18 09:04:16', 'We are the Best Physiotherapy, Chiropractic and Osteopathy Service Provider in Delhi-NCR. PhysioAdviserIndia introduced the concept of \'Advance Physiotherapy and Rehabilitation\'.', 'Orthopedic Physiotherapy', '', 'publish', 'closed', 'closed', '', 'orthopedic-physiotherapy', '', '', '2024-02-18 09:04:16', '2024-02-18 09:04:16', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=70', 0, 'treatment-for', '', 0),
(71, 1, '2024-02-18 09:05:54', '2024-02-18 09:05:54', 'This therapy involves the application of Ultrasound waves above the ra', 'Laser Therapy', '', 'publish', 'closed', 'closed', '', 'laser-therapy', '', '', '2024-02-18 09:05:54', '2024-02-18 09:05:54', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=71', 0, 'treatment-for', '', 0),
(72, 1, '2024-02-18 09:06:24', '2024-02-18 09:06:24', 'This therapy involves the application of Ultrasound waves above the ra', 'Ultrasound Therapy', '', 'publish', 'closed', 'closed', '', 'ultrasound-therapy', '', '', '2024-02-18 09:06:24', '2024-02-18 09:06:24', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=72', 0, 'treatment-for', '', 0),
(73, 1, '2024-02-18 09:06:58', '2024-02-18 09:06:58', 'This therapy involves the application of Ultrasound waves above the ra', 'Ultrasound Therapy', '', 'publish', 'closed', 'closed', '', 'ultrasound-therapy-2', '', '', '2024-02-18 09:06:58', '2024-02-18 09:06:58', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=73', 0, 'treatment-for', '', 0),
(74, 1, '2024-02-18 09:07:34', '2024-02-18 09:07:34', 'This therapy involves the application of Ultrasound waves above the ra...', 'Interferential Therapy', '', 'publish', 'closed', 'closed', '', 'interferential-therapy', '', '', '2024-02-18 09:07:34', '2024-02-18 09:07:34', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=74', 0, 'treatment-for', '', 0),
(75, 1, '2024-02-18 09:08:33', '2024-02-18 09:08:33', 'This therapy involves the application of Ultrasound waves above the ra', 'Transcutaneous Electrical', '', 'publish', 'closed', 'closed', '', 'transcutaneous-electrical', '', '', '2024-02-18 09:08:33', '2024-02-18 09:08:33', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=75', 0, 'service-for', '', 0),
(76, 1, '2024-02-18 09:09:03', '2024-02-18 09:09:03', 'This therapy involves the application of Ultrasound waves above the ra', 'Thermotherapy', '', 'publish', 'closed', 'closed', '', 'thermotherapy', '', '', '2024-02-18 09:09:03', '2024-02-18 09:09:03', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=76', 0, 'service-for', '', 0),
(77, 1, '2024-02-18 09:09:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-02-18 09:09:04', '0000-00-00 00:00:00', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&p=77', 0, 'service-for', '', 0),
(78, 1, '2024-02-18 09:09:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-02-18 09:09:05', '0000-00-00 00:00:00', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&p=78', 0, 'service-for', '', 0),
(79, 1, '2024-02-18 09:09:23', '2024-02-18 09:09:23', 'This therapy involves the application of Ultrasound waves above the ra', 'Dry Needling Therapy', '', 'publish', 'closed', 'closed', '', 'dry-needling-therapy', '', '', '2024-02-18 09:09:35', '2024-02-18 09:09:35', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=79', 0, 'service-for', '', 0),
(80, 1, '2024-02-18 09:11:06', '2024-02-18 09:11:06', 'This therapy involves the application of Ultrasound waves above the ra', 'Kinesio Taping / Taping', '', 'publish', 'closed', 'closed', '', 'kinesio-taping-taping', '', '', '2024-02-18 09:11:06', '2024-02-18 09:11:06', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=80', 0, 'service-for', '', 0),
(81, 1, '2024-02-19 06:56:11', '2024-02-19 06:56:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make', 'New service for', '', 'publish', 'closed', 'closed', '', 'new-service-for', '', '', '2024-02-19 06:58:24', '2024-02-19 06:58:24', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=81', 0, 'service-for', '', 0);
INSERT INTO `phy_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(82, 1, '2024-02-19 06:55:53', '2024-02-19 06:55:53', '', 'Brown Minimalist Get In Touch With Us Instagram Post', '', 'inherit', 'open', 'closed', '', 'brown-minimalist-get-in-touch-with-us-instagram-post', '', '', '2024-02-19 06:55:53', '2024-02-19 06:55:53', '', 81, 'https://www.physioadviserindia.com/services/wp-content/uploads/2024/02/Brown-Minimalist-Get-In-Touch-With-Us-Instagram-Post.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2024-02-19 07:01:38', '2024-02-19 07:01:38', 'this is Treatment For this is Treatment For this is Treatment Forv this is Treatment For this is Treatment For this is Treatment For this is Treatment Forv this is Treatment For', 'new Treatment For', '', 'publish', 'closed', 'closed', '', 'new-treatment-for', '', '', '2024-02-19 07:01:38', '2024-02-19 07:01:38', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=83', 0, 'treatment-for', '', 0),
(84, 1, '2024-02-19 11:56:36', '2024-02-19 11:56:36', 'esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1esting1', 'testing1', '', 'publish', 'closed', 'closed', '', 'testing1', '', '', '2024-02-19 11:56:36', '2024-02-19 11:56:36', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=84', 0, 'service-for', '', 0),
(85, 1, '2024-02-19 11:54:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-02-19 11:54:21', '0000-00-00 00:00:00', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&p=85', 0, 'service-for', '', 0),
(86, 1, '2024-02-20 05:57:38', '2024-02-20 05:57:38', 'Examples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes Examples of community-based <em>treatments</em> are opioid substitution pro- grammes, counselling programmes and after- care services. Residential <em>treatment</em> programmes', 'what is treatment', '', 'publish', 'closed', 'closed', '', 'what-is-treatment', '', '', '2024-02-20 05:57:38', '2024-02-20 05:57:38', '', 0, 'https://www.physioadviserindia.com/services/?post_type=treatment-for&#038;p=86', 0, 'treatment-for', '', 0),
(87, 1, '2024-02-20 06:00:35', '2024-02-20 06:00:35', 'rohit service', 'rohit service', '', 'publish', 'closed', 'closed', '', 'rohit-service', '', '', '2024-02-20 06:00:35', '2024-02-20 06:00:35', '', 0, 'https://www.physioadviserindia.com/services/?post_type=service-for&#038;p=87', 0, 'service-for', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phy_termmeta`
--

CREATE TABLE `phy_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phy_terms`
--

CREATE TABLE `phy_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_terms`
--

INSERT INTO `phy_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phy_term_relationships`
--

CREATE TABLE `phy_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_term_relationships`
--

INSERT INTO `phy_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 1, 0),
(13, 1, 0),
(15, 1, 0),
(17, 1, 0),
(19, 1, 0),
(21, 1, 0),
(23, 1, 0),
(25, 1, 0),
(53, 1, 0),
(55, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phy_term_taxonomy`
--

CREATE TABLE `phy_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_term_taxonomy`
--

INSERT INTO `phy_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phy_usermeta`
--

CREATE TABLE `phy_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_usermeta`
--

INSERT INTO `phy_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'phy_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'phy_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:12:{s:64:\"8aa66f0671c4a6b157451078c7c56125a8fdd75e405292e7b9019a0ff40b138a\";a:4:{s:10:\"expiration\";i:1708411229;s:2:\"ip\";s:15:\"122.162.149.213\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708238429;}s:64:\"87214b084d035668efb0c276a67b6400924ec38b44b08ed67b1897148883cd0e\";a:4:{s:10:\"expiration\";i:1708412543;s:2:\"ip\";s:15:\"122.162.149.213\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708239743;}s:64:\"3ff0d84381d3fb205ad91aa47335c7f69b54be0e3ce6ea5e3cc0fc00441c8f7b\";a:4:{s:10:\"expiration\";i:1708413233;s:2:\"ip\";s:13:\"157.40.73.230\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708240433;}s:64:\"f8edf39afb2de2ab9161d466f8c4595a87cc310c0bdde10464f45e1ae4b3c178\";a:4:{s:10:\"expiration\";i:1708508975;s:2:\"ip\";s:13:\"203.81.240.54\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708336175;}s:64:\"8f4416f7f7e86695ca8f485b6a29de2f6ba5a6514e8924d0bfa760b3ccd4a6f9\";a:4:{s:10:\"expiration\";i:1708508994;s:2:\"ip\";s:14:\"122.180.39.180\";s:2:\"ua\";s:123:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36/8mqTxTuL-47\";s:5:\"login\";i:1708336194;}s:64:\"b5cd13591dc18d99855efe7ff47c0b775ed3a2371249063eec9e51637638045d\";a:4:{s:10:\"expiration\";i:1708510610;s:2:\"ip\";s:13:\"103.157.5.238\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708337810;}s:64:\"8732708ce2ca66d2371a616893d3b9acc7d4b0fc8471510ed0bba2becfeaaa3c\";a:4:{s:10:\"expiration\";i:1708510632;s:2:\"ip\";s:13:\"103.157.5.238\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708337832;}s:64:\"4e09f381b8a957cc3b69c54abb3637273bef71eddcf26da0de5a76115c155436\";a:4:{s:10:\"expiration\";i:1708514852;s:2:\"ip\";s:13:\"103.157.5.238\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1708342052;}s:64:\"e2ec1fb02c521d0fc702dcf713a8c478244aee0ff64452094d3345c867a6f529\";a:4:{s:10:\"expiration\";i:1708515106;s:2:\"ip\";s:13:\"103.157.5.238\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1708342306;}s:64:\"4e1fe8322653ed717e4e0dbcd76ac05f5f358188ee55e4f3f374f40a5c465f48\";a:4:{s:10:\"expiration\";i:1708536664;s:2:\"ip\";s:11:\"49.37.38.14\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36\";s:5:\"login\";i:1708363864;}s:64:\"9f5424e43504a58787c5db2d8e5935dac81f03fe7c701e98575c553562c16c61\";a:4:{s:10:\"expiration\";i:1708581243;s:2:\"ip\";s:14:\"122.180.39.180\";s:2:\"ua\";s:123:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36/8mqErPuL-62\";s:5:\"login\";i:1708408443;}s:64:\"c09b4c4068f7a271978aec78e7ade743f59d8fbbcc0a13e981c6782061a853a2\";a:4:{s:10:\"expiration\";i:1708581588;s:2:\"ip\";s:13:\"103.157.5.238\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36\";s:5:\"login\";i:1708408788;}}'),
(17, 1, 'phy_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"103.157.5.0\";}'),
(19, 1, 'closedpostboxes_post', 'a:1:{i:0;s:9:\"formatdiv\";}'),
(20, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(21, 1, 'phy_user-settings', 'editor=tinymce&libraryContent=browse'),
(22, 1, 'phy_user-settings-time', '1708325767'),
(23, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(24, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(25, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `phy_users`
--

CREATE TABLE `phy_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phy_users`
--

INSERT INTO `phy_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BTyEvFLtWHoFo4zs4jEgGn/ArgvE/Q0', 'admin', 'aa@gg.mm', 'https://www.physioadviserindia.com/services', '2024-02-17 15:39:24', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phy_commentmeta`
--
ALTER TABLE `phy_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `phy_comments`
--
ALTER TABLE `phy_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `phy_links`
--
ALTER TABLE `phy_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `phy_options`
--
ALTER TABLE `phy_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `phy_postmeta`
--
ALTER TABLE `phy_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `phy_posts`
--
ALTER TABLE `phy_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `phy_termmeta`
--
ALTER TABLE `phy_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `phy_terms`
--
ALTER TABLE `phy_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `phy_term_relationships`
--
ALTER TABLE `phy_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `phy_term_taxonomy`
--
ALTER TABLE `phy_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `phy_usermeta`
--
ALTER TABLE `phy_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `phy_users`
--
ALTER TABLE `phy_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phy_commentmeta`
--
ALTER TABLE `phy_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_comments`
--
ALTER TABLE `phy_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phy_links`
--
ALTER TABLE `phy_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_options`
--
ALTER TABLE `phy_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `phy_postmeta`
--
ALTER TABLE `phy_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=728;

--
-- AUTO_INCREMENT for table `phy_posts`
--
ALTER TABLE `phy_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `phy_termmeta`
--
ALTER TABLE `phy_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_terms`
--
ALTER TABLE `phy_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phy_term_taxonomy`
--
ALTER TABLE `phy_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phy_usermeta`
--
ALTER TABLE `phy_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `phy_users`
--
ALTER TABLE `phy_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
