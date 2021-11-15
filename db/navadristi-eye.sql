-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 09:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `navadristi-eye`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-20 04:41:33', '2021-09-20 04:41:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_image_storage`
--

CREATE TABLE `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, 'dd951194d701107d9abb57182cc8f63d', 'https://smartslider3.com/wp-content/uploads/slider424/slide1.png', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(2, 'c4307c2cb0e1e7ed111429e405631f9f', 'https://smartslider3.com/wp-content/uploads/slider424/slide2.png', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(3, '7c1fd3b88b500d60bcfaa70a827b0dc2', '$upload$/2021/09/01_header.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(4, '34ec37ffc5669bbcb813ea1a5ee62735', '$upload$/2021/09/02_header.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19'),
(5, '8a1e5e499121c53d7097639ba7e480d4', '$upload$/2021/09/03_header.jpg', 'eyJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIifSwibW9iaWxlIjp7ImltYWdlIjoiIn19');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

CREATE TABLE `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL,
  `application` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referencekey` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` int(11) NOT NULL DEFAULT 0,
  `editable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'smartslider', 'settings', '', '{\"n2_ss3_version\":\"3.5.0.11\\/b:release-3.5.0.11\\/r:2a442a1570d7e95765a11de6b41feca863a1f81b\"}', 0, 1),
(10001, 'smartslider', 'tutorial', 'GettingStarted', '1', 0, 1),
(10356, 'smartslider', 'sliderChanged', '1', '0', 0, 1),
(10359, 'cache', 'notweb/n2-ss-1', 'slideren_US1.manifest', '{\"hash\":\"\",\"nextCacheRefresh\":2145916800,\"currentPath\":\"495885e42c8af852a80847a2f520722d\",\"version\":\"3.5.0.11\"}', 0, 1),
(10360, 'cache', 'notweb/n2-ss-1', 'slideren_US1', '{\"html\":\"<div><ss3-force-full-width data-overflow-x=\\\"body\\\" data-horizontal-selector=\\\"body\\\"><div class=\\\"n2-section-smartslider fitvidsignore  n2_clear\\\" data-ssid=\\\"1\\\" tabindex=\\\"0\\\" role=\\\"region\\\" aria-label=\\\"Slider\\\"><div id=\\\"n2-ss-1-align\\\" class=\\\"n2-ss-align\\\"><div class=\\\"n2-padding\\\"><div id=\\\"n2-ss-1\\\" data-creator=\\\"Smart Slider 3\\\" data-responsive=\\\"fullwidth\\\" class=\\\"n2-ss-slider n2-ow n2-has-hover n2notransition  \\\"><div class=\\\"n2-ss-slider-wrapper-inside\\\">\\n        <div class=\\\"n2-ss-slider-1 n2_ss__touch_element n2-ow\\\" style=\\\"\\\">\\n            <div class=\\\"n2-ss-slider-2 n2-ow\\\">\\n                                                    <div class=\\\"n2-ss-background-animation n2-ow\\\"><\\/div>\\n                                <div class=\\\"n2-ss-slider-3 n2-ow\\\" style=\\\"\\\">\\n\\n                    <div class=\\\"n2-ss-slide-backgrounds n2-ow-all\\\"><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"1\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost\\/navadristi-eye\\/wp-content\\/uploads\\/2021\\/09\\/01_header.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"2\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost\\/navadristi-eye\\/wp-content\\/uploads\\/2021\\/09\\/02_header.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><div class=\\\"n2-ss-slide-background\\\" data-public-id=\\\"3\\\" data-mode=\\\"fill\\\"><div class=\\\"n2-ss-slide-background-image\\\" data-blur=\\\"0\\\" data-alt=\\\"\\\" data-title=\\\"\\\"><picture><img src=\\\"\\/\\/localhost\\/navadristi-eye\\/wp-content\\/uploads\\/2021\\/09\\/03_header.jpg\\\" alt=\\\"\\\" title=\\\"\\\" loading=\\\"lazy\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\"><\\/picture><\\/div><\\/div><\\/div>                    <div class=\\\"n2-ss-slider-4 n2-ow\\\">\\n                        <svg xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" viewBox=\\\"0 0 1200 700\\\" data-related-device=\\\"desktopPortrait\\\" class=\\\"n2-ow n2-ss-preserve-size n2-ss-preserve-size--slider n2-ss-slide-limiter\\\"><\\/svg><div data-first=\\\"1\\\" data-slide-duration=\\\"0\\\" data-id=\\\"1\\\" data-slide-public-id=\\\"1\\\" data-title=\\\"Slide Background\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-1\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">Slide Background<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-Ydf7sDj8iher\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-IbNOabpfT5aE\\\" data-pm=\\\"default\\\" data-sstype=\\\"content\\\" data-hasbackground=\\\"0\\\"><div class=\\\"n2-ss-section-main-content n2-ss-layer-with-background n2-ss-layer-content n2-ow n-uc-IbNOabpfT5aE-inner\\\"><div class=\\\"n2-ss-layer n2-ow n2-ss-layer--block n2-ss-has-self-align n-uc-dtwtw9DVCwgQ\\\" data-pm=\\\"normal\\\" data-sstype=\\\"row\\\"><div class=\\\"n2-ss-layer-row n2-ss-layer-with-background n-uc-dtwtw9DVCwgQ-inner\\\"><div class=\\\"n2-ss-layer-row-inner \\\"><div class=\\\"n2-ss-layer n2-ow n-uc-Fjvyu081qJeK\\\" data-pm=\\\"default\\\" data-sstype=\\\"col\\\"><div class=\\\"n2-ss-layer-col n2-ss-layer-with-background n2-ss-layer-content n-uc-Fjvyu081qJeK-inner\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-3mzb1VSIQj1x\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div id=\\\"n2-ss-1item1\\\" class=\\\"n2-font-5637a8b948df8ee067edce6ad3c4141e-hover n2-style-7d7ff5cd3a0a012481ce7e05f24081d1-heading   n2-ss-item-content n2-ss-text n2-ow\\\" style=\\\"display:block;\\\">We are here for your care<\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-fANmBupAl6pB\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div id=\\\"n2-ss-1item2\\\" class=\\\"n2-font-b38b989ec0dabcaa6803483b36dbdc8e-hover   n2-ss-item-content n2-ss-text n2-ow\\\" style=\\\"display:block;\\\">Best Care & Better Doctors<\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-mcEKZxDFu9vp n2-ss-layer--auto\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div class=\\\"n2-ss-button-container n2-ss-item-content n2-ow n2-font-eff2aced2781d2712e1951a8ee5e5a94-link  n2-ss-nowrap n2-ss-button-container--non-full-width\\\"><a class=\\\"n2-style-771503a848f3e267c98f8cc9614a667b-heading  n2-ow \\\" onclick=\\\"n2ss.applyActionWithClick(event, \'next\');\\\" href=\\\"#\\\"><div><div>View More<\\/div><\\/div><\\/a><\\/div><\\/div><\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-LnImbm1HgUAv\\\" data-pm=\\\"default\\\" data-sstype=\\\"col\\\"><div class=\\\"n2-ss-layer-col n2-ss-layer-with-background n2-ss-layer-content n-uc-LnImbm1HgUAv-inner\\\"><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"2\\\" data-slide-public-id=\\\"2\\\" data-title=\\\"Build &amp; Design\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-2\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">Build & Design<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-J8qr29QWU8Sl\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-TPnUuKlAWVoC\\\" data-pm=\\\"default\\\" data-sstype=\\\"content\\\" data-hasbackground=\\\"0\\\"><div class=\\\"n2-ss-section-main-content n2-ss-layer-with-background n2-ss-layer-content n2-ow n-uc-TPnUuKlAWVoC-inner\\\"><div class=\\\"n2-ss-layer n2-ow n2-ss-layer--block n2-ss-has-self-align n-uc-NmnNQvKK01kO\\\" data-pm=\\\"normal\\\" data-sstype=\\\"row\\\"><div class=\\\"n2-ss-layer-row n2-ss-layer-with-background n-uc-NmnNQvKK01kO-inner\\\"><div class=\\\"n2-ss-layer-row-inner \\\"><div class=\\\"n2-ss-layer n2-ow n-uc-R5Jkk06Nmzr4\\\" data-pm=\\\"default\\\" data-sstype=\\\"col\\\"><div class=\\\"n2-ss-layer-col n2-ss-layer-with-background n2-ss-layer-content n-uc-R5Jkk06Nmzr4-inner\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-gp210h4Fy7Mz\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div id=\\\"n2-ss-1item4\\\" class=\\\"n2-font-ce74a14e2dab7dae8cfd9865f92c4844-hover   n2-ss-item-content n2-ss-text n2-ow\\\" style=\\\"display:block;\\\">Smarter Care, Together<\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-GNYgjqt1wtlW\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div id=\\\"n2-ss-1item5\\\" class=\\\"n2-font-146c2cd14462980147366a7ab745761a-hover   n2-ss-item-content n2-ss-text n2-ow\\\" style=\\\"display:block;\\\">Be Attentive To Your health<\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-3kAta16ZTdak n2-ss-layer--auto\\\" data-pm=\\\"normal\\\" data-sstype=\\\"layer\\\"><div class=\\\"n2-ss-button-container n2-ss-item-content n2-ow n2-font-eff2aced2781d2712e1951a8ee5e5a94-link  n2-ss-nowrap n2-ss-button-container--non-full-width\\\"><a class=\\\"n2-style-771503a848f3e267c98f8cc9614a667b-heading  n2-ow \\\" onclick=\\\"n2ss.applyActionWithClick(event, \'next\');\\\" href=\\\"#\\\"><div><div>View More<\\/div><\\/div><\\/a><\\/div><\\/div><\\/div><\\/div><div class=\\\"n2-ss-layer n2-ow n-uc-iYi6ZKk8yeVp\\\" data-pm=\\\"default\\\" data-sstype=\\\"col\\\"><div class=\\\"n2-ss-layer-col n2-ss-layer-with-background n2-ss-layer-content n-uc-iYi6ZKk8yeVp-inner\\\"><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><div data-slide-duration=\\\"0\\\" data-id=\\\"3\\\" data-slide-public-id=\\\"3\\\" data-title=\\\"03_header\\\" class=\\\"n2-ss-slide n2-ow  n2-ss-slide-3\\\"><div role=\\\"note\\\" class=\\\"n2-ss-slide--focus\\\">03_header<\\/div><div class=\\\"n2-ss-layers-container n2-ss-slide-limiter n2-ow\\\"><div class=\\\"n2-ss-layer n2-ow n-uc-UsgyMu1rklYz\\\" data-sstype=\\\"slide\\\" data-pm=\\\"default\\\"><\\/div><\\/div><\\/div>                    <\\/div>\\n\\n                                    <\\/div>\\n            <\\/div>\\n        <\\/div>\\n        <div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-left-center\\\"><div style=\\\"--widget-offset:15px;\\\" class=\\\"n2-ss-widget n2-style-bb2f06d992c6eebb561ff14ff3334bfa-heading nextend-arrow n2-ow-all nextend-arrow-previous  nextend-arrow-animated-fade\\\" data-hide-mobileportrait=\\\"1\\\" id=\\\"n2-ss-1-arrow-previous\\\" role=\\\"button\\\" aria-label=\\\"previous arrow\\\" tabindex=\\\"0\\\"><img width=\\\"32\\\" height=\\\"32\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yMS42ODggMTQuNjg4aC03Ljk1NWwxLjgzMy0xLjY1LS4wMDQtLjAwM2MuMjY3LS4yNC40MzgtLjU4NS40MzgtLjk3MyAwLS43MjQtLjU4OC0xLjMxMi0xLjMxMy0xLjMxMi0uMzM3IDAtLjY0Mi4xMy0uODc0LjM0bC0uMDA0LS4wMDMtNC4zNzYgMy45MzcuMDA0LjAwNEM5LjE3IDE1LjI2OCA5IDE1LjYxMiA5IDE2cy4xNy43MzIuNDM4Ljk3MmwtLjAwNC4wMDQgNC4zNzUgMy45MzcuMDAyLS4wMDNjLjIzMy4yMS41MzguMzQuODc2LjM0LjcyNCAwIDEuMzEyLS41ODggMS4zMTItMS4zMTMgMC0uMzg3LS4xNy0uNzMtLjQzOC0uOTcybC4wMDQtLjAwMy0xLjgzMy0xLjY1aDcuOTU0Yy43MjUgMCAxLjMxMy0uNTg3IDEuMzEzLTEuMzEyIDAtLjcyNS0uNTg4LTEuMzEzLTEuMzEzLTEuMzEzek0xNiAyQzguMjY4IDIgMiA4LjI2OCAyIDE2czYuMjY4IDE0IDE0IDE0IDE0LTYuMjY4IDE0LTE0UzIzLjczMiAyIDE2IDJ6bTAgMjUuMzc1QzkuNzE4IDI3LjM3NSA0LjYyNSAyMi4yODIgNC42MjUgMTZTOS43MTggNC42MjUgMTYgNC42MjUgMjcuMzc1IDkuNzE4IDI3LjM3NSAxNiAyMi4yODIgMjcuMzc1IDE2IDI3LjM3NXoiCiAgICAgICAgICBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4=\\\" alt=\\\"previous arrow\\\"><\\/div><\\/div><div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-right-center\\\"><div style=\\\"--widget-offset:15px;\\\" class=\\\"n2-ss-widget n2-style-bb2f06d992c6eebb561ff14ff3334bfa-heading nextend-arrow n2-ow-all nextend-arrow-next  nextend-arrow-animated-fade\\\" data-hide-mobileportrait=\\\"1\\\" id=\\\"n2-ss-1-arrow-next\\\" role=\\\"button\\\" aria-label=\\\"next arrow\\\" tabindex=\\\"0\\\"><img width=\\\"32\\\" height=\\\"32\\\" class=\\\"skip-lazy\\\" data-skip-lazy=\\\"1\\\" src=\\\"data:image\\/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xOC4xOSAxMS4wODdjLS4yMzUtLjIwNi0uNTQtLjMzNy0uODc4LS4zMzctLjcyNCAwLTEuMzEyLjU4OC0xLjMxMiAxLjMxMyAwIC4zODcuMTcuNzMuNDM4Ljk3MmwxLjgzIDEuNjUySDEwLjMxQzkuNTg4IDE0LjY4NyA5IDE1LjI3NSA5IDE2cy41ODggMS4zMTMgMS4zMTMgMS4zMTNoNy45NTRsLTEuODMzIDEuNjVjLS4yNjMuMjQzLS40MzQuNTg3LS40MzQuOTc0IDAgLjcyNS41ODggMS4zMTMgMS4zMTMgMS4zMTMuMzM3IDAgLjY0Mi0uMTMuODc1LS4zNGw0LjM3OC0zLjkzNGMuMjYzLS4yNDQuNDM0LS41ODguNDM0LS45NzZzLS4xNy0uNzMyLS40MzgtLjk3MmwtNC4zNy0zLjk0ek0xNiAyQzguMjY4IDIgMiA4LjI2OCAyIDE2czYuMjY4IDE0IDE0IDE0IDE0LTYuMjY4IDE0LTE0UzIzLjczMiAyIDE2IDJ6bTAgMjUuMzc1QzkuNzE4IDI3LjM3NSA0LjYyNSAyMi4yODIgNC42MjUgMTZTOS43MTggNC42MjUgMTYgNC42MjUgMjcuMzc1IDkuNzE4IDI3LjM3NSAxNiAyMi4yODIgMjcuMzc1IDE2IDI3LjM3NXoiCiAgICAgICAgICBmaWxsPSIjZmZmZmZmIiBvcGFjaXR5PSIwLjgiIGZpbGwtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4=\\\" alt=\\\"next arrow\\\"><\\/div><\\/div><div class=\\\"n2-ss-slider-controls n2-ss-slider-controls-absolute-center-bottom\\\"><div style=\\\"--widget-offset:5px;\\\" class=\\\"n2-ss-widget n2-ss-control-bullet n2-ow-all n2-ss-control-bullet-horizontal\\\"><div class=\\\" nextend-bullet-bar n2-bar-justify-content-center\\\"><div class=\\\"n2-bullet n2-style-37b83350d88fb82e7ea26e8ad7887167-dot \\\" style=\\\"visibility:hidden;\\\"><\\/div><\\/div><\\/div><\\/div><\\/div><\\/div><ss3-loader><\\/ss3-loader><\\/div><\\/div><div class=\\\"n2_clear\\\"><\\/div><\\/div><\\/ss3-force-full-width><\\/div>\",\"assets\":{\"css\":{\"staticGroupPreload\":{\"smartslider\":\"C:\\\\xampp\\\\htdocs\\\\navadristi-eye\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Application\\\\Frontend\\/Assets\\/dist\\/smartslider.min.css\"},\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":{\"n2-ss-1\":\"div#n2-ss-1 .n2-ss-slider-1{display:grid;position:relative;}div#n2-ss-1 .n2-ss-slider-2{display:grid;position:relative;overflow:hidden;padding:0px 0px 0px 0px;border:0px solid RGBA(62,62,62,1);border-radius:0px;background-clip:padding-box;background-repeat:repeat;background-position:50% 50%;background-size:cover;background-attachment:scroll;z-index:1;}div#n2-ss-1:not(.n2-ss-loaded) .n2-ss-slider-2{background-image:none !important;}div#n2-ss-1 .n2-ss-slider-3{display:grid;grid-template-areas:\'cover\';position:relative;overflow:hidden;z-index:10;}div#n2-ss-1 .n2-ss-slider-3 > *{grid-area:cover;}div#n2-ss-1 .n2-ss-slide-backgrounds,div#n2-ss-1 .n2-ss-slider-3 > .n2-ss-divider{position:relative;}div#n2-ss-1 .n2-ss-slide-backgrounds{z-index:10;}div#n2-ss-1 .n2-ss-slide-backgrounds > *{overflow:hidden;}div#n2-ss-1 .n2-ss-slide-background{transform:translateX(-100000px);}div#n2-ss-1 .n2-ss-slider-4{place-self:center;position:relative;width:100%;height:100%;z-index:20;display:grid;grid-template-areas:\'slide\';}div#n2-ss-1 .n2-ss-slider-4 > *{grid-area:slide;}div#n2-ss-1.n2-ss-full-page--constrain-ratio .n2-ss-slider-4{height:auto;}div#n2-ss-1 .n2-ss-slide{display:grid;place-items:center;grid-auto-columns:100%;position:relative;z-index:20;-webkit-backface-visibility:hidden;transform:translateX(-100000px);}div#n2-ss-1 .n2-ss-slide{perspective:1500px;}div#n2-ss-1 .n2-ss-slide-active{z-index:21;}.n2-ss-background-animation{position:absolute;top:0;left:0;width:100%;height:100%;z-index:3;}div#n2-ss-1 .n2-ss-button-container,div#n2-ss-1 .n2-ss-button-container a{display:block;}div#n2-ss-1 .n2-ss-button-container--non-full-width,div#n2-ss-1 .n2-ss-button-container--non-full-width a{display:inline-block;}div#n2-ss-1 .n2-ss-button-container.n2-ss-nowrap{white-space:nowrap;}div#n2-ss-1 .n2-ss-button-container a div{display:inline;font-size:inherit;text-decoration:inherit;color:inherit;line-height:inherit;font-family:inherit;font-weight:inherit;}div#n2-ss-1 .n2-ss-button-container a > div{display:inline-flex;align-items:center;vertical-align:top;}div#n2-ss-1 .n2-ss-button-container span{font-size:100%;vertical-align:baseline;}div#n2-ss-1 .n2-ss-button-container a[data-iconplacement=\\\"left\\\"] span{margin-right:0.3em;}div#n2-ss-1 .n2-ss-button-container a[data-iconplacement=\\\"right\\\"] span{margin-left:0.3em;}div#n2-ss-1 .n2-ss-background-animation{position:absolute;top:0;left:0;width:100%;height:100%;z-index:3;}div#n2-ss-1 .n2-ss-background-animation .n2-ss-slide-background{z-index:auto;}div#n2-ss-1 .n2-bganim-side{position:absolute;left:0;top:0;overflow:hidden;background:RGBA(51,51,51,1);}div#n2-ss-1 .n2-bganim-tile-overlay-colored{z-index:100000;background:RGBA(51,51,51,1);}div#n2-ss-1 .nextend-arrow{cursor:pointer;overflow:hidden;line-height:0 !important;z-index:18;}div#n2-ss-1 .nextend-arrow img{position:relative;display:block;}div#n2-ss-1 .nextend-arrow img.n2-arrow-hover-img{display:none;}div#n2-ss-1 .nextend-arrow:HOVER img.n2-arrow-hover-img{display:inline;}div#n2-ss-1 .nextend-arrow:HOVER img.n2-arrow-normal-img{display:none;}div#n2-ss-1 .nextend-arrow-animated{overflow:hidden;}div#n2-ss-1 .nextend-arrow-animated > div{position:relative;}div#n2-ss-1 .nextend-arrow-animated .n2-active{position:absolute;}div#n2-ss-1 .nextend-arrow-animated-fade{transition:background 0.3s, opacity 0.4s;}div#n2-ss-1 .nextend-arrow-animated-horizontal > div{transition:all 0.4s;transform:none;}div#n2-ss-1 .nextend-arrow-animated-horizontal .n2-active{top:0;}div#n2-ss-1 .nextend-arrow-previous.nextend-arrow-animated-horizontal .n2-active{left:100%;}div#n2-ss-1 .nextend-arrow-next.nextend-arrow-animated-horizontal .n2-active{right:100%;}div#n2-ss-1 .nextend-arrow-previous.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-1 .nextend-arrow-previous.nextend-arrow-animated-horizontal:FOCUS > div{transform:translateX(-100%);}div#n2-ss-1 .nextend-arrow-next.nextend-arrow-animated-horizontal:HOVER > div,div#n2-ss-1 .nextend-arrow-next.nextend-arrow-animated-horizontal:FOCUS > div{transform:translateX(100%);}div#n2-ss-1 .nextend-arrow-animated-vertical > div{transition:all 0.4s;transform:none;}div#n2-ss-1 .nextend-arrow-animated-vertical .n2-active{left:0;}div#n2-ss-1 .nextend-arrow-previous.nextend-arrow-animated-vertical .n2-active{top:100%;}div#n2-ss-1 .nextend-arrow-next.nextend-arrow-animated-vertical .n2-active{bottom:100%;}div#n2-ss-1 .nextend-arrow-previous.nextend-arrow-animated-vertical:HOVER > div,div#n2-ss-1 .nextend-arrow-previous.nextend-arrow-animated-vertical:FOCUS > div{transform:translateY(-100%);}div#n2-ss-1 .nextend-arrow-next.nextend-arrow-animated-vertical:HOVER > div,div#n2-ss-1 .nextend-arrow-next.nextend-arrow-animated-vertical:FOCUS > div{transform:translateY(100%);}div#n2-ss-1 .n2-ss-control-bullet{visibility:hidden;text-align:center;justify-content:center;z-index:14;}div#n2-ss-1 .n2-ss-control-bullet--calculate-size{left:0 !important;}div#n2-ss-1 .n2-ss-control-bullet-horizontal.n2-ss-control-bullet-fullsize{width:100%;}div#n2-ss-1 .n2-ss-control-bullet-vertical.n2-ss-control-bullet-fullsize{height:100%;flex-flow:column;}div#n2-ss-1 .nextend-bullet-bar{display:inline-flex;vertical-align:top;visibility:visible;align-items:center;flex-wrap:wrap;}div#n2-ss-1 .n2-bar-justify-content-left{justify-content:flex-start;}div#n2-ss-1 .n2-bar-justify-content-center{justify-content:center;}div#n2-ss-1 .n2-bar-justify-content-right{justify-content:flex-end;}div#n2-ss-1 .n2-ss-control-bullet-vertical > .nextend-bullet-bar{flex-flow:column;}div#n2-ss-1 .n2-ss-control-bullet-fullsize > .nextend-bullet-bar{display:flex;}div#n2-ss-1 .n2-ss-control-bullet-horizontal.n2-ss-control-bullet-fullsize > .nextend-bullet-bar{flex:1 1 auto;}div#n2-ss-1 .n2-ss-control-bullet-vertical.n2-ss-control-bullet-fullsize > .nextend-bullet-bar{height:100%;}div#n2-ss-1 .nextend-bullet-bar .n2-bullet{cursor:pointer;transition:background-color 0.4s;}div#n2-ss-1 .nextend-bullet-bar .n2-bullet.n2-active{cursor:default;}div#n2-ss-1 div.n2-ss-bullet-thumbnail-container{position:absolute;z-index:10000000;}div#n2-ss-1 .n2-ss-bullet-thumbnail-container .n2-ss-bullet-thumbnail{background-size:cover;background-repeat:no-repeat;background-position:center;}div#n2-ss-1 .n-uc-Fjvyu081qJeK-inner{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n-uc-Fjvyu081qJeK-inner:HOVER{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n2-font-5637a8b948df8ee067edce6ad3c4141e-hover{font-family: \'Roboto\';color: #ffffff;font-size:193.75%;text-shadow: none;line-height: 1.2;font-weight: normal;font-style: normal;text-decoration: none;text-align: inherit;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: normal;}div#n2-ss-1 .n2-style-7d7ff5cd3a0a012481ce7e05f24081d1-heading{background: RGBA(255,255,255,0.06);opacity:1;padding:0px 0px 0px 0px ;box-shadow: none;border-width: 0px;border-style: solid;border-color: #000000; border-color: RGBA(0,0,0,1);border-radius:0px;}div#n2-ss-1 .n2-font-b38b989ec0dabcaa6803483b36dbdc8e-hover{font-family: \'Roboto\';color: RGBA(255,255,255,0.96);font-size:268.75%;text-shadow: none;line-height: 1.5;font-weight: normal;font-style: normal;text-decoration: none;text-align: inherit;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: bold;}div#n2-ss-1 .n2-font-eff2aced2781d2712e1951a8ee5e5a94-link a{font-family: \'Roboto\';color: #ffffff;font-size:87.5%;text-shadow: none;line-height: 1.5;font-weight: normal;font-style: normal;text-decoration: none;text-align: center;letter-spacing: 1px;word-spacing: normal;text-transform: none;font-weight: bold;}div#n2-ss-1 .n2-font-eff2aced2781d2712e1951a8ee5e5a94-link a:HOVER, div#n2-ss-1 .n2-font-eff2aced2781d2712e1951a8ee5e5a94-link a:ACTIVE, div#n2-ss-1 .n2-font-eff2aced2781d2712e1951a8ee5e5a94-link a:FOCUS{color: #0568f6;}div#n2-ss-1 .n2-style-771503a848f3e267c98f8cc9614a667b-heading{background: #0568f6;opacity:1;padding:1em 2em 1em 2em ;box-shadow: none;border-width: 0px;border-style: solid;border-color: #000000; border-color: RGBA(0,0,0,1);border-radius:5px;}div#n2-ss-1 .n2-style-771503a848f3e267c98f8cc9614a667b-heading:Hover, div#n2-ss-1 .n2-style-771503a848f3e267c98f8cc9614a667b-heading:ACTIVE, div#n2-ss-1 .n2-style-771503a848f3e267c98f8cc9614a667b-heading:FOCUS{background: #ffffff;}div#n2-ss-1 .n-uc-LnImbm1HgUAv-inner{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n-uc-LnImbm1HgUAv-inner:HOVER{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4-inner{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4-inner:HOVER{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n2-font-ce74a14e2dab7dae8cfd9865f92c4844-hover{font-family: \'Roboto\';color: #ffffff;font-size:225%;text-shadow: none;line-height: 1.2;font-weight: normal;font-style: normal;text-decoration: none;text-align: inherit;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: bold;}div#n2-ss-1 .n2-font-146c2cd14462980147366a7ab745761a-hover{font-family: \'Roboto\';color: #ffffff;font-size:150%;text-shadow: none;line-height: 1.5;font-weight: normal;font-style: normal;text-decoration: none;text-align: inherit;letter-spacing: normal;word-spacing: normal;text-transform: none;font-weight: 300;}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp-inner{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp-inner:HOVER{border-width:0px 0px 0px 0px ;border-style:solid;border-color:RGBA(255,255,255,1);}div#n2-ss-1 .n2-style-bb2f06d992c6eebb561ff14ff3334bfa-heading{background: RGBA(0,0,0,0);opacity:1;padding:5px 5px 5px 5px ;box-shadow: none;border-width: 0px;border-style: solid;border-color: #000000; border-color: RGBA(0,0,0,1);border-radius:3px;}div#n2-ss-1 .n2-style-bb2f06d992c6eebb561ff14ff3334bfa-heading:Hover, div#n2-ss-1 .n2-style-bb2f06d992c6eebb561ff14ff3334bfa-heading:ACTIVE, div#n2-ss-1 .n2-style-bb2f06d992c6eebb561ff14ff3334bfa-heading:FOCUS{background: #42b3e5;}div#n2-ss-1 .n2-style-37b83350d88fb82e7ea26e8ad7887167-dot{background: RGBA(0,0,0,0);opacity:1;padding:5px 5px 5px 5px ;box-shadow: none;border-width: 2px;border-style: solid;border-color: #ffffff; border-color: RGBA(255,255,255,0.8);border-radius:50px;margin: 4px;}div#n2-ss-1 .n2-style-37b83350d88fb82e7ea26e8ad7887167-dot.n2-active, div#n2-ss-1 .n2-style-37b83350d88fb82e7ea26e8ad7887167-dot:HOVER, div#n2-ss-1 .n2-style-37b83350d88fb82e7ea26e8ad7887167-dot:FOCUS{background: RGBA(255,255,255,0.8);border-width: 2px;border-style: solid;border-color: #ffffff; border-color: RGBA(255,255,255,0.8);}div#n2-ss-1 .n2-ss-slide-limiter{max-width:1200px;}div#n2-ss-1 .n-uc-Ydf7sDj8iher{padding:10px 60px 10px 60px}div#n2-ss-1 .n-uc-IbNOabpfT5aE-inner{padding:0px 0px 0px 0px;justify-content:center}div#n2-ss-1 .n-uc-IbNOabpfT5aE{max-width: 1120px;align-self:center;}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner > .n2-ss-layer-row-inner{width:calc(100% + 1px);margin:-0px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner > .n2-ss-layer-row-inner > .n2-ss-layer[data-sstype=\\\"col\\\"]{margin:0px}div#n2-ss-1 .n-uc-Fjvyu081qJeK-inner{padding:10px 10px 10px 10px;text-align:left;--ssselfalign:var(--ss-fs);;justify-content:center}div#n2-ss-1 .n-uc-Fjvyu081qJeK{width:calc(40% - 0px)}div#n2-ss-1 .n-uc-mcEKZxDFu9vp{--margin-top:20px}div#n2-ss-1 .n-uc-LnImbm1HgUAv-inner{padding:0px 0px 0px 0px;text-align:right;--ssselfalign:var(--ss-fe);;justify-content:center}div#n2-ss-1 .n-uc-LnImbm1HgUAv{max-width: 355px;width:calc(60% - 0px)}div#n2-ss-1 .n-uc-J8qr29QWU8Sl{padding:10px 60px 10px 60px}div#n2-ss-1 .n-uc-TPnUuKlAWVoC-inner{padding:0px 0px 0px 0px;justify-content:center}div#n2-ss-1 .n-uc-TPnUuKlAWVoC{max-width: 1120px;align-self:center;}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner > .n2-ss-layer-row-inner{width:calc(100% + 1px);margin:-0px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner > .n2-ss-layer-row-inner > .n2-ss-layer[data-sstype=\\\"col\\\"]{margin:0px}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4-inner{padding:10px 10px 10px 10px;text-align:left;--ssselfalign:var(--ss-fs);;justify-content:center}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4{width:calc(40% - 0px)}div#n2-ss-1 .n-uc-3kAta16ZTdak{--margin-top:20px}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp-inner{padding:0px 0px 0px 0px;text-align:left;--ssselfalign:var(--ss-fs);;justify-content:center}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp{max-width: 365px;width:calc(60% - 0px)}div#n2-ss-1 .nextend-arrow img{width: 26px}@media (min-width: 1200px){div#n2-ss-1 [data-hide-desktopportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 1199px) and (min-width: 901px),(orientation: portrait) and (max-width: 1199px) and (min-width: 701px){div#n2-ss-1 .n-uc-Ydf7sDj8iher{padding:10px 50px 10px 50px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner > .n2-ss-layer-row-inner{width:calc(100% + 21px);margin:-10px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner > .n2-ss-layer-row-inner > .n2-ss-layer[data-sstype=\\\"col\\\"]{margin:10px}div#n2-ss-1 .n-uc-Fjvyu081qJeK-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-Fjvyu081qJeK{width:calc(40% - 20px)}div#n2-ss-1 .n-uc-3mzb1VSIQj1x{--ssfont-scale:0.8}div#n2-ss-1 .n-uc-fANmBupAl6pB{--ssfont-scale:0.8}div#n2-ss-1 .n-uc-mcEKZxDFu9vp{--ssfont-scale:0.8}div#n2-ss-1 .n-uc-LnImbm1HgUAv{width:calc(60% - 20px)}div#n2-ss-1 .n-uc-J8qr29QWU8Sl{padding:10px 50px 10px 50px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner > .n2-ss-layer-row-inner{width:calc(100% + 21px);margin:-10px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner > .n2-ss-layer-row-inner > .n2-ss-layer[data-sstype=\\\"col\\\"]{margin:10px}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4{width:calc(40% - 20px)}div#n2-ss-1 .n-uc-gp210h4Fy7Mz{--ssfont-scale:0.8}div#n2-ss-1 .n-uc-GNYgjqt1wtlW{--ssfont-scale:0.8}div#n2-ss-1 .n-uc-3kAta16ZTdak{--ssfont-scale:0.8}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp{width:calc(60% - 20px)}div#n2-ss-1 [data-hide-tabletportrait=\\\"1\\\"]{display: none !important;}}@media (orientation: landscape) and (max-width: 900px),(orientation: portrait) and (max-width: 700px){div#n2-ss-1 .n-uc-Ydf7sDj8iher{padding:10px 10px 35px 10px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner{padding:0px 0px 0px 0px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner > .n2-ss-layer-row-inner{width:calc(100% + 21px);margin:-10px;flex-wrap:wrap;}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ-inner > .n2-ss-layer-row-inner > .n2-ss-layer[data-sstype=\\\"col\\\"]{margin:10px}div#n2-ss-1 .n-uc-dtwtw9DVCwgQ{max-width:400px}div#n2-ss-1 .n-uc-Fjvyu081qJeK-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-Fjvyu081qJeK{order: 2;width:calc(100% - 20px)}div#n2-ss-1 .n-uc-3mzb1VSIQj1x{--ssfont-scale:0.6}div#n2-ss-1 .n-uc-fANmBupAl6pB{--ssfont-scale:0.7}div#n2-ss-1 .n-uc-mcEKZxDFu9vp{--margin-top:10px;--ssfont-scale:0.8}div#n2-ss-1 .n-uc-LnImbm1HgUAv-inner{text-align:center;--ssselfalign:center;}div#n2-ss-1 .n-uc-LnImbm1HgUAv{order: 1;width:calc(100% - 20px)}div#n2-ss-1 .n-uc-J8qr29QWU8Sl{padding:10px 10px 35px 10px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner{padding:0px 0px 0px 0px}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner > .n2-ss-layer-row-inner{width:calc(100% + 21px);margin:-10px;flex-wrap:wrap;}div#n2-ss-1 .n-uc-NmnNQvKK01kO-inner > .n2-ss-layer-row-inner > .n2-ss-layer[data-sstype=\\\"col\\\"]{margin:10px}div#n2-ss-1 .n-uc-NmnNQvKK01kO{max-width:400px}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4-inner{padding:10px 0px 10px 0px}div#n2-ss-1 .n-uc-R5Jkk06Nmzr4{order: 2;width:calc(100% - 20px)}div#n2-ss-1 .n-uc-gp210h4Fy7Mz{--ssfont-scale:0.6}div#n2-ss-1 .n-uc-GNYgjqt1wtlW{--ssfont-scale:0.7}div#n2-ss-1 .n-uc-3kAta16ZTdak{--margin-top:10px;--ssfont-scale:0.8}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp-inner{text-align:center;--ssselfalign:center;}div#n2-ss-1 .n-uc-iYi6ZKk8yeVp{order: 1;width:calc(100% - 20px)}div#n2-ss-1 [data-hide-mobileportrait=\\\"1\\\"]{display: none !important;}div#n2-ss-1 .nextend-arrow img{width: 16px}}\"},\"globalInline\":[]},\"less\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"js\":{\"staticGroupPreload\":[],\"staticGroup\":{\"smartslider-frontend\":\"C:\\\\xampp\\\\htdocs\\\\navadristi-eye\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Application\\\\Frontend\\/Assets\\/dist\\/smartslider-frontend.min.js\",\"ss-simple\":\"C:\\\\xampp\\\\htdocs\\\\navadristi-eye\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Slider\\\\SliderType\\\\Simple\\/Assets\\/dist\\/ss-simple.min.js\",\"smartslider-backgroundanimation\":\"C:\\\\xampp\\\\htdocs\\\\navadristi-eye\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Slider\\\\SliderType\\\\Simple\\/Assets\\/dist\\/smartslider-backgroundanimation.min.js\",\"w-arrow-image\":\"C:\\\\xampp\\\\htdocs\\\\navadristi-eye\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Widget\\\\Arrow\\\\ArrowImage\\/Assets\\/dist\\/w-arrow-image.min.js\",\"w-bullet\":\"C:\\\\xampp\\\\htdocs\\\\navadristi-eye\\\\wp-content\\\\plugins\\\\smart-slider-3\\\\Public\\\\SmartSlider3\\\\Widget\\\\Bullet\\/Assets\\/dist\\/w-bullet.min.js\"},\"files\":[],\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[\"_N2.r([\\\"documentReady\\\",\\\"smartslider-frontend\\\",\\\"smartslider-backgroundanimation\\\",\\\"SmartSliderWidgetArrowImage\\\",\\\"SmartSliderWidgetBulletTransition\\\",\\\"ss-simple\\\"],function(){new _N2.SmartSliderSimple(\'n2-ss-1\', {\\\"admin\\\":false,\\\"callbacks\\\":\\\"\\\",\\\"background.video.mobile\\\":1,\\\"alias\\\":{\\\"id\\\":0,\\\"smoothScroll\\\":0,\\\"slideSwitch\\\":0,\\\"scroll\\\":1},\\\"align\\\":\\\"normal\\\",\\\"isDelayed\\\":0,\\\"responsive\\\":{\\\"mediaQueries\\\":{\\\"all\\\":false,\\\"desktopportrait\\\":[\\\"(min-width: 1200px)\\\"],\\\"tabletportrait\\\":[\\\"(orientation: landscape) and (max-width: 1199px) and (min-width: 901px)\\\",\\\"(orientation: portrait) and (max-width: 1199px) and (min-width: 701px)\\\"],\\\"mobileportrait\\\":[\\\"(orientation: landscape) and (max-width: 900px)\\\",\\\"(orientation: portrait) and (max-width: 700px)\\\"]},\\\"base\\\":{\\\"slideOuterWidth\\\":1200,\\\"slideOuterHeight\\\":700,\\\"sliderWidth\\\":1200,\\\"sliderHeight\\\":700,\\\"slideWidth\\\":1200,\\\"slideHeight\\\":700},\\\"hideOn\\\":{\\\"desktopLandscape\\\":false,\\\"desktopPortrait\\\":false,\\\"tabletLandscape\\\":false,\\\"tabletPortrait\\\":false,\\\"mobileLandscape\\\":false,\\\"mobilePortrait\\\":false},\\\"onResizeEnabled\\\":true,\\\"type\\\":\\\"fullwidth\\\",\\\"sliderHeightBasedOn\\\":\\\"real\\\",\\\"focusUser\\\":1,\\\"focusEdge\\\":\\\"auto\\\",\\\"breakpoints\\\":[{\\\"device\\\":\\\"tabletPortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":1199,\\\"landscapeWidth\\\":1199},{\\\"device\\\":\\\"mobilePortrait\\\",\\\"type\\\":\\\"max-screen-width\\\",\\\"portraitWidth\\\":700,\\\"landscapeWidth\\\":900}],\\\"enabledDevices\\\":{\\\"desktopLandscape\\\":0,\\\"desktopPortrait\\\":1,\\\"tabletLandscape\\\":0,\\\"tabletPortrait\\\":1,\\\"mobileLandscape\\\":0,\\\"mobilePortrait\\\":1},\\\"sizes\\\":{\\\"desktopPortrait\\\":{\\\"width\\\":1200,\\\"height\\\":700,\\\"max\\\":3000,\\\"min\\\":1200},\\\"tabletPortrait\\\":{\\\"width\\\":701,\\\"height\\\":408,\\\"customHeight\\\":false,\\\"max\\\":1199,\\\"min\\\":701},\\\"mobilePortrait\\\":{\\\"width\\\":320,\\\"height\\\":186,\\\"customHeight\\\":false,\\\"max\\\":900,\\\"min\\\":320}},\\\"overflowHiddenPage\\\":0,\\\"focus\\\":{\\\"offsetTop\\\":\\\"#wpadminbar\\\",\\\"offsetBottom\\\":\\\"\\\"}},\\\"controls\\\":{\\\"mousewheel\\\":0,\\\"touch\\\":\\\"horizontal\\\",\\\"keyboard\\\":1,\\\"blockCarouselInteraction\\\":1},\\\"playWhenVisible\\\":1,\\\"playWhenVisibleAt\\\":0.5,\\\"lazyLoad\\\":0,\\\"lazyLoadNeighbor\\\":0,\\\"blockrightclick\\\":0,\\\"maintainSession\\\":0,\\\"autoplay\\\":{\\\"enabled\\\":0,\\\"start\\\":1,\\\"duration\\\":8000,\\\"autoplayLoop\\\":1,\\\"allowReStart\\\":0,\\\"pause\\\":{\\\"click\\\":1,\\\"mouse\\\":\\\"0\\\",\\\"mediaStarted\\\":1},\\\"resume\\\":{\\\"click\\\":0,\\\"mouse\\\":\\\"0\\\",\\\"mediaEnded\\\":1,\\\"slidechanged\\\":0},\\\"interval\\\":1,\\\"intervalModifier\\\":\\\"loop\\\",\\\"intervalSlide\\\":\\\"current\\\"},\\\"perspective\\\":1500,\\\"layerMode\\\":{\\\"playOnce\\\":0,\\\"playFirstLayer\\\":1,\\\"mode\\\":\\\"skippable\\\",\\\"inAnimation\\\":\\\"mainInEnd\\\"},\\\"bgAnimations\\\":{\\\"global\\\":[{\\\"type\\\":\\\"Flat\\\",\\\"tiles\\\":{\\\"delay\\\":0,\\\"sequence\\\":\\\"ForwardDiagonal\\\"},\\\"main\\\":{\\\"type\\\":\\\"both\\\",\\\"duration\\\":1,\\\"zIndex\\\":2,\\\"current\\\":{\\\"ease\\\":\\\"easeOutCubic\\\",\\\"opacity\\\":0}}},{\\\"type\\\":\\\"Flat\\\",\\\"rows\\\":5,\\\"columns\\\":7,\\\"tiles\\\":{\\\"delay\\\":1,\\\"sequence\\\":\\\"Random\\\"},\\\"main\\\":{\\\"type\\\":\\\"next\\\",\\\"duration\\\":0.8,\\\"next\\\":{\\\"ease\\\":\\\"easeInQuart\\\",\\\"opacity\\\":0}}}],\\\"color\\\":\\\"RGBA(51,51,51,1)\\\",\\\"speed\\\":\\\"normal\\\"},\\\"mainanimation\\\":{\\\"type\\\":\\\"fade\\\",\\\"duration\\\":500,\\\"delay\\\":0,\\\"ease\\\":\\\"easeOutQuad\\\",\\\"shiftedBackgroundAnimation\\\":0},\\\"carousel\\\":1,\\\"initCallbacks\\\":function(){new _N2.SmartSliderWidgetArrowImage(this);new _N2.SmartSliderWidgetBulletTransition(this, {\\\"area\\\":10,\\\"dotClasses\\\":\\\"n2-style-37b83350d88fb82e7ea26e8ad7887167-dot \\\",\\\"mode\\\":\\\"\\\",\\\"action\\\":\\\"click\\\"});}});});\"],\"globalInline\":[]},\"googleFonts\":{\"staticGroupPreload\":[],\"staticGroup\":[],\"files\":{\"Roboto\":[\"300\",\"400\"]},\"urls\":[],\"codes\":[],\"firstCodes\":[],\"inline\":[],\"globalInline\":[]},\"image\":{\"images\":[\"\\/\\/localhost\\/navadristi-eye\\/wp-content\\/uploads\\/2021\\/09\\/01_header.jpg\",\"\\/\\/localhost\\/navadristi-eye\\/wp-content\\/uploads\\/2021\\/09\\/02_header.jpg\",\"\\/\\/localhost\\/navadristi-eye\\/wp-content\\/uploads\\/2021\\/09\\/03_header.jpg\"]}}}', 0, 1),
(10361, 'cache', 'notweb/n2-ss-1', 'data.manifest', '{\"generator\":[]}', 0, 1),
(10362, 'cache', 'notweb/n2-ss-1', 'variations.manifest', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

CREATE TABLE `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL,
  `group` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `status`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Tutorial Slider', 'simple', '{\"aria-label\":\"Slider\",\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"alias-slideswitch-scroll\":\"1\",\"align\":\"normal\",\"margin\":\"0|*|0|*|0|*|0\",\"width\":\"1200\",\"height\":\"700\",\"responsiveLimitSlideWidth\":\"1\",\"responsiveSlideWidth\":\"0\",\"responsiveSlideWidthMax\":\"3000\",\"responsiveSlideWidthTablet\":\"0\",\"responsiveSlideWidthMaxTablet\":\"3000\",\"responsiveSlideWidthMobile\":\"0\",\"responsiveSlideWidthMaxMobile\":\"480\",\"responsive-breakpoint-tablet-portrait\":\"1199\",\"responsive-breakpoint-tablet-portrait-landscape\":\"1199\",\"responsive-breakpoint-mobile-portrait\":\"700\",\"responsive-breakpoint-mobile-portrait-landscape\":\"900\",\"responsive-breakpoint-tablet-portrait-enabled\":\"1\",\"responsive-breakpoint-mobile-portrait-enabled\":\"1\",\"responsive-breakpoint-global\":\"0\",\"breakpoints-orientation\":\"portrait\",\"responsive-mode\":\"fullwidth\",\"responsiveSliderHeightMin\":\"0\",\"responsiveForceFull\":\"1\",\"responsiveForceFullOverflowX\":\"body\",\"responsiveForceFullHorizontalSelector\":\"body\",\"controlsTouch\":\"horizontal\",\"controlsScroll\":\"0\",\"controlsKeyboard\":\"1\",\"widget-arrow-enabled\":\"1\",\"widgetarrow\":\"imageSmallRectangle\",\"widget-arrow-previous\":\"circle-stroke.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"42b3e5ff\\\"}]}\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widget-arrow-base64\":\"1\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-display-mobileportrait\":\"0\",\"widget-arrow-display-tabletportrait\":\"1\",\"widget-arrow-display-desktopportrait\":\"1\",\"widget-bullet-enabled\":\"1\",\"widgetbullet\":\"transition\",\"widget-bullet-position-area\":\"10\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"5\",\"widget-bullet-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"5|*|5|*|5|*|5|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\",\\\"borderradius\\\":\\\"50\\\",\\\"extra\\\":\\\"margin: 4px;\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffcc\\\",\\\"border\\\":\\\"2|*|solid|*|ffffffcc\\\"}]}\",\"widget-bullet-bar\":\"\",\"widget-bullet-thumbnail-show-image\":\"0\",\"widget-bullet-thumbnail-width\":\"60\",\"widget-bullet-thumbnail-height\":\"60\",\"widget-bullet-thumbnail-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000080\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"margin: 5px;\\\"}]}\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-display-mobileportrait\":\"1\",\"widget-bullet-display-tabletportrait\":\"1\",\"widget-bullet-display-desktopportrait\":\"1\",\"widget-bar-enabled\":\"0\",\"widgetbar\":\"horizontal\",\"widget-bar-position-area\":\"10\",\"widget-bar-position-stack\":\"1\",\"widget-bar-position-offset\":\"30\",\"widget-bar-animate\":\"0\",\"widget-bar-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"5|*|20|*|5|*|20|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"40\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-bar-show-title\":\"1\",\"widget-bar-font-title\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-show-description\":\"1\",\"widget-bar-font-description\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000c7\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":1,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\",\\\"extra\\\":\\\"vertical-align: middle;\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"Raleway,Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-bar-slide-count\":\"0\",\"widget-bar-full-width\":\"0\",\"widget-bar-separator\":\" - \",\"widget-bar-align\":\"center\",\"widget-bar-display-hover\":\"0\",\"widget-bar-display-mobileportrait\":\"1\",\"widget-bar-display-tabletportrait\":\"1\",\"widget-bar-display-desktopportrait\":\"1\",\"widget-thumbnail-enabled\":\"0\",\"widgetthumbnail\":\"default\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widget-thumbnail-tablet-width\":\"100\",\"widget-thumbnail-tablet-height\":\"60\",\"widget-thumbnail-mobile-width\":\"100\",\"widget-thumbnail-mobile-height\":\"60\",\"widget-thumbnail-position-area\":\"12\",\"widget-thumbnail-position-stack\":\"1\",\"widget-thumbnail-position-offset\":\"0\",\"widget-thumbnail-align-content\":\"start\",\"widget-thumbnail-style-bar\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"242424ff\\\",\\\"padding\\\":\\\"3|*|3|*|3|*|3|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-style-slides\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"00000000\\\",\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|ffffff00\\\",\\\"borderradius\\\":\\\"0\\\",\\\"opacity\\\":\\\"40\\\",\\\"extra\\\":\\\"margin: 3px;\\r\\ntransition: all 0.4s;\\r\\nbackground-size: cover;\\\"},{\\\"border\\\":\\\"0|*|solid|*|ffffffcc\\\",\\\"opacity\\\":\\\"100\\\",\\\"extra\\\":\\\"\\\"}]}\",\"widget-thumbnail-title-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"3|*|10|*|3|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\",\\\"extra\\\":\\\"bottom: 0;\\r\\nleft: 0;\\\"}]}\",\"widget-thumbnail-title\":\"0\",\"widget-thumbnail-title-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-description\":\"0\",\"widget-thumbnail-description-font\":\"{\\\"data\\\":[{\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"12||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ab\\\",\\\"afont\\\":\\\"Montserrat\\\",\\\"lineheight\\\":\\\"1.3\\\",\\\"bold\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"left\\\"},{\\\"color\\\":\\\"fc2828ff\\\",\\\"afont\\\":\\\"google(@import url(http:\\/\\/fonts.googleapis.com\\/css?family=Raleway);),Arial\\\",\\\"size\\\":\\\"25||px\\\"},{}]}\",\"widget-thumbnail-caption-placement\":\"overlay\",\"widget-thumbnail-caption-size\":\"100\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-display-mobileportrait\":\"1\",\"widget-thumbnail-display-tabletportrait\":\"1\",\"widget-thumbnail-display-desktopportrait\":\"1\",\"widget-shadow-enabled\":\"0\",\"widgetshadow\":\"shadow\",\"widget-shadow-shadow\":\"dark.png\",\"widget-shadow-display-mobileportrait\":\"1\",\"widget-shadow-display-tabletportrait\":\"1\",\"widget-shadow-display-desktopportrait\":\"1\",\"animation\":\"fade\",\"animation-duration\":\"500\",\"background-animation\":\"1013||1024\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"autoplay\":\"0\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"autoplayResumeClick\":\"0\",\"autoplayResumeMouse\":\"0\",\"autoplayResumeMedia\":\"1\",\"widget-autoplay-enabled\":\"0\",\"widgetautoplay\":\"image\",\"widget-autoplay-play\":\"small-light.svg\",\"widget-autoplay-play-color\":\"ffffffcc\",\"widget-autoplay-style\":\"{\\\"data\\\":[{\\\"backgroundcolor\\\":\\\"000000ab\\\",\\\"padding\\\":\\\"10|*|10|*|10|*|10|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"3\\\",\\\"extra\\\":\\\"\\\"},{\\\"backgroundcolor\\\":\\\"000000ab\\\"}]}\",\"widget-autoplay-position-area\":\"4\",\"widget-autoplay-position-stack\":\"1\",\"widget-autoplay-position-offset\":\"15\",\"widget-autoplay-display-hover\":\"0\",\"widget-autoplay-display-mobileportrait\":\"1\",\"widget-autoplay-display-tabletportrait\":\"1\",\"widget-autoplay-display-desktopportrait\":\"1\",\"loading-type\":\"\",\"delay\":\"0\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"optimize-scale\":\"0\",\"optimize-quality\":\"70\",\"optimize-slide-width-normal\":\"1920\",\"optimize-thumbnail-scale\":\"0\",\"optimize-thumbnail-quality\":\"70\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"backgroundMode\":\"fill\",\"controlsBlockCarouselInteraction\":\"1\",\"clear-both\":\"1\",\"clear-both-after\":\"1\",\"overflow-hidden-page\":\"0\",\"responsiveFocusUser\":\"1\",\"responsiveFocusEdge\":\"auto\",\"is-delayed\":\"0\",\"legacy-font-scale\":\"0\",\"classes\":\"\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"related-posts\":\"\",\"version\":\"3.5.0.11\"}', 'published', '2020-02-25 13:53:41', 'https://smartslider3.com/wp-content/uploads/slider404/tutorialsliderthumbnail-1.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

CREATE TABLE `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

CREATE TABLE `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide Background', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-IbNOabpfT5aE\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-dtwtw9DVCwgQ\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"aria-label\":\"\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-Fjvyu081qJeK\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"aria-label\":\"\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"n-uc-3mzb1VSIQj1x\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"31||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":0,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffff0e\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"0|*|0|*|0|*|0|*|px\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"0\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"We are here for your care\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":1,\"split-text-animation-in\":\"\",\"split-text-delay-in\":0,\"split-text-animation-out\":\"\",\"split-text-delay-out\":0,\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"n-uc-fANmBupAl6pB\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"fffffff4\\\",\\\"size\\\":\\\"43||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Best Care & Better Doctors\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":1,\"split-text-animation-in\":\"\",\"split-text-delay-in\":0,\"split-text-animation-out\":\"\",\"split-text-delay-out\":0,\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"n-uc-mcEKZxDFu9vp\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"View More\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":355,\"desktopportraitinneralign\":\"right\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-LnImbm1HgUAv\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"aria-label\":\"\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[]}]}]}]', '', '$upload$/2021/09/01_header.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailAlt\":\"\",\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"aria-label\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2021/09/01_header.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.5.0.11\"}', 1, 0),
(2, 'Build & Design', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[{\"type\":\"content\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":1120,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitselfalign\":\"center\",\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-TPnUuKlAWVoC\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"layers\":[{\"type\":\"row\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"desktopportraitgutter\":0,\"desktopportraitwrapafter\":0,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"tabletportraitgutter\":20,\"mobileportraitinneralign\":\"inherit\",\"mobileportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"mobileportraitgutter\":20,\"mobileportraitwrapafter\":1,\"mobileportraitmaxwidth\":400,\"mobileportraitselfalign\":\"inherit\",\"mobilelandscapewrapafter\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-NmnNQvKK01kO\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"_self\",\"aria-label\":\"\",\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"ffffff00\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"borderwidth\":\"1|*|1|*|1|*|1\",\"borderstyle\":\"none\",\"bordercolor\":\"FFFFFFFF\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"fullwidth\":1,\"stretch\":0,\"name\":\"Row\",\"namesynced\":1,\"cols\":[{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px\",\"desktopportraitorder\":0,\"tabletportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitmaxwidth\":0,\"mobileportraitinneralign\":\"left\",\"mobileportraitpadding\":\"10|*|0|*|10|*|0|*|px\",\"mobileportraitorder\":2,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-R5Jkk06Nmzr4\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"colwidth\":\"2/5\",\"href\":\"\",\"href-target\":\"_self\",\"aria-label\":\"\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":60,\"id\":\"\",\"uniqueclass\":\"n-uc-gp210h4Fy7Mz\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"36||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.2\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Smarter Care, Together\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":1,\"split-text-animation-in\":\"\",\"split-text-delay-in\":0,\"split-text-animation-out\":\"\",\"split-text-delay-out\":0,\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":70,\"id\":\"\",\"uniqueclass\":\"n-uc-GNYgjqt1wtlW\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"24||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":300,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"inherit\\\",\\\"letterspacing\\\":\\\"normal\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\"}]}\",\"style\":\"\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"heading\":\"Be Attentive To Your health\",\"title\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"split-text-backface-visibility\":1,\"split-text-animation-in\":\"\",\"split-text-delay-in\":0,\"split-text-animation-out\":\"\",\"split-text-delay-out\":0,\"class\":\"\"}}},{\"type\":\"layer\",\"pm\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"tabletportraitfontsize\":80,\"mobileportraitfontsize\":80,\"mobileportraitmargin\":\"10|*|0|*|0|*|0|*|px\",\"id\":\"\",\"uniqueclass\":\"n-uc-3kAta16ZTdak\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"font\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"ffffffff\\\",\\\"size\\\":\\\"14||px\\\",\\\"tshadow\\\":\\\"0|*|0|*|0|*|000000ff\\\",\\\"afont\\\":\\\"Roboto\\\",\\\"lineheight\\\":\\\"1.5\\\",\\\"weight\\\":1,\\\"italic\\\":0,\\\"underline\\\":0,\\\"align\\\":\\\"center\\\",\\\"letterspacing\\\":\\\"1px\\\",\\\"wordspacing\\\":\\\"normal\\\",\\\"texttransform\\\":\\\"none\\\"},{\\\"extra\\\":\\\"\\\",\\\"color\\\":\\\"0568f6ff\\\"}]}\",\"style\":\"{\\\"data\\\":[{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"0568f6ff\\\",\\\"opacity\\\":100,\\\"padding\\\":\\\"1|*|2|*|1|*|2|*|em\\\",\\\"boxshadow\\\":\\\"0|*|0|*|0|*|0|*|000000ff\\\",\\\"border\\\":\\\"0|*|solid|*|000000ff\\\",\\\"borderradius\\\":\\\"5\\\"},{\\\"extra\\\":\\\"\\\",\\\"backgroundcolor\\\":\\\"ffffffff\\\"}]}\",\"content\":\"View More\",\"nowrap\":\"1\",\"fullwidth\":\"0\",\"href\":\"NextSlide[]\",\"href-target\":\"_self\",\"href-rel\":\"\",\"class\":\"\",\"icon\":\"\",\"iconsize\":\"100\",\"iconspacing\":\"30\",\"iconplacement\":\"left\"}}}]},{\"type\":\"col\",\"pm\":\"default\",\"desktopportraitfontsize\":100,\"desktopportraitverticalalign\":\"center\",\"desktopportraitmaxwidth\":365,\"desktopportraitinneralign\":\"left\",\"desktopportraitpadding\":\"0|*|0|*|0|*|0|*|px\",\"desktopportraitorder\":0,\"mobileportraitinneralign\":\"center\",\"mobileportraitorder\":1,\"opened\":1,\"id\":\"\",\"uniqueclass\":\"n-uc-iYi6ZKk8yeVp\",\"generatorvisible\":\"\",\"zindex\":2,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"colwidth\":\"3/5\",\"href\":\"\",\"href-target\":\"_self\",\"aria-label\":\"\",\"borderradius\":0,\"boxshadow\":\"0|*|0|*|0|*|0|*|00000080\",\"borderwidth\":\"0|*|0|*|0|*|0\",\"borderstyle\":\"solid\",\"bordercolor\":\"ffffffff\",\"name\":\"Column\",\"namesynced\":1,\"layers\":[]}]}]}]', '', '$upload$/2021/09/02_header.jpg', '{\"type\":\"slide\",\"desktopportraitfontsize\":100,\"desktopportraitpadding\":\"10|*|60|*|10|*|60\",\"tabletportraitpadding\":\"10|*|50|*|10|*|50\",\"mobileportraitpadding\":\"10|*|10|*|35|*|10\",\"record-slides\":0,\"thumbnailAlt\":\"\",\"thumbnailType\":\"default\",\"static-slide\":0,\"slide-duration\":0,\"ligthboxImage\":\"\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"default\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"href\":\"\",\"href-target\":\"\",\"aria-label\":\"\",\"background-type\":\"image\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundColorOverlay\":0,\"backgroundImage\":\"$upload$/2021/09/02_header.jpg\",\"backgroundFocusX\":50,\"backgroundFocusY\":50,\"backgroundImageOpacity\":100,\"backgroundImageBlur\":0,\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundMode\":\"default\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"version\":\"3.5.0.11\"}', 2, 0),
(3, '03_header', 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 1, 0, '[]', '', '$upload$/2021/09/03_header.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"$upload$/2021/09/03_header.jpg\",\"version\":\"3.5.0.11\"}', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/navadristi-eye', 'yes'),
(2, 'home', 'http://localhost/navadristi-eye', 'yes'),
(3, 'blogname', 'Navadristi Eye Hospital', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'iamyounz@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:129:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"welcome/?$\";s:27:\"index.php?post_type=welcome\";s:40:\"welcome/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=welcome&feed=$matches[1]\";s:35:\"welcome/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=welcome&feed=$matches[1]\";s:27:\"welcome/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=welcome&paged=$matches[1]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"welcome/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"welcome/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"welcome/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"welcome/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"welcome/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"welcome/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"welcome/(.+?)/embed/?$\";s:40:\"index.php?welcome=$matches[1]&embed=true\";s:26:\"welcome/(.+?)/trackback/?$\";s:34:\"index.php?welcome=$matches[1]&tb=1\";s:46:\"welcome/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?welcome=$matches[1]&feed=$matches[2]\";s:41:\"welcome/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?welcome=$matches[1]&feed=$matches[2]\";s:34:\"welcome/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?welcome=$matches[1]&paged=$matches[2]\";s:41:\"welcome/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?welcome=$matches[1]&cpage=$matches[2]\";s:30:\"welcome/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?welcome=$matches[1]&page=$matches[2]\";s:34:\"services/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"services/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"services/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"services/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"services/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"services/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"services/(.+?)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:27:\"services/(.+?)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:47:\"services/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:42:\"services/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:35:\"services/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:42:\"services/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:31:\"services/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:37:\"custom-post-type-maker/class-cptm.php\";i:1;s:33:\"smart-slider-3/smart-slider-3.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'navadristi', 'yes'),
(41, 'stylesheet', 'navadristi', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '20', 'yes'),
(82, 'page_on_front', '16', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1647664892', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1635831694;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1635871294;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1635914493;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635914500;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1635914502;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1636432894;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1632112924;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1635828751;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'current_theme', 'navadristi', 'yes'),
(148, 'theme_mods_navadristi', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:79;}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(157, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1635828753;s:7:\"checked\";a:2:{s:10:\"navadristi\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(159, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(172, 'n2_ss3_version', '3.5.0.11/b:release-3.5.0.11/r:2a442a1570d7e95765a11de6b41feca863a1f81b', 'yes'),
(173, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(190, 'cptm_plugin_settings_changed', '', 'yes'),
(199, 'category_children', 'a:0:{}', 'yes'),
(225, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":1}', 'yes'),
(228, 'site_logo', '79', 'yes'),
(338, '_site_transient_timeout_php_check_26328e95a1a09d326a615e4b43668741', '1636368070', 'no'),
(339, '_site_transient_timeout_browser_f8256d37159e3faf28ae61a6406601c3', '1636368070', 'no'),
(340, '_site_transient_php_check_26328e95a1a09d326a615e4b43668741', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(341, '_site_transient_browser_f8256d37159e3faf28ae61a6406601c3', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"95.0.4638.69\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(357, '_site_transient_timeout_theme_roots', '1635830552', 'no'),
(358, '_site_transient_theme_roots', 'a:2:{s:10:\"navadristi\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(359, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1635828755;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";b:0;}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:7:\"3.5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/smart-slider-3.3.5.1.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=2307688\";s:2:\"1x\";s:59:\"https://ps.w.org/smart-slider-3/assets/icon.svg?rev=2307688\";s:3:\"svg\";s:59:\"https://ps.w.org/smart-slider-3/assets/icon.svg?rev=2307688\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=2541018\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=2541018\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.1\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:37:\"custom-post-type-maker/class-cptm.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/custom-post-type-maker\";s:4:\"slug\";s:22:\"custom-post-type-maker\";s:6:\"plugin\";s:37:\"custom-post-type-maker/class-cptm.php\";s:11:\"new_version\";s:6:\"1.1.15\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/custom-post-type-maker/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/custom-post-type-maker.1.1.15.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-maker/assets/icon-256x256.png?rev=2404133\";s:2:\"1x\";s:75:\"https://ps.w.org/custom-post-type-maker/assets/icon-128x128.png?rev=2404133\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/custom-post-type-maker/assets/banner-1544x500.png?rev=2404133\";s:2:\"1x\";s:77:\"https://ps.w.org/custom-post-type-maker/assets/banner-772x250.png?rev=2404133\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:37:\"custom-post-type-maker/class-cptm.php\";s:6:\"1.1.15\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"smart-slider-3/smart-slider-3.php\";s:8:\"3.5.0.11\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(15, 11, '_wp_attached_file', '2021/09/01_header.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2021/09/01_header.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2021/09/02_header.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2021/09/02_header.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(23, 14, '_menu_item_type', 'custom'),
(24, 14, '_menu_item_menu_item_parent', '0'),
(25, 14, '_menu_item_object_id', '14'),
(26, 14, '_menu_item_object', 'custom'),
(27, 14, '_menu_item_target', ''),
(28, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 14, '_menu_item_xfn', ''),
(30, 14, '_menu_item_url', 'http://localhost/navadristi-eye/'),
(31, 14, '_menu_item_orphaned', '1632125260'),
(32, 15, '_menu_item_type', 'post_type'),
(33, 15, '_menu_item_menu_item_parent', '0'),
(34, 15, '_menu_item_object_id', '2'),
(35, 15, '_menu_item_object', 'page'),
(36, 15, '_menu_item_target', ''),
(37, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 15, '_menu_item_xfn', ''),
(39, 15, '_menu_item_url', ''),
(40, 15, '_menu_item_orphaned', '1632125260'),
(41, 16, '_edit_lock', '1632125140:1'),
(42, 18, '_edit_lock', '1632204707:1'),
(43, 20, '_edit_lock', '1632125197:1'),
(143, 33, '_menu_item_type', 'post_type'),
(144, 33, '_menu_item_menu_item_parent', '0'),
(145, 33, '_menu_item_object_id', '18'),
(146, 33, '_menu_item_object', 'page'),
(147, 33, '_menu_item_target', ''),
(148, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 33, '_menu_item_xfn', ''),
(150, 33, '_menu_item_url', ''),
(152, 34, '_menu_item_type', 'post_type'),
(153, 34, '_menu_item_menu_item_parent', '0'),
(154, 34, '_menu_item_object_id', '16'),
(155, 34, '_menu_item_object', 'page'),
(156, 34, '_menu_item_target', ''),
(157, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 34, '_menu_item_xfn', ''),
(159, 34, '_menu_item_url', ''),
(188, 38, '_edit_lock', '1632128307:1'),
(189, 40, '_menu_item_type', 'post_type'),
(190, 40, '_menu_item_menu_item_parent', '0'),
(191, 40, '_menu_item_object_id', '38'),
(192, 40, '_menu_item_object', 'page'),
(193, 40, '_menu_item_target', ''),
(194, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 40, '_menu_item_xfn', ''),
(196, 40, '_menu_item_url', ''),
(198, 41, '_edit_lock', '1632130134:1'),
(199, 43, '_edit_lock', '1633849683:1'),
(200, 45, '_edit_lock', '1632130159:1'),
(201, 47, '_edit_lock', '1632130215:1'),
(202, 49, '_edit_lock', '1632130224:1'),
(212, 52, '_menu_item_type', 'post_type'),
(213, 52, '_menu_item_menu_item_parent', '0'),
(214, 52, '_menu_item_object_id', '47'),
(215, 52, '_menu_item_object', 'page'),
(216, 52, '_menu_item_target', ''),
(217, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 52, '_menu_item_xfn', ''),
(219, 52, '_menu_item_url', ''),
(230, 54, '_menu_item_type', 'post_type'),
(231, 54, '_menu_item_menu_item_parent', '0'),
(232, 54, '_menu_item_object_id', '43'),
(233, 54, '_menu_item_object', 'page'),
(234, 54, '_menu_item_target', ''),
(235, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 54, '_menu_item_xfn', ''),
(237, 54, '_menu_item_url', ''),
(239, 55, '_menu_item_type', 'post_type'),
(240, 55, '_menu_item_menu_item_parent', '0'),
(241, 55, '_menu_item_object_id', '41'),
(242, 55, '_menu_item_object', 'page'),
(243, 55, '_menu_item_target', ''),
(244, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 55, '_menu_item_xfn', ''),
(246, 55, '_menu_item_url', ''),
(248, 56, '_edit_last', '1'),
(249, 56, '_edit_lock', '1632131271:1'),
(250, 56, 'cptm_name', 'services'),
(251, 56, 'cptm_label', 'Services'),
(252, 56, 'cptm_singular_name', ''),
(253, 56, 'cptm_description', ''),
(254, 56, 'cptm_icon_slug', ''),
(255, 56, 'cptm_icon_url', ''),
(256, 56, 'cptm_public', '1'),
(257, 56, 'cptm_show_ui', '1'),
(258, 56, 'cptm_has_archive', '1'),
(259, 56, 'cptm_exclude_from_search', '1'),
(260, 56, 'cptm_capability_type', 'post'),
(261, 56, 'cptm_hierarchical', '1'),
(262, 56, 'cptm_rewrite', '1'),
(263, 56, 'cptm_withfront', '1'),
(264, 56, 'cptm_feeds', '1'),
(265, 56, 'cptm_pages', '1'),
(266, 56, 'cptm_custom_rewrite_slug', ''),
(267, 56, 'cptm_query_var', '1'),
(268, 56, 'cptm_show_in_rest', '1'),
(269, 56, 'cptm_publicly_queryable', '1'),
(270, 56, 'cptm_menu_position', ''),
(271, 56, 'cptm_show_in_menu', '1'),
(272, 56, 'cptm_supports', 'a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:7:\"excerpt\";i:3;s:9:\"thumbnail\";}'),
(273, 56, 'cptm_builtin_taxonomies', 'a:0:{}'),
(274, 56, 'cptm_tax_post_types', 'a:0:{}'),
(277, 59, '_edit_lock', '1632209026:1'),
(280, 62, '_edit_lock', '1632209930:1'),
(282, 64, '_edit_last', '1'),
(283, 64, '_edit_lock', '1632133757:1'),
(284, 64, 'cptm_name', 'welcome'),
(285, 64, 'cptm_label', 'Welcome'),
(286, 64, 'cptm_singular_name', ''),
(287, 64, 'cptm_description', ''),
(288, 64, 'cptm_icon_slug', ''),
(289, 64, 'cptm_icon_url', ''),
(290, 64, 'cptm_public', '1'),
(291, 64, 'cptm_show_ui', '1'),
(292, 64, 'cptm_has_archive', '1'),
(293, 64, 'cptm_exclude_from_search', '1'),
(294, 64, 'cptm_capability_type', 'post'),
(295, 64, 'cptm_hierarchical', '1'),
(296, 64, 'cptm_rewrite', '1'),
(297, 64, 'cptm_withfront', '1'),
(298, 64, 'cptm_feeds', '1'),
(299, 64, 'cptm_pages', '1'),
(300, 64, 'cptm_custom_rewrite_slug', ''),
(301, 64, 'cptm_query_var', '1'),
(302, 64, 'cptm_show_in_rest', '1'),
(303, 64, 'cptm_publicly_queryable', '1'),
(304, 64, 'cptm_menu_position', ''),
(305, 64, 'cptm_show_in_menu', '1'),
(306, 64, 'cptm_supports', 'a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:7:\"excerpt\";i:3;s:9:\"thumbnail\";}'),
(307, 64, 'cptm_builtin_taxonomies', 'a:0:{}'),
(308, 64, 'cptm_tax_post_types', 'a:0:{}'),
(309, 65, '_edit_lock', '1632133946:1'),
(310, 66, '_wp_attached_file', '2021/09/01_signature.png'),
(311, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:67;s:4:\"file\";s:24:\"2021/09/01_signature.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 67, '_wp_attached_file', '2021/09/01_signature-1.png'),
(313, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:67;s:4:\"file\";s:26:\"2021/09/01_signature-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 68, '_edit_lock', '1632207126:1'),
(315, 69, '_wp_attached_file', '2021/09/02_doctors.jpg'),
(316, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:700;s:4:\"file\";s:22:\"2021/09/02_doctors.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(319, 68, '_thumbnail_id', '69'),
(320, 71, '_edit_lock', '1632198931:1'),
(323, 1, '_edit_lock', '1632135414:1'),
(326, 1, '_thumbnail_id', '11'),
(327, 74, '_edit_lock', '1632206550:1'),
(330, 74, '_thumbnail_id', '11'),
(331, 76, '_edit_lock', '1632206507:1'),
(334, 76, '_thumbnail_id', '11'),
(335, 78, '_wp_attached_file', '2021/09/03_header.jpg'),
(336, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2021/09/03_header.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(337, 79, '_wp_attached_file', '2021/09/01_logo-1.png'),
(338, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:170;s:6:\"height\";i:62;s:4:\"file\";s:21:\"2021/09/01_logo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 3, '_edit_lock', '1632214046:1'),
(346, 34, '_wp_old_date', '2021-09-20'),
(347, 33, '_wp_old_date', '2021-09-20'),
(348, 55, '_wp_old_date', '2021-09-20'),
(349, 52, '_wp_old_date', '2021-09-20'),
(350, 54, '_wp_old_date', '2021-09-20'),
(351, 40, '_wp_old_date', '2021-09-20'),
(397, 88, '_edit_lock', '1632206562:1'),
(400, 88, '_thumbnail_id', '12'),
(409, 68, '_pingme', '1'),
(410, 68, '_encloseme', '1'),
(411, 95, '_wp_attached_file', '2021/09/MG_9346.jpg'),
(412, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6240;s:6:\"height\";i:4160;s:4:\"file\";s:19:\"2021/09/MG_9346.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 6D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1630790259\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(413, 59, '_thumbnail_id', '95'),
(426, 98, '_wp_attached_file', '2021/09/Glaucoma-Clinic.jpg'),
(427, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:348;s:6:\"height\";i:261;s:4:\"file\";s:27:\"2021/09/Glaucoma-Clinic.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(428, 99, '_wp_attached_file', '2021/09/Retina-Service.jpg'),
(429, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:348;s:6:\"height\";i:261;s:4:\"file\";s:26:\"2021/09/Retina-Service.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(430, 62, '_thumbnail_id', '99'),
(431, 100, '_edit_lock', '1632210005:1'),
(432, 100, '_thumbnail_id', '98'),
(433, 101, '_edit_lock', '1632210988:1'),
(434, 102, '_wp_attached_file', '2021/09/vision.jpg'),
(435, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:348;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2021/09/vision.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(436, 101, '_thumbnail_id', '102'),
(437, 103, '_edit_lock', '1632213789:1'),
(439, 106, '_edit_lock', '1632213953:1'),
(440, 108, '_menu_item_type', 'post_type'),
(441, 108, '_menu_item_menu_item_parent', '0'),
(442, 108, '_menu_item_object_id', '103'),
(443, 108, '_menu_item_object', 'page'),
(444, 108, '_menu_item_target', ''),
(445, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(446, 108, '_menu_item_xfn', ''),
(447, 108, '_menu_item_url', ''),
(458, 110, '_edit_lock', '1632214075:1'),
(468, 114, '_menu_item_type', 'taxonomy'),
(469, 114, '_menu_item_menu_item_parent', '0'),
(470, 114, '_menu_item_object_id', '5'),
(471, 114, '_menu_item_object', 'category'),
(472, 114, '_menu_item_target', ''),
(473, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 114, '_menu_item_xfn', ''),
(475, 114, '_menu_item_url', ''),
(476, 114, '_menu_item_orphaned', '1633079177'),
(477, 108, '_wp_old_date', '2021-09-21'),
(478, 115, '_menu_item_type', 'taxonomy'),
(479, 115, '_menu_item_menu_item_parent', '0'),
(480, 115, '_menu_item_object_id', '5'),
(481, 115, '_menu_item_object', 'category'),
(482, 115, '_menu_item_target', ''),
(483, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(484, 115, '_menu_item_xfn', ''),
(485, 115, '_menu_item_url', ''),
(487, 34, '_wp_old_date', '2021-09-21'),
(488, 33, '_wp_old_date', '2021-09-21'),
(489, 55, '_wp_old_date', '2021-09-21'),
(490, 52, '_wp_old_date', '2021-09-21'),
(491, 54, '_wp_old_date', '2021-09-21'),
(492, 40, '_wp_old_date', '2021-09-21'),
(493, 43, '_wp_page_template', 'inc/contact-us.php'),
(494, 34, '_wp_old_date', '2021-10-01'),
(495, 33, '_wp_old_date', '2021-10-01'),
(496, 55, '_wp_old_date', '2021-10-01'),
(497, 52, '_wp_old_date', '2021-10-01'),
(498, 115, '_wp_old_date', '2021-10-01'),
(499, 54, '_wp_old_date', '2021-10-01'),
(500, 40, '_wp_old_date', '2021-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-20 04:41:33', '2021-09-20 04:41:33', '<!-- wp:paragraph -->\n<p>WLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et dolore magna aliqua...</p>\n<!-- /wp:paragraph -->', 'MEDICAL & DENTAL SUPPORT ICU & CCU FOR EMERGANCY SERVICES', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-09-20 10:59:15', '2021-09-20 10:59:15', '', 0, 'http://localhost/navadristi-eye/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-20 04:41:33', '2021-09-20 04:41:33', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/navadristi-eye/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-09-20 04:41:33', '2021-09-20 04:41:33', '', 0, 'http://localhost/navadristi-eye/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-20 04:41:33', '2021-09-20 04:41:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/navadristi-eye.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-09-20 04:41:33', '2021-09-20 04:41:33', '', 0, 'http://localhost/navadristi-eye/?page_id=3', 0, 'page', '', 0),
(11, 1, '2021-09-20 07:01:07', '2021-09-20 07:01:07', '', '01_header', '', 'inherit', 'open', 'closed', '', '01_header', '', '', '2021-09-20 07:01:07', '2021-09-20 07:01:07', '', 0, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/01_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-09-20 07:01:08', '2021-09-20 07:01:08', '', '02_header', '', 'inherit', 'open', 'closed', '', '02_header', '', '', '2021-09-20 07:01:08', '2021-09-20 07:01:08', '', 0, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/02_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-09-20 08:07:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-20 08:07:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/navadristi-eye/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2021-09-20 08:07:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-20 08:07:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/navadristi-eye/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2021-09-20 08:08:03', '2021-09-20 08:08:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-20 08:08:03', '2021-09-20 08:08:03', '', 0, 'http://localhost/navadristi-eye/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-09-20 08:08:03', '2021-09-20 08:08:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-09-20 08:08:03', '2021-09-20 08:08:03', '', 16, 'http://localhost/navadristi-eye/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-09-20 08:08:25', '2021-09-20 08:08:25', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-09-20 08:08:25', '2021-09-20 08:08:25', '', 0, 'http://localhost/navadristi-eye/?page_id=18', 0, 'page', '', 0),
(19, 1, '2021-09-20 08:08:25', '2021-09-20 08:08:25', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-09-20 08:08:25', '2021-09-20 08:08:25', '', 18, 'http://localhost/navadristi-eye/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-09-20 08:08:54', '2021-09-20 08:08:54', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-09-20 08:08:54', '2021-09-20 08:08:54', '', 0, 'http://localhost/navadristi-eye/?page_id=20', 0, 'page', '', 0),
(21, 1, '2021-09-20 08:08:54', '2021-09-20 08:08:54', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-09-20 08:08:54', '2021-09-20 08:08:54', '', 20, 'http://localhost/navadristi-eye/?p=21', 0, 'revision', '', 0),
(33, 1, '2021-10-10 07:11:14', '2021-09-20 08:45:38', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2021-10-10 07:11:14', '2021-09-20 08:45:38', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=34', 1, 'nav_menu_item', '', 0),
(38, 1, '2021-09-20 09:00:50', '2021-09-20 09:00:50', '', 'Appoinment', '', 'publish', 'closed', 'closed', '', 'appoinment', '', '', '2021-09-20 09:00:50', '2021-09-20 09:00:50', '', 0, 'http://localhost/navadristi-eye/?page_id=38', 0, 'page', '', 0),
(39, 1, '2021-09-20 09:00:50', '2021-09-20 09:00:50', '', 'Appoinment', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2021-09-20 09:00:50', '2021-09-20 09:00:50', '', 38, 'http://localhost/navadristi-eye/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-10-10 07:11:14', '2021-09-20 09:01:15', '', 'Book An Appoinment', '', 'publish', 'closed', 'closed', '', 'book-an-appoinment', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=40', 7, 'nav_menu_item', '', 0),
(41, 1, '2021-09-20 09:31:16', '2021-09-20 09:31:16', '', 'Doctors', '', 'publish', 'closed', 'closed', '', 'doctors', '', '', '2021-09-20 09:31:16', '2021-09-20 09:31:16', '', 0, 'http://localhost/navadristi-eye/?page_id=41', 0, 'page', '', 0),
(42, 1, '2021-09-20 09:31:16', '2021-09-20 09:31:16', '', 'Doctors', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2021-09-20 09:31:16', '2021-09-20 09:31:16', '', 41, 'http://localhost/navadristi-eye/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-09-20 09:31:30', '2021-09-20 09:31:30', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-10-10 07:10:24', '2021-10-10 07:10:24', '', 0, 'http://localhost/navadristi-eye/?page_id=43', 0, 'page', '', 0),
(44, 1, '2021-09-20 09:31:30', '2021-09-20 09:31:30', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-09-20 09:31:30', '2021-09-20 09:31:30', '', 43, 'http://localhost/navadristi-eye/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-09-20 09:31:42', '2021-09-20 09:31:42', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2021-09-20 09:31:42', '2021-09-20 09:31:42', '', 0, 'http://localhost/navadristi-eye/?page_id=45', 0, 'page', '', 0),
(46, 1, '2021-09-20 09:31:42', '2021-09-20 09:31:42', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-09-20 09:31:42', '2021-09-20 09:31:42', '', 45, 'http://localhost/navadristi-eye/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-09-20 09:32:26', '2021-09-20 09:32:26', '', 'News & Events', '', 'publish', 'closed', 'closed', '', 'news-events', '', '', '2021-09-20 09:32:26', '2021-09-20 09:32:26', '', 0, 'http://localhost/navadristi-eye/?page_id=47', 0, 'page', '', 0),
(48, 1, '2021-09-20 09:32:26', '2021-09-20 09:32:26', '', 'News & Events', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2021-09-20 09:32:26', '2021-09-20 09:32:26', '', 47, 'http://localhost/navadristi-eye/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-09-20 09:32:48', '2021-09-20 09:32:48', '', 'Career', '', 'publish', 'closed', 'closed', '', 'career', '', '', '2021-09-20 09:32:48', '2021-09-20 09:32:48', '', 0, 'http://localhost/navadristi-eye/?page_id=49', 0, 'page', '', 0),
(50, 1, '2021-09-20 09:32:48', '2021-09-20 09:32:48', '', 'Career', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-09-20 09:32:48', '2021-09-20 09:32:48', '', 49, 'http://localhost/navadristi-eye/?p=50', 0, 'revision', '', 0),
(52, 1, '2021-10-10 07:11:14', '2021-09-20 09:33:35', '', 'Events', '', 'publish', 'closed', 'closed', '', '52', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=52', 4, 'nav_menu_item', '', 0),
(54, 1, '2021-10-10 07:11:14', '2021-09-20 09:33:35', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=54', 6, 'nav_menu_item', '', 0),
(55, 1, '2021-10-10 07:11:14', '2021-09-20 09:33:35', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=55', 3, 'nav_menu_item', '', 0),
(56, 1, '2021-09-20 09:50:08', '2021-09-20 09:50:08', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-09-20 09:50:08', '2021-09-20 09:50:08', '', 0, 'http://localhost/navadristi-eye/?post_type=cptm&#038;p=56', 0, 'cptm', '', 0),
(59, 1, '2021-09-20 09:52:20', '2021-09-20 09:52:20', '<!-- wp:paragraph -->\n<p>Our team of qualified eye care professionals (ophthalmologists and optometrists) is dedicated to providing you a complete ocular health check-up. This includes the assessment of your ability to see at far and near, need for eyeglasses to correct refractive errors, eye muscle balance and structural and functional integrity of the front and back part of your eyes. Whether you are renewing your eyeglasses prescription or visiting for a yearly check-up or testing your eyes for the first time or comprehensive eye examination, Drishti comprehensive eye package covers all. Our experts armed with the state-of-the-art equipment are here to ensure that you have a clear vision and healthy eyes.</p>\n<!-- /wp:paragraph -->', 'Comprehensive Eye Examination', '', 'publish', 'closed', 'closed', '', 'dental-specpilist', '', '', '2021-09-21 07:23:54', '2021-09-21 07:23:54', '', 0, 'http://localhost/navadristi-eye/?post_type=services&#038;p=59', 0, 'services', '', 0),
(62, 1, '2021-09-20 09:53:38', '2021-09-20 09:53:38', '<!-- wp:paragraph -->\n<p>Retina services within our center are aimed to be comprehensive both in terms of diagnosis and management. With the use of the latest diagnostic modalities such as Optical Coherence Tomography (using infrared light to view the structures of the back of the eyeball), fundus photography and Optical Coherence Tomography coupled with Angiography we are confident in Retina services within our center are aimed to be comprehensive both in terms of diagnosis and management. With the use of the latest diagnostic modalities such as Optical Coherence Tomography (using infrared light to view the structures of the back of the eyeball), fundus photography and Optical Coherence Tomography coupled with Angiography we are confident in our services.</p>\n<!-- /wp:paragraph -->', 'Retina Service', '', 'publish', 'closed', 'closed', '', 'eye-specpilist', '', '', '2021-09-21 07:38:56', '2021-09-21 07:38:56', '', 0, 'http://localhost/navadristi-eye/?post_type=services&#038;p=62', 0, 'services', '', 0),
(64, 1, '2021-09-20 10:24:12', '2021-09-20 10:24:12', '', 'Welcome', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2021-09-20 10:24:12', '2021-09-20 10:24:12', '', 0, 'http://localhost/navadristi-eye/?post_type=cptm&#038;p=64', 0, 'cptm', '', 0),
(65, 1, '2021-09-20 10:26:38', '2021-09-20 10:26:38', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[67],\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/navadristi-eye/wp-content/uploads/2021/09/01_signature-1.png\" alt=\"\" data-id=\"67\" data-link=\"http://localhost/navadristi-eye/?attachment_id=67\" class=\"wp-image-67\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Professional Medical & Health Care In Full Measure', '', 'publish', 'closed', 'closed', '', 'professional-medical-health-care-in-full-measure', '', '', '2021-09-20 10:34:53', '2021-09-20 10:34:53', '', 0, 'http://localhost/navadristi-eye/?post_type=welcome&#038;p=65', 0, 'welcome', '', 0),
(66, 1, '2021-09-20 10:24:57', '2021-09-20 10:24:57', '', '01_signature', '', 'inherit', 'open', 'closed', '', '01_signature', '', '', '2021-09-20 10:24:57', '2021-09-20 10:24:57', '', 65, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/01_signature.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2021-09-20 10:25:31', '2021-09-20 10:25:31', '', '01_signature-1', '', 'inherit', 'open', 'closed', '', '01_signature-1', '', '', '2021-09-20 10:25:31', '2021-09-20 10:25:31', '', 65, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/01_signature-1.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2021-09-20 10:37:30', '2021-09-20 10:37:30', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply text of the printing and typesetting industry. Lorem Ipsum has been standard dummy.</p>\n<!-- /wp:paragraph -->', 'Dr. Doctors name', '', 'publish', 'open', 'open', '', 'dr-hani-yousef', '', '', '2021-09-21 06:54:29', '2021-09-21 06:54:29', '', 0, 'http://localhost/navadristi-eye/?p=68', 0, 'post', '', 0),
(69, 1, '2021-09-20 10:37:21', '2021-09-20 10:37:21', '', '02_doctors', '', 'inherit', 'open', 'closed', '', '02_doctors', '', '', '2021-09-20 10:37:21', '2021-09-20 10:37:21', '', 68, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/02_doctors.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2021-09-20 10:37:30', '2021-09-20 10:37:30', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply text of the printing and typesetting industry. Lorem Ipsum has been standard dummy.</p>\n<!-- /wp:paragraph -->', 'Dr. Hani Yousef', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-09-20 10:37:30', '2021-09-20 10:37:30', '', 68, 'http://localhost/navadristi-eye/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-09-20 10:38:38', '0000-00-00 00:00:00', '', 'Doctor', '', 'draft', 'open', 'open', '', '', '', '', '2021-09-20 10:38:38', '2021-09-20 10:38:38', '', 0, 'http://localhost/navadristi-eye/?p=71', 0, 'post', '', 0),
(73, 1, '2021-09-20 10:59:15', '2021-09-20 10:59:15', '<!-- wp:paragraph -->\n<p>WLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et dolore magna aliqua...</p>\n<!-- /wp:paragraph -->', 'MEDICAL & DENTAL SUPPORT ICU & CCU FOR EMERGANCY SERVICES', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-20 10:59:15', '2021-09-20 10:59:15', '', 1, 'http://localhost/navadristi-eye/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-09-20 11:04:20', '2021-09-20 11:04:20', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'WHAT CAN I DO TO PROTECT MYSELF & PREVENT THE SPREAD OF DISEASE?', '', 'publish', 'open', 'open', '', 'what-can-i-do-to-protect-myself-prevent-the-spread-of-disease', '', '', '2021-09-21 06:44:22', '2021-09-21 06:44:22', '', 0, 'http://localhost/navadristi-eye/?p=74', 0, 'post', '', 0),
(75, 1, '2021-09-20 11:04:20', '2021-09-20 11:04:20', '<!-- wp:paragraph -->\n<p>WLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et dolore magna aliqua…</p>\n<!-- /wp:paragraph -->', 'WHAT CAN I DO TO PROTECT MYSELF & PREVENT THE SPREAD OF DISEASE?', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-09-20 11:04:20', '2021-09-20 11:04:20', '', 74, 'http://localhost/navadristi-eye/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-09-20 11:04:58', '2021-09-20 11:04:58', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et dolore magna al\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'PATIEN FORUM SCHOOL PATIENT EXPERIENCE', '', 'publish', 'open', 'open', '', 'patien-forum-school-patient-experience', '', '', '2021-09-21 06:44:09', '2021-09-21 06:44:09', '', 0, 'http://localhost/navadristi-eye/?p=76', 0, 'post', '', 0),
(77, 1, '2021-09-20 11:04:58', '2021-09-20 11:04:58', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et dolore magna aliqua...</p>\n<!-- /wp:paragraph -->', 'PATIEN FORUM SCHOOL PATIENT EXPERIENCE', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-09-20 11:04:58', '2021-09-20 11:04:58', '', 76, 'http://localhost/navadristi-eye/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-09-21 04:41:56', '2021-09-21 04:41:56', '', '03_header', '', 'inherit', 'open', 'closed', '', '03_header', '', '', '2021-09-21 04:41:56', '2021-09-21 04:41:56', '', 0, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/03_header.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2021-09-21 05:01:56', '2021-09-21 05:01:56', '', '01_logo', '', 'inherit', 'open', 'closed', '', '01_logo-2', '', '', '2021-09-21 05:01:56', '2021-09-21 05:01:56', '', 0, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/01_logo-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2021-09-21 06:33:05', '2021-09-21 06:33:05', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'WHAT CAN I DO TO PROTECT MYSELF & PREVENT THE SPREAD OF DISEASE?', '', 'publish', 'open', 'open', '', 'news-test-1', '', '', '2021-09-21 06:45:04', '2021-09-21 06:45:04', '', 0, 'http://localhost/navadristi-eye/?p=88', 0, 'post', '', 0),
(89, 1, '2021-09-21 06:33:05', '2021-09-21 06:33:05', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'News Test 1', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-09-21 06:33:05', '2021-09-21 06:33:05', '', 88, 'http://localhost/navadristi-eye/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-09-21 06:44:09', '2021-09-21 06:44:09', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusm tempor incididunt ut labore et dolore magna al\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'PATIEN FORUM SCHOOL PATIENT EXPERIENCE', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-09-21 06:44:09', '2021-09-21 06:44:09', '', 76, 'http://localhost/navadristi-eye/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-09-21 06:44:22', '2021-09-21 06:44:22', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'WHAT CAN I DO TO PROTECT MYSELF & PREVENT THE SPREAD OF DISEASE?', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-09-21 06:44:22', '2021-09-21 06:44:22', '', 74, 'http://localhost/navadristi-eye/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-09-21 06:45:04', '2021-09-21 06:45:04', '<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->', 'WHAT CAN I DO TO PROTECT MYSELF & PREVENT THE SPREAD OF DISEASE?', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-09-21 06:45:04', '2021-09-21 06:45:04', '', 88, 'http://localhost/navadristi-eye/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-09-21 06:54:22', '2021-09-21 06:54:22', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply text of the printing and typesetting industry. Lorem Ipsum has been standard dummy.</p>\n<!-- /wp:paragraph -->', 'Dr. Doctors Yousef', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-09-21 06:54:22', '2021-09-21 06:54:22', '', 68, 'http://localhost/navadristi-eye/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-09-21 06:54:29', '2021-09-21 06:54:29', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply text of the printing and typesetting industry. Lorem Ipsum has been standard dummy.</p>\n<!-- /wp:paragraph -->', 'Dr. Doctors name', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-09-21 06:54:29', '2021-09-21 06:54:29', '', 68, 'http://localhost/navadristi-eye/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-09-21 07:23:04', '2021-09-21 07:23:04', '', '_MG_9346', '', 'inherit', 'open', 'closed', '', '_mg_9346', '', '', '2021-09-21 07:23:04', '2021-09-21 07:23:04', '', 59, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/MG_9346.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2021-09-21 07:23:46', '2021-09-21 07:23:46', '<!-- wp:paragraph -->\n<p>Our team of qualified eye care professionals (ophthalmologists and optometrists) is dedicated to providing you a complete ocular health check-up. This includes the assessment of your ability to see at far and near, need for eyeglasses to correct refractive errors, eye muscle balance and structural and functional integrity of the front and back part of your eyes. Whether you are renewing your eyeglasses prescription or visiting for a yearly check-up or testing your eyes for the first time or comprehensive eye examination, Drishti comprehensive eye package covers all. Our experts armed with the state-of-the-art equipment are here to ensure that you have a clear vision and healthy eyes.</p>\n<!-- /wp:paragraph -->', 'Dental Specpilist', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2021-09-21 07:23:46', '2021-09-21 07:23:46', '', 59, 'http://localhost/navadristi-eye/?p=96', 0, 'revision', '', 0),
(97, 1, '2021-09-21 07:38:50', '2021-09-21 07:38:50', '<!-- wp:paragraph -->\n<p>Retina services within our center are aimed to be comprehensive both in terms of diagnosis and management. With the use of the latest diagnostic modalities such as Optical Coherence Tomography (using infrared light to view the structures of the back of the eyeball), fundus photography and Optical Coherence Tomography coupled with Angiography we are confident in Retina services within our center are aimed to be comprehensive both in terms of diagnosis and management. With the use of the latest diagnostic modalities such as Optical Coherence Tomography (using infrared light to view the structures of the back of the eyeball), fundus photography and Optical Coherence Tomography coupled with Angiography we are confident in our services.</p>\n<!-- /wp:paragraph -->', 'Retina Service', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2021-09-21 07:38:50', '2021-09-21 07:38:50', '', 62, 'http://localhost/navadristi-eye/?p=97', 0, 'revision', '', 0),
(98, 1, '2021-09-21 07:38:42', '2021-09-21 07:38:42', '', 'Glaucoma Clinic', '', 'inherit', 'open', 'closed', '', 'glaucoma-clinic', '', '', '2021-09-21 07:38:42', '2021-09-21 07:38:42', '', 62, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/Glaucoma-Clinic.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2021-09-21 07:38:43', '2021-09-21 07:38:43', '', 'Retina Service', '', 'inherit', 'open', 'closed', '', 'retina-service', '', '', '2021-09-21 07:38:43', '2021-09-21 07:38:43', '', 62, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/Retina-Service.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2021-09-21 07:40:14', '2021-09-21 07:40:14', '<!-- wp:paragraph -->\n<p>A complete diagnosis and management of glaucoma are ensured at our center. Our highly trained glaucoma specialists with the aid of the latest glaucoma screening devices such as Humphrey Field Analyser, Optical Coherence Tomography, and Fundus Photography are here to make sure that glaucoma is detected early and managed to the highest standard. We strive to provide world-class treatment to our glaucoma patients.</p>\n<!-- /wp:paragraph -->', 'Glaucoma Clinic', '', 'publish', 'closed', 'closed', '', 'glaucoma-clinic', '', '', '2021-09-21 07:40:14', '2021-09-21 07:40:14', '', 0, 'http://localhost/navadristi-eye/?post_type=services&#038;p=100', 0, 'services', '', 0),
(101, 1, '2021-09-21 07:56:30', '2021-09-21 07:56:30', '<!-- wp:paragraph -->\n<p>Our binocular vision clinic deals with a comprehensive eye examination and non-surgical management of:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Ocular motility dysfunction (an eye movement disorder)</li><li>Non-strabismic disorder (conditions where your two eyes don’t work together)</li><li>Strabismus (deviation of eye)</li><li>Amblyopia (lazy eye)</li><li>Accommodative problem (eye focusing problem)</li><li>Visual information processing disorder</li><li>Visual-motor integration disorder</li></ul>\n<!-- /wp:list -->', 'Vision Therapy / Amlyopia Therapy', '', 'publish', 'closed', 'closed', '', 'vision-therapy-amlyopia-therapy', '', '', '2021-09-21 07:56:30', '2021-09-21 07:56:30', '', 0, 'http://localhost/navadristi-eye/?post_type=services&#038;p=101', 0, 'services', '', 0),
(102, 1, '2021-09-21 07:55:43', '2021-09-21 07:55:43', '', 'vision', '', 'inherit', 'open', 'closed', '', 'vision', '', '', '2021-09-21 07:55:43', '2021-09-21 07:55:43', '', 101, 'http://localhost/navadristi-eye/wp-content/uploads/2021/09/vision.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2021-09-21 08:45:32', '2021-09-21 08:45:32', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-09-21 08:45:32', '2021-09-21 08:45:32', '', 0, 'http://localhost/navadristi-eye/?page_id=103', 0, 'page', '', 0),
(104, 1, '2021-09-21 08:45:32', '2021-09-21 08:45:32', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2021-09-21 08:45:32', '2021-09-21 08:45:32', '', 103, 'http://localhost/navadristi-eye/?p=104', 0, 'revision', '', 0),
(106, 1, '2021-09-21 08:48:16', '2021-09-21 08:48:16', '<!-- wp:paragraph -->\n<p>Terms &amp; Conditions here....</p>\n<!-- /wp:paragraph -->', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2021-09-21 08:48:16', '2021-09-21 08:48:16', '', 0, 'http://localhost/navadristi-eye/?page_id=106', 0, 'page', '', 0),
(107, 1, '2021-09-21 08:48:16', '2021-09-21 08:48:16', '<!-- wp:paragraph -->\n<p>Terms &amp; Conditions here....</p>\n<!-- /wp:paragraph -->', 'Terms & Conditions', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2021-09-21 08:48:16', '2021-09-21 08:48:16', '', 106, 'http://localhost/navadristi-eye/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-10-01 09:06:38', '2021-09-21 08:49:20', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2021-10-01 09:06:38', '2021-10-01 09:06:38', '', 0, 'http://localhost/navadristi-eye/?p=108', 1, 'nav_menu_item', '', 0),
(110, 1, '2021-09-21 08:50:10', '2021-09-21 08:50:10', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/navadristi-eye.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2021-09-21 08:50:10', '2021-09-21 08:50:10', '', 0, 'http://localhost/navadristi-eye/?page_id=110', 0, 'page', '', 0),
(111, 1, '2021-09-21 08:50:10', '2021-09-21 08:50:10', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/navadristi-eye.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2021-09-21 08:50:10', '2021-09-21 08:50:10', '', 110, 'http://localhost/navadristi-eye/?p=111', 0, 'revision', '', 0),
(114, 1, '2021-10-01 09:06:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-10-01 09:06:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/navadristi-eye/?p=114', 1, 'nav_menu_item', '', 0),
(115, 1, '2021-10-10 07:11:14', '2021-10-01 09:07:05', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2021-10-10 07:11:14', '2021-10-10 07:11:14', '', 0, 'http://localhost/navadristi-eye/?p=115', 5, 'nav_menu_item', '', 0),
(117, 1, '2021-11-01 10:41:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-01 10:41:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/navadristi-eye/?p=117', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Menu 1', 'menu-1', 0),
(4, 'Doctors', 'doctors', 0),
(5, 'News', 'news', 0),
(6, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 5, 0),
(33, 3, 0),
(34, 3, 0),
(40, 3, 0),
(52, 3, 0),
(54, 3, 0),
(55, 3, 0),
(68, 4, 0),
(71, 1, 0),
(74, 5, 0),
(76, 5, 0),
(88, 5, 0),
(108, 6, 0),
(115, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 4),
(6, 6, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"2f52273846cee3a005d455f009a637660f598ca7af110518490423ad69a14d4b\";a:4:{s:10:\"expiration\";i:1635936068;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36\";s:5:\"login\";i:1635763268;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '117'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1632121125'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BY4uMVPEBEhPwBvUyiaQgM6h0D1q9C1', 'admin', 'iamyounz@gmail.com', 'http://localhost/navadristi-eye', '2021-09-20 04:41:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Indexes for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system` (`system`),
  ADD KEY `editable` (`editable`),
  ADD KEY `application` (`application`,`section`(50),`referencekey`(50)),
  ADD KEY `application_2` (`application`,`section`(50));

--
-- Indexes for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `wp_nextend2_smartslider3_sliders_xref`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders_xref`
  ADD PRIMARY KEY (`group_id`,`slider_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `publish_down` (`publish_down`),
  ADD KEY `generator_id` (`generator_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `slider` (`slider`),
  ADD KEY `thumbnail` (`thumbnail`(100));

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_image_storage`
--
ALTER TABLE `wp_nextend2_image_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_nextend2_section_storage`
--
ALTER TABLE `wp_nextend2_section_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10363;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_generators`
--
ALTER TABLE `wp_nextend2_smartslider3_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_sliders`
--
ALTER TABLE `wp_nextend2_smartslider3_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_nextend2_smartslider3_slides`
--
ALTER TABLE `wp_nextend2_smartslider3_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
