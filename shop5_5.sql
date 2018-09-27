-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-07-13 07:18:31
-- 服务器版本： 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.5-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop5.5`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, '2018-07-08 14:43:52'),
(2, 0, 6, '系统管理', 'fa-tasks', NULL, NULL, '2018-07-10 03:46:30'),
(3, 2, 7, '管理员', 'fa-users', 'auth/users', NULL, '2018-07-10 03:46:30'),
(4, 2, 8, '角色', 'fa-user', 'auth/roles', NULL, '2018-07-10 03:46:30'),
(5, 2, 9, '权限', 'fa-ban', 'auth/permissions', NULL, '2018-07-10 03:46:30'),
(6, 2, 10, '菜单', 'fa-bars', 'auth/menu', NULL, '2018-07-10 03:46:30'),
(7, 2, 11, '操作日志', 'fa-history', 'auth/logs', NULL, '2018-07-10 03:46:30'),
(8, 0, 2, '用户管理', 'fa-user', '/users', '2018-07-08 14:58:41', '2018-07-08 15:23:36'),
(9, 0, 3, '商品管理', 'fa-cubes', '/products', '2018-07-08 15:22:04', '2018-07-08 15:23:36'),
(10, 0, 4, '订单管理', 'fa-rmb', '/orders', '2018-07-10 01:47:35', '2018-07-10 01:47:49'),
(11, 0, 5, '优惠卷管理', 'fa-tags', 'coupon_codes', '2018-07-10 03:46:20', '2018-07-10 03:46:30');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 2, 'admin/coupon_codes', 'GET', '192.168.10.1', '[]', '2018-07-10 07:08:32', '2018-07-10 07:08:32'),
(2, 2, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-10 07:10:27', '2018-07-10 07:10:27'),
(3, 2, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-10 07:10:34', '2018-07-10 07:10:34'),
(4, 1, 'admin', 'GET', '192.168.10.1', '[]', '2018-07-11 17:07:16', '2018-07-11 17:07:16'),
(5, 1, 'admin', 'GET', '192.168.10.1', '[]', '2018-07-13 05:33:31', '2018-07-13 05:33:31'),
(6, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:33:35', '2018-07-13 05:33:35'),
(7, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:33:37', '2018-07-13 05:33:37'),
(8, 1, 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:33:39', '2018-07-13 05:33:39'),
(9, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:33:48', '2018-07-13 05:33:48'),
(10, 1, 'admin/orders/97', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:33:52', '2018-07-13 05:33:52'),
(11, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:34:20', '2018-07-13 05:34:20'),
(12, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:34:28', '2018-07-13 05:34:28'),
(13, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:34:53', '2018-07-13 05:34:53'),
(14, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:34:56', '2018-07-13 05:34:56'),
(15, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:35:02', '2018-07-13 05:35:02'),
(16, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:35:04', '2018-07-13 05:35:04'),
(17, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:35:34', '2018-07-13 05:35:34'),
(18, 1, 'admin/orders/97', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:35:36', '2018-07-13 05:35:36'),
(19, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:35:53', '2018-07-13 05:35:53'),
(20, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:35:57', '2018-07-13 05:35:57'),
(21, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:50:18', '2018-07-13 05:50:18'),
(22, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 05:50:19', '2018-07-13 05:50:19'),
(23, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:30:37', '2018-07-13 06:30:37'),
(24, 1, 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:31:40', '2018-07-13 06:31:40'),
(25, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:33:52', '2018-07-13 06:33:52'),
(26, 1, 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:33:55', '2018-07-13 06:33:55'),
(27, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:33:57', '2018-07-13 06:33:57'),
(28, 1, 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2018-07-13 06:34:03', '2018-07-13 06:34:03'),
(29, 1, 'admin/products/21/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:34:05', '2018-07-13 06:34:05'),
(30, 1, 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:35:20', '2018-07-13 06:35:20'),
(31, 1, 'admin/orders/97', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:35:42', '2018-07-13 06:35:42'),
(32, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2018-07-13 06:40:06', '2018-07-13 06:40:06');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, '用户管理', 'users', '', '/users*', '2018-07-08 15:01:02', '2018-07-08 15:01:02'),
(7, '商品管理', 'products', '', '/products*', '2018-07-10 06:12:13', '2018-07-10 06:13:48'),
(8, '订单管理', 'orders', '', '/orders*', '2018-07-10 06:12:41', '2018-07-10 06:12:41'),
(9, '优惠卷管理', 'coupon_codes', '', '/coupon_codes*', '2018-07-10 06:13:37', '2018-07-10 06:13:37');

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2018-07-08 14:34:44', '2018-07-08 14:34:44'),
(2, '运营', 'operator', '2018-07-08 15:04:58', '2018-07-08 15:04:58');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 4, NULL, NULL),
(2, 6, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$D9Gqk4k0IyLdU0jVv6uZPuxWopFY3rtJEyiDr/iAJCh6gTchoZh2O', 'Administrator', NULL, 'HnEub1oBcAQGM8DYRAMiByiN082CXk0lhZjtCQD93JtSXDCgF46ytCsGVoMT', '2018-07-08 14:34:44', '2018-07-08 14:34:44'),
(2, 'operator', '$2y$10$fZNRxh4n8rEg.vSV/leud.dqlMgwvOy078HCXXDUjvMgxWJbZLi8y', '运营', NULL, 'cNvfYN96r4hFi1iUfd92aOm7GxluMxZjVvp4G96X07t2rSz2jHs1HqH9nNol', '2018-07-08 15:07:53', '2018-07-08 15:07:53');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) NOT NULL,
  `not_before` datetime DEFAULT NULL,
  `not_after` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `coupon_codes`
--

INSERT INTO `coupon_codes` (`id`, `name`, `code`, `type`, `value`, `total`, `used`, `min_amount`, `not_before`, `not_after`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'omnis dolorem alias', 'QBHTOI5CY1GEYDNF', 'fixed', '94.00', 1000, 0, '94.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(2, 'vel et hic', 'T8U3T1GCICNYRYG7', 'fixed', '123.00', 1000, 0, '123.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(3, 'qui repellendus nihil', 'JKGUDW6IOTQ6FHBD', 'fixed', '70.00', 1000, 0, '70.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(4, 'dolorem deleniti repellat', 'GT40E4F5Q2FM9KCX', 'percent', '3.00', 1000, 7, '0.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:35'),
(5, 'in illum nisi', 'A49TEACDPMCYZEME', 'percent', '7.00', 1000, 6, '0.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:35'),
(6, 'dolor libero qui', '3Z75GYHXOED6FOCV', 'fixed', '176.00', 1000, 0, '176.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(7, 'dolores maiores id', 'CMNDKSSQQHR4XMYH', 'percent', '28.00', 1000, 0, '588.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(8, 'velit aut molestiae', 'A988JVXUZ55SCPTX', 'percent', '28.00', 1000, 5, '0.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:35'),
(9, 'repellat distinctio tempore', 'NVXXBOLZ1MQUVFVF', 'fixed', '3.00', 1000, 0, '3.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(10, 'dolorum esse corporis', 'HQYLEHGYXXMSYR9P', 'fixed', '52.00', 1000, 0, '52.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(11, 'tempora repudiandae perferendis', 'T1AWDLC8SWBYHHKR', 'fixed', '116.00', 1000, 0, '116.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(12, 'nam sint omnis', 'WPCDSOKM33GDFCUR', 'fixed', '63.00', 1000, 0, '63.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(13, 'quibusdam cum necessitatibus', 'B3RO5Z7S8CY6V4LS', 'fixed', '174.00', 1000, 0, '174.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(14, 'dignissimos iure quibusdam', 'SOMVJIUUQ2PLS6RB', 'fixed', '3.00', 1000, 0, '3.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(15, 'quam vero nulla', 'CWXMGZH1PO6XV2HT', 'percent', '50.00', 1000, 10, '0.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:35'),
(16, 'laborum porro porro', 'QR54PSQ82CLFMKIN', 'fixed', '27.00', 1000, 0, '27.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(17, 'magni voluptas voluptas', 'QGIKU9RKNSOTLUYA', 'fixed', '84.00', 1000, 0, '84.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(18, 'voluptates nemo iure', 'SVDRHKEQHV3YSEVL', 'fixed', '136.00', 1000, 0, '136.01', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(19, 'ea praesentium eveniet', '5NDSUVIDGHCZTV04', 'percent', '44.00', 1000, 0, '341.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(20, 'et suscipit inventore', 'JPUXANBKXEUVFYKW', 'percent', '33.00', 1000, 0, '160.00', NULL, NULL, 1, '2018-07-10 06:45:34', '2018-07-10 06:45:34');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2016_01_04_173148_create_admin_tables', 1),
(30, '2018_07_08_095821_users_add_email_verified', 1),
(31, '2018_07_08_115634_create_user_addresses_table', 1),
(32, '2018_07_08_151501_create_products_table', 1),
(33, '2018_07_08_151534_create_product_skus_table', 1),
(34, '2018_07_09_021201_create_user_favorite_products_table', 1),
(35, '2018_07_09_030724_create_cart_items_table', 1),
(36, '2018_07_09_051233_create_orders_table', 1),
(37, '2018_07_09_051321_create_order_items_table', 1),
(38, '2018_07_10_033730_create_coupon_codes_table', 1),
(39, '2018_07_10_033918_orders_add_coupon_code_id', 1);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `coupon_code_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `no`, `user_id`, `address`, `total_amount`, `remark`, `paid_at`, `coupon_code_id`, `payment_method`, `payment_no`, `refund_status`, `refund_no`, `closed`, `reviewed`, `ship_status`, `ship_data`, `extra`, `created_at`, `updated_at`) VALUES
(1, '20180710064535518778', 96, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c16\\u8857\\u9053\\u7b2c477\\u53f7\",\"zip\":123500,\"contact_name\":\"\\u674e\\u5ca9\",\"contact_phone\":\"18318925785\"}', '6173.28', 'Consequatur esse laboriosam aliquam sunt totam eius porro numquam.', '2018-07-07 09:35:21', 8, 'alipay', 'cbd09317-c225-3fe2-9953-c3174136c524', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u660e\\u817e\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d626eb4e-a06d-315a-8ad7-d4950246be52\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(2, '20180710064535550675', 76, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c91\\u8857\\u9053\\u7b2c302\\u53f7\",\"zip\":356900,\"contact_name\":\"\\u5c01\\u5764\",\"contact_phone\":\"15376729564\"}', '14028.00', 'Provident quos velit dolorem reprehenderit temporibus nihil ea.', '2018-06-30 04:25:09', NULL, 'wechat', 'd78f7c66-1c27-3137-90de-d143b285a235', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(3, '20180710064535572190', 63, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c17\\u8857\\u9053\\u7b2c162\\u53f7\",\"zip\":647100,\"contact_name\":\"\\u6b27\\u5229\",\"contact_phone\":\"15604998295\"}', '11296.00', 'Sed omnis et ut autem.', '2018-06-15 09:52:53', NULL, 'wechat', '71148988-1337-3842-8a3b-a67e59adf82f', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u7ef4\\u6d9b\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e72c94ea-89b0-3841-8a53-1cda3c8b518e\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(4, '20180710064535665981', 15, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c5\\u8857\\u9053\\u7b2c308\\u53f7\",\"zip\":684500,\"contact_name\":\"\\u865e\\u9e4f\",\"contact_phone\":\"14783516555\"}', '59875.00', 'Vel fugit qui at ipsam iure aut.', '2018-06-21 19:10:50', NULL, 'alipay', '710bc950-8ddc-37aa-b760-4bb216bb32ba', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4fe1\\u8bda\\u81f4\\u8fdc\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7eb75ec3-0181-3c2f-a0f3-7cff077ca233\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(5, '20180710064535602668', 42, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c18\\u8857\\u9053\\u7b2c130\\u53f7\",\"zip\":748200,\"contact_name\":\"\\u94b1\\u6668\",\"contact_phone\":\"13366942703\"}', '15626.70', 'Iure autem repudiandae voluptatem consequuntur dicta voluptatibus.', '2018-06-16 19:55:50', 4, 'alipay', '53f73952-7efe-37af-8796-895eb4cf1282', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u7ef4\\u6d9b\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fa38d9c6-ab44-3bc1-8f93-262dee892d42\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(6, '20180710064535470325', 56, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c929\\u53f7\",\"zip\":677800,\"contact_name\":\"\\u5b81\\u5c0f\\u7ea2\",\"contact_phone\":\"18880806499\"}', '5208.00', 'Totam corrupti ratione quibusdam sint sed.', '2018-06-19 12:47:26', NULL, 'alipay', '4ff61178-841c-321e-a534-5d5bf034030b', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u7cbe\\u82af\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"47f9eaf4-f6d8-31f0-a84f-85f09d50d230\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(7, '20180710064535181694', 31, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c96\\u8857\\u9053\\u7b2c64\\u53f7\",\"zip\":658000,\"contact_name\":\"\\u80e1\\u521a\",\"contact_phone\":\"15597559333\"}', '44302.81', 'Ab excepturi magnam non quasi praesentium.', '2018-07-04 09:18:33', 4, 'wechat', 'e78f08b8-123f-349b-b762-c7fa58f1d783', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u534e\\u6210\\u80b2\\u5353\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"20bfa20e-f345-3e7b-aab6-bb0a5e70e018\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(8, '20180710064535507686', 64, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c10\\u8857\\u9053\\u7b2c775\\u53f7\",\"zip\":496100,\"contact_name\":\"\\u6881\\u5e73\",\"contact_phone\":\"18680395036\"}', '22594.50', 'Dolor natus architecto est cum laboriosam aut dolorum possimus.', '2018-07-03 15:40:06', 15, 'wechat', '49ca7ccd-2b9c-3cb7-9573-b813bfd983dd', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u521b\\u8054\\u4e16\\u7eaa\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ec7c2683-24e5-3c16-b4d7-ba8c40061e94\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(9, '20180710064535693736', 95, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c97\\u8857\\u9053\\u7b2c841\\u53f7\",\"zip\":854900,\"contact_name\":\"\\u65b9\\u667a\\u660e\",\"contact_phone\":\"18558378310\"}', '7115.00', 'Ipsam eaque excepturi et omnis iusto quod iure.', '2018-06-25 10:10:57', NULL, 'wechat', 'cb8d6f3d-4973-372a-990d-3cafc6cfce79', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u65f6\\u7a7a\\u76d2\\u6570\\u5b57\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d5e83621-3192-3116-a160-ec852db6f9f7\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(10, '20180710064535924153', 71, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c177\\u53f7\",\"zip\":66100,\"contact_name\":\"\\u77bf\\u6625\\u6885\",\"contact_phone\":\"15500921798\"}', '26323.00', 'Quas impedit molestiae dolor qui minima perferendis dolor.', '2018-06-25 15:24:00', 15, 'alipay', '9a2a733e-9b66-34b8-996b-9eb2b6f8feb1', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(11, '20180710064535877091', 60, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c241\\u53f7\",\"zip\":544200,\"contact_name\":\"\\u6731\\u971e\",\"contact_phone\":\"15693491696\"}', '77112.09', 'Et adipisci qui culpa repellendus aut amet tempora quo.', '2018-06-24 11:05:51', 4, 'alipay', '6b554971-500d-340a-a0c9-c063a0fbdd38', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(12, '20180710064535489667', 55, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c42\\u8857\\u9053\\u7b2c760\\u53f7\",\"zip\":163600,\"contact_name\":\"\\u548c\\u658c\",\"contact_phone\":\"15211335284\"}', '44367.00', 'Nihil dolore velit maiores quia omnis aut aut.', '2018-07-01 00:30:19', NULL, 'alipay', '02714bc2-88ee-3598-9511-8ef31fdf25dc', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u660e\\u817e\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"52512c7b-544c-30fa-b78d-d501f20bc6d6\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(13, '20180710064535987739', 2, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c953\\u53f7\",\"zip\":556000,\"contact_name\":\"\\u6a0a\\u6dd1\\u5170\",\"contact_phone\":\"15635204486\"}', '41642.00', 'Eos voluptatem tenetur ut.', '2018-07-10 01:36:30', NULL, 'wechat', 'c8df34de-91cc-385f-8c6b-5313c5665941', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u548c\\u6cf0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fcedf00d-6c1a-30e4-bff3-f2fe102a0553\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(14, '20180710064535330054', 8, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c214\\u53f7\",\"zip\":181600,\"contact_name\":\"\\u5a04\\u6842\\u8363\",\"contact_phone\":\"18164459059\"}', '49327.00', 'Reprehenderit officiis reprehenderit aut illo in nihil laborum quia.', '2018-06-23 17:03:14', NULL, 'alipay', 'f7e39e59-827a-3a1f-9884-6e17c0093914', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u94f6\\u5609\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0fc60a11-a1a1-370f-89ad-0a38d37b85fd\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(15, '20180710064535907657', 71, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c177\\u53f7\",\"zip\":66100,\"contact_name\":\"\\u77bf\\u6625\\u6885\",\"contact_phone\":\"15500921798\"}', '6015.00', 'Nesciunt aut enim reprehenderit provident.', '2018-07-07 11:25:25', NULL, 'alipay', 'ad1a0659-b612-3642-b88f-acc4a1908b81', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(16, '20180710064535281037', 2, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c953\\u53f7\",\"zip\":556000,\"contact_name\":\"\\u6a0a\\u6dd1\\u5170\",\"contact_phone\":\"15635204486\"}', '9611.00', 'Aut voluptatum optio soluta eos velit.', '2018-07-06 08:24:09', NULL, 'wechat', '18394dea-fbbc-3651-9034-fd8b654397d5', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u76df\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1316fddb-81f2-3019-86b6-f5cb316fa05f\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(17, '20180710064535737916', 12, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c16\\u8857\\u9053\\u7b2c712\\u53f7\",\"zip\":157500,\"contact_name\":\"\\u96f7\\u5065\",\"contact_phone\":\"17083844178\"}', '34475.00', 'Saepe temporibus veniam soluta.', '2018-07-01 13:47:54', NULL, 'alipay', 'f4b1163b-6a49-3c99-aee5-8d8799af56ea', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u5f00\\u53d1\\u533a\\u4e16\\u521b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"a457052f-e1a1-3b67-915f-12fe49197222\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(18, '20180710064535396810', 52, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c274\\u53f7\",\"zip\":201100,\"contact_name\":\"\\u4e50\\u6587\",\"contact_phone\":\"17754643208\"}', '28005.84', 'In voluptas ea aut sed voluptas possimus quas eum.', '2018-06-24 20:43:31', 4, 'alipay', 'e1eb9d37-cbcb-3b2f-8ddc-61abb1d0f926', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(19, '20180710064535887300', 80, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c17\\u8857\\u9053\\u7b2c477\\u53f7\",\"zip\":822100,\"contact_name\":\"\\u8d3e\\u745c\",\"contact_phone\":\"18019702154\"}', '53349.00', 'Saepe amet quidem molestias et.', '2018-06-10 09:22:02', NULL, 'alipay', '4d3e9614-a3e1-3873-951e-258dc80eb2cc', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(20, '20180710064535699496', 95, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c46\\u8857\\u9053\\u7b2c981\\u53f7\",\"zip\":333800,\"contact_name\":\"\\u853a\\u5efa\\u56fd\",\"contact_phone\":\"17050384836\"}', '8966.00', 'Voluptate sed ipsum ut maiores nulla dolor id aut.', '2018-06-23 17:00:32', NULL, 'wechat', '22f3b1f1-093a-3220-b435-eb38cb7a83c7', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4f73\\u79be\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"57063868-5c6e-37e9-a9c3-4d84684e2916\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(21, '20180710064535123189', 97, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c6\\u8857\\u9053\\u7b2c652\\u53f7\",\"zip\":318100,\"contact_name\":\"\\u90b9\\u7ea2\",\"contact_phone\":\"15271114179\"}', '3571.00', 'Et quia accusamus et voluptatem vel molestiae.', '2018-06-29 22:16:19', 15, 'alipay', 'd98bfccb-5725-3bc5-8fe1-6f05a77b57ad', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(22, '20180710064535172266', 62, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c81\\u8857\\u9053\\u7b2c292\\u53f7\",\"zip\":725500,\"contact_name\":\"\\u4f0d\\u51ac\\u6885\",\"contact_phone\":\"18221486006\"}', '9165.00', 'Cupiditate ab neque consequuntur cumque.', '2018-07-08 15:14:10', NULL, 'alipay', '7d555351-2f38-363e-bbdf-7edeea3b1277', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u521b\\u8054\\u4e16\\u7eaa\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4c20a050-21f2-365f-b080-2de4bf444657\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(23, '20180710064535838007', 15, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c73\\u8857\\u9053\\u7b2c4\\u53f7\",\"zip\":797200,\"contact_name\":\"\\u5c24\\u697c\",\"contact_phone\":\"18732540119\"}', '18858.00', 'Sed perferendis perferendis voluptatem qui.', '2018-06-26 08:09:23', NULL, 'wechat', 'ff1dd1ae-0954-341f-8aec-cf7da38f33dd', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:36'),
(24, '20180710064535388282', 6, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c28\\u8857\\u9053\\u7b2c197\\u53f7\",\"zip\":553900,\"contact_name\":\"\\u9646\\u4e3d\\u4e3d\",\"contact_phone\":\"13288732207\"}', '53448.00', 'Sit dicta eos dolores.', '2018-06-28 00:11:35', NULL, 'wechat', '394ca590-c670-3e12-bfa5-be9afbcddef4', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u56fd\\u8baf\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"72fb373b-79b7-3802-88bd-b96596b1c597\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(25, '20180710064535357012', 25, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c10\\u8857\\u9053\\u7b2c390\\u53f7\",\"zip\":797900,\"contact_name\":\"\\u8f66\\u5efa\\u660e\",\"contact_phone\":\"18213591640\"}', '52904.00', 'Sed ex dignissimos fugiat dolorem unde occaecati soluta.', '2018-06-26 07:56:01', NULL, 'wechat', '94efcfdf-393c-340c-ba96-92de0de47b18', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(26, '20180710064535920166', 72, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c27\\u8857\\u9053\\u7b2c481\\u53f7\",\"zip\":372500,\"contact_name\":\"\\u8def\\u7fd4\",\"contact_phone\":\"17014409100\"}', '17181.00', 'Veniam est vel iure.', '2018-06-23 19:45:05', NULL, 'wechat', 'f13e8c54-2e50-38f8-bd46-32947818db31', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6d66\\u534e\\u4f17\\u57ce\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d83b22ba-e4a4-3d9b-a2dd-925607541190\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(27, '20180710064535677555', 56, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c39\\u8857\\u9053\\u7b2c929\\u53f7\",\"zip\":677800,\"contact_name\":\"\\u5b81\\u5c0f\\u7ea2\",\"contact_phone\":\"18880806499\"}', '51845.00', 'Enim qui est qui debitis impedit laborum quisquam deleniti.', '2018-06-21 08:00:27', NULL, 'alipay', 'ab6130a1-2236-3fbc-a480-9a2177352372', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(28, '20180710064535443086', 17, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c11\\u8857\\u9053\\u7b2c428\\u53f7\",\"zip\":612000,\"contact_name\":\"\\u7eaa\\u667a\\u660e\",\"contact_phone\":\"17093581488\"}', '30910.00', 'Sint blanditiis earum sint quia odit aliquam eos.', '2018-06-20 12:33:51', NULL, 'alipay', '0d92358f-430a-399e-ad37-302dfdcdd454', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(29, '20180710064535994492', 77, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c700\\u53f7\",\"zip\":523400,\"contact_name\":\"\\u9f9a\\u79c0\\u5170\",\"contact_phone\":\"18896750346\"}', '6944.00', 'Dignissimos sunt rerum aut architecto mollitia.', '2018-06-30 20:52:06', NULL, 'wechat', 'c9013275-1177-3f98-9dd5-3b959b1ac1af', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(30, '20180710064535091322', 90, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c143\\u53f7\",\"zip\":558600,\"contact_name\":\"\\u4fde\\u6d0b\",\"contact_phone\":\"18185683522\"}', '26458.00', 'Esse qui culpa dolorem consectetur rerum.', '2018-06-13 04:30:13', NULL, 'wechat', '21c3e62a-cd05-37cf-bbf7-bf97c7cf18c4', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u98de\\u5229\\u4fe1\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"370a9b46-7179-38a2-a135-220f6cc6e10a\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(31, '20180710064535939980', 34, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c60\\u8857\\u9053\\u7b2c599\\u53f7\",\"zip\":343700,\"contact_name\":\"\\u539f\\u7fd4\",\"contact_phone\":\"15533946412\"}', '12572.00', 'Ipsam et eveniet dolore labore.', '2018-06-14 14:04:19', NULL, 'alipay', '2e2bf8ee-19af-31ab-b1aa-85557eccb243', 'success', '532178562ebe4c36a4788bbae75d7688', 0, 0, 'pending', NULL, '{\"refund_reason\":\"In tempora aliquid quia aliquam veniam dolorum.\"}', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(32, '20180710064535704039', 35, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c79\\u8857\\u9053\\u7b2c299\\u53f7\",\"zip\":512100,\"contact_name\":\"\\u725f\\u5b81\",\"contact_phone\":\"13988506484\"}', '43971.33', 'Illum vero iure laudantium culpa vero numquam.', '2018-06-11 05:28:06', 5, 'alipay', '7d3bdd1b-4b3d-3ff2-ab17-8d9b8540934c', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u8bfa\\u4f9d\\u66fc\\u8f6f\\u4ef6\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5f67ffdb-1370-3fa1-9ed2-1e1023d5938d\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(33, '20180710064535617413', 47, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c75\\u8857\\u9053\\u7b2c752\\u53f7\",\"zip\":442500,\"contact_name\":\"\\u5c91\\u9e70\",\"contact_phone\":\"14707813433\"}', '35623.65', 'Sequi consectetur minus eum accusantium atque totam est quidem.', '2018-06-23 15:47:00', 5, 'wechat', 'f46b432a-fecc-3cf9-a682-514da3bc8757', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u76df\\u65b0\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0eb6fa58-d19d-3938-8576-b85eca6d4161\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(34, '20180710064535516132', 5, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c65\\u53f7\",\"zip\":322400,\"contact_name\":\"\\u7545\\u6842\\u82b3\",\"contact_phone\":\"15911848434\"}', '7150.00', 'Et quo molestiae in adipisci quam ut repudiandae.', '2018-06-24 14:28:18', NULL, 'wechat', 'f5452462-6d89-3031-9061-1212f9f7a32a', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6656\\u6765\\u8ba1\\u7b97\\u673a\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ccddaba2-93db-3768-8832-8097e6ef1960\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(35, '20180710064535133755', 69, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c940\\u53f7\",\"zip\":702000,\"contact_name\":\"\\u5353\\u5065\",\"contact_phone\":\"17071308082\"}', '50922.00', 'Quibusdam libero veritatis quis aut quos et architecto.', '2018-07-03 05:26:30', NULL, 'alipay', 'eab6deef-b629-3552-a68f-f2e90a54df14', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4e03\\u559c\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"61ae83d0-22ae-35b9-86d9-690a5f25d4bb\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(36, '20180710064535839992', 5, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c33\\u8857\\u9053\\u7b2c217\\u53f7\",\"zip\":507800,\"contact_name\":\"\\u590f\\u667a\\u52c7\",\"contact_phone\":\"17742975567\"}', '39576.00', 'Dolorum possimus explicabo ab qui.', '2018-07-02 13:13:21', NULL, 'alipay', '5d66005c-4795-352d-8099-2d52bc9dfb03', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6602\\u6b4c\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"9bc6a6c3-bccd-3021-b880-37df8fb80ae5\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(37, '20180710064535263387', 60, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c241\\u53f7\",\"zip\":544200,\"contact_name\":\"\\u6731\\u971e\",\"contact_phone\":\"15693491696\"}', '55929.00', 'A voluptatem sint et blanditiis nesciunt ullam error.', '2018-06-22 13:15:03', NULL, 'alipay', '182556fe-1cb7-3cb7-8f92-bed78e4c618d', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(38, '20180710064535469767', 77, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c700\\u53f7\",\"zip\":523400,\"contact_name\":\"\\u9f9a\\u79c0\\u5170\",\"contact_phone\":\"18896750346\"}', '9900.00', 'Inventore in architecto qui laboriosam.', '2018-06-22 20:09:29', 15, 'wechat', '8412f0ba-cef2-3e42-85e3-5b6e60c80630', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u8944\\u6a0a\\u5730\\u7403\\u6751\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"74af9736-5287-39b9-aa38-24246f9aac99\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(39, '20180710064535330541', 40, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c30\\u53f7\",\"zip\":808000,\"contact_name\":\"\\u6587\\u4e3d\",\"contact_phone\":\"17188989443\"}', '20999.00', 'Ipsa odit sequi necessitatibus alias blanditiis ea dignissimos.', '2018-07-02 02:21:50', NULL, 'alipay', '2e6199f2-c0fd-3935-b7c2-5ccf55b39f60', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6069\\u608c\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"9d3485b8-e34e-3a42-a8b0-f3af95d68e31\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(40, '20180710064535784731', 87, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c42\\u8857\\u9053\\u7b2c771\\u53f7\",\"zip\":652900,\"contact_name\":\"\\u803f\\u82f1\",\"contact_phone\":\"15700688066\"}', '42496.00', 'Aliquid quas quia quibusdam suscipit.', '2018-06-28 01:08:26', NULL, 'alipay', 'ef059cd2-7115-3fff-9469-afed82fc2746', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u8054\\u901a\\u65f6\\u79d1\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d500190d-9d51-34c0-ab41-efb389391af3\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(41, '20180710064535008260', 40, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c30\\u53f7\",\"zip\":808000,\"contact_name\":\"\\u6587\\u4e3d\",\"contact_phone\":\"17188989443\"}', '56017.00', 'Sed vel error repellendus porro nulla dignissimos tempore.', '2018-06-22 00:38:23', NULL, 'alipay', '4cb6ca99-ed29-3c0e-a1e0-fe2ffdcf041a', 'success', 'a26e369a7608448c8e1b86ac444c2225', 0, 1, 'delivered', '{\"express_company\":\"\\u51cc\\u9896\\u4fe1\\u606f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"87310e0f-23fe-3eff-8a65-129d3d2e3d69\"}', '{\"refund_reason\":\"Quia et reiciendis corporis aliquam facere.\"}', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(42, '20180710064535753711', 9, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c686\\u53f7\",\"zip\":756100,\"contact_name\":\"\\u989c\\u5fd7\\u52c7\",\"contact_phone\":\"17074059805\"}', '20392.00', 'Sit voluptatem dolore quam consectetur.', '2018-07-05 05:32:35', NULL, 'wechat', '72cedc16-9e86-30d5-aecf-925bda72b237', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(43, '20180710064535702524', 22, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c14\\u8857\\u9053\\u7b2c287\\u53f7\",\"zip\":828700,\"contact_name\":\"\\u82cf\\u5029\",\"contact_phone\":\"13606129239\"}', '9606.00', 'Accusamus expedita consequatur dicta qui aut.', '2018-06-13 12:55:41', NULL, 'wechat', '549dae9e-5867-32a1-9417-23ed22ebb41f', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1215f5bb-debf-31a8-a06b-ad4293075ad4\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(44, '20180710064535823536', 43, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c38\\u8857\\u9053\\u7b2c70\\u53f7\",\"zip\":583200,\"contact_name\":\"\\u5218\\u6210\",\"contact_phone\":\"13238878599\"}', '8145.00', 'Sunt nam id exercitationem quasi.', '2018-06-19 21:36:38', NULL, 'wechat', '0291a261-b221-38ed-9385-94ff51b44007', 'success', 'bdfd951090be488292871076a69bb7df', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Soluta ut consequatur rem non culpa.\"}', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(45, '20180710064535589782', 45, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c94\\u8857\\u9053\\u7b2c568\\u53f7\",\"zip\":87600,\"contact_name\":\"\\u6b27\\u9633\\u7ea2\\u6885\",\"contact_phone\":\"18575393141\"}', '51094.00', 'Autem ea et laboriosam quidem.', '2018-07-03 22:31:23', NULL, 'wechat', '1baa0f9d-8cfa-3121-940e-c71327630051', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6052\\u806a\\u767e\\u6c47\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"643dd321-e6e0-36ce-b82b-8ea8c351fbb5\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(46, '20180710064535818539', 5, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c65\\u8857\\u9053\\u7b2c818\\u53f7\",\"zip\":307200,\"contact_name\":\"\\u53e4\\u660e\\u971e\",\"contact_phone\":\"17002260011\"}', '29630.00', 'Tempore in facere soluta rerum omnis.', '2018-07-08 21:04:29', NULL, 'alipay', 'fe24febb-5974-3eba-97fe-89b99f79b702', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(47, '20180710064535733186', 22, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c27\\u8857\\u9053\\u7b2c233\\u53f7\",\"zip\":596100,\"contact_name\":\"\\u5180\\u5fd7\\u65b0\",\"contact_phone\":\"13689301102\"}', '68902.00', 'Est vero odit aut maxime corrupti dolorum a.', '2018-06-18 02:47:03', NULL, 'alipay', '9e2be1bf-4828-377d-9b76-5ad68c47d037', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(48, '20180710064535654416', 80, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c17\\u8857\\u9053\\u7b2c477\\u53f7\",\"zip\":822100,\"contact_name\":\"\\u8d3e\\u745c\",\"contact_phone\":\"18019702154\"}', '4756.00', 'Eligendi veritatis fugiat laborum iusto debitis.', '2018-06-15 06:06:41', 15, 'alipay', '1f212143-6159-31e5-93e6-2d3bee4c662b', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(49, '20180710064535737610', 16, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c4\\u8857\\u9053\\u7b2c607\\u53f7\",\"zip\":545200,\"contact_name\":\"\\u6c89\\u5b81\",\"contact_phone\":\"17183809618\"}', '34156.61', 'Voluptatum incidunt magni quasi inventore.', '2018-07-07 12:23:51', 4, 'alipay', 'c4383d1c-685a-3f85-8ca9-4d94105f3ce8', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6d66\\u534e\\u4f17\\u57ce\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2524315e-b6ca-3388-90be-75372b93ecf4\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(50, '20180710064535196035', 100, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c31\\u8857\\u9053\\u7b2c63\\u53f7\",\"zip\":676100,\"contact_name\":\"\\u51b7\\u6842\\u82ac\",\"contact_phone\":\"13871186500\"}', '32220.00', 'Dolorum fugit esse cumque.', '2018-06-27 23:13:31', NULL, 'wechat', '3d52ae97-3e2e-3a68-8787-9f555cba2f02', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(51, '20180710064535987328', 39, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c16\\u8857\\u9053\\u7b2c737\\u53f7\",\"zip\":555700,\"contact_name\":\"\\u535c\\u6b23\",\"contact_phone\":\"15075948088\"}', '42026.00', 'Animi sunt fuga temporibus eligendi ut consectetur possimus.', '2018-07-07 01:07:58', NULL, 'alipay', 'c64e52d1-88cb-315f-88cd-0f33ccf56642', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u521b\\u8054\\u4e16\\u7eaa\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"35689858-b1b2-3318-899d-cd76fe027b55\"}', '[]', '2018-07-10 06:45:35', '2018-07-10 06:45:37'),
(52, '20180710064535130773', 58, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c75\\u8857\\u9053\\u7b2c444\\u53f7\",\"zip\":781600,\"contact_name\":\"\\u621a\\u971e\",\"contact_phone\":\"13432421930\"}', '43.92', 'Delectus non nemo aliquid quisquam quia placeat fuga illo.', '2018-06-24 07:15:10', 8, 'alipay', 'e64d1e7d-da9b-3bf7-b05c-ac151e6a4b35', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u601d\\u4f18\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"2c03d872-4a60-3e87-a3a4-b2301b92f3a1\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:37'),
(53, '20180710064536768847', 54, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c23\\u8857\\u9053\\u7b2c504\\u53f7\",\"zip\":677900,\"contact_name\":\"\\u8584\\u5b81\",\"contact_phone\":\"17197048485\"}', '31896.00', 'Ut sit eum velit ut harum.', '2018-06-16 16:08:37', NULL, 'wechat', '4e9f830e-558b-366a-a823-1843412b2287', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u76df\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bb5b97ad-0393-3428-9c5a-99a6dbadd326\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:37'),
(54, '20180710064536944093', 40, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c30\\u53f7\",\"zip\":808000,\"contact_name\":\"\\u6587\\u4e3d\",\"contact_phone\":\"17188989443\"}', '38080.71', 'Amet earum omnis aut.', '2018-06-10 14:28:16', 5, 'alipay', '21a30209-3c78-3467-a883-641eccd532c3', 'success', '0bb54b5516cf45e8ad34b4419d9782f1', 0, 0, 'pending', NULL, '{\"refund_reason\":\"Fugiat quia porro ipsam delectus.\"}', '2018-07-10 06:45:36', '2018-07-10 06:45:37'),
(55, '20180710064536131665', 73, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c12\\u8857\\u9053\\u7b2c333\\u53f7\",\"zip\":762000,\"contact_name\":\"\\u4f4d\\u6dd1\\u73cd\",\"contact_phone\":\"17756684370\"}', '39667.18', 'Velit temporibus odit et neque.', '2018-06-28 22:53:36', 4, 'alipay', '4f78b29f-e34e-3418-994b-0d6fcb0e6c4a', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:37'),
(56, '20180710064536883658', 85, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c902\\u53f7\",\"zip\":554500,\"contact_name\":\"\\u5321\\u82b3\",\"contact_phone\":\"18734145307\"}', '15275.00', 'Cumque sit sit est et tempora consectetur.', '2018-06-11 06:03:31', NULL, 'alipay', '150148bd-1bde-3225-8139-2da86e5f66fa', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5bcc\\u7f73\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"38e536c4-350f-334c-a76a-21be01dfaebb\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:37'),
(57, '20180710064536767673', 33, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c12\\u8857\\u9053\\u7b2c614\\u53f7\",\"zip\":366000,\"contact_name\":\"\\u8346\\u8f89\",\"contact_phone\":\"17198916561\"}', '9596.00', 'Enim odio consequatur repudiandae occaecati illo.', '2018-06-29 17:45:55', NULL, 'alipay', '19f0f216-b4d0-3675-b5d1-10f30232bebc', 'success', '496f8c0e4d5b4093ae859d175de62c53', 0, 1, 'delivered', '{\"express_company\":\"\\u4f73\\u79be\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3513a552-7528-37a3-9d98-5d5217de6bb8\"}', '{\"refund_reason\":\"Ea necessitatibus natus molestiae.\"}', '2018-07-10 06:45:36', '2018-07-10 06:45:37'),
(58, '20180710064536281026', 5, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c65\\u53f7\",\"zip\":322400,\"contact_name\":\"\\u7545\\u6842\\u82b3\",\"contact_phone\":\"15911848434\"}', '70389.00', 'Quos in natus ea et ab aut.', '2018-07-08 21:16:46', NULL, 'alipay', 'a47fc27d-3cd3-32b5-9ab9-73a669a88371', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u76df\\u65b0\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4098e951-7ba0-398d-a025-d2b2c53bc009\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(59, '20180710064536505644', 2, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c85\\u8857\\u9053\\u7b2c956\\u53f7\",\"zip\":544700,\"contact_name\":\"\\u7b80\\u65ed\",\"contact_phone\":\"13084667752\"}', '34240.74', 'Et aut est est dolorem est voluptas.', '2018-06-14 15:03:33', 5, 'wechat', '1dbd4542-900c-3a19-b364-0dd26c1822e9', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e2d\\u5efa\\u521b\\u4e1a\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e7a72e48-aca4-3451-a2b3-ba5012089c54\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(60, '20180710064536082153', 54, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c23\\u8857\\u9053\\u7b2c504\\u53f7\",\"zip\":677900,\"contact_name\":\"\\u8584\\u5b81\",\"contact_phone\":\"17197048485\"}', '38890.00', 'Deserunt et et est neque unde repellat vel.', '2018-07-07 00:36:21', NULL, 'alipay', 'd1a36718-a006-3592-99b6-5b42035774a3', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(61, '20180710064536960384', 85, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c902\\u53f7\",\"zip\":554500,\"contact_name\":\"\\u5321\\u82b3\",\"contact_phone\":\"18734145307\"}', '44203.00', 'Minima velit et voluptatem suscipit repellat.', '2018-06-22 14:56:50', NULL, 'wechat', '42d7e4b8-728e-365b-bd45-dd422f610a63', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(62, '20180710064536467680', 83, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c93\\u8857\\u9053\\u7b2c100\\u53f7\",\"zip\":183100,\"contact_name\":\"\\u8881\\u5fd7\\u65b0\",\"contact_phone\":\"15594232315\"}', '35372.00', 'Optio est ex non voluptatem.', '2018-07-07 12:55:44', NULL, 'alipay', 'd7351328-51c4-312d-8c67-fdb6fe448819', 'success', '9fca5e66face4e3a8d74484b86a64bfa', 0, 0, 'received', '{\"express_company\":\"\\u6656\\u6765\\u8ba1\\u7b97\\u673a\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5ce402ed-3fa9-31b0-9a7b-08d7644f1186\"}', '{\"refund_reason\":\"Ex deserunt numquam explicabo deleniti enim cupiditate sunt.\"}', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(63, '20180710064536800048', 70, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c7\\u8857\\u9053\\u7b2c894\\u53f7\",\"zip\":837900,\"contact_name\":\"\\u7aa6\\u6842\\u829d\",\"contact_phone\":\"18511358632\"}', '25980.48', 'Recusandae quia consequuntur eos sed consequuntur pariatur nostrum.', '2018-06-26 09:32:45', 8, 'wechat', '16eedbdf-f642-33d1-a953-ca4a7c1cc56d', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(64, '20180710064536479141', 83, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c93\\u8857\\u9053\\u7b2c100\\u53f7\",\"zip\":183100,\"contact_name\":\"\\u8881\\u5fd7\\u65b0\",\"contact_phone\":\"15594232315\"}', '2237.58', 'Dolorum libero aut molestias.', '2018-07-07 03:06:42', 5, 'alipay', '8f83e3ef-e5aa-38ef-910a-cf1273738edb', 'success', '66eba30ee8f845c196e6e726d28931cb', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Nobis maiores id odio qui et mollitia quidem.\"}', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(65, '20180710064536653381', 64, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c10\\u8857\\u9053\\u7b2c775\\u53f7\",\"zip\":496100,\"contact_name\":\"\\u6881\\u5e73\",\"contact_phone\":\"18680395036\"}', '87311.00', 'Non eligendi sit adipisci praesentium omnis quia aut.', '2018-07-08 03:18:36', NULL, 'alipay', '1008d880-ddb7-3f5e-803d-18d9e2991a05', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(66, '20180710064536296814', 9, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c686\\u53f7\",\"zip\":756100,\"contact_name\":\"\\u989c\\u5fd7\\u52c7\",\"contact_phone\":\"17074059805\"}', '21549.60', 'Ut nemo accusamus qui aspernatur iusto quis commodi odit.', '2018-06-24 04:06:42', 8, 'alipay', '74ecb0cd-6623-36fe-975f-678888e89516', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(67, '20180710064536157530', 24, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c26\\u8857\\u9053\\u7b2c266\\u53f7\",\"zip\":72000,\"contact_name\":\"\\u4ec7\\u5229\",\"contact_phone\":\"13587432321\"}', '53554.00', 'Ab ratione culpa saepe et sint nesciunt ut.', '2018-06-10 12:37:47', NULL, 'alipay', '9eb1bd4f-a64a-3fce-a3c5-88284ae29068', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u7ef4\\u6d9b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5e088352-1785-33fc-a031-30776932d9aa\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(68, '20180710064536908797', 47, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c75\\u8857\\u9053\\u7b2c752\\u53f7\",\"zip\":442500,\"contact_name\":\"\\u5c91\\u9e70\",\"contact_phone\":\"14707813433\"}', '3442.50', 'Quos qui quia fugit fuga.', '2018-06-23 10:51:18', 15, 'wechat', '31ea8fb0-df49-34e1-b31d-dd9942418629', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(69, '20180710064536507111', 74, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c63\\u8857\\u9053\\u7b2c927\\u53f7\",\"zip\":201100,\"contact_name\":\"\\u90d1\\u667a\\u654f\",\"contact_phone\":\"17017646601\"}', '27762.00', 'Cum sunt modi sapiente consectetur.', '2018-06-25 10:45:43', NULL, 'wechat', '60a6ffc0-4dfe-3c1f-8ff2-95acd0ff27ec', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(70, '20180710064536714900', 62, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c63\\u8857\\u9053\\u7b2c99\\u53f7\",\"zip\":505500,\"contact_name\":\"\\u6731\\u8f89\",\"contact_phone\":\"13213650633\"}', '2474.00', 'Quibusdam a ab molestiae vel aut non velit.', '2018-07-06 13:18:27', NULL, 'alipay', '73cc66e1-cf45-3eb1-9d4f-f33f75e85033', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(71, '20180710064536361628', 25, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c10\\u8857\\u9053\\u7b2c390\\u53f7\",\"zip\":797900,\"contact_name\":\"\\u8f66\\u5efa\\u660e\",\"contact_phone\":\"18213591640\"}', '15238.00', 'Suscipit sit ea aliquid odit non temporibus sed.', '2018-06-26 08:17:42', NULL, 'wechat', '32f75c85-ecf7-3480-a6c8-dfc2298a4eaa', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(72, '20180710064536600866', 17, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c11\\u8857\\u9053\\u7b2c428\\u53f7\",\"zip\":612000,\"contact_name\":\"\\u7eaa\\u667a\\u660e\",\"contact_phone\":\"17093581488\"}', '27314.10', 'Tenetur a quo soluta et eaque.', '2018-07-06 20:14:01', 5, 'alipay', '45d1afac-dad7-3529-9d63-eef06a548c71', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u660a\\u5609\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0d8093e0-f307-3a0f-96ab-de46edd897ea\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(73, '20180710064536147081', 90, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c326\\u53f7\",\"zip\":555000,\"contact_name\":\"\\u7ec3\\u6842\\u82b1\",\"contact_phone\":\"13830598678\"}', '35322.00', 'Unde at fugit aut.', '2018-06-18 16:32:20', NULL, 'wechat', '14ee769d-0052-3b81-a480-21d5a1eda102', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(74, '20180710064536361053', 41, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c56\\u8857\\u9053\\u7b2c949\\u53f7\",\"zip\":517600,\"contact_name\":\"\\u6bb7\\u6b63\\u8bda\",\"contact_phone\":\"17183842397\"}', '7115.00', 'Quasi impedit optio neque tempore eius sunt sed inventore.', '2018-07-01 17:16:12', NULL, 'alipay', 'e8c3bd96-efe3-30e7-9b6c-d98909923040', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u56fd\\u8baf\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3e592cbb-8740-3b14-9f11-569cb75680b2\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(75, '20180710064536798781', 91, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c43\\u8857\\u9053\\u7b2c417\\u53f7\",\"zip\":631500,\"contact_name\":\"\\u6817\\u6668\",\"contact_phone\":\"13528109684\"}', '77782.00', 'Laudantium dolorem eos eveniet quia.', '2018-07-02 09:34:59', NULL, 'alipay', 'b6c71bf7-56c9-3a67-accb-e841bbe0c166', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u98de\\u5229\\u4fe1\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"6f20ad48-3366-3ddd-8cde-233f66c14d79\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(76, '20180710064536948917', 88, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c31\\u8857\\u9053\\u7b2c720\\u53f7\",\"zip\":207800,\"contact_name\":\"\\u5de6\\u6842\\u82b3\",\"contact_phone\":\"13407630351\"}', '24165.00', 'Hic eligendi culpa non facere.', '2018-07-05 16:18:01', NULL, 'alipay', '3da28fb8-7b58-32d8-8626-08087e4eabed', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u5bcc\\u7f73\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"66e04c7f-7071-3fef-b1f3-4d061c8e66a1\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(77, '20180710064536248231', 44, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c81\\u8857\\u9053\\u7b2c200\\u53f7\",\"zip\":488800,\"contact_name\":\"\\u6817\\u82b3\",\"contact_phone\":\"18802808321\"}', '8146.00', 'Qui voluptatum aut voluptatem aspernatur voluptatem.', '2018-06-11 13:26:26', 15, 'alipay', 'f37b7ed5-849b-3b2a-9297-64b33c6fbee3', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(78, '20180710064536517804', 54, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c17\\u8857\\u9053\\u7b2c864\\u53f7\",\"zip\":57700,\"contact_name\":\"\\u65bd\\u7389\",\"contact_phone\":\"17015035078\"}', '60440.00', 'Officiis porro eius aut quis quisquam et.', '2018-07-04 16:41:54', NULL, 'wechat', 'f643d196-6d02-31cc-9ee5-6b3f79be1f30', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u56fd\\u8baf\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5eef0586-6695-37c5-b545-57047c1b5592\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(79, '20180710064536498109', 37, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c14\\u8857\\u9053\\u7b2c759\\u53f7\",\"zip\":748000,\"contact_name\":\"\\u65b9\\u4e39\",\"contact_phone\":\"18725896327\"}', '4111.00', 'Corporis a ex repudiandae quis inventore.', '2018-07-08 04:23:00', 15, 'alipay', 'a8090316-7ab6-3f3b-ab53-a09e58901cef', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(80, '20180710064536538310', 22, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c14\\u8857\\u9053\\u7b2c287\\u53f7\",\"zip\":828700,\"contact_name\":\"\\u82cf\\u5029\",\"contact_phone\":\"13606129239\"}', '21601.00', 'Enim sit nesciunt blanditiis ullam.', '2018-06-30 21:24:08', NULL, 'alipay', '75cea98a-11ad-31c0-a5b3-cc30b8b0572f', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u548c\\u6cf0\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"77a1c3af-eb1b-3406-a496-6207f5937533\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(81, '20180710064536771464', 34, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c69\\u8857\\u9053\\u7b2c311\\u53f7\",\"zip\":412300,\"contact_name\":\"\\u90d1\\u6842\\u5170\",\"contact_phone\":\"15608906262\"}', '73200.00', 'Est consequatur et consequuntur in rem nihil quia.', '2018-06-11 05:29:46', NULL, 'alipay', '20da5277-208b-3bfd-ba44-15dc8ea1c3b0', 'success', '22760412bb3a4a5f9453dc2bd79554c3', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Doloribus voluptatem esse atque pariatur quas delectus.\"}', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(82, '20180710064536569096', 90, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c326\\u53f7\",\"zip\":555000,\"contact_name\":\"\\u7ec3\\u6842\\u82b1\",\"contact_phone\":\"13830598678\"}', '20052.00', 'Assumenda quidem molestiae sapiente animi.', '2018-06-25 14:23:42', NULL, 'alipay', 'b2b265b1-a21f-3878-888c-1625ec67b20d', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u946b\\u535a\\u817e\\u98de\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cbe2f835-99f3-36fe-a674-027cfda518b2\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(83, '20180710064536657235', 7, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c63\\u8857\\u9053\\u7b2c250\\u53f7\",\"zip\":634600,\"contact_name\":\"\\u6587\\u5e05\",\"contact_phone\":\"13136068842\"}', '57198.00', 'Iste tempore necessitatibus doloremque quia voluptatibus eos laborum.', '2018-06-10 14:09:48', NULL, 'alipay', 'e3bbd8c9-208b-3494-aec7-cb9352e029af', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u56fe\\u9f99\\u4fe1\\u606f\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f78ff9fd-e426-322b-a9b5-c98c3ea7c6ee\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(84, '20180710064536106597', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c84\\u8857\\u9053\\u7b2c87\\u53f7\",\"zip\":102200,\"contact_name\":\"\\u8f9b\\u521a\",\"contact_phone\":\"15522284219\"}', '57304.00', 'Nulla nihil officiis occaecati quo vel dolorum aut.', '2018-06-19 06:19:36', NULL, 'wechat', 'cf0cfbad-e11e-3125-b5fb-fa3158a07a70', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u8944\\u6a0a\\u5730\\u7403\\u6751\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8709b185-d173-360c-a0a6-96a7c242aeeb\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(85, '20180710064536739307', 32, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c82\\u8857\\u9053\\u7b2c54\\u53f7\",\"zip\":775400,\"contact_name\":\"\\u89e3\\u6dd1\\u73cd\",\"contact_phone\":\"18901710687\"}', '41455.00', 'Voluptas maiores qui id tempore.', '2018-06-20 09:07:52', NULL, 'wechat', '41f3642e-a1c8-3c5e-ba87-173ba6044955', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(86, '20180710064536017737', 34, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c60\\u8857\\u9053\\u7b2c599\\u53f7\",\"zip\":343700,\"contact_name\":\"\\u539f\\u7fd4\",\"contact_phone\":\"15533946412\"}', '20243.00', 'Eaque molestiae non pariatur labore.', '2018-06-25 07:06:50', 15, 'wechat', '71d9c7e8-d54a-30bd-8ff7-7cf039682117', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(87, '20180710064536996465', 17, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c11\\u8857\\u9053\\u7b2c428\\u53f7\",\"zip\":612000,\"contact_name\":\"\\u7eaa\\u667a\\u660e\",\"contact_phone\":\"17093581488\"}', '14253.00', 'In reprehenderit sed molestiae ea ut esse.', '2018-06-28 09:31:04', 15, 'alipay', '30d68ecb-2c7b-3a4f-9c32-68e3357de1b7', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u4fe1\\u8bda\\u81f4\\u8fdc\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"9fc26844-dd69-380e-8a74-1279f744bf92\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38');
INSERT INTO `orders` (`id`, `no`, `user_id`, `address`, `total_amount`, `remark`, `paid_at`, `coupon_code_id`, `payment_method`, `payment_no`, `refund_status`, `refund_no`, `closed`, `reviewed`, `ship_status`, `ship_data`, `extra`, `created_at`, `updated_at`) VALUES
(88, '20180710064536560064', 68, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c93\\u8857\\u9053\\u7b2c872\\u53f7\",\"zip\":798100,\"contact_name\":\"\\u80e1\\u52c7\",\"contact_phone\":\"13256349565\"}', '35481.00', 'Iste voluptatum autem culpa est laborum voluptas vero.', '2018-06-26 09:28:59', NULL, 'wechat', '3c33af45-e0f9-325e-8cde-2d67411fe0c9', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(89, '20180710064536073282', 51, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c845\\u53f7\",\"zip\":766700,\"contact_name\":\"\\u4f5f\\u79c0\\u5170\",\"contact_phone\":\"18722262884\"}', '19404.00', 'Praesentium ut non explicabo ut nobis eligendi.', '2018-06-14 03:17:59', NULL, 'wechat', '406342af-bb0a-344c-bb4c-609a9342ea3f', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u7ef4\\u65fa\\u660e\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1e19bc7d-ca93-33a5-be3e-51a93a015044\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(90, '20180710064536127825', 46, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c66\\u53f7\",\"zip\":51500,\"contact_name\":\"\\u5e84\\u56fd\\u5e86\",\"contact_phone\":\"13225798045\"}', '42557.04', 'Eos blanditiis consectetur expedita.', '2018-06-22 13:44:00', 8, 'wechat', 'd0be7586-7e8f-34f2-a534-0bcb2cf7fcca', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e2d\\u5efa\\u521b\\u4e1a\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0e9ca8c6-d481-330a-90e1-60940a311c8e\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(91, '20180710064536257906', 20, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c75\\u53f7\",\"zip\":408100,\"contact_name\":\"\\u725f\\u6377\",\"contact_phone\":\"17090158436\"}', '45095.00', 'Incidunt amet recusandae quidem nobis.', '2018-07-08 21:45:57', NULL, 'wechat', 'c5627a3a-72a5-315a-843c-2a2b35441dc0', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u56fe\\u9f99\\u4fe1\\u606f\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"595f3820-0aa7-3464-8cf8-44629843b528\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(92, '20180710064536614323', 13, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c76\\u8857\\u9053\\u7b2c439\\u53f7\",\"zip\":732500,\"contact_name\":\"\\u6728\\u79c0\\u82b3\",\"contact_phone\":\"15172385830\"}', '62540.00', 'Aut beatae vel quia.', '2018-06-14 06:49:56', NULL, 'wechat', '5be674aa-5afa-34c1-81e6-e79ebb5fef89', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u7acb\\u4fe1\\u7535\\u5b50\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"73675fac-916b-3953-aaa8-73bac8bf03f1\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:38'),
(93, '20180710064536408206', 4, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c79\\u8857\\u9053\\u7b2c42\\u53f7\",\"zip\":641100,\"contact_name\":\"\\u51b7\\u7ea2\",\"contact_phone\":\"17099917395\"}', '44897.00', 'Sed ut et nesciunt vel molestias.', '2018-06-26 03:17:56', NULL, 'wechat', 'b41f1441-a2cb-39d1-9877-a5ec240b5b39', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u9ec4\\u77f3\\u91d1\\u627f\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"0dec9d7a-88dc-3043-881b-4251cdab44a7\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(94, '20180710064536735507', 8, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c63\\u8857\\u9053\\u7b2c761\\u53f7\",\"zip\":72900,\"contact_name\":\"\\u4e18\\u6842\\u8363\",\"contact_phone\":\"13846299848\"}', '32485.30', 'Sint blanditiis et commodi quos beatae ipsum animi ex.', '2018-06-26 02:08:55', 4, 'wechat', '136dec5a-b446-3287-9073-8159c160ba3d', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(95, '20180710064536595237', 20, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c75\\u53f7\",\"zip\":408100,\"contact_name\":\"\\u725f\\u6377\",\"contact_phone\":\"17090158436\"}', '15856.00', 'Dolorum laboriosam dolorem ut et.', '2018-06-17 23:24:54', NULL, 'wechat', '85aebcd7-4b5b-399a-b474-dc94cf1140c6', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(96, '20180710064536499893', 94, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c521\\u53f7\",\"zip\":677800,\"contact_name\":\"\\u5de9\\u6b63\\u4e1a\",\"contact_phone\":\"15959433252\"}', '64214.00', 'Est dolorem consequatur quaerat et voluptatem libero cumque.', '2018-07-01 11:50:24', NULL, 'wechat', '92091417-1cc8-3b40-87c8-2a1bf89853f2', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6052\\u806a\\u767e\\u6c47\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3d7c8dad-e800-3cff-8236-c42d8da01a20\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(97, '20180710064536533359', 50, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c516\\u53f7\",\"zip\":101400,\"contact_name\":\"\\u5b54\\u83b9\",\"contact_phone\":\"18817585486\"}', '44258.00', 'Corrupti cumque magnam aut sint exercitationem.', '2018-07-10 03:17:23', NULL, 'alipay', '9c5715cd-5ec6-3d9a-9ffe-299730382412', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6069\\u608c\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"63e17933-d680-357c-a694-010245ef9cfc\"}', '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(98, '20180710064536817433', 2, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c2\\u8857\\u9053\\u7b2c953\\u53f7\",\"zip\":556000,\"contact_name\":\"\\u6a0a\\u6dd1\\u5170\",\"contact_phone\":\"15635204486\"}', '33904.00', 'Dolor unde eos quo aliquid voluptatem et enim.', '2018-07-05 10:11:13', NULL, 'wechat', '3a7a4598-2248-3c9e-b36d-7258c1a6564d', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(99, '20180710064536127559', 21, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c56\\u8857\\u9053\\u7b2c79\\u53f7\",\"zip\":168300,\"contact_name\":\"\\u5b87\\u9633\",\"contact_phone\":\"15214231288\"}', '42184.00', 'Fugiat temporibus alias impedit eum sint est.', '2018-06-27 05:27:40', NULL, 'wechat', 'b53dcc8a-3b58-3632-afd5-0842bbfcda5d', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39'),
(100, '20180710064536764407', 99, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c26\\u8857\\u9053\\u7b2c991\\u53f7\",\"zip\":274200,\"contact_name\":\"\\u8d3e\\u6587\\u541b\",\"contact_phone\":\"17199864309\"}', '67285.00', 'Dolorum maxime odit et id vitae.', '2018-07-09 19:36:22', NULL, 'wechat', '1c5729cc-2260-388b-8d44-fe1b3b3fa616', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2018-07-10 06:45:36', '2018-07-10 06:45:39');

-- --------------------------------------------------------

--
-- 表的结构 `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_sku_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) UNSIGNED DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_sku_id`, `amount`, `price`, `rating`, `review`, `reviewed_at`) VALUES
(1, 1, 1, 3, 1, '1459.00', 3, 'Illo sint nisi minus saepe quo.', '2018-07-08 08:05:52'),
(2, 1, 5, 14, 5, '1423.00', 3, 'Illo sint nisi minus saepe quo.', '2018-07-08 08:05:52'),
(3, 2, 9, 26, 2, '2729.00', 2, 'Optio sunt vel illum itaque autem.', '2018-07-05 01:08:29'),
(4, 2, 27, 80, 1, '7928.00', 2, 'Optio sunt vel illum itaque autem.', '2018-07-05 01:08:29'),
(5, 2, 29, 85, 3, '214.00', 2, 'Optio sunt vel illum itaque autem.', '2018-07-05 01:08:29'),
(6, 3, 14, 40, 2, '5648.00', NULL, NULL, NULL),
(7, 4, 13, 39, 2, '5192.00', 4, 'Enim voluptas ut deserunt vero.', '2018-06-30 16:06:43'),
(8, 4, 10, 30, 4, '2079.00', 4, 'Enim voluptas ut deserunt vero.', '2018-06-30 16:06:43'),
(9, 4, 21, 63, 5, '8235.00', 4, 'Enim voluptas ut deserunt vero.', '2018-06-30 16:06:43'),
(10, 5, 7, 19, 2, '8055.00', 5, 'Officiis aliquam neque aperiam aut.', '2018-07-01 08:31:22'),
(11, 6, 22, 64, 3, '1736.00', NULL, NULL, NULL),
(12, 7, 29, 87, 5, '5727.00', NULL, NULL, NULL),
(13, 7, 29, 86, 2, '8519.00', NULL, NULL, NULL),
(14, 8, 27, 79, 1, '1253.00', 4, 'Velit assumenda sit nostrum maiores placeat.', '2018-07-09 21:46:33'),
(15, 8, 12, 36, 1, '9860.00', 4, 'Velit assumenda sit nostrum maiores placeat.', '2018-07-09 21:46:33'),
(16, 8, 29, 86, 4, '8519.00', 4, 'Velit assumenda sit nostrum maiores placeat.', '2018-07-09 21:46:33'),
(17, 9, 5, 14, 5, '1423.00', 4, 'Reprehenderit provident ipsa et et quam deleniti.', '2018-06-26 01:46:26'),
(18, 10, 9, 26, 2, '2729.00', 3, 'Odio culpa quam aut nulla exercitationem ratione amet.', '2018-06-30 15:27:20'),
(19, 10, 24, 72, 2, '3774.00', 3, 'Odio culpa quam aut nulla exercitationem ratione amet.', '2018-06-30 15:27:20'),
(20, 10, 27, 80, 5, '7928.00', 3, 'Odio culpa quam aut nulla exercitationem ratione amet.', '2018-06-30 15:27:20'),
(21, 11, 25, 75, 2, '897.00', 2, 'Occaecati quae est atque tempore et error.', '2018-07-02 06:03:12'),
(22, 11, 25, 73, 5, '9894.00', 2, 'Occaecati quae est atque tempore et error.', '2018-07-02 06:03:12'),
(23, 11, 21, 61, 3, '9411.00', 2, 'Occaecati quae est atque tempore et error.', '2018-07-02 06:03:12'),
(24, 12, 11, 32, 4, '4111.00', NULL, NULL, NULL),
(25, 12, 29, 86, 1, '8519.00', NULL, NULL, NULL),
(26, 12, 28, 83, 4, '4851.00', NULL, NULL, NULL),
(27, 13, 4, 11, 5, '3015.00', 2, 'Porro velit consectetur amet ipsam rerum explicabo et.', '2018-07-10 05:39:24'),
(28, 13, 2, 6, 4, '6286.00', 2, 'Porro velit consectetur amet ipsam rerum explicabo et.', '2018-07-10 05:39:24'),
(29, 13, 5, 14, 1, '1423.00', 2, 'Porro velit consectetur amet ipsam rerum explicabo et.', '2018-07-10 05:39:24'),
(30, 14, 8, 23, 2, '7778.00', 5, 'Aut voluptas sunt exercitationem labore harum.', '2018-06-25 11:48:45'),
(31, 14, 18, 53, 4, '6429.00', 5, 'Aut voluptas sunt exercitationem labore harum.', '2018-06-25 11:48:45'),
(32, 14, 7, 19, 1, '8055.00', 5, 'Aut voluptas sunt exercitationem labore harum.', '2018-06-25 11:48:45'),
(33, 15, 28, 84, 5, '1203.00', 4, 'Vel doloribus eveniet voluptas qui.', '2018-07-08 07:30:51'),
(34, 16, 28, 82, 1, '2066.00', NULL, NULL, NULL),
(35, 16, 4, 10, 1, '7545.00', NULL, NULL, NULL),
(36, 17, 24, 71, 4, '6200.00', NULL, NULL, NULL),
(37, 17, 7, 20, 3, '3225.00', NULL, NULL, NULL),
(38, 18, 5, 13, 3, '5098.00', 1, 'Et cupiditate ipsa sequi ducimus vel et.', '2018-07-05 09:34:27'),
(39, 18, 4, 11, 2, '3015.00', 1, 'Et cupiditate ipsa sequi ducimus vel et.', '2018-07-05 09:34:27'),
(40, 18, 24, 72, 2, '3774.00', 1, 'Et cupiditate ipsa sequi ducimus vel et.', '2018-07-05 09:34:27'),
(41, 19, 9, 26, 5, '2729.00', NULL, NULL, NULL),
(42, 19, 17, 51, 4, '9926.00', NULL, NULL, NULL),
(43, 20, 26, 78, 1, '8966.00', 1, 'Omnis quidem id totam non.', '2018-06-23 23:36:16'),
(44, 21, 2, 4, 1, '7142.00', 5, 'Nesciunt distinctio eligendi et sit delectus repellendus reiciendis.', '2018-07-08 22:07:05'),
(45, 22, 6, 17, 3, '3055.00', 4, 'Sunt laudantium deserunt molestias totam earum fuga occaecati.', '2018-07-09 17:58:48'),
(46, 23, 2, 6, 3, '6286.00', 3, 'Est voluptas placeat iure totam.', '2018-06-27 19:02:26'),
(47, 24, 20, 58, 4, '3262.00', NULL, NULL, NULL),
(48, 24, 24, 70, 4, '6326.00', NULL, NULL, NULL),
(49, 24, 24, 72, 4, '3774.00', NULL, NULL, NULL),
(50, 25, 14, 41, 5, '8722.00', 1, 'Iure consequatur eum aut.', '2018-06-27 05:52:08'),
(51, 25, 17, 50, 1, '9294.00', 1, 'Iure consequatur eum aut.', '2018-06-27 05:52:08'),
(52, 26, 29, 87, 3, '5727.00', 1, 'Sapiente quis illo accusamus fugit officia rerum accusamus eveniet.', '2018-07-09 14:56:41'),
(53, 27, 25, 73, 1, '9894.00', NULL, NULL, NULL),
(54, 27, 14, 41, 3, '8722.00', NULL, NULL, NULL),
(55, 27, 19, 56, 5, '3157.00', NULL, NULL, NULL),
(56, 28, 13, 37, 4, '1256.00', 5, 'Non labore ipsam similique ut a quasi et.', '2018-07-01 03:35:32'),
(57, 28, 22, 66, 5, '2338.00', 5, 'Non labore ipsam similique ut a quasi et.', '2018-07-01 03:35:32'),
(58, 28, 23, 67, 2, '7098.00', 5, 'Non labore ipsam similique ut a quasi et.', '2018-07-01 03:35:32'),
(59, 29, 22, 64, 4, '1736.00', 3, 'Nobis laudantium rerum ea eos aliquam.', '2018-07-01 14:59:06'),
(60, 30, 24, 70, 3, '6326.00', NULL, NULL, NULL),
(61, 30, 9, 27, 1, '7480.00', NULL, NULL, NULL),
(62, 31, 2, 6, 2, '6286.00', NULL, NULL, NULL),
(63, 32, 15, 44, 5, '1891.00', NULL, NULL, NULL),
(64, 32, 25, 73, 2, '9894.00', NULL, NULL, NULL),
(65, 32, 3, 8, 2, '9019.00', NULL, NULL, NULL),
(66, 33, 30, 89, 5, '7661.00', 3, 'Dolores molestias autem est ratione.', '2018-07-03 03:42:59'),
(67, 34, 5, 14, 1, '1423.00', 2, 'Ab nulla ducimus rerum aut ullam.', '2018-07-01 18:19:02'),
(68, 34, 29, 87, 1, '5727.00', 2, 'Ab nulla ducimus rerum aut ullam.', '2018-07-01 18:19:02'),
(69, 35, 16, 46, 2, '4357.00', 1, 'Commodi totam quo id aut quis.', '2018-07-08 12:03:30'),
(70, 35, 19, 56, 4, '3157.00', 1, 'Commodi totam quo id aut quis.', '2018-07-08 12:03:30'),
(71, 35, 12, 36, 3, '9860.00', 1, 'Commodi totam quo id aut quis.', '2018-07-08 12:03:30'),
(72, 36, 25, 73, 4, '9894.00', 4, 'Asperiores et repudiandae occaecati error ad quidem.', '2018-07-07 20:05:06'),
(73, 37, 27, 80, 3, '7928.00', 5, 'Cupiditate illo et earum ipsum et.', '2018-06-22 21:33:57'),
(74, 37, 18, 53, 5, '6429.00', 5, 'Cupiditate illo et earum ipsum et.', '2018-06-22 21:33:57'),
(75, 38, 4, 11, 2, '3015.00', 5, 'Eum velit incidunt vel repellat.', '2018-06-26 09:23:18'),
(76, 38, 2, 5, 2, '6885.00', 5, 'Eum velit incidunt vel repellat.', '2018-06-26 09:23:18'),
(77, 39, 14, 40, 1, '5648.00', 5, 'Ipsa ipsam ut voluptas quasi iure expedita nobis dolorem.', '2018-07-03 17:07:02'),
(78, 39, 23, 69, 3, '3234.00', 5, 'Ipsa ipsam ut voluptas quasi iure expedita nobis dolorem.', '2018-07-03 17:07:02'),
(79, 39, 17, 49, 3, '1883.00', 5, 'Ipsa ipsam ut voluptas quasi iure expedita nobis dolorem.', '2018-07-03 17:07:02'),
(80, 40, 20, 59, 4, '9165.00', 4, 'Laudantium culpa tenetur eligendi est libero in.', '2018-06-29 19:13:19'),
(81, 40, 1, 3, 4, '1459.00', 4, 'Laudantium culpa tenetur eligendi est libero in.', '2018-06-29 19:13:19'),
(82, 41, 19, 55, 1, '8146.00', 3, 'Et nihil est illo nobis.', '2018-06-26 07:51:00'),
(83, 41, 24, 72, 4, '3774.00', 3, 'Et nihil est illo nobis.', '2018-06-26 07:51:00'),
(84, 41, 11, 31, 5, '6555.00', 3, 'Et nihil est illo nobis.', '2018-06-26 07:51:00'),
(85, 42, 5, 13, 4, '5098.00', 1, 'In omnis consequatur aut qui consequatur voluptates repudiandae.', '2018-07-07 00:23:03'),
(86, 43, 22, 65, 3, '3202.00', 1, 'Aspernatur sed ratione non magnam.', '2018-06-22 12:14:09'),
(87, 44, 13, 37, 3, '1256.00', 5, 'Est voluptatem dolores laudantium.', '2018-07-07 22:20:57'),
(88, 44, 1, 3, 3, '1459.00', 5, 'Est voluptatem dolores laudantium.', '2018-07-07 22:20:57'),
(89, 45, 9, 25, 3, '918.00', 5, 'Dolorum dolores consequuntur voluptatem dolorem.', '2018-07-09 07:19:50'),
(90, 45, 2, 5, 1, '6885.00', 5, 'Dolorum dolores consequuntur voluptatem dolorem.', '2018-07-09 07:19:50'),
(91, 45, 16, 48, 5, '8291.00', 5, 'Dolorum dolores consequuntur voluptatem dolorem.', '2018-07-09 07:19:50'),
(92, 46, 26, 77, 5, '3446.00', 1, 'Laudantium nobis nesciunt voluptas odit voluptas ullam.', '2018-07-09 04:35:20'),
(93, 46, 24, 71, 2, '6200.00', 1, 'Laudantium nobis nesciunt voluptas odit voluptas ullam.', '2018-07-09 04:35:20'),
(94, 47, 27, 81, 4, '6323.00', 3, 'Unde eum facilis nostrum voluptates perspiciatis fugiat.', '2018-07-06 02:09:19'),
(95, 47, 14, 41, 5, '8722.00', 3, 'Unde eum facilis nostrum voluptates perspiciatis fugiat.', '2018-07-06 02:09:19'),
(96, 48, 15, 43, 4, '2378.00', NULL, NULL, NULL),
(97, 49, 11, 32, 5, '4111.00', NULL, NULL, NULL),
(98, 49, 14, 41, 1, '8722.00', NULL, NULL, NULL),
(99, 49, 23, 68, 4, '1484.00', NULL, NULL, NULL),
(100, 50, 7, 19, 4, '8055.00', 5, 'Perspiciatis quos fugiat dolorem enim excepturi.', '2018-07-05 05:00:39'),
(101, 51, 20, 58, 5, '3262.00', 4, 'Enim sint sequi impedit quas odit recusandae aliquid.', '2018-07-09 01:11:56'),
(102, 51, 18, 53, 4, '6429.00', 4, 'Enim sint sequi impedit quas odit recusandae aliquid.', '2018-07-09 01:11:56'),
(103, 52, 8, 22, 1, '61.00', 5, 'Aut repellendus hic eum qui.', '2018-07-02 19:43:40'),
(104, 53, 30, 90, 3, '4356.00', 2, 'Laborum officia reiciendis et enim et modi.', '2018-07-09 03:05:45'),
(105, 53, 28, 82, 3, '2066.00', 2, 'Laborum officia reiciendis et enim et modi.', '2018-07-09 03:05:45'),
(106, 53, 12, 35, 2, '6315.00', 2, 'Laborum officia reiciendis et enim et modi.', '2018-07-09 03:05:45'),
(107, 54, 21, 62, 4, '8658.00', NULL, NULL, NULL),
(108, 54, 12, 35, 1, '6315.00', NULL, NULL, NULL),
(109, 55, 3, 7, 2, '7336.00', 5, 'Non incidunt eligendi id recusandae.', '2018-07-10 03:48:14'),
(110, 55, 15, 44, 2, '1891.00', 5, 'Non incidunt eligendi id recusandae.', '2018-07-10 03:48:14'),
(111, 55, 9, 27, 3, '7480.00', 5, 'Non incidunt eligendi id recusandae.', '2018-07-10 03:48:14'),
(112, 56, 6, 17, 5, '3055.00', 2, 'Repudiandae labore nemo vel sunt nobis.', '2018-07-04 09:45:59'),
(113, 57, 5, 14, 1, '1423.00', 5, 'Dolore dignissimos aut beatae natus.', '2018-07-09 01:17:55'),
(114, 57, 7, 20, 1, '3225.00', 5, 'Dolore dignissimos aut beatae natus.', '2018-07-09 01:17:55'),
(115, 57, 4, 12, 4, '1237.00', 5, 'Dolore dignissimos aut beatae natus.', '2018-07-09 01:17:55'),
(116, 58, 18, 53, 5, '6429.00', 4, 'Error ut molestiae placeat et.', '2018-07-09 02:34:47'),
(117, 58, 23, 67, 5, '7098.00', 4, 'Error ut molestiae placeat et.', '2018-07-09 02:34:47'),
(118, 58, 9, 25, 3, '918.00', 4, 'Error ut molestiae placeat et.', '2018-07-09 02:34:47'),
(119, 59, 20, 59, 2, '9165.00', 3, 'Ipsa placeat libero architecto nam voluptatem perferendis aut.', '2018-06-30 11:36:16'),
(120, 59, 18, 52, 2, '9244.00', 3, 'Ipsa placeat libero architecto nam voluptatem perferendis aut.', '2018-06-30 11:36:16'),
(121, 60, 8, 23, 5, '7778.00', 5, 'Ut fugit nemo vel.', '2018-07-07 04:35:41'),
(122, 61, 18, 54, 2, '9424.00', NULL, NULL, NULL),
(123, 61, 20, 58, 5, '3262.00', NULL, NULL, NULL),
(124, 61, 4, 11, 3, '3015.00', NULL, NULL, NULL),
(125, 62, 19, 57, 4, '8083.00', NULL, NULL, NULL),
(126, 62, 8, 24, 2, '1520.00', NULL, NULL, NULL),
(127, 63, 21, 62, 3, '8658.00', 2, 'Non numquam rerum accusamus ullam.', '2018-07-01 05:10:37'),
(128, 63, 7, 20, 1, '3225.00', 2, 'Non numquam rerum accusamus ullam.', '2018-07-01 05:10:37'),
(129, 63, 2, 5, 1, '6885.00', 2, 'Non numquam rerum accusamus ullam.', '2018-07-01 05:10:37'),
(130, 64, 28, 84, 2, '1203.00', 2, 'Est exercitationem distinctio suscipit ut quia dolorem.', '2018-07-09 15:04:31'),
(131, 65, 18, 54, 3, '9424.00', 2, 'Illum non laudantium autem dicta itaque.', '2018-07-08 20:17:24'),
(132, 65, 11, 32, 4, '4111.00', 2, 'Illum non laudantium autem dicta itaque.', '2018-07-08 20:17:24'),
(133, 65, 29, 86, 5, '8519.00', 2, 'Illum non laudantium autem dicta itaque.', '2018-07-08 20:17:24'),
(134, 66, 10, 29, 5, '4733.00', 1, 'Similique ipsum labore non reprehenderit dolor qui.', '2018-07-07 11:17:53'),
(135, 66, 27, 79, 5, '1253.00', 1, 'Similique ipsum labore non reprehenderit dolor qui.', '2018-07-07 11:17:53'),
(136, 67, 2, 4, 5, '7142.00', 5, 'Suscipit ducimus maxime ea debitis et non dicta molestiae.', '2018-06-17 18:24:30'),
(137, 67, 13, 39, 1, '5192.00', 5, 'Suscipit ducimus maxime ea debitis et non dicta molestiae.', '2018-06-17 18:24:30'),
(138, 67, 24, 70, 2, '6326.00', 5, 'Suscipit ducimus maxime ea debitis et non dicta molestiae.', '2018-06-17 18:24:30'),
(139, 68, 2, 5, 1, '6885.00', NULL, NULL, NULL),
(140, 69, 6, 18, 2, '9803.00', NULL, NULL, NULL),
(141, 69, 26, 76, 1, '8156.00', NULL, NULL, NULL),
(142, 70, 4, 12, 2, '1237.00', 2, 'Quasi veritatis aut sed amet recusandae.', '2018-07-07 11:20:32'),
(143, 71, 22, 66, 1, '2338.00', 3, 'Eius aut atque iste voluptatem eum in.', '2018-07-06 00:13:59'),
(144, 71, 7, 20, 4, '3225.00', 3, 'Eius aut atque iste voluptatem eum in.', '2018-07-06 00:13:59'),
(145, 72, 14, 41, 3, '8722.00', 4, 'Unde eius iure deserunt.', '2018-07-09 02:49:39'),
(146, 72, 3, 9, 3, '1068.00', 4, 'Unde eius iure deserunt.', '2018-07-09 02:49:39'),
(147, 73, 24, 72, 3, '3774.00', 1, 'Sit laboriosam voluptatibus aspernatur aliquam eos dolorem.', '2018-07-01 01:25:44'),
(148, 73, 16, 47, 3, '8000.00', 1, 'Sit laboriosam voluptatibus aspernatur aliquam eos dolorem.', '2018-07-01 01:25:44'),
(149, 74, 5, 14, 5, '1423.00', 5, 'Perspiciatis neque rerum explicabo pariatur officia similique voluptatem.', '2018-07-05 18:32:35'),
(150, 75, 17, 51, 2, '9926.00', 1, 'Ab earum tempore necessitatibus sunt.', '2018-07-03 22:56:11'),
(151, 75, 1, 2, 5, '2620.00', 1, 'Ab earum tempore necessitatibus sunt.', '2018-07-03 22:56:11'),
(152, 75, 26, 78, 5, '8966.00', 1, 'Ab earum tempore necessitatibus sunt.', '2018-07-03 22:56:11'),
(153, 76, 7, 19, 3, '8055.00', NULL, NULL, NULL),
(154, 77, 19, 55, 2, '8146.00', 4, 'Odio numquam sint voluptates eos et iste sed iusto.', '2018-06-18 23:06:11'),
(155, 78, 12, 34, 4, '2465.00', 4, 'Eos tempore est distinctio perferendis excepturi.', '2018-07-05 17:07:16'),
(156, 78, 23, 67, 5, '7098.00', 4, 'Eos tempore est distinctio perferendis excepturi.', '2018-07-05 17:07:16'),
(157, 78, 4, 10, 2, '7545.00', 4, 'Eos tempore est distinctio perferendis excepturi.', '2018-07-05 17:07:16'),
(158, 79, 11, 32, 2, '4111.00', NULL, NULL, NULL),
(159, 80, 1, 3, 3, '1459.00', 5, 'Fugit quo nihil illo officiis qui et ea.', '2018-07-08 03:04:08'),
(160, 80, 5, 15, 4, '4306.00', 5, 'Fugit quo nihil illo officiis qui et ea.', '2018-07-08 03:04:08'),
(161, 81, 16, 48, 4, '8291.00', 5, 'Porro hic ut aut quae numquam dolorem.', '2018-06-19 13:55:59'),
(162, 81, 7, 21, 4, '7831.00', 5, 'Porro hic ut aut quae numquam dolorem.', '2018-06-19 13:55:59'),
(163, 81, 30, 90, 2, '4356.00', 5, 'Porro hic ut aut quae numquam dolorem.', '2018-06-19 13:55:59'),
(164, 82, 7, 21, 1, '7831.00', NULL, NULL, NULL),
(165, 82, 22, 65, 1, '3202.00', NULL, NULL, NULL),
(166, 82, 3, 8, 1, '9019.00', NULL, NULL, NULL),
(167, 83, 2, 6, 4, '6286.00', NULL, NULL, NULL),
(168, 83, 21, 62, 3, '8658.00', NULL, NULL, NULL),
(169, 83, 8, 24, 4, '1520.00', NULL, NULL, NULL),
(170, 84, 20, 58, 5, '3262.00', 1, 'Quidem et maiores modi cupiditate tempora ab quos.', '2018-07-03 14:58:47'),
(171, 84, 4, 10, 5, '7545.00', 1, 'Quidem et maiores modi cupiditate tempora ab quos.', '2018-07-03 14:58:47'),
(172, 84, 30, 88, 1, '3269.00', 1, 'Quidem et maiores modi cupiditate tempora ab quos.', '2018-07-03 14:58:47'),
(173, 85, 16, 48, 5, '8291.00', NULL, NULL, NULL),
(174, 86, 13, 38, 1, '3712.00', NULL, NULL, NULL),
(175, 86, 7, 21, 4, '7831.00', NULL, NULL, NULL),
(176, 86, 6, 16, 1, '5450.00', NULL, NULL, NULL),
(177, 87, 1, 2, 1, '2620.00', NULL, NULL, NULL),
(178, 87, 9, 27, 3, '7480.00', NULL, NULL, NULL),
(179, 87, 26, 77, 1, '3446.00', NULL, NULL, NULL),
(180, 88, 12, 34, 4, '2465.00', 1, 'Eum accusantium eaque cum sunt maxime.', '2018-07-08 13:11:54'),
(181, 88, 15, 44, 5, '1891.00', 1, 'Eum accusantium eaque cum sunt maxime.', '2018-07-08 13:11:54'),
(182, 88, 19, 57, 2, '8083.00', 1, 'Eum accusantium eaque cum sunt maxime.', '2018-07-08 13:11:54'),
(183, 89, 28, 83, 4, '4851.00', 2, 'Fugit maxime voluptate placeat molestiae.', '2018-06-24 11:19:36'),
(184, 90, 12, 36, 5, '9860.00', 3, 'Sit occaecati vel ut.', '2018-06-30 12:25:36'),
(185, 90, 30, 88, 3, '3269.00', 3, 'Sit occaecati vel ut.', '2018-06-30 12:25:36'),
(186, 91, 3, 8, 5, '9019.00', 5, 'Ipsum autem aut eos dolores consequatur porro.', '2018-07-09 23:53:35'),
(187, 92, 3, 8, 5, '9019.00', 5, 'Officia ea velit ut sunt natus quia enim.', '2018-06-23 12:43:29'),
(188, 92, 30, 90, 3, '4356.00', 5, 'Officia ea velit ut sunt natus quia enim.', '2018-06-23 12:43:29'),
(189, 92, 1, 3, 3, '1459.00', 5, 'Officia ea velit ut sunt natus quia enim.', '2018-06-23 12:43:29'),
(190, 93, 17, 49, 5, '1883.00', NULL, NULL, NULL),
(191, 93, 5, 13, 4, '5098.00', NULL, NULL, NULL),
(192, 93, 4, 10, 2, '7545.00', NULL, NULL, NULL),
(193, 94, 11, 31, 2, '6555.00', NULL, NULL, NULL),
(194, 94, 12, 34, 5, '2465.00', NULL, NULL, NULL),
(195, 94, 7, 19, 1, '8055.00', NULL, NULL, NULL),
(196, 95, 27, 80, 2, '7928.00', 1, 'Ad consequatur blanditiis illum voluptatibus sit sit non.', '2018-07-10 05:59:00'),
(197, 96, 17, 51, 5, '9926.00', 5, 'Aut unde dolorem alias ea.', '2018-07-04 10:46:51'),
(198, 96, 23, 68, 1, '1484.00', 5, 'Aut unde dolorem alias ea.', '2018-07-04 10:46:51'),
(199, 96, 1, 2, 5, '2620.00', 5, 'Aut unde dolorem alias ea.', '2018-07-04 10:46:51'),
(200, 97, 13, 37, 4, '1256.00', 1, 'Debitis quos id placeat distinctio.', '2018-07-10 03:25:23'),
(201, 97, 14, 41, 3, '8722.00', 1, 'Debitis quos id placeat distinctio.', '2018-07-10 03:25:23'),
(202, 97, 30, 90, 3, '4356.00', 1, 'Debitis quos id placeat distinctio.', '2018-07-10 03:25:23'),
(203, 98, 27, 81, 4, '6323.00', NULL, NULL, NULL),
(204, 98, 5, 15, 2, '4306.00', NULL, NULL, NULL),
(205, 99, 17, 50, 4, '9294.00', NULL, NULL, NULL),
(206, 99, 10, 28, 4, '455.00', NULL, NULL, NULL),
(207, 99, 15, 45, 4, '797.00', NULL, NULL, NULL),
(208, 100, 3, 8, 5, '9019.00', NULL, NULL, NULL),
(209, 100, 17, 51, 2, '9926.00', NULL, NULL, NULL),
(210, 100, 22, 66, 1, '2338.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `on_sale`, `rating`, `sold_count`, `review_count`, `price`, `created_at`, `updated_at`) VALUES
(1, 'a', 'Beatae excepturi sint voluptate porro quia nihil autem.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 4.00, 25, 8, '1459.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(2, 'est', 'Corrupti cum autem ex aliquid tenetur officia sunt.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 3.86, 24, 10, '6286.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(3, 'sit', 'Enim quod enim voluptatem ipsum.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 4.75, 23, 7, '1068.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(4, 'harum', 'Temporibus et earum alias illum provident dolores blanditiis.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 2.86, 28, 10, '1237.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(5, 'qui', 'Qui accusantium assumenda ea explicabo incidunt sapiente quia.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 3.11, 35, 11, '1423.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(6, 'molestias', 'Quisquam natus corporis alias dolores explicabo.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 3.00, 11, 4, '3055.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(7, 'alias', 'Adipisci doloribus vel quo rerum beatae qui.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 4.29, 29, 12, '3225.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(8, 'est', 'Quia quasi maxime possimus laboriosam cumque.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 5.00, 14, 5, '61.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(9, 'autem', 'Eum ex quaerat repellat deleniti repellat.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 3.80, 22, 8, '918.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(10, 'fugit', 'Reprehenderit velit architecto voluptatem praesentium.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 2.50, 13, 3, '455.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(11, 'ipsam', 'Et et nesciunt illo veniam alias.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 2.50, 22, 6, '4111.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(12, 'quo', 'Rerum repudiandae tempore animi sed.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.50, 25, 8, '2465.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(13, 'consequuntur', 'Omnis similique magnam cum.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 4.00, 15, 6, '1256.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(14, 'nobis', 'Nemo repudiandae excepturi eius.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.80, 23, 8, '1551.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(15, 'quos', 'Rerum nisi qui quaerat.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 3.00, 20, 5, '797.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(16, 'perspiciatis', 'Consequatur culpa sed unde perferendis voluptatem.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 3.00, 19, 5, '4357.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(17, 'omnis', 'Amet nam deserunt ut.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 3.00, 26, 8, '1883.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(18, 'et', 'Ut aut quis repellat quis ut.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 3.83, 25, 7, '6429.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(19, 'cumque', 'Quisquam quae incidunt veniam aspernatur voluptatem.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 2.25, 18, 6, '3157.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(20, 'facere', 'Nulla voluptatem error modi ut perferendis.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 3.00, 25, 6, '2193.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(21, 'sed', 'Et beatae voluptatibus sit nisi veniam.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 2.67, 18, 5, '8235.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(22, 'consequuntur', 'Distinctio nobis eum aliquid.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 3.00, 18, 7, '1736.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(23, 'deserunt', 'Eius fuga et aut maiores incidunt.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 4.60, 20, 6, '1484.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(24, 'commodi', 'Veniam necessitatibus sapiente ipsa debitis id dignissimos quisquam.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 2.33, 30, 10, '3774.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(25, 'ipsa', 'Maxime repellendus et at et quia quisquam eaque accusamus.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 2.67, 14, 5, '897.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(26, 'pariatur', 'Ipsum deleniti necessitatibus eum nam blanditiis.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 1.00, 13, 5, '3446.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(27, 'quibusdam', 'Soluta deserunt placeat et ad.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.71, 25, 8, '1253.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(28, 'ut', 'Suscipit voluptas in sed suscipit eaque.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.50, 19, 6, '1203.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(29, 'id', 'Iure velit est quis accusamus.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.20, 24, 8, '214.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39'),
(30, 'dolores', 'Enim quisquam aut aut velit.', 'https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.86, 20, 7, '3269.00', '2018-07-10 06:45:33', '2018-07-10 06:45:39');

-- --------------------------------------------------------

--
-- 表的结构 `product_skus`
--

CREATE TABLE `product_skus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `product_skus`
--

INSERT INTO `product_skus` (`id`, `title`, `description`, `price`, `stock`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'pariatur', 'Harum magnam sed sit aliquid hic iure.', '2398.00', 36093, 1, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(2, 'maiores', 'Et rerum quae ea molestiae consequatur harum a.', '2620.00', 46482, 1, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(3, 'sed', 'Aliquam recusandae provident unde enim commodi adipisci.', '1459.00', 8453, 1, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(4, 'similique', 'Qui illum odio dicta vel.', '7142.00', 94634, 2, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(5, 'ut', 'Vitae aliquid ipsum adipisci qui quae dolor eos.', '6885.00', 30348, 2, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(6, 'ut', 'Facere facere esse beatae dolorum ipsum.', '6286.00', 84929, 2, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(7, 'dolorem', 'Qui voluptatibus expedita ad libero vel.', '7336.00', 57130, 3, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(8, 'voluptatem', 'Quisquam magni ipsa cum quisquam earum odio harum.', '9019.00', 98984, 3, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(9, 'suscipit', 'Delectus non magnam sunt.', '1068.00', 6427, 3, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(10, 'dolor', 'Consequatur velit vel id enim ea tenetur.', '7545.00', 39671, 4, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(11, 'dolor', 'Totam quis corporis ut numquam consequatur nesciunt.', '3015.00', 75220, 4, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(12, 'aut', 'Porro modi enim accusantium voluptatem quas quasi similique.', '1237.00', 74175, 4, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(13, 'aut', 'Exercitationem ducimus tempora ullam est aut excepturi.', '5098.00', 12627, 5, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(14, 'ea', 'Omnis provident pariatur culpa eligendi.', '1423.00', 3684, 5, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(15, 'incidunt', 'Quia illum aut aut accusamus similique eos est nisi.', '4306.00', 85123, 5, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(16, 'veniam', 'Est culpa rerum nobis quia et et.', '5450.00', 83396, 6, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(17, 'natus', 'Nihil totam quam voluptatem voluptate fugiat.', '3055.00', 96386, 6, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(18, 'atque', 'Corporis voluptas voluptatum sit est ea dolor non.', '9803.00', 59559, 6, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(19, 'odit', 'Tempore harum autem iusto voluptatem quis ut deserunt.', '8055.00', 85658, 7, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(20, 'fuga', 'A voluptatem ut harum.', '3225.00', 88752, 7, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(21, 'dolor', 'Sint inventore velit asperiores nesciunt iste animi.', '7831.00', 7975, 7, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(22, 'corrupti', 'Numquam cum quo culpa dolorem molestiae ab.', '61.00', 16111, 8, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(23, 'blanditiis', 'Est provident voluptatem non itaque ut voluptatum atque.', '7778.00', 68941, 8, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(24, 'necessitatibus', 'Quaerat vero reprehenderit nihil sequi alias similique.', '1520.00', 18567, 8, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(25, 'temporibus', 'Ab quasi qui nobis maiores consequatur.', '918.00', 18337, 9, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(26, 'est', 'Voluptate temporibus autem ut et.', '2729.00', 20583, 9, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(27, 'sint', 'Optio expedita explicabo aut quasi eum repellendus.', '7480.00', 48422, 9, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(28, 'omnis', 'Sit porro necessitatibus error delectus qui consequatur praesentium.', '455.00', 87623, 10, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(29, 'illo', 'Dicta cum similique ab quo aut.', '4733.00', 97503, 10, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(30, 'aut', 'Illo ut numquam nam quidem fuga.', '2079.00', 74550, 10, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(31, 'occaecati', 'Laudantium et est reiciendis praesentium voluptas.', '6555.00', 10319, 11, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(32, 'natus', 'Mollitia debitis labore perspiciatis recusandae omnis explicabo.', '4111.00', 23105, 11, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(33, 'dolorum', 'Qui eligendi aut nulla non a sit ut.', '4968.00', 90833, 11, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(34, 'corporis', 'Ut dolores sunt fugit eaque reiciendis nemo et.', '2465.00', 20353, 12, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(35, 'cumque', 'Nihil sint non dolorum quasi velit dolore.', '6315.00', 44142, 12, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(36, 'sint', 'Suscipit nemo rerum facere autem iure voluptas.', '9860.00', 15042, 12, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(37, 'repudiandae', 'Labore sequi eaque voluptas sed amet voluptatem.', '1256.00', 2864, 13, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(38, 'perferendis', 'Aut doloribus magnam et autem provident.', '3712.00', 85318, 13, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(39, 'qui', 'Qui aut nisi repellendus.', '5192.00', 80190, 13, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(40, 'eos', 'Sapiente at officia fuga cumque fugiat.', '5648.00', 83570, 14, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(41, 'et', 'Unde est labore nesciunt praesentium repudiandae omnis dolorum.', '8722.00', 64049, 14, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(42, 'blanditiis', 'Perferendis accusamus enim minus placeat sed.', '1551.00', 45474, 14, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(43, 'non', 'Alias illum itaque exercitationem ut in quam.', '2378.00', 25999, 15, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(44, 'dolores', 'Molestiae et velit qui molestias animi consequatur eos.', '1891.00', 97194, 15, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(45, 'consequuntur', 'Atque reiciendis qui cum iste aut pariatur.', '797.00', 16550, 15, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(46, 'praesentium', 'Reiciendis optio dicta a voluptas ut est earum nobis.', '4357.00', 80810, 16, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(47, 'sit', 'Laboriosam eligendi placeat doloremque sit quia eius.', '8000.00', 29873, 16, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(48, 'sunt', 'Et eos praesentium autem provident.', '8291.00', 83632, 16, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(49, 'suscipit', 'Temporibus minus sed animi ut illum inventore aliquam.', '1883.00', 14963, 17, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(50, 'quas', 'Est omnis fuga numquam illum.', '9294.00', 50182, 17, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(51, 'esse', 'Ut sint libero aut suscipit voluptatem consectetur.', '9926.00', 8376, 17, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(52, 'recusandae', 'Quod culpa deleniti quia.', '9244.00', 91605, 18, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(53, 'veritatis', 'Impedit ut et magnam omnis.', '6429.00', 12100, 18, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(54, 'aut', 'Nostrum vero consectetur sint odio.', '9424.00', 84282, 18, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(55, 'neque', 'Perspiciatis id magnam sit velit qui voluptatem molestiae molestias.', '8146.00', 95340, 19, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(56, 'laboriosam', 'Eaque corporis eos nostrum pariatur fuga.', '3157.00', 7758, 19, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(57, 'voluptatum', 'Dignissimos quos sint accusantium sit in.', '8083.00', 3477, 19, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(58, 'at', 'Velit quisquam nemo illo accusantium molestiae consequatur culpa.', '3262.00', 88156, 20, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(59, 'recusandae', 'Ab vel natus architecto.', '9165.00', 4594, 20, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(60, 'accusamus', 'Iusto distinctio quia porro vel.', '2193.00', 58949, 20, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(61, 'aut', 'Iure quos labore vitae tenetur.', '9411.00', 14908, 21, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(62, 'et', 'Et animi debitis atque quam.', '8658.00', 40501, 21, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(63, 'expedita', 'Non ut optio sit maiores.', '8235.00', 84833, 21, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(64, 'velit', 'Distinctio et est beatae recusandae deserunt nemo vero.', '1736.00', 96668, 22, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(65, 'in', 'Aliquam a voluptas quibusdam beatae ea vel.', '3202.00', 42612, 22, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(66, 'eos', 'Officia nobis quia et sed sed.', '2338.00', 19091, 22, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(67, 'officia', 'Ab voluptate esse alias non.', '7098.00', 21132, 23, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(68, 'ex', 'Adipisci quasi amet molestias saepe iure explicabo qui.', '1484.00', 2787, 23, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(69, 'sit', 'Omnis necessitatibus et culpa natus incidunt quia ea.', '3234.00', 38031, 23, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(70, 'est', 'Sed explicabo occaecati placeat error quis non autem.', '6326.00', 93747, 24, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(71, 'quo', 'Molestiae rerum doloribus sit amet.', '6200.00', 65528, 24, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(72, 'porro', 'Voluptatem autem accusantium et voluptates eveniet totam.', '3774.00', 37509, 24, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(73, 'qui', 'Ut id ipsam dolorum aspernatur modi et enim.', '9894.00', 62408, 25, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(74, 'assumenda', 'Rem aut non eos harum quasi eaque ipsa.', '7247.00', 93455, 25, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(75, 'ab', 'Et modi repellat perferendis nihil.', '897.00', 85948, 25, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(76, 'et', 'Et dolor quibusdam quasi ducimus ut neque.', '8156.00', 86011, 26, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(77, 'voluptatibus', 'Nihil est veritatis non dolor quae pariatur.', '3446.00', 56456, 26, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(78, 'rerum', 'Itaque et neque accusantium ut veniam nam amet.', '8966.00', 24841, 26, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(79, 'aliquam', 'Suscipit iure sit ipsum.', '1253.00', 39711, 27, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(80, 'dolorem', 'Deleniti temporibus sint reprehenderit placeat voluptatem nisi accusantium aperiam.', '7928.00', 16161, 27, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(81, 'aut', 'Dignissimos sit quis est ut cum laboriosam.', '6323.00', 43589, 27, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(82, 'necessitatibus', 'Et quo nemo sit debitis.', '2066.00', 99335, 28, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(83, 'vel', 'Esse similique qui numquam alias cumque quia consequatur est.', '4851.00', 33225, 28, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(84, 'id', 'Et possimus nam fugit qui minima nisi iure nisi.', '1203.00', 68653, 28, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(85, 'dolor', 'Velit quia non error illum vero accusantium voluptates.', '214.00', 56704, 29, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(86, 'dolores', 'Quis modi magnam et recusandae occaecati et explicabo.', '8519.00', 56493, 29, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(87, 'error', 'Architecto quia alias aut.', '5727.00', 86119, 29, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(88, 'voluptatem', 'Et cupiditate culpa ratione dolores.', '3269.00', 76556, 30, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(89, 'totam', 'Nobis aperiam cum suscipit ut ratione quia et sapiente.', '7661.00', 91380, 30, '2018-07-10 06:45:34', '2018-07-10 06:45:34'),
(90, 'ea', 'Et ab rerum iure explicabo.', '4356.00', 76689, 30, '2018-07-10 06:45:34', '2018-07-10 06:45:34');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `email_verified`, `created_at`, `updated_at`) VALUES
(1, '龚斌', 'szwss@qq.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Yh1iuJNDP1', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(2, '郎秀兰', 'celigendi@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5TS8hRr4R2', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(3, '丛金凤', 'recusandae_voluptatum@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hfTbXl3Pkv', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(4, '方利', 'minima80@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aiU5PWlgRx', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(5, '林梅', 'ut69@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'akLtaKRalr', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(6, '邱桂花', 'corrupti14@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XxH4lo2NQn', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(7, '郁琴', 'velit48@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'U3bHhzjCA8', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(8, '常丽', 'dolorum.dolorum@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sMri0CIUnO', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(9, '向翔', 'voluptate69@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FF6mAR3GlF', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(10, '潘利', 'areiciendis@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oVNZCco8uD', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(11, '龙欢', 'nulla_sit@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AEE9C4y0Mg', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(12, '方新华', 'wtotam@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gZbExo3G8Z', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(13, '杜嘉俊', 'animi62@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5lRaVTM1Bu', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(14, '边彬', 'numquam22@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hx6nrYcJXl', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(15, '梅钟', 'fquisquam@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MzGp33v29Z', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(16, '纪玉珍', 'a85@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FQkAmyonMz', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(17, '邬玲', 'qui.libero@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IbFPVcFUUW', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(18, '都辉', 'aconsequatur@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ptE7Pt68kz', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(19, '祝佳', 'quia35@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1r08uFvxo0', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(20, '于俊', 'eaque27@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8lV8Kq4Ykn', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(21, '徐洪', 'cupiditate49@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QCp5QEpV8F', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(22, '穆超', 'eius_totam@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z0st4yeVgg', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(23, '阎毅', 'reprehenderit43@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'V698OlfQX9', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(24, '廉晨', 'dfuga@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'v3xd8XAoct', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(25, '史洋', 'culpa.eveniet@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'c58lG7yCzN', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(26, '郜玲', 'veritatis_id@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6WFUOxvRlr', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(27, '楚小红', 'quia_ab@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9WwtFXesJN', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(28, '成宇', 'upraesentium@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QhhHcac65V', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(29, '姬艳', 'nsed@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NaMlNoKK7h', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(30, '奚慧', 'eveniet_fugit@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kwIAmcx6A0', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(31, '李子安', 'daut@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VuE5plgre4', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(32, '常志诚', 'esse_et@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '25R5TVX3fz', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(33, '臧瑜', 'unde39@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Z2Yyhfsdst', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(34, '康桂芝', 'zsunt@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aEtrTePNdC', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(35, '冉佳', 'qui73@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0j2s8iImEb', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(36, '冉莹', 'reiciendis.corporis@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ikS633rKif', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(37, '向翔', 'iure_consequatur@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lUxPO8jlCc', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(38, '赖岩', 'incidunt_eaque@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KBCwRMTKwS', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(39, '饶子安', 'et.velit@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'g6UrEwZlwm', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(40, '段莉', 'error.enim@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jXQ63ytVP1', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(41, '葛利', 'est.id@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rLQwDRQlmY', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(42, '滕丽', 'et80@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vUs98ufG4k', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(43, '武波', 'lnatus@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OW8hWc58qd', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(44, '银松', 'qui57@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'j0x62p2Ice', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(45, '万婷', 'in.dolorem@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DkDQAxNg0i', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(46, '曾洁', 'ut35@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hnADoXD8KO', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(47, '党国庆', 'est.repellat@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GmXC6tnXdi', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(48, '鞠平', 'eius.aut@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Pwseqq6MSY', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(49, '万玉兰', 'adipisci.sint@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rFM6dSwDFC', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(50, '鄢杨', 'maiores.quasi@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4H1gkY5vUB', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(51, '沙智明', 'nihil86@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gA2TAoJnu9', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(52, '牟超', 'et97@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kIkW2JvEMn', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(53, '林凤兰', 'iure35@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UQK7aO3q09', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(54, '费秀兰', 'distinctio_distinctio@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PRAHTW3qxS', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(55, '卞婷婷', 'et_maxime@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'plqySnIBqf', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(56, '扬丽', 'vqui@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WvMor5bG0q', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(57, '木正业', 'baccusamus@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UaH4nrNYIj', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(58, '靳斌', 'velit_at@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ufrl93FZcn', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(59, '邢芬', 'amet.commodi@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ST3ZVCZzw4', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(60, '董杨', 'nporro@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'c9R7OcwY6k', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(61, '解瑞', 'kmolestias@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zdwUPRpfax', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(62, '范文娟', 'consequatur.laudantium@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fzifS0rtPF', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(63, '金玉兰', 'ut.ipsum@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZYUYDOEAa8', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(64, '翟丽华', 'aliquid62@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0gzreIiTWq', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(65, '曲彬', 'excepturi46@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oRniQHHVy3', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(66, '涂琳', 'qui03@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '91oc51QUa0', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(67, '谷洋', 'autem.et@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IKpsF7GW58', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(68, '郑捷', 'amet_laudantium@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ka6Xxc6hjt', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(69, '卓颖', 'repellat.blanditiis@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QiHDbUlZag', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(70, '任莹', 'voluptatibus_est@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YqCl2fCq3c', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(71, '樊依琳', 'ipsum_quis@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gA7lwqlaIR', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(72, '覃飞', 'uest@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dAL8KCtgmM', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(73, '尤娟', 'facilis03@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QbdVWXXl3i', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(74, '谈玉英', 'id37@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7PhocmlpWz', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(75, '丛欢', 'consectetur.repudiandae@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SjfwYAt4C6', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(76, '舒正诚', 'quaerat33@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ry4R1AqPQs', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(77, '廖阳', 'bquasi@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'e7YjRYrKRX', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(78, '贺桂英', 'cumque.mollitia@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4WOG7cUvcG', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(79, '卞成', 'excepturi65@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '342ouyS0Wx', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(80, '邬楠', 'deserunt55@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ukxetUXuYr', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(81, '郜瑜', 'ut14@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XDvJi8jqCR', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(82, '左婷婷', 'molestiae_veritatis@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RdDT2oJ3u9', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(83, '邸畅', 'est37@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0uDLAW5bVe', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(84, '欧阳东', 'quidem_dicta@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3TwwyoPz9p', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(85, '衣春梅', 'vel.aut@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'otWQqYRwSN', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(86, '保建军', 'dolor_modi@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1dzZer1lTU', 1, '2018-07-10 06:45:31', '2018-07-10 06:45:31'),
(87, '冉凤兰', 'pnobis@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lU7YTTiiY6', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(88, '隋东', 'voluptatem_dolore@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SLtQYMKCLi', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(89, '靳欢', 'est.voluptas@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '09AskKtICM', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(90, '扬兰英', 'eius.voluptas@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3fHjLqQbep', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(91, '任欢', 'doloribus75@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'grArR6JXQn', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(92, '谭秀华', 'sodio@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'orOM7maDz3', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(93, '单君', 'hvelit@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KAGEZIo4Zf', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(94, '祁志文', 'repellat.ducimus@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TJp45ARjln', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(95, '向晨', 'atque27@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5C1oEYcJ6E', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(96, '安强', 'lanimi@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'poUInOQsgZ', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(97, '来正豪', 'omnis.voluptas@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9jzjRJEQya', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(98, '祝建华', 'molestiae15@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EmxThQOczt', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(99, '卫洋', 'dsint@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0WpZ24TrFS', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(100, '饶凤兰', 'delectus91@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'm2jN2M5wkq', 1, '2018-07-10 06:45:32', '2018-07-10 06:45:32');

-- --------------------------------------------------------

--
-- 表的结构 `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `province`, `city`, `district`, `address`, `zip`, `contact_name`, `contact_phone`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, '北京市', '市辖区', '东城区', '第61街道第691号', 726000, '郝雷', '17816105028', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(2, 1, '江苏省', '南京市', '浦口区', '第84街道第87号', 102200, '辛刚', '15522284219', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(3, 2, '广东省', '深圳市', '福田区', '第2街道第953号', 556000, '樊淑兰', '15635204486', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(4, 2, '广东省', '深圳市', '福田区', '第85街道第956号', 544700, '简旭', '13084667752', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(5, 3, '北京市', '市辖区', '东城区', '第9街道第73号', 37400, '奚宁', '13806001082', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(6, 4, '河北省', '石家庄市', '长安区', '第75街道第726号', 232000, '池龙', '18520167857', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(7, 4, '江苏省', '南京市', '浦口区', '第1街道第896号', 532500, '郭桂香', '17169653495', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(8, 4, '江苏省', '南京市', '浦口区', '第79街道第42号', 641100, '冷红', '17099917395', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(9, 5, '江苏省', '南京市', '浦口区', '第33街道第217号', 507800, '夏智勇', '17742975567', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(10, 5, '北京市', '市辖区', '东城区', '第65街道第818号', 307200, '古明霞', '17002260011', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(11, 5, '江苏省', '南京市', '浦口区', '第35街道第65号', 322400, '畅桂芳', '15911848434', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(12, 6, '北京市', '市辖区', '东城区', '第76街道第633号', 148600, '陆颖', '17193950331', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(13, 6, '江苏省', '苏州市', '相城区', '第28街道第197号', 553900, '陆丽丽', '13288732207', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(14, 7, '江苏省', '南京市', '浦口区', '第63街道第250号', 634600, '文帅', '13136068842', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(15, 8, '江苏省', '苏州市', '相城区', '第47街道第214号', 181600, '娄桂荣', '18164459059', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(16, 8, '江苏省', '南京市', '浦口区', '第63街道第761号', 72900, '丘桂荣', '13846299848', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(17, 9, '江苏省', '南京市', '浦口区', '第65街道第260号', 184800, '岳桂珍', '17829607455', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(18, 9, '江苏省', '南京市', '浦口区', '第41街道第686号', 756100, '颜志勇', '17074059805', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(19, 10, '江苏省', '南京市', '浦口区', '第53街道第252号', 134200, '倪瑜', '17196181889', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(20, 10, '北京市', '市辖区', '东城区', '第11街道第905号', 665500, '宇玉珍', '13743463242', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(21, 10, '北京市', '市辖区', '东城区', '第83街道第962号', 811000, '冯杰', '18077084355', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(22, 11, '广东省', '深圳市', '福田区', '第85街道第854号', 598100, '郜婷', '17808078621', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(23, 11, '河北省', '石家庄市', '长安区', '第86街道第437号', 164600, '荆毅', '13399585444', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(24, 11, '河北省', '石家庄市', '长安区', '第45街道第442号', 495100, '田明霞', '17717349443', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(25, 12, '北京市', '市辖区', '东城区', '第16街道第712号', 157500, '雷健', '17083844178', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(26, 12, '北京市', '市辖区', '东城区', '第58街道第662号', 494800, '虞雪梅', '17052689465', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(27, 13, '江苏省', '南京市', '浦口区', '第76街道第439号', 732500, '木秀芳', '15172385830', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(28, 13, '广东省', '深圳市', '福田区', '第75街道第323号', 675600, '鄢莉', '15834133068', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(29, 14, '江苏省', '南京市', '浦口区', '第9街道第44号', 307200, '林宁', '17080933627', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(30, 14, '江苏省', '南京市', '浦口区', '第69街道第525号', 505100, '扬振国', '15162828185', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(31, 14, '江苏省', '南京市', '浦口区', '第53街道第254号', 854000, '田志明', '13104210787', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(32, 15, '北京市', '市辖区', '东城区', '第5街道第308号', 684500, '虞鹏', '14783516555', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(33, 15, '广东省', '深圳市', '福田区', '第49街道第744号', 506700, '鲍文', '17189452130', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(34, 15, '河北省', '石家庄市', '长安区', '第73街道第4号', 797200, '尤楼', '18732540119', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(35, 16, '北京市', '市辖区', '东城区', '第61街道第180号', 375300, '石岩', '17059591835', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(36, 16, '河北省', '石家庄市', '长安区', '第4街道第607号', 545200, '沉宁', '17183809618', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(37, 16, '河北省', '石家庄市', '长安区', '第75街道第931号', 167100, '康智勇', '15884631387', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(38, 17, '江苏省', '苏州市', '相城区', '第11街道第428号', 612000, '纪智明', '17093581488', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(39, 18, '北京市', '市辖区', '东城区', '第77街道第921号', 84900, '荆欣', '18519873305', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(40, 18, '江苏省', '苏州市', '相城区', '第31街道第38号', 533100, '时旭', '17089140354', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(41, 19, '江苏省', '南京市', '浦口区', '第15街道第107号', 94300, '窦海燕', '17014476606', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(42, 20, '江苏省', '苏州市', '相城区', '第70街道第827号', 584200, '甄超', '17148777916', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(43, 20, '江苏省', '南京市', '浦口区', '第30街道第75号', 408100, '牟捷', '17090158436', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(44, 21, '江苏省', '南京市', '浦口区', '第17街道第558号', 151900, '边斌', '13550381455', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(45, 21, '北京市', '市辖区', '东城区', '第56街道第79号', 168300, '宇阳', '15214231288', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(46, 22, '北京市', '市辖区', '东城区', '第14街道第287号', 828700, '苏倩', '13606129239', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(47, 22, '河北省', '石家庄市', '长安区', '第27街道第233号', 596100, '冀志新', '13689301102', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(48, 23, '河北省', '石家庄市', '长安区', '第67街道第95号', 222200, '华红霞', '17628223039', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(49, 24, '江苏省', '南京市', '浦口区', '第26街道第266号', 72000, '仇利', '13587432321', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(50, 25, '江苏省', '苏州市', '相城区', '第10街道第390号', 797900, '车建明', '18213591640', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(51, 26, '江苏省', '苏州市', '相城区', '第21街道第273号', 408000, '明凯', '15894261721', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(52, 26, '河北省', '石家庄市', '长安区', '第3街道第377号', 153900, '伍玉珍', '15704924311', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(53, 27, '广东省', '深圳市', '福田区', '第54街道第549号', 796300, '苗正诚', '17846116414', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(54, 27, '北京市', '市辖区', '东城区', '第43街道第119号', 726000, '倪洋', '17657808863', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(55, 28, '江苏省', '南京市', '浦口区', '第95街道第712号', 565400, '兰秀珍', '13856867441', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(56, 28, '河北省', '石家庄市', '长安区', '第20街道第428号', 125800, '僧倩', '18213291686', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(57, 29, '北京市', '市辖区', '东城区', '第57街道第762号', 183800, '徐燕', '15245917647', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(58, 29, '河北省', '石家庄市', '长安区', '第5街道第588号', 486900, '井博涛', '18718787726', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(59, 29, '江苏省', '苏州市', '相城区', '第34街道第785号', 744100, '迟彬', '13949299355', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(60, 30, '河北省', '石家庄市', '长安区', '第70街道第233号', 518800, '商丹', '15608666878', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(61, 30, '广东省', '深圳市', '福田区', '第19街道第114号', 123100, '祁松', '17059518365', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(62, 30, '江苏省', '苏州市', '相城区', '第97街道第535号', 151000, '章超', '18621366927', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(63, 31, '江苏省', '南京市', '浦口区', '第5街道第880号', 98300, '黄红霞', '13073365005', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(64, 31, '江苏省', '苏州市', '相城区', '第96街道第64号', 658000, '胡刚', '15597559333', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(65, 32, '河北省', '石家庄市', '长安区', '第42街道第359号', 188500, '全莉', '18978352723', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(66, 32, '北京市', '市辖区', '东城区', '第82街道第54号', 775400, '解淑珍', '18901710687', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(67, 33, '江苏省', '苏州市', '相城区', '第12街道第614号', 366000, '荆辉', '17198916561', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(68, 34, '江苏省', '南京市', '浦口区', '第60街道第599号', 343700, '原翔', '15533946412', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(69, 34, '广东省', '深圳市', '福田区', '第69街道第311号', 412300, '郑桂兰', '15608906262', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(70, 35, '江苏省', '苏州市', '相城区', '第97街道第658号', 178400, '路华', '15116138622', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(71, 35, '江苏省', '南京市', '浦口区', '第38街道第524号', 647100, '丘鑫', '15080080707', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(72, 35, '河北省', '石家庄市', '长安区', '第79街道第299号', 512100, '牟宁', '13988506484', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(73, 36, '江苏省', '南京市', '浦口区', '第1街道第738号', 708200, '游帆', '17195745012', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(74, 36, '江苏省', '苏州市', '相城区', '第6街道第327号', 738100, '朱钟', '18168387308', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(75, 37, '北京市', '市辖区', '东城区', '第11街道第638号', 421700, '蒋东', '14725360107', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(76, 37, '江苏省', '苏州市', '相城区', '第14街道第759号', 748000, '方丹', '18725896327', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(77, 38, '江苏省', '南京市', '浦口区', '第38街道第234号', 123000, '吉丽娟', '15372315618', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(78, 39, '北京市', '市辖区', '东城区', '第16街道第737号', 555700, '卜欣', '15075948088', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(79, 40, '河北省', '石家庄市', '长安区', '第2街道第30号', 808000, '文丽', '17188989443', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(80, 41, '河北省', '石家庄市', '长安区', '第56街道第949号', 517600, '殷正诚', '17183842397', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(81, 42, '江苏省', '南京市', '浦口区', '第18街道第130号', 748200, '钱晨', '13366942703', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(82, 42, '北京市', '市辖区', '东城区', '第86街道第239号', 834200, '褚晶', '14766628028', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(83, 43, '河北省', '石家庄市', '长安区', '第55街道第705号', 144100, '颜艳', '17192742965', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(84, 43, '广东省', '深圳市', '福田区', '第17街道第393号', 857600, '沉海燕', '15261444756', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(85, 43, '江苏省', '苏州市', '相城区', '第38街道第70号', 583200, '刘成', '13238878599', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(86, 44, '北京市', '市辖区', '东城区', '第81街道第200号', 488800, '栗芳', '18802808321', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(87, 44, '北京市', '市辖区', '东城区', '第70街道第712号', 364900, '何正豪', '17027482079', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(88, 44, '河北省', '石家庄市', '长安区', '第25街道第712号', 145300, '戚馨予', '18004587212', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(89, 45, '北京市', '市辖区', '东城区', '第94街道第568号', 87600, '欧阳红梅', '18575393141', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(90, 45, '广东省', '深圳市', '福田区', '第63街道第511号', 812100, '曹英', '15229412928', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(91, 46, '江苏省', '苏州市', '相城区', '第92街道第979号', 615900, '晏东', '13897931275', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(92, 46, '江苏省', '苏州市', '相城区', '第24街道第66号', 51500, '庄国庆', '13225798045', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(93, 47, '北京市', '市辖区', '东城区', '第75街道第752号', 442500, '岑鹰', '14707813433', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(94, 48, '北京市', '市辖区', '东城区', '第32街道第1号', 633100, '木冬梅', '15242620955', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(95, 48, '江苏省', '苏州市', '相城区', '第59街道第102号', 461600, '席晶', '15362991009', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(96, 48, '广东省', '深圳市', '福田区', '第0街道第241号', 377800, '安欢', '17716162976', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(97, 49, '广东省', '深圳市', '福田区', '第79街道第883号', 734400, '朱丽', '17070832680', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(98, 49, '江苏省', '南京市', '浦口区', '第35街道第472号', 576900, '郜勇', '18897066269', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(99, 49, '河北省', '石家庄市', '长安区', '第52街道第329号', 611800, '余洋', '14729296268', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(100, 50, '广东省', '深圳市', '福田区', '第17街道第438号', 594000, '边淑珍', '18563150449', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(101, 50, '河北省', '石家庄市', '长安区', '第2街道第516号', 101400, '孔莹', '18817585486', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(102, 51, '江苏省', '苏州市', '相城区', '第80街道第845号', 766700, '佟秀兰', '18722262884', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(103, 52, '北京市', '市辖区', '东城区', '第99街道第274号', 201100, '乐文', '17754643208', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(104, 53, '河北省', '石家庄市', '长安区', '第33街道第122号', 352500, '米翔', '18374148435', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(105, 54, '广东省', '深圳市', '福田区', '第42街道第829号', 368200, '申彬', '17001001142', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(106, 54, '河北省', '石家庄市', '长安区', '第17街道第864号', 57700, '施玉', '17015035078', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(107, 54, '广东省', '深圳市', '福田区', '第23街道第504号', 677900, '薄宁', '17197048485', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(108, 55, '江苏省', '南京市', '浦口区', '第42街道第760号', 163600, '和斌', '15211335284', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(109, 56, '河北省', '石家庄市', '长安区', '第54街道第379号', 73800, '单敏静', '13778096035', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(110, 56, '河北省', '石家庄市', '长安区', '第39街道第929号', 677800, '宁小红', '18880806499', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(111, 57, '江苏省', '苏州市', '相城区', '第51街道第664号', 816500, '盛桂英', '14729361068', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(112, 58, '江苏省', '苏州市', '相城区', '第51街道第849号', 792000, '彭畅', '18525324264', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(113, 58, '江苏省', '苏州市', '相城区', '第24街道第124号', 843100, '岑志勇', '15525234677', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(114, 58, '江苏省', '南京市', '浦口区', '第75街道第444号', 781600, '戚霞', '13432421930', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(115, 59, '河北省', '石家庄市', '长安区', '第5街道第393号', 215300, '巫倩', '18979909043', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(116, 59, '江苏省', '苏州市', '相城区', '第62街道第78号', 425900, '耿志诚', '14507683072', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(117, 59, '江苏省', '南京市', '浦口区', '第90街道第310号', 482800, '保建平', '13238587414', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(118, 60, '北京市', '市辖区', '东城区', '第49街道第241号', 544200, '朱霞', '15693491696', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(119, 61, '江苏省', '南京市', '浦口区', '第69街道第890号', 408300, '牟琴', '13237597471', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(120, 61, '广东省', '深圳市', '福田区', '第4街道第131号', 176100, '游玉珍', '15839956509', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(121, 61, '河北省', '石家庄市', '长安区', '第83街道第979号', 146500, '傅洁', '13725795856', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(122, 62, '江苏省', '南京市', '浦口区', '第63街道第99号', 505500, '朱辉', '13213650633', NULL, '2018-07-10 06:45:32', '2018-07-10 06:45:32'),
(123, 62, '江苏省', '南京市', '浦口区', '第81街道第292号', 725500, '伍冬梅', '18221486006', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(124, 63, '广东省', '深圳市', '福田区', '第49街道第818号', 258500, '葛晨', '18445927707', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(125, 63, '北京市', '市辖区', '东城区', '第17街道第162号', 647100, '欧利', '15604998295', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(126, 64, '江苏省', '南京市', '浦口区', '第10街道第775号', 496100, '梁平', '18680395036', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(127, 65, '河北省', '石家庄市', '长安区', '第76街道第403号', 134800, '吉波', '15846452108', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(128, 65, '北京市', '市辖区', '东城区', '第3街道第704号', 404200, '官志明', '17189445189', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(129, 66, '广东省', '深圳市', '福田区', '第36街道第344号', 28600, '汪桂英', '15608887009', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(130, 66, '北京市', '市辖区', '东城区', '第57街道第906号', 306500, '萧娜', '18842023018', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(131, 66, '江苏省', '苏州市', '相城区', '第7街道第825号', 272100, '樊文君', '13383868845', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(132, 67, '广东省', '深圳市', '福田区', '第39街道第404号', 346400, '丘璐', '18849478567', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(133, 67, '江苏省', '苏州市', '相城区', '第92街道第852号', 206100, '梅欢', '17183813619', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(134, 68, '北京市', '市辖区', '东城区', '第93街道第872号', 798100, '胡勇', '13256349565', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(135, 69, '河北省', '石家庄市', '长安区', '第52街道第940号', 702000, '卓健', '17071308082', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(136, 70, '北京市', '市辖区', '东城区', '第7街道第894号', 837900, '窦桂芝', '18511358632', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(137, 71, '江苏省', '苏州市', '相城区', '第43街道第177号', 66100, '瞿春梅', '15500921798', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(138, 71, '河北省', '石家庄市', '长安区', '第75街道第574号', 138600, '解勇', '15240553198', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(139, 72, '北京市', '市辖区', '东城区', '第86街道第263号', 632400, '萧艳', '13239149542', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(140, 72, '北京市', '市辖区', '东城区', '第27街道第481号', 372500, '路翔', '17014409100', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(141, 73, '广东省', '深圳市', '福田区', '第12街道第333号', 762000, '位淑珍', '17756684370', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(142, 73, '江苏省', '苏州市', '相城区', '第13街道第78号', 547900, '欧正平', '15655640550', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(143, 74, '广东省', '深圳市', '福田区', '第63街道第927号', 201100, '郑智敏', '17017646601', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(144, 74, '北京市', '市辖区', '东城区', '第31街道第242号', 323200, '林君', '14755340354', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(145, 75, '河北省', '石家庄市', '长安区', '第8街道第300号', 677200, '李雪', '17071203394', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(146, 76, '江苏省', '南京市', '浦口区', '第87街道第679号', 666900, '张嘉俊', '15178139135', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(147, 76, '北京市', '市辖区', '东城区', '第91街道第302号', 356900, '封坤', '15376729564', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(148, 77, '河北省', '石家庄市', '长安区', '第24街道第700号', 523400, '龚秀兰', '18896750346', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(149, 78, '江苏省', '苏州市', '相城区', '第55街道第589号', 375400, '岑欣', '17054593515', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(150, 78, '江苏省', '南京市', '浦口区', '第91街道第242号', 14200, '杜龙', '15297090378', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(151, 78, '江苏省', '苏州市', '相城区', '第4街道第787号', 253300, '赖桂芬', '17183868286', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(152, 79, '北京市', '市辖区', '东城区', '第39街道第896号', 806100, '喻彬', '18855575730', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(153, 80, '广东省', '深圳市', '福田区', '第17街道第477号', 822100, '贾瑜', '18019702154', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(154, 81, '江苏省', '南京市', '浦口区', '第23街道第814号', 656900, '鄢秀兰', '15934571594', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(155, 81, '江苏省', '南京市', '浦口区', '第61街道第304号', 846500, '齐祥', '15833084675', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(156, 82, '江苏省', '苏州市', '相城区', '第41街道第595号', 523400, '季瑞', '15032393628', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(157, 82, '北京市', '市辖区', '东城区', '第17街道第120号', 805100, '钟正业', '18710918735', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(158, 82, '北京市', '市辖区', '东城区', '第41街道第72号', 716900, '郜佳', '17044969842', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(159, 83, '河北省', '石家庄市', '长安区', '第93街道第100号', 183100, '袁志新', '15594232315', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(160, 83, '河北省', '石家庄市', '长安区', '第61街道第322号', 824500, '都正业', '13436436327', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(161, 84, '江苏省', '南京市', '浦口区', '第50街道第16号', 763500, '卞文娟', '17072524168', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(162, 85, '广东省', '深圳市', '福田区', '第84街道第902号', 554500, '匡芳', '18734145307', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(163, 86, '江苏省', '南京市', '浦口区', '第93街道第778号', 783800, '卫玉兰', '14529574968', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(164, 87, '江苏省', '南京市', '浦口区', '第42街道第771号', 652900, '耿英', '15700688066', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(165, 87, '广东省', '深圳市', '福田区', '第20街道第309号', 84700, '丁智明', '17076899472', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(166, 87, '江苏省', '苏州市', '相城区', '第72街道第311号', 366000, '辜旭', '18624892609', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(167, 88, '江苏省', '南京市', '浦口区', '第30街道第777号', 677700, '官敏', '13140002356', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(168, 88, '河北省', '石家庄市', '长安区', '第31街道第720号', 207800, '左桂芳', '13407630351', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(169, 88, '北京市', '市辖区', '东城区', '第26街道第938号', 742700, '赖伟', '14562763376', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(170, 89, '江苏省', '苏州市', '相城区', '第13街道第500号', 153300, '傅晨', '13134161118', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(171, 89, '江苏省', '苏州市', '相城区', '第1街道第75号', 244400, '薛亮', '18968006960', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(172, 89, '河北省', '石家庄市', '长安区', '第16街道第600号', 707400, '扬兵', '17708973831', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(173, 90, '广东省', '深圳市', '福田区', '第26街道第437号', 15000, '米平', '18157618769', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(174, 90, '北京市', '市辖区', '东城区', '第84街道第143号', 558600, '俞洋', '18185683522', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(175, 90, '河北省', '石家庄市', '长安区', '第50街道第326号', 555000, '练桂花', '13830598678', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(176, 91, '江苏省', '南京市', '浦口区', '第43街道第417号', 631500, '栗晨', '13528109684', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(177, 92, '江苏省', '苏州市', '相城区', '第18街道第21号', 212200, '胡金凤', '17729415143', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(178, 92, '河北省', '石家庄市', '长安区', '第55街道第854号', 32900, '刘辉', '13351849804', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(179, 92, '河北省', '石家庄市', '长安区', '第21街道第95号', 602900, '江丹丹', '13337816290', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(180, 93, '广东省', '深圳市', '福田区', '第67街道第561号', 474800, '甘志明', '13932733475', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(181, 94, '江苏省', '南京市', '浦口区', '第24街道第521号', 677800, '巩正业', '15959433252', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(182, 94, '北京市', '市辖区', '东城区', '第17街道第947号', 444400, '穆鹏', '15347980596', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(183, 95, '广东省', '深圳市', '福田区', '第97街道第841号', 854900, '方智明', '18558378310', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(184, 95, '北京市', '市辖区', '东城区', '第46街道第981号', 333800, '蔺建国', '17050384836', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(185, 95, '江苏省', '南京市', '浦口区', '第56街道第666号', 576700, '翟翼', '15031664110', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(186, 96, '北京市', '市辖区', '东城区', '第16街道第477号', 123500, '李岩', '18318925785', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(187, 97, '河北省', '石家庄市', '长安区', '第6街道第652号', 318100, '邹红', '15271114179', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(188, 98, '北京市', '市辖区', '东城区', '第4街道第656号', 346700, '臧正诚', '17199892513', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(189, 99, '河北省', '石家庄市', '长安区', '第25街道第707号', 158300, '邢俊', '18708400956', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(190, 99, '江苏省', '苏州市', '相城区', '第70街道第963号', 561000, '齐致远', '18906225871', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(191, 99, '江苏省', '苏州市', '相城区', '第26街道第991号', 274200, '贾文君', '17199864309', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(192, 100, '广东省', '深圳市', '福田区', '第66街道第717号', 494600, '关鹰', '17018294919', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33'),
(193, 100, '河北省', '石家庄市', '长安区', '第31街道第63号', 676100, '冷桂芬', '13871186500', NULL, '2018-07-10 06:45:33', '2018-07-10 06:45:33');

-- --------------------------------------------------------

--
-- 表的结构 `user_favorite_products`
--

CREATE TABLE `user_favorite_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_user_id_foreign` (`user_id`),
  ADD KEY `cart_items_product_sku_id_foreign` (`product_sku_id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_codes_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_no_unique` (`no`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_coupon_code_id_foreign` (`coupon_code_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_product_sku_id_foreign` (`product_sku_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_skus`
--
ALTER TABLE `product_skus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_skus_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_favorite_products`
--
ALTER TABLE `user_favorite_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_favorite_products_user_id_foreign` (`user_id`),
  ADD KEY `user_favorite_products_product_id_foreign` (`product_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用表AUTO_INCREMENT `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `product_skus`
--
ALTER TABLE `product_skus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- 使用表AUTO_INCREMENT `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- 使用表AUTO_INCREMENT `user_favorite_products`
--
ALTER TABLE `user_favorite_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 限制导出的表
--

--
-- 限制表 `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE;

--
-- 限制表 `product_skus`
--
ALTER TABLE `product_skus`
  ADD CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- 限制表 `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 限制表 `user_favorite_products`
--
ALTER TABLE `user_favorite_products`
  ADD CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
