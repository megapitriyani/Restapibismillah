-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2020 pada 01.29
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `negara`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT 0,
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `id_user`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(11, 0, 'ooo88g8oswgosgkgsccwcc8kk4gcoww8cwgoo8os', 1, 1, 0, NULL, 1593137084),
(12, 1, 'os84k8ckcsww0g4g0ggookwocw80kkoc8ogk08g4', 1, 1, 0, NULL, 1593137731),
(13, 3, 'wo80wcogok0k84wssc44w8wowcks8css0sww0gs4', 1, 1, 0, NULL, 1593138248),
(14, 3, '4sgks4osoook8oc4ssgcc08sc888gss4cg0gwkwc', 1, 1, 0, NULL, 1593178055),
(15, 3, 'cgow0ow88oog4swsc84swc8wosoogk0cggcgo8w8', 1, 1, 0, NULL, 1593188115),
(16, 3, '0okww00c0s0gw0kwcc4wwckscgcsg844w8sk884k', 1, 1, 0, NULL, 1593188118),
(17, 3, 'wwoww0oc4c8csc8g8kkwcok0sscks800ckc0gk8g', 1, 1, 0, NULL, 1593350747),
(18, 3, 's8ok04ck4ks8c8skgcgs8s8s8oo4s880scc48gsg', 1, 1, 0, NULL, 1593492238),
(19, 4, 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', 1, 1, 0, NULL, 1593492283);

-- --------------------------------------------------------

--
-- Struktur dari tabel `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `limits`
--

INSERT INTO `limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES
(1, 'uri:api/negara/index:get', 2, 1592125617, 'mega'),
(2, '', 0, 0, 'mega');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(7, 'api/negara', 'delete', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"80573d7f-62fc-4da8-9b7c-6f3371effc6c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:1:\"4\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";s:2:\"id\";s:1:\"1\";}', '', '::1', 1592139415, 0.138752, '0', 403),
(8, 'api/negara', 'delete', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8888f6f9-a665-43fd-872b-7624528634d5\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:1:\"4\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";s:2:\"id\";s:1:\"1\";}', '', '::1', 1592139441, 0.116951, '0', 403),
(9, 'api/negara', 'delete', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"75fa9cd6-f5fc-4146-b006-1cc4795019a1\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"49\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";s:2:\"id\";s:1:\"1\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592139454, 0.125052, '0', 401),
(10, 'api/negara', 'delete', 'a:13:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"78a633ff-d900-4588-9a68-c2b25fb594e7\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"49\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";s:2:\"id\";s:1:\"1\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592139505, 0.285022, '1', 200),
(11, 'api/negara', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"450ec993-ca44-4006-9ee5-88170e681071\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"49\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";}', '', '::1', 1592139520, 0.170787, '0', 403),
(12, 'api/negara', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c900b0cb-8a08-44b8-bdb0-9702d00f0a47\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";}', '', '::1', 1592139530, 0.162165, '0', 403),
(13, 'api/negara', 'get', 'a:12:{s:3:\"key\";s:4:\"mega\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a5dc7585-91df-4b4a-a997-e2b1f5c61277\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=36jf6opd6i59gfn1ig002p7f48ub7gcr\";}', 'mega', '::1', 1592139541, 0.139448, '1', 200),
(14, 'api/negara', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6065f83f-03d4-46dc-a868-ab6d6fd10e86\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', '', '::1', 1592141808, 0.215888, '0', 403),
(15, 'api/key', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6a34835e-d78e-413a-87b3-72c74d36b565\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', '', '::1', 1592141822, 0.146909, '0', 403),
(16, 'api/key', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ef4ecf61-f5eb-44ef-ad22-852027f9de39\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', '', '::1', 1592141826, 0.152228, '0', 403),
(17, 'api/key', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"5893cdd1-e267-4820-99fe-af9681fcba16\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', '', '::1', 1592141843, 0.107954, '0', 403),
(18, 'api/key', 'put', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"cb2b8364-d2a7-4ffc-9257-a8f6a8ea7c76\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592141861, 0.142986, '0', 401),
(19, 'api/negara', 'put', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"4bf0edc3-1b51-49f6-b241-e3282a83fa9d\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592141883, 0.176694, '1', 400),
(20, 'api/key', 'put', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"394631f8-4fb8-41bc-a8db-4fc291e9f621\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592141894, 0.117672, '0', 401),
(21, 'api/key', 'put', 'a:12:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"fe592594-2201-4d55-99cc-2c1d0bb3a6fb\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592142026, 0.240562, '0', 401),
(22, 'api/key', 'get', 'a:11:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"57b0b377-5507-45c9-944f-7b16f2422231\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', '', '::1', 1592142030, 0.184943, '0', 403),
(23, 'api/negara', 'get', 'a:12:{s:3:\"key\";s:4:\"mega\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"bb40bd35-9680-4239-ac69-95e2ab9756d4\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', 'mega', '::1', 1592142043, 0.167274, '1', 200),
(24, 'api/negara', 'get', 'a:13:{s:3:\"key\";s:4:\"mega\";s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"fa6484ae-3a04-49ad-87d9-1e1e6fe0afa2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', 'mega', '::1', 1592142064, 0.16164, '1', 200),
(25, 'api/negara', 'get', 'a:13:{s:3:\"key\";s:4:\"mega\";s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"115699aa-d31a-44f5-b5ba-92c9d46c3e01\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', 'mega', '::1', 1592142076, 0.159608, '1', 200),
(26, 'api/negara', 'get', 'a:13:{s:3:\"key\";s:4:\"mega\";s:2:\"id\";s:1:\"6\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6263e9c3-0670-4ad5-aad7-dd016764f0bb\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";}', 'mega', '::1', 1592142085, 0.466268, '1', 404),
(27, 'api/negara', 'post', 'a:13:{s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a0941b93-1d90-41cd-bf1b-df9f440cbc27\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"44\";s:6:\"Cookie\";s:43:\"ci_session=edmp5aj6dfpnlve2q5pac74jg026nhpt\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592142116, 0.192593, '1', 404),
(28, 'api/negara', 'post', 'a:11:{s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"887825a5-977b-45aa-a511-62895c7035a7\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1592142135, 0.084743, '0', 403),
(29, 'api/negara', 'get', 'a:11:{s:3:\"key\";s:4:\"mega\";s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f5fc08e4-e501-440c-bc64-29211b65e2ec\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";}', 'mega', '::1', 1592142139, 0.146638, '1', 200),
(30, 'api/negara', 'post', 'a:19:{s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"f1f3f260-584d-4fe4-bec4-bca36653d219\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"79\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";s:11:\"nama_negara\";s:0:\"\";s:11:\"kode_negara\";s:0:\"\";s:8:\"ibu_kota\";s:0:\"\";s:12:\"bahasa_resmi\";s:0:\"\";s:8:\"latitude\";s:0:\"\";s:9:\"longitude\";s:0:\"\";s:7:\"bendera\";s:0:\"\";}', '', '::1', 1592142188, 0.117098, '0', 403),
(31, 'api/negara', 'post', 'a:20:{s:2:\"id\";s:1:\"4\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"052e5d94-e6e6-4813-9dc6-f20c3b51b2a6\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:3:\"124\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";s:3:\"key\";s:40:\"sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w\";s:11:\"nama_negara\";s:0:\"\";s:11:\"kode_negara\";s:0:\"\";s:8:\"ibu_kota\";s:0:\"\";s:12:\"bahasa_resmi\";s:0:\"\";s:8:\"latitude\";s:0:\"\";s:9:\"longitude\";s:0:\"\";s:7:\"bendera\";s:0:\"\";}', 'sg4w4s8404ck4occoss04cgk8swswk8c08ggsw4w', '::1', 1592142203, 0.220023, '1', 201),
(32, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:4:\"mega\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b651636c-cceb-4664-9776-d7974b341c33\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";}', 'mega', '::1', 1592142242, 0.10654, '1', 200),
(33, 'api/negara', 'delete', 'a:13:{s:3:\"key\";s:4:\"mega\";s:2:\"id\";s:1:\"5\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9d400f79-78f8-497a-a300-571a04a2f591\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:1:\"4\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";}', 'mega', '::1', 1592142285, 0.255559, '1', 200),
(34, 'api/key', 'delete', 'a:13:{s:3:\"key\";s:4:\"mega\";s:2:\"id\";s:1:\"5\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e7f147bf-5c65-4fea-9041-84b293f46d7d\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:1:\"4\";s:6:\"Cookie\";s:43:\"ci_session=n412rmljga1uarrfrjt238kqg3oqjp6m\";}', 'mega', '::1', 1592148544, 0.0891628, '0', 401),
(35, 'api/key', 'delete', 'a:9:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6be7f813-5764-4a98-bcef-9ef2968598ca\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=tl1qra0r1d18b1e4v8l5jpulovmu8bcn\";}', '', '::1', 1592148566, 0.331959, '0', 403),
(36, 'api/key', 'delete', 'a:9:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"28a84812-af01-4043-97b4-de221f928f6c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=tl1qra0r1d18b1e4v8l5jpulovmu8bcn\";}', '', '::1', 1592148753, 0.278211, '0', 403),
(37, 'api/key', 'delete', 'a:9:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c9a1cb41-adac-4402-9efb-ba0b0aca0476\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=tl1qra0r1d18b1e4v8l5jpulovmu8bcn\";}', '', '::1', 1592148801, 0.173542, '0', 403),
(38, 'api/key', 'delete', 'a:9:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8b6d534b-8f4d-406e-bb48-67f89aa51ecc\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=tl1qra0r1d18b1e4v8l5jpulovmu8bcn\";}', '', '::1', 1592148906, 0.0977631, '0', 403),
(39, 'api/key', 'delete', 'a:9:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"cd12e519-afaf-4a8a-88fe-fe2cff55e7a0\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=ous16kqv8smd2u2ijfb574lo812lm5f9\";}', '', '::1', 1592148911, 0.22366, '0', 403),
(40, 'api/key', 'delete', 'a:9:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.25.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"986f03a4-4240-48ea-9f83-b80bd40c5fd2\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=ous16kqv8smd2u2ijfb574lo812lm5f9\";}', '', '::1', 1592148987, 0.115401, '0', 403),
(41, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"388f5b41-a328-485e-850e-de8ed3ef4680\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=bpl6ai93cfae5sgi779lbukbt2m9drrt\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504592, 0.561048, '0', 403),
(42, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8ce4a14e-66d5-4238-b6b2-6c5437e567c6\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504601, 0.171906, '0', 403),
(43, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"e26056de-8dcb-4c1a-956d-049411d7c258\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504656, 0.116953, '1', 0),
(44, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3bf9b6a4-1fdf-4cf3-ab69-a20ba0fead03\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504667, 0.519281, '1', 0),
(45, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"dad40b54-0a19-413e-9c35-95c32f0d1091\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504679, 0.0760019, '1', 0),
(46, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a7320b3d-f7cb-4876-ace1-d1a07406942c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504697, 0.0531499, '1', 0),
(47, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3068b30d-3a63-4efb-ad49-afa9948edccf\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504706, 0.102366, '0', 403),
(48, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"23bc8e55-4439-4a11-9f82-4d49a454d4e5\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504720, 0.0982661, '0', 403),
(49, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3630e04c-8ecd-4f95-9793-f1c9cbcad892\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504723, 0.147067, '0', 403),
(50, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:43:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\"\n}\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"00829bf3-89e2-4639-9d3c-00df5249342e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";}', '', '::1', 1593504775, 2.17861, '0', 403),
(51, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"71d24a1c-3b80-4eff-a380-bb93dc7d5a1f\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593504781, 2.92776, '0', 401),
(52, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a597b86b-ab6c-4247-8dda-cce327988fe5\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593504805, 0.299459, '0', 401),
(53, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a3e75696-e4be-481d-a1a5-519e84c3ab17\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593504853, 1.02057, '1', 200),
(54, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:0:\"\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"d0502eba-9c33-4ea8-89e7-10edeb75823c\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";}', '', '::1', 1593504859, 0.138184, '0', 403),
(55, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6800dee0-143d-4ec1-989e-3f93ad267af4\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504868, 0.183795, '0', 403),
(56, 'api/key', 'put', 'a:10:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"b4ecee40-8220-4ce2-87a4-673a739c4c03\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";s:14:\"Content-Length\";s:1:\"0\";}', '', '::1', 1593504872, 0.122238, '0', 403),
(57, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:0:\"\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6f7ae7d0-cece-42bf-aaf4-9fd45a7af29a\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=0cm64hfujtbici1e0d3d7f7shp4nf0ic\";}', '', '::1', 1593505220, 0.544046, '0', 403),
(58, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"0511bf66-4d04-4d25-a183-2e01199afb1e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505237, 0.103828, '1', 200),
(59, 'api/negara', 'get', 'a:11:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:2:\"id\";s:2:\"18\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"c2b5deb0-c1bf-4b66-8535-0d8c32aee359\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505259, 0.118505, '1', 200),
(60, 'api/negara', 'get', 'a:11:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:2:\"id\";s:1:\"0\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9ec0d2b4-907f-4c4c-a574-73342a38e538\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505268, 0.105119, '1', 404),
(61, 'api/negara', 'get', 'a:11:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:2:\"id\";s:2:\"18\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"9c2d2f72-a666-4dcd-9336-d9b4a2a595be\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505281, 0.158271, '1', 200),
(62, 'api/negara', 'post', 'a:19:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6aa025ec-a42d-4d6f-93df-bd038ff94234\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------845162442861100033289163\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";s:14:\"Content-Length\";s:4:\"1008\";s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:11:\"nama_negara\";s:10:\"Fiiliphina\";s:11:\"kode_negara\";s:1:\"1\";s:8:\"ibu_kota\";s:13:\"Washintong DC\";s:12:\"bahasa_resmi\";s:15:\"Amerika Inggris\";s:8:\"latitude\";s:2:\"10\";s:9:\"longitude\";s:3:\"100\";s:7:\"bendera\";s:7:\"123.jpg\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505333, 0.166579, '1', 201),
(63, 'api/negara', 'get', 'a:11:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:2:\"id\";s:2:\"18\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"34d5cd93-23ef-4cf9-bd88-bd04f5b0af21\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505342, 0.125788, '1', 200),
(64, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"13e7ee63-7b2b-42f5-8629-c1956d403693\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505346, 0.392374, '1', 200),
(65, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"21581851-5580-43d8-a896-0fbba041010b\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505476, 0.0994051, '1', 200),
(66, 'api/negara', 'put', 'a:20:{s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"35b498c9-c6c4-414b-91e2-b519a62f91cb\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:3:\"182\";s:6:\"Cookie\";s:43:\"ci_session=qpp3imht5ksckhubvl8h9kb20j0qjstb\";s:2:\"id\";s:2:\"23\";s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:11:\"nama_negara\";s:7:\"Amerika\";s:11:\"kode_negara\";s:1:\"1\";s:8:\"ibu_kota\";s:13:\"Washintong DC\";s:12:\"bahasa_resmi\";s:15:\"Amerika Inggris\";s:8:\"latitude\";s:2:\"10\";s:9:\"longitude\";s:3:\"100\";s:7:\"bendera\";s:7:\"123.jpg\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505574, 0.561877, '1', 426),
(67, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"8af9698c-dc06-4418-994a-c7b61440fdc6\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=vdptqq9km13fv096keb2bptognj571cf\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505587, 0.12064, '1', 200),
(68, 'api/negara', 'delete', 'a:13:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:2:\"id\";s:2:\"18\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"10bd4040-0759-40d1-8b0b-556875e5543e\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:12:\"Content-Type\";s:33:\"application/x-www-form-urlencoded\";s:14:\"Content-Length\";s:2:\"50\";s:6:\"Cookie\";s:43:\"ci_session=vdptqq9km13fv096keb2bptognj571cf\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505652, 0.267766, '1', 200),
(69, 'api/negara', 'get', 'a:10:{s:3:\"key\";s:40:\"cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w\";s:13:\"Authorization\";s:22:\"Basic YWRtaW46MTIzNA==\";s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.26.1\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"123cf6ae-2383-4054-9782-d632fef8d2c3\";s:4:\"Host\";s:9:\"localhost\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Cookie\";s:43:\"ci_session=vdptqq9km13fv096keb2bptognj571cf\";}', 'cc8k84ko0ks8kgkoo8s4wk0kogs4co00g8gs0g0w', '::1', 1593505664, 0.155231, '1', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `id` int(11) NOT NULL,
  `nama_negara` varchar(128) NOT NULL,
  `kode_negara` int(12) NOT NULL,
  `ibu_kota` varchar(255) NOT NULL,
  `bahasa_resmi` varchar(255) NOT NULL,
  `latitude` varchar(128) NOT NULL,
  `longitude` varchar(128) NOT NULL,
  `bendera` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`id`, `nama_negara`, `kode_negara`, `ibu_kota`, `bahasa_resmi`, `latitude`, `longitude`, `bendera`) VALUES
(19, 'Korea Selatan', 82, 'Seoul', 'Korea', '35.907757', '127.766922', ''),
(20, 'Amerika Serikat', 1, 'Washington DC', 'Inggris Amerika', '40', '-100', ''),
(21, 'Malaysia', 60, 'Kuala Lumpur', 'Melayu', '4.210484', '101.975766', ''),
(22, 'Singapura', 64, 'Singapura', 'Inggris-Singapura', '1.2833', '103.8333', ''),
(23, 'Amerika', 1, 'Washintong DC', 'Amerika Inggris', '10', '100', '123.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `password`) VALUES
(1, 'Nurul Fadhilah', 'nurulfadhillah85@gmail.com', '$2y$10$vcaUZGRASTLDdqz37ZhzIeP88AtNZrz26UO//aY4Pq7nDl/qS8Fj2'),
(2, 'root', 'root@gmail.com', '$2y$10$p5bh1uuGEW5L0uFdKU8kcu8N.HxzEbokPf9FG4NDk4dmdyW/Ljws6'),
(3, 'yasir', 'yasir@gmail.com', '$2y$10$Joxy6lZe1EkSzy6hbc8mPevsgCFwzWH89xP2ppslHrVjYhpLCsEWK'),
(4, 'Mega Pitriyani', 'mega@gmail.com', '$2y$10$oMBTD6x/7yfsewR9i.jGie1rrzR7jtGUpwG2zF5Z9peQll1tJnFuq'),
(5, 'megapitriyani', 'megapitriyani2@gmail.com', '$2y$10$MILbdt7hPMiupgInnb9kaO4QU16r66XHhvOT/aRG24UUZ9G9K8rrC');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `negara`
--
ALTER TABLE `negara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
