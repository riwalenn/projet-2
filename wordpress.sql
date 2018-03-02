-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 02 mars 2018 à 15:05
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-21 10:11:45', '2018-02-21 09:11:45', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Chalets &amp; Caviar', 'yes'),
(4, 'blogdescription', 'Agence immobilière dans le luxe à Courchevel', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'riwalenn@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:31:\"easy-fancybox/easy-fancybox.php\";i:1;s:39:\"siteorigin-panels/siteorigin-panels.php\";i:2;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'enigma', 'yes'),
(41, 'stylesheet', 'enigma-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:36:\"Vente et location de chalets de luxe\";s:4:\"text\";s:198:\"Chalets et caviar vous propose des chalets de luxe dans la prestigieuse station de renommée internationale située dans les Trois Vallées, le plus grand domaine skiable du monde (600km de pistes).\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:107:\"<a href=\"http://localhost/wordpress/wp-admin\">Administration du site</a>\r\n<a href=\"#\">Mentions légales</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '37', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:3:{i:0;s:8:\"search-2\";i:1;s:6:\"text-2\";i:2;s:6:\"text-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1520025105;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1520068324;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1520082931;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519205496;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(224, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519996304;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(234, '_site_transient_timeout_theme_roots', '1520003924', 'no'),
(235, '_site_transient_theme_roots', 'a:3:{s:12:\"enigma-child\";s:7:\"/themes\";s:6:\"enigma\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";}', 'no'),
(165, 'enigma_options', 'a:61:{s:10:\"snoweffect\";b:0;s:14:\"title_position\";b:0;s:18:\"animate_type_title\";s:8:\"bounceIn\";s:13:\"slide_image_1\";s:78:\"http://localhost/wordpress/wp-content/uploads/2018/02/montagne_courchevel2.jpg\";s:13:\"slide_title_1\";s:17:\"CHALETS ET CAVIAR\";s:16:\"slide_btn_text_1\";s:14:\"Contactez-nous\";s:13:\"slide_image_2\";s:65:\"http://localhost/wordpress/wp-content/uploads/2018/02/jacuzi2.jpg\";s:13:\"slide_title_2\";s:36:\"Des chalets de luxe toute l\'année !\";s:16:\"slide_btn_text_2\";s:17:\"En savoir plus...\";s:13:\"slide_image_3\";s:66:\"http://localhost/wordpress/wp-content/uploads/2018/02/piscine3.jpg\";s:13:\"slide_title_3\";s:39:\"Des chalets à l\'achat ou à la vente !\";s:16:\"slide_btn_text_3\";s:17:\"En savoir plus...\";s:20:\"home_service_heading\";s:12:\"Nos Services\";s:15:\"service_1_icons\";s:7:\"fa-home\";s:15:\"service_2_icons\";s:8:\"fa-phone\";s:15:\"service_1_title\";s:19:\"Des chalets de luxe\";s:15:\"service_2_title\";s:19:\"Equipe à l\'écoute\";s:15:\"service_3_title\";s:13:\"Pistes à 20m\";s:15:\"service_3_icons\";s:14:\"fa-snowflake-o\";s:10:\"port_3_img\";s:0:\"\";s:10:\"port_4_img\";s:0:\"\";s:12:\"port_heading\";s:0:\"\";s:10:\"port_1_img\";s:63:\"http://localhost/wordpress/wp-content/uploads/2018/02/achat.jpg\";s:12:\"port_1_title\";s:5:\"Achat\";s:10:\"port_2_img\";s:66:\"http://localhost/wordpress/wp-content/uploads/2018/02/location.jpg\";s:12:\"port_2_title\";s:8:\"Location\";s:12:\"port_3_title\";s:0:\"\";s:12:\"port_4_title\";s:0:\"\";s:9:\"blog_home\";b:0;s:34:\"footer_section_social_media_enbled\";b:0;s:8:\"email_id\";s:28:\"contact@chalets-et-caviar.fr\";s:8:\"phone_no\";s:13:\"04 597 535 86\";s:13:\"linkedin_link\";s:0:\"\";s:5:\"gplus\";s:0:\"\";s:7:\"vk_link\";s:0:\"\";s:7:\"qq_link\";s:0:\"\";s:13:\"whatsapp_link\";s:0:\"\";s:7:\"fc_home\";s:0:\"\";s:8:\"fc_title\";s:0:\"\";s:7:\"fc_icon\";s:0:\"\";s:10:\"fc_btn_txt\";s:0:\"\";s:11:\"fc_btn_link\";s:0:\"\";s:21:\"footer_customizations\";s:25:\"Projet pour OpenClassroom\";s:17:\"developed_by_text\";s:0:\"\";s:26:\"developed_by_weblizar_text\";s:0:\"\";s:17:\"developed_by_link\";s:0:\"\";s:11:\"logo_height\";s:0:\"\";s:10:\"logo_width\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:7:\"fb_link\";s:36:\"https://www.facebook.com/courchevel/\";s:12:\"twitter_link\";s:38:\"https://twitter.com/courchevel?lang=fr\";s:12:\"youtube_link\";s:47:\"https://www.youtube.com/user/CourchevelOfficiel\";s:14:\"service_1_link\";s:26:\"/wordpress/category/achat/\";s:14:\"service_2_link\";s:18:\"/wordpress/contact\";s:14:\"service_3_link\";s:18:\"/wordpress/contact\";s:13:\"services_home\";b:1;s:11:\"port_1_link\";s:26:\"/wordpress/category/achat/\";s:11:\"port_2_link\";s:29:\"/wordpress/category/location/\";s:16:\"slide_btn_link_1\";s:19:\"/wordpress/contact/\";s:16:\"slide_btn_link_2\";s:29:\"/wordpress/category/location/\";s:16:\"slide_btn_link_3\";s:26:\"/wordpress/category/achat/\";}', 'yes'),
(187, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(188, 'siteorigin_panels_initial_version', '2.6.2', 'no'),
(189, 'siteorigin_panels_active_version', '2.6.2', 'yes'),
(190, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_siteorigin-panels-builder', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(226, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1520002125;s:7:\"checked\";a:3:{s:12:\"enigma-child\";s:5:\"2.8.3\";s:6:\"enigma\";s:5:\"4.1.2\";s:13:\"twentyfifteen\";s:3:\"1.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(197, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(198, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(199, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(200, 'wpgmza_db_version', '6.4.09', 'yes'),
(201, 'wpgmaps_current_version', '6.4.09', 'yes'),
(202, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(203, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(205, 'WPGMZA_FIRST_TIME', '6.4.09', 'yes'),
(206, 'wpgmza_stats', 'a:2:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2018-03-01 14:53:28\";s:14:\"first_accessed\";s:19:\"2018-03-01 14:52:19\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2018-03-01 14:56:23\";s:14:\"first_accessed\";s:19:\"2018-03-01 14:54:46\";}}', 'yes'),
(207, 'wpgmza_google_maps_api_key', 'AIzaSyDsX6TGAqFPy2lnKitKLO3fg6WzKWbNho8', 'yes'),
(208, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:9:\"45.414659\";s:24:\"map_default_starting_lng\";s:17:\"6.634689999999978\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:13;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(209, '_site_transient_timeout_browser_49da57eac7f840522fef2b86e883cffa', '1520521032', 'no'),
(210, '_site_transient_browser_49da57eac7f840522fef2b86e883cffa', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.186\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(145, 'current_theme', 'enigma-child', 'yes'),
(146, 'theme_mods_enigma', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519209734;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(150, 'theme_mods_enigma_child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519209168;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-widget-area\";a:0:{}}}}', 'yes'),
(157, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1519209683;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(163, 'theme_mods_enigma-child', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"slide_desc_1\";s:69:\"<p>Agence immobilière spécialisée dans le luxe à Courchevel !</p>\";s:12:\"slide_desc_2\";s:51:\"<p>Louez votre chalet quand vous le souhaitez !</p>\";s:12:\"slide_desc_3\";s:60:\"<p>De somptueux chalets sont à disponibles à l\'achat !</p>\";s:14:\"service_1_text\";s:0:\"\";s:14:\"service_2_text\";s:0:\"\";s:14:\"service_3_text\";s:0:\"\";s:16:\"background_color\";s:6:\"ffffff\";s:12:\"header_image\";s:13:\"remove-header\";s:11:\"custom_logo\";i:72;}', 'yes'),
(238, 'category_children', 'a:0:{}', 'yes'),
(178, '_transient_timeout_plugin_slugs', '1520002217', 'no'),
(179, '_transient_plugin_slugs', 'a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:31:\"easy-fancybox/easy-fancybox.php\";i:2;s:9:\"hello.php\";i:3;s:39:\"siteorigin-panels/siteorigin-panels.php\";}', 'no'),
(180, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(225, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1519996307;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:31:\"easy-fancybox/easy-fancybox.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:3:\"1.6\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:5:\"2.6.2\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"6.4.09\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"easy-fancybox/easy-fancybox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/easy-fancybox\";s:4:\"slug\";s:13:\"easy-fancybox\";s:6:\"plugin\";s:31:\"easy-fancybox/easy-fancybox.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/easy-fancybox/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/easy-fancybox.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";s:7:\"default\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";s:7:\"default\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"siteorigin-panels/siteorigin-panels.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/siteorigin-panels\";s:4:\"slug\";s:17:\"siteorigin-panels\";s:6:\"plugin\";s:39:\"siteorigin-panels/siteorigin-panels.php\";s:11:\"new_version\";s:5:\"2.6.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/siteorigin-panels/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/siteorigin-panels.2.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755\";s:2:\"2x\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";s:7:\"default\";s:70:\"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";s:7:\"default\";s:72:\"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"6.4.09\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:7:\"default\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";s:7:\"default\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_wp_trash_meta_status', 'publish'),
(3, 4, '_wp_trash_meta_time', '1519209773'),
(4, 5, '_wp_trash_meta_status', 'publish'),
(5, 5, '_wp_trash_meta_time', '1519209789'),
(6, 6, '_wp_trash_meta_status', 'publish'),
(7, 6, '_wp_trash_meta_time', '1519209796'),
(8, 7, '_edit_lock', '1519209836:1'),
(9, 7, '_wp_trash_meta_status', 'publish'),
(10, 7, '_wp_trash_meta_time', '1519209838'),
(11, 8, '_wp_trash_meta_status', 'publish'),
(12, 8, '_wp_trash_meta_time', '1519209882'),
(13, 9, '_wp_attached_file', '2018/02/montagne_courchevel2.jpg'),
(14, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:627;s:4:\"file\";s:32:\"2018/02/montagne_courchevel2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"montagne_courchevel2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"montagne_courchevel2-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"montagne_courchevel2-768x401.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"montagne_courchevel2-1024x535.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:535;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:32:\"montagne_courchevel2-340x210.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:32:\"montagne_courchevel2-730x350.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:32:\"montagne_courchevel2-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 10, '_edit_lock', '1519210525:1'),
(16, 11, '_wp_attached_file', '2018/02/jacuzi2.jpg'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2018/02/jacuzi2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"jacuzi2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"jacuzi2-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"jacuzi2-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"jacuzi2-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:19:\"jacuzi2-340x210.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:19:\"jacuzi2-730x350.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:19:\"jacuzi2-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 12, '_wp_attached_file', '2018/02/piscine3.jpg'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:20:\"2018/02/piscine3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"piscine3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"piscine3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"piscine3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"piscine3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:20:\"piscine3-340x210.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:20:\"piscine3-730x350.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:20:\"piscine3-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 10, '_wp_trash_meta_status', 'publish'),
(21, 10, '_wp_trash_meta_time', '1519210541'),
(22, 13, '_edit_lock', '1519210685:1'),
(23, 13, '_wp_trash_meta_status', 'publish'),
(24, 13, '_wp_trash_meta_time', '1519210688'),
(25, 14, '_edit_lock', '1519211509:1'),
(26, 14, '_wp_trash_meta_status', 'publish'),
(27, 14, '_wp_trash_meta_time', '1519211522'),
(28, 15, '_edit_lock', '1519211671:1'),
(29, 15, '_wp_trash_meta_status', 'publish'),
(30, 15, '_wp_trash_meta_time', '1519211689'),
(31, 16, '_wp_attached_file', '2018/02/achat.jpg'),
(32, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2375;s:6:\"height\";i:1458;s:4:\"file\";s:17:\"2018/02/achat.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"achat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"achat-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"achat-768x471.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"achat-1024x629.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:629;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:17:\"achat-340x210.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:17:\"achat-730x350.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:17:\"achat-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(33, 17, '_edit_lock', '1519211810:1'),
(34, 18, '_wp_attached_file', '2018/02/location.jpg'),
(35, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2375;s:6:\"height\";i:1458;s:4:\"file\";s:20:\"2018/02/location.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"location-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"location-300x184.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"location-768x471.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"location-1024x629.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:629;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:20:\"location-340x210.jpg\";s:5:\"width\";i:340;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"wl_page_thumb\";a:4:{s:4:\"file\";s:20:\"location-730x350.jpg\";s:5:\"width\";i:730;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"blog_2c_thumb\";a:4:{s:4:\"file\";s:20:\"location-570x350.jpg\";s:5:\"width\";i:570;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(36, 17, '_wp_trash_meta_status', 'publish'),
(37, 17, '_wp_trash_meta_time', '1519211837'),
(38, 19, '_edit_lock', '1519211930:1'),
(39, 19, '_wp_trash_meta_status', 'publish'),
(40, 19, '_wp_trash_meta_time', '1519211939'),
(41, 20, '_edit_lock', '1519212050:1'),
(42, 20, '_wp_trash_meta_status', 'publish'),
(43, 20, '_wp_trash_meta_time', '1519212051'),
(219, 73, '_edit_lock', '1519234557:1'),
(220, 73, '_wp_trash_meta_status', 'publish'),
(221, 73, '_wp_trash_meta_time', '1519234559'),
(222, 74, '_wp_trash_meta_status', 'publish'),
(223, 74, '_wp_trash_meta_time', '1519917262'),
(224, 75, '_wp_trash_meta_status', 'publish'),
(225, 75, '_wp_trash_meta_time', '1519996387'),
(216, 72, '_wp_attached_file', '2018/02/cropped-logo_b.png'),
(217, 72, '_wp_attachment_context', 'custom-logo'),
(218, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:152;s:6:\"height\";i:75;s:4:\"file\";s:26:\"2018/02/cropped-logo_b.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-logo_b-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 49, '_wp_trash_meta_status', 'publish'),
(157, 49, '_wp_trash_meta_time', '1519231822'),
(58, 25, '_edit_lock', '1519226823:1'),
(197, 63, '_wp_trash_meta_status', 'publish'),
(198, 63, '_wp_trash_meta_time', '1519234120'),
(199, 64, '_wp_trash_meta_status', 'publish'),
(200, 64, '_wp_trash_meta_time', '1519234193'),
(204, 66, '_wp_trash_meta_status', 'publish'),
(205, 66, '_wp_trash_meta_time', '1519234272'),
(206, 67, '_wp_trash_meta_status', 'publish'),
(207, 67, '_wp_trash_meta_time', '1519234307'),
(208, 68, '_wp_trash_meta_status', 'publish'),
(209, 68, '_wp_trash_meta_time', '1519234377'),
(210, 69, '_wp_trash_meta_status', 'publish'),
(211, 69, '_wp_trash_meta_time', '1519234381'),
(212, 70, '_wp_trash_meta_status', 'publish'),
(213, 70, '_wp_trash_meta_time', '1519234384'),
(227, 76, '_wp_trash_meta_status', 'publish'),
(228, 76, '_wp_trash_meta_time', '1519996471'),
(291, 95, '_wp_trash_meta_status', 'publish'),
(290, 94, '_wp_trash_meta_time', '1520002883'),
(289, 94, '_wp_trash_meta_status', 'publish'),
(283, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(282, 92, '_menu_item_target', ''),
(281, 92, '_menu_item_object', 'category'),
(235, 81, '_edit_last', '1'),
(236, 81, '_wp_page_template', 'default'),
(237, 81, '_edit_lock', '1520002422:1'),
(238, 83, '_wp_trash_meta_status', 'publish'),
(239, 83, '_wp_trash_meta_time', '1520001050'),
(240, 84, '_wp_trash_meta_status', 'publish'),
(241, 84, '_wp_trash_meta_time', '1520002162'),
(242, 85, '_edit_lock', '1520002215:1'),
(243, 85, '_wp_trash_meta_status', 'publish'),
(244, 85, '_wp_trash_meta_time', '1520002230'),
(245, 86, '_wp_trash_meta_status', 'publish'),
(246, 86, '_wp_trash_meta_time', '1520002263'),
(247, 87, '_edit_lock', '1520002275:1'),
(248, 87, '_wp_trash_meta_status', 'publish'),
(249, 87, '_wp_trash_meta_time', '1520002278'),
(250, 88, '_wp_trash_meta_status', 'publish'),
(251, 88, '_wp_trash_meta_time', '1520002292'),
(252, 89, '_wp_trash_meta_status', 'publish'),
(253, 89, '_wp_trash_meta_time', '1520002321'),
(165, 54, '_edit_lock', '1519232784:1'),
(81, 25, '_wp_trash_meta_status', 'publish'),
(82, 25, '_wp_trash_meta_time', '1519226860'),
(193, 61, '_wp_trash_meta_time', '1519232844'),
(192, 61, '_wp_trash_meta_status', 'publish'),
(190, 54, '_wp_trash_meta_status', 'publish'),
(191, 54, '_wp_trash_meta_time', '1519232794'),
(94, 33, '_wp_trash_meta_status', 'publish'),
(93, 33, '_edit_lock', '1519226922:1'),
(95, 33, '_wp_trash_meta_time', '1519226933'),
(96, 34, '_wp_trash_meta_status', 'publish'),
(97, 34, '_wp_trash_meta_time', '1519226940'),
(214, 71, '_wp_attached_file', '2018/02/logo_b.png'),
(215, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:152;s:6:\"height\";i:75;s:4:\"file\";s:18:\"2018/02/logo_b.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo_b-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 36, '_edit_lock', '1519227185:1'),
(101, 37, '_wp_attached_file', '2018/02/favicon.jpg'),
(102, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:285;s:6:\"height\";i:285;s:4:\"file\";s:19:\"2018/02/favicon.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"home_post_thumb\";a:4:{s:4:\"file\";s:19:\"favicon-285x210.jpg\";s:5:\"width\";i:285;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1486649762\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(146, 48, '_wp_trash_meta_status', 'publish'),
(226, 76, '_edit_lock', '1519996450:1'),
(118, 36, '_wp_trash_meta_status', 'publish'),
(119, 36, '_wp_trash_meta_time', '1519227199'),
(120, 43, '_wp_trash_meta_status', 'publish'),
(121, 43, '_wp_trash_meta_time', '1519227302'),
(122, 44, '_menu_item_type', 'custom'),
(123, 44, '_menu_item_menu_item_parent', '0'),
(124, 44, '_menu_item_object_id', '44'),
(125, 44, '_menu_item_object', 'custom'),
(126, 44, '_menu_item_target', ''),
(127, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 44, '_menu_item_xfn', ''),
(129, 44, '_menu_item_url', 'http://localhost/wordpress/'),
(147, 48, '_wp_trash_meta_time', '1519231407'),
(148, 49, '_edit_lock', '1519231768:1'),
(292, 95, '_wp_trash_meta_time', '1520002996'),
(287, 93, '_wp_trash_meta_status', 'publish'),
(285, 92, '_menu_item_url', ''),
(284, 92, '_menu_item_xfn', ''),
(260, 90, '_menu_item_type', 'post_type'),
(261, 90, '_menu_item_menu_item_parent', '0'),
(262, 90, '_menu_item_object_id', '81'),
(263, 90, '_menu_item_object', 'page'),
(264, 90, '_menu_item_target', ''),
(265, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(266, 90, '_menu_item_xfn', ''),
(267, 90, '_menu_item_url', ''),
(269, 91, '_menu_item_type', 'taxonomy'),
(270, 91, '_menu_item_menu_item_parent', '0'),
(271, 91, '_menu_item_object_id', '3'),
(272, 91, '_menu_item_object', 'category'),
(273, 91, '_menu_item_target', ''),
(274, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 91, '_menu_item_xfn', ''),
(276, 91, '_menu_item_url', ''),
(288, 93, '_wp_trash_meta_time', '1520002851'),
(278, 92, '_menu_item_type', 'taxonomy'),
(279, 92, '_menu_item_menu_item_parent', '0'),
(280, 92, '_menu_item_object_id', '4');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-21 10:11:45', '2018-02-21 09:11:45', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-02-21 10:11:45', '2018-02-21 09:11:45', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(4, 1, '2018-02-21 11:42:53', '2018-02-21 10:42:53', '{\n    \"enigma_options[snoweffect]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:42:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fdde7f82-3220-4e5b-95aa-b3198f75b239', '', '', '2018-02-21 11:42:53', '2018-02-21 10:42:53', '', 0, 'http://localhost/wordpress/2018/02/21/fdde7f82-3220-4e5b-95aa-b3198f75b239/', 0, 'customize_changeset', '', 0),
(5, 1, '2018-02-21 11:43:09', '2018-02-21 10:43:09', '{\n    \"enigma_options[title_position]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:43:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '500b0e48-aafa-43ec-806c-730f4d0356de', '', '', '2018-02-21 11:43:09', '2018-02-21 10:43:09', '', 0, 'http://localhost/wordpress/2018/02/21/500b0e48-aafa-43ec-806c-730f4d0356de/', 0, 'customize_changeset', '', 0),
(6, 1, '2018-02-21 11:43:16', '2018-02-21 10:43:16', '{\n    \"enigma_options[title_position]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:43:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5701607c-e483-4c59-883e-d91cca35612c', '', '', '2018-02-21 11:43:16', '2018-02-21 10:43:16', '', 0, 'http://localhost/wordpress/2018/02/21/5701607c-e483-4c59-883e-d91cca35612c/', 0, 'customize_changeset', '', 0),
(7, 1, '2018-02-21 11:43:58', '2018-02-21 10:43:58', '{\n    \"enigma_options[animate_type_title]\": {\n        \"value\": \"fadeIn\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:43:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b01b2087-09c0-4eb1-b119-d22fb3e8fe2d', '', '', '2018-02-21 11:43:58', '2018-02-21 10:43:58', '', 0, 'http://localhost/wordpress/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-02-21 11:44:42', '2018-02-21 10:44:42', '{\n    \"enigma_options[animate_type_title]\": {\n        \"value\": \"bounceIn\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:44:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '620b5a1b-1f09-4257-8ee0-99038db0a9be', '', '', '2018-02-21 11:44:42', '2018-02-21 10:44:42', '', 0, 'http://localhost/wordpress/2018/02/21/620b5a1b-1f09-4257-8ee0-99038db0a9be/', 0, 'customize_changeset', '', 0),
(9, 1, '2018-02-21 11:47:55', '2018-02-21 10:47:55', '', 'Courchevel', 'Domaine skiable de Courchevel', 'inherit', 'open', 'closed', '', 'montagne_courchevel2', '', '', '2018-02-21 11:48:24', '2018-02-21 10:48:24', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/montagne_courchevel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-02-21 11:55:41', '2018-02-21 10:55:41', '{\n    \"enigma_options[slide_image_1]\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/montagne_courchevel2.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:48:43\"\n    },\n    \"enigma_options[slide_title_1]\": {\n        \"value\": \"CHALETS ET CAVIAR\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:49:43\"\n    },\n    \"enigma-child::slide_desc_1\": {\n        \"value\": \"<p>Agence immobili\\u00e8re sp\\u00e9cialis\\u00e9e dans le luxe \\u00e0 Courchevel !</p>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:49:43\"\n    },\n    \"enigma_options[slide_btn_text_1]\": {\n        \"value\": \"Contactez-nous\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:50:43\"\n    },\n    \"enigma_options[slide_image_2]\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/jacuzi2.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:51:44\"\n    },\n    \"enigma_options[slide_title_2]\": {\n        \"value\": \"Des chalets de luxe toute l\'ann\\u00e9e !\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:52:44\"\n    },\n    \"enigma-child::slide_desc_2\": {\n        \"value\": \"<p>Louez votre chalet quand vous le souhaitez !</p>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:53:44\"\n    },\n    \"enigma_options[slide_btn_text_2]\": {\n        \"value\": \"En savoir plus...\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:53:44\"\n    },\n    \"enigma_options[slide_image_3]\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/piscine3.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:54:44\"\n    },\n    \"enigma_options[slide_title_3]\": {\n        \"value\": \"Des chalets \\u00e0 l\'achat ou \\u00e0 la vente !\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:55:41\"\n    },\n    \"enigma-child::slide_desc_3\": {\n        \"value\": \"<p>De somptueux chalets sont \\u00e0 disponibles \\u00e0 l\'achat !</p>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:55:41\"\n    },\n    \"enigma_options[slide_btn_text_3]\": {\n        \"value\": \"En savoir plus...\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:55:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '23a0f522-042c-42d1-b5d5-25f257176b71', '', '', '2018-02-21 11:55:41', '2018-02-21 10:55:41', '', 0, 'http://localhost/wordpress/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2018-02-21 11:50:55', '2018-02-21 10:50:55', '', 'Des chalets de luxe toute l\'année.', 'Des chalets de luxe avec jacuzzi, salle de jeux...', 'inherit', 'open', 'closed', '', 'jacuzi2', '', '', '2018-02-21 11:51:31', '2018-02-21 10:51:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/jacuzi2.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-02-21 11:54:24', '2018-02-21 10:54:24', '', 'Chalet avec piscine extérieure', '', 'inherit', 'open', 'closed', '', 'piscine3', '', '', '2018-02-21 11:54:39', '2018-02-21 10:54:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/piscine3.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-02-21 11:58:08', '2018-02-21 10:58:08', '{\n    \"enigma_options[home_service_heading]\": {\n        \"value\": \"Nos Services\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma_options[service_1_icons]\": {\n        \"value\": \"fa-home\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma_options[service_2_icons]\": {\n        \"value\": \"fa-phone\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma_options[service_1_title]\": {\n        \"value\": \"Des chalets de luxe\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma_options[service_2_title]\": {\n        \"value\": \"Equipe \\u00e0 l\'\\u00e9coute\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma-child::service_1_text\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma-child::service_2_text\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:57:43\"\n    },\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Pistes \\u00e0 20m\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 10:58:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e8ed1ca-9a8b-40c0-9760-bba840b07ae7', '', '', '2018-02-21 11:58:08', '2018-02-21 10:58:08', '', 0, 'http://localhost/wordpress/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2018-02-21 12:12:02', '2018-02-21 11:12:02', '{\n    \"enigma_options[service_3_icons]\": {\n        \"value\": \"fa-credit-card\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:11:49\"\n    },\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Boutiques de luxes\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:12:02\"\n    },\n    \"enigma-child::service_3_text\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:12:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e94f7ff-5bb8-4e9b-894f-ae56b7dddeec', '', '', '2018-02-21 12:12:02', '2018-02-21 11:12:02', '', 0, 'http://localhost/wordpress/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2018-02-21 12:14:49', '2018-02-21 11:14:49', '{\n    \"enigma_options[service_3_icons]\": {\n        \"value\": \"fa-thumbs-up\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:14:49\"\n    },\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Echanges rapides et s\\u00e9curis\\u00e9s\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:14:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '404baf5c-b8f3-493c-8f5a-214fae3b46b4', '', '', '2018-02-21 12:14:49', '2018-02-21 11:14:49', '', 0, 'http://localhost/wordpress/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2018-02-21 12:15:37', '2018-02-21 11:15:37', '', 'Achat', 'Achat de chalets', 'inherit', 'open', 'closed', '', 'achat', '', '', '2018-02-21 12:15:50', '2018-02-21 11:15:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/achat.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-02-21 12:17:17', '2018-02-21 11:17:17', '{\n    \"enigma_options[port_3_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:15:50\"\n    },\n    \"enigma_options[port_4_img]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:15:50\"\n    },\n    \"enigma_options[port_heading]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:16:50\"\n    },\n    \"enigma_options[port_1_img]\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/achat.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:16:50\"\n    },\n    \"enigma_options[port_1_title]\": {\n        \"value\": \"Achat\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:16:50\"\n    },\n    \"enigma_options[port_2_img]\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/location.jpg\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:17:17\"\n    },\n    \"enigma_options[port_2_title]\": {\n        \"value\": \"Location\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:17:17\"\n    },\n    \"enigma_options[port_3_title]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:17:17\"\n    },\n    \"enigma_options[port_4_title]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:17:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b14ad2a7-5b23-446a-9ee9-76049d22bd83', '', '', '2018-02-21 12:17:17', '2018-02-21 11:17:17', '', 0, 'http://localhost/wordpress/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-02-21 12:16:46', '2018-02-21 11:16:46', '', 'Location de chalets', '', 'inherit', 'open', 'closed', '', 'location', '', '', '2018-02-21 12:16:54', '2018-02-21 11:16:54', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/location.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-02-21 12:18:59', '2018-02-21 11:18:59', '{\n    \"enigma_options[blog_home]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:17:50\"\n    },\n    \"enigma_options[footer_section_social_media_enbled]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:17:50\"\n    },\n    \"enigma_options[email_id]\": {\n        \"value\": \"contact@chalets-et-caviar.fr\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    },\n    \"enigma_options[phone_no]\": {\n        \"value\": \"04 597 535 86\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    },\n    \"enigma_options[linkedin_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    },\n    \"enigma_options[gplus]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    },\n    \"enigma_options[vk_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    },\n    \"enigma_options[qq_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    },\n    \"enigma_options[whatsapp_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:18:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7ceeabbd-0956-414c-b95d-6a54fbc0c53f', '', '', '2018-02-21 12:18:59', '2018-02-21 11:18:59', '', 0, 'http://localhost/wordpress/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2018-02-21 12:20:51', '2018-02-21 11:20:51', '{\n    \"enigma_options[fc_home]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:19:50\"\n    },\n    \"enigma_options[fc_title]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:19:50\"\n    },\n    \"enigma_options[fc_icon]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:19:50\"\n    },\n    \"enigma_options[fc_btn_txt]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:20:50\"\n    },\n    \"enigma_options[fc_btn_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:20:50\"\n    },\n    \"enigma_options[footer_customizations]\": {\n        \"value\": \"Projet pour OpenClassroom\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:20:50\"\n    },\n    \"enigma_options[developed_by_text]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:20:50\"\n    },\n    \"enigma_options[developed_by_weblizar_text]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:20:50\"\n    },\n    \"enigma_options[developed_by_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 11:20:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9fbe2f68-ae92-4c09-8355-f0d0a3015fcd', '', '', '2018-02-21 12:20:51', '2018-02-21 11:20:51', '', 0, 'http://localhost/wordpress/?p=20', 0, 'customize_changeset', '', 0),
(72, 1, '2018-02-21 18:35:44', '2018-02-21 17:35:44', 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-logo_b.png', 'cropped-logo_b.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_b-png', '', '', '2018-02-21 18:35:44', '2018-02-21 17:35:44', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/cropped-logo_b.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-02-21 16:27:40', '2018-02-21 15:27:40', '{\n    \"enigma-child::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-montagne_courchevel2-1-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:27:40\"\n    },\n    \"enigma-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-montagne_courchevel2-1-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-montagne_courchevel2-1-1.jpg\",\n            \"timestamp\": 1519226856184,\n            \"attachment_id\": 30,\n            \"width\": 1200,\n            \"height\": 37\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:27:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab414019-8c99-4857-a809-028eda5c9174', '', '', '2018-02-21 16:27:40', '2018-02-21 15:27:40', '', 0, 'http://localhost/wordpress/?p=25', 0, 'customize_changeset', '', 0),
(54, 1, '2018-02-21 18:06:34', '2018-02-21 17:06:34', '{\n    \"enigma-child::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-banniere_courchevel-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:06:34\"\n    },\n    \"enigma-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-banniere_courchevel-2.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-banniere_courchevel-2.jpg\",\n            \"timestamp\": 1519232789225,\n            \"attachment_id\": 60,\n            \"width\": 1473,\n            \"height\": 100\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:06:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '23bda76d-b412-4fcf-bf55-d5414127fc03', '', '', '2018-02-21 18:06:34', '2018-02-21 17:06:34', '', 0, 'http://localhost/wordpress/?p=54', 0, 'customize_changeset', '', 0),
(76, 1, '2018-03-02 14:14:31', '2018-03-02 13:14:31', '{\n    \"enigma_options[fb_link]\": {\n        \"value\": \"https://www.facebook.com/courchevel/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 13:13:41\"\n    },\n    \"enigma_options[twitter_link]\": {\n        \"value\": \"https://twitter.com/courchevel?lang=fr\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 13:14:10\"\n    },\n    \"enigma_options[youtube_link]\": {\n        \"value\": \"https://www.youtube.com/user/CourchevelOfficiel\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 13:14:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '56eb1df0-19a5-42d8-910c-b401584f58d7', '', '', '2018-03-02 14:14:31', '2018-03-02 13:14:31', '', 0, 'http://localhost/wordpress/?p=76', 0, 'customize_changeset', '', 0),
(73, 1, '2018-02-21 18:35:59', '2018-02-21 17:35:59', '{\n    \"enigma-child::custom_logo\": {\n        \"value\": 72,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:35:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e80ec7ed-083f-4e90-87b0-3d4363dd478c', '', '', '2018-02-21 18:35:59', '2018-02-21 17:35:59', '', 0, 'http://localhost/wordpress/?p=73', 0, 'customize_changeset', '', 0),
(33, 1, '2018-02-21 16:28:53', '2018-02-21 15:28:53', '{\n    \"enigma-child::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:28:42\"\n    },\n    \"enigma-child::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:28:42\"\n    },\n    \"enigma-child::background_color\": {\n        \"value\": \"#749cbf\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:28:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '54302715-34a4-408e-9ea8-68f8a01292a7', '', '', '2018-02-21 16:28:53', '2018-02-21 15:28:53', '', 0, 'http://localhost/wordpress/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2018-02-21 16:29:00', '2018-02-21 15:29:00', '{\n    \"enigma-child::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:29:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8505f959-2e88-4a2f-b683-a1287945fcea', '', '', '2018-02-21 16:29:00', '2018-02-21 15:29:00', '', 0, 'http://localhost/wordpress/2018/02/21/8505f959-2e88-4a2f-b683-a1287945fcea/', 0, 'customize_changeset', '', 0),
(71, 1, '2018-02-21 18:35:05', '2018-02-21 17:35:05', '', 'logo_b', '', 'inherit', 'open', 'closed', '', 'logo_b', '', '', '2018-02-21 18:35:05', '2018-02-21 17:35:05', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/logo_b.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-02-21 16:33:19', '2018-02-21 15:33:19', '{\n    \"site_icon\": {\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:30:42\"\n    },\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:30:42\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Agence immobili\\u00e8re dans le luxe \\u00e0 Courchevel\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:31:42\"\n    },\n    \"enigma-child::custom_logo\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:33:19\"\n    },\n    \"enigma-child::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-chalet1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:32:44\"\n    },\n    \"enigma-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-chalet1.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-chalet1.jpg\",\n            \"timestamp\": 1519227144026,\n            \"attachment_id\": 40,\n            \"width\": 281,\n            \"height\": 12\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:32:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6da23ee6-e8bf-45e2-a1d9-abdd36109bdd', '', '', '2018-02-21 16:33:19', '2018-02-21 15:33:19', '', 0, 'http://localhost/wordpress/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2018-02-21 16:29:52', '2018-02-21 15:29:52', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon-2', '', '', '2018-02-21 16:29:52', '2018-02-21 15:29:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/02/favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-02-21 18:28:40', '2018-02-21 17:28:40', '{\n    \"enigma-child::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:28:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '57dfbb38-e0f5-457c-970f-d7a75c072e0c', '', '', '2018-02-21 18:28:40', '2018-02-21 17:28:40', '', 0, 'http://localhost/wordpress/2018/02/21/57dfbb38-e0f5-457c-970f-d7a75c072e0c/', 0, 'customize_changeset', '', 0),
(43, 1, '2018-02-21 16:35:02', '2018-02-21 15:35:02', '{\n    \"enigma_options[fc_home]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 15:35:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4b5f98f-f712-4996-9f2a-cb13801e1ec2', '', '', '2018-02-21 16:35:02', '2018-02-21 15:35:02', '', 0, 'http://localhost/wordpress/2018/02/21/e4b5f98f-f712-4996-9f2a-cb13801e1ec2/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-02-21 16:36:33', '2018-02-21 15:36:33', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-03-02 15:59:27', '2018-03-02 14:59:27', '', 0, 'http://localhost/wordpress/?p=44', 1, 'nav_menu_item', '', 0),
(91, 1, '2018-03-02 15:59:27', '2018-03-02 14:59:27', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2018-03-02 15:59:27', '2018-03-02 14:59:27', '', 0, 'http://localhost/wordpress/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2018-03-02 15:59:27', '2018-03-02 14:59:27', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2018-03-02 15:59:27', '2018-03-02 14:59:27', '', 0, 'http://localhost/wordpress/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2018-03-02 16:00:51', '2018-03-02 15:00:51', '{\n    \"enigma_options[service_1_link]\": {\n        \"value\": \"/wordpress/category/achat/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 15:00:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35fa08ec-3d50-468f-b8a4-362c9bc41106', '', '', '2018-03-02 16:00:51', '2018-03-02 15:00:51', '', 0, 'http://localhost/wordpress/2018/03/02/35fa08ec-3d50-468f-b8a4-362c9bc41106/', 0, 'customize_changeset', '', 0),
(94, 1, '2018-03-02 16:01:23', '2018-03-02 15:01:23', '{\n    \"enigma_options[port_1_link]\": {\n        \"value\": \"/wordpress/category/achat/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 15:01:23\"\n    },\n    \"enigma_options[port_2_link]\": {\n        \"value\": \"/wordpress/category/location/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 15:01:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f014693d-77e0-42ab-8d51-d0ed0f6e2e2a', '', '', '2018-03-02 16:01:23', '2018-03-02 15:01:23', '', 0, 'http://localhost/wordpress/2018/03/02/f014693d-77e0-42ab-8d51-d0ed0f6e2e2a/', 0, 'customize_changeset', '', 0),
(95, 1, '2018-03-02 16:03:16', '2018-03-02 15:03:16', '{\n    \"enigma_options[slide_btn_link_1]\": {\n        \"value\": \"/wordpress/contact/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 15:03:16\"\n    },\n    \"enigma_options[slide_btn_link_2]\": {\n        \"value\": \"/wordpress/category/location/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 15:03:16\"\n    },\n    \"enigma_options[slide_btn_link_3]\": {\n        \"value\": \"/wordpress/category/achat/\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 15:03:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '121d1e38-26d8-480c-8bc2-6d5481ec7e91', '', '', '2018-03-02 16:03:16', '2018-03-02 15:03:16', '', 0, 'http://localhost/wordpress/2018/03/02/121d1e38-26d8-480c-8bc2-6d5481ec7e91/', 0, 'customize_changeset', '', 0),
(48, 1, '2018-02-21 17:43:27', '2018-02-21 16:43:27', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 16:43:27\"\n    },\n    \"enigma-child::custom_logo\": {\n        \"value\": 47,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 16:43:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd74a9ce2-0af9-4965-a2ae-df803b06d6b4', '', '', '2018-02-21 17:43:27', '2018-02-21 16:43:27', '', 0, 'http://localhost/wordpress/2018/02/21/d74a9ce2-0af9-4965-a2ae-df803b06d6b4/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-02-21 17:50:22', '2018-02-21 16:50:22', '{\n    \"enigma-child::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-cropped-montagne_courchevel2-1-4.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 16:50:22\"\n    },\n    \"enigma-child::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-cropped-montagne_courchevel2-1-4.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2018/02/cropped-cropped-montagne_courchevel2-1-4.jpg\",\n            \"timestamp\": 1519231810066,\n            \"attachment_id\": 51,\n            \"width\": 1200,\n            \"height\": 155\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 16:50:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3f5ea4b9-993e-4546-8c84-18031c607296', '', '', '2018-02-21 17:50:22', '2018-02-21 16:50:22', '', 0, 'http://localhost/wordpress/?p=49', 0, 'customize_changeset', '', 0),
(74, 1, '2018-03-01 16:14:22', '2018-03-01 15:14:22', '{\n    \"blogname\": {\n        \"value\": \"Chalets & Caviar\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-01 15:14:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7aafb29-37b1-4af5-a56d-b4e319039213', '', '', '2018-03-01 16:14:22', '2018-03-01 15:14:22', '', 0, 'http://localhost/wordpress/2018/03/01/e7aafb29-37b1-4af5-a56d-b4e319039213/', 0, 'customize_changeset', '', 0),
(75, 1, '2018-03-02 14:13:07', '2018-03-02 13:13:07', '{\n    \"enigma_options[instagram]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 13:13:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed8ce810-1830-43ee-b5fc-e25bf27079ca', '', '', '2018-03-02 14:13:07', '2018-03-02 13:13:07', '', 0, 'http://localhost/wordpress/2018/03/02/ed8ce810-1830-43ee-b5fc-e25bf27079ca/', 0, 'customize_changeset', '', 0),
(61, 1, '2018-02-21 18:07:24', '2018-02-21 17:07:24', '{\n    \"enigma-child::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:07:24\"\n    },\n    \"enigma-child::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:07:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '94ff3aff-0cb6-4687-a80d-c31bdea48ff5', '', '', '2018-02-21 18:07:24', '2018-02-21 17:07:24', '', 0, 'http://localhost/wordpress/2018/02/21/94ff3aff-0cb6-4687-a80d-c31bdea48ff5/', 0, 'customize_changeset', '', 0),
(64, 1, '2018-02-21 18:29:53', '2018-02-21 17:29:53', '{\n    \"enigma_options[logo_height]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:29:53\"\n    },\n    \"enigma_options[logo_width]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:29:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2ab65f0-4aec-4e2b-afe2-f686e1deffa6', '', '', '2018-02-21 18:29:53', '2018-02-21 17:29:53', '', 0, 'http://localhost/wordpress/2018/02/21/c2ab65f0-4aec-4e2b-afe2-f686e1deffa6/', 0, 'customize_changeset', '', 0),
(66, 1, '2018-02-21 18:31:12', '2018-02-21 17:31:12', '{\n    \"enigma-child::custom_logo\": {\n        \"value\": 65,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:31:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8427c494-8b70-4608-bcad-ea7d98c5abbc', '', '', '2018-02-21 18:31:12', '2018-02-21 17:31:12', '', 0, 'http://localhost/wordpress/2018/02/21/8427c494-8b70-4608-bcad-ea7d98c5abbc/', 0, 'customize_changeset', '', 0),
(67, 1, '2018-02-21 18:31:47', '2018-02-21 17:31:47', '{\n    \"enigma_options[logo_height]\": {\n        \"value\": \"115\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:31:47\"\n    },\n    \"enigma_options[logo_width]\": {\n        \"value\": \"285\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:31:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b69fc55e-5b76-42cc-ab86-4f93c1f88728', '', '', '2018-02-21 18:31:47', '2018-02-21 17:31:47', '', 0, 'http://localhost/wordpress/2018/02/21/b69fc55e-5b76-42cc-ab86-4f93c1f88728/', 0, 'customize_changeset', '', 0),
(68, 1, '2018-02-21 18:32:57', '2018-02-21 17:32:57', '{\n    \"enigma_options[logo_height]\": {\n        \"value\": \"97\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:32:57\"\n    },\n    \"enigma_options[logo_width]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:32:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bc4722ee-c678-4af0-9b38-05dd51f33d0f', '', '', '2018-02-21 18:32:57', '2018-02-21 17:32:57', '', 0, 'http://localhost/wordpress/2018/02/21/bc4722ee-c678-4af0-9b38-05dd51f33d0f/', 0, 'customize_changeset', '', 0),
(69, 1, '2018-02-21 18:33:01', '2018-02-21 17:33:01', '{\n    \"enigma_options[logo_height]\": {\n        \"value\": \"95\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:33:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f086dc25-cec2-4c2f-ad33-66fda9b3d282', '', '', '2018-02-21 18:33:01', '2018-02-21 17:33:01', '', 0, 'http://localhost/wordpress/2018/02/21/f086dc25-cec2-4c2f-ad33-66fda9b3d282/', 0, 'customize_changeset', '', 0),
(70, 1, '2018-02-21 18:33:04', '2018-02-21 17:33:04', '{\n    \"enigma_options[logo_height]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-02-21 17:33:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf0325c8-83ba-43e8-821a-229258c5bf52', '', '', '2018-02-21 18:33:04', '2018-02-21 17:33:04', '', 0, 'http://localhost/wordpress/2018/02/21/cf0325c8-83ba-43e8-821a-229258c5bf52/', 0, 'customize_changeset', '', 0),
(81, 1, '2018-03-02 14:16:05', '2018-03-02 13:16:05', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-02 14:16:05', '2018-03-02 13:16:05', '', 0, 'http://localhost/wordpress/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-03-02 14:16:05', '2018-03-02 13:16:05', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-03-02 14:16:05', '2018-03-02 13:16:05', '', 81, 'http://localhost/wordpress/2018/03/02/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-03-02 15:30:50', '2018-03-02 14:30:50', '{\n    \"enigma_options[service_3_icons]\": {\n        \"value\": \"fa-snowflake-o\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:30:50\"\n    },\n    \"enigma_options[service_3_title]\": {\n        \"value\": \"Pistes \\u00e0 20m\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:30:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6477971e-8f44-4941-9c2a-514ba671a22a', '', '', '2018-03-02 15:30:50', '2018-03-02 14:30:50', '', 0, 'http://localhost/wordpress/2018/03/02/6477971e-8f44-4941-9c2a-514ba671a22a/', 0, 'customize_changeset', '', 0),
(84, 1, '2018-03-02 15:49:22', '2018-03-02 14:49:22', '{\n    \"enigma_options[service_1_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:49:22\"\n    },\n    \"enigma_options[service_2_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:49:22\"\n    },\n    \"enigma_options[service_3_link]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:49:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac214f29-d275-446a-90bb-dba53f3f4c7b', '', '', '2018-03-02 15:49:22', '2018-03-02 14:49:22', '', 0, 'http://localhost/wordpress/2018/03/02/ac214f29-d275-446a-90bb-dba53f3f4c7b/', 0, 'customize_changeset', '', 0),
(85, 1, '2018-03-02 15:50:30', '2018-03-02 14:50:30', '{\n    \"enigma_options[services_home]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:50:15\"\n    },\n    \"enigma_options[service_1_link]\": {\n        \"value\": \"achat-2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:50:30\"\n    },\n    \"enigma_options[service_2_link]\": {\n        \"value\": \"contact\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:50:30\"\n    },\n    \"enigma_options[service_3_link]\": {\n        \"value\": \"contact\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:50:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6c319efd-f0ff-402e-ae86-92a28d5412d3', '', '', '2018-03-02 15:50:30', '2018-03-02 14:50:30', '', 0, 'http://localhost/wordpress/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2018-03-02 15:51:03', '2018-03-02 14:51:03', '{\n    \"enigma_options[service_1_link]\": {\n        \"value\": \"/achat-2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:51:03\"\n    },\n    \"enigma_options[service_2_link]\": {\n        \"value\": \"/contact\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:51:03\"\n    },\n    \"enigma_options[service_3_link]\": {\n        \"value\": \"/contact\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:51:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca7dbad3-dd56-496d-8578-8cad40ae571a', '', '', '2018-03-02 15:51:03', '2018-03-02 14:51:03', '', 0, 'http://localhost/wordpress/2018/03/02/ca7dbad3-dd56-496d-8578-8cad40ae571a/', 0, 'customize_changeset', '', 0),
(87, 1, '2018-03-02 15:51:18', '2018-03-02 14:51:18', '{\n    \"enigma_options[service_1_link]\": {\n        \"value\": \"wordpress/achat-2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:51:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9926b4a-d0c2-4f33-b057-d9deda9e9c6d', '', '', '2018-03-02 15:51:18', '2018-03-02 14:51:18', '', 0, 'http://localhost/wordpress/?p=87', 0, 'customize_changeset', '', 0),
(88, 1, '2018-03-02 15:51:32', '2018-03-02 14:51:32', '{\n    \"enigma_options[service_1_link]\": {\n        \"value\": \"/wordpress/achat-2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:51:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd75069c7-5f8c-491d-af28-3a0f113b2cf7', '', '', '2018-03-02 15:51:32', '2018-03-02 14:51:32', '', 0, 'http://localhost/wordpress/2018/03/02/d75069c7-5f8c-491d-af28-3a0f113b2cf7/', 0, 'customize_changeset', '', 0),
(89, 1, '2018-03-02 15:52:01', '2018-03-02 14:52:01', '{\n    \"enigma_options[service_2_link]\": {\n        \"value\": \"/wordpress/contact\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:52:01\"\n    },\n    \"enigma_options[service_3_link]\": {\n        \"value\": \"/wordpress/contact\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-02 14:52:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8195f355-713e-4102-b8f9-a201504c676b', '', '', '2018-03-02 15:52:01', '2018-03-02 14:52:01', '', 0, 'http://localhost/wordpress/2018/03/02/8195f355-713e-4102-b8f9-a201504c676b/', 0, 'customize_changeset', '', 0),
(90, 1, '2018-03-02 15:57:45', '2018-03-02 14:57:45', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2018-03-02 15:59:27', '2018-03-02 14:59:27', '', 0, 'http://localhost/wordpress/?p=90', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Achat', 'achat', 0),
(4, 'Location', 'location', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin_cc'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9ed67c1eeee8b1c14f82fac25d2bc9ee41eed1d2659af4d55f2ca52feddea244\";a:4:{s:10:\"expiration\";i:1520413923;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1519204323;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'enigma_notice_dismissed411', 'true'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1519231295'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'enigma_notice_dismissed283', 'true'),
(25, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin_cc', '$P$ByD9yzYLC7wh3HbvCFR/f1J2dFRXal0', 'admin_cc', 'riwalenn@gmail.com', '', '2018-02-21 09:11:45', '', 0, 'admin_cc');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
CREATE TABLE IF NOT EXISTS `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(2, 1, 'Courchevel, Saint-Bon-Tarentaise, France', '', '', '', '', '45.414659', '6.634689999999978', '0', '', '0', '', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_categories`
--

DROP TABLE IF EXISTS `wp_wpgmza_categories`;
CREATE TABLE IF NOT EXISTS `wp_wpgmza_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_category_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_category_maps`;
CREATE TABLE IF NOT EXISTS `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
CREATE TABLE IF NOT EXISTS `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Courchevel', '100', '400', '45.414659', '6.634690', '45.414659,6.634689999999978', 13, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:21:\"Code Postal / Adresse\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
CREATE TABLE IF NOT EXISTS `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
CREATE TABLE IF NOT EXISTS `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
