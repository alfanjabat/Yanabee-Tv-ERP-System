-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 01:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yanabee`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `unique_identifier` varchar(255) CHARACTER SET utf8 NOT NULL,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ms8vilvpjc4ng7ng72uo153cfstsi7p6', '::1', 1617828943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373832383934333b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('90pl0876tvo76lalbu7fvn00o3ejb910', '::1', 1617829879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373832393837393b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('402o5despfdlb1q19mmiu5v1om78nv10', '::1', 1617832128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373833323132383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('rtdp34mql7qscjdjih069v8kmacb1go5', '::1', 1617832128, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631373833323132383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('2ivu280bcdlhv0ijvittd1noemj1h3nk', '::1', 1618002038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383030323033383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('fvb1tuo8rpdpbsu4fiukc6p9p1fne9mk', '::1', 1618002360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383030323336303b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('13qiioo3f5s6d8bh90i4j60uuhskfi6l', '::1', 1618002821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383030323832313b),
('7marba1d3c33ie9i819veuedp13tum3n', '::1', 1618002821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383030323832313b),
('2m4ufeco8n6q7vem0qj36v5io2qpu1uh', '::1', 1618040079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383034303037393b),
('160pq31npu6gaemr4uq87gcc3nhlp7lt', '::1', 1618043006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383034333030363b),
('hnhek3g30puct6nofle96ivjhi7kpb33', '::1', 1618043007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383034333030363b),
('k8bplpla6pbvelprg04i8r0k7g6ch0rq', '::1', 1618064768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383036343736383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('ud76k1c7n9cjb7qlni9n1hq6ql17ba1b', '::1', 1618064070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383036343036343b6163746976655f7363686f6f6c5f69647c733a313a2231223b),
('hq16fbtjhvns3jctcbn5kt9gmn1tloq6', '::1', 1618064406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383036343430353b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('1htbu8mdgtu8l2id62gs40ogqsj955qh', '::1', 1618065108, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383036353130383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('d0o61nbmo4k3l2vbl2e5tscq1akevi9v', '::1', 1618065413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383036353431333b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('mge24gro8u7frebi8bk3ttiqju517fce', '::1', 1618065419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383036353431333b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('svbghu9nlf2bu4290m6la4r3otagmpt9', '::1', 1618089669, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383038393636393b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('ihppnisf1tpoa13rvtpdupra2i35uf93', '::1', 1618090015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039303031353b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('7jbu0mlfnrarj7jcu6rvev82krv985kk', '::1', 1618090351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039303335313b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('qrj0j3d8fsb7rjblp1gtcaahcic10rjo', '::1', 1618091436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039313433363b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('m1daojns1pl3haeqct638f75stdaacpa', '::1', 1618092383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039323338333b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('3ns7o52jpspnh6ah0b3gj6nj6hga1ugb', '::1', 1618094478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039343437383b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('mt4830uvoujunjdvftr06ru72mrv6ka8', '::1', 1618094854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039343835343b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('5vfgd94hrqgjapii0a80qp26cndds5hg', '::1', 1618095462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039353436323b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('3s2q1qa5mjq5djp3q326jdda8cvg1v5h', '::1', 1618096141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039363134313b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b),
('ilf1460sh6shrccgg3t50rhf6amfh1or', '::1', 1618096252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631383039363134313b757365725f6c6f67696e5f747970657c623a313b737570657261646d696e5f6c6f67696e7c623a313b757365725f69647c733a313a2231223b7363686f6f6c5f69647c733a313a2231223b757365725f6e616d657c733a31333a2241686d6564204d6f68616d6564223b757365725f747970657c733a31303a22737570657261646d696e223b);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `school_id`) VALUES
(1, 'الأول', 1),
(2, 'الثاني', 1),
(3, 'الثالث', 1),
(4, 'الرابع', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_settings`
--

CREATE TABLE `common_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `common_settings`
--

INSERT INTO `common_settings` (`id`, `type`, `description`) VALUES
(1, 'recaptcha_status', '0'),
(2, 'recaptcha_sitekey', 'enter-your-recaptcha-sitekey'),
(3, 'recaptcha_secretkey', 'enter-your-recaptcha-secretkey');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `paystack_supported` int(11) DEFAULT 0,
  `payumoney_supported` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `paystack_supported`, `payumoney_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1, 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1, 0, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1, 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1, 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1, 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1, 0, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1, 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1, 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1, 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0, 0, 1),
(11, 'Euro', 'EUR', '€', 1, 1, 0, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1, 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1, 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1, 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1, 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1, 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1, 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1, 0, 1),
(19, 'Pounds', 'GBP', '£', 1, 1, 0, 1),
(20, 'Dollars', 'BND', '$', 0, 1, 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1, 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1, 0, 1),
(23, 'Dollars', 'KYD', '$', 0, 1, 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1, 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1, 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1, 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1, 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1, 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0, 0, 1),
(30, 'Koruny', 'CZK', 'Kč', 1, 1, 0, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1, 0, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1, 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1, 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1, 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0, 0, 1),
(36, 'Pounds', 'FKP', '£', 0, 1, 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1, 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0, 0, 1),
(39, 'Pounds', 'GIP', '£', 0, 1, 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1, 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0, 0, 1),
(42, 'Dollars', 'GYD', '$', 0, 1, 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1, 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1, 0, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1, 0, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1, 0, 1),
(47, 'Rupees', 'INR', 'Rp', 1, 1, 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1, 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0, 0, 1),
(50, 'Pounds', 'IMP', '£', 0, 0, 0, 1),
(51, 'New Shekels', 'ILS', '₪', 1, 1, 0, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1, 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1, 0, 1),
(54, 'Pounds', 'JEP', '£', 0, 0, 0, 1),
(55, 'Tenge', 'KZT', 'лв', 0, 1, 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0, 0, 1),
(57, 'Won', 'KRW', '₩', 0, 1, 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1, 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1, 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0, 0, 1),
(61, 'Pounds', 'LBP', '£', 0, 1, 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1, 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1, 0, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0, 0, 1),
(65, 'Denars', 'MKD', 'ден', 0, 1, 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1, 0, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1, 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1, 0, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1, 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1, 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1, 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1, 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1, 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1, 0, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1, 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1, 1, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1, 0, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0, 0, 1),
(79, 'Rupees', 'PKR', '₨', 0, 1, 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1, 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1, 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1, 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1, 0, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1, 0, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1, 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1, 0, 1),
(87, 'Rubles', 'RUB', 'руб', 1, 1, 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1, 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1, 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1, 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1, 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1, 0, 1),
(93, 'Dollars', 'SBD', '$', 0, 1, 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1, 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1, 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1, 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1, 0, 1),
(98, 'Dollars', 'SRD', '$', 0, 1, 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0, 0, 1),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1, 0, 1),
(101, 'Baht', 'THB', '฿', 1, 1, 0, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1, 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1, 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0, 0, 1),
(105, 'Dollars', 'TVD', '$', 0, 0, 0, 1),
(106, 'Hryvnia', 'UAH', '₴', 0, 1, 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1, 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1, 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0, 0, 1),
(110, 'Dong', 'VND', '₫', 0, 1, 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1, 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

CREATE TABLE `daily_attendances` (
  `id` int(11) NOT NULL,
  `timestamp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `daily_attendances`
--

INSERT INTO `daily_attendances` (`id`, `timestamp`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `school_id`) VALUES
(1, '1617746400', 1, 1, 1, 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `school_id`) VALUES
(1, 'القرأن الكريم', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrols`
--

CREATE TABLE `enrols` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `enrols`
--

INSERT INTO `enrols` (`id`, `student_id`, `class_id`, `section_id`, `school_id`, `session`) VALUES
(1, 13, 1, 1, 1, '1'),
(2, 14, 1, 1, 1, '1'),
(3, 15, 1, 1, 1, '1'),
(4, 16, 1, 1, 1, '1'),
(5, 17, 1, 1, 1, '1'),
(6, 18, 1, 1, 1, '1'),
(7, 19, 1, 1, 1, '1'),
(8, 20, 1, 1, 1, '1'),
(9, 21, 1, 1, 1, '1'),
(10, 22, 1, 1, 1, '1'),
(11, 23, 1, 1, 1, '1'),
(12, 24, 1, 1, 1, '1'),
(13, 25, 1, 1, 1, '1'),
(14, 26, 1, 1, 1, '1'),
(15, 27, 1, 1, 1, '1'),
(16, 28, 1, 1, 1, '1'),
(17, 29, 1, 1, 1, '1'),
(18, 30, 1, 1, 1, '1'),
(19, 31, 1, 1, 1, '1'),
(20, 32, 1, 1, 1, '1'),
(21, 33, 1, 1, 1, '1'),
(22, 34, 1, 1, 1, '1'),
(23, 35, 1, 1, 1, '1'),
(24, 36, 1, 1, 1, '1'),
(25, 37, 1, 1, 1, '1'),
(26, 38, 1, 1, 1, '1'),
(27, 39, 1, 1, 1, '1'),
(28, 40, 1, 1, 1, '1'),
(29, 41, 1, 1, 1, '1'),
(30, 42, 1, 1, 1, '1'),
(31, 43, 1, 1, 1, '1'),
(32, 44, 1, 1, 1, '1'),
(33, 45, 1, 1, 1, '1'),
(34, 46, 1, 1, 1, '1'),
(35, 47, 1, 1, 1, '1'),
(36, 48, 1, 1, 1, '1'),
(37, 49, 1, 1, 1, '1'),
(38, 50, 1, 1, 1, '1'),
(39, 51, 1, 1, 1, '1'),
(40, 52, 1, 1, 1, '1'),
(41, 53, 1, 1, 1, '1'),
(42, 54, 1, 1, 1, '1'),
(43, 55, 1, 1, 1, '1'),
(44, 56, 1, 1, 1, '1'),
(45, 57, 1, 1, 1, '1'),
(46, 58, 1, 1, 1, '1'),
(47, 59, 1, 1, 1, '1'),
(48, 60, 1, 1, 1, '1'),
(49, 61, 1, 1, 1, '1'),
(50, 62, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `event_calendars`
--

CREATE TABLE `event_calendars` (
  `id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 DEFAULT NULL,
  `starting_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ending_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(10) DEFAULT NULL,
  `session` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `starting_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ending_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) UNSIGNED NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 DEFAULT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-inactive, 1-active',
  `school_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery`
--

CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text CHARACTER SET utf8 DEFAULT NULL,
  `show_on_website` int(11) NOT NULL DEFAULT 0 COMMENT '0-no 1-yes',
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery_image`
--

CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 DEFAULT NULL,
  `image` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) NOT NULL,
  `about_us` longtext CHARACTER SET utf8 DEFAULT NULL,
  `terms_conditions` longtext CHARACTER SET utf8 DEFAULT NULL,
  `privacy_policy` longtext CHARACTER SET utf8 DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8 DEFAULT NULL,
  `copyright_text` longtext CHARACTER SET utf8 DEFAULT NULL,
  `about_us_image` longtext CHARACTER SET utf8 DEFAULT NULL,
  `slider_images` longtext CHARACTER SET utf8 DEFAULT NULL,
  `theme` longtext CHARACTER SET utf8 DEFAULT NULL,
  `homepage_note_title` longtext CHARACTER SET utf8 DEFAULT NULL,
  `homepage_note_description` longtext CHARACTER SET utf8 DEFAULT NULL,
  `website_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `about_us`, `terms_conditions`, `privacy_policy`, `social_links`, `copyright_text`, `about_us_image`, `slider_images`, `theme`, `homepage_note_title`, `homepage_note_description`, `website_title`) VALUES
(1, '&lt;h1&gt;About Our Schools&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school historys&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our schools&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Terms of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '&lt;h1&gt;Privacy policy of our school&lt;/h1&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&amp;nbsp;&lt;span&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Our school history&lt;/h3&gt;&lt;span&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;br&gt;&lt;/span&gt;&lt;h3&gt;Something interesting about our school&lt;/h3&gt;&lt;span&gt;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;ul&gt;&lt;li&gt;making this the first true generator&lt;/li&gt;&lt;li&gt;to generate Lorem Ipsum which&lt;/li&gt;&lt;li&gt;but the majority have suffered alteratio&lt;/li&gt;&lt;li&gt;is that it has a more-or-less&lt;/li&gt;&lt;/ul&gt;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;br&gt;&lt;br&gt;&lt;br&gt;', '[{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\",\"google\":\"\",\"youtube\":\"\",\"instagram\":\"\"}]', 'All the rights reserved to Creativeitem', NULL, '[{\"title\":\"Education is the most powerful weapon\",\"description\":\"&quot;You can use education to change the world&quot; - &lt;i&gt;Nelson Mandela&lt;\\/i&gt;\",\"image\":\"slider1.jpg\"},{\"title\":\"Knowledge is power\",\"description\":\"&quot;Education is the premise of progress, in every society, in every family&quot; - &lt;i&gt;Kofi Annan&lt;\\/i&gt;\",\"image\":\"2.jpg\"},{\"title\":\"Have an aim in life, continuously acquire knowledge\",\"description\":\"&quot;Never stop fighting until you arrive at your destined place&quot; - &lt;i&gt;A.P.J. Abdul Kalam&lt;\\/i&gt;\",\"image\":\"1.jpg\"}]', 'ultimate', 'Welcome to Ynabee Alelm Academy', '', 'Ynabee Alelm Academy');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `grade_point` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mark_from` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mark_upto` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `comment` longtext CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_method` longtext CHARACTER SET utf8 DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `status` longtext CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL COMMENT 'This column is all about payment taking date'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT 0,
  `comment` longtext CHARACTER SET utf8 DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `displayed_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `route_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `superadmin_access` int(11) NOT NULL DEFAULT 0,
  `admin_access` int(11) NOT NULL DEFAULT 0,
  `teacher_access` int(11) NOT NULL DEFAULT 0,
  `parent_access` int(11) NOT NULL DEFAULT 0,
  `student_access` int(11) NOT NULL DEFAULT 0,
  `accountant_access` int(11) NOT NULL DEFAULT 0,
  `librarian_access` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL DEFAULT 0 COMMENT 'If the value is 1 that means its an addon.',
  `unique_identifier` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'It is mandatory for addons'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `displayed_name`, `route_name`, `parent`, `icon`, `status`, `superadmin_access`, `admin_access`, `teacher_access`, `parent_access`, `student_access`, `accountant_access`, `librarian_access`, `sort_order`, `is_addon`, `unique_identifier`) VALUES
(1, 'users', NULL, 0, 'dripicons-user', 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'users'),
(2, 'admin', 'admin', 1, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 9, 0, 'admin'),
(3, 'student', 'student', 1, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 10, 0, 'student'),
(4, 'teacher', 'teacher', 1, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'teacher'),
(5, 'parent', 'parent', 1, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'parent'),
(6, 'librarian', 'librarian', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'librarian'),
(7, 'accountant', 'accountant', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'accountant'),
(8, 'driver', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 80, 0, 'driver'),
(9, 'academic', NULL, 0, 'dripicons-store', 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'academic'),
(10, 'class', 'manage_class', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'class'),
(11, 'section', NULL, 9, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'section'),
(12, 'class_room', 'class_room', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'class-room'),
(13, 'syllabus', 'syllabus', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'syllabus'),
(14, 'subject', 'subject', 9, NULL, 1, 1, 1, 1, 0, 1, 0, 0, 29, 0, 'subject'),
(15, 'class_routine', 'routine', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 20, 0, 'class-routine'),
(16, 'daily_attendance', 'attendance', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'daily-attendance'),
(17, 'noticeboard', NULL, 9, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'noticeboard'),
(18, 'promotion', 'promotion', 19, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 50, 0, 'promotion'),
(19, 'exam', NULL, 0, 'dripicons-to-do', 1, 1, 1, 1, 1, 1, 0, 0, 30, 0, 'exam'),
(20, 'exam', 'exam', 19, NULL, 1, 1, 1, 1, 0, 0, 0, 0, 20, 0, 'exam'),
(21, 'grades', 'grade', 19, NULL, 1, 1, 1, 0, 1, 1, 0, 0, 30, 0, 'grades'),
(22, 'marks', 'mark', 19, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 10, 0, 'marks'),
(23, 'tabulation_sheet', NULL, 19, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 40, 0, 'tabulation-sheet'),
(24, 'accounting', NULL, 0, 'dripicons-suitcase', 1, 1, 1, 0, 1, 1, 1, 0, 40, 0, 'accounting'),
(25, 'student_fee_manager', 'invoice', 24, NULL, 1, 1, 1, 0, 1, 1, 1, 0, 10, 0, 'student-fee-manager'),
(26, 'student_fee_report', NULL, 24, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 20, 0, 'student-fee-report'),
(27, 'expense_manager', 'expense', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 40, 0, 'expense-manager'),
(28, 'back_office', NULL, 0, 'dripicons-archive', 1, 1, 1, 1, 1, 1, 0, 1, 50, 0, 'back-office'),
(29, 'library', NULL, 28, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'library'),
(30, 'transport', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'transport'),
(31, 'hostel', NULL, 28, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'hostel'),
(32, 'school_website', NULL, 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'school-website'),
(33, 'settings', NULL, 0, 'dripicons-cutlery', 0, 1, 1, 0, 0, 0, 0, 0, 60, 0, 'settings'),
(34, 'system_settings', 'system_settings', 33, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 10, 0, 'system-settings'),
(36, 'payment_settings', 'payment_settings', 33, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 20, 0, 'payment-settings'),
(37, 'language_settings', 'language', 33, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 30, 0, 'language-settings'),
(38, 'session_manager', 'session_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'session-manager'),
(39, 'department', 'department', 9, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 70, 0, 'department'),
(40, 'admission', 'student/create', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 20, 0, 'admission'),
(41, 'addon_manager', 'addon_manager', 28, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'addon-manager'),
(43, 'event_calender', 'event_calendar', 9, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 100, 0, 'event-calender'),
(44, 'online_exam', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'online-exam'),
(45, 'certificate', NULL, 20, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 60, 0, 'certificate'),
(46, 'teacher_permission', 'permission', 1, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 40, 0, 'teacher-permission'),
(47, 'messaging', NULL, 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 110, 0, 'messaging'),
(48, 'role_permission', 'role.index', 1, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 100, 0, 'role-permission'),
(49, 'form_builder', NULL, 32, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'form-builder'),
(50, 'book_list_manager', 'book', 29, NULL, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 'book-list-manager'),
(51, 'book_issue_report', 'book_issue', 29, NULL, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 'book-issue-report'),
(52, 'room_manager', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'room-manager'),
(53, 'student_report', NULL, 31, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'student-report'),
(55, 'expense_category', 'expense_category', 24, NULL, 1, 1, 1, 0, 0, 0, 1, 0, 30, 0, 'expense-category'),
(56, 'SMTP_settings', 'smtp_settings', 33, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 50, 0, 'smtp-settings'),
(57, 'school_settings', 'school_settings', 33, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 12, 0, 'school-settings'),
(58, 'about', 'about', 33, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 51, 0, 'about'),
(115, 'website_settings', 'website_settings', 33, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 11, 0, 'website-settings'),
(116, 'noticeboard', 'noticeboard', 28, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'noticeboard');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL,
  `notice_title` longtext CHARACTER SET utf8 DEFAULT NULL,
  `notice` longtext CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_on_website` int(11) DEFAULT 0,
  `image` text CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `key`, `value`) VALUES
(12, 'stripe_settings', '[{\"stripe_active\":\"yes\",\"stripe_mode\":\"on\",\"stripe_test_secret_key\":\"1234\",\"stripe_test_public_key\":\"1234\",\"stripe_live_secret_key\":\"1234\",\"stripe_live_public_key\":\"1234\",\"stripe_currency\":\"USD\"}]'),
(17, 'paypal_settings', '[{\"paypal_active\":\"yes\",\"paypal_mode\":\"sandbox\",\"paypal_client_id_sandbox\":\"1234\",\"paypal_client_id_production\":\"1234\",\"paypal_currency\":\"USD\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `class_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `section_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subject_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `starting_hour` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ending_hour` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `starting_minute` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ending_minute` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `day` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `teacher_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 DEFAULT NULL,
  `phone` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `phone`) VALUES
(1, 'Ynabee Alelm Academy', 'School Address', '+123123123123');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `class_id`) VALUES
(1, 'القرآن الكريم', 1),
(2, 'القرآن الكريم', 2),
(3, 'القرآن الكريم', 3),
(4, 'القرآن الكريم', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `status`) VALUES
(1, '2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `system_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `system_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `system_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 DEFAULT NULL,
  `purchase_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `system_currency` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `currency_position` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `running_session` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `language` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `student_email_verification` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_text` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_of_last_updated_attendance` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `timezone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_api_key` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vimeo_api_key` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `school_id`, `system_name`, `system_title`, `system_email`, `phone`, `address`, `purchase_code`, `system_currency`, `currency_position`, `running_session`, `language`, `student_email_verification`, `footer_text`, `footer_link`, `version`, `fax`, `date_of_last_updated_attendance`, `timezone`, `youtube_api_key`, `vimeo_api_key`) VALUES
(1, 1, 'Ynabee Alelm Academy', 'Ynabee Alelm Academy', 'ynabee@example.com', '00000000000', '4333 Factoria Blvd SE, Bellevue, WA 98006', '1234', 'EGP', 'right', '1', 'arabic', NULL, 'By Ahmed Mohamed Ibrahim', 'http://ahmedibrahim.com/', '7.2', '1234567890', '1617754650', 'Africa/Cairo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` int(11) NOT NULL,
  `mail_sender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_protocol` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_host` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_port` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_secure` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_set_from` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_debug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_show_error` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `code`, `user_id`, `parent_id`, `session`, `school_id`) VALUES
(1, '2021-1765-4983', 4, 1, 1, 1),
(2, '2021-6859-4231', 6, 0, 1, 1),
(3, '2021-3582-6719', 7, NULL, 1, 1),
(4, '2021-4783-6952', 8, NULL, 1, 1),
(5, '2021-1346-5789', 9, 0, 1, 1),
(6, '2021-8962-1037', 10, 0, 1, 1),
(7, '2021-9856-7301', 11, 0, 1, 1),
(8, '2021-9316-0745', 12, 0, 1, 1),
(9, '2021-5296-4087', 13, 0, 1, 1),
(10, '2021-3498-0671', 14, 0, 1, 1),
(11, '2021-1526-3980', 15, 0, 1, 1),
(12, '2021-3159-7480', 16, NULL, 1, 1),
(13, '2021-8913-7625', 2, 0, 1, 1),
(14, '2021-6543-9017', 3, 0, 1, 1),
(15, '2021-8105-3267', 4, 0, 1, 1),
(16, '2021-1527-0493', 5, 0, 1, 1),
(17, '2021-7023-8615', 6, 0, 1, 1),
(18, '2021-9074-6513', 7, 0, 1, 1),
(19, '2021-0124-8596', 8, 0, 1, 1),
(20, '2021-4529-0786', 9, 0, 1, 1),
(21, '2021-6390-8147', 10, 0, 1, 1),
(22, '2021-6842-3590', 11, 0, 1, 1),
(23, '2021-2516-0439', 2, 0, 1, 1),
(24, '2021-4632-7980', 3, 0, 1, 1),
(25, '2021-7439-8501', 4, 0, 1, 1),
(26, '2021-4610-8975', 5, 0, 1, 1),
(27, '2021-5802-9164', 6, 0, 1, 1),
(28, '2021-7495-1306', 7, 0, 1, 1),
(29, '2021-6719-2483', 8, 0, 1, 1),
(30, '2021-8276-9541', 9, 0, 1, 1),
(31, '2021-7360-4281', 10, 0, 1, 1),
(32, '2021-9246-7583', 11, 0, 1, 1),
(33, '2021-3456-7028', 2, 0, 1, 1),
(34, '2021-4056-1827', 3, 0, 1, 1),
(35, '2021-8425-7196', 4, 0, 1, 1),
(36, '2021-8127-5063', 5, 0, 1, 1),
(37, '2021-1572-6980', 6, 0, 1, 1),
(38, '2021-5817-0946', 7, 0, 1, 1),
(39, '2021-0257-1869', 8, 0, 1, 1),
(40, '2021-8742-6953', 9, 0, 1, 1),
(41, '2021-4032-1958', 10, 0, 1, 1),
(42, '2021-2534-8079', 11, 0, 1, 1),
(43, '2021-6178-4203', 2, 0, 1, 1),
(44, '2021-3814-0597', 3, 0, 1, 1),
(45, '2021-7034-5918', 4, 0, 1, 1),
(46, '2021-1542-7983', 5, 0, 1, 1),
(47, '2021-9017-2436', 6, 0, 1, 1),
(48, '2021-8174-5602', 7, 0, 1, 1),
(49, '2021-8154-6720', 8, 0, 1, 1),
(50, '2021-1345-8967', 9, 0, 1, 1),
(51, '2021-9768-4132', 10, 0, 1, 1),
(52, '2021-5063-7192', 11, 0, 1, 1),
(53, '2021-7824-1053', 12, 0, 1, 1),
(54, '2021-4923-1857', 13, 0, 1, 1),
(55, '2021-3784-0156', 14, 0, 1, 1),
(56, '2021-4205-3716', 15, 0, 1, 1),
(57, '2021-4629-7103', 16, 0, 1, 1),
(58, '2021-4901-2367', 17, 0, 1, 1),
(59, '2021-1235-7049', 18, 0, 1, 1),
(60, '2021-4128-5097', 19, 0, 1, 1),
(61, '2021-8172-9563', 20, 0, 1, 1),
(62, '2021-2075-9836', 21, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8 DEFAULT NULL,
  `about` longtext CHARACTER SET utf8 DEFAULT NULL,
  `show_on_website` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_permissions`
--

CREATE TABLE `teacher_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT 0,
  `assignment` int(11) DEFAULT 0,
  `attendance` int(11) DEFAULT 0,
  `online_exam` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `blood_group` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `authentication_key` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `watch_history` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `address`, `phone`, `remember_token`, `birthday`, `gender`, `blood_group`, `school_id`, `authentication_key`, `watch_history`) VALUES
(1, 'Ahmed Mohamed', 'ahmedmohamed@yanabee.com', '1fe9ae9361832280e2c2881e8eb1abe8e05af369', 'superadmin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(12, '', 'ahmed-karam@yanabee-academy.com', 'c461484980677a56d99190ea2451048f9ebc03e6', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(13, '', 'mohamed-ahmed@yanabee-academy.com', 'f11512adef6dd8bf483623e1e164484b17ffd3b5', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(14, '', 'abo-hagr@yanabee-academy.com', 'ea8992cc3a6c5e5bad244381acb0da40be3ea946', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(15, '', 'ahmed-omran@yanabee-academy.com', '5ae021c52bac2633275986c9d5f0c57df14bf1fb', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(16, '', 'hussain-mohamed@yanabee-academy.com', 'c3a4e2306bbb21e4c8ea8f215d52dfb4b38c4988', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(17, '', 'ahmed-eldeba@yanabee-academy.com', '873c2e2fd5dca1cfa60725cb110b9b82d366fd54', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(18, '', 'ahmed-ragab@yanabee-academy.com', 'b27c37c461acc9e33e43abe45c11d6fa13ac4c29', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(19, '', 'yazn-ibrahim@yanabee-academy.com', '3b93b42b1714105efaa1a0897b6637178f1e7f08', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(20, '', 'ayman-mabrouk@yanabee-academy.com', '913a0e316f809f5c177ad2968dbc0f1b295678c6', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]'),
(21, '', 'mohamed-zaher@yanabee-academy.com', 'f0cb2360c19a323c9ea94be198c7cb72e4566dc3', 'student', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_settings`
--
ALTER TABLE `common_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrols`
--
ALTER TABLE `enrols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_calendars`
--
ALTER TABLE `event_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indexes for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indexes for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_settings`
--
ALTER TABLE `common_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enrols`
--
ALTER TABLE `enrols`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `event_calendars`
--
ALTER TABLE `event_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;