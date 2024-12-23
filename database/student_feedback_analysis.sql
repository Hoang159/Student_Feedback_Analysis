-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 1, 2024 lúc 10:48 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `student_feedback_analysis`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `idtoconnect` smallint(5) UNSIGNED NOT NULL,
  `q1` varchar(255) NOT NULL,
  `q2` varchar(255) NOT NULL,
  `q3` varchar(255) NOT NULL,
  `q4` varchar(255) NOT NULL,
  `q5` varchar(255) NOT NULL,
  `q6` varchar(255) NOT NULL,
  `q7` varchar(255) NOT NULL,
  `q8` varchar(255) NOT NULL,
  `q9` varchar(255) NOT NULL,
  `q10` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`idtoconnect`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `created_at`) VALUES
(1, 'Nội dung môn học có rõ ràng và được trình bày một cách logic không?', 'Khối lượng bài giảng có phù hợp với thời lượng của môn học không?', 'Mức độ hữu ích của môn học đối với kiến thức và kỹ năng thực tế của bạn như thế nào?', 'Tài liệu học tập (giáo trình, tài liệu tham khảo, bài giảng) có đáp ứng nhu cầu học tập của bạn không?', 'Môn học có tạo động lực học tập và nghiên cứu thêm không?', 'Giảng viên có trình bày bài giảng một cách dễ hiểu và mạch lạc không?', 'Giảng viên có sử dụng các phương pháp giảng dạy sáng tạo và hấp dẫn không?', 'Giảng viên có hỗ trợ và giải đáp thắc mắc của sinh viên hiệu quả không?', 'Thái độ và tác phong giảng dạy của giảng viên có chuyên nghiệp và thân thiện không?', 'Mức độ hài lòng tổng thể của bạn đối với giảng viên của môn học này là bao nhiêu?', '2024-12-01 05:58:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result`
--

CREATE TABLE `result` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `ten_giang_vien` varchar(50) NOT NULL,
  `ten_hoc_phan` varchar(50) NOT NULL,
  `nguoi_danh_gia` varchar(50) NOT NULL,
  `cau_hoi_1` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_1` between 1 and 5),
  `cau_hoi_2` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_2` between 1 and 5),
  `cau_hoi_3` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_3` between 1 and 5),
  `cau_hoi_4` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_4` between 1 and 5),
  `cau_hoi_5` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_5` between 1 and 5),
  `cau_hoi_6` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_6` between 1 and 5),
  `cau_hoi_7` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_7` between 1 and 5),
  `cau_hoi_8` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_8` between 1 and 5),
  `cau_hoi_9` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_9` between 1 and 5),
  `cau_hoi_10` smallint(5) UNSIGNED NOT NULL CHECK (`cau_hoi_10` between 1 and 5),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`id`, `full_name`, `username`, `password`, `created_at`) VALUES
(1, 'Trần Đức Phát', 'tranducphat', 'tranducphat', '2024-11-30 20:13:49'),
(2, 'Lê Quang Hoàng', 'lequanghoang', 'lequanghoang', '2024-12-31 20:16:26'),
(3, 'Nguyễn Văn Huy', 'nguyenvanhuy', 'nguyenvanhuy', '2024-12-31 20:16:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `subject` set('Giải tích','Vật Lí','Anh Văn') DEFAULT 'Giải tích',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `subject`, `username`, `password`, `created_at`) VALUES
(1, 'Giảng Viên 1', 'Giải tích', 'giangvien1', 'giangvien1', '2024-11-30 19:41:56'),
(2, 'Giảng Viên 2', 'Giải tích,Vật Lí', 'giangvien2', 'giangvien2', '2024-11-30 19:44:11'),
(3, 'Giảng Viên 3', 'Giải tích,Vật Lí,Anh Văn', 'giangvien3', 'giangvien3', '2024-11-30 20:08:18');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`idtoconnect`);

--
-- Chỉ mục cho bảng `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `result`
--
ALTER TABLE `result`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
