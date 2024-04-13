-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2024 lúc 11:32 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_webphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(2, 'Phim Lẻ', 'Phim lẻ cập nhật hằng ngày', 1, 'phim-le', 0),
(4, 'Phim Bộ', 'Phim bộ cập nhật hằng ngày', 1, 'phim-bo', 0),
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 0),
(6, 'Phim Mới', 'Phim mới cập nhật nhanh nhất', 1, 'phim-moi', 0),
(11, 'Phim Thuyết Minh', 'Phim thuyết minh mới nhất', 1, 'phim-thuyet-minh', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `name_customer` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `id_movie`, `id_customer`, `name_customer`, `comment`) VALUES
(7, 64, 4, 'Quý', 'Một thanh niên vừa mới có bạn gái, thì bỗng dưng lòi đâu ra một bé nữa cũng đến tỏ tình và như bao aura main nam khác, thì thanh niên làm gì thì các bác cũng đoán ra được rồi đấy'),
(8, 58, 1, 'quang', 'Tình cảm, bí ẩn và hỗn loạn diễn ra trên con tàu sang trọng hướng tới biển Aegean khi một quản gia và một hành khách cố gắng phá giải vụ án mạng khó hiểu.'),
(13, 58, 4, 'Quý', 'yeu-giua-vung-nuoc-du-in-love-and-deep-water'),
(17, 58, 5, 'quang1', 'Tuy nhiên, cậu bé bị ngược đãi và không hề biết về thân phận thực sự của mình. Vào sinh nhật thứ 11 của Harry, một người lai khổng lồ là Rubeus'),
(18, 60, 1, 'quang', 'sbc'),
(19, 72, 1, 'quang', 'Phim này cuốn quá đi'),
(20, 67, 1, 'quang', 'Hay quá'),
(21, 74, 1, 'quang', 'Hóng phần 2'),
(22, 73, 1, 'quang', 'Tuyệt'),
(23, 71, 1, 'quang', 'Phim buồn quá nhỉ'),
(24, 74, 6, 'tanquy', 'Phim vui ghê'),
(25, 72, 6, 'tanquy', 'Chán'),
(26, 71, 6, 'tanquy', 'Không biết phần tiếp theo sẽ như thế nào nhỉ'),
(27, 74, 7, 'quy_02', 'Tuyệt'),
(28, 73, 7, 'quy_02', 'Hay lắm mọi người.'),
(29, 69, 7, 'quy_02', 'Kết bất ngờ ghê'),
(31, 76, 8, 'ngan123@gmail.com', 'đúng như vậy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Việt Nam', 'Phim Việt Nam cập nhật nhanh nhất', 1, 'viet-nam'),
(2, 'Mỹ', 'Phim Mỹ cập nhật hằng ngày', 1, 'my'),
(4, 'Nhật Bản', 'Phim Nhật Bản cập nhật nhanh nhất', 1, 'nhat-ban'),
(5, 'Hàn Quốc', 'Phim Hàn Quốc cập nhật nhanh nhất', 1, 'han-quoc'),
(6, 'Trung quốc', 'Phim Trung Quốc cập nhật nhanh nhất', 1, 'trung-quoc'),
(7, 'Thái Lan', 'Phim Thái Lan cập nhật nhanh nhất', 1, 'Thái Lan'),
(8, 'Đài Loan', 'Phim Đài Loan cập nhật nhanh nhất', 1, 'Đài Loan'),
(9, 'Singapo', 'phim singapo', 1, 'Singapo'),
(10, 'Ấn độ', 'Phim Ấn Độ cập nhật nhanh nhất', 1, 'Ấn độ'),
(13, 'Nga', 'Phim mới nhất của Nga', 1, 'Nga');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id_customer` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id_customer`, `user`, `email`, `password`, `fullname`, `dob`, `status`, `token`) VALUES
(31, 'Jin', 'minhquang2002nt@gmail.com', '$2y$10$.KUiTG33gDrX01eSyG3kmuocLiFAp.V49r3ohGX/gWIVgwG2Sj24e', 'Nguyễn Trịnh Minh Quang', '2024-03-19', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` text NOT NULL,
  `episode` varchar(11) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `updated_at`, `created_at`) VALUES
(3, 58, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/093c1e5a35179ee7a619853434329563\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-24 19:04:32', '2023-11-24 19:04:32'),
(4, 59, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/bcad7b839e99d2542617d19206b9540a\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-21 15:02:04', '2023-11-21 15:02:04'),
(5, 59, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/1a54ed0d8ca0bdb0cf54794977feb05a\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2023-11-23 19:45:23', '2023-11-23 19:45:23'),
(6, 60, '<iframe width=\"560\" height=\"315\" src=\"https://vie2.opstream7.com/share/d72fbbccd9fe64c3a14f85d225a046f4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-26 03:29:01', '2023-11-26 03:29:01'),
(7, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/1c195f62b31f99d41ec618e21786719b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-26 14:35:13', '2023-11-26 14:35:13'),
(8, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/5f4d4b4da67c9adec00590be5904256e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2023-11-26 14:35:26', '2023-11-26 14:35:26'),
(10, 64, '<iframe width=\"560\" height=\"315\" src=https://hdbo.opstream5.com/share/5a56d275949eb284b4884f30ed88a045\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '3', '2023-11-26 14:36:13', '2023-11-26 14:36:13'),
(11, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/76852e6172731d72ad755c6a33d07463\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2023-11-26 14:36:26', '2023-11-26 14:36:26'),
(13, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/aaeec47bc01f9515604118bc718820d7\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '5', '2023-11-26 14:36:53', '2023-11-26 14:36:53'),
(14, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/13cccb93e6db1d17d50fc101c5b4b6cb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '6', '2023-11-26 14:37:08', '2023-11-26 14:37:08'),
(15, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/23bc3ae5e041fe4e124c6b5e1c673073\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '7', '2023-11-26 14:37:23', '2023-11-26 14:37:23'),
(16, 64, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/1a6f354f9e977a34a077ed6a0d712996\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '8', '2023-11-26 14:37:32', '2023-11-26 14:37:32'),
(17, 63, '<iframe width=\"560\" height=\"315\" src=\" https://1080.opstream4.com/share/8d9a0adb7c204239c9635426f35c9522\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-26 14:38:02', '2023-11-26 14:38:02'),
(18, 62, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/5607fe8879e4fd269e88387e8cb30b7e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-26 14:38:22', '2023-11-26 14:38:22'),
(19, 61, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/cca1adbb7cedc6d195e17a762dc31726\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2023-11-26 14:38:51', '2023-11-26 14:38:51'),
(20, 65, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/9fa0bb67ba754c1b4e5921c3bc837ceb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 22:57:08', '2024-01-05 22:57:08'),
(21, 65, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/aa167aca772c07d97f34e612afc22ee4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2024-01-05 22:57:57', '2024-01-05 22:57:57'),
(22, 65, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/1a01f836b0c2494b9e95700f520f7df4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '3', '2024-01-05 22:58:13', '2024-01-05 22:58:13'),
(23, 65, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/de24515b506bc56b0e807f29beff7bd9\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2024-01-05 22:58:36', '2024-01-05 22:58:36'),
(24, 67, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/0ab0715caf15031f9116c01a81ce9760\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:08:24', '2024-01-05 23:08:24'),
(25, 68, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/b6dcf57ea1dbb55ac54940119a6ebd81\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:14:12', '2024-01-05 23:14:12'),
(26, 69, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/dcf1a4dd5063573cddc47a2ef8a17441\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:18:19', '2024-01-05 23:18:19'),
(27, 70, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/1ca626c2c91dad03c61ca216b535145b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:24:58', '2024-01-05 23:24:58'),
(28, 70, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/9145f5ea393c6f6a4a7eff618814f91e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2024-01-05 23:25:11', '2024-01-05 23:25:11'),
(30, 70, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/ccacb872e833031d124beb4e0a5be380\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '3', '2024-01-05 23:26:28', '2024-01-05 23:26:28'),
(31, 70, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/eaf72c29ea749db9d115947ff9caa86f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2024-01-05 23:26:41', '2024-01-05 23:26:41'),
(32, 70, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/ef8ff3bb5f926198d139c3e9750a3739\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '5', '2024-01-05 23:27:12', '2024-01-05 23:27:12'),
(33, 71, '<iframe width=\"560\" height=\"315\" src=\"https://vie2.opstream7.com/share/f8c0c968632845cd133308b1a494967f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:31:18', '2024-01-05 23:31:18'),
(34, 72, '<iframe width=\"560\" height=\"315\" src=\"https://aa.opstream6.com/share/46b2644cbdf489fac0e2d192212d206d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:37:41', '2024-01-05 23:37:41'),
(35, 73, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/c5a5d681008c1e5daa5b70fa82f28166\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2024-01-05 23:42:11', '2024-01-05 23:42:11'),
(36, 73, '<iframe width=\"560\" height=\"315\" https://1080.opstream4.com/share/8dd14297f1ca3c82f506575ae83774c6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '3', '2024-01-05 23:42:31', '2024-01-05 23:42:31'),
(37, 73, '<iframe width=\"560\" height=\"315\" src=\"https://1080.opstream4.com/share/b83feac870d346463cc2e0167e781d3f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2024-01-05 23:42:50', '2024-01-05 23:42:50'),
(38, 74, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/497290bed604efe673ff973099876689\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '23', '2024-01-05 23:49:34', '2024-01-05 23:49:34'),
(39, 74, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/5c2175a3590dd6dee78048d939a02caa\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-05 23:49:57', '2024-01-05 23:49:57'),
(40, 74, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/32ff692bedd4cd4764741dd4b347d5b4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2024-01-05 23:50:30', '2024-01-05 23:50:30'),
(41, 74, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/719bdf36f0352752837458a9d1b16bc8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '3', '2024-01-05 23:50:46', '2024-01-05 23:50:46'),
(42, 74, '<iframe width=\"560\" height=\"315\" src=https://hdbo.opstream5.com/share/cbfa268b9f76e19d0531ddbdff46c2f2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2024-01-05 23:51:00', '2024-01-05 23:51:00'),
(43, 74, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/294630c7fceb95fecbb446b26ea16b4b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '6', '2024-01-05 23:51:33', '2024-01-05 23:51:33'),
(44, 75, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/e1415faa4cca7f05db92f1d66ce238e6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-06 00:06:31', '2024-01-06 00:06:31'),
(45, 76, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/bcfcd28386825c63b4bf03cd90582cab\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '1', '2024-01-06 00:11:55', '2024-01-06 00:11:55'),
(46, 76, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/65d6b3b69c9122e98cfb9c6487f8438c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2', '2024-01-06 00:12:11', '2024-01-06 00:12:11'),
(47, 76, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/1b2b9dde67ac01d28e6f13e361008545\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '3', '2024-01-06 00:12:25', '2024-01-06 00:12:25'),
(48, 76, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/7143b3c23169789d1d83178002a9b07f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2024-01-06 00:12:41', '2024-01-06 00:12:41'),
(51, 79, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/656f0dbf9392657eed7feefc486781fb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:01:11', '2024-04-04 00:01:11'),
(52, 80, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/d04d42cdf14579cd294e5079e0745411\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:05:27', '2024-04-04 00:05:27'),
(53, 81, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/353de26971b93af88da102641069b440\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:13:29', '2024-04-04 00:13:29'),
(54, 82, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/2e0bff759d057e28460eaa5b2cb118e5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:20:23', '2024-04-04 00:20:23'),
(55, 85, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/55d99a37b2e1badba7c8df4ccd506a88\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:42:40', '2024-04-04 00:42:40'),
(56, 86, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/af4ae70d0eac8b8fc9bc16fb9fa07741\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:50:31', '2024-04-04 00:50:31'),
(58, 88, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/a91af177d3016ca20e5fc949836a894a\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:55:42', '2024-04-04 00:55:42'),
(59, 89, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/c5f5c23be1b71adb51ea9dc8e9d444a8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 00:59:01', '2024-04-04 00:59:01'),
(60, 90, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/0b6ace9e8971cf36f1782aa982a708db\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:01:09', '2024-04-04 01:01:09'),
(61, 91, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/e836d813fd184325132fca8edcdfb40e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:03:12', '2024-04-04 01:03:12'),
(62, 92, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/ca04bf91675522debb01117dde6aede0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:09:08', '2024-04-04 01:09:08'),
(63, 93, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/512fc3c5227f637e41437c999a2d3169\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:12:48', '2024-04-04 01:12:48'),
(64, 94, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/b67fb3360ae5597d85a005153451dd4e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:15:35', '2024-04-04 01:15:35'),
(65, 95, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/8be0ff85aa9aa18b45787a05f25ee3cd\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:17:56', '2024-04-04 01:17:56'),
(66, 96, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/9e82757e9a1c12cb710ad680db11f6f1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:19:56', '2024-04-04 01:19:56'),
(67, 97, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/97d98119037c5b8a9663cb21fb8ebf47\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:22:02', '2024-04-04 01:22:02'),
(68, 99, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/9edcc1391c208ba0b503fe9a22574251\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:25:45', '2024-04-04 01:25:45'),
(69, 100, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/27802e14b7689cc7d57176ffea7f37b5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:27:14', '2024-04-04 01:27:14'),
(70, 101, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/e0b2c99d6e66d1ea44a8588c7bc4a016\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:32:33', '2024-04-04 01:32:33'),
(71, 102, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream14.com/share/043c3d7e489c69b48737cc0c92d0f3a2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 01:36:04', '2024-04-04 01:36:04'),
(72, 103, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/ddeebdeefdb7e7e7a697e1c3e3d8ef54\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 20:45:44', '2024-04-04 20:45:44'),
(73, 104, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/db5cea26ca37aa09e5365f3e7f5dd9eb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '3', '2024-04-04 20:49:53', '2024-04-04 20:49:53'),
(74, 105, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/f87522788a2be2d171666752f97ddebb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 20:51:55', '2024-04-04 20:51:55'),
(75, 106, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream14.com/share/a96683574013404fbdc72bcb5f4c80e7\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 21:03:47', '2024-04-04 21:03:47'),
(76, 107, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream14.com/share/c6ae0d36f2b809808a40cb163b6d9d8d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 21:06:53', '2024-04-04 21:06:53'),
(77, 108, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/e2c0be24560d78c5e599c2a9c9d0bbd2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 21:09:50', '2024-04-04 21:09:50'),
(78, 109, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream15.com/share/ab817c9349cf9c4f6877e1894a1faa00\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 21:11:08', '2024-04-04 21:11:08'),
(79, 110, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/f8eb278a8bce873ef365b45e939da38a\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-04 21:13:51', '2024-04-04 21:13:51'),
(80, 111, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/0ae1dd3954ee840075de1395771b6c9c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 10:14:59', '2024-04-05 10:14:59'),
(81, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/f34185c4ca5d58e781d4f14173d41e5d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 10:23:05', '2024-04-05 10:23:05'),
(82, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/4fa91c19016cb1f807ea47b5a959d518\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '2', '2024-04-05 10:23:28', '2024-04-05 10:23:28'),
(83, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/7de32147a4f1055bed9e4faf3485a84d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '3', '2024-04-05 10:23:44', '2024-04-05 10:23:44'),
(84, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/b2004314aa49d95302179246148e0326\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '4', '2024-04-05 10:24:03', '2024-04-05 10:24:03'),
(85, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/586f9b4035e5997f77635b13cc04984c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '5', '2024-04-05 10:24:22', '2024-04-05 10:24:22'),
(86, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/473447ac58e1cd7e96172575f48dca3b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '6', '2024-04-05 10:24:44', '2024-04-05 10:24:44'),
(87, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/5abdf8b8520b71f3a528c7547ee92428\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '7', '2024-04-05 10:24:59', '2024-04-05 10:24:59'),
(88, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/9edda0fd4d983bf975935cfd492fd50b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '8', '2024-04-05 10:25:14', '2024-04-05 10:25:14'),
(89, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/73c03186765e199c116224b68adc5fa0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '9', '2024-04-05 11:06:03', '2024-04-05 11:06:03'),
(90, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/20240402/3464_6d7a2a1a/index.m3u8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '10', '2024-04-05 11:08:34', '2024-04-05 11:08:34'),
(91, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/d2350a54d774001d6078e326b4488878\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '11', '2024-04-05 10:26:10', '2024-04-05 10:26:10'),
(92, 112, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream13.com/share/87f7ee4fdb57bdfd52179947211b7ebb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '12', '2024-04-05 10:26:26', '2024-04-05 10:26:26'),
(93, 104, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/db5cea26ca37aa09e5365f3e7f5dd9eb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 10:31:37', '2024-04-05 10:31:37'),
(94, 104, '<iframe width=\"560\" height=\"315\" src=\"|https://vip.opstream17.com/share/69386f6bb1dfed68692a24c8686939b9\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '2', '2024-04-05 10:31:55', '2024-04-05 10:31:55'),
(95, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/647c30902deaaa927b1cdf13e4cb3dd5\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '7', '2024-04-05 11:00:16', '2024-04-05 11:00:16'),
(96, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/83e1c26494d0a57bd1f806b8b7f283b3\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '8', '2024-04-05 11:00:39', '2024-04-05 11:00:39'),
(97, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/2d321b74176afd496ffdd4240de35f97\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '9', '2024-04-05 11:01:01', '2024-04-05 11:01:01'),
(98, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/1cdae395239224d198f9d07266615439\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '10', '2024-04-05 11:01:18', '2024-04-05 11:01:18'),
(99, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/849c7b9fe5dfea5e93665c8bbfba04f0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '11', '2024-04-05 11:01:44', '2024-04-05 11:01:44'),
(100, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/d64e4fd92a28a9d7b691e34732d55cb3\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '12', '2024-04-05 11:02:04', '2024-04-05 11:02:04'),
(101, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/75b106cadadfe7ffb2ae427acec5041d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '13', '2024-04-05 11:02:22', '2024-04-05 11:02:22'),
(102, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/a645a4db801127af43e9bf4513b34e37\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '14', '2024-04-05 11:02:45', '2024-04-05 11:02:45'),
(103, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/dd75d67912095a58866697d129fdd0e7\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '15', '2024-04-05 11:03:03', '2024-04-05 11:03:03'),
(104, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/22edbb43c1e840c6a6fb39a7a03f1a59\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '16', '2024-04-05 11:03:21', '2024-04-05 11:03:21'),
(105, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/3ab5399acb49634fa9e34acb9c5b4b0f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '17', '2024-04-05 11:03:37', '2024-04-05 11:03:37'),
(106, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/50b8baa8e715e55d43804bb8ce8625d4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '18', '2024-04-05 11:03:52', '2024-04-05 11:03:52'),
(107, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/eefe7f432cc413d0de72d41b6ad7fbad\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '19', '2024-04-05 11:04:10', '2024-04-05 11:04:10'),
(108, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/078489fcf94fc4892f40546d23a09317\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '20', '2024-04-05 11:04:35', '2024-04-05 11:04:35'),
(109, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/4337f7ca32a4a36b744e31b93244e926\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '21', '2024-04-05 11:05:00', '2024-04-05 11:05:00'),
(110, 74, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/c6e935b38be71a5a4194967464a44772\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '22', '2024-04-05 11:05:24', '2024-04-05 11:05:24'),
(111, 73, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/a6d9548a7a1ca9093b7341b45040f7bb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 11:17:14', '2024-04-05 11:17:14'),
(112, 84, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/7cc234202e98d2722580858573fd0817\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 11:19:49', '2024-04-05 11:19:49'),
(113, 113, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/05edf455cb266ccb3ea3ac2715f87326\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 11:28:27', '2024-04-05 11:28:27'),
(114, 114, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/c57abe86de4e516e12dfa386053fbfe2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 11:32:27', '2024-04-05 11:32:27'),
(115, 115, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/cdf1035c34ec380218a8cc9a43d438f9\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 11:37:02', '2024-04-05 11:37:02'),
(116, 116, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/f69e505b08403ad2298b9f262659929a\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 11:40:36', '2024-04-05 11:40:36'),
(117, 117, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/1892f4d2cffabf76d20fc619c2a696c8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:09:33', '2024-04-05 21:09:33'),
(118, 118, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/b158d85ad552b05f1410da163aa96d04\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:12:17', '2024-04-05 21:12:17'),
(119, 119, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/9ea43ce8c6210940b0d770345072b43e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:19:26', '2024-04-05 21:19:26'),
(120, 120, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/a3711aac1e4321e6d19aebbee4595839\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:22:30', '2024-04-05 21:22:30'),
(121, 121, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/c8cd63e1bf13c5016881652983fb615a\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:25:40', '2024-04-05 21:25:40'),
(122, 122, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/a0b36aa0208b361e4103380fb34694bf\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:28:48', '2024-04-05 21:28:48'),
(123, 123, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/ef8446f35513a8d6aa2308357a268a7e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:32:12', '2024-04-05 21:32:12'),
(124, 124, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/fc76150735dde1d2d860aeb77ee2009e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:35:03', '2024-04-05 21:35:03'),
(125, 125, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/0a41cf40123f35dac58d66443fd55e51\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:39:01', '2024-04-05 21:39:01'),
(126, 126, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/09e7655fc1dc8fa7c9d6c4478313d5e6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:41:29', '2024-04-05 21:41:29'),
(127, 127, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/a5e308070bd6dd3cc56283f2313522de\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:43:51', '2024-04-05 21:43:51'),
(128, 128, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/22cf8d98dca2b9de5052ae9253bddef3\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:49:11', '2024-04-05 21:49:11'),
(129, 129, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/c76db12c821b79a91d361a4c705ce6b4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:51:44', '2024-04-05 21:51:44'),
(130, 130, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream14.com/share/11d0e6287202fced83f79975ec59a3a6\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 21:56:45', '2024-04-05 21:56:45'),
(131, 131, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream10.com/share/7e230522657ecdc50e4249581b861f8e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 22:04:25', '2024-04-05 22:04:25'),
(132, 132, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream12.com/share/0c7119e3a6a2209da6a5b90e5b5b75bd\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 22:08:15', '2024-04-05 22:08:15'),
(134, 133, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/afbc32e57e872cc3ecfa37b1bbae5ceb\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 22:13:32', '2024-04-05 22:13:32'),
(135, 134, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/4f8bc5ac1dc2b49434efe9e72f183de8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 22:17:11', '2024-04-05 22:17:11'),
(136, 135, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/1fd7b875d3473501d1b771ebe934ca59\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 22:27:00', '2024-04-05 22:27:00');
INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `updated_at`, `created_at`) VALUES
(137, 136, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/147ebe637038ca50a1265abac8dea181\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 22:31:03', '2024-04-05 22:31:03'),
(138, 137, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/54fda78aa8a09b4d77b5aaec57b75028\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-05 23:26:35', '2024-04-05 23:26:35'),
(139, 138, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/e8f2779682fd11fa2067beffc27a9192\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:19:38', '2024-04-06 03:19:38'),
(140, 139, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/6b8b8e3bd6ad94b985c1b1f1b7a94cb2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:22:25', '2024-04-06 03:22:25'),
(141, 140, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/b5b03f06271f8917685d14cea7c6c50a\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:25:23', '2024-04-06 03:25:23'),
(142, 141, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/1397386b7a1507535c59764a15ee0c98\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:30:24', '2024-04-06 03:30:24'),
(143, 142, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/2c6ae45a3e88aee548c0714fad7f8269\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:33:55', '2024-04-06 03:33:55'),
(144, 143, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/f6c79f4af478638c39b206ec30ab166b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:36:29', '2024-04-06 03:36:29'),
(145, 144, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/d757719ed7c2b66dd17dcee2a3cb29f4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:39:56', '2024-04-06 03:39:56'),
(146, 145, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/b2dd140336c9df867c087a29b2e66034\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:42:39', '2024-04-06 03:42:39'),
(147, 146, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/84d2004bf28a2095230e8e14993d398d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:45:52', '2024-04-06 03:45:52'),
(148, 147, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream17.com/share/35f4a8d465e6e1edc05f3d8ab658c551\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:48:48', '2024-04-06 03:48:48'),
(149, 148, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/18197405b180a434e40551201cd25c54\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:51:15', '2024-04-06 03:51:15'),
(150, 149, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/90c42a8da5f45fdc451fd59001c6355d\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:54:04', '2024-04-06 03:54:04'),
(151, 150, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/4275b1d43051976dd4242f746ee4e6db\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 03:56:52', '2024-04-06 03:56:52'),
(152, 151, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/fce66b28c576f7fa8f94c49c95bea437\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:02:01', '2024-04-06 04:02:01'),
(153, 152, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/0a2c8d94e057ab72ea4f88b67e0bb40e\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:05:32', '2024-04-06 04:05:32'),
(154, 153, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/f76d445d6ca1d2d62872bc0ea1c298bf\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:09:01', '2024-04-06 04:09:01'),
(155, 154, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/23f4bda09be3089bd9a47476b9600c99\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:13:31', '2024-04-06 04:13:31'),
(156, 155, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/59b2178550d2152054d53de3ae845949\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:15:29', '2024-04-06 04:15:29'),
(157, 156, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/23d4d99565af2e6a23fbfef3f48cbe00\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:18:22', '2024-04-06 04:18:22'),
(158, 157, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/70146f21f310c4ccd9078ad0e9b018bd\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:20:47', '2024-04-06 04:20:47'),
(159, 158, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/ea26d7632974b9674121019875916c4b\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:23:50', '2024-04-06 04:23:50'),
(160, 159, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/b70bad7669d7bbd1802342484dcad930\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:26:00', '2024-04-06 04:26:00'),
(161, 160, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream16.com/share/4828decbcf77a6591a9264b2e10ee945\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:28:42', '2024-04-06 04:28:42'),
(162, 161, '<iframe width=\"560\" height=\"315\" src=\"https://vip.opstream11.com/share/2fb58b6192dd1ccdaa7574c54e5f78be\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen></iframe>', '1', '2024-04-06 04:32:40', '2024-04-06 04:32:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `yeuthich` varchar(255) DEFAULT NULL,
  `luu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`id`, `id_movie`, `id_customer`, `yeuthich`, `luu`) VALUES
(34, 62, 1, 'yes', 'yes'),
(38, 63, 1, NULL, 'yes'),
(39, 60, 1, 'yes', 'yes'),
(43, 73, 1, 'yes', 'yes'),
(44, 74, 1, 'yes', 'yes'),
(45, 67, 1, 'yes', 'yes'),
(46, 71, 1, 'yes', 'yes'),
(47, 74, 6, 'yes', 'yes'),
(48, 73, 6, NULL, 'yes'),
(49, 72, 6, NULL, 'yes'),
(50, 71, 6, NULL, 'yes'),
(51, 69, 6, 'yes', 'yes'),
(52, 74, 7, 'yes', 'yes'),
(53, 73, 7, 'yes', 'yes'),
(54, 72, 7, NULL, 'yes'),
(55, 71, 7, 'yes', 'yes'),
(56, 69, 7, 'yes', 'yes'),
(57, 60, 7, 'yes', 'yes'),
(58, 76, 7, NULL, 'yes'),
(59, 72, 1, 'yes', 'yes'),
(60, 72, 8, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hành Động', 'Phim hành động cập nhật nhanh nhất', 1, 'hanh-dong'),
(3, 'Hài Hước', 'Phim hài hước cập nhật hằng ngày', 1, 'hai-huoc'),
(4, 'Lãng Mạn', 'Phim lãng mạn cập nhật nhanh nhất', 1, 'lang-man'),
(5, 'Viễn Tưởng', 'Phim viễn tưởng cập nhật nhanh nhất', 1, 'vien-tuong'),
(6, 'Võ Thuật', 'Phim võ thuật cập nhật nhanh nhất', 1, 'vo-thuat'),
(7, 'Kinh Dị', 'Phim kinh dị cập nhật nhanh nhất', 1, 'kinh-di'),
(8, 'Tâm Lý', 'Phim tâm lý cập nhật nhanh nhất', 0, 'tam-ly'),
(9, 'Gia đình - Học đường', 'Gia đình - Học đường', 1, 'gia-dinh-hoc-duong'),
(10, 'Hoạt hình', 'Thể loại phim hoạt hình cập nhật hằng ngày', 1, 'hoat-hinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `watched` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `histories`
--

INSERT INTO `histories` (`id`, `id_movie`, `id_customer`, `watched`, `updated_at`, `created_at`) VALUES
(22, 69, 6, 'yes', '2024-01-06 06:15:56', '2024-01-06 06:15:56'),
(23, 74, 6, 'yes', '2024-01-06 06:16:43', '2024-01-06 06:16:43'),
(30, 73, 7, 'yes', '2024-01-06 06:21:02', '2024-01-06 06:21:02'),
(34, 69, 7, 'yes', '2024-01-06 06:21:27', '2024-01-06 06:21:27'),
(36, 74, 7, 'yes', '2024-01-06 06:22:11', '2024-01-06 06:22:11'),
(38, 72, 7, 'yes', '2024-01-06 06:32:22', '2024-01-06 06:32:22'),
(39, 67, 7, 'yes', '2024-01-06 06:32:41', '2024-01-06 06:32:41'),
(40, 60, 7, 'yes', '2024-01-06 06:33:02', '2024-01-06 06:33:02'),
(43, 75, 7, 'yes', '2024-01-06 06:34:02', '2024-01-06 06:34:02'),
(45, 71, 7, 'yes', '2024-01-06 06:40:24', '2024-01-06 06:40:24'),
(46, 76, 7, 'yes', '2024-01-06 06:45:38', '2024-01-06 06:45:38'),
(48, 76, 1, 'yes', '2024-01-17 13:43:22', '2024-01-17 13:43:22'),
(49, 70, 28, 'yes', '2024-03-29 12:18:18', '2024-03-29 12:18:18'),
(50, 74, 28, 'yes', '2024-03-29 14:36:18', '2024-03-29 14:36:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `copyright` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `title`, `description`, `logo`, `copyright`) VALUES
(1, 'Phim 2024', 'Website dành cho mục đích học tập, không phải web lậu !!!', 'logo-hutech9724.jpg', 'Copyright : Quang-Quý-Huấn-Tuấn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `thuocphim` varchar(10) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `season` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(50) DEFAULT NULL,
  `ngaycapnhat` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  `sotap` int(11) NOT NULL DEFAULT 1,
  `performer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `phude`, `season`, `ngaytao`, `ngaycapnhat`, `year`, `tags`, `topview`, `trailer`, `sotap`, `performer`) VALUES
(58, 'Yêu Giữa Vùng Nước Dữ - In Love and Deep Water', '160 phút', 'Tình cảm, bí ẩn và hỗn loạn diễn ra trên con tàu sang trọng hướng tới biển Aegean khi một quản gia và một hành khách cố gắng phá giải vụ án mạng khó hiểu.', 1, '6558390a30738893.jpg', 'yeu-giua-vung-nuoc-du-in-love-and-deep-water', 6, 'phimle', 9, 4, 1, 0, 'In Love and Deep Water', 0, 1, '2023-11-21 13:36:03', '2023-12-09 13:05:35', '2022', 'Yêu Giữa Vùng Nước Dữ - In Love and Deep Water', 0, 'https://youtu.be/5f67zosyvMo', 1, 'abc'),
(59, 'RUSTIN', '108 Phút', 'RUSTIN', 1, 'rustin-1403725902.jpg', 'rustin', 4, 'phimle', 8, 2, 1, 4, 'RUSTIN', 0, 1, '2023-11-21 14:55:46', '2023-12-09 13:05:17', '2023', 'RUSTIN', 2, 'https://youtu.be/OB3g37GTALc', 2, 'Colman Domingo,Chris Rock,Glynn Turman'),
(60, 'BIỆT ĐỘI MARVEL', '150 phút', 'Mô tả phim: Carol Danvers, hay còn gọi là Captain Marvel, đã lấy lại danh tính của mình từ Kree độc tài và trả thù Trí tuệ tối cao. Nhưng những hậu quả ngoài ý muốn khiến Carol phải gánh vác gánh nặng của một vũ trụ bất ổn. Khi nhiệm vụ của cô ấy đưa cô ấy đến một hố sâu dị thường có liên quan đến một nhà cách mạng Kree, sức mạnh của cô ấy bị vướng vào sức mạnh của Kamala Khan, một người hâm mộ cuồng nhiệt của Thành phố Jersey, hay còn gọi là Ms. Marvel, và cháu gái bị ghẻ lạnh của Carol, hiện là S.A.B.E.R. phi hành gia thuyền trưởng Monica Rambeau. Cùng với nhau, bộ ba kỳ lạ này phải hợp tác và học cách phối hợp với nhau để cứu vũ trụ.', 1, 'the-marvel-20236929.jpg', 'biet-doi-marvel', 2, 'phimle', 5, 2, 1, 4, 'The Marvels', 0, 1, '2023-11-26 03:28:33', '2024-01-02 19:15:02', '2023', 'BIỆT ĐỘI MARVEL', NULL, 'https://youtu.be/1myF4CtgoLw', 1, 'Brie Larson, Iman Vellani, Teyonah Parris, Samuel L. Jackson'),
(61, 'ĐÓNG DẤU TỪ ĐẦU', '92 phút', 'Đóng Dấu Từ Đầu kể về với hoạt họa sáng tạo và hiểu biết sâu sắc từ chuyên gia, bộ phim tài liệu dựa trên cuốn sách ăn khách của Ibram X. Kendi khám phá lịch sử của các ý niệm phân biệt chủng tộc ở Mỹ.', 1, 'dongdaututhan5715.jpg', 'dong-dau-tu-dau', 4, 'phimle', 1, 4, 1, 0, 'Stamped from the Beginning', 0, 0, '2023-11-26 14:30:42', '2024-01-02 19:16:05', '2023', 'ĐÓNG DẤU TỪ ĐẦU', NULL, 'https://youtu.be/HMYLFQbyIu4', 1, 'Angela Davis, Honorée Fanonne,  Jeffers'),
(62, 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', '152 phút', 'Mô tả phim: Harry Potter và Hòn Đá Phù Thủy là bộ phim đầu tiên trong series phim “Harry Potter” được xây dựng dựa trên tiểu thuyết của nhà văn J.K.Rowling. Nhân vật chính của phim, Harry Potter - một cậu bé 11 tuổi sau khi mồ côi cha mẹ đã bị gửi đến nhà dì dượng của mình, gia đình Dursley. Tuy nhiên, cậu bé bị ngược đãi và không hề biết về thân phận thực sự của mình. Vào sinh nhật thứ 11 của Harry, một người lai khổng lồ là Rubeus Hagrid đã đến tìm cậu bé để đưa cậu về trường Pháp Thuật Hogwarts. Lúc này, Harry mới biết được mình là phù thủy và một phần câu chuyện về cha mẹ mình, những người đã bị Voldemort giết hại. Cùng với trí thông minh và lòng dũng cảm, cậu bé đã cùng những người bạn của mình khám phá những điều bí mật nguy hiểm về thế giới của phép thuật…', 1, 'Harry-Potter-va-Hon-da-Phu-thuy9006.jpg', 'harry-potter-va-hon-da-phu-thuy', 4, 'phimle', 5, 4, 1, 0, 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', 0, 0, '2023-11-26 14:31:59', '2023-12-09 13:11:50', '2023', 'HARRY POTTER VÀ HÒN ĐÁ PHÙ THỦY', NULL, 'https://youtu.be/yBAGclXF3Jk', 1, 'Daniel Radcliffe, Richard Harris, Warwick Davis'),
(63, 'ALVIN & THE CHIPMUNKS: SÓC CHUỘT DU HÍ', '92 phút', 'Phim Sóc Siêu Quậy 4: Sóc Chuột Du Hí 2015 là câu chuyện tiếp nối về ban nhạc sóc chuột gồm 6 thành viên mang tên Chipmunks and Chipettes. Câu chuyện của phần 3 phim hay này xoay quanh chuyến du ngoạn trên biển của nhóm nhạc sóc chuột cùng chú quản lý Dave trước khi tham gia show diễn quốc tế. Thế nhưng, thay vì tận hưởng kỳ nghỉ 5 sao trên du thuyền sang trọng, cả nhóm sóc chuột cầm đầu là Alvin lại quậy phá gây bao thiệt hại.\r\nĐiều này khiến quản lý Dave vô cùng giận dữ, cấm túc cả nhóm trong phòng và lại càng khiến Alvin quyết tâm đào thoát. Vô tình, cậu nhóc dẫn cả nhóm đến một hoang đảo. Và tại đây, nhóm sóc chuột phải đối mặt với những nguy hiểm chưa từng trải qua. Liệu phim sẽ diễn biến thế nào mời các bạn cùng theo dõi bộ phim Siêu Quậy 4 và có những giây phút xem phim online tuyệt vời!', 1, 'Leo_netflix_20234316.jpg', 'alvin-the-chipmunks-soc-chuot-du-hi', 4, 'phimle', 1, 4, 1, 4, 'Alvin and the Chipmunks: The Road Chip', 0, 0, '2023-11-26 14:33:03', '2024-01-02 19:12:12', '2023', 'ALVIN & THE CHIPMUNKS: SÓC CHUỘT DU HÍ', NULL, 'https://youtu.be/JxJNweZ1YgQ', 1, 'Jason Lee, Bella Thorne, Tony Hale'),
(64, 'Có bạn gái mùa 2', '23 phút/tập', 'Một thanh niên vừa mới có bạn gái, thì bỗng dưng lòi đâu ra một bé nữa cũng đến tỏ tình và như bao aura main nam khác, thì thanh niên làm gì thì các bác cũng đoán ra được rồi đấy', 1, 'Cobangai2016.jpg', 'co-ban-gai-mua-2', 4, 'phimbo', 1, 4, 1, 0, 'カノジョも彼女2期', 0, 0, '2023-11-26 14:34:50', '2023-12-09 13:11:44', '2023', 'Có bạn gái mùa 2', 0, 'https://youtu.be/foDn-llhpic', 8, 'Enoki Junya, Sakura Ayane, Waki Azumi'),
(65, 'PERCY JACKSON VÀ CÁC VỊ THẦN TRÊN ĐỈNH OLYMPUS', '50 phút/tập', 'Percy Jackson đang thực hiện một nhiệm vụ nguy hiểm. Vượt qua những con quái vật và những vị thần thông minh hơn, anh phải hành trình xuyên nước Mỹ để trả lại mũi tên chủ chốt của Zeus và ngăn chặn một cuộc chiến tranh tổng lực. Với sự giúp đỡ của những người bạn đồng hành là Annabeth và Grover, cuộc hành trình của Percy sẽ đưa anh đến gần hơn với câu trả lời mà anh tìm kiếm: làm thế nào để hòa nhập vào một thế giới nơi anh cảm thấy lạc lõng và tìm ra con người định', 1, 'percy-jackson-va-nhung-vi-than-dinh-olympus9206.jpg', 'percy-jackson-va-cac-vi-than-tren-dinh-olympus', 4, 'phimle', 5, 2, 1, 4, 'Percy Jackson and the Olympians', 0, 0, '2024-01-05 22:55:33', '2024-01-05 22:55:33', '2023', 'Percy Jackson and the Olympians', NULL, 'https://youtu.be/-y9dEXkuIn8?si=dyVMuZ6PGBcYHwHD', 4, NULL),
(66, 'NHÀ VỊT DI CƯ', '83 Phút', 'Đến mùa di cư, những đàn vịt nối đuôi nhau bay lượn vô cùng nhộn nhịp trên bầu trời. Một gia đình vịt nọ được dẫn dắt bởi vịt bố, cũng đã sẵn sàng “cất cánh” cho chuyến bay đến vùng đất mới trong tâm thế đầy hào hứng và vui vẻ. Thành viên phi hành đoàn cũng có độ tuổi rất đa dạng, từ “trẻ nhỏ”, “thiếu niên” cho đến vịt “trung niên”. Đang tự do bay lượn trong làn mây trắng bồng bềnh, nhà vịt đột ngột gặp phải cơn mưa lớn. Tiu ngỉu ôm nhau trú mưa dưới miếng gỗ nho nhỏ, cả nhà bỗng đối mặt với một sinh vật toát ra cảm giác đáng sợ nguy hiểm khó lường.', 1, 'apQL85BMRgkBWQq6pBXKOLfCyaV8195.jpg', 'nha-vit-di-cu', 2, 'phimle', 1, 2, 1, 5, 'Migration', 0, 0, '2024-01-05 23:02:44', '2024-01-05 23:02:44', NULL, 'Migration', NULL, 'https://youtu.be/mGfIsiGJr0k?si=gVB3hrN3VJvR2pgL', 1, NULL),
(67, 'PAW PATROL: ĐỘI ĐẶC NHIỆM SIÊU ĐẲNG', '1h 29phút', 'Không thành phố nào quá lớn, không tiếng sủa nào quá nhỏ! Ryder và đội cún dũng cảm đến Thành phố Phiêu Lưu sau khi Thị trưởng Humdinger tham lam lên nắm quyền và bắt đầu gây rối.', 1, '40eff5a5-1db2-476a-a54b-e5cb2288a5126002.jpg', 'paw-patrol-doi-dac-nhiem-sieu-dang', 2, 'phimle', 1, 2, 1, 0, 'Paw Patrol: The Movie', 0, 0, '2024-01-05 23:07:47', '2024-01-05 23:07:47', NULL, 'Paw Patrol: The Movie', NULL, 'https://youtu.be/Ql_DDtbnFhg?si=cuaxZbYwp54fMqUA', 1, NULL),
(68, 'PHI ĐỘI GÀ BAY 2: ÂM MƯU GÀ NUGGET', '101 phút', 'Một đàn gà dũng cảm tập hợp lại để cứu loài gia cầm khỏi mối đe dọa mới đáng ngại: trang trại gần đó đang âm mưu điều gì đó đáng ngờ.', 1, 'chicken-run-dawn-of-the-nugget746.jpg', 'phi-doi-ga-bay-2-am-muu-ga-nugget', 6, 'phimle', 1, 2, 1, 0, 'Chicken Run: Dawn of the Nugget', 0, 0, '2024-01-05 23:13:41', '2024-01-05 23:13:41', NULL, 'Chicken Run: Dawn of the Nugget', NULL, 'https://youtu.be/VXSIvn8iHUA?si=McTGhmcy7p7HMTMQ', 1, NULL),
(69, 'ĐẶC VỤ TỰ DO', '108 phút', 'Một cựu đặc vụ của lực lượng đặc biệt nhận công việc đảm bảo an ninh cho một nhà báo khi cô phỏng vấn một nhà độc tài, nhưng một cuộc đảo chính quân sự nổ ra ngay giữa cuộc phỏng vấn, họ buộc phải trốn vào rừng nơi họ phải sống sót.', 1, 'dac-vu-tu-do-643847.png', 'dac-vu-tu-do', 2, 'phimle', 3, 2, 1, 0, 'Freelance', 0, 0, '2024-01-05 23:18:01', '2024-01-05 23:18:01', NULL, 'Freelance', NULL, 'https://youtu.be/BrqWlOzm2Iw?si=cOf2-3b2NM8NCs-i', 1, NULL),
(70, 'THẾ GIỚI MA QUÁI (PHẦN 2)', '52 phút/tập', 'Khi con người biến thành quái vật man rợ gieo rắc kinh hoàng, một thiếu niên trăn trở và hàng xóm ở căn hộ của cậu phải chiến đấu để sinh tồn – và giữ lấy nhân tính.', 1, 'QJKkR7_4c3509.jpg', 'the-gioi-ma-quai-phan-2', 4, 'phimbo', 5, 5, 1, 0, 'Sweet Home Season 2', 0, 0, '2024-01-05 23:24:36', '2024-01-05 23:24:36', NULL, 'Sweet Home Season 2', NULL, 'https://youtu.be/IkI7VI-wYPQ?si=HJaBWqXT_zi3BSC1', 8, NULL),
(71, 'AQUAMAN 2: VƯƠNG QUỐC THẤT LẠC (VIETSUB)', '124 phút', 'Đạo diễn James Wan và Jason Momoa trong vai Aquaman—cùng với Patrick Wilson, Amber Heard, Yahya Abdul-Mateen II và Nicole Kidman sẽ trở lại trong phần tiếp theo của bộ phim DC có doanh thu cao nhất mọi thời đại “Aquaman Và Vương Quốc Thất Lạc (tựa gốc: Aquaman and the Lost Kingdom)”.', 1, 'aquaman-2-164205957073.jpg', 'aquaman-2-vuong-quoc-that-lac-vietsub', 2, 'phimle', 5, 2, 1, 0, 'Aquaman and the Lost Kingdom', 0, 0, '2024-01-05 23:30:58', '2024-01-05 23:32:28', NULL, 'Aquaman and the Lost Kingdom', NULL, 'https://youtu.be/keZ70jipjXc?si=ygMo7w3cFqSeZine', 1, NULL),
(72, 'TRẠNG QUỲNH', '1h33 phút', 'Chàng trai thông minh, lắm trò ma mãnh nỗ lực giải oan cho người thầy yêu quý của mình khỏi lời luận tội đáng ngại liên quan đến một gã quan liêu gian xảo.', 1, '8vojcowt_660x946-trangquynh5199.jpg', 'trang-quynh', 2, 'phimle', 1, 1, 1, 0, 'Trang Quynh', 1, 0, '2024-01-05 23:37:25', '2024-01-05 23:37:25', NULL, 'Trang Quynh', NULL, 'https://youtu.be/8BmOFYBU62U?si=VptqUjVOAIENNEjZ', 1, NULL),
(73, 'POKÉMON CONCIERGE', '15 phút/tập', 'Chào mừng bạn đến với Khu nghỉ dưỡng Pokémon, nơi yên bình để Pokémon thư giãn và vui chơi. Nhân viên tiền sảnh mới Haru sẽ kết bạn và giúp đỡ vị khách đáng yêu nào trước đây?', 1, 'konsjerzka-pokemonow_1__300_4277811.jpg', 'pokemon-concierge', 2, 'phimle', 1, 4, 1, 0, 'Pokémon Concierge', 0, 0, '2024-01-05 23:41:55', '2024-01-05 23:41:55', NULL, 'Pokémon Concierge', NULL, 'https://youtu.be/a1zmhHLVrq0?si=0jAQ8B7mnAAT-Nrp', 4, NULL),
(74, 'CHÚ THUẬT HỒI CHIẾN 2', '24 phút/tập', 'Yuuji Itadori, một học sinh trung học, dành cả ngày để tham gia một cách thụ động vào các hoạt động huyền bí giả mạo với Câu lạc bộ Huyền bí ở phòng câu lạc bộ hoặc bệnh viện nơi cậu đến thăm ông nội đang ốm của mình. Lối sống thanh bình của anh nhanh chóng trở nên kỳ lạ khi anh tình cờ phát hiện ra một cổ vật bị nguyền rủa. Một ngón tay của quỷ Sukuna Ryoumen, Vua của những lời nguyền, được cho là đã bị anh nuốt vào khi ăn. Đột nhiên bị đẩy vào vương quốc đáng sợ của Lời nguyền—những sinh vật được tạo ra từ lòng căm thù và sự tiêu cực của con người—Yuuji thấy mình bị mắc kẹt ở đó. Bây giờ chúng ta hãy tiếp tục theo dõi mùa thứ hai!', 1, 'chu-thuat-hoi-chien5060.jpg', 'chu-thuat-hoi-chien-2', 2, 'phimbo', 5, 1, 1, 0, 'Jujutsu Kaisen 2 || Sorcery Fight 2', 0, 0, '2024-01-05 23:49:05', '2024-01-05 23:49:05', NULL, 'Jujutsu Kaisen 2 || Sorcery Fight 2', NULL, 'https://youtu.be/Pm-wNmS9RGI?si=7r8RwawVRlCErn3a', 23, NULL),
(75, 'TÌNH CA ẢO MỘNG', '60 phút/tập', 'Khi Jung Ji-An (Kim Hye Jun) còn nhỏ, mẹ cô bị cha cô s.á.t h.ạ.i sau đó t.ự s.á.t. Chú của ấy là Jung Jin Man (Lee Dong Wook) đã nuôi dậy cô bé kể từ đó. Cô bé không hề biết rằng chú mình đã bí mật điều hành một trung tâm mua sắm bí ẩn. Jung Ji An sau khi đăng ký vào một trường đại học thì đã rời khỏi nhà của chú và bắt đầu sống một mình. Một ngày nọ, Jung Ji An nghe tin chú của cô đột ngột qua đời. Cô trở về nhà của chú mình và biết được bí mật mà chú cô ấy đã chôn giấu bấy lâu nay. Bị bao quanh bởi những mối nguy hiểm do công việc của chú, liệu cô ấy có lựa chọn tiếp tục làm hay không?', 1, 'the-princess-man-e15954933715636322.jpg', 'tinh-ca-ao-mong', 4, 'phimbo', 6, 5, 1, 0, 'Love Song For Illusion', 0, 0, '2024-01-06 00:05:51', '2024-01-06 00:05:51', NULL, 'A Shop for Killers', NULL, 'https://youtu.be/NnCgxS3jhZE?si=9wLlXsj7aN39qmGV', 8, NULL),
(76, 'TÌNH YÊU CHỐN ĐÔ THỊ', '30 phút/tập', 'Tình Yêu Chốn Đô Thị kể về câu chuyện đem lòng yêu một cô gái phóng khoáng sau cuộc gặp lãng mạn bên bờ biển, một kiến trúc sư nhiệt huyết bắt đầu tìm cách gặp lại cô ở Seoul.', 1, 'th5996.jpg', 'tinh-yeu-chon-do-thi', 4, 'phimbo', 8, 5, 1, 0, 'Lovestruck in the City', 0, 0, '2024-01-06 00:11:34', '2024-01-06 00:11:34', NULL, 'Lovestruck in the City', NULL, 'https://youtu.be/HytY9PrO9f0?si=G-cOiXXOdOAtfQQR', 17, NULL),
(79, 'A RECORD OF SWEET MURDERER', '1h 25m', 'Soyeon, một nhà báo tích cực, nhận được cuộc gọi từ một kẻ giết người hàng loạt. Tiết lộ mình là Sangjoon, bạn thời thơ ấu của Soyeon, anh ta là kẻ chạy trốn sau khi trốn khỏi viện tâm thần và giết chết 18 người. Yêu cầu của anh ấy đáng ngạc nhiên là một cuộc phỏng vấn cá nhân. Đồng ý giúp bạn mình chuộc lỗi, Soyeon làm theo yêu cầu và đưa một người quay phim người Nhật đến nơi ẩn náu của tên sát nhân. Sangjoon đe dọa người quay phim sẽ ghi lại mọi thứ trong một lần cắt liên tục khi anh ta giải thích lý do dẫn đến vụ giết người. Từ giết người đến hãm hiếp, hỗn loạn và khủng bố, Soyeon cố gắng hết sức để hiểu được tình hình và ngăn chặn số phận khủng khiếp.', 1, '2120.webp', 'a-record-of-sweet-murderer', 2, 'phimle', 1, 4, 1, 0, 'A Record Of Sweet Murderer', 0, 0, '2024-04-04 00:00:59', '2024-04-04 00:00:59', NULL, 'a-record-of-sweet-murderer', NULL, 'H5Pk_pQlKxQ?si=IzT61gmp0h3G-m9V', 1, NULL),
(80, 'DEATH STRANDING', '1h 37m', 'Trong hàng thập kỷ, Hồ Thành rơi vào tình trạng hỗn loạn do ngành công nghiệp giải trí ngầm tham nhũng và rửa tiền. Thế lực tội phạm do Tứ Gia và Cục trưởng Cục điều tra thương mại Tả Quân Triết cầm đầu đã bí mật kiểm soát tình hình, cố gắng tranh giành quyền quản lý. Để lập lại trật tự và quyết tâm xóa bỏ mạng lưới tội phạm nguy hiểm này, cảnh sát Giang Văn Phong đã phát động một cuộc đối đầu đầy kịch tính.', 1, '15792.jpg', 'death-stranding', 2, 'phimle', 1, 6, 1, 0, 'Death Stranding', 0, 0, '2024-04-04 00:05:05', '2024-04-04 00:05:05', NULL, 'death-stranding', NULL, 'https://youtu.be/i_3a_pnfzD0?si=XPe6Ifpczh0-dHK4', 1, NULL),
(81, 'TƯƠNG TÂY QUỶ SỰ', '73 Phút', 'Tương Tây Quỷ Án\r\nNgười dân Tương Tây yêu quê hương và có tục lệ đưa lá rụng về cội, cùng với địa lý địa phương hiểm trở, điều này đã làm nảy sinh nghề săn xác chết. Long Thất và đồ đệ Long Bình An là những người săn xác chết nổi tiếng ở thị trấn địa phương. Hai mươi năm trước, Long Thất gặp phải tình huống đáng sợ nhất khi làm nghề. Hai mươi năm sau, với sự xuất hiện của một xác chết không đầu, một loạt sự kiện kỳ lạ bắt đầu xảy ra trong thị trấn, và đáng ngạc nhiên là những sự kiện này có liên quan đến những gì Long Thất đã trải qua hai mươi năm trước...', 1, 'tuong-tay-quy-an-thumb3514.jpg', 'tuong-tay-quy-su', 2, 'phimle', 1, 6, 1, 0, 'Strange Things in Western Hunan', 0, 0, '2024-04-04 00:11:59', '2024-04-04 00:11:59', NULL, 'Strange Things in Western Hunan', NULL, 'https://youtu.be/tCcXzkhTiQA?si=vAlHQlvAT-4HI1Yp', 1, NULL),
(82, 'MẠCH LỘ CUỒNG ĐAO', '102 Phút', 'Mạch Lộ Cuồng Đao\r\nMạch Đao huấn luyện viên quân sự Điền An Nghiệp bảo vệ đất nước và canh giữ biên giới, giết chết vô số kẻ thù. Tuy nhiên, anh ta lại vướng vào cuộc tranh giành chính tử, và đồn trú của Lương Thành bị thảm sát, và ba trăm anh em Mạch Đao chết một cách bi thảm. Điền An Nghiệp chán nản và sống ẩn dật ở thành phố Lạc Dương bán than để kiếm sống. Tân hoàng đế sắp lên ngôi, Điền An Nghiệp vào thành bán than và vô tình cứu được một người phụ nữ và một em bé đang bị săn đuổi. Họ không hề biết rằng đứa bé chính là xương thịt duy nhất của hoàng tử bị sát hại. Dòng dõi trực hệ của vua nước Tề, Thứ Phi Quân, nghe tin và đến. Thứ Phi Quân người đã quyết định phần còn lại của cuộc đời mình, một lần nữa gây ra một làn sóng lớn ở thành phố Lạc Dương.', 1, 'v_175636619_m_601_vi_260_36054.jpg', 'mach-lo-cuong-dao', 2, 'phimle', 1, 6, 1, 0, 'The Wild Blade of Strangers', 0, 0, '2024-04-04 00:16:00', '2024-04-04 00:16:00', NULL, 'Mạch Lộ Cuồng Đao', NULL, 'https://youtu.be/dYo_Fmf2e0c?si=_64Y6QinxIAHE6sj', 1, NULL),
(84, 'ĐỊCH NHÂN KIỆT: THÔNG THIÊN HUYỀN ÁN', '85 Phút', 'Địch Nhân Kiệt: Thông Thiên Huyền Án\r\nVào thời nhà Đường, Công chúa Thái Bình có một \"giấc mơ về xứ sở thần tiên\", trong đó Cô cưỡi \"ngựa bạch tuyết bạc\" phi nước đại dưới ánh trăng, nữ nhà giả kim Huyền Cơ đã giải thích giấc mơ của mình và con ngựa trắng được gọi là \"Pegasus\", và biến giấc mơ của công chúa thành hiện thực. Huyễn Cơ được sủng ái. Lúc này, thám tử Địch Nhân Kiệt của nhà Đường đã phá được một “vụ án tiêu diệt gia đình”, nhưng hóa ra đó lại là một bi kịch cuộc đời do “Thiên Mã” gây ra.', 1, 'v_175503031_m_601_vi_260_36047.jpg', 'dich-nhan-kiet-thong-thien-huyen-an', 2, 'phimle', 1, 6, 1, 0, 'Detective Dee and the Phantom of Waning Moon', 0, 0, '2024-04-04 00:33:37', '2024-04-04 00:33:37', NULL, 'Địch Nhân Kiệt: Thông Thiên Huyền Án', NULL, 'https://youtu.be/ZmyIYkbqUsw?si=orTDyS7XRo3awboT', 1, NULL),
(85, 'HOA THIÊN CỐT', '84 Phút', 'Hoa Thiên Cốt\r\nĐể tránh sự hồi sinh của con quỷ, Bai Zihua bất tử đã dẫn dắt thế giới bất tử cố gắng phong ấn con quỷ một lần nữa. Anh và đệ tử của mình, đứa trẻ mồ côi Hua Qiangu, phát triển mối quan hệ nhưng phải đối mặt với một cuộc khủng hoảng thế giới thậm chí còn lớn hơn.', 1, 'images (12)18.jpg', 'hoa-thien-cot', 2, 'phimle', 6, 1, 1, 0, 'The Journey of Flower', 0, 0, '2024-04-04 00:42:03', '2024-04-04 00:42:03', NULL, 'Hoa Thiên Cốt', NULL, 'https://youtu.be/zbld4yW7kJs?si=ZuUgzv61LcDkyjCf', 1, NULL),
(86, 'HỌA GIANG HỒ: BẤT LƯƠNG SOÁI', '0 Phút', 'Ba trăm năm trước, Thiếu niên xuất sắc Viên Thiên Cương, do số mệnh tự nhiên bị bỏ rơi, từ nhỏ đã giết chết những người thân xung quanh mình. Từ đó, anh quyết định sử dụng nghệ thuật chiêm tinh \"Châm Cốt Chiêm Mệnh\", chuyên sát hại những người có số mệnh không nên chấm dứt. Lúc đó, là cuối thời kỳ nhà Tùy, khi đất nước hỗn loạn Viên Thiên Cương sẽ làm thế nào để thay đổi số phận và trở thành một tướng quân mà mọi người kính trọng?', 1, 'v_175147671_m_601_vi_m1_260_36086.jpg', 'hoa-giang-ho-bat-luong-soai', 2, 'phimle', 6, 6, 1, 0, 'The Story of Yuan Tiangang', 0, 0, '2024-04-04 00:50:12', '2024-04-04 00:50:12', NULL, 'HỌA GIANG HỒ: BẤT LƯƠNG SOÁI', NULL, 'https://youtu.be/5NnH2yWQNq8?si=VNLMt-l6vn_HNYvm', 1, NULL),
(88, 'GODZILLA X KONG: ĐẾ CHẾ MỚI (VIETSUB)', '?? Phút', 'Godzilla x Kong: Đế Chế Mới Sau cuộc đối đầu bùng nổ, Godzilla và Kong phải đoàn tụ để chống lại một mối đe dọa khổng lồ chưa được khám phá ẩn giấu trong thế giới của chúng ta, thách thức chính sự tồn tại của họ - và của chính chúng ta.', 1, 'godzilla-x-kong-de-che-moi-thumb56.jpg', 'godzilla-x-kong-de-che-moi-vietsub', 2, 'phimle', 1, 2, 1, 0, 'Godzilla x Kong: The New Empire', 0, 0, '2024-04-04 00:55:24', '2024-04-04 00:55:24', NULL, 'Godzilla x Kong: The New Empire', NULL, 'https://youtu.be/B2Jlyq_Tf3Y?si=woNGvseYh_0QxdWF', 1, NULL),
(89, 'NHÀ VEN ĐƯỜNG', '121 phút', 'Road House là một bộ phim hành động Mỹ năm 2024 của đạo diễn Doug Liman từ kịch bản của Anthony Bagarozzi và Chuck Mondry, và là phiên bản làm lại của bộ phim năm 1989. Phim có sự tham gia của Jake Gyllenhaal, Daniela Melchior, Conor McGregor (trong bộ phim đầu tay của anh), J. D. Pardo, Arturo Castro và Billy Magnussen. Joel Silver sản xuất bộ phim, như anh ấy đã làm bản gốc.\r\n\r\nRoad House đã có buổi ra mắt thế giới vào ngày 8 tháng 3 năm 2024, tại South by Southwest dưới dạng phim đêm khai mạc và được Amazon MGM Studios phát hành thông qua Prime Video vào ngày 21 tháng 3 năm 2024. Bộ phim nhận được nhiều ý kiến trái chiều từ các nhà phê bình, với một số ca ngợi diễn xuất của Gyllenhaal và những người khác chỉ trích kịch bản và việc sử dụng rộng rãi CGI cho các cảnh chiến đấu.', 1, 'images (11)62.jpg', 'nha-ven-duong', 2, 'phimle', 1, 2, 0, 0, 'Road House', 0, 0, '2024-04-04 00:58:40', '2024-04-04 00:58:40', NULL, 'Road-House', NULL, 'https://youtu.be/Y0ZsLudtfjI?si=JRCJ50QJT1MKGX6p', 1, NULL),
(90, 'ĐIỀU ƯỚC IRELAND', '94 Phút', 'Điều ước Ireland\r\nCòn vài ngày nữa là chàng trai trong mộng của Maddie cưới bạn thân của cô. Và rồi điều ước về tình yêu đích thực trước hòn đá cổ ở Ireland thay đổi số phận của cô một cách kỳ diệu.', 1, 'images (10)1.jpg', 'dieu-uoc-ireland', 2, 'phimle', 3, 2, 0, 0, 'Irish Wish', 0, 0, '2024-04-04 01:00:51', '2024-04-04 01:00:51', NULL, 'Irish Wish', NULL, 'https://youtu.be/_gKXowSyfjM?si=PV62SzNZCz8fS565', 1, NULL),
(91, 'PLAYERS', '1h45phút', 'Players Sáng tác cuốn sách về kế hoạch cặp kè thông minh, nhà văn thể thao nọ ở New York bất ngờ rơi vào lưới tình. Liệu cô có thể chuyển từ vui chơi qua đường sang yêu đương nghiêm túc?', 1, 'Players_2024_poster61.jpg', 'players', 2, 'phimle', 4, 2, 0, 0, 'PLAYERS', 0, 0, '2024-04-04 01:02:55', '2024-04-04 01:02:55', NULL, 'PLAYERS', NULL, 'https://youtu.be/8gH6AEBwEAw?si=02g9qAedNPl3vSEp', 1, NULL),
(92, 'MẬT VỤ ONG', '105 Phút', 'Mật Vụ Ong Chiến dịch báo thù của một người đàn ông trở nên quan trọng trên toàn quốc sau khi anh ta được tiết lộ là cựu đặc vụ của một tổ chức bí mật và quyền lực được gọi là Người nuôi ong.', 1, 'poster_mat_vu_ong_514.jpg', 'mat-vu-ong', 2, 'phimle', 1, 2, 0, 0, 'The Beekeeper', 0, 0, '2024-04-04 01:08:44', '2024-04-04 01:08:44', NULL, 'The Beekeeper', NULL, 'https://youtu.be/SzINZZ6iqxY?si=6fdw02UtvbRKlkTj', 1, NULL),
(93, 'NHỮNG CÔ NÀNG LẮM CHIÊU (VIETSUB)', '113 Phút', 'Học sinh mới Cady Heron được chào đón vào vị trí đứng đầu chuỗi thức ăn xã hội bởi nhóm các cô gái nổi tiếng ưu tú có tên là \'The Plastics\', được cai trị bởi ong chúa quỷ quyệt Regina George và tay sai của cô ta là Gretchen và Karen. Tuy nhiên, khi Cady mắc sai lầm lớn khi phải lòng Aaron Samuels, bạn trai cũ của Regina, cô thấy mình trở thành con mồi trong tầm ngắm của Regina. Khi Cady chuẩn bị hạ gục kẻ săn mồi đỉnh cao của nhóm với sự giúp đỡ của những người bạn bị ruồng bỏ Janis và Damian, cô phải học cách sống thật với chính mình trong khi điều hướng khu rừng khốc liệt nhất: trường trung học.', 1, 'Mean Girls 2024302282.jpg', 'nhung-co-nang-lam-chieu-vietsub', 2, 'phimle', 3, 2, 0, 0, 'Mean Girls', 0, 0, '2024-04-04 01:12:33', '2024-04-04 01:12:33', NULL, 'Mean Girls', NULL, 'https://youtu.be/fFtdbEgnUOk?si=QymCLvRk6CjS_2Cg', 1, NULL),
(94, 'TRÒ CHƠI CỦA THẦN', '24 phút/tập', 'Reiyan Asura, nếu đó là tên thật của anh ấy, thức tỉnh trong khoảng không, bị ràng buộc bởi xiềng xích. Anh ta không nhớ mình là ai hay làm thế nào anh ta đến được thế giới màu trắng này. Anh ấy không hề biết rằng anh ấy đã cùng hàng triệu người khác tham gia vào một trò chơi phức tạp, nơi chỉ có kẻ mạnh nhất mới thắng thế. Reiyan tuy mạnh mẽ nhưng liệu anh có bí mật nào có thể giúp anh sống sót không? Chào mừng đến với trò chơi của Thần. Hãy chứng minh giá trị của bạn hoặc chết để giải trí cho Ngài.', 1, 'tro-choi-cua-than-thumb17.jpg', 'tro-choi-cua-than', 4, 'phimbo', 1, 4, 1, 0, 'Gods\' Game We Play', 0, 0, '2024-04-04 01:15:16', '2024-04-04 01:15:16', NULL, 'Gods\' Game We Play', NULL, 'https://youtu.be/r-Gdw8-mAQA?si=I4T6esnCWg-a0wIw', 24, NULL),
(95, 'NỮ PHỤ PHẢN DIỆN CẤP 99: TÔI LÀ TRÙM CUỐI NHƯNG KHÔNG PHẢI MA VƯƠNG', '24 phút/tập', 'Một tựa game otome nhất định diễn ra trong Vương quốc Varschein, nơi mà tóc đen bị đánh đồng một cách không bình thường. Eumiella Dolkness là con gái của một bá tước, bị ghét bỏ ngay từ khi còn nhỏ do mái tóc đen huyền của mình - và cô ấy cũng chính là \"hidden boss\" (đối thủ mạnh mẽ nhưng ẩn dật) trong trò chơi! Trong một sự thay đổi bất ngờ, ở tuổi năm, Eumiella nhớ lại kí ức của kiếp sống trước ở Nhật Bản. Không quan tâm đến khía cạnh lãng mạn của trò chơi gốc, cô ấy bắt đầu tập trung đào tạo kỹ thuật ma thuật độc đáo của mình.', 1, 'images (9)46.jpg', 'nu-phu-phan-dien-cap-99-toi-la-trum-cuoi-nhung-khong-phai-ma-vuong', 2, 'phimle', 1, 4, 1, 0, 'Villainess Level 99: I May Be the Hidden Boss but I\'m Not the Demon Lord', 0, 0, '2024-04-04 01:17:33', '2024-04-04 01:17:33', NULL, 'Villainess Level 99: I May Be the Hidden Boss but I\'m Not the Demon Lord', NULL, 'https://youtu.be/Ojv7vHiIDqg?si=FsvnHsRDpkZyNamQ', 12, NULL),
(96, 'BÀ THÍM BÁO THÙ', '113 Phút', 'Kẻ lừa tiền “quay xe”, cầu cứu sự trợ giúp từ chính nạn nhân mà mình đã lừa đảo! Đang chật vật vay mượn khắp nơi để tiếp tục duy trì cửa tiệm giặt ủi sau hoả hoạn, Duk Hee nhận được cú điện thoại từ Son, tự xưng là nhân viên ngân hàng với lời hứa hẹn sẽ cấp cho cô một khoản vay với lãi suất ưu đãi. Tuy nhiên, Son yêu cầu Duk Hee phải gửi trước cho anh ta một khoản tiền gọi là “phí vay mượn”. Sau khi chuyển tiền, người phụ nữ tội nghiệp mới bàng hoàng nhận ra mình vừa trở thành nạn nhân của một kẻ chuyên lừa đảo qua điện thoại di động. Cú lừa này đã khiến Duk Hee mất toàn bộ tài sản và đối mặt với nguy cơ bị tống ra đường cùng hai đứa con. Giận dữ, oán trách nhưng Duk Hee nghĩ rằng cô sẽ không thể tìm được danh tính của Son. Cho tới một ngày nọ, Son bỗng chủ động liên lạc với Duk Hee và đưa ra một lời cầu cứu thảm thiết…', 1, 'images (8)54.jpg', 'ba-thim-bao-thu', 2, 'phimle', 3, 5, 1, 0, 'Citizen of a Kind', 0, 0, '2024-04-04 01:19:40', '2024-04-04 01:19:40', NULL, 'Citizen of a Kind', NULL, 'https://youtu.be/6keABqU6RQ4?si=JwYcmxChTE7wP9aZ', 1, NULL),
(97, 'TÊN TÔI LÀ LOH KIWAN', '131 Phút', 'Sau khi đào thoát khỏi Triều Tiên, Loh Kiwan chật vật xin tị nạn ở Bỉ. Tại đó, anh tình cờ gặp một người phụ nữ chán chường đã mất hết hi vọng.', 1, '1-17094659033401435506697-1709467989011-1709467989433588510209-1709479965964-1709479966240149327670410.webp', 'ten-toi-la-loh-kiwan', 2, 'phimle', 1, 5, 1, 0, 'My Name Is Loh Kiwan', 0, 0, '2024-04-04 01:21:45', '2024-04-04 01:21:45', NULL, 'My Name Is Loh Kiwan', NULL, 'https://youtu.be/oxsR6jEoeBU?si=sRQ0uDac3Zy2ueEj', 1, NULL),
(98, 'EXHUMA: QUẬT MỘ TRÙNG MA', '134 Phút', 'Sau khi hứng chịu hàng loạt sự kiện huyền bí, một gia đình giàu có sống ở LA triệu tập bộ đôi pháp sư trẻ đang lên Hwa-rim và Bong-gil để cứu đứa con mới sinh của gia đình. Khi họ đến nơi, Hwa-rim cảm nhận được bóng tối của tổ tiên họ đã bám theo gia đình, cái gọi là \'Tiếng gọi của Grave\'. Để khai quật ngôi mộ và giải thoát tổ tiên, Hwa-rim tìm kiếm sự giúp đỡ từ nhà phong thủy hàng đầu Sang-duk và người làm nghề mai táng Young-geun. Trước sự thất vọng của họ, bốn người tìm thấy ngôi mộ ở một địa điểm râm mát ở một ngôi làng hẻo lánh ở Hàn Quốc. Không nhận thức được hậu quả, việc khai quật được thực hiện, nhưng điều này lại giải phóng một thế lực độc ác ẩn giấu bên dưới…', 1, 'rsz_700x1000_225.jpg', 'exhuma-quat-mo-trung-ma', 2, 'phimle', 7, 5, 1, 0, 'Exhuma', 0, 0, '2024-04-04 01:23:44', '2024-04-04 01:23:44', NULL, 'EXHUMA: QUẬT MỘ TRÙNG MA', NULL, 'https://youtu.be/7LH-TIcPqks?si=oHhv0vdgiwSh9j9z', 1, NULL),
(99, 'ALIENOID 2: ĐA CHIỀU HỖN CHIẾN (VIETSUB)', '122 Phút', 'Ean có một nhiệm vụ quan trọng là quay trở lại tương lai để cứu mọi người. Tuy nhiên, cô bị mắc kẹt trong quá khứ xa xôi trong khi cố gắng ngăn chặn sự trốn thoát của những tù nhân ngoài hành tinh đang bị nhốt trong cơ thể con người. Trong khi đó, Muruk, người giúp Ean thoát khỏi nhiều tình huống khó khăn khác nhau, lại tỏ ra lo lắng khi bắt đầu cảm nhận được sự hiện diện của một sinh vật kỳ lạ trong cơ thể mình. Du hành qua nhiều thế kỷ, họ đang cố gắng ngăn chặn sự bùng nổ của haava...', 1, 'thumb (1)89.jpg', 'alienoid-2-da-chieu-hon-chien-vietsub', 2, 'phimle', 5, 5, 0, 0, 'Alienoid: Return to the Future', 0, 0, '2024-04-04 01:25:29', '2024-04-04 01:25:29', NULL, 'Alienoid: Return to the Future', NULL, 'https://youtu.be/BRc8oW9JX10?si=0esshsRAgh6Zn2yd', 1, NULL),
(100, 'THỢ SĂN HOANG MẠC', '107 Phút', 'Sau một trận động đất chết người biến Seoul thành vùng đất hoang vô luật pháp, một thợ săn dũng cảm lao vào hành động để giải cứu một thiếu niên bị bác sĩ điên bắt cóc.', 1, 'images (7)92.jpg', 'tho-san-hoang-mac', 2, 'phimle', 1, 5, 1, 0, 'Badland Hunters', 0, 0, '2024-04-04 01:26:59', '2024-04-04 01:26:59', NULL, 'Badland Hunters', NULL, 'https://youtu.be/hKbo-ZKdSqw?si=akXd_bLijseMlYhf', 1, NULL),
(101, 'YÊU TINH', '1 giờ 26 phút', 'Doo Hyeon, người có biệt danh là \"Yêu tinh\", vào tù vì nhận tội thay cho Yeong Min, kẻ đã giết ông chủ của họ. Được trả tự do sau 10 năm, Doo Hyeon vẫn sống một cuộc sống bình thường cho đến khi anh phát hiện ra Yeong Min đã lợi dụng danh nghĩa \"Yêu tinh\" của mình. Yeong Min đi xa đến mức bắt cóc con gái của Doo Hyeon để bịt miệng. Quá tức giận, Doo Hyeon tìm cách trả thù và thông báo về sự trở lại của \"Yêu tinh\" thực sự', 1, 'images (6)15.jpg', 'yeu-tinh', 2, 'phimle', 1, 5, 0, 0, 'The Goblin', 0, 0, '2024-04-04 01:32:02', '2024-04-04 01:32:02', NULL, 'The Goblin', NULL, 'https://youtu.be/Lnzo1I319iQ?si=QLUMCTtSdXNYdgR9', 1, NULL),
(102, 'TƯƠI LÊN ĐI, MR. LEE', '1h51ph', 'Cheer Up, Mr. Lee', 1, 'images (5)76.jpg', 'tuoi-len-di-mr-lee', 2, 'phimle', 3, 5, 1, 0, 'Cheer Up, Mr. Lee', 0, 0, '2024-04-04 01:35:28', '2024-04-04 01:35:28', NULL, 'Cheer Up, Mr. Lee', NULL, 'https://youtu.be/ZR8768lnOTM?si=9IxAlW3Ppgx2u6LM', 1, NULL),
(103, 'TÌM ĐƯỜNG VỀ NHÀ', '83 Phút', 'Under the Boardwalk là một bộ phim hoạt hình hài ca nhạc của Mỹ năm 2023 do David Soren đạo diễn, người đồng viết kịch bản với Lorene Scafaria. Được sản xuất bởi Paramount Animation và Big Kid Pictures, và hoạt hình bởi DNEG Animation, bộ phim có sự tham gia lồng tiếng của Keke Palmer, Michael Cera và Bobby Cannavale.', 1, 'images (4)50.jpg', 'tim-duong-ve-nha', 2, 'phimle', 1, 2, 0, 0, 'Under the Boardwalk', 0, 0, '2024-04-04 20:45:07', '2024-04-04 20:45:07', NULL, 'Under the Boardwalk', NULL, 'https://youtu.be/vQmTVrNuxAI?si=-QOqZxomELCvky16', 1, NULL),
(104, 'X-MEN \'97', '33 phút/tập', 'X-Men \'97 là một loạt phim hoạt hình truyền hình Mỹdo Beau DeMayo tạo ra cho dịch vụ phát trực tuyến Disney+ , dựa trênnhóm siêu anh hùng X-Men của Marvel Comics . Đây là sự hồi sinh của X-Men: The Animated Series (1992–1997), tiếp tục kể từ khi loạt phim đó kết thúc. Nó mô tả các X-Men phải đối mặt với những thách thức mới nguy hiểm sau cái chết của thủ lĩnh của họ, Giáo sư X. X-Men \'97 được sản xuất bởi Marvel Studios Animation , với DeMayo là biên kịch chính cho hai mùa đầu tiên và Jake Castorena là giám đốc giám sát .\r\nMột số diễn viên trở lại từ loạt phim gốc để tiếp tục vai diễn của họ hoặc lồng tiếng cho các nhân vật mới, bao gồm Cal Dodd , Lenore Zann , George Buza , Catherine Disher , Chris Potter , Alison Sealy-Smith , Adrian Hough, Christopher Britton , Alyson Court , Lawrence Bayne, và Ron Rubin . Sự hồi sinh được thảo luận lần đầu tiên vào tháng 6 năm 2019 và được công bố chính thức vào tháng 11 năm 2021; Lúc đó DeMayo và Castorena đã tham gia. Chase Conley và Emi Yonemura cũng đạo diễn các tập phim. DeMayo đã bị sa thải khỏi vị trí biên kịch chính sau khi hoàn thành công việc trong hai mùa đầu tiên của loạt phim vào tháng 3 năm 2024 trước khi loạt phim ra mắt. Bộ phim này là dự án X-Men đầu tiên của Marvel Studios kể từ khi hãng phim giành lại bản quyền phim và truyền hình cho các nhân vật . Hoạt hình do Studio Mir cung cấp và là phiên bản hiện đại hóa theo phong cách của loạt phim gốc.\r\nX-Men \'97 đã công chiếu hai tập đầu tiên vào ngày 20 tháng 3 năm 2024, với sự hoan nghênh của giới phê bình, phần còn lại của phần đầu tiên dài 10 tập sẽ phát hành hàng tuần cho đến ngày 15 tháng 5. Phần thứ hai và thứ ba đang được phát triển.', 1, 'images (3)35.jpg', 'x-men-97', 2, 'phimle', 1, 2, 0, 0, 'X-MEN \'97', 0, 0, '2024-04-04 20:48:48', '2024-04-04 20:48:48', NULL, 'X-MEN \'97', NULL, 'https://youtu.be/7L7fNV296h0?si=BSmaliSRhyDAFuCn', 10, NULL),
(105, 'KUNG FU PANDA 4', '85 Phút', 'Kung Fu Panda 4 là một bộ phim điện ảnh hoạt hình Mỹ thuộc thể loại hài võ thuật ra mắt vào năm 2024, do DreamWorks Animation sản xuất và Universal Pictures phát hành. Đây là phần bốn của thương hiệu cùng tên, và là phần tiếp nối của Kung Fu Panda 3 ra mắt vào năm 2016. Phim do Mike Mitchell làm đạo diễn, với các diễn viên Jack Black, Dustin Hoffman, James Hong, Bryan Cranston và Ian McShane tiếp tục trở lại để đảm nhận các vai diễn cũ. Bên cạnh đó, Awkwafina, Viola Davis và Quan Kế Huy là những người tham gia lồng tiếng cho các nhân vật mới.\r\n\r\nTháng 1 năm 2016, tại thời điểm ra mắt phần ba của phim, hai đạo diễn Jennifer Yuh Nelson và Alessandro Carloni đã từng được hỏi về khả năng làm tiếp phần thứ tư. Tháng 8 năm 2018, Nelson chia sẻ cô sẵn sàng tham gia sản xuất tiếp. DreamWorks sau đó chính thức tuyên bố ra mắt dự án phim vào tháng 8 năm 2022. Tháng 4 năm 2023, Mitchell, Ma Stine và Rebecca Huntley được tiết lộ sẽ lần lượt đảm nhận các vai trò đạo diễn, đồng đạo diễn và nhà sản xuất. Tháng 5 cùng năm, Awkwafina tham gia phim, dàn diễn viên cũng được công bố sau đó vào tháng 12.\r\n\r\nKung Fu Panda 4 có buổi ra mắt tại rạp AMC 14 ở The Grove, Los Angeles vào ngày 3 tháng 3 năm 2024, sau đó tác phẩm được phát hành tại Mỹ vào ngày 7 tháng 3 năm 2024 và tại Việt Nam vào ngày 8 tháng 3 cùng năm. Cũng giống như các phần phim trước, tác phẩm được nhận về những lời khen ngợi từ giới chuyên môn.', 1, '470x700-kungfupanda428.jpg', 'kung-fu-panda-4', 2, 'phimle', 1, 2, 1, 0, 'KUNG FU PANDA 4', 0, 0, '2024-04-04 20:51:37', '2024-04-04 20:51:37', NULL, 'KUNG FU PANDA 4', NULL, 'https://youtu.be/_inKs4eeHiI?si=H7iUrbJcaX4rucmk', 1, NULL),
(106, 'ONE PIECE FILM: RED', '116 phút', 'Đây là phần phim thứ mười lăm trong loạt phim điện ảnh của One Piece, dựa trên bộ truyện manga nổi tiếng cùng tên của tác giả Eiichiro Oda. Phim được công bố lần đầu tiên vào ngày 21 tháng 11, 2021 để kỷ niệm sự ra mắt của tập phim thứ 1000 của bộ anime One Piece và sau khi tập phim này được phát sóng, đoạn quảng cáo và áp phích chính thức của phim cũng chính thức được công bố. Phim dự kiến sẽ phát hành vào ngày 6 tháng 8 năm 2022. Bộ phim được giới thiệu sẽ là hành trình xoay quanh một nhân vật nữ mới cùng với Shanks \"Tóc Đỏ\".', 1, 'images (2)91.jpg', 'one-piece-film-red', 2, 'phimle', 1, 4, 1, 0, 'ONE PIECE FILM: RED', 0, 0, '2024-04-04 21:03:26', '2024-04-04 21:03:26', NULL, 'ONE PIECE FILM: RED', NULL, NULL, 1, NULL),
(107, '7 VIÊN NGỌC RỒNG: FRIEZA HỒI SINH', 'N/A', '7 Viên Ngọc Rồng: Frieza Hồi Sinh - Dragon Ball Z: Resurrection F: Frieza trở lại cùng với một đạo quân hùng hậu ( 1000 tên ) trong movie Dragon Ball Z 2015 - Resurrection \'F\'. Không những thế, nhân vật phản diện được xem là ác nhất DBZ này còn có thêm sức mạnh mới với một hình hài sáng chói lấp lánh ánh vàng báo hiệu một cuộc chiến không hề dễ dàng cho những Goku, Vegeta, Gohan....lần này.', 1, 'DBZ_THE_MOVIE_NO56.png', '7-vien-ngoc-rong-frieza-hoi-sinh', 2, 'phimle', 1, 4, 1, 0, 'Dragon Ball Z: Resurrection F', 0, 0, '2024-04-04 21:06:38', '2024-04-04 21:06:38', NULL, 'Dragon Ball Z: Resurrection F', NULL, 'https://youtu.be/WiONylGn8Xw?si=1Jo6K31B1cZ8Ks7d', 1, NULL),
(108, 'DORAEMON: ĐÔI BẠN THÂN', '95p', 'Doraemon: Stand By Me sẽ là câu chuyện hoàn thiện về hành trình từ ngày đầu gặp gỡ cho đến lúc chia xa của Doraemon và Nobita. Ngày đầu tiên là ngày cậu bé Sewashi – con cháu 4 đời của Nobita ở thế kỷ 22 – du hành qua cỗ máy thời gian và mang theo một chú robot có chức năng giúp đỡ mọi người bằng những món bảo bối bí mật. Sewashi nói rằng cả gia đình đang phải gánh chịu khoản nợ nần mà Nobita để lại. Vậy nên Sewashi mang Doraemon tới giúp đỡ Nobita, vừa có thể thay đổi tương lai bi đát đó và vừa giúp Nobita được hạnh phúc hơn. Có lẽ nhiều người sẽ không nhớ rằng ban đầu Doraemon không vui vẻ gì với nhiệm vụ này, khiến cho Sewashi phải cài đặt một chương trình hợp tác, buộc Doraemon phải ở lại chăm sóc cho Nobita. Nếu không, Doraemon sẽ không thể trở về thế kỷ 22 được nữa.Ngoài ra, theo một cuộc khảo sát ở Nhậtt, có 88.4% khán giả đã khóc khi xem phim, trong đó có 20,4% là trẻ em; 21,5% ở độ tuổi 20, 20.4% trong độ tuổi 30, 20.4% ở độ tuổi 40; 47% là nam giới và 53% là nữ giới. Do đó, \"STAND BY ME, DORAEMON\" rất đáng để kỳ vọng.', 1, 'g0pns12k_660x946-doraemondoibanthan_360_53462.jpg', 'doraemon-doi-ban-than', 2, 'phimle', 1, 4, 0, 0, 'Doraemon: Stand By Me', 0, 0, '2024-04-04 21:09:35', '2024-04-04 21:09:35', NULL, 'Doraemon: Stand By Me', NULL, 'https://youtu.be/dnRAVwBBRRA?si=7jJSk-FfIU_jW5St', 1, NULL),
(109, 'DORAEMON: ĐÔI BẠN THÂN 2', '90p', 'Một ngày nọ Nobita Nobi tìm thấy một con gấu nhồi bông cũ mà bà của ông đã đưa nó cho anh ta. Nobita quyết định quay ngược thời gian để gặp bà của mình. Bà chấp nhận niềm tin của Nobita rằng anh ta là một đứa trẻ trẻ đột nhiên đến. Bà ngoại của Nobita nói \"Tôi muốn nhìn thấy cô dâu của mình một lần.\" Và từ một câu này của bà Doraemon và Big Blasphemy của Nobita bắt đầu. Nobita và Doraemon đang cố gắng thể hiện bà của họ một buổi lễ hôn nhân, nhưng người lớn Nobita đã trốn thoát vào ngày lễ cưới của ông. Gian và Suneo trưởng thành tìm kiếm Nobita. Shizuka, người tiếp tục chờ đợi với sự tự tin. Nobita và Doraemon dành thời gian để thực hiện mong muốn của bà, để đáp ứng những mong muốn của gia đình, bạn bè và Shizuka Minamoto, người mà cô ấy thích rất nhiều.', 1, 'images (1)66.jpg', 'doraemon-doi-ban-than-2', 2, 'phimle', 1, 4, 1, 0, 'Stand by Me Doraemon 2', 0, 0, '2024-04-04 21:10:52', '2024-04-04 21:10:52', NULL, 'Stand by Me Doraemon 2', NULL, 'https://youtu.be/7FPQDzqVHhk?si=2F1Pxpr40d8ukZD9', 1, NULL),
(110, 'DORAEMON: NOBITA VÀ NHỮNG HIỆP SĨ KHÔNG GIAN', 'NA', 'Nobita muốn trở thành một anh hùng thực sự. Doraemon sử dụng tiện ích của mình, Giám đốc Burger để biến họ thành một siêu anh hùng phim thực sự. Aron đã thấy năm sức mạnh và khả năng và yêu cầu họ giúp anh ta cứu hành tinh của mình, hành tinh Pokkuru. Sau hành trình đến hành tinh của họ, băng đảng nghĩ rằng đó chỉ là Burger đang làm nhưng nhận ra rằng đó không phải là một bộ phim và họ thực sự đang chiến đấu với những kẻ xấu.', 1, 'Nobita_va_nhung_hiep_si_khong_gian85.jpg', 'doraemon-nobita-va-nhung-hiep-si-khong-gian', 2, 'phimle', 1, 4, 1, 0, 'Doraemon: Nobita\'s Space Heroes', 0, 0, '2024-04-04 21:13:23', '2024-04-04 21:13:23', NULL, 'Doraemon: Nobita\'s Space Heroes', NULL, 'https://youtu.be/zD1mUK62A74?si=3CW780CvLqsq4dzx', 1, NULL),
(111, 'THE BOOK OF CLARENCE', '129 Phút', 'Đi lang thang khắp nơi nhưng kém may mắn, Clarence đang phải vật lộn để tìm một cuộc sống tốt hơn cho gia đình mình, đồng thời đấu tranh để thoát khỏi đống nợ nần. Bị thu hút bởi quyền năng và vinh quang của Messiah đang trỗi dậy và các sứ đồ của Ngài, anh ta liều lĩnh mọi thứ để tự mình tìm ra con đường dẫn đến sự sống thiêng liêng, và cuối cùng phát hiện ra rằng sức mạnh cứu chuộc của niềm tin có thể là lối thoát duy nhất của mình lúc này', 1, 'the-book-of-clarence-thumb8400.webp', 'the-book-of-clarence', 2, 'phimle', 8, 2, 1, 0, 'The Book of Clarence', 0, 0, '2024-04-05 10:10:50', '2024-04-05 10:10:50', NULL, 'The Book of Clarence', NULL, 'https://youtu.be/ntNS-ANoMyM?si=QJFisWquy-qn6cA5', 1, NULL),
(112, 'CHUYẾN BAY KHÔNG CÓ KHIẾU NẠI (VIETSUB)', '15 phút/tập', 'Để theo đuổi nam tiếp viên hàng không thần tượng Lear, Wang Hai Xian đã đến hãng hàng không để phỏng vấn với tư cách là một tiếp viên hàng không. Công ty đã thuê một nhóm nam nữ diễn viên đóng vai hành khách để rèn luyện khả năng thích ứng của những người mới đến. Trong quá trình đào tạo, Wang Hai Xian dần nhận ra sức hấp dẫn của nghề tiếp viên hàng không và cùng các cộng sự của mình giải quyết nhiều vấn đề khó khăn khác nhau của hành khách.', 1, 'The Zero Complaint Flight27688979.jpg', 'chuyen-bay-khong-co-khieu-nai-vietsub', 4, 'phimbo', 4, 6, 1, 0, 'The Zero Complaint Flight', 0, 0, '2024-04-05 10:22:25', '2024-04-05 10:22:25', NULL, 'The Zero Complaint Flight', NULL, 'https://youtu.be/8KmhC0X78Qs?si=L5GSy2E5fKiNaWYv', 24, NULL),
(113, 'OLD', '1h 48m', 'Phim có sự tham gia của dàn diễn viên quốc tế ấn tượng trong đó có người đoạt Quả cầu vàng: Gael García Bernal (Amazon’s Mozart in the Jungle), Vicky Krieps (Phantom Thread), Rufus Sewell (Amazon’s The Man in the High Castle), Ken Leung (Star Wars: Episode VII—The Force Awakens), Nikki Amuka-Bird (Jupiter Ascending), Abbey Lee (HBO’s Lovecraft Country), Aaron Pierre (Syfy’s Krypton), Alex Wolff (Hereditary), Embeth Davidtz (The Girl with the Dragon Tattoo), Eliza Scanlen (Little Women), Emun Elliott (Star Wars: Episode VII—The Force Awakens), Kathleen Chalfant (Showtime’s The Affair) and Thomasin McKenzie (Jojo Rabbit).', 1, 'Old_(film)_poster5022.jpg', 'old', 2, 'phimle', 4, 2, 1, 0, 'Old', 0, 0, '2024-04-05 11:28:06', '2024-04-05 11:28:06', NULL, 'Old', NULL, 'https://youtu.be/A4U2pMRV9_k', 1, NULL),
(114, 'BẠN (KHÔNG) THÂN', '129 Phút', 'Bạn Không Thân (Not Friends) là một bộ phim chiếu rạp Thái Lan thuộc thể loại tâm lý, tình cảm chủ đề về tình bạn của đạo diễn Atta Hemwadee sẽ hứa hẹn sẽ mang lại một pha tấu hài dở khóc dở cười nhưng hoài niệm vô cùng về một thời học sinh. Ở phim này, sẽ có sự tham gia diễn xuất của các diễn viên như: Anthony Buisseret, Pisitpol Ekaphongpisit, Thitiya Jirapornsilp,....', 1, 'crew_1080x1350_1_4002.jpg', 'ban-khong-than', 2, 'phimle', 8, 7, 1, 0, 'Not Friends', 0, 0, '2024-04-05 11:32:07', '2024-04-05 11:32:07', NULL, 'Not Friends', NULL, 'https://youtu.be/jXuDMm55GYo', 1, NULL),
(115, 'MANSUANG', '128 Phút', 'Khem và Wan, hai thanh niên đến từ Chachungsao, được giao nhiệm vụ điều tra sự thật ẩn giấu bên trong khu giải trí sang trọng và bí ẩn nhất Siam - Man Suang. Đằng sau bức màn hạnh phúc, nơi mọi người tụ tập để lên kế hoạch và đạt được các thỏa thuận chính trị vào cuối thời Vua Rama III của Vương quốc Rattanakosin.\r\nHai người bạn tham gia một đoàn kịch và gặp Chat, một nhạc công taphon. Mối quan hệ giữa ba người phát triển khi bí mật đen tối của Man Suang và những mâu thuẫn giữa ba nhân vật bắt đầu được hé lộ. Các nhiệm vụ xoay quanh một vụ án giết người, ai là kể nổi loạn, họ cần tìm kiếm sự thật chôn giấu, đằng sau sự hào nhoáng của Xiêm Quốc.\r\nĐạo Diễn: Chartchai Ketnust, Krisda Witthayakhajorndet\r\nDiễn Viên: Nattawin Wattanagitiphat, Phakphum Romsaithong, Asavapatr Ponpiboon, Thanayut Thakoonauttaya, Pradit Prasartthong, Gandhi​ Wasuvitchayagit, Saifah Tanthana, Sornchai Chatwiriyachai, Weerabhat Boonma, Suthida Jantrabutr', 1, '500x750_16947611787688976.jpg', 'mansuang', 2, 'phimle', 8, 7, 1, 0, 'ManSuang', 0, 0, '2024-04-05 11:36:01', '2024-04-05 11:36:01', NULL, 'ManSuang', NULL, 'https://youtu.be/jzrBZRYcsjQ', 1, NULL),
(116, 'CUỘC SỐNG MÀU ĐỎ', '121 Phút', 'Cuộc Sống Màu Đỏ RedLife 2023 là một bộ phim chính kịch, hình sự của Thái Lan, mô tả cuộc sống của những bạn trẻ sống trên bờ vực của thế giới ngầm ở Bangkok, với những đấu tranh và hy vọng của họ, khao khát một tình yêu thuần khiết trong hoàn cảnh khắc nghiệt được thể hiện một cách chân thực trong bộ phim đầu tay đáng chú ý này của Ekalak Klunson.\r\nCâu chuyện tập trung vào Ter, một tên tội phạm trẻ tuổi, cướp của chỉ để mua lấy tình yêu không tồn tại. \"RedLife\" khám phá một thế giới đầy vỡ vụn, bị lãng quên, không có lối thoát, nơi tình yêu, hy vọng và sự tuyệt vọng cùng tồn\r\nDiễn viên: Thiti Mahayotaruk, Supitcha Sungkajinda, Krongthong Rachatawan', 1, 'MV5BZDg4YWIzMWUtYThkOC00NGEwLWI1ZTMtNTdlMDBjZTE2M2RkXkEyXkFqcGdeQXVyMTI2MzQzNDQ12783.jpg', 'cuoc-song-mau-do', 2, 'phimle', 8, 7, 1, 0, 'RedLife', 0, 0, '2024-04-05 11:40:12', '2024-04-05 11:40:12', NULL, 'RedLife', NULL, 'https://youtu.be/qc3r0XAiiK4', 1, NULL),
(117, 'NGÔI ĐỀN KỲ QUÁI 3', '114 phút', 'Hội \"tạo nghiệp\" rủ nhau đến lễ xuất gia của Aod nhưng phải hoãn lại do lời nguyền từ chiếc lắc chân. Cả bọn phải chạy đua với thời gian để tìm ra cách giải lời nguyền trước khi quỷ dữ lấy mạng Aod.\r\nDiễn viên:Phiravich Attachitsataporn, Khunnapat Pichetworawut, Sim Kyutae Pond\r\nĐạo diễn:Phontharis Chotkijsadarsopon', 1, 'peenak3-main_poster_1_6282.jpg', 'ngoi-den-ky-quai-3', 2, 'phimle', 7, 7, 1, 0, 'Pee Nak 3', 0, 0, '2024-04-05 21:07:52', '2024-04-05 21:07:52', NULL, 'Pee Nak 3', NULL, 'https://youtu.be/wNgkxBJlBIY', 1, NULL),
(118, 'DOI BOY', '1g 39phút', 'Khoác lên mình danh tính mới là trai bao ở Thái Lan, người tị nạn nọ bị cuốn vào kế hoạch đầy rủi ro của một khách hàng nhưng có thể dẫn đến cuộc sống tốt đẹp hơn.\r\nDiễn viên chính:Awat Ratanapintha,Arak Amornsupasiri,Aelm Thavornsiri', 1, 'MV5BYmMwMDgxYzMtY2RkMC00YmEwLThhYmItYzNiYmRjOGFkZmVlXkEyXkFqcGdeQXVyMTEzMTI1Mjk32077.jpg', 'doi-boy', 2, 'phimle', 8, 7, 1, 0, 'Doi Boy', 0, 0, '2024-04-05 21:11:58', '2024-04-05 21:11:58', NULL, 'Doi Boy', NULL, 'https://youtu.be/isRrOMHGPt0', 1, NULL),
(119, 'TÌNH YÊU CỦA SIAM', '2h 34m', 'Sự chia ly của hai người bạn thời thơ ấu là không thể tránh khỏi bởi vì một trong số họ tìm cách thoát khỏi sự cô độc thông qua âm nhạc của mình. Ngày hôm sau, cả hai gặp lại nhau khi còn là thanh thiếu niên, và có thể cảm nhận được rằng họ không hề biết gì.\r\nĐạo diễn: Chookiat Sakveerakul', 1, 'the-love-of-siam-tinh-yeu-o-quang-truong-siam-162384164.jpg', 'tinh-yeu-cua-siam', 2, 'phimle', 9, 7, 1, 0, 'Love of Siam', 0, 0, '2024-04-05 21:19:08', '2024-04-05 21:19:08', NULL, 'Love of Siam', NULL, 'https://youtu.be/BmnqPYBVMyU', 1, NULL),
(120, 'CHÂU BÁU ĐỜI TÔI', '2h', 'Mối tình trong trẻo được tái hiện bởi cặp đôi Tong và vai Lin sẽ khiến khán giả bồi hồi về tình yêu đầu đời trên ghế nhà trường. Tong, cậu nhóc học sinh cá biệt được chuyển bàn ngồi trước Lin, một cô gái chăm chỉ, mọt sách, có vẻ ngoài bí ẩn và là đối tượng theo đuổi của nhiều chàng trai trong trường. Qua những lời thách thức từ \"lũ bạn thân trời đánh\" của Tong, cả hai dần nhận ra tình cảm đặc biệt họ dành cho nhau.\r\nĐạo diễn: Naphat Chitveerapat, Kanittha Kwanyu', 1, '700x1000-myprecious188.jpg', 'chau-bau-doi-toi', 2, 'phimle', 8, 7, 1, 0, 'My Precious', 0, 0, '2024-04-05 21:22:09', '2024-04-05 21:22:09', NULL, 'My Precious', NULL, 'https://youtu.be/e9Ai0tuccxE', 1, NULL),
(121, 'NAM THẦN XE ÔM', '1g 42ph', '\"Sakkarin\" là một chàng trai 25 tuổi không thể tìm được việc làm như mẹ anh mong muốn anh trở thành một nhân viên ngân hàng. Để chăm lo cho gia đình hạnh phúc, anh phải nói dối bằng cách mặc đồng phục ngân hàng ra khỏi nhà vào mỗi buổi sáng trước khi quay lại với con người thật của mình và công việc thực sự là một người xe ôm. Nhưng, bí mật không tồn tại trong thế giới này khi anh ấy gặp người yêu thời trung học của mình \"Jai\", một nhân viên ngân hàng ngoài đời thực, bạn trai của \"A\" Jai và giám đốc ngân hàng, và \"Uncle Preecha\", bạn cũ của cha anh người luôn để mắt đến anh ấy.\r\nĐạo diễn: Prueksa Amaruji\r\nDiễn viên: Jennifer Kim, Pachara Chirathivat, Sananthachat Thanapatpisal, Kom Chauncheun, Pramote Pathan, Robert Saikwan', 1, 'images (13)810.jpg', 'nam-than-xe-om', 2, 'phimle', 8, 7, 1, 0, 'Bikeman', 0, 0, '2024-04-05 21:25:26', '2024-04-05 21:25:26', NULL, 'Bikeman', NULL, 'https://youtu.be/cJi4mTeL5B0', 1, NULL),
(122, 'TRĂM NĂM HẠNH PHÚC!', '2g 15phút', 'Câu chuyện về một cặp đôi đầy sóng gió, Sati và Meta. Hai người chuẩn bị chia tay vì mối quan hệ tan vỡ, nhưng số phận đang đùa giỡn với họ khi Sati gặp tai nạn và tỉnh dậy với tình trạng mất trí nhớ. Để lấy lại một phần ký ức, cách duy nhất là tìm lại những bức ảnh cũ nơi anh phải đối mặt với quá khứ đáng sợ của mình.\r\nĐạo diễn: Piyakarn Bootprasert,\r\nDiễn viên: Chompoo Araya A.Hargate, Sunny Suwanmethanont, Becky Rebecca,', 1, '700x1000-livelaughlove_1_4424.jpg', 'tram-nam-hanh-phuc', 2, 'phimle', 8, 7, 1, 0, 'Long Live Love!', 0, 0, '2024-04-05 21:28:33', '2024-04-05 21:28:33', NULL, 'Long Live Love!', NULL, 'https://youtu.be/ZC9lcxgLfnU', 1, NULL),
(123, 'BA CHÀNG NGỰ LÂM 2', 'Đang cập nhật', 'Stu sắp kết hôn. Cùng với Doug, Phil và anh trai sắp cưới của anh ấy, anh ấy rất tiếc, anh ấy mời Alan đến Thái Lan cho đám cưới. Sau một đêm yên tĩnh trên bãi biển với một bữa tiệc bia và nướng Marshmallows bởi lửa trại, Stu, Alan và Phil thức dậy trong một căn hộ hạt giống ở Bangkok. Doug đã trở lại tại khu nghỉ mát, nhưng Teddy bị mất tích, có một con khỉ với một ngón tay bị cắt đứt, đầu của Alan bị cạo, Stu có một hình xăm trên khuôn mặt anh ta, và họ không thể nhớ bất kỳ thứ gì. The Wolf-Pack Lấy lại các bước của họ thông qua các câu lạc bộ thoát y, hình xăm và những con khỉ gây cocaine trên đường phố Bangkok khi họ cố gắng và tìm Teddy trước đám cưới.\r\nĐạo diễn	Brian Smrz, Jeanne Byrd, Jeffrey Wetzel, Paul Schneider, Stephen W. Moore, Todd Phillips', 1, '120915phim3-0c6233150.webp', 'ba-chang-ngu-lam-2', 2, 'phimle', 3, 7, 1, 0, 'The Hangover Part II', 0, 0, '2024-04-05 21:31:50', '2024-04-05 21:31:50', NULL, 'The Hangover Part II', NULL, 'https://youtu.be/ohF5ZO_zOYU', 1, NULL),
(124, 'VALERIAN VÀ THÀNH PHỐ NGÀN HÀNH TINH', 'Đang cập nhật', 'Bối cảnh phim Valerian and the City of a Thousand Planets lấy bối cảnh thế kỷ 28, khi xã hội loài người đang rất phát triển và sẽ sống trên không. thời gian. Thành Phố Ngàn Hành Tinh được nhắc đến ở đây chính là Alpha - một trạm vũ trụ khổng lồ, với vô số sinh vật từ các hành tinh khác nhau cùng sinh sống. Tuy nhiên, có một thế lực đen tối đang đe dọa trạm vũ trụ này, ảnh hưởng đến sự an toàn của vũ trụ nên Bộ Quốc phòng đã cử 2 đặc vụ là Valerian và Laureline để truy tìm thủ phạm, giữ gìn trật tự và lãnh thổ của các loài. những người trên trung tâm này.\r\nĐạo diễn: Luc Besson', 1, 'images (14)9648.jpg', 'valerian-va-thanh-pho-ngan-hanh-tinh', 2, 'phimle', 6, 2, 1, 0, 'Valerian and the City of a Thousand Planets', 0, 0, '2024-04-05 21:34:36', '2024-04-05 21:34:36', NULL, 'Valerian and the City of a Thousand Planets', NULL, 'https://youtu.be/hW9_18Mdvys', 1, NULL);
INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `phude`, `season`, `ngaytao`, `ngaycapnhat`, `year`, `tags`, `topview`, `trailer`, `sotap`, `performer`) VALUES
(125, 'NGÀY XƯA CÓ MỘT NGÔI SAO', '2g 18phút', 'Năm 1970, đoàn chiếu phim nọ đối mặt với vô số trở ngại khi họ đi khắp Thái Lan để giải trí cho khán giả háo hức bằng cách lồng tiếng trực tiếp cho những bộ phim được yêu thích.\r\nĐạo Diễn: Nonzee Nimibutr\r\nDiễn Viên: Sukollawat Kanaros, Nuengthida Sophon, Jirayu Laongmanee, Samart Payakaroon, Nat Sakdatorn, Sornchai Chatwiriyachai, Pattamamontri Siriwet, Phennee Sasithanasophon, Yuthana Boonorm, Kongkiat Komesiri, Karinyut Jindawat, Komsan Kajornpaisansuk, Varatta Vajrathon, Darina Boonchu, Yothin Mapobphun, Bodin Moomuensri, Wittaya Singlompong', 1, '20235105.jpg', 'ngay-xua-co-mot-ngoi-sao', 2, 'phimle', 8, 7, 1, 0, 'Once Upon a Star', 0, 0, '2024-04-05 21:38:45', '2024-04-05 21:38:45', NULL, 'Once Upon a Star', NULL, 'https://youtu.be/QeN2zWBQuZQ', 1, NULL),
(126, 'ONG-BAK 3', 'Đang cập nhật', 'Chuyện phim tiếp diễn sau khi phần hai của Ong-bak kết thúc. Tien bị tra tấn gần chết trước khi được giải cứu và đưa chàng quay lại trong vòng tay bao bọc của dân làng Kana Khone. Mất đi kỹ năng chiến đấu thượng thừa sau cái chết đau đớn của cha dượng, Tien phải nhờ rất nhiều và sự giúp đỡ của Pim và Mhen để vượt qua. Dưới sự chỉ bảo của cao tăng Phra Bua, Tien trải qua thời gian tĩnh tọa và đạt đến cấp độ chiến binh Nathayut, cũng là lúc kẻ thù tìm đến.\r\nĐạo diễn: Tony Jaa, Panna Rittikrai', 1, 'MV5BMTQ2MDQwNTgxMl5BMl5BanBnXkFtZTcwNzU1MDUyNA@@5923.jpg', 'ong-bak-3', 2, 'phimle', 1, 7, 1, 0, 'Ong-bak 3', 0, 0, '2024-04-05 21:41:12', '2024-04-05 21:41:12', NULL, 'Ong-bak 3', NULL, 'https://youtu.be/YKCsWyKpywM', 1, NULL),
(127, 'RAMBO IV', 'Đang cập nhật', 'Tại Thái Lan, John Rambo gia nhập một nhóm lính đánh thuê để tiến vào Miến Điện bị chiến tranh tàn phá và giải cứu một nhóm nhân viên cứu trợ Cơ đốc giáo bị bắt cóc bởi một đơn vị bộ binh tàn nhẫn địa phương.\r\nĐạo diễn: Sylvester Stallone', 1, 'images (15)2704.jpg', 'rambo-iv', 2, 'phimle', 7, 2, 1, 0, 'Rambo IV', 0, 0, '2024-04-05 21:43:34', '2024-04-05 21:43:34', NULL, 'Rambo IV', NULL, 'https://youtu.be/DFtQ2TjfKo0', 1, NULL),
(128, 'ONG BAK 2', 'Đang cập nhật', 'Cậu bé Tien - con trai của một trong bốn vị đại tướng quân - được cha mẹ đưa tới một nơi xa nhà để học múa. Cậu không hiểu tại sao cha không cho mình học võ để tự vệ và có thể đi theo con đường của ông sau này. Cha mẹ cậu bị phản bội và sát hại, trên đường trốn chạy, Tien bị bắt làm nô lệ. Bị đẩy xuống một hồ nước sâu. Cậu phải giết chết con cá sấu dưới đó nếu muốn sống sót. Đó cũng là lúc vị cứu tinh của Tien xuất hiện: thủ lĩnh hải tặc Chernang của vùng vách đá Geruda Wing.\r\nĐạo diễn: Tony Jaa, Panna Rittikrai', 1, 'MV5BOWJiODQ4NDUtYWYwZS00OTI4LWFhYzMtM2Q2M2FkODUwN2NiXkEyXkFqcGdeQXVyMTA0MTM5NjI24447.jpg', 'ong-bak-2', 2, 'phimle', 1, 7, 1, 0, 'Ong Bak 2', 0, 0, '2024-04-05 21:48:52', '2024-04-05 21:48:52', NULL, 'Ong Bak 2', NULL, 'https://youtu.be/YcHISERBGL4', 1, NULL),
(129, 'ONG-BAK: THE THAI WARRIOR', 'Đang cập nhật', 'Khởi động sống trong một ngôi làng nhỏ và yên bình. Một ngày nọ, một tượng phật linh thiêng được gọi là ong bak bị đánh cắp từ làng bởi một doanh nhân vô đạo đức. Nó sớm trở thành nhiệm vụ của một chàng trai trẻ tự nguyện, mua lại (Phanom Yeeram), để theo dõi kẻ trộm ở Bangkok và đòi lại kho báu tôn giáo. Trên đường đi, Booking sử dụng chủ nghĩa thể thao đáng kinh ngạc của mình và các kỹ năng Muay Thai truyền thống để chống lại đối thủ của mình.\r\nĐạo diễn: Prachya Pinkaew', 1, 'images (16)7687.jpg', 'ong-bak-the-thai-warrior', 2, 'phimle', 1, 7, 1, 0, 'Ong-Bak: The Thai Warrior', 0, 0, '2024-04-05 21:51:25', '2024-04-05 21:51:25', NULL, 'Ong-Bak: The Thai Warrior', NULL, 'https://youtu.be/tWmJGLAL4YE', 1, NULL),
(130, 'NGƯỜI BẢO VỆ 2', 'Đang cập nhật', 'Sau thành công bất ngờ với Ong Bak năm 2003, chỉ hai năm sau, Tony Jaa, nam diễn viên được mệnh danh là Lý Liên Kiệt xứ sở chùa Vàng đã gây sửng sốt cho cộng đồng mê phim võ thuật bằng siêu phẩm The Protector (tức Tom Yum Goong). Với 27 triệu USD thu về trên toàn cầu, đó thực sự là một cột mốc đáng nhớ của nền điện ảnh Thái Lan. Và cuối năm nay, khán giả sẽ lại được tái ngộ với nhân vật Kham trong THE PROTECTOR 2 (Tom Yum Goong 2) phiên bản 3D qua một hành trình mới nhưng mục đích thì cũ: truy tìm chú voi bị bắt trộm.\r\nDirector: Prachya Pinkaew', 1, 'MV5BMTk1MTMwMzE0OF5BMl5BanBnXkFtZTgwNTMyOTYyMTE@6066.jpg', 'nguoi-bao-ve-2', 2, 'phimle', 6, 7, 1, 0, 'Tom yum goong 2', 0, 0, '2024-04-05 21:56:27', '2024-04-05 21:56:27', NULL, 'Tom yum goong 2', NULL, 'https://youtu.be/sZf01Pa0iT0', 1, NULL),
(131, 'Chơi Ngải 2', 'Đang cập nhật', 'Một nhóm bạn học trung học đoàn tụ sau hai năm khi một trong những người cha tự tử của họ. Tất cả họ đều dành cả đêm tại địa điểm của bạn mình. Khi Darkness ngã, những điều kỳ lạ bắt đầu xảy ra với họ từng người một. Như thể ai đó đang sử dụng nghệ thuật đen trên họ để trả thù cho một hành động mà nhóm bạn này đã cam kết trở lại trường trung học.\r\nĐạo diễn: Yosapong Polsap, Pasith Buranajan, Kongkiat Khomsiri', 1, 'MV5BMjE0MzgyNzkxM15BMl5BanBnXkFtZTcwNDA2NTY0MQ@@7482.jpg', 'choi-ngai-2', 2, 'phimle', 7, 7, 1, 0, 'Art of the Devil II', 0, 0, '2024-04-05 22:04:09', '2024-04-05 22:04:09', NULL, 'Art of the Devil II', NULL, 'https://youtu.be/IcWQloiDD8E', 1, NULL),
(132, 'TÌNH NGƯỜI DUYÊN MA', 'Đang cập nhật', 'Bộ phim Tình Người Duyên Ma (Pee Mak) lấy bối cảnh vương quốc Rattanakosin. Thời cuộc khiến chàng trai trẻ Mak phải bỏ lại người vợ đang mang thai để ra trận. Trên chiến trường, anh cùng Ter, Puak, Shin và Aey trở thành nhóm bạn thân thiết. Khi chiến tranh qua đi, Mak bèn mời bộ tứ lắm lời về thăm nhà mình, cũng như Nak và đứa con mới chào đời. Song, cả nhóm trải qua hàng loạt hiện tượng kỳ bí, cũng như nghe được lời đồn phong thanh rằng Nak đã qua đời.\r\nĐạo diễn: Banjong Pisanthanakun', 1, 'tinh-nguoi-duyen-ma-thumb8008.webp', 'tinh-nguoi-duyen-ma', 2, 'phimle', 7, 7, 1, 0, 'Pee Mak', 0, 0, '2024-04-05 22:07:56', '2024-04-05 22:07:56', NULL, 'Pee Mak', NULL, 'https://youtu.be/lPts4HMXbmU', 1, NULL),
(133, 'Sát Thủ Kitty', '123 Phút', 'Một tổ chức gián điệp ngầm có tên The Agency tuyển dụng một liên minh gồm các nữ sát thủ hàng đầu được biết đến với mật danh Kitty để thực hiện công việc bẩn thỉu của họ. Khi người cố vấn của Kitties, The Grey Fox, bị The Agency phản bội và bị đưa ra án tử hình, anh ta đã tuyển một nhân viên văn phòng trẻ ngốc nghếch thế chỗ. Chàng trai mới vào nghề nhai khung cảnh khi biến đổi từ số 0 thành anh hùng dưới sự huấn luyện khắc nghiệt đến mức tàn bạo của những chú Mèo con lạnh lùng như băng. Nhiệm vụ tiếp theo của họ? Để trả thù những kẻ vượt biên đôi! Được xây dựng dựa trên logic truyện tranh với giọng nói chắc chắn, bộ phim hài hành động hỗn loạn này là một sự châm biếm sôi nổi về những câu chuyện ngụ ngôn và tài liệu tham khảo về thể loại phim châu Á được kết hợp một cách hoa mỹ với khiếu hài hước náo loạn của Thái Lan để có một khoảng thời gian vui vẻ.\r\nĐạo Diễn: Lee Thongkham', 1, 'RB03dr_4f1933.jpg', 'sat-thu-kitty', 2, 'phimle', 3, 7, 1, 0, 'Kitty The Killer', 0, 0, '2024-04-05 22:13:04', '2024-04-05 22:13:04', NULL, 'Kitty The Killer', NULL, 'https://youtu.be/Pf3_-1EuM84', 1, NULL),
(134, 'HỒ CÁ SẤU', '82 Phút', 'Lake Placid là một bộ phim hài kinh dị của Mỹ năm 1999 do David E. Kelley viết kịch bản và Steve Miner đạo diễn. Đây là phần đầu tiên trong loạt phim Lake Placid và có sự tham gia của Bill Pullman, Bridget Fonda, Brendan Gleeson, Oliver Platt, Betty White, Meredith Salenger và Mariska Hargitay.', 1, 'Lake_placid_ver29214.jpg', 'ho-ca-sau', 2, 'phimle', 7, 2, 0, 0, 'Lake Placid', 0, 0, '2024-04-05 22:16:54', '2024-04-05 22:16:54', NULL, 'Lake Placid', NULL, 'https://youtu.be/xNP_FyUjysk', 1, NULL),
(135, 'MẬT MÃ QUỶ', '1h 40m', 'Một nhóm sinh viên quyết định đến đèo Dyatlov để làm phim tài liệu, nhưng họ không ngờ rằng mọi thứ sẽ trở nên tồi tệ khi họ phát hiện ra bí mật đen tối về những gì đã xảy ra ở đó. Phim Mật Mã Quỷ (Devils Pass) với sự tham gia của Holly Goss, Matt Stokoe, Luke Albright và đạo diễn Renny Harlin sẽ khiến khán giả không thể rời mắt khỏi màn ảnh.\r\nĐạo diễn: Renny Harlin', 1, 'MV5BMjMzOTMxMTA3N15BMl5BanBnXkFtZTgwNDg4MDAwMDE@1603.jpg', 'mat-ma-quy', 2, 'phimle', 7, 13, 1, 0, 'Devils Pass', 0, 0, '2024-04-05 22:26:42', '2024-04-05 22:26:42', NULL, 'Devils Pass', NULL, 'https://youtu.be/CrkvuW5Mw4s', 1, NULL),
(136, 'Khách sạn ma ám', '101 Phút', 'Bộ phim Innkeepers xoay quanh hai nhân viên cuối cùng làm việc trong khách sạn Yankee Pedlar bị ma ám trước khi nó ngừng hoạt động sau hơn 100 năm kinh doanh. Những nhân viên còn lại cuối cùng là thư ký Claire (SaraPaxton) và Luca (PatHealy) tin rằng khách sạn bị ma ám và quyết định chứng minh sự tồn tại của nó. Khi gần đến những ngày hoạt động cuối cùng của khách sạn, những vị khách bí ẩn đến đây ở gồm Leanne Rease-Jones (Kelly McGillis), một cựu nữ diễn viên truyền hình đã trở thành một nhà tâm linh, và một ông già cứ dứt khoát đòi ở trong phòng 353. Khi các sự kiện lạ lùng bắt đầu xuất hiện, cả Claire và Luke phải đưa ra các quyết định quan trọng về những gì nên và nên không tin Đạo Diễn: Ti West\r\nDiễn Viên:  Sara Paxton, Pat Healy, Alison Bartlett, Jake Ryan, Kelly McGillis, Lena Dunham, Brenda Cooney, George Riddle, John Speredakos, Sean Reid', 1, 'the-innkeepers-thumb184.jpg', 'khach-san-ma-am', 2, 'phimle', 7, 2, 1, 0, 'The Innkeepers', 0, 0, '2024-04-05 22:30:56', '2024-04-05 22:30:56', NULL, 'The Innkeepers', NULL, 'https://youtu.be/_HtulwMmA00', 1, NULL),
(137, 'QUỶ CẨU', '1h 39m', 'Kể từ khi ông chủ lò mổ chó danh tiếng chết kỳ bí, hoàng loạt những sự việc ma quái xảy ra trong suốt tuần chung thất của ông. Nam về quê để lo đám tang cho bố sau cái chết kinh hoàng của ông, trong khi phải che giấu bạn gái đang mang thai. Nam mơ thấy gia đình bị giết sau khi mai táng bố, và Mít – con chó trắng của gia đình có biểu hiện kì lạ. Ông Quyết, bà Thúy, và bà Liễu thì tin vào thầy cúng, còn Nam nghi ngờ về lò mổ chó truyền thống của gia đình và phải điều tra để giải quyết sự kiện kỳ lạ đang diễn ra. Gia đình đồ tể liên tục bị rình rập và tấn công bởi một thứ vô hình như quỷ quyệt. Dần dần, họ bắt đầu tự nghi ngờ và quay sang hãm hại lẫn nhau để tranh giành sự sống.\r\nĐạo Diễn: Lưu Thành Luân\r\nDiễn Viên: Nam Thư, Vân Dung, Quang Tuấn, Kim Xuân...', 1, '1080x1350-quy-cau6766.jpg', 'quy-cau', 2, 'phimle', 8, 1, 1, 0, 'Quỷ Cẩu', 0, 0, '2024-04-05 23:26:18', '2024-04-05 23:26:18', NULL, 'Quỷ Cẩu', NULL, 'https://youtu.be/cYCOcxWgPVU', 1, NULL),
(138, 'CÙ LAO XÁC SỐNG', '1h 49m', 'Phim Lost in Mekong Delta (Cù Lao Xác Sống) nói về hành trình của Công - một thầy thuốc đông y cố gắng đưa cha và con gái thoát khỏi sự truy đuổi của xác sống khi đại dịch bùng nổ. Họ thất lạc nhau trên đường chạy trốn. Trong lúc tìm lại con gái, Công gặp những người bị nạn khác giống mình. Họ cùng nhau hợp sức thành một nhóm, cố gắng vượt qua thử thách sống còn. Liệu kết quả sẽ ra sao khi đại dịch càng ngày càng lan rộng?\r\nĐạo Diễn:	Nguyễn Thành Nam', 1, 'MV5BMzQ1NTA4MmMtMmU0Mi00MTQ3LTkxMDktMDc3MDdkOTIwNTlhXkEyXkFqcGdeQXVyMTE2NTUzNzc57430.jpg', 'cu-lao-xac-song', 2, 'phimle', 8, 1, 1, 0, 'Lost in Mekong Delta', 0, 0, '2024-04-06 03:19:17', '2024-04-06 03:19:17', NULL, 'Lost in Mekong Delta', NULL, 'https://youtu.be/_VcQTQVackE', 1, NULL),
(139, 'KẺ ĂN HỒN', '1h 32m', 'Kẻ Ăn Hồn kể về hàng loạt cái chết bí ẩn ở Làng Địa Ngục, nơi có ma thuật cổ xưa: 5 mạng đổi bình Rượu Sọ Người. Thập Nương - cô gái áo đỏ là kẻ nắm giữ bí thuật luyện nên loại rượu mạnh nhất! Phim điện ảnh chuyển thể từ tiểu thuyết gốc cùng tên của nhà văn Thảo Trang. Ngoài hình ảnh đám cưới chuột, khán giả còn được thấy những hình tượng đậm văn hóa Việt là bầy rối nước, thủy đình, bài vè… Bên cạnh đó, những chi tiết vốn được yêu thích ở làng Địa Ngục như bà Vạn lái đò chở vong hồn, mồ hôi máu, đom đóm câu hồn sẽ lần lượt xuất hiện trên màn ảnh rộng. Lấy bối cảnh ở ngay làng Địa Ngục, phim sẽ kể về cuộc hành trình tìm ra loại cổ thuật xuất hiện ở chính ngôi làng này. Loại cổ thuật đó có tên là Rượu sọ người, nghe nói nếu ai luyện được loại thuật này thì sẽ có pháp lực cực mạnh, có thể điều khiển ma quỷ, bắt hồn người khác. Thập Nương - cô gái áo đỏ là kẻ nắm giữ bí thuật luyện nên loại rượu mạnh nhất!\r\n Đạo Diễn	Trần Hữu Tấn', 1, 'Áp_phích_phim_Kẻ_ăn_hồn7895.jpg', 'ke-an-hon', 2, 'phimle', 8, 1, 1, 0, 'A Soul Reaper', 0, 0, '2024-04-06 03:22:06', '2024-04-06 03:22:06', NULL, 'A Soul Reaper', NULL, 'https://youtu.be/xWh0g4rKGjI', 1, NULL),
(140, 'MÈO ĐIÊN', '88 Phút', 'Taka, một chàng trai lười biếng, đi tìm anh trai Mune. Cùng với người bạn mới và cô gái bí ẩn, Taka đối diện với những con mèo điên quái vật độc ác. Chúng muốn giết chủ cửa hàng thú cưng.\r\nĐạo diễn: Reiki Tsuno', 1, 'MV5BNDE2YmQ2NDEtZTRlYi00YjI0LThkOWItYjNmNjE1YjdhNzdhXkEyXkFqcGdeQXVyOTUyOTM3MTU@3778.jpg', 'meo-dien', 2, 'phimle', 7, 4, 0, 0, 'Mad Cats', 0, 0, '2024-04-06 03:25:04', '2024-04-06 03:25:04', NULL, 'Mad Cats', NULL, 'https://youtu.be/ZIrnzQZe6hw', 1, NULL),
(141, 'HẠNH PHÚC MÁU', '1h 48m', 'Hạnh Phúc Máu kể về cuộc đời của Hà Phương (NSND Kim Xuân) và câu chuyện gia tộc Vương Đình với một đức tin lạ vận hành niềm tin, sự thịnh vượng của gia tộc. Vào sự kiện quan trọng của gia tộc hàng loạt thảm kịch xảy ra. Sự thật trần trụi về những người chung một dòng máu nhưng khác cuộc đời được phơi bày.\r\nĐạo Diễn: Nguyễn Chung', 1, 'Áp_phích_Hạnh_phúc_máu6110.jpg', 'hanh-phuc-mau', 2, 'phimle', 8, 1, 1, 0, 'Blood Karma', 0, 0, '2024-04-06 03:30:08', '2024-04-06 03:30:08', NULL, 'Blood Karma', NULL, 'https://youtu.be/_VQqMUKMBKQ', 1, NULL),
(142, 'Cánh đồng đẫm máu', '83 Phút', 'Bộ phim kể về 1 nghi lễ cổ xưa ở một trang trại nhỏ. Câu chuyện bắt đầu trong 1 chuyến du lich của 1 nhóm sinh viên đi du lịch vô tình đâm chết 1 người trên đường , sợ hãi, họ chạy trồn vào trong 1 trang trại bỏ hoang. Họ đã không biết trang trại ấy chính là 1 trong những nhà thờ để tiến hành những nghi lễ cổ xưa . Họ đã tìm mọi cách để thoát khỏi đó\r\nĐạo Diễn: Brett Simmons', 1, 'images (17)1346.jpg', 'canh-dong-dam-mau', 2, 'phimle', 7, 2, 0, 0, 'Husk', 0, 0, '2024-04-06 03:33:36', '2024-04-06 03:33:36', NULL, 'Husk', NULL, 'https://youtu.be/rKIBH4nqM8o', 1, NULL),
(143, 'SHAKE, RATTLE & ROLL EXTREME', '147 Phút', 'Cô con gái đang xem một chương trình trẻ em nổi tiếng từ những năm 70 cho đến khi nó trở nên sống động. Mukbang: Một nhóm người có ảnh hưởng đã đến thăm một biệt thự thì hai người trong số họ đã trở thành quái vật. Cơn thịnh nộ: Mọi người cùng xem mưa sao băng cho đến khi virus lây lan.\r\nĐạo Diễn: Jerrold Tarog, Richard Somes', 1, 'MV5BYjQyNzUzNmMtYTA4Zi00MjRkLTg5NzgtOGFhYjE1NjE2OGFlXkEyXkFqcGdeQXVyNTI5NjIyMw@@7222.jpg', 'shake-rattle-roll-extreme', 2, 'phimle', 7, 2, 0, 0, 'Shake, Rattle & Roll Extreme', 0, 0, '2024-04-06 03:36:14', '2024-04-06 03:36:14', NULL, 'Shake, Rattle & Roll Extreme', NULL, 'https://youtu.be/jA5EG9_UzIQ', 1, NULL),
(144, 'NỖI SỢ', '98 Phút', 'Nhóm bạn thân lên kế hoạch cho một kỳ nghỉ cuối tuần vui vẻ, nhưng nào ngờ rằng đó đã trở thành cơn ác mộng thực sự khi hàng loạt sự kiện khủng khiếp xảy ra ở nơi họ dừng chân.\r\nĐạo Diễn: Deon Taylor', 1, 'MV5BYThlZDk5MDEtZjcwMy00NWM5LTgxYWUtYmRlMmM5YmY0YzFhXkEyXkFqcGdeQXVyMTUzMTg2ODkz9980.jpg', 'noi-so', 2, 'phimle', 7, 2, 0, 0, 'Fear', 0, 0, '2024-04-06 03:39:35', '2024-04-06 03:39:35', NULL, 'Fear', NULL, 'https://youtu.be/VgaG0PbziYY', 1, NULL),
(145, 'INDIGO', '118 Phút', 'Để giải cứu em gái khỏi nanh vuốt của hồn ma, Zora phải khai phá khả năng siêu nhiên tiềm ẩn của mình và xoay xở với các cõi siêu hình.​\r\nĐạo Diễn: Rocky Soraya', 1, 'MV5BZTc4ZjJmYzAtYmUxNS00MTJlLWFjZDgtODcwMGM2Yzk1NTc0XkEyXkFqcGdeQXVyMTEzMTI1Mjk32834.jpg', 'indigo', 2, 'phimle', 8, 2, 0, 0, 'Indigo', 0, 0, '2024-04-06 03:42:22', '2024-04-06 03:42:22', NULL, 'Indigo', NULL, 'https://youtu.be/tDN3HIH0-bY', 1, NULL),
(146, 'CẦU HỒN', '101 Phút', 'Theo truyền thuyết, Đại học Văn hóa Trung Quốc Dương Dân Sơn nằm ở nơi ranh giới giữa người sống và người chết giao nhau. Kiến trúc ban đầu được thiết kế theo kiểu “bát quái” tốt lành để xua đuổi tà ác, nhưng thay vào đó lại bị thay đổi một cách ác ý thành “bát quái nghịch đảo”. Vô số cảnh tượng hiện ra và sự cố huyền bí đã gây khó khăn cho trường đại học kể từ đó. Ba năm trước, một sinh viên đang phát triển trò chơi kinh dị thực tế tăng cường tại trường đại học đã rơi vào tình trạng hôn mê sau một vụ tai nạn thang máy bí ẩn. Để hoàn thành trò chơi, em gái của anh bắt đầu thử nghiệm nhiều thử thách AR lấy cảm hứng từ truyền thuyết đô thị khác nhau với sự giúp đỡ của bạn bè, dẫn họ vào con đường của những cuộc chạm trán ngày càng kỳ lạ và đáng sợ…\r\nĐạo Diễn: Lester Hsi', 1, 'MV5BZWNmN2VjZjYtZTVhNS00MWVkLTg4NzItODUzY2RlYTQxZThjXkEyXkFqcGdeQXVyODY5NzkyMjA@3561.jpg', 'cau-hon', 2, 'phimle', 7, 8, 0, 0, 'The Bridge Curse: Ritual', 0, 0, '2024-04-06 03:45:32', '2024-04-06 03:45:32', NULL, 'The Bridge Curse: Ritual', NULL, 'https://youtu.be/oe6jTUhD_p4', 1, NULL),
(147, 'PRIMBON', '1g 28phút', 'Primbon Primbon 2023 là một tác phẩm điện ảnh thuộc thể loại kinh dị và bí ẩn của Indonesia, do Rudy Soedjarwo đạo diễn và Lele Laila viết kịch bản. Phim có sự tham gia của các diễn viên Happy Salma, Nugie, Flavio Zaviera, Chicco Kurniawan, và một số diễn viên khác.\r\nCâu chuyện của \"Primbon\" bắt đầu với Rana và người bạn thân nhất của cô, Janu, trong một chuyến leo núi dưới thời tiết xấu. Trong rừng rậm, họ bị lạc và tách biệt. Janu may mắn trở về nhà nhưng không phải Rana. Sau một tuần tìm kiếm không thành, gia đình Rana tổ chức một buổi tahlilan, coi như cô đã không còn sống sót. Tuy nhiên, điều kỳ diệu xảy ra khi Rana trở về nhà trong cơn mưa lớn sau buổi tahlilan đó.\r\nSự trở về đột ngột của Rana tạo ra xung đột trong gia đình cô. Mẹ của Rana, Dini, tin tưởng vào sự sống sót của con gái mình, trong khi gia đình mở rộng lại mang tư duy mê tín và nghi ngờ về bản chất thực sự của Rana, đặc biệt khi cô không nói gì và có vẻ ngoại hình khác thường.\r\nPhim được đánh giá là có cốt truyện hấp dẫn nhưng diễn biến khá chậm và có thể đã phù hợp hơn nếu là một phần của một bộ phim tuyển tập ngắn. Sự chú trọng vào hiệu ứng thực tế thay vì CGI trong phim cũng là một điểm cộng\r\nĐạo Diễn: Rudy Soedjarwo', 1, 'MV5BMTBhN2JjZTQtNzUyOC00ZjM2LWFiMzItYmFkNmI1YjA4NzJmXkEyXkFqcGdeQXVyMTEzMTI1Mjk33566.jpg', 'primbon', 2, 'phimle', 8, 9, 0, 0, 'Primbon', 0, 0, '2024-04-06 03:48:31', '2024-04-06 03:48:31', NULL, 'Primbon', NULL, 'https://youtu.be/dE_tB77UoLU', 1, NULL),
(148, 'BÍ ẨN TRẤN THƯỜNG LẠC', '87p', 'Bộ phim kể về câu chuyện Hồ Quốc Hoa bị kẻ gian hãm hại, gài bẫy cờ bạc khiến gia sản mất trắng. Anh ta phá phách đến mức tự đào mộ tổ tiên của mình, ngày một sa sút, thậm chí dàn dựng trò lố bịch như rước cô dâu giấy làm vợ để lừa tiền. Khi cuộc đời không còn hy vọng, anh tình cờ gặp được Tôn Quốc Phụ của Mô Kim Môn, được người chỉ dạy mà bắt đầu tỉnh ngộ. Tuy rằng tạo hoá trêu ngươi, Hồ Quốc Hoa đánh mất tình yêu của mình mãi mãi, nhưng anh đã rút ra bài học từ trải nghiệm đau đớn và thành công chuyển mình từ một thanh niên hư hỏng sang một du hiệp Mô Kim.​', 1, 'thumb-10980-17071448446840.jpg', 'bi-an-tran-thuong-lac', 2, 'phimle', 8, 6, 0, 0, 'the legend of bayi\'s grandpa', 0, 0, '2024-04-06 03:50:58', '2024-04-06 03:50:58', NULL, 'the legend of bayi\'s grandpa', NULL, 'https://youtu.be/_OGZo9P-LTM', 1, NULL),
(149, 'LỄ TẠ ƠN KINH HOÀNG', '106 Phút', 'Lễ Tạ Ơn Kinh Hoàng Thanksgiving 2023 về một sự kiện bạo loạn vào ngày Black Friday kết thúc trong bi kịch. Sau đó, một tên sát nhân bí ẩn lấy cảm hứng từ Lễ Tạ Ơn bắt đầu kích hoạt sợ hãi tại Plymouth, Massachusetts - nơi ngày lễ này ra đời. Tên sát nhân này bắt đầu tiến hành loại bỏ từng cư dân một, ban đầu có vẻ như là những vụ giết ngẫu nhiên để trả thù. Tuy nhiên, dần dần sự thật được tiết lộ, rằng những vụ giết chẳng phải là ngẫu nhiên mà lại là một phần của một kế hoạch lễ hội đen tối và đáng sợ hơn.\r\nCâu hỏi đặt ra là liệu thị trấn có thể khám phá ra danh tính của tên sát nhân và tồn tại qua những ngày lễ hay sẽ trở thành những nạn nhân trên bàn tiệc lễ hội kỳ quái của hắn? Phim sẽ khám phá câu chuyện căng thẳng và ám ảnh này trong bối cảnh của một kỳ nghỉ Lễ Tạ Ơn.\r\nĐạo diễn: Eli Roth', 1, 'thanksgiving_new_poster_1_7593.jpg', 'le-ta-on-kinh-hoang', 2, 'phimle', 7, 2, 0, 0, 'Thanksgiving', 0, 0, '2024-04-06 03:53:50', '2024-04-06 03:53:50', NULL, 'Thanksgiving', NULL, 'https://youtu.be/7bJiqbnFHSo', 1, NULL),
(150, 'MẸ MA', '100 Phút', 'Sau cái chết của cha mẹ, hai cô gái trẻ buộc phải cư trú trong một ngôi nhà có sự hiện diện đầy u ám và đáng sợ. Ngay cả sau khi được giải cứu, các thế lực tà ác vẫn theo họ đến ngôi nhà mới của họ.\r\nĐạo Diễn: Andy Muschietti', 1, 'Poster_phim_Mẹ_ma_20133346.jpg', 'me-ma', 2, 'phimle', 7, 2, 0, 0, 'Mama', 0, 0, '2024-04-06 03:56:33', '2024-04-06 03:56:33', NULL, 'Mama', NULL, 'https://youtu.be/ueZ918ugrE4', 1, NULL),
(151, 'THÒNG LỌNG MA 3', '108 Phút', 'Khao khát trở thành người có ảnh hưởng trong mảng parkour, một chàng trai tài năng xuất thân từ gia đình trừ tà bị cuốn vào vòng xoáy của những sự kiện ma quái ở khách sạn lạ lùng.\r\nĐạo Diễn: Liao Shih-Han', 1, 'images (18)6375.jpg', 'thong-long-ma-3', 2, 'phimle', 8, 8, 0, 0, 'The Rope Curse 3', 0, 0, '2024-04-06 04:01:46', '2024-04-06 04:01:46', NULL, 'The Rope Curse 3', NULL, 'https://youtu.be/-Oz0pGHXhVk', 1, NULL),
(152, 'MA ƠI CHÀO MI', '104 Phút', 'Nỗ lực tự kết liễu đời mình không thành công, chỉ để quay trở lại với mối liên hệ đầy ám ảnh với bốn hồn ma đang tìm cách thực hiện mong muốn cuối cùng của họ.\r\nĐạo Diễn: Indra Gunawan', 1, 'MV5BMTA4MWEwMWItZDMwZi00ZjEwLThjZTAtNzdkYjEzMmI3OTI2XkEyXkFqcGdeQXVyMTEzMTI1Mjk33915.jpg', 'ma-oi-chao-mi', 2, 'phimle', 8, 9, 0, 0, 'Hello Ghost', 0, 0, '2024-04-06 04:05:17', '2024-04-06 04:05:17', NULL, 'Hello Ghost', NULL, 'https://youtu.be/ICoxxRSFFgs', 1, NULL),
(153, 'GODZILLA MINUS ONE', '125 Phút', 'Nhật Bản thời hậu chiến đang ở thời điểm tồi tệ nhất khi một cuộc khủng hoảng mới xuất hiện dưới hình dạng một con quái vật khổng lồ, bị rửa tội bởi sức mạnh khủng khiếp của bom nguyên tử.\r\nĐạo Diễn	Takashi Yamazaki', 1, 'MV5BOTI5MjNjMTMtN2NiNC00YjBlLTgzMWQtMGRhZDZkYmY1NGU2XkEyXkFqcGdeQXVyNTgyNTA4MjM@3174.jpg', 'godzilla-minus-one', 2, 'phimle', 5, 4, 1, 0, 'Godzilla Minus One', 0, 0, '2024-04-06 04:08:57', '2024-04-06 04:08:57', NULL, 'Godzilla Minus One', NULL, 'https://youtu.be/r7DqccP1Q_4', 1, NULL),
(154, 'TRÚNG TÀ', '89 Phút', 'Bộ phim diễn ra vào thời kỳ Trung Hoa Dân quốc, kể về Mục Nguyên đang đối diện với cái chết, trong trí óc, anh ta tự tưởng tượng ra một bản thân mới là cảnh sát Triệu Nhân. Khi Triệu Nhân khám phá ra sự thật đằng sau những sự việc chấn động kỳ quái, Mục Nguyên cũng hoàn thành sự cứu rỗi tâm hồn của mình trước khi qua đời. Với các tình tiết căng thẳng, câu chuyện kể về một câu chuyện triết học xoay quanh việc cứu rỗi tâm hồn. Nó nhằm mục đích truyền tải đến khán giả rằng chỉ có dũng cảm đối mặt với những sai lầm, đau khổ trong quá khứ, chúng ta mới có thể thực sự cởi bỏ những nút thắt bên trong, bước ra khỏi sương mù và giành lại cuộc sống mới.\r\nĐạo Diễn	Ma Kai', 1, 'Headless-2023-270x400598.jpg', 'trung-ta', 2, 'phimle', 7, 6, 0, 0, 'Headless', 0, 0, '2024-04-06 04:13:16', '2024-04-06 04:13:16', NULL, 'Headless', NULL, 'https://youtu.be/468xjHFa8ps', 1, NULL),
(155, 'KHU RỪNG KỲ QUÁI', '104 Phút', 'Mã Hoành Viễn dẫn mọi người vào khu vực cấm của núi Trường Bạch để tìm tàu hỏa, trên đường đi, Bắc Bá Thiên tham lam và ngu ngốc không muốn tuân theo quy tắc của rừng già, trong thời gian nghỉ ngơi, những con búp bê ma đã gây ra náo loạn trong trại. Trong khi chạy trốn, họ gặp một hang động dưới lòng đất, từng tên cướp bị hang động nuốt chửng, Miêu Nữ và Lão Hổ xuất hiện và đưa Mã Hoành Viễn và những người khác rời khỏi khu vực hang động nguy hiểm. Những người sống sót tiếp tục tiến vào làng Long Hưng và phát hiện ra rằng họ đang tổ chức tang lễ. Tên cướp La Cô đã nảy lòng tham, xúc phạm xác chết\r\nĐạo Diễn	Ren Ying Jian', 1, 'images (19)4590.jpg', 'khu-rung-ky-quai', 2, 'phimle', 7, 6, 0, 0, 'The Weird Forest', 0, 0, '2024-04-06 04:15:12', '2024-04-06 04:15:12', NULL, 'The Weird Forest', NULL, NULL, 1, NULL),
(156, 'HOÀNG HÀ THỦ MỘ NHÂN', '86 Phút', 'Theo truyền thuyết, sau khi Vương Mãng lên ngôi hoàng đế, để đảm bảo quyền lực của hoàng gia có thể truyền từ thế hệ này sang thế hệ khác, đồng thời để ngăn chặn những kẻ dòm ngó kho báu trong lăng mộ của mình, ông đặt mộ của mình trong một quan tài hình con thuyền lớn, sau đó chôn nó dưới lớp cát của dòng sông Hoàng Hà. Ông cũng thành lập bốn giáo phái lớn trên sông Hoàng Hà, bao gồm Đào Sa, Lao Thi, Quy Táng và Thủ Lăng để chôn cất và bảo vệ lăng mộ. Mặc dù họ tổ chức mua bán hàng hóa trên sông nhưng nhiệm vụ hàng đầu của họ vẫn là bảo vệ lăng mộ. Do đó, trong khu vực lưu vực sông Hoàng Hà, có truyền thuyết xa xưa về \"kho báu bí mật của mắt Long Vương\" truyền miệng.\r\n\r\nTrong thời Trung Hoa dân quốc, bốn bang hội hàng hải lớn nhất vùng do nhiều năm tham chiến và tác động của biến cố chính trị đã trở nên bất đồng và không còn tuân theo các quy tắc truyền thống. Ngoài ra, các lãnh đạo thế hệ trước của bốn tổ chức đã già nua. Bốn tổ chức thường xảy ra xung đột lớn với nhau, và tình hình dưới lòng sông Hoàng Hà trở nên hỗn loạn.\r\n\r\nVương Ngũ Đẩu, một thành viên của tổ chức Đào Sa, từ nhỏ đã được nhận nuôi bơi thủ lĩnh nhưng do không rõ lai lịch nên anh luôn bị gia tộc coi thường. Vương Ngũ Đẩu tham gia vào một cuộc hành trình tìm kiếm kho báu dưới lòng sông Hoàng Hà, thực ra là để tìm ra danh tính thật của mình. Điều này đánh dấu sự khởi đầu của cuộc hành trình phiêu lưu dưới lòng sông Hoàng Hà.\r\n\r\nĐạo Diễn	Shen Hong Xiang, Neo', 1, 'images (20)4439.jpg', 'hoang-ha-thu-mo-nhan', 2, 'phimle', 7, 6, 0, 0, 'TOMB KEEPER', 0, 0, '2024-04-06 04:18:07', '2024-04-06 04:18:07', NULL, 'TOMB KEEPER', NULL, 'https://youtu.be/oW3D3sjp6lA', 1, NULL),
(157, 'NỮ HOÀNG VE SẦU', '97 Phút', 'Bị mắc kẹt ở Philippines trong Thế chiến thứ hai, một cô gái trẻ nhận ra rằng nhiệm vụ bảo vệ người mẹ đang hấp hối của mình rất phức tạp bởi niềm tin đặt nhầm chỗ vào một nàng tiên ăn thịt, lừa đảo.\r\nĐạo Diễn	Kenneth Lim Dagatan', 1, 'bQtnmercYvxUyDvvTRzN7dPBLrx7052.jpg', 'nu-hoang-ve-sau', 2, 'phimle', 8, 9, 0, 0, 'In My Mother\'s Skin', 0, 0, '2024-04-06 04:20:33', '2024-04-06 04:20:33', NULL, 'In My Mother\'s Skin', NULL, 'https://youtu.be/GQclHcpbKdA', 1, NULL),
(158, 'KIẾN QUÁI', '79 Phút', 'Năm 2070, một công nhân mù mắc kẹt trên hòn đảo bị bão tàn phá. Vậy là anh phải một mình sống sót và trốn tránh đám quái vật ẩn nấp trong bóng tối.\r\nĐạo Diễn	James Hung', 1, 'MV5BODk1NTdiYTctYzQ0Zi00ZjRjLTkzZDUtODlhNGRlMTM2YWFiXkEyXkFqcGdeQXVyNjY5NzM2Njc@5300.jpg', 'kien-quai', 2, 'phimle', 7, 6, 0, 0, 'Detrimental', 0, 0, '2024-04-06 04:23:36', '2024-04-06 04:23:36', NULL, 'Detrimental', NULL, 'https://youtu.be/s8eSwY1gO7k', 1, NULL),
(159, 'Thân xác phù hợp', '99 Phút', 'Một bác sĩ tâm thần trở nên ám ảnh với một trong số bệnh nhân trẻ của mình, người mà sau đó bác sĩ phát hiện liên quan đến một lời nguyền cổ xưa.\r\nĐạo Diễn	Joe Lynch', 1, 'images (21)4219.jpg', 'than-xac-phu-hop', 2, 'phimle', 7, 2, 0, 0, 'Suitable Flesh', 0, 0, '2024-04-06 04:25:42', '2024-04-06 04:25:42', NULL, 'Suitable Flesh', NULL, 'https://youtu.be/e52fRshVMRU', 1, NULL),
(160, 'THE ANGRY BLACK GIRL AND HER MONSTER', '91 Phút', 'Bộ phim kể về Vicaria là một thiếu niên thông minh, người tin rằng cái chết là một căn bệnh có thể chữa khỏi. Sau vụ sát hại dã man và bất ngờ anh trai mình, cô dấn thân vào một cuộc hành trình nguy hiểm để khiến anh sống lại.\r\nĐạo Diễn	Bomani J. Story', 1, 'images (22)4938.jpg', 'the-angry-black-girl-and-her-monster', 2, 'phimle', 7, 2, 0, 0, 'The Angry Black Girl and Her Monster', 0, 0, '2024-04-06 04:28:25', '2024-04-06 04:28:25', NULL, 'The Angry Black Girl and Her Monster', NULL, 'https://youtu.be/bDk_1PR5MUA', 1, NULL),
(161, 'NĂM ĐÊM KINH HOÀNG', '110 Phút', 'Bộ phim kể về một nhân viên bảo vệ gặp rắc rối khi anh bắt đầu làm việc tại Freddy Fazbear\'s Pizza. Sau ngày đầu tiên, anh nhận ra rằng ca đêm ở Freddy\'s không giống như bình thường.\r\nĐạo Diễn	Emma Tammi', 1, 'Áp_phích_Five_Nights_at_Freddy\'s_(Việt_Nam)1698.jpg', 'nam-dem-kinh-hoang', 2, 'phimle', 7, 2, 1, 0, 'Five Nights at Freddy\'s', 0, 0, '2024-04-06 04:32:23', '2024-04-06 04:32:23', NULL, 'Five Nights at Freddy\'s', NULL, 'https://youtu.be/yGeoPHN0Pss', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(201, 58, 3),
(202, 58, 4),
(203, 58, 8),
(204, 58, 9),
(205, 59, 1),
(206, 59, 3),
(207, 59, 8),
(208, 60, 1),
(209, 60, 5),
(210, 61, 1),
(211, 62, 1),
(212, 62, 5),
(213, 63, 3),
(214, 63, 10),
(215, 64, 1),
(216, 64, 4),
(217, 64, 10),
(218, 65, 1),
(219, 65, 5),
(220, 66, 3),
(221, 66, 10),
(222, 67, 9),
(223, 67, 10),
(224, 68, 3),
(225, 68, 9),
(226, 68, 10),
(227, 69, 1),
(228, 69, 3),
(229, 70, 1),
(230, 70, 5),
(231, 71, 1),
(232, 71, 5),
(233, 72, 3),
(234, 72, 10),
(235, 73, 10),
(236, 74, 1),
(237, 74, 5),
(238, 75, 1),
(239, 75, 6),
(240, 76, 8),
(244, 79, 1),
(245, 80, 1),
(246, 81, 1),
(247, 82, 1),
(249, 84, 1),
(250, 85, 6),
(251, 86, 1),
(252, 86, 6),
(254, 88, 1),
(255, 89, 1),
(256, 90, 3),
(257, 91, 3),
(258, 91, 4),
(259, 92, 1),
(260, 93, 3),
(261, 94, 10),
(262, 95, 10),
(263, 96, 3),
(264, 97, 1),
(265, 98, 7),
(266, 99, 1),
(267, 99, 5),
(268, 100, 1),
(269, 101, 1),
(270, 102, 3),
(271, 103, 10),
(272, 104, 10),
(273, 105, 3),
(274, 105, 10),
(275, 106, 10),
(276, 107, 10),
(277, 108, 9),
(278, 108, 10),
(279, 109, 10),
(280, 110, 10),
(281, 111, 1),
(282, 111, 3),
(283, 111, 8),
(284, 112, 1),
(285, 112, 3),
(286, 112, 4),
(287, 113, 1),
(288, 113, 3),
(289, 113, 4),
(290, 114, 1),
(291, 114, 3),
(292, 114, 8),
(293, 115, 1),
(294, 115, 5),
(295, 115, 8),
(296, 116, 1),
(297, 116, 8),
(298, 117, 3),
(299, 117, 7),
(300, 118, 1),
(301, 118, 3),
(302, 118, 8),
(303, 119, 4),
(304, 119, 8),
(305, 119, 9),
(306, 120, 3),
(307, 120, 4),
(308, 120, 8),
(309, 121, 3),
(310, 121, 8),
(311, 122, 1),
(312, 122, 8),
(313, 123, 3),
(314, 124, 1),
(315, 124, 5),
(316, 124, 6),
(317, 125, 8),
(318, 126, 1),
(319, 127, 1),
(320, 127, 7),
(321, 128, 1),
(322, 129, 1),
(323, 130, 1),
(324, 130, 5),
(325, 130, 6),
(326, 131, 7),
(327, 132, 1),
(328, 132, 3),
(329, 132, 7),
(330, 133, 1),
(331, 133, 3),
(332, 134, 1),
(333, 134, 7),
(334, 135, 7),
(335, 136, 7),
(336, 137, 7),
(337, 137, 8),
(338, 138, 1),
(339, 138, 7),
(340, 138, 8),
(341, 139, 7),
(342, 139, 8),
(343, 140, 1),
(344, 140, 6),
(345, 140, 7),
(346, 141, 7),
(347, 141, 8),
(348, 142, 1),
(349, 142, 7),
(350, 143, 7),
(351, 144, 7),
(352, 145, 7),
(353, 145, 8),
(354, 146, 7),
(355, 147, 7),
(356, 147, 8),
(357, 148, 7),
(358, 148, 8),
(359, 149, 1),
(360, 149, 7),
(361, 150, 7),
(362, 151, 7),
(363, 151, 8),
(364, 152, 7),
(365, 152, 8),
(366, 153, 1),
(367, 153, 5),
(368, 154, 7),
(369, 155, 1),
(370, 155, 6),
(371, 155, 7),
(372, 156, 1),
(373, 156, 6),
(374, 156, 7),
(375, 157, 7),
(376, 157, 8),
(377, 158, 1),
(378, 158, 7),
(379, 159, 1),
(380, 159, 7),
(381, 160, 3),
(382, 160, 7),
(383, 161, 1),
(384, 161, 5),
(385, 161, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(44, 'minhquang2002nt@gmail.com', '$2y$10$eAGPPXvtuBO3IWo9NHSNHOkqxnZ9O1RKXF8.ux3S6clZVNUozXwaO', '2024-03-18 12:24:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `name_movie` varchar(255) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `name_customer` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reports`
--

INSERT INTO `reports` (`id`, `id_movie`, `name_movie`, `id_customer`, `name_customer`, `content`) VALUES
(2, 58, 'Yêu Giữa Vùng Nước Dữ - In Love and Deep Water', 1, 'quang', 'lỗi phim'),
(3, 69, 'ĐẶC VỤ TỰ DO', 6, 'tanquy', 'Phim lỗi'),
(5, 76, 'TÌNH YÊU CHỐN ĐÔ THỊ', 1, 'quang', 'Phim lỗi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stars`
--

CREATE TABLE `stars` (
  `id` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `Star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `stars`
--

INSERT INTO `stars` (`id`, `id_movie`, `id_customer`, `Star`) VALUES
(1, 64, 1, 5),
(2, 58, 1, 5),
(3, 60, 4, 4),
(4, 72, 1, 4),
(5, 74, 1, 5),
(6, 69, 6, 4),
(7, 72, 6, 4),
(8, 74, 6, 2),
(9, 73, 6, 5),
(11, 71, 7, 5),
(12, 69, 7, 4),
(13, 60, 7, 4),
(14, 72, 7, 4),
(15, 74, 7, 5),
(17, 76, 7, 5),
(18, 76, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(18, 'Nguyễn Trịnh Minh Quang', 'minhquang2002nt@gmail.com', NULL, '$2y$10$bZ1bDWA6NMKvJZP9hDRav.meoilbB.NhO.4yY1JnKsKr.cywxOzQO', NULL, '2024-03-29 13:35:36', '2024-03-29 13:35:36', 901235966);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`,`id_customer`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customer`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`,`id_customer`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`,`id_customer`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `genre_id` (`genre_id`,`country_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`,`id_customer`);

--
-- Chỉ mục cho bảng `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`,`id_customer`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `stars`
--
ALTER TABLE `stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`);

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`);

--
-- Các ràng buộc cho bảng `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`);

--
-- Các ràng buộc cho bảng `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Các ràng buộc cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`);

--
-- Các ràng buộc cho bảng `stars`
--
ALTER TABLE `stars`
  ADD CONSTRAINT `stars_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
