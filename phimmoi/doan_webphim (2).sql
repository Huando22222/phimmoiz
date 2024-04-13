-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2024 lúc 11:59 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

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
(10, 'Ấn độ', 'Phim Ấn Độ cập nhật nhanh nhất', 1, 'Ấn độ');

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
(48, 76, '<iframe width=\"560\" height=\"315\" src=\"https://hdbo.opstream5.com/share/7143b3c23169789d1d83178002a9b07f\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '4', '2024-01-06 00:12:41', '2024-01-06 00:12:41');

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
(76, 'TÌNH YÊU CHỐN ĐÔ THỊ', '30 phút/tập', 'Tình Yêu Chốn Đô Thị kể về câu chuyện đem lòng yêu một cô gái phóng khoáng sau cuộc gặp lãng mạn bên bờ biển, một kiến trúc sư nhiệt huyết bắt đầu tìm cách gặp lại cô ở Seoul.', 1, 'th5996.jpg', 'tinh-yeu-chon-do-thi', 4, 'phimbo', 8, 5, 1, 0, 'Lovestruck in the City', 0, 0, '2024-01-06 00:11:34', '2024-01-06 00:11:34', NULL, 'Lovestruck in the City', NULL, 'https://youtu.be/HytY9PrO9f0?si=G-cOiXXOdOAtfQQR', 17, NULL);

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
(240, 76, 8);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

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
