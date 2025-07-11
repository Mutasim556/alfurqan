-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 01:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfurqan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Inactive 1=Active',
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `username`, `image`, `email_verified_at`, `password`, `status`, `delete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mutasim', 'admin@admin.com', '01724698392', 'mutasim', NULL, NULL, '$2y$12$en7rHyZiBnWYF3R9dLMazuNM4s9yFlqxe2kgFsVBOLJ1FFSeAwE6C', 1, 0, NULL, '2025-05-27 09:40:17', '2025-05-27 09:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apps_countries`
--

CREATE TABLE `apps_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `apps_countries`
--

INSERT INTO `apps_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TL', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GG', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'YT', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Eswatini'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `address` varchar(60) NOT NULL,
  `message` varchar(200) NOT NULL,
  `donation_type` varchar(30) NOT NULL,
  `donation` double NOT NULL,
  `currency` varchar(10) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Unpaid & 1=Paid',
  `receipt_id` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `full_name`, `phone`, `email`, `country`, `address`, `message`, `donation_type`, `donation`, `currency`, `payment_method`, `payment_status`, `receipt_id`, `created_at`, `updated_at`) VALUES
(1, 'MD. MUTASIM NAIB', '01724698392', 'mutasimstore@gmail.com', 'Bangladesh', 'ZORABARI,MIRZAGONJ,DOMAR,NILPHAMARI', 'sadas', 'Zakat', 10, 'usd', 'Stripe', 1, 1, '2025-06-02 10:39:39', '2025-06-02 10:39:52'),
(2, 'MD. MUTASIM NAIB', '01724698392', 'mutasimstore@gmail.com', 'Bangladesh', 'ZORABARI,MIRZAGONJ,DOMAR,NILPHAMARI', 'saddfsda', 'Zakat', 15, 'usd', 'Stripe', 1, 2, '2025-06-02 10:41:38', '2025-06-02 10:41:51'),
(3, 'MD. MUTASIM NAIB', '01724698392', 'mutasimstore@gmail.com', 'Bangladesh', 'ZORABARI,MIRZAGONJ,DOMAR,NILPHAMARI', 'sadas', 'Masjid Maintenance', 1, 'usd', 'Stripe', 1, 3, '2025-06-02 10:43:17', '2025-06-02 10:43:42'),
(4, 'MD. MUTASIM NAIB', '01724698392', 'mutasimstore@gmail.com', 'Bangladesh', 'ZORABARI,MIRZAGONJ,DOMAR,NILPHAMARI', 'wedsad', 'Sadaqah', 1, 'usd', 'Stripe', 1, 4, '2025-06-02 10:43:54', '2025-06-02 10:44:02'),
(5, 'MD. MUTASIM NAIB', '01724698392', 'mutasimstore@gmail.com', 'Bangladesh', 'ZORABARI,MIRZAGONJ,DOMAR,NILPHAMARI', 'sadasd', 'Masjid Maintenance', 122, 'usd', 'Stripe', 1, 5, '2025-06-02 10:44:21', '2025-06-02 10:44:35'),
(6, 'MD. MUTASIM NAIB', '01724698392', 'mutasimstore@gmail.com', 'Bangladesh', 'ZORABARI,MIRZAGONJ,DOMAR,NILPHAMARI', 'dasdas', 'Masjid Maintenance', 155, 'usd', 'Stripe', 1, 6, '2025-06-02 10:45:35', '2025-06-02 10:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `lang`, `slug`, `default`, `status`, `delete`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'en', 1, 1, 0, '2025-05-28 04:45:15', '2025-05-28 04:47:11'),
(2, 'Bangla', 'bn', 'bn', 0, 1, 0, '2025-05-28 04:45:36', '2025-05-28 04:45:36'),
(3, 'Arabic', 'ar', 'ar', 0, 1, 0, '2025-05-28 04:46:32', '2025-05-28 04:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE `maintenances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `secret_code` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `mail_option` varchar(255) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_07_000001_create_pulse_tables', 1),
(6, '2023_12_27_095019_create_permission_tables', 1),
(7, '2023_12_27_101553_create_admins_table', 1),
(8, '2024_01_01_094807_create_languages_table', 1),
(9, '2024_01_01_145421_create_api_keys_table', 1),
(10, '2024_01_10_122602_create_maintenances_table', 1),
(11, '2024_01_30_121027_create_sessions_table', 1),
(12, '2025_01_09_165906_create_translations_table', 2),
(13, '2025_06_02_110432_create_donations_table', 3),
(16, '2025_06_02_114125_create_stripe_payments_table', 4),
(18, '2025_06_02_131842_add_receipt_id_donations_table', 5),
(21, '2025_06_02_171408_create_prayer_times_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'user-index', 'admin', 'User Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(2, 'user-create', 'admin', 'User Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(3, 'user-update', 'admin', 'User Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(4, 'user-delete', 'admin', 'User Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(5, 'role-permission-index', 'admin', 'Roles And Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(6, 'role-permission-create', 'admin', 'Roles And Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(7, 'role-permission-update', 'admin', 'Roles And Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(8, 'role-permission-delete', 'admin', 'Roles And Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(9, 'specific-permission-create', 'admin', 'Roles And Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(10, 'language-index', 'admin', 'Language Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(11, 'language-create', 'admin', 'Language Permissions', '2025-05-27 09:38:09', '2025-05-27 09:38:09'),
(12, 'language-update', 'admin', 'Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(13, 'language-delete', 'admin', 'Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(14, 'backend-string-generate', 'admin', 'Backend Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(15, 'backend-string-translate', 'admin', 'Backend Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(16, 'backend-string-update', 'admin', 'Backend Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(17, 'backend-string-index', 'admin', 'Backend Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(18, 'backend-api-accesskey', 'admin', 'Backend Language Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10'),
(19, 'maintenance-mode-index', 'admin', 'Settings Permissions', '2025-05-27 09:38:10', '2025-05-27 09:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prayer_times`
--

CREATE TABLE `prayer_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fajr` varchar(255) DEFAULT NULL,
  `duha` varchar(255) DEFAULT NULL,
  `dhuhr` varchar(255) DEFAULT NULL,
  `asr` varchar(255) DEFAULT NULL,
  `maghrib` varchar(255) DEFAULT NULL,
  `isha` varchar(255) DEFAULT NULL,
  `jummah` varchar(255) DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prayer_times`
--

INSERT INTO `prayer_times` (`id`, `fajr`, `duha`, `dhuhr`, `asr`, `maghrib`, `isha`, `jummah`, `last_update`, `created_at`, `updated_at`) VALUES
(1, '3:49 AM', '5:26 AM', '12:54 PM', '4:53 PM', '8:22 PM', '9:59 PM', NULL, '2025-06-03', NULL, '2025-06-03 02:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `pulse_aggregates`
--

CREATE TABLE `pulse_aggregates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bucket` int(10) UNSIGNED NOT NULL,
  `period` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `aggregate` varchar(255) NOT NULL,
  `value` decimal(20,2) NOT NULL,
  `count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_aggregates`
--

INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1, 1748338680, 60, 'cache_miss', 'spatie.permission.cache', 'count', 20.00, NULL),
(2, 1748338560, 360, 'cache_miss', 'spatie.permission.cache', 'count', 20.00, NULL),
(3, 1748338560, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 20.00, NULL),
(4, 1748335680, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 21.00, NULL),
(5, 1748338680, 60, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'count', 1.00, NULL),
(6, 1748338560, 360, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'count', 1.00, NULL),
(7, 1748338560, 1440, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'count', 1.00, NULL),
(8, 1748335680, 10080, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'count', 1.00, NULL),
(9, 1748338680, 60, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'max', 1748338690.00, NULL),
(10, 1748338560, 360, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'max', 1748338690.00, NULL),
(11, 1748338560, 1440, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'max', 1748338690.00, NULL),
(12, 1748335680, 10080, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 'max', 1748338690.00, NULL),
(13, 1748340660, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(14, 1748340360, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(15, 1748340000, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(17, 1748340660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(18, 1748340360, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(19, 1748340000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(20, 1748335680, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(25, 1748398920, 60, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'count', 1.00, NULL),
(26, 1748398680, 360, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'count', 1.00, NULL),
(27, 1748397600, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'count', 1.00, NULL),
(28, 1748396160, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'count', 1.00, NULL),
(29, 1748398920, 60, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'max', 1554.00, NULL),
(30, 1748398680, 360, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'max', 1554.00, NULL),
(31, 1748397600, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'max', 1554.00, NULL),
(32, 1748396160, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 'max', 1554.00, NULL),
(33, 1748399160, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(34, 1748399040, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(35, 1748399040, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(36, 1748396160, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(37, 1748401080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(38, 1748400840, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(39, 1748400480, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(40, 1748396160, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 29.00, NULL),
(45, 1748401140, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(49, 1748401200, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(50, 1748401200, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(53, 1748401260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(69, 1748401320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(73, 1748405340, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(74, 1748405160, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(75, 1748404800, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(77, 1748405340, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(78, 1748405160, 360, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(79, 1748404800, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 20.00, NULL),
(101, 1748405400, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(102, 1748405160, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(103, 1748404800, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(104, 1748396160, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(105, 1748405400, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(109, 1748405400, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2171.00, NULL),
(110, 1748405160, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2171.00, NULL),
(111, 1748404800, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2171.00, NULL),
(112, 1748396160, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2171.00, NULL),
(121, 1748405580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(122, 1748405520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(125, 1748405640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(133, 1748405700, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(137, 1748405760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(145, 1748405940, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(146, 1748405880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(149, 1748406120, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(165, 1748406300, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(166, 1748406240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(167, 1748406240, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 55.00, NULL),
(168, 1748406240, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 92.00, NULL),
(169, 1748406600, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(170, 1748406600, 360, 'cache_hit', 'spatie.permission.cache', 'count', 9.00, NULL),
(173, 1748406600, 60, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'count', 1.00, NULL),
(174, 1748406600, 360, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'count', 1.00, NULL),
(175, 1748406240, 1440, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'count', 1.00, NULL),
(176, 1748406240, 10080, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'count', 1.00, NULL),
(181, 1748406600, 60, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'max', 1748406611.00, NULL),
(182, 1748406600, 360, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'max', 1748406611.00, NULL),
(183, 1748406240, 1440, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'max', 1748406611.00, NULL),
(184, 1748406240, 10080, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 'max', 1748406611.00, NULL),
(197, 1748406660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(201, 1748406720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(209, 1748406840, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(213, 1748406960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(214, 1748406960, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(221, 1748407080, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(222, 1748407080, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'count', 1.00, NULL),
(223, 1748406960, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'count', 1.00, NULL),
(224, 1748406240, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'count', 1.00, NULL),
(225, 1748406240, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'count', 1.00, NULL),
(229, 1748407080, 60, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'max', 1748407123.00, NULL),
(230, 1748406960, 360, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'max', 1748407123.00, NULL),
(231, 1748406240, 1440, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'max', 1748407123.00, NULL),
(232, 1748406240, 10080, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 'max', 1748407123.00, NULL),
(233, 1748407260, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(237, 1748407380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(238, 1748407320, 360, 'cache_hit', 'spatie.permission.cache', 'count', 41.00, NULL),
(245, 1748407380, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(246, 1748407320, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 11.00, NULL),
(247, 1748406240, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 11.00, NULL),
(248, 1748406240, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 13.00, NULL),
(249, 1748407380, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1983.00, NULL),
(250, 1748407320, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 2908.00, NULL),
(251, 1748406240, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 2908.00, NULL),
(252, 1748406240, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 2908.00, NULL),
(261, 1748407500, 60, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(301, 1748407560, 60, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(305, 1748407560, 60, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'count', 2.00, NULL),
(306, 1748407320, 360, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'count', 4.00, NULL),
(307, 1748406240, 1440, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'count', 4.00, NULL),
(308, 1748406240, 10080, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'count', 4.00, NULL),
(313, 1748407560, 60, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'max', 3323.00, NULL),
(314, 1748407320, 360, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'max', 3323.00, NULL),
(315, 1748406240, 1440, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'max', 3323.00, NULL),
(316, 1748406240, 10080, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'max', 3323.00, NULL),
(321, 1748407560, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 6.00, NULL),
(325, 1748407560, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 2908.00, NULL),
(413, 1748407620, 60, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'count', 2.00, NULL),
(414, 1748407620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 15.00, NULL),
(421, 1748407620, 60, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 'max', 2661.00, NULL),
(429, 1748407620, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 4.00, NULL),
(433, 1748407620, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1639.00, NULL),
(513, 1748407620, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(514, 1748407320, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(515, 1748406240, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(516, 1748406240, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 3.00, NULL),
(521, 1748407620, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2121.00, NULL),
(522, 1748407320, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2121.00, NULL),
(523, 1748406240, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2121.00, NULL),
(524, 1748406240, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2312.00, NULL),
(529, 1748407680, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(530, 1748407680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 12.00, NULL),
(531, 1748407680, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 26.00, NULL),
(537, 1748407680, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(538, 1748407680, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 2.00, NULL),
(539, 1748407680, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 2.00, NULL),
(545, 1748407680, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 1841.00, NULL),
(546, 1748407680, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2312.00, NULL),
(547, 1748407680, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2312.00, NULL),
(557, 1748407920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(561, 1748407920, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(562, 1748407680, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(563, 1748407680, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(565, 1748407920, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1510.00, NULL),
(566, 1748407680, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1510.00, NULL),
(567, 1748407680, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1510.00, NULL),
(581, 1748407980, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(589, 1748407980, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(597, 1748407980, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2312.00, NULL),
(601, 1748408040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(602, 1748408040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(621, 1748408100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(637, 1748408160, 60, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(657, 1748413320, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(658, 1748413080, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(659, 1748412000, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(660, 1748406240, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(661, 1748413320, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(662, 1748413080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(663, 1748412000, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(665, 1748413620, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(666, 1748413440, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(667, 1748413440, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(669, 1748413800, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(670, 1748413800, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(677, 1748413860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(681, 1748413920, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(685, 1748413920, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(686, 1748413800, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(687, 1748413440, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(689, 1748413920, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1246.00, NULL),
(690, 1748413800, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1246.00, NULL),
(691, 1748413440, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1246.00, NULL),
(697, 1748414640, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(698, 1748414520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(713, 1748416860, 60, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(714, 1748416680, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(715, 1748416320, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 10.00, NULL),
(716, 1748416320, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 13.00, NULL),
(725, 1748416980, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(726, 1748416680, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(727, 1748416320, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(728, 1748416320, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(729, 1748416980, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(737, 1748417040, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(738, 1748417040, 360, 'cache_hit', 'spatie.permission.cache', 'count', 5.00, NULL),
(741, 1748417100, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(757, 1748417100, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(758, 1748417040, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(759, 1748416320, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(760, 1748416320, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'count', 1.00, NULL),
(761, 1748417100, 60, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1348.00, NULL),
(762, 1748417040, 360, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1348.00, NULL),
(763, 1748416320, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1348.00, NULL),
(764, 1748416320, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 'max', 1348.00, NULL),
(765, 1748417940, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(766, 1748417760, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(767, 1748417760, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(768, 1748416320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'count', 1.00, NULL),
(769, 1748417940, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1748417940.00, NULL),
(770, 1748417760, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1748417940.00, NULL),
(771, 1748417760, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1748417940.00, NULL),
(772, 1748416320, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 'max', 1748417940.00, NULL),
(773, 1748418660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(774, 1748418480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(775, 1748417760, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 3.00, NULL),
(777, 1748418720, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(785, 1748700840, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(786, 1748700720, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(787, 1748700000, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(788, 1748698560, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(789, 1748700840, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 4239.00, NULL),
(790, 1748700720, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 4239.00, NULL),
(791, 1748700000, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 4239.00, NULL),
(792, 1748698560, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 4239.00, NULL),
(793, 1748700840, 60, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'count', 1.00, NULL),
(794, 1748700720, 360, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'count', 1.00, NULL),
(795, 1748700000, 1440, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'count', 1.00, NULL),
(796, 1748698560, 10080, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'count', 1.00, NULL),
(797, 1748700840, 60, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'max', 1193.00, NULL),
(798, 1748700720, 360, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'max', 1193.00, NULL),
(799, 1748700000, 1440, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'max', 1193.00, NULL),
(800, 1748698560, 10080, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 'max', 1193.00, NULL),
(801, 1748700840, 60, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'count', 1.00, NULL),
(802, 1748700720, 360, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'count', 1.00, NULL),
(803, 1748700000, 1440, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'count', 1.00, NULL),
(804, 1748698560, 10080, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'count', 1.00, NULL),
(805, 1748700840, 60, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'max', 1197.00, NULL),
(806, 1748700720, 360, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'max', 1197.00, NULL),
(807, 1748700000, 1440, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'max', 1197.00, NULL),
(808, 1748698560, 10080, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 'max', 1197.00, NULL),
(809, 1748745180, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(810, 1748745000, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(811, 1748744640, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(812, 1748738880, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 2.00, NULL),
(813, 1748745180, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1314.00, NULL),
(814, 1748745000, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1314.00, NULL),
(815, 1748744640, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1314.00, NULL),
(816, 1748738880, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 3220.00, NULL),
(817, 1748746140, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(818, 1748746080, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(819, 1748746080, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(821, 1748746140, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 3220.00, NULL),
(822, 1748746080, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 3220.00, NULL),
(823, 1748746080, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 3220.00, NULL),
(825, 1748746740, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(826, 1748746440, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(827, 1748746080, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(828, 1748738880, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(829, 1748746740, 60, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'count', 1.00, NULL),
(830, 1748746440, 360, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'count', 1.00, NULL),
(831, 1748746080, 1440, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'count', 1.00, NULL),
(832, 1748738880, 10080, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'count', 1.00, NULL),
(833, 1748746740, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3563.00, NULL),
(834, 1748746440, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3563.00, NULL),
(835, 1748746080, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3563.00, NULL),
(836, 1748738880, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3563.00, NULL),
(837, 1748746740, 60, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'max', 1748746799.00, NULL),
(838, 1748746440, 360, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'max', 1748746799.00, NULL),
(839, 1748746080, 1440, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'max', 1748746799.00, NULL),
(840, 1748738880, 10080, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 'max', 1748746799.00, NULL),
(841, 1748746800, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(842, 1748746800, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(843, 1748746800, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'count', 1.00, NULL),
(844, 1748746800, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'count', 1.00, NULL),
(845, 1748746080, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'count', 1.00, NULL),
(846, 1748738880, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'count', 1.00, NULL),
(849, 1748746800, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2339.00, NULL),
(850, 1748746800, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2339.00, NULL),
(851, 1748746800, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'max', 1748746834.00, NULL),
(852, 1748746800, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'max', 1748746834.00, NULL),
(853, 1748746080, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'max', 1748746834.00, NULL),
(854, 1748738880, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 'max', 1748746834.00, NULL),
(857, 1748749740, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 1.00, NULL),
(858, 1748749680, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 1.00, NULL),
(859, 1748748960, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 1.00, NULL),
(860, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 6.00, NULL),
(861, 1748749740, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748749769.00, NULL),
(862, 1748749680, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748749769.00, NULL),
(863, 1748748960, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748749769.00, NULL),
(864, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748753953.00, NULL),
(865, 1748752620, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(866, 1748752560, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 3.00, NULL),
(867, 1748751840, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 4.00, NULL),
(868, 1748748960, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 6.00, NULL),
(869, 1748752620, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 1.00, NULL),
(870, 1748752560, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 3.00, NULL),
(871, 1748751840, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 3.00, NULL),
(873, 1748752620, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1009.00, NULL),
(874, 1748752560, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 2016.00, NULL),
(875, 1748751840, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 2016.00, NULL),
(876, 1748748960, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 2016.00, NULL),
(877, 1748752620, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748752666.00, NULL),
(878, 1748752560, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748752706.00, NULL),
(879, 1748751840, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748752706.00, NULL),
(881, 1748752680, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 2.00, NULL),
(882, 1748752680, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 2.00, NULL),
(889, 1748752680, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 2016.00, NULL),
(890, 1748752680, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748752706.00, NULL),
(913, 1748753220, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(914, 1748752920, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(917, 1748753220, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1029.00, NULL),
(918, 1748752920, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1029.00, NULL),
(921, 1748753400, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(922, 1748753280, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(923, 1748753280, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 7.00, NULL),
(924, 1748748960, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 14.00, NULL),
(925, 1748753400, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'count', 1.00, NULL),
(926, 1748753280, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'count', 3.00, NULL),
(927, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'count', 3.00, NULL),
(928, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'count', 3.00, NULL),
(929, 1748753400, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1383.00, NULL),
(930, 1748753280, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1473.00, NULL),
(931, 1748753280, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1800.00, NULL),
(932, 1748748960, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3548.00, NULL),
(933, 1748753400, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'max', 1748753459.00, NULL),
(934, 1748753280, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'max', 1748753528.00, NULL),
(935, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'max', 1748753528.00, NULL),
(936, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'max', 1748753528.00, NULL),
(937, 1748753460, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(938, 1748753460, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'count', 1.00, NULL),
(945, 1748753460, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1409.00, NULL),
(946, 1748753460, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'max', 1748753496.00, NULL),
(953, 1748753520, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(954, 1748753520, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'count', 1.00, NULL),
(961, 1748753520, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1473.00, NULL),
(962, 1748753520, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 'max', 1748753528.00, NULL),
(969, 1748753760, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(970, 1748753640, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(971, 1748753760, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'count', 2.00, NULL),
(972, 1748753640, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'count', 3.00, NULL),
(973, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'count', 3.00, NULL),
(974, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'count', 3.00, NULL),
(977, 1748753760, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1800.00, NULL),
(978, 1748753640, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1800.00, NULL),
(979, 1748753760, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'max', 1748753801.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(980, 1748753640, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'max', 1748753865.00, NULL),
(981, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'max', 1748753865.00, NULL),
(982, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'max', 1748753865.00, NULL),
(1001, 1748753820, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1002, 1748753820, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'count', 1.00, NULL),
(1009, 1748753820, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1350.00, NULL),
(1010, 1748753820, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 'max', 1748753865.00, NULL),
(1017, 1748753880, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(1018, 1748753640, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 2.00, NULL),
(1019, 1748753280, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 2.00, NULL),
(1020, 1748753880, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 1.00, NULL),
(1021, 1748753640, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 2.00, NULL),
(1022, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 2.00, NULL),
(1025, 1748753880, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1050.00, NULL),
(1026, 1748753640, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1050.00, NULL),
(1027, 1748753280, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1050.00, NULL),
(1028, 1748753880, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748753935.00, NULL),
(1029, 1748753640, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748753953.00, NULL),
(1030, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748753953.00, NULL),
(1033, 1748753940, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'count', 1.00, NULL),
(1034, 1748753940, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'count', 1.00, NULL),
(1041, 1748753940, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 'max', 1029.00, NULL),
(1042, 1748753940, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 'max', 1748753953.00, NULL),
(1049, 1748754660, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1050, 1748754360, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1051, 1748754660, 60, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1052, 1748754360, 360, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1053, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1054, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1057, 1748754660, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1705.00, NULL),
(1058, 1748754360, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1705.00, NULL),
(1059, 1748754660, 60, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754684.00, NULL),
(1060, 1748754360, 360, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754684.00, NULL),
(1061, 1748753280, 1440, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754684.00, NULL),
(1062, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754684.00, NULL),
(1065, 1748754720, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1066, 1748754720, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 5.00, NULL),
(1067, 1748754720, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 6.00, NULL),
(1068, 1748754720, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1069, 1748754720, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1070, 1748754720, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1071, 1748748960, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1073, 1748754720, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1438.00, NULL),
(1074, 1748754720, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1438.00, NULL),
(1075, 1748754720, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3548.00, NULL),
(1076, 1748754720, 60, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754737.00, NULL),
(1077, 1748754720, 360, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754737.00, NULL),
(1078, 1748754720, 1440, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754737.00, NULL),
(1079, 1748748960, 10080, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754737.00, NULL),
(1081, 1748754720, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 1.00, NULL),
(1082, 1748754720, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(1083, 1748754720, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(1084, 1748748960, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(1089, 1748754720, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748754762.00, NULL),
(1090, 1748754720, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748755068.00, NULL),
(1091, 1748754720, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748755068.00, NULL),
(1092, 1748748960, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748755068.00, NULL),
(1097, 1748754780, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1098, 1748754780, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1099, 1748754720, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 2.00, NULL),
(1100, 1748754720, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 2.00, NULL),
(1101, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 2.00, NULL),
(1105, 1748754780, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1333.00, NULL),
(1106, 1748754780, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748754826.00, NULL),
(1107, 1748754720, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748755028.00, NULL),
(1108, 1748754720, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748755028.00, NULL),
(1109, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748755028.00, NULL),
(1113, 1748755020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1114, 1748755020, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'count', 1.00, NULL),
(1121, 1748755020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1387.00, NULL),
(1122, 1748755020, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 'max', 1748755028.00, NULL),
(1129, 1748755020, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 1.00, NULL),
(1137, 1748755020, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748755068.00, NULL),
(1145, 1748755260, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1146, 1748755080, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1149, 1748755260, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3548.00, NULL),
(1150, 1748755080, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3548.00, NULL),
(1153, 1748755380, 60, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'count', 2.00, NULL),
(1154, 1748755080, 360, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'count', 2.00, NULL),
(1155, 1748754720, 1440, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'count', 2.00, NULL),
(1156, 1748748960, 10080, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'count', 2.00, NULL),
(1157, 1748755380, 60, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'max', 1748755419.00, NULL),
(1158, 1748755080, 360, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'max', 1748755419.00, NULL),
(1159, 1748754720, 1440, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'max', 1748755419.00, NULL),
(1160, 1748748960, 10080, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 'max', 1748755419.00, NULL),
(1161, 1748756400, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 1.00, NULL),
(1162, 1748756160, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 1.00, NULL),
(1163, 1748756160, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 1.00, NULL),
(1164, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 1.00, NULL),
(1165, 1748756400, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748756408.00, NULL),
(1166, 1748756160, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748756408.00, NULL),
(1167, 1748756160, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748756408.00, NULL),
(1168, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748756408.00, NULL),
(1169, 1748756760, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'count', 1.00, NULL),
(1170, 1748756520, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'count', 1.00, NULL),
(1171, 1748756160, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'count', 1.00, NULL),
(1172, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'count', 1.00, NULL),
(1173, 1748756760, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'max', 1748756790.00, NULL),
(1174, 1748756520, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'max', 1748756790.00, NULL),
(1175, 1748756160, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'max', 1748756790.00, NULL),
(1176, 1748748960, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 'max', 1748756790.00, NULL),
(1177, 1748757480, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 2.00, NULL),
(1178, 1748757240, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 4.00, NULL),
(1179, 1748756160, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 4.00, NULL),
(1180, 1748748960, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 4.00, NULL),
(1181, 1748757480, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748757513.00, NULL),
(1182, 1748757240, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748757585.00, NULL),
(1183, 1748756160, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748757585.00, NULL),
(1184, 1748748960, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748757585.00, NULL),
(1193, 1748757540, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'count', 2.00, NULL),
(1197, 1748757540, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 'max', 1748757585.00, NULL),
(1209, 1748757960, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1210, 1748757960, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1211, 1748757600, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1213, 1748757960, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3280.00, NULL),
(1214, 1748757960, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3280.00, NULL),
(1215, 1748757600, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3280.00, NULL),
(1217, 1748764380, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1218, 1748764080, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1219, 1748763360, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1220, 1748759040, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1221, 1748764380, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1222, 1748764080, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1223, 1748763360, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1224, 1748759040, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1229, 1748831820, 60, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'count', 1.00, NULL),
(1230, 1748831760, 360, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'count', 1.00, NULL),
(1231, 1748831040, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'count', 1.00, NULL),
(1232, 1748829600, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'count', 1.00, NULL),
(1233, 1748831820, 60, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'max', 1336.00, NULL),
(1234, 1748831760, 360, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'max', 1336.00, NULL),
(1235, 1748831040, 1440, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'max', 1336.00, NULL),
(1236, 1748829600, 10080, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 'max', 1336.00, NULL),
(1237, 1748833920, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1238, 1748833920, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1239, 1748833920, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1240, 1748829600, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 3.00, NULL),
(1241, 1748833920, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'count', 1.00, NULL),
(1242, 1748833920, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'count', 1.00, NULL),
(1243, 1748833920, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'count', 1.00, NULL),
(1244, 1748829600, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'count', 1.00, NULL),
(1245, 1748833920, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1416.00, NULL),
(1246, 1748833920, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1416.00, NULL),
(1247, 1748833920, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1416.00, NULL),
(1248, 1748829600, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1884.00, NULL),
(1249, 1748833920, 60, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'max', 1748833974.00, NULL),
(1250, 1748833920, 360, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'max', 1748833974.00, NULL),
(1251, 1748833920, 1440, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'max', 1748833974.00, NULL),
(1252, 1748829600, 10080, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 'max', 1748833974.00, NULL),
(1253, 1748837280, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1254, 1748837160, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1255, 1748836800, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1257, 1748837280, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1884.00, NULL),
(1258, 1748837160, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1884.00, NULL),
(1259, 1748836800, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1884.00, NULL),
(1261, 1748838060, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1262, 1748837880, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1263, 1748836800, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1264, 1748829600, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(1265, 1748838060, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 4359.00, NULL),
(1266, 1748837880, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 4359.00, NULL),
(1267, 1748836800, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 4359.00, NULL),
(1268, 1748829600, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 4359.00, NULL),
(1269, 1748838420, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1270, 1748838240, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1271, 1748838240, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1273, 1748838420, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1052.00, NULL),
(1274, 1748838240, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1052.00, NULL),
(1275, 1748838240, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1052.00, NULL),
(1277, 1748838420, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1278, 1748838240, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1279, 1748838240, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1281, 1748838420, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1493.00, NULL),
(1282, 1748838240, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1908.00, NULL),
(1283, 1748838240, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1908.00, NULL),
(1285, 1748838480, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1289, 1748838480, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1908.00, NULL),
(1293, 1748843220, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 2.00, NULL),
(1294, 1748842920, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 2.00, NULL),
(1295, 1748842560, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 6.00, NULL),
(1296, 1748839680, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 9.00, NULL),
(1297, 1748843220, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 2.00, NULL),
(1298, 1748842920, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 2.00, NULL),
(1299, 1748842560, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 6.00, NULL),
(1300, 1748839680, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 6.00, NULL),
(1301, 1748843220, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1118.00, NULL),
(1302, 1748842920, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1118.00, NULL),
(1303, 1748842560, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1118.00, NULL),
(1304, 1748839680, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1358.00, NULL),
(1305, 1748843220, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843266.00, NULL),
(1306, 1748842920, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843266.00, NULL),
(1307, 1748842560, 1440, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843433.00, NULL),
(1308, 1748839680, 10080, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843433.00, NULL),
(1325, 1748843340, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1326, 1748843280, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 4.00, NULL),
(1327, 1748843340, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 1.00, NULL),
(1328, 1748843280, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 4.00, NULL),
(1333, 1748843340, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1021.00, NULL),
(1334, 1748843280, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1076.00, NULL),
(1335, 1748843340, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843352.00, NULL),
(1336, 1748843280, 360, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843433.00, NULL),
(1341, 1748843400, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 3.00, NULL),
(1342, 1748843400, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'count', 3.00, NULL),
(1349, 1748843400, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1076.00, NULL),
(1350, 1748843400, 60, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 'max', 1748843433.00, NULL),
(1389, 1748845440, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1390, 1748845440, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1391, 1748845440, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 3.00, NULL),
(1393, 1748845440, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1124.00, NULL),
(1394, 1748845440, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1124.00, NULL),
(1395, 1748845440, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1358.00, NULL),
(1397, 1748845500, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'count', 2.00, NULL),
(1398, 1748845440, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'count', 2.00, NULL),
(1399, 1748845440, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'count', 2.00, NULL),
(1400, 1748839680, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'count', 2.00, NULL),
(1401, 1748845500, 60, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'max', 1748845531.00, NULL),
(1402, 1748845440, 360, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'max', 1748845531.00, NULL),
(1403, 1748845440, 1440, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'max', 1748845531.00, NULL),
(1404, 1748839680, 10080, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 'max', 1748845531.00, NULL),
(1405, 1748846340, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'count', 2.00, NULL),
(1406, 1748846160, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'count', 2.00, NULL),
(1407, 1748845440, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'count', 2.00, NULL),
(1408, 1748839680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'count', 2.00, NULL),
(1409, 1748846340, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'max', 1748846396.00, NULL),
(1410, 1748846160, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'max', 1748846396.00, NULL),
(1411, 1748845440, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'max', 1748846396.00, NULL),
(1412, 1748839680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 'max', 1748846396.00, NULL),
(1413, 1748846460, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1414, 1748846160, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1415, 1748846460, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'count', 1.00, NULL),
(1416, 1748846160, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'count', 1.00, NULL),
(1417, 1748845440, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'count', 1.00, NULL),
(1418, 1748839680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'count', 1.00, NULL),
(1421, 1748846460, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1358.00, NULL),
(1422, 1748846160, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1358.00, NULL),
(1423, 1748846460, 60, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'max', 1748846502.00, NULL),
(1424, 1748846160, 360, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'max', 1748846502.00, NULL),
(1425, 1748845440, 1440, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'max', 1748846502.00, NULL),
(1426, 1748839680, 10080, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 'max', 1748846502.00, NULL),
(1429, 1748846520, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1430, 1748846520, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1433, 1748846520, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1047.00, NULL),
(1434, 1748846520, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1047.00, NULL),
(1437, 1748848020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1438, 1748847960, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 4.00, NULL),
(1439, 1748846880, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 4.00, NULL),
(1440, 1748839680, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 8.00, NULL),
(1441, 1748848020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1707.00, NULL),
(1442, 1748847960, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1713.00, NULL),
(1443, 1748846880, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1713.00, NULL),
(1444, 1748839680, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1789.00, NULL),
(1445, 1748848080, 60, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'count', 2.00, NULL),
(1446, 1748847960, 360, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'count', 2.00, NULL),
(1447, 1748846880, 1440, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'count', 2.00, NULL),
(1448, 1748839680, 10080, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'count', 2.00, NULL),
(1449, 1748848080, 60, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'max', 1748848112.00, NULL),
(1450, 1748847960, 360, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'max', 1748848112.00, NULL),
(1451, 1748846880, 1440, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'max', 1748848112.00, NULL),
(1452, 1748839680, 10080, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 'max', 1748848112.00, NULL),
(1453, 1748848080, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1457, 1748848080, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1634.00, NULL),
(1461, 1748848140, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1465, 1748848140, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1644.00, NULL),
(1469, 1748848260, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1473, 1748848260, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1713.00, NULL),
(1477, 1748848320, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1478, 1748848320, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1479, 1748848320, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 4.00, NULL),
(1481, 1748848320, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1732.00, NULL),
(1482, 1748848320, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1789.00, NULL),
(1483, 1748848320, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1789.00, NULL),
(1485, 1748848500, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1489, 1748848500, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1789.00, NULL),
(1493, 1748849460, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1494, 1748849400, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1497, 1748849460, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1703.00, NULL),
(1498, 1748849400, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1703.00, NULL),
(1501, 1748849520, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1505, 1748849520, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1684.00, NULL),
(1509, 1748853720, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1510, 1748853720, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 7.00, NULL),
(1511, 1748852640, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 7.00, NULL),
(1512, 1748849760, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 39.00, NULL),
(1513, 1748853720, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3314.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(1514, 1748853720, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3314.00, NULL),
(1515, 1748852640, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3314.00, NULL),
(1516, 1748849760, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 3314.00, NULL),
(1517, 1748853840, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1518, 1748853840, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'count', 2.00, NULL),
(1519, 1748853720, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'count', 5.00, NULL),
(1520, 1748852640, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'count', 5.00, NULL),
(1521, 1748849760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'count', 5.00, NULL),
(1525, 1748853840, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2706.00, NULL),
(1526, 1748853840, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'max', 1748853880.00, NULL),
(1527, 1748853720, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'max', 1748853937.00, NULL),
(1528, 1748852640, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'max', 1748853937.00, NULL),
(1529, 1748849760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'max', 1748853937.00, NULL),
(1549, 1748853900, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(1550, 1748853900, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'count', 3.00, NULL),
(1557, 1748853900, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2077.00, NULL),
(1558, 1748853900, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 'max', 1748853937.00, NULL),
(1597, 1748854020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1601, 1748854020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1721.00, NULL),
(1605, 1748854200, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1606, 1748854080, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 7.00, NULL),
(1607, 1748854080, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 13.00, NULL),
(1609, 1748854200, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1756.00, NULL),
(1610, 1748854080, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1770.00, NULL),
(1611, 1748854080, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1807.00, NULL),
(1613, 1748854260, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1617, 1748854260, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1752.00, NULL),
(1629, 1748854320, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1633, 1748854320, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1722.00, NULL),
(1645, 1748854380, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1649, 1748854380, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1770.00, NULL),
(1661, 1748854560, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1662, 1748854440, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(1665, 1748854560, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1775.00, NULL),
(1666, 1748854440, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1807.00, NULL),
(1669, 1748854620, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1673, 1748854620, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1807.00, NULL),
(1677, 1748854740, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1681, 1748854740, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1656.00, NULL),
(1685, 1748854800, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1686, 1748854800, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1689, 1748854800, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1789.00, NULL),
(1690, 1748854800, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1791.00, NULL),
(1693, 1748854860, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1697, 1748854860, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1791.00, NULL),
(1701, 1748855460, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1702, 1748855160, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1705, 1748855460, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1689.00, NULL),
(1706, 1748855160, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1689.00, NULL),
(1709, 1748855520, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1710, 1748855520, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 6.00, NULL),
(1711, 1748855520, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 14.00, NULL),
(1713, 1748855520, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1746.00, NULL),
(1714, 1748855520, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1787.00, NULL),
(1715, 1748855520, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1787.00, NULL),
(1717, 1748855580, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1721, 1748855580, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1787.00, NULL),
(1733, 1748855640, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1737, 1748855640, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1689.00, NULL),
(1741, 1748855700, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1745, 1748855700, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1704.00, NULL),
(1749, 1748855820, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1753, 1748855820, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1704.00, NULL),
(1757, 1748855940, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(1758, 1748855880, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 5.00, NULL),
(1761, 1748855940, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1713.00, NULL),
(1762, 1748855880, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1753.00, NULL),
(1781, 1748856000, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1785, 1748856000, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1655.00, NULL),
(1789, 1748856180, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1793, 1748856180, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1753.00, NULL),
(1797, 1748856180, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1798, 1748855880, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1799, 1748855520, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 3.00, NULL),
(1800, 1748849760, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 7.00, NULL),
(1801, 1748856180, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1294.00, NULL),
(1802, 1748855880, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1294.00, NULL),
(1803, 1748855520, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1294.00, NULL),
(1804, 1748849760, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1294.00, NULL),
(1805, 1748856240, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1806, 1748856240, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1809, 1748856240, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1593.00, NULL),
(1810, 1748856240, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1593.00, NULL),
(1813, 1748856240, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'count', 1.00, NULL),
(1814, 1748856240, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'count', 3.00, NULL),
(1815, 1748855520, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'count', 3.00, NULL),
(1816, 1748849760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'count', 3.00, NULL),
(1817, 1748856240, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'max', 1748856274.00, NULL),
(1818, 1748856240, 360, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'max', 1748856485.00, NULL),
(1819, 1748855520, 1440, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'max', 1748856485.00, NULL),
(1820, 1748849760, 10080, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'max', 1748856485.00, NULL),
(1821, 1748856420, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'count', 1.00, NULL),
(1825, 1748856420, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'max', 1748856478.00, NULL),
(1829, 1748856480, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'count', 1.00, NULL),
(1833, 1748856480, 60, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 'max', 1748856485.00, NULL),
(1837, 1748856540, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1838, 1748856240, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1841, 1748856540, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1091.00, NULL),
(1842, 1748856240, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1091.00, NULL),
(1845, 1748856540, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1849, 1748856540, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1558.00, NULL),
(1853, 1748856660, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1854, 1748856600, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1857, 1748856660, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1119.00, NULL),
(1858, 1748856600, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1119.00, NULL),
(1861, 1748856660, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1862, 1748856600, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1865, 1748856660, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1709.00, NULL),
(1866, 1748856600, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1709.00, NULL),
(1869, 1748856960, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'count', 2.00, NULL),
(1870, 1748856960, 360, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'count', 3.00, NULL),
(1871, 1748856960, 1440, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'count', 3.00, NULL),
(1872, 1748849760, 10080, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'count', 3.00, NULL),
(1873, 1748856960, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'max', 1748856998.00, NULL),
(1874, 1748856960, 360, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'max', 1748857023.00, NULL),
(1875, 1748856960, 1440, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'max', 1748857023.00, NULL),
(1876, 1748849760, 10080, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'max', 1748857023.00, NULL),
(1885, 1748857020, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'count', 1.00, NULL),
(1889, 1748857020, 60, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 'max', 1748857023.00, NULL),
(1893, 1748857020, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1894, 1748856960, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1895, 1748856960, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1897, 1748857020, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1128.00, NULL),
(1898, 1748856960, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1128.00, NULL),
(1899, 1748856960, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1128.00, NULL),
(1901, 1748857080, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1902, 1748856960, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1903, 1748856960, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1905, 1748857080, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1735.00, NULL),
(1906, 1748856960, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1735.00, NULL),
(1907, 1748856960, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1735.00, NULL),
(1909, 1748858040, 60, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'count', 1.00, NULL),
(1910, 1748858040, 360, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'count', 1.00, NULL),
(1911, 1748856960, 1440, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'count', 1.00, NULL),
(1912, 1748849760, 10080, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'count', 1.00, NULL),
(1913, 1748858040, 60, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'max', 1748858095.00, NULL),
(1914, 1748858040, 360, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'max', 1748858095.00, NULL),
(1915, 1748856960, 1440, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'max', 1748858095.00, NULL),
(1916, 1748849760, 10080, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 'max', 1748858095.00, NULL),
(1917, 1748858220, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'count', 1.00, NULL),
(1918, 1748858040, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'count', 1.00, NULL),
(1919, 1748856960, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'count', 1.00, NULL),
(1920, 1748849760, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'count', 1.00, NULL),
(1921, 1748858220, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'max', 1748858232.00, NULL),
(1922, 1748858040, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'max', 1748858232.00, NULL),
(1923, 1748856960, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'max', 1748858232.00, NULL),
(1924, 1748849760, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 'max', 1748858232.00, NULL),
(1925, 1748859060, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1926, 1748858760, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1927, 1748858400, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 3.00, NULL),
(1929, 1748859060, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1033.00, NULL),
(1930, 1748858760, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1033.00, NULL),
(1931, 1748858400, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1158.00, NULL),
(1933, 1748859120, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1934, 1748859120, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1935, 1748858400, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 4.00, NULL),
(1937, 1748859120, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1626.00, NULL),
(1938, 1748859120, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2106.00, NULL),
(1939, 1748858400, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2106.00, NULL),
(1941, 1748859360, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1942, 1748859120, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1945, 1748859360, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1048.00, NULL),
(1946, 1748859120, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1048.00, NULL),
(1949, 1748859360, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1953, 1748859360, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 2106.00, NULL),
(1957, 1748859540, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1958, 1748859480, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1959, 1748858400, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1960, 1748849760, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(1961, 1748859540, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1962, 1748859480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1963, 1748858400, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1964, 1748849760, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(1969, 1748859540, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1970, 1748859480, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1973, 1748859540, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1158.00, NULL),
(1974, 1748859480, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1158.00, NULL),
(1977, 1748859540, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1978, 1748859480, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(1981, 1748859540, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1599.00, NULL),
(1982, 1748859480, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1606.00, NULL),
(1985, 1748859660, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(1989, 1748859660, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1606.00, NULL),
(1993, 1748859900, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(1994, 1748859840, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 3.00, NULL),
(1995, 1748859840, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 9.00, NULL),
(1996, 1748859840, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 9.00, NULL),
(1997, 1748859900, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1181.00, NULL),
(1998, 1748859840, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1181.00, NULL),
(1999, 1748859840, 1440, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1181.00, NULL),
(2000, 1748859840, 10080, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1181.00, NULL),
(2001, 1748859960, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(2002, 1748859840, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(2003, 1748859840, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 11.00, NULL),
(2004, 1748859840, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 11.00, NULL),
(2005, 1748859960, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1580.00, NULL),
(2006, 1748859840, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1973.00, NULL),
(2007, 1748859840, 1440, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1973.00, NULL),
(2008, 1748859840, 10080, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1973.00, NULL),
(2009, 1748859960, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(2013, 1748859960, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1018.00, NULL),
(2017, 1748860020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(2018, 1748860020, 60, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(2019, 1748859840, 360, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(2020, 1748859840, 1440, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(2021, 1748859840, 10080, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'count', 2.00, NULL),
(2025, 1748860020, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1973.00, NULL),
(2026, 1748860020, 60, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748860067.00, NULL),
(2027, 1748859840, 360, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748860067.00, NULL),
(2028, 1748859840, 1440, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748860067.00, NULL),
(2029, 1748859840, 10080, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 'max', 1748860067.00, NULL),
(2033, 1748860020, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(2037, 1748860020, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1007.00, NULL),
(2057, 1748860680, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(2058, 1748860560, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 3.00, NULL),
(2061, 1748860680, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1513.00, NULL),
(2062, 1748860560, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1628.00, NULL),
(2065, 1748860740, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(2066, 1748860560, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 2.00, NULL),
(2069, 1748860740, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1028.00, NULL),
(2070, 1748860560, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1049.00, NULL),
(2073, 1748860740, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(2077, 1748860740, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1611.00, NULL),
(2081, 1748860860, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(2085, 1748860860, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1049.00, NULL),
(2089, 1748860860, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(2093, 1748860860, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1628.00, NULL),
(2097, 1748860980, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 2.00, NULL),
(2098, 1748860920, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 4.00, NULL),
(2101, 1748860980, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1033.00, NULL),
(2102, 1748860920, 360, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1112.00, NULL),
(2105, 1748860980, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(2106, 1748860920, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 5.00, NULL),
(2109, 1748860980, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1566.00, NULL),
(2110, 1748860920, 360, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1655.00, NULL),
(2129, 1748861040, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 2.00, NULL),
(2133, 1748861040, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1620.00, NULL),
(2137, 1748861040, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(2141, 1748861040, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1087.00, NULL),
(2153, 1748861100, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'count', 1.00, NULL),
(2157, 1748861100, 60, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 'max', 1112.00, NULL),
(2161, 1748861100, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'count', 1.00, NULL),
(2165, 1748861100, 60, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 'max', 1655.00, NULL),
(2169, 1748862420, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 1.00, NULL),
(2170, 1748862360, 360, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 1.00, NULL),
(2171, 1748861280, 1440, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 1.00, NULL),
(2172, 1748859840, 10080, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 6.00, NULL),
(2173, 1748862420, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'count', 1.00, NULL),
(2174, 1748862360, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'count', 1.00, NULL),
(2175, 1748861280, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'count', 1.00, NULL),
(2176, 1748859840, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'count', 1.00, NULL),
(2177, 1748862420, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1346.00, NULL),
(2178, 1748862360, 360, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1346.00, NULL),
(2179, 1748861280, 1440, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1346.00, NULL),
(2180, 1748859840, 10080, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1469.00, NULL),
(2181, 1748862420, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'max', 1748862464.00, NULL),
(2182, 1748862360, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'max', 1748862464.00, NULL),
(2183, 1748861280, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'max', 1748862464.00, NULL),
(2184, 1748859840, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 'max', 1748862464.00, NULL),
(2185, 1748863500, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 2.00, NULL),
(2186, 1748863440, 360, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 4.00, NULL),
(2187, 1748862720, 1440, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 5.00, NULL),
(2188, 1748863500, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'count', 1.00, NULL),
(2189, 1748863440, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'count', 1.00, NULL),
(2190, 1748862720, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'count', 1.00, NULL),
(2191, 1748859840, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'count', 1.00, NULL),
(2193, 1748863500, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1469.00, NULL),
(2194, 1748863440, 360, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1469.00, NULL),
(2195, 1748862720, 1440, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1469.00, NULL),
(2196, 1748863500, 60, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'max', 1748863513.00, NULL),
(2197, 1748863440, 360, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'max', 1748863513.00, NULL),
(2198, 1748862720, 1440, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'max', 1748863513.00, NULL),
(2199, 1748859840, 10080, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 'max', 1748863513.00, NULL),
(2209, 1748863560, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 2.00, NULL),
(2213, 1748863560, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1166.00, NULL),
(2225, 1748863800, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 1.00, NULL),
(2226, 1748863800, 360, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'count', 1.00, NULL),
(2229, 1748863800, 60, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1227.00, NULL),
(2230, 1748863800, 360, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 'max', 1227.00, NULL),
(2233, 1748917980, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2234, 1748917800, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2235, 1748917440, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2236, 1748910240, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'count', 1.00, NULL),
(2237, 1748917980, 60, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1388.00, NULL),
(2238, 1748917800, 360, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1388.00, NULL),
(2239, 1748917440, 1440, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1388.00, NULL),
(2240, 1748910240, 10080, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 'max', 1388.00, NULL),
(2241, 1748919420, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2242, 1748919240, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2243, 1748918880, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2244, 1748910240, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2245, 1748919420, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2246, 1748919240, 360, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2247, 1748918880, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2248, 1748910240, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL);
INSERT INTO `pulse_aggregates` (`id`, `bucket`, `period`, `type`, `key`, `aggregate`, `value`, `count`) VALUES
(2253, 1748921760, 60, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'count', 1.00, NULL),
(2254, 1748921760, 360, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'count', 1.00, NULL),
(2255, 1748921760, 1440, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'count', 1.00, NULL),
(2256, 1748920320, 10080, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'count', 1.00, NULL),
(2257, 1748921760, 60, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'max', 1748921802.00, NULL),
(2258, 1748921760, 360, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'max', 1748921802.00, NULL),
(2259, 1748921760, 1440, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'max', 1748921802.00, NULL),
(2260, 1748920320, 10080, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 'max', 1748921802.00, NULL),
(2261, 1748931480, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2262, 1748931480, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2263, 1748930400, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2264, 1748930400, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2265, 1748931480, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2266, 1748931480, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2267, 1748930400, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2268, 1748930400, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2273, 1748931660, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2281, 1748931660, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2282, 1748931480, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2283, 1748930400, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2284, 1748930400, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2289, 1748931660, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2018.00, NULL),
(2290, 1748931480, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2018.00, NULL),
(2291, 1748930400, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2018.00, NULL),
(2292, 1748930400, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2018.00, NULL),
(2297, 1748943780, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2298, 1748943720, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2299, 1748943360, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2300, 1748940480, 10080, 'cache_miss', 'spatie.permission.cache', 'count', 2.00, NULL),
(2301, 1748943780, 60, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2302, 1748943720, 360, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(2303, 1748943360, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 14.00, NULL),
(2304, 1748940480, 10080, 'cache_hit', 'spatie.permission.cache', 'count', 27.00, NULL),
(2317, 1748943780, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2318, 1748943720, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 3.00, NULL),
(2319, 1748943360, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 3.00, NULL),
(2320, 1748940480, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 3.00, NULL),
(2325, 1748943780, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2391.00, NULL),
(2326, 1748943720, 360, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2524.00, NULL),
(2327, 1748943360, 1440, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2524.00, NULL),
(2328, 1748940480, 10080, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2524.00, NULL),
(2333, 1748943900, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2341, 1748943900, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2349, 1748943900, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2524.00, NULL),
(2357, 1748943960, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2365, 1748943960, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'count', 1.00, NULL),
(2373, 1748943960, 60, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 'max', 2063.00, NULL),
(2381, 1748945520, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL),
(2382, 1748945520, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2383, 1748944800, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 7.00, NULL),
(2397, 1748945580, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2405, 1748945880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2406, 1748945880, 360, 'cache_hit', 'spatie.permission.cache', 'count', 1.00, NULL),
(2409, 1748948760, 60, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2410, 1748948760, 360, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2411, 1748947680, 1440, 'cache_miss', 'spatie.permission.cache', 'count', 1.00, NULL),
(2413, 1748948760, 60, 'cache_hit', 'spatie.permission.cache', 'count', 2.00, NULL),
(2414, 1748948760, 360, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2415, 1748947680, 1440, 'cache_hit', 'spatie.permission.cache', 'count', 6.00, NULL),
(2421, 1748948880, 60, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'count', 1.00, NULL),
(2422, 1748948760, 360, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'count', 1.00, NULL),
(2423, 1748947680, 1440, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'count', 1.00, NULL),
(2424, 1748940480, 10080, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'count', 1.00, NULL),
(2425, 1748948880, 60, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'max', 2535.00, NULL),
(2426, 1748948760, 360, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'max', 2535.00, NULL),
(2427, 1748947680, 1440, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'max', 2535.00, NULL),
(2428, 1748940480, 10080, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 'max', 2535.00, NULL),
(2429, 1748948880, 60, 'cache_hit', 'spatie.permission.cache', 'count', 4.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_entries`
--

CREATE TABLE `pulse_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulse_entries`
--

INSERT INTO `pulse_entries` (`id`, `timestamp`, `type`, `key`, `value`) VALUES
(1, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(2, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(3, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(4, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(5, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(6, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(7, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(8, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(9, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(10, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(11, 1748338689, 'cache_miss', 'spatie.permission.cache', NULL),
(12, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(13, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(14, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(15, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(16, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(17, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(18, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(19, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(20, 1748338690, 'cache_miss', 'spatie.permission.cache', NULL),
(21, 1748338690, 'exception', '[\"Spatie\\\\Permission\\\\Exceptions\\\\PermissionAlreadyExists\",\"database\\\\seeders\\\\Admin\\\\PermissionSeeder.php:44\"]', 1748338690),
(22, 1748340707, 'cache_miss', 'spatie.permission.cache', NULL),
(23, 1748340710, 'cache_hit', 'spatie.permission.cache', NULL),
(24, 1748340713, 'cache_hit', 'spatie.permission.cache', NULL),
(25, 1748398967, 'slow_request', '[\"GET\",\"\\/admin\\/user\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\User\\\\UserController@index\"]', 1554),
(26, 1748399173, 'cache_miss', 'spatie.permission.cache', NULL),
(27, 1748401104, 'cache_hit', 'spatie.permission.cache', NULL),
(28, 1748401115, 'cache_hit', 'spatie.permission.cache', NULL),
(29, 1748401171, 'cache_hit', 'spatie.permission.cache', NULL),
(30, 1748401253, 'cache_hit', 'spatie.permission.cache', NULL),
(31, 1748401267, 'cache_hit', 'spatie.permission.cache', NULL),
(32, 1748401271, 'cache_hit', 'spatie.permission.cache', NULL),
(33, 1748401282, 'cache_hit', 'spatie.permission.cache', NULL),
(34, 1748401285, 'cache_hit', 'spatie.permission.cache', NULL),
(35, 1748401347, 'cache_hit', 'spatie.permission.cache', NULL),
(36, 1748405351, 'cache_miss', 'spatie.permission.cache', NULL),
(37, 1748405354, 'cache_hit', 'spatie.permission.cache', NULL),
(38, 1748405354, 'cache_hit', 'spatie.permission.cache', NULL),
(39, 1748405357, 'cache_hit', 'spatie.permission.cache', NULL),
(40, 1748405357, 'cache_hit', 'spatie.permission.cache', NULL),
(41, 1748405379, 'cache_hit', 'spatie.permission.cache', NULL),
(42, 1748405379, 'cache_hit', 'spatie.permission.cache', NULL),
(43, 1748405410, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2171),
(44, 1748405410, 'cache_hit', 'spatie.permission.cache', NULL),
(45, 1748405412, 'cache_hit', 'spatie.permission.cache', NULL),
(46, 1748405419, 'cache_hit', 'spatie.permission.cache', NULL),
(47, 1748405584, 'cache_hit', 'spatie.permission.cache', NULL),
(48, 1748405649, 'cache_hit', 'spatie.permission.cache', NULL),
(49, 1748405658, 'cache_hit', 'spatie.permission.cache', NULL),
(50, 1748405700, 'cache_hit', 'spatie.permission.cache', NULL),
(51, 1748405761, 'cache_hit', 'spatie.permission.cache', NULL),
(52, 1748405778, 'cache_hit', 'spatie.permission.cache', NULL),
(53, 1748405945, 'cache_hit', 'spatie.permission.cache', NULL),
(54, 1748406137, 'cache_hit', 'spatie.permission.cache', NULL),
(55, 1748406139, 'cache_hit', 'spatie.permission.cache', NULL),
(56, 1748406145, 'cache_hit', 'spatie.permission.cache', NULL),
(57, 1748406163, 'cache_hit', 'spatie.permission.cache', NULL),
(58, 1748406315, 'cache_hit', 'spatie.permission.cache', NULL),
(59, 1748406607, 'cache_hit', 'spatie.permission.cache', NULL),
(60, 1748406611, 'cache_hit', 'spatie.permission.cache', NULL),
(61, 1748406611, 'exception', '[\"TypeError\",\"app\\\\Models\\\\Admin\\\\Language.php:33\"]', 1748406611),
(62, 1748406631, 'cache_hit', 'spatie.permission.cache', NULL),
(63, 1748406639, 'cache_hit', 'spatie.permission.cache', NULL),
(64, 1748406643, 'cache_hit', 'spatie.permission.cache', NULL),
(65, 1748406710, 'cache_hit', 'spatie.permission.cache', NULL),
(66, 1748406722, 'cache_hit', 'spatie.permission.cache', NULL),
(67, 1748406729, 'cache_hit', 'spatie.permission.cache', NULL),
(68, 1748406861, 'cache_hit', 'spatie.permission.cache', NULL),
(69, 1748406969, 'cache_hit', 'spatie.permission.cache', NULL),
(70, 1748406971, 'cache_hit', 'spatie.permission.cache', NULL),
(71, 1748407123, 'cache_hit', 'spatie.permission.cache', NULL),
(72, 1748407123, 'exception', '[\"Symfony\\\\Component\\\\Routing\\\\Exception\\\\RouteNotFoundException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Routing\\\\UrlGenerator.php:526\"]', 1748407123),
(73, 1748407284, 'cache_hit', 'spatie.permission.cache', NULL),
(74, 1748407384, 'cache_hit', 'spatie.permission.cache', NULL),
(75, 1748407391, 'cache_hit', 'spatie.permission.cache', NULL),
(76, 1748407397, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1983),
(77, 1748407409, 'cache_hit', 'spatie.permission.cache', NULL),
(78, 1748407414, 'cache_hit', 'spatie.permission.cache', NULL),
(79, 1748407502, 'cache_hit', 'spatie.permission.cache', NULL),
(80, 1748407504, 'cache_hit', 'spatie.permission.cache', NULL),
(81, 1748407515, 'cache_hit', 'spatie.permission.cache', NULL),
(82, 1748407517, 'cache_hit', 'spatie.permission.cache', NULL),
(83, 1748407522, 'cache_hit', 'spatie.permission.cache', NULL),
(84, 1748407536, 'cache_hit', 'spatie.permission.cache', NULL),
(85, 1748407544, 'cache_hit', 'spatie.permission.cache', NULL),
(86, 1748407546, 'cache_hit', 'spatie.permission.cache', NULL),
(87, 1748407550, 'cache_hit', 'spatie.permission.cache', NULL),
(88, 1748407553, 'cache_hit', 'spatie.permission.cache', NULL),
(89, 1748407560, 'cache_hit', 'spatie.permission.cache', NULL),
(90, 1748407564, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 1067),
(91, 1748407564, 'cache_hit', 'spatie.permission.cache', NULL),
(92, 1748407568, 'cache_hit', 'spatie.permission.cache', NULL),
(93, 1748407568, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1003),
(94, 1748407572, 'cache_hit', 'spatie.permission.cache', NULL),
(95, 1748407572, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1031),
(96, 1748407575, 'cache_hit', 'spatie.permission.cache', NULL),
(97, 1748407579, 'cache_hit', 'spatie.permission.cache', NULL),
(98, 1748407592, 'cache_hit', 'spatie.permission.cache', NULL),
(99, 1748407596, 'cache_hit', 'spatie.permission.cache', NULL),
(100, 1748407597, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1586),
(101, 1748407600, 'cache_hit', 'spatie.permission.cache', NULL),
(102, 1748407600, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 2908),
(103, 1748407607, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 3323),
(104, 1748407607, 'cache_hit', 'spatie.permission.cache', NULL),
(105, 1748407615, 'cache_hit', 'spatie.permission.cache', NULL),
(106, 1748407617, 'cache_hit', 'spatie.permission.cache', NULL),
(107, 1748407615, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 2003),
(108, 1748407617, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1153),
(109, 1748407621, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 2661),
(110, 1748407621, 'cache_hit', 'spatie.permission.cache', NULL),
(111, 1748407627, 'cache_hit', 'spatie.permission.cache', NULL),
(112, 1748407627, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1569),
(113, 1748407631, 'slow_request', '[\"PUT\",\"\\/admin\\/language\\/{language}\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\LanguageController@update\"]', 2653),
(114, 1748407631, 'cache_hit', 'spatie.permission.cache', NULL),
(115, 1748407636, 'cache_hit', 'spatie.permission.cache', NULL),
(116, 1748407637, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1179),
(117, 1748407640, 'cache_hit', 'spatie.permission.cache', NULL),
(118, 1748407640, 'cache_hit', 'spatie.permission.cache', NULL),
(119, 1748407641, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1036),
(120, 1748407649, 'cache_hit', 'spatie.permission.cache', NULL),
(121, 1748407649, 'cache_hit', 'spatie.permission.cache', NULL),
(122, 1748407650, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1639),
(123, 1748407654, 'cache_hit', 'spatie.permission.cache', NULL),
(124, 1748407657, 'cache_hit', 'spatie.permission.cache', NULL),
(125, 1748407657, 'cache_hit', 'spatie.permission.cache', NULL),
(126, 1748407661, 'cache_hit', 'spatie.permission.cache', NULL),
(127, 1748407662, 'cache_hit', 'spatie.permission.cache', NULL),
(128, 1748407664, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2121),
(129, 1748407665, 'cache_hit', 'spatie.permission.cache', NULL),
(130, 1748407671, 'cache_hit', 'spatie.permission.cache', NULL),
(131, 1748407685, 'cache_hit', 'spatie.permission.cache', NULL),
(132, 1748407685, 'cache_hit', 'spatie.permission.cache', NULL),
(133, 1748407689, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 1841),
(134, 1748407689, 'cache_hit', 'spatie.permission.cache', NULL),
(135, 1748407699, 'cache_hit', 'spatie.permission.cache', NULL),
(136, 1748407702, 'cache_hit', 'spatie.permission.cache', NULL),
(137, 1748407947, 'cache_hit', 'spatie.permission.cache', NULL),
(138, 1748407948, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1510),
(139, 1748407971, 'cache_hit', 'spatie.permission.cache', NULL),
(140, 1748407976, 'cache_hit', 'spatie.permission.cache', NULL),
(141, 1748407976, 'cache_hit', 'spatie.permission.cache', NULL),
(142, 1748408035, 'cache_hit', 'spatie.permission.cache', NULL),
(143, 1748408036, 'cache_hit', 'spatie.permission.cache', NULL),
(144, 1748408038, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2312),
(145, 1748408039, 'cache_hit', 'spatie.permission.cache', NULL),
(146, 1748408041, 'cache_hit', 'spatie.permission.cache', NULL),
(147, 1748408045, 'cache_hit', 'spatie.permission.cache', NULL),
(148, 1748408057, 'cache_hit', 'spatie.permission.cache', NULL),
(149, 1748408089, 'cache_hit', 'spatie.permission.cache', NULL),
(150, 1748408096, 'cache_hit', 'spatie.permission.cache', NULL),
(151, 1748408108, 'cache_hit', 'spatie.permission.cache', NULL),
(152, 1748408118, 'cache_hit', 'spatie.permission.cache', NULL),
(153, 1748408124, 'cache_hit', 'spatie.permission.cache', NULL),
(154, 1748408124, 'cache_hit', 'spatie.permission.cache', NULL),
(155, 1748408182, 'cache_hit', 'spatie.permission.cache', NULL),
(156, 1748408189, 'cache_hit', 'spatie.permission.cache', NULL),
(157, 1748408202, 'cache_hit', 'spatie.permission.cache', NULL),
(158, 1748408206, 'cache_hit', 'spatie.permission.cache', NULL),
(159, 1748408216, 'cache_hit', 'spatie.permission.cache', NULL),
(160, 1748413339, 'cache_miss', 'spatie.permission.cache', NULL),
(161, 1748413345, 'cache_hit', 'spatie.permission.cache', NULL),
(162, 1748413677, 'cache_hit', 'spatie.permission.cache', NULL),
(163, 1748413818, 'cache_hit', 'spatie.permission.cache', NULL),
(164, 1748413836, 'cache_hit', 'spatie.permission.cache', NULL),
(165, 1748413915, 'cache_hit', 'spatie.permission.cache', NULL),
(166, 1748413921, 'cache_hit', 'spatie.permission.cache', NULL),
(167, 1748413922, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1246),
(168, 1748413956, 'cache_hit', 'spatie.permission.cache', NULL),
(169, 1748414641, 'cache_hit', 'spatie.permission.cache', NULL),
(170, 1748414648, 'cache_hit', 'spatie.permission.cache', NULL),
(171, 1748414655, 'cache_hit', 'spatie.permission.cache', NULL),
(172, 1748414671, 'cache_hit', 'spatie.permission.cache', NULL),
(173, 1748416893, 'cache_hit', 'spatie.permission.cache', NULL),
(174, 1748416896, 'cache_hit', 'spatie.permission.cache', NULL),
(175, 1748416897, 'cache_hit', 'spatie.permission.cache', NULL),
(176, 1748417023, 'cache_miss', 'spatie.permission.cache', NULL),
(177, 1748417030, 'cache_hit', 'spatie.permission.cache', NULL),
(178, 1748417033, 'cache_hit', 'spatie.permission.cache', NULL),
(179, 1748417086, 'cache_hit', 'spatie.permission.cache', NULL),
(180, 1748417123, 'cache_hit', 'spatie.permission.cache', NULL),
(181, 1748417125, 'cache_hit', 'spatie.permission.cache', NULL),
(182, 1748417125, 'cache_hit', 'spatie.permission.cache', NULL),
(183, 1748417127, 'cache_hit', 'spatie.permission.cache', NULL),
(184, 1748417127, 'slow_request', '[\"GET\",\"\\/admin\\/translate-string\",\"Closure\"]', 1348),
(185, 1748417940, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php:822\"]', 1748417940),
(186, 1748418718, 'cache_hit', 'spatie.permission.cache', NULL),
(187, 1748418720, 'cache_hit', 'spatie.permission.cache', NULL),
(188, 1748418720, 'cache_hit', 'spatie.permission.cache', NULL),
(189, 1748700867, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 4239),
(190, 1748700872, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/stylesheets\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@css\"]', 1193),
(191, 1748700872, 'slow_request', '[\"GET\",\"\\/_debugbar\\/assets\\/javascript\",\"Barryvdh\\\\Debugbar\\\\Controllers\\\\AssetController@js\"]', 1197),
(192, 1748745194, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 1314),
(193, 1748746159, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 3220),
(194, 1748746796, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 3563),
(195, 1748746799, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:42\"]', 1748746799),
(196, 1748746832, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 2339),
(197, 1748746834, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:43\"]', 1748746834),
(198, 1748749769, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 1748749769),
(199, 1748752666, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 1009),
(200, 1748752666, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 1748752666),
(201, 1748752688, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 1015),
(202, 1748752689, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 1748752689),
(203, 1748752704, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 2016),
(204, 1748752706, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 1748752706),
(205, 1748753247, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 1029),
(206, 1748753458, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1383),
(207, 1748753459, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 1748753459),
(208, 1748753495, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1409),
(209, 1748753496, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 1748753496),
(210, 1748753527, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1473),
(211, 1748753528, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:44\"]', 1748753528),
(212, 1748753761, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1359),
(213, 1748753762, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 1748753762),
(214, 1748753799, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1800),
(215, 1748753801, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 1748753801),
(216, 1748753864, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1350),
(217, 1748753865, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:45\"]', 1748753865),
(218, 1748753934, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 1050),
(219, 1748753935, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 1748753935),
(220, 1748753952, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckout\"]', 1029),
(221, 1748753953, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:16\"]', 1748753953),
(222, 1748754683, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1705),
(223, 1748754684, 'exception', '[\"Stripe\\\\Exception\\\\AuthenticationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 1748754684),
(224, 1748754736, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1042),
(225, 1748754737, 'exception', '[\"Error\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 1748754737),
(226, 1748754761, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1438),
(227, 1748754762, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 1748754762),
(228, 1748754825, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1333),
(229, 1748754826, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 1748754826),
(230, 1748755027, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1387),
(231, 1748755028, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:47\"]', 1748755028),
(232, 1748755067, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1347),
(233, 1748755068, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 1748755068),
(234, 1748755274, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 3548),
(235, 1748755419, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 1748755419),
(236, 1748755419, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:70\"]', 1748755419),
(237, 1748756408, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 1748756408),
(238, 1748756790, 'exception', '[\"Stripe\\\\Exception\\\\InvalidArgumentException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:15\"]', 1748756790),
(239, 1748757500, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 1748757500),
(240, 1748757513, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 1748757513),
(241, 1748757541, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 1748757541),
(242, 1748757585, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:14\"]', 1748757585),
(243, 1748757995, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 3280),
(244, 1748764403, 'cache_miss', 'spatie.permission.cache', NULL),
(245, 1748764404, 'cache_hit', 'spatie.permission.cache', NULL),
(246, 1748764405, 'cache_hit', 'spatie.permission.cache', NULL),
(247, 1748831848, 'slow_request', '[\"GET\",\"\\/admin\\/backend\\/language\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@index\"]', 1336),
(248, 1748833974, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1416),
(249, 1748833974, 'exception', '[\"BadMethodCallException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:19\"]', 1748833974),
(250, 1748837332, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1884),
(251, 1748838101, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 4359),
(252, 1748838425, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1052),
(253, 1748838437, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1493),
(254, 1748838484, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1908),
(255, 1748843252, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1118),
(256, 1748843253, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 1748843253),
(257, 1748843265, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1098),
(258, 1748843266, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 1748843266),
(259, 1748843351, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1021),
(260, 1748843352, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 1748843352),
(261, 1748843402, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1076),
(262, 1748843402, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 1748843402),
(263, 1748843420, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1071),
(264, 1748843421, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 1748843421),
(265, 1748843432, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1065),
(266, 1748843433, 'exception', '[\"Stripe\\\\Exception\\\\InvalidRequestException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:52\"]', 1748843433),
(267, 1748845448, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1124),
(268, 1748845531, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 1748845531),
(269, 1748845531, 'exception', '[\"Symfony\\\\Component\\\\Console\\\\Exception\\\\NamespaceNotFoundException\",\"vendor\\\\symfony\\\\console\\\\Application.php:659\"]', 1748845531),
(270, 1748846396, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 1748846396),
(271, 1748846396, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"database\\\\migrations\\\\2025_06_02_114125_create_stripe_payments_table.php:14\"]', 1748846396),
(272, 1748846501, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1358),
(273, 1748846502, 'exception', '[\"Illuminate\\\\Database\\\\QueryException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:97\"]', 1748846502),
(274, 1748846566, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1047),
(275, 1748848071, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1707),
(276, 1748848111, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 1748848111),
(277, 1748848112, 'exception', '[\"ParseError\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:53\"]', 1748848112),
(278, 1748848119, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1634),
(279, 1748848151, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1644),
(280, 1748848283, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1713),
(281, 1748848361, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1732),
(282, 1748848508, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1789),
(283, 1748849479, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1703),
(284, 1748849549, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1684),
(285, 1748853720, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 3314),
(286, 1748853854, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 2706),
(287, 1748853856, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 1748853856),
(288, 1748853878, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1993),
(289, 1748853880, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 1748853880),
(290, 1748853902, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1893),
(291, 1748853903, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 1748853903),
(292, 1748853916, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 2077),
(293, 1748853918, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 1748853918),
(294, 1748853935, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1932),
(295, 1748853937, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\pdf\\\\stripe_payment_invoice.blade.php:101\"]', 1748853937),
(296, 1748854033, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1721),
(297, 1748854218, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1756),
(298, 1748854273, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1752),
(299, 1748854289, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1689),
(300, 1748854327, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1605),
(301, 1748854376, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1722),
(302, 1748854402, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1770),
(303, 1748854420, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1632),
(304, 1748854586, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1775),
(305, 1748854629, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1807),
(306, 1748854744, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1656),
(307, 1748854852, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1789),
(308, 1748854879, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1791),
(309, 1748855505, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1689),
(310, 1748855529, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1746),
(311, 1748855581, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1787),
(312, 1748855617, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1681),
(313, 1748855677, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1689),
(314, 1748855732, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1704),
(315, 1748855861, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1704),
(316, 1748855949, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1713),
(317, 1748855970, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1678),
(318, 1748855993, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1666),
(319, 1748856042, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1655),
(320, 1748856186, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1753),
(321, 1748856239, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1294),
(322, 1748856253, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1593),
(323, 1748856274, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 1748856274),
(324, 1748856478, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 1748856478),
(325, 1748856485, 'exception', '[\"ErrorException\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:56\"]', 1748856485),
(326, 1748856540, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1091),
(327, 1748856556, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1558),
(328, 1748856703, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1119),
(329, 1748856719, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1709),
(330, 1748856960, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 1748856960),
(331, 1748856998, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 1748856998),
(332, 1748857023, 'exception', '[\"ParseError\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:57\"]', 1748857023),
(333, 1748857079, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1128),
(334, 1748857095, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1735),
(335, 1748858095, 'exception', '[\"Error\",\"resources\\\\views\\\\frontend\\\\blade\\\\donation\\\\index.blade.php:187\"]', 1748858095),
(336, 1748858232, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController.php:115\"]', 1748858232),
(337, 1748859109, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1033),
(338, 1748859125, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1626),
(339, 1748859376, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1048),
(340, 1748859392, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 2106),
(341, 1748859545, 'cache_miss', 'spatie.permission.cache', NULL),
(342, 1748859547, 'cache_hit', 'spatie.permission.cache', NULL),
(343, 1748859547, 'cache_hit', 'spatie.permission.cache', NULL),
(344, 1748859566, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1158),
(345, 1748859589, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1599),
(346, 1748859705, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1606),
(347, 1748859948, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1181),
(348, 1748859961, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1580),
(349, 1748859997, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1018),
(350, 1748860027, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1973),
(351, 1748860029, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 1748860029),
(352, 1748860053, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1007),
(353, 1748860066, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1909),
(354, 1748860067, 'exception', '[\"Illuminate\\\\Database\\\\UniqueConstraintViolationException\",\"app\\\\Http\\\\Controllers\\\\Payment\\\\StripeController.php:49\"]', 1748860067),
(355, 1748860701, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1513),
(356, 1748860778, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1028),
(357, 1748860791, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1611),
(358, 1748860897, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1049),
(359, 1748860909, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1628),
(360, 1748860996, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1007),
(361, 1748861008, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1564),
(362, 1748861021, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1566),
(363, 1748861033, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1033),
(364, 1748861041, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1620),
(365, 1748861060, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1087),
(366, 1748861073, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1595),
(367, 1748861134, 'slow_request', '[\"POST\",\"\\/donation\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\DonationController@store\"]', 1112),
(368, 1748861147, 'slow_request', '[\"GET\",\"\\/stripe\\/checkout\\/success\",\"App\\\\Http\\\\Controllers\\\\Payment\\\\StripeController@stripeCheckoutSuccess\"]', 1655),
(369, 1748862463, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 1346),
(370, 1748862464, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:13\"]', 1748862464),
(371, 1748863511, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 1469),
(372, 1748863513, 'exception', '[\"ErrorException\",\"app\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController.php:26\"]', 1748863513),
(373, 1748863537, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 1159),
(374, 1748863561, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 1166),
(375, 1748863603, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 1133),
(376, 1748863805, 'slow_request', '[\"GET\",\"\\/prayer-time\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\PrayerTimeController@prayerTimes\"]', 1227),
(377, 1748918032, 'slow_request', '[\"GET\",\"\\/\",\"Closure\"]', 1388),
(378, 1748919475, 'cache_miss', 'spatie.permission.cache', NULL),
(379, 1748919477, 'cache_hit', 'spatie.permission.cache', NULL),
(380, 1748919477, 'cache_hit', 'spatie.permission.cache', NULL),
(381, 1748921802, 'exception', '[\"TypeError\",\"vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\helpers.php:141\"]', 1748921802),
(382, 1748931510, 'cache_miss', 'spatie.permission.cache', NULL),
(383, 1748931512, 'cache_hit', 'spatie.permission.cache', NULL),
(384, 1748931512, 'cache_hit', 'spatie.permission.cache', NULL),
(385, 1748931710, 'cache_hit', 'spatie.permission.cache', NULL),
(386, 1748931710, 'cache_hit', 'spatie.permission.cache', NULL),
(387, 1748931712, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2018),
(388, 1748931712, 'cache_hit', 'spatie.permission.cache', NULL),
(389, 1748931714, 'cache_hit', 'spatie.permission.cache', NULL),
(390, 1748943781, 'cache_miss', 'spatie.permission.cache', NULL),
(391, 1748943783, 'cache_hit', 'spatie.permission.cache', NULL),
(392, 1748943783, 'cache_hit', 'spatie.permission.cache', NULL),
(393, 1748943817, 'cache_hit', 'spatie.permission.cache', NULL),
(394, 1748943817, 'cache_hit', 'spatie.permission.cache', NULL),
(395, 1748943819, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2391),
(396, 1748943819, 'cache_hit', 'spatie.permission.cache', NULL),
(397, 1748943822, 'cache_hit', 'spatie.permission.cache', NULL),
(398, 1748943937, 'cache_hit', 'spatie.permission.cache', NULL),
(399, 1748943937, 'cache_hit', 'spatie.permission.cache', NULL),
(400, 1748943939, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2524),
(401, 1748943940, 'cache_hit', 'spatie.permission.cache', NULL),
(402, 1748943942, 'cache_hit', 'spatie.permission.cache', NULL),
(403, 1748943966, 'cache_hit', 'spatie.permission.cache', NULL),
(404, 1748943966, 'cache_hit', 'spatie.permission.cache', NULL),
(405, 1748943968, 'slow_request', '[\"POST\",\"\\/admin\\/backend\\/language\\/store\\/translate\\/string\",\"App\\\\Http\\\\Controllers\\\\Admin\\\\Localization\\\\BackendLanguageController@storeTranslateString\"]', 2063),
(406, 1748943968, 'cache_hit', 'spatie.permission.cache', NULL),
(407, 1748943970, 'cache_hit', 'spatie.permission.cache', NULL),
(408, 1748945567, 'cache_hit', 'spatie.permission.cache', NULL),
(409, 1748945567, 'cache_hit', 'spatie.permission.cache', NULL),
(410, 1748945569, 'cache_hit', 'spatie.permission.cache', NULL),
(411, 1748945570, 'cache_hit', 'spatie.permission.cache', NULL),
(412, 1748945581, 'cache_hit', 'spatie.permission.cache', NULL),
(413, 1748945581, 'cache_hit', 'spatie.permission.cache', NULL),
(414, 1748945930, 'cache_hit', 'spatie.permission.cache', NULL),
(415, 1748948787, 'cache_miss', 'spatie.permission.cache', NULL),
(416, 1748948788, 'cache_hit', 'spatie.permission.cache', NULL),
(417, 1748948790, 'cache_hit', 'spatie.permission.cache', NULL),
(418, 1748948911, 'slow_request', '[\"GET\",\"\\/jummah\",\"App\\\\Http\\\\Controllers\\\\FrontEnd\\\\OtherPagesController@jummah\"]', 2535),
(419, 1748948919, 'cache_hit', 'spatie.permission.cache', NULL),
(420, 1748948919, 'cache_hit', 'spatie.permission.cache', NULL),
(421, 1748948934, 'cache_hit', 'spatie.permission.cache', NULL),
(422, 1748948934, 'cache_hit', 'spatie.permission.cache', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pulse_values`
--

CREATE TABLE `pulse_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` mediumtext NOT NULL,
  `key_hash` binary(16) GENERATED ALWAYS AS (unhex(md5(`key`))) VIRTUAL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2025-05-27 09:40:16', '2025-05-27 09:40:16'),
(2, 'Admin', 'admin', '2025-05-27 09:40:16', '2025-05-27 09:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `currency1` varchar(255) DEFAULT NULL,
  `currency2` varchar(255) DEFAULT NULL,
  `amount1` double NOT NULL DEFAULT 0,
  `amount2` double NOT NULL DEFAULT 0,
  `conversion_rate` double NOT NULL DEFAULT 0,
  `receipt_url` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `donation_id`, `session_id`, `payment_id`, `currency1`, `currency2`, `amount1`, `amount2`, `conversion_rate`, `receipt_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cs_test_a16N2jA8rEJqJhn7Fnu7JnXf2nCAuo6CAD7bZh5HUnmtfmX4FZmaKuSqMp', 'pi_3RVVmSCGywb2OcED0Vn542Y2', 'bdt', 'usd', 1271, 10, 127.1, 'https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVySThDR3l3YjJPY0VEKPj-9cEGMgY6yOb6ODg6LBY6_B19u-d92G-kCd9RnNTSaxF7ojskli0mV0TRCGgYYAsnzSsBgBWmh0Ko', 1, '2025-06-02 10:39:39', '2025-06-02 10:39:52'),
(2, 2, 'cs_test_a1Kvfmp7ow57fW4ns8HfaQYDY54qSTMQ1ceikrfmUwkfoDE4vuz3lEjFXD', 'pi_3RVVoMCGywb2OcED1qvE1M7l', 'bdt', 'usd', 1901.92, 15, 126.79466666667, 'https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVySThDR3l3YjJPY0VEKO7_9cEGMgZXB5oW3aw6LBZJMGU1PZ4fK60cEQPenxzFbESzeIgy9A2hXFajByZiX_nphFfwaPQyeBEU', 1, '2025-06-02 10:41:38', '2025-06-02 10:41:51'),
(3, 3, 'cs_test_a1qoPSELtG4ywPz43pxMNHJPkNNtckj8R9wHgvnrWHT3MJEH1ksphCP5QW', 'pi_3RVVpyCGywb2OcED0yCQSRcF', 'bdt', 'usd', 127.1, 1, 127.1, 'https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVySThDR3l3YjJPY0VEKN6A9sEGMgZqhE0FXMY6LBay7rmNJkL5PeR5VAaaPc07cEE6zMSrPAT1XyhyRQpP1sFC5rBFI1QetcNz', 1, '2025-06-02 10:43:17', '2025-06-02 10:43:42'),
(4, 4, 'cs_test_a1xOMFitVp37Scr2SpmY51I1eGtl1ELmClWEyRREYmBGzmGmn7cFsB5RgC', 'pi_3RVVqUCGywb2OcED1AcbbMPg', 'bdt', 'usd', 127.1, 1, 127.1, 'https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVySThDR3l3YjJPY0VEKPKA9sEGMgYIvpyxY0I6LBYAVrEDcL0mmya26G80Y5PDetJy237_0IWhSqHYyK9nuCAgHhY2yBxDQFgt', 1, '2025-06-02 10:43:54', '2025-06-02 10:44:02'),
(5, 5, 'cs_test_a1eJoXgmmOihb5TtxIvuaB9HxeLqXmFWsyOX0I9blg7pv2OH7j66sGjsZO', 'pi_3RVVr1CGywb2OcED1iZeujsd', 'bdt', 'usd', 15506.26, 122, 127.10049180328, 'https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVySThDR3l3YjJPY0VEKJOB9sEGMgayJ-kwFH06LBbFj6rA-1N4Q5-5ygeUO_c2yozqucntGpU7z3VPVgdHQemkhvSnW_KdK7T8', 1, '2025-06-02 10:44:21', '2025-06-02 10:44:35'),
(6, 6, 'cs_test_a11L9cSJLI81vdZQBc0Pm2KAYusZVRZqeL3DiJ1cpeD8t7XztWNVyL5l5U', 'pi_3RVVsDCGywb2OcED1d8GS0cd', 'bdt', 'usd', 19700.58, 155, 127.10051612903, 'https://pay.stripe.com/receipts/payment/CAcaFwoVYWNjdF8xUlVySThDR3l3YjJPY0VEKN2B9sEGMgbxGG80MoU6LBZSB6Ri6kJIgkep2tX7tbz3pU_g4J7ATR_dtck4i84qeQTbJvOJYYkDzvsS', 1, '2025-06-02 10:45:35', '2025-06-02 10:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin\\Language', 1, 'en', 'name', 'English', '2025-05-28 04:45:15', '2025-05-28 04:47:11'),
(2, 'App\\Models\\Admin\\Language', 2, 'en', 'name', 'Bangla', '2025-05-28 04:45:36', '2025-05-28 04:47:01'),
(3, 'App\\Models\\Admin\\Language', 1, 'bn', 'name', 'ইংরেজি', NULL, '2025-05-28 04:47:12'),
(4, 'App\\Models\\Admin\\Language', 2, 'bn', 'name', 'বাংলা', NULL, '2025-05-28 04:47:02'),
(5, 'App\\Models\\Admin\\Language', 3, 'en', 'name', 'Arabic', '2025-05-28 04:46:33', '2025-05-28 04:46:47'),
(6, 'App\\Models\\Admin\\Language', 3, 'bn', 'name', 'আরবি', '2025-05-28 04:46:33', '2025-05-28 04:46:48'),
(7, 'App\\Models\\Admin\\Language', 3, 'ar', 'name', 'عرف', NULL, '2025-05-28 04:46:50'),
(8, 'App\\Models\\Admin\\Language', 2, 'ar', 'name', 'بنغلا', NULL, '2025-05-28 04:47:03'),
(9, 'App\\Models\\Admin\\Language', 1, 'ar', 'name', 'إnجaliزy', NULL, '2025-05-28 04:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Inactive 1=Active',
  `delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Not Deleted 1=Deleted',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_countries`
--
ALTER TABLE `apps_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donations_receipt_id_unique` (`receipt_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenances_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prayer_times`
--
ALTER TABLE `prayer_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_aggregates_bucket_period_type_aggregate_key_hash_unique` (`bucket`,`period`,`type`,`aggregate`,`key_hash`),
  ADD KEY `pulse_aggregates_period_bucket_index` (`period`,`bucket`),
  ADD KEY `pulse_aggregates_type_index` (`type`),
  ADD KEY `pulse_aggregates_period_type_aggregate_bucket_index` (`period`,`type`,`aggregate`,`bucket`);

--
-- Indexes for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pulse_entries_timestamp_index` (`timestamp`),
  ADD KEY `pulse_entries_type_index` (`type`),
  ADD KEY `pulse_entries_key_hash_index` (`key_hash`),
  ADD KEY `pulse_entries_timestamp_type_key_hash_value_index` (`timestamp`,`type`,`key_hash`,`value`);

--
-- Indexes for table `pulse_values`
--
ALTER TABLE `pulse_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pulse_values_type_key_hash_unique` (`type`,`key_hash`),
  ADD KEY `pulse_values_timestamp_index` (`timestamp`),
  ADD KEY `pulse_values_type_index` (`type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stripe_payments_donation_id_foreign` (`donation_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps_countries`
--
ALTER TABLE `apps_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prayer_times`
--
ALTER TABLE `prayer_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pulse_aggregates`
--
ALTER TABLE `pulse_aggregates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2445;

--
-- AUTO_INCREMENT for table `pulse_entries`
--
ALTER TABLE `pulse_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `pulse_values`
--
ALTER TABLE `pulse_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD CONSTRAINT `maintenances_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD CONSTRAINT `stripe_payments_donation_id_foreign` FOREIGN KEY (`donation_id`) REFERENCES `donations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
