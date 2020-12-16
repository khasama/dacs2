-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2020 lúc 03:13 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dacs2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_chitietdonhang`
--

CREATE TABLE `tb_chitietdonhang` (
  `idCTDH` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Kieu` varchar(255) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `idDH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_chitietdonhang`
--

INSERT INTO `tb_chitietdonhang` (`idCTDH`, `idSP`, `Kieu`, `DonGia`, `SoLuong`, `ThanhTien`, `idDH`) VALUES
(14, 6, 'XL - Trắng', 200000, 2, 400000, 21),
(15, 1, 'L - Trắng', 150000, 4, 600000, 21),
(16, 7, 'M - TÍm', 85000, 7, 595000, 21),
(17, 7, 'M - TÍm', 85000, 3, 255000, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_donhang`
--

CREATE TABLE `tb_donhang` (
  `idDH` int(11) NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `NoiNhan` varchar(255) NOT NULL,
  `GhiChu` varchar(500) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `idUser` int(11) NOT NULL,
  `idTTDH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_donhang`
--

INSERT INTO `tb_donhang` (`idDH`, `TenKH`, `SDT`, `NoiNhan`, `GhiChu`, `TongTien`, `ThoiGian`, `idUser`, `idTTDH`) VALUES
(21, 'khapro', '09999999', 'ABNC KJSDNSD', '', 1595000, '2020-12-13 18:30:45', 3, 2),
(22, 'khapro', '09999999', 'ABNC KJSDNSD', '', 255000, '2020-12-13 19:22:32', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_image`
--

CREATE TABLE `tb_image` (
  `idImg` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_image`
--

INSERT INTO `tb_image` (`idImg`, `idSP`, `Img`) VALUES
(5, 1, 'NsDuUxRnPFMq70Lh_eb.jpg'),
(6, 1, 'lgyQhOLq2p1dxIVb_df0c7.jpeg'),
(7, 1, '4DH9XhVWcCBP8mNA_eb.jpg'),
(8, 6, 'T9LcDxfyPUth7HJe_1.jpg'),
(9, 6, 'KWOGSU6eMNfHlhZX_3.jpg'),
(10, 7, 'LENRWTi6strXBaDH_4.jpg'),
(11, 7, 'q0u2Jbkr7BlMjZfv_3.jpg'),
(12, 7, 'FQEbOae4uAtNcj5i_2.jpg'),
(13, 7, 'Gt1Ky7POjpxYXn2m_1.jpg'),
(14, 8, 'suf4aGwARZJSWTyB_oB.jpg'),
(15, 8, 'gGOaTrA7ZdqCz3nD_A.jpg'),
(16, 9, 'HGe9Y1Zf3PcIDntJ_d.jpg'),
(17, 9, 'dblE0imyPuhr4eZ6_e.jpg'),
(18, 10, 'jaGz0enZPshui38y_ab.jpg'),
(19, 10, 'hBOpM1Eqy0AsXu9o_aa.jpg'),
(20, 10, 'IyuHqUjV1dTQMKRr_ac.jpg'),
(21, 15, 'aZfhHDgAPlvxYVnK_b.jpg'),
(22, 15, 'h1QRbEmevYqrNFiW_c.jpg'),
(23, 16, 'bQIgpL2hoPHVGUY1_aa.jpg'),
(24, 16, 'dg6TVUCqz5BmAW0F_ac.jpg'),
(25, 17, 'aVr3GDLuzsBwniem_c.jpg'),
(26, 17, 'ZTYrhM8pb7gyw5Ix_b.jpg'),
(27, 18, 'G6B8odAuJZDEUjVO_aa.jpg'),
(28, 18, 'uYqHUalcQeydoO1r_âb.jpg'),
(29, 19, 'johuxzEZ6Dm3A7QU_1.jpg'),
(30, 20, '0G3DFB2dXxgl9N6V_2.jpg'),
(31, 20, 'iA4b6WNJqnfTl3ra_3.jpg'),
(32, 20, 'Qz2Xb4M1LBa8u6hY_4.jpg'),
(33, 21, 'Sid9aAF2pKWne3JR_6.jpg'),
(34, 21, 'G2mDOiQYbVR5wlHP_7.jpg'),
(35, 22, 'vsaPOoTCm50uIngK_8.jpg'),
(39, 22, 'QIq0rLnNGBeYMxta_11.jpeg'),
(40, 23, 'ClJZB37gOko1x9We_10.jpg'),
(41, 23, 'J5cuOZrnK6jywXtH_11.jpg'),
(42, 25, 'hTFqVMvObNBr3zt5_13.jpg'),
(43, 26, 'jvusOa9NFpXCGxfo_14.jpg'),
(44, 27, 'jGMJ53DFuXZ0dbVn_15.jpg'),
(45, 27, 'xws9dEtbV0NT5qR1_16.jpg'),
(46, 27, 'xbGrm15lIeu9ntMf_17.jpg'),
(47, 28, 'BctyYvRomGWjixkN_19.jpg'),
(48, 28, 'h7aSvM4VW8skelRI_18.jpg'),
(49, 28, 'BlqynZVU0sJA5OS8_20.jpg'),
(50, 29, 'u7YKWE8L9pQchvNq_23.jpg'),
(51, 29, 'xfwdg1asL6nmRcF2_22.jpg'),
(52, 30, '5Bt6MGJfRmu7N0Wl_25.jpg'),
(53, 30, 'F0kjyOqxtir6LzMD_26.jpg'),
(54, 31, '8eDUqxj52SEMudKm_29.jpg'),
(55, 32, 'NdoeL94YnAFxuRPD_31.jpg'),
(56, 33, 'qyudRCSY7UjMGnZF_33.jpg'),
(57, 33, 'DrC580mFlVgdQBbM_34.jpg'),
(58, 33, 'eUgsMknJ8CcERxjh_35.jpg'),
(59, 34, 'lJaPLpi3M0OK5nX8_36.jpg'),
(60, 34, 'ov4TiCN5lcRk6gZE_37.jpg'),
(61, 35, 'gTvBSeXhizkMIyPd_38.jpg'),
(62, 35, 'kmLUPOGEcr2gqxab_39.jpg'),
(63, 35, 'j0qoH5c4J6AmZTVs_40.jpg'),
(64, 36, 'Tsin8S5bFokmLzyl_41.jpg'),
(65, 36, 'sXMTmcka2UdqQnCe_42.jpg'),
(66, 37, 'urPMeIhp5OXCngc6_44.jpg'),
(67, 38, 'ZExRgKAtviJjzSwu_46.png'),
(68, 39, 'VpgPd4oWKUqfhQu1_48.jpg'),
(69, 40, 'elYfEuZqPkitdb9v_50.jpg'),
(70, 41, '53TJ9DuCi0q4YGKl_52.jpg'),
(71, 42, 'UqAxbd3RZ2cmwOWs_54.jpg'),
(72, 42, '7vHeiZWQmT19xcY4_55.jpg'),
(73, 43, 'gcKdRJY28fh5PIAj_57.jpg'),
(74, 46, 'nAhSGOmwe7zp5Moq_2.jpg'),
(75, 47, 'nJID4ucryfshH2NT_4.jpg'),
(76, 48, 'PI9ToUpjMCDWJsNF_6.jpg'),
(77, 48, 'zJcsTue9wFBWhE8R_7.jpg'),
(78, 49, 'S2b5JdMNrBXenmvP_9.png'),
(79, 50, 'iR7sajXS2BZLb1wh_11.jpg'),
(80, 51, 'zEpb6oXiPSd8Acxu_13.jpg'),
(81, 52, 'iMH4nvYtWXCV9UNd_12.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_loai`
--

CREATE TABLE `tb_loai` (
  `idLoai` int(11) NOT NULL,
  `Loai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_loai`
--

INSERT INTO `tb_loai` (`idLoai`, `Loai`) VALUES
(1, 'Trang phục nam'),
(2, 'Trang phục nữ'),
(3, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_loaisanpham`
--

CREATE TABLE `tb_loaisanpham` (
  `idLoaiSP` int(11) NOT NULL,
  `LoaiSP` varchar(255) NOT NULL,
  `idLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_loaisanpham`
--

INSERT INTO `tb_loaisanpham` (`idLoaiSP`, `LoaiSP`, `idLoai`) VALUES
(1, 'Veston nam', 1),
(2, 'Sơ mi nam', 1),
(3, 'Quần nam', 1),
(4, 'Áo thun nam', 1),
(5, 'Áo khoác nam', 1),
(6, 'Đồ lót nam', 1),
(7, 'Veston nữ', 2),
(8, 'Sơ mi nữ', 2),
(9, 'Quần nữ', 2),
(10, 'Áo thun nữ', 2),
(11, 'Áo khoác nữ', 2),
(12, 'Đồ lót nữ', 2),
(13, 'Giày', 3),
(14, 'Dây nịt', 3),
(15, 'Ví', 3),
(16, 'Túi sách', 3),
(17, 'Nón', 3),
(18, 'Cà vạt', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_loaitaikhoan`
--

CREATE TABLE `tb_loaitaikhoan` (
  `idLoaiTK` int(11) NOT NULL,
  `LoaiTK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_loaitaikhoan`
--

INSERT INTO `tb_loaitaikhoan` (`idLoaiTK`, `LoaiTK`) VALUES
(1, 'Admin'),
(2, 'Thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_magiamgia`
--

CREATE TABLE `tb_magiamgia` (
  `idMGG` int(11) NOT NULL,
  `Ma` varchar(6) NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `NgayTao` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_magiamgia`
--

INSERT INTO `tb_magiamgia` (`idMGG`, `Ma`, `GiamGia`, `NgayTao`) VALUES
(1, 'KHAPRO', 69, '2020-12-08'),
(3, 'HAHAHA', 50, '2020-12-09'),
(4, '9ENJPI', 55, '2020-12-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_mau`
--

CREATE TABLE `tb_mau` (
  `idMau` int(11) NOT NULL,
  `Mau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_mau`
--

INSERT INTO `tb_mau` (`idMau`, `Mau`) VALUES
(1, 'Đỏ'),
(3, 'Trắng'),
(4, 'TÍm'),
(5, 'Xanh'),
(6, 'Vàng'),
(7, 'Đen'),
(8, 'Cam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_mausanpham`
--

CREATE TABLE `tb_mausanpham` (
  `idMauSP` int(11) NOT NULL,
  `idMau` int(11) NOT NULL,
  `idSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_mausanpham`
--

INSERT INTO `tb_mausanpham` (`idMauSP`, `idMau`, `idSP`) VALUES
(1, 4, 7),
(2, 3, 7),
(4, 3, 6),
(5, 3, 1),
(6, 1, 8),
(7, 3, 8),
(8, 4, 8),
(9, 7, 8),
(10, 5, 12),
(11, 3, 17),
(12, 5, 17),
(13, 7, 17),
(14, 3, 18),
(15, 7, 20),
(16, 3, 21),
(17, 7, 21),
(18, 1, 23),
(19, 5, 23),
(20, 6, 23),
(21, 1, 15),
(22, 5, 15),
(23, 3, 37),
(24, 7, 37),
(25, 3, 39),
(26, 4, 39),
(27, 6, 39),
(28, 7, 39),
(29, 3, 42),
(30, 8, 43),
(31, 5, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_rating`
--

CREATE TABLE `tb_rating` (
  `idRating` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_rating`
--

INSERT INTO `tb_rating` (`idRating`, `Rating`, `idUser`, `idSP`) VALUES
(1, 3, 2, 1),
(2, 5, 1, 1),
(3, 5, 2, 7),
(4, 4, 2, 6),
(5, 4, 3, 6),
(6, 5, 3, 1),
(7, 3, 3, 8),
(8, 3, 3, 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_sanpham`
--

CREATE TABLE `tb_sanpham` (
  `idSP` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `TenKD` varchar(255) NOT NULL,
  `GiaGoc` int(11) NOT NULL,
  `GiaGiam` int(11) NOT NULL,
  `Anh` varchar(255) NOT NULL,
  `MoTa` mediumtext NOT NULL,
  `DaBan` int(11) NOT NULL,
  `idLoaiSP` int(11) NOT NULL,
  `LuotLike` int(11) NOT NULL,
  `idTTSP` int(11) NOT NULL,
  `idTH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_sanpham`
--

INSERT INTO `tb_sanpham` (`idSP`, `Ten`, `TenKD`, `GiaGoc`, `GiaGiam`, `Anh`, `MoTa`, `DaBan`, `idLoaiSP`, `LuotLike`, `idTTSP`, `idTH`) VALUES
(1, 'Áo sơ mi nam tay dài vải lụa cao cấp KHÔNG NHĂN', 'ao-so-mi-nam-tay-dai-vai-lua-cao-cap-khong-nhan', 275000, 200000, '6ca4035cb5c4dcc42e01b7a1a1be3394.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu cao cấp, không nhăn, không xù, không phai màu.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Form body Hàn Quốc, dễ kết hợp với các loại quần</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp mặc trong nhiều môi trường khác nhau như công sở, tiệc, event, du lịch...</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế, chất vải cao cấp, sản phẩm tôn dáng, dễ mặc</span></p>\r\n\r\n<div id=\"bd_0\" style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n<div id=\"bd_0_container_0\" style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div id=\"shell-com-16020004\" style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p>Chất liệu cao cấp, không nhăn, không xù, không phai màu.</p>\r\n\r\n<p>Form body Hàn Quốc, dễ kết hợp với các loại quần.</p>\r\n\r\n<p>Made in Việt Nam.</p>\r\n\r\n<p>Được sử dụng nhiều nhất trên thị trường.</p>\r\n\r\n<p>Thích hợp mặc trong nhiều môi trường khác nhau như công sở, tiệc, event, du lịch..</p>\r\n\r\n<p>Màu sắc: Trắng, đen, cam, đỏ</p>\r\n\r\n<p>Đường may tinh tế, chất vải cao cấp, sản phẩm tôn dáng, dễ mặc.</p>\r\n\r\n<p>Size: M, L, XL, XXL</p>\r\n\r\n<p>Size M : Nặng 50kg trở xuống</p>\r\n\r\n<p>Size L : Nặng 60kg trở xuống</p>\r\n\r\n<p>Size XL : Nặng 70kg trở xuống</p>\r\n\r\n<p>XXL: Nặng 80kg trở xuống</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', 4, 2, 0, 1, 3),
(6, 'Áo Sơ Mi Nam Trắng Trơn TRANGBE99', 'ao-so-mi-nam-trang-tron-trangbe99', 220000, 200000, 'VyPMDYsNJTKXc09F_2.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi được làm từ chất liệu vải Lụa Nến mềm mịn, không bai gião, ít bám bụi, ít nhăn.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi có phom dáng ôm cơ thể, cổ tàu ôm vừa phải, nhẹ nhàng tôn dáng người mặc.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may của áo sơ mi rất chắc chắn thoải mái cho người sử dụng có thể vận động.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi có màu trắng trơn (Trắng dịu Besi) giúp người mặc dễ dàng phối đồ với những bộ vest hay quần âu, quần jean, quần kaki, ...</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">- Loại : Áo Sơ Mi Trắng Trơn</p>\r\n\r\n<p style=\"text-align:justify\">- Kiểu Dáng : Công Sở, Hẹn Hò, Đi Chơi.</p>\r\n\r\n<p style=\"text-align:justify\">- Chất Liệu : Vải Lụa</p>\r\n\r\n<p style=\"text-align:justify\">- Chất Vải :</p>\r\n\r\n<p style=\"text-align:justify\">Vải lụa mềm mịn, ít nhăn, ít bám bụi giữ dáng không bai gião cho dù giặt nhiều lần.</p>\r\n\r\n<p style=\"text-align:justify\">Chất vải này rất bền chắc giúp người mặc có thể thoải mái vận động mà không lo vải áo bị xù lông hay bung chỉ.</p>\r\n\r\n<p style=\"text-align:justify\">- Kiểu dáng :</p>\r\n\r\n<p style=\"text-align:justify\">Dáng áo sơ mi ôm sát cơ thể, đặc biệt là cổ áo và dáng lưng áo ôm nhẹ giúp tôn dáng người mặc trông trẻ trung nam tính hơn.</p>\r\n\r\n<p style=\"text-align:justify\">Cổ tay áo là ống côn bo gọn và được máy chắc giúp người mặc thoải mái vận động di chuyển mà không lo bị vướng.</p>\r\n\r\n<p style=\"text-align:justify\">-&nbsp;Màu sắc :</p>\r\n\r\n<p style=\"text-align:justify\">Trắng</p>\r\n\r\n<p style=\"text-align:justify\">- Bảo quản :</p>\r\n\r\n<p style=\"text-align:justify\">Áo sơ mi được làm bằng chất vải lụa nến ít thấm nước nên anh em có thể ngâm nước một chút trước khi giặt để quần giặt sạch sẽ hơn.</p>\r\n\r\n<p style=\"text-align:justify\">--------------------------------------------<br />\r\nHướng Dẫn Bảo Quản Sử Dụng</p>\r\n\r\n<p style=\"text-align:justify\">- Lộn trái áo ra và sử dụng nước giặt để giữ sản phẩm bền màu.</p>\r\n\r\n<p style=\"text-align:justify\">- Sau khi giặt xong, vắt kiệt nước và giũ mạnh rồi phơi để sản phẩm không bị nhăn.</p>\r\n\r\n<p style=\"text-align:justify\">- Để áo khô tự nhiên, phơi trong bóng râm thoáng mát.</p>\r\n\r\n<p style=\"text-align:justify\">- Không sử dụng hóa chất, thuốc tẩy trực tiếp lên sản phẩm.</p>\r\n\r\n<p style=\"text-align:justify\">- Không ngâm quá lâu trong dung dịch tẩy.</p>\r\n\r\n<p style=\"text-align:justify\">- Là ủi ở nhiệt độ dưới 100 độ C.</p>\r\n\r\n<p style=\"text-align:justify\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...</p>\r\n', 2, 2, 0, 1, 3),
(7, 'Áo sơ mi nam Amazing, họa tiết nhỏ, tay ngắn, vạt ngang, dáng rộng', 'ao-so-mi-nam-amazing-hoa-tiet-nho-tay-ngan-vat-ngang-dang-rong', 199000, 150000, '27P5fhXlvE4ympuw_1.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi nam Amazing, họa tiết nhỏ, tay ngắn, vạt ngang, dáng rộng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Với gam màu trắng và đen chủ đạo, có thể nói đây là sự lựa chọn dễ dàng nhất đối với phái mạnh.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi nam Amazing, họa tiết nhỏ - không chỉ tới công sở mà khi đi dạo phố, hẹn hò hay những dịp đặc biệt khác, những chiếc áo sơ mi nam Amazing, họa tiết nhỏ&nbsp;cũng mang lại vẻ đẹp nam tính, đơn giản nhưng lịch lãm vô cùng.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế form dáng rộng rãi, cùng chất liệu thấm hút mồ hôi rất tốt, chiếc áo sơ mi hoa văn nho nhỏ, họa tiết rơi rơi giúp các chàng thoải mái trong mọi hoạt động hằng ngày. Tha hồ Mix- Match, khắc phục các nhược điểm cơ thể mà không kém phần phá cách.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi Amazing cao cấp, đường may tỉ mỉ, chắc chắn, có nút dự phòng, vải kate thoáng mát.</span></p>\r\n', 10, 2, 0, 1, 2),
(8, 'Áo Thun Có Cổ Cá Sấu 4 Chiều Nam Nữ', 'ao-thun-co-co-ca-sau-4-chieu-nam-nu', 175000, 89000, 'XhZHnvkDA47gzRPt_A.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo Thun Ngắn Tay Có Cổ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo Thun Cổ Bẻ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Vải Cá Sấu Poly 4 Chiều</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Không bị Giãn</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Không Đổ Lông</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mát Thoáng Mát</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Dùng Làm Đồng Phục Hoặc In logo</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo Dùng Cho Cả Nam Và Nữ (Chọn size Theo Cân nặng)</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 4, 0, 1, 2),
(9, 'Áo Thun Nam 5S Cổ Tròn Cao Cấp Trẻ trung, thoáng mát, thấm hút mồ hôi N3', 'ao-thun-nam-5s-co-tron-cao-cap-tre-trung-thoang-mat-tham-hut-mo-hoi-n3', 199000, 89000, '86JXOR1tkbY4hpvI_c.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tên sản phẩm: Áo Thun Nam 5S Cổ Tròn Cao Cấp Trẻ trung, thoáng mát, thấm hút mồ hôi N3</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thương hiệu: thời trang cao cấp 5S</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế: Cổ tròn, tay ngắn, ngực áo thêu logo nhỏ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu: Trắng, Xanh Cổ Vịt, Đỏ Đô, Đen</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phom dáng: SlimFit</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thành phần: 95% CVC, 5% Spandex</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường May: Tinh Tế, Tỉ Mỉ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size: S - M - L - XL - 2XL</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản xuất: Việt Nam</span></p>\r\n', 0, 4, 0, 1, 2),
(10, 'Áo Thun SWE Mẫu Áo Thun Phản Quang Siêu Đẹp', 'ao-thun-swe-mau-ao-thun-phan-quang-sieu-dep', 140000, 83000, '8zNfabCjXH39EAkG_aa.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu:thun cotton 70%, không mỏng, không xù lông, hàng đẹp thấm hút mồm hôi cực tốt, mềm mại cho da</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may chắc chắn chuẩn đẹp</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">In cao cấp đặc biệt không ra màu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Hợp với xu hướng thời trang mới nhất, dễ phối đồ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Có đủ các size 38-78kg(chọn theo bảng size ở ảnh sản phẩm) đáp ứng cho mọi khách hàng.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">HÌNH THẬT GIỐNG MẪU 100%</span></p>\r\n', 0, 4, 0, 1, 2),
(12, 'Ví Nữ- Ví Bóp Da Cầm Tay Nữ Mini Dễ thương Hàn Quốc VI88', 'vi-nu-vi-bop-da-cam-tay-nu-mini-de-thuong-han-quoc-vi88', 70000, 37000, 'RvEfUqGgB5O9cNyn_ff.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kích thước: 11.5cm x 9cm x 1.5cm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Da PU cao cấp, chất da mềm mịn, phong cách nữ tính, trẻ trung.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Style: Korea</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế đơn giản mà sang trọng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp làm quà tặng, đi chơi, dự tiệc mà còn là vật hộ mệnh cho đường tiền bạc của bạn.</span></p>\r\n\r\n<p style=\"text-align:justify\">Trong thế giới thời trang của phái đẹp chiếc ví cầm tay nữ mini luôn chiếm một vị trí quan trọng.</p>\r\n\r\n<p style=\"text-align:justify\">Từ những cô nàng bình thường nhất cho tới những ngôi sao hàng đầu, tất cả đều chia sẻ một tình yêu vĩ đại với những chiếc ví</p>\r\n\r\n<p style=\"text-align:justify\">Chiếc ví nữ mini hợp dáng người, hợp màu sắc làm tăng vẻ đẹp của trang phục bạn mặc và khẳng định ấn tượng của bạn trong mắt người đối diện.</p>\r\n\r\n<p style=\"text-align:justify\">Mang tới cho các cô nàng sự thoải mái khi đi dạo phố hoặc hẹn hò bè bạn vì không phải cầm mang những vật dụng linh tinh, chiếc ví đã trở thành người bạn không thể thiếu các nàng.</p>\r\n', 0, 15, 0, 1, 2),
(13, 'Áo đũi nam vải mát', 'ao-dui-nam-vai-mat', 199000, 109000, 'CjSdg2ucM0zfZoOP_m.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Bảng Size: M 45-53 ; L 54-60 ; XL 61-71 ; XXL 72-80kg</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: Trắng ; kem; vàng ; Đen ;</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu : Vải đẹp, rút mồ hôi cực nhanh và mặc siêu mát</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng, thiết kế đơn giản và hài hòa đẹp mắt.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng lịch sự, đường chỉ may tỉ mỉ.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc trang nhã, tạo cá tính cho người mặc</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Shop cam kết: không bai, không phai, không co rút.!</span></p>\r\n\r\n<p style=\"text-align:justify\">Bảng Size: M 45-53 ; L 54-60 ; XL 61-71 ; XXL 72-80kg<br />\r\nMàu sắc: Trắng ; kem; vàng ; Đen ;<br />\r\nChất liệu : Vải đẹp, rút mồ hôi cực nhanh và mặc siêu mát<br />\r\nKiểu dáng, thiết kế đơn giản và hài hòa đẹp mắt.<br />\r\nKiểu dáng lịch sự, đường chỉ may tỉ mỉ.<br />\r\nMàu sắc trang nhã, tạo cá tính cho người mặc<br />\r\nShop cam kết: không bai, không phai, không co rút.!</p>\r\n\r\n<p style=\"text-align:justify\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...</p>\r\n', 0, 4, 0, 1, 2),
(14, 'Ví nữ đi tiệc đeo chéo mini thời trang DH12 dọc nắp hình tai gấu Shalla', 'vi-nu-di-tiec-deo-cheo-mini-thoi-trang-dh12-doc-nap-hinh-tai-gau-shalla', 135000, 79000, 'lTnNVKu4BgSwtaFp_A.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kích thước túi 17 x 12 x 4 cm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng nắp gập trẻ trung</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế da PU sang trọng, hiện đại</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế cực đẹp, trẻ trung và năng động lại dễ phối đồ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tông màu thời trang, ấn tượng, cá tính</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Túi khóa của túi dùng cúc bấm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Bên trong có hai ngăn lớn và khe đựng thẻ. Mặt sau có một ngăn kéo khóa</span></p>\r\n\r\n<p style=\"text-align:justify\">Túi da đeo chéo có thiết kế gọn nhẹ, thời trang giúp bạn dễ dàng kết hợp với quần áo. Tiện dụng cho bạn khi ra ngoài.</p>\r\n\r\n<p style=\"text-align:justify\">Có thể thay thế làm chiếc ví nhỏ gọn, giúp bạn thoải mái mang theo bên mình.</p>\r\n\r\n<p style=\"text-align:justify\">Màu sắc sang trọng, quý phái.Có thể sử dụng cho nhiều mục đích khác nhau như đi làm, đi du lịch, đi dự tiệc</p>\r\n', 0, 15, 0, 1, 2),
(15, 'Ví Clutch Dự Tiệc Đính Nơ Phong Cách Sang Trọng', 'vi-clutch-du-tiec-dinh-no-phong-cach-sang-trong', 458000, 199000, 'XJPB50Anbr9LIMvC_a.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Ví màu đen , vàng, trắng phủ kim tuyến kết hợp đính ngọc được thiết kế kiểu dáng clutch thời thượng, viền kim loại sang trọng. Sản phẩm có cỡ nhỏ tiện mang theo bên người, đặc biệt phù hợp diện cùng đầm dự tiệc.</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu kim loại bền không gỉ sét, cho bạn thoải mái sử dụng lâu dài.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sở hữu không gian chứa rộng rãi với thiết kế khóa kéo chắc chắn, có thể thoải mái sắp xếp những vật dụng cá nhân cần thiết.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng thời trang kết hợp cùng tông màu nổi bật, tạo phong cách ấn tượng và duyên dáng cho phái đẹp.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm có đi kèm dây đeo kèm quai xách, thuận tiện để đeo đi chơi, đi dạo phố hoặc tham dự những sự kiện, những buổi họp mặt thân mật.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">kích thước:19.5x12x7.5</span></p>\r\n\r\n<p style=\"text-align:justify\">Ví màu đen , vàng, trắng phủ kim tuyến kết hợp đính ngọc được thiết kế kiểu dáng clutch thời thượng, viền kim loại sang trọng. Sản phẩm có cỡ nhỏ tiện mang theo bên người, đặc biệt phù hợp diện cùng đầm dự tiệc.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu kim loại bền không gỉ sét, cho bạn thoải mái sử dụng lâu dài.</p>\r\n\r\n<p style=\"text-align:justify\">Sở hữu không gian chứa rộng rãi với thiết kế khóa kéo chắc chắn, có thể thoải mái sắp xếp những vật dụng cá nhân cần thiết.</p>\r\n\r\n<p style=\"text-align:justify\">Kiểu dáng thời trang kết hợp cùng tông màu nổi bật, tạo phong cách ấn tượng và duyên dáng cho phái đẹp.</p>\r\n\r\n<p style=\"text-align:justify\">Sản phẩm có đi kèm dây đeo kèm quai xách, thuận tiện để đeo đi chơi, đi dạo phố hoặc tham dự những sự kiện, những buổi họp mặt thân mật.</p>\r\n\r\n<p style=\"text-align:justify\">kích thước:19.5x12x7.5</p>\r\n', 0, 15, 0, 1, 2),
(16, 'Ví da nam, Bóp da nam đựng tiền nhiều ngăn tiện lợi - VI04', 'vi-da-nam-bop-da-nam-dung-tien-nhieu-ngan-tien-loi-vi04', 198000, 99000, 'emrz4EDXsbGgPL81_ab.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: PU</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu: họa tiết trơn</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tình trạng: mới</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phù hợp: mọi lứa tuổi</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kích thước: 10 x 1.5 x 12 cm ( D x R x C)</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: Nâu, đen</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may sắc sảo, tinh tế</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp làm quà tặng ý nghĩa cho bạn bè và người thân</span></p>\r\n\r\n<h2 style=\"text-align:justify\">Thiết kế tinh tế, kiểu dáng đẹp mắt</h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm được thiết kế tinh tế, với nhiều ngăn nhỏ tiện lợi, giúp người dùng thoải mái sử dụng.</li>\r\n	<li>Ngoài ngăn chính đựng tiền thông dụng, ví có khả năng đựng và bảo vệ được hầu hết các loại giấy tờ, thẻ ngân hàng, chứng minh nhân dân, một cách an toàn, chắc chắn.</li>\r\n	<li>Sở hữu kích thước nhỏ gọn kết hợp với kiểu dáng đứng độc đáo, ví nam mang đến sự tiện lợi, sang trọng nhưng không kém phần thời trang.</li>\r\n	<li>Sản phẩm không chỉ giúp bạn dễ dàng phối đồ hơn mà còn thích hợp sử dụng cho nhiều đối tượng khách nhau, từ những chàng trai trẻ cho đến các quý ông lịch lãm, cũng đều tôn lên vẻ sành điệu, đẳng cấp và nét cá tính rất riêng của người dùng.</li>\r\n</ul>\r\n', 0, 15, 0, 1, 2),
(17, 'Giày Thể Thao Nam Có Đệm Khí Trợ Lực Êm Chân, Thoáng Khí - GN92', 'giay-the-thao-nam-co-dem-khi-tro-luc-em-chan-thoang-khi-gn92', 400000, 190000, '3viYzEguaQfeB4Nx_a.jpg', '<p>Đế dày 4-5cm, chất liệu cao su tổng hợp.<br />\r\nVỏ ngoài thoáng khí, chất liệu vải và PU.<br />\r\nKiểu dáng buộc dây sneaker.<br />\r\nĐế cao su non đúc, tạo cảm giác thoái mái khi đi.<br />\r\nSize: 39 đến 44<br />\r\n2 màu : đen,trắng<br />\r\nKiểu dáng phong cách, trẻ trung, ấn tượng</p>\r\n\r\n<p>Mẫu giày thể thao mới nhất nhất năm 2020</p>\r\n\r\n<ul>\r\n	<li>Kiểu dáng giày cực ngầu, trẻ trung, mạnh mẽ, năng động, sang trọng và đẳng cấp</li>\r\n	<li>Thích hợp mang đi chơi, đi chợ,đi đòi nợ, đi học, đi làm, đi picnic, đi dự tiệc, chơi thể thao… đều được.</li>\r\n	<li>Đế dày 4-5cm, chất liệu cao su tổng hợp.</li>\r\n	<li>Vỏ ngoài thoáng khí, chất liệu vải và PU.</li>\r\n	<li>Kiểu dáng buộc dây sneaker. Giày lười.</li>\r\n	<li>Nhiều size: đủ size</li>\r\n	<li>2 màu : đen,trắng</li>\r\n	<li>Sản phẩm được đảm bảo chất lượng</li>\r\n	<li>Kiểu dáng phong cách, trẻ trung, ấn tượng</li>\r\n	<li>Đế cao su non đúc, tạo cảm giác thoái mái khi đi.</li>\r\n</ul>\r\n', 0, 13, 0, 1, 2),
(18, 'Áo Sơ Mi Nam Tay Dài Chất Liệu Kate Lụa Chống Nhăn Nhiều Màu, Nhiều Size', 'ao-so-mi-nam-tay-dai-chat-lieu-kate-lua-chong-nhan-nhieu-mau-nhieu-size', 115000, 89000, 'rFnSagvxYmoKpEOw_aa.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu cao cấp, không nhăn, không xù, không phai màu.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Form body Hàn Quốc, dễ kết hợp với các loại quần.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Made in Việt Nam.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Được sử dụng nhiều trên thị trường.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp mặc trong nhiều môi trường khác nhau như công sở, tiệc, event, du lịch..</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: Trắng, đen, xám</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế, chất vải cao cấp, sản phẩm tôn dáng, dễ mặc.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size: M, L, XL,XXL,3XL</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size M : Nặng 50kg trở xuống</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size L : Nặng 60kg trở xuống</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size XL : Nặng 67kg trở xuống</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size XXL : Nặng 75kg trở xuống</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size 3XL : Nặng 80kg trở xuống</span></p>\r\n\r\n<p style=\"text-align:justify\">Áo sơ mi nam thời trang là một trong những item không thể thiếu trong tủ đồ của mỗi chàng trai.</p>\r\n\r\n<p style=\"text-align:justify\">Có nhiều mẫu mã đa dạng, phù hợp với mọi sự kiện, đây thực sự là sản phẩm cần thiết cho những bạn trẻ hiện đại, năng động.</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu kate lụa thoáng mát chống nhăn dễ mix với nhiều đồ khác nhau</p>\r\n\r\n<p style=\"text-align:justify\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...</p>\r\n', 0, 2, 0, 1, 2),
(19, 'Áo Sơ Mi Nam Phối Caro Không Lên Lai Nam Tính', 'ao-so-mi-nam-phoi-caro-khong-len-lai-nam-tinh', 168000, 119000, 'LjyH16PCbTWMKE4i_1.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi nam body vẫn rất phù hợp để sử dụng thoải mái cho môi trường công sở.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mẫu áo có thiết kế như thế này sẽ giúp các bạn nam thể hiện được sự tươi trẻ, năng động, thanh lịch và dễ dàng khoe được vóc dáng cân đối của cơ thể.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mẫu áo sơ mi nam body phù hợp và đẹp nhất khi được những chàng trai sở hữu thân hình săn chắc và thon gọn.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Có 4 size M L XL XXL</span></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/dc/fe/3d/bf1572ac01e8e4b837e1e29661cde487.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:271px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...</p>\r\n', 0, 2, 0, 1, 2),
(20, 'Áo sơ mi nam họa tiết', 'ao-so-mi-nam-hoa-tiet', 450000, 115000, 'Xbo9wnCIfgF6HtJh_2.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế cổ bẻ, tay dài, có nút gài phía trước chắc chắn, đường may tỉ mỉ.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo thiết kế form vừa vặn giúp tôn được đường nét mạnh mẽ, nam tính của các chàng trai.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc tinh tế phối với họa tiết nổi bật, mang đến sự thanh lịch, cuốn hút.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Xuất xứ: Việt Nam</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Kate lụa</span></p>\r\n\r\n<p style=\"text-align:justify\">Thiết kế cổ bẻ, tay dài, có nút gài phía trước chắc chắn, đường may tỉ mỉ.</p>\r\n\r\n<p style=\"text-align:justify\">Áo thiết kế form vừa vặn giúp tôn được đường nét mạnh mẽ, nam tính của các chàng trai.</p>\r\n\r\n<p style=\"text-align:justify\">Màu sắc tinh tế phối với họa tiết nổi bật, mang đến sự thanh lịch, cuốn hút.</p>\r\n\r\n<p style=\"text-align:justify\">Xuất xứ: Việt Nam</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu: Kate lụa</p>\r\n', 0, 2, 0, 1, 2),
(21, 'Áo Sơ Mi Nam Phối Caro Phong Cách Trẻ Trung', 'ao-so-mi-nam-phoi-caro-phong-cach-tre-trung', 165000, 99000, 'BGK68g1vQUxI590S_5.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi nam body vẫn rất phù hợp để sử dụng thoải mái cho môi trường công sở.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mẫu áo có thiết kế như thế này sẽ giúp các bạn nam thể hiện được sự tươi trẻ, năng động, thanh lịch và dễ dàng khoe được vóc dáng cân đối của cơ thể.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mẫu áo sơ mi nam body phù hợp và đẹp nhất khi được những chàng trai sở hữu thân hình săn chắc và thon gọn.</span></p>\r\n\r\n<p style=\"text-align:justify\">Freesize cho người dưới 62kg</p>\r\n', 0, 2, 0, 1, 2),
(22, 'Áo Sơ Mi Nam Boo Boo Tay Ngắn FEAER DENIM Form Suông, Chất Lụa Cao Cấp, Họa Tiết Trẻ Trung', 'ao-so-mi-nam-boo-boo-tay-ngan-feaer-denim-form-suong-chat-lua-cao-cap-hoa-tiet-tre-trung', 280000, 249000, '6Wp3u2l9XzaLIVyx_9.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất vải lụa chéo, vải mềm, mịn, thoáng.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size M, L, XL. Form Suông. Họa tiết Boo Boo</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Hàng full tag, mác cực sang chảnh.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tỉ mỉ, chắc chắn. Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp mặc đi chơi, dạo phố, tham dự dạ hội, tiệc tùng, đi làm, đi học và các sự kiện khác nữa</span></p>\r\n\r\n<p style=\"text-align:justify\">Áo Sơ Mi Nam Boo Boo Tay Ngắn FEAER DENIM Form Suông, Chất Lụa Cao Cấp, Họa Tiết Trẻ Trung</p>\r\n\r\n<ul>\r\n	<li>Hàng full tag, mác cực sang chảnh</li>\r\n	<li>Chất vải lụa chéo, vải mềm, mịn, thoáng.</li>\r\n	<li>Họa tiết Boo Boo</li>\r\n	<li>Đường may tỉ mỉ, chắc chắn</li>\r\n	<li>Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ</li>\r\n	<li>Thích hợp mặc đi chơi, dạo phố, tham dự dạ hội, tiệc tùng, đi làm, đi học và các sự kiện khác nữa.</li>\r\n	<li>Size: M, L, XL,&nbsp;<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất vải lụa chéo, vải mềm, mịn, thoáng.</span><br />\r\n	<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size M, L, XL. Form Suông. Họa tiết Boo Boo</span><br />\r\n	<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Hàng full tag, mác cực sang chảnh.</span><br />\r\n	<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tỉ mỉ, chắc chắn. Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.</span><br />\r\n	<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp mặc đi chơi, dạo phố, tham dự dạ hội, tiệc tùng, đi làm, đi học và các sự kiện khác nữa</span>\r\n	<p style=\"text-align:justify\">Áo Sơ Mi Nam Boo Boo Tay Ngắn FEAER DENIM Form Suông, Chất Lụa Cao Cấp, Họa Tiết Trẻ Trung</p>\r\n	</li>\r\n	<li>Hàng full tag, mác cực sang chảnh</li>\r\n	<li>Chất vải lụa chéo, vải mềm, mịn, thoáng.</li>\r\n	<li>Họa tiết Boo Boo</li>\r\n	<li>Đường may tỉ mỉ, chắc chắn</li>\r\n	<li>Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ</li>\r\n	<li>Thích hợp mặc đi chơi, dạo phố, tham dự dạ hội, tiệc tùng, đi làm, đi học và các sự kiện khác nữa.</li>\r\n	<li>Size: M, L, XL,&nbsp;</li>\r\n</ul>\r\n', 0, 2, 0, 1, 2),
(23, 'Áo sơ mia nam slim fit Amazing, vải kate thun co giãn 04 chiều, tay dài, màu sắc da dạng', 'ao-so-mia-nam-slim-fit-amazing-vai-kate-thun-co-gian-04-chieu-tay-dai-mau-sac-da-dang', 199000, 190000, 'bYKJ1on2DVTrgQRk_10.jpg', '<div style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Áo sơ mi nam slim fit thương hiệu Amazing thiết kế Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm<br />\r\nChất liệu vải kate thun co giãn 04 chiều, thấm hút mồ hôi<br />\r\nNhiều màu sắc, form áo tôn body đơn giản, dễ mặc, dễ phối đồ.<br />\r\nChi tiết trong từng đường kim mũi chỉ.\r\n<p style=\"text-align:center\"><span style=\"font-size:24pt\"><em><span style=\"color:rgb(255, 0, 0)\">Áo sơ mia nam slim fit Amazing, vải kate thun co giãn 04 chiều, tay dài, màu sắc da dạng</span></em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\">Show diễn hình thể đẹp cùng item&nbsp;<em>áo body fit</em>, chất liêu&nbsp;<em>KT thun co giãn 4 chiều</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">Những sản phẩm mới nhất vẫn liên tục được cập nhật mỗi ngày phù hợp với nhiều lứa tuổi.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><img src=\"https://salt.tikicdn.com/ts/tmp/de/fc/82/50c58c80a69af72cc236ad9e8e16eb37.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /><br />\r\nShow trọn hình thể với thiết kế gọn gàng, khỏe khoắn.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\">Form áo ôm vừa body, cùng&nbsp;<em>chất liệu KT thun co giãn nhẹ&nbsp;</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(255, 0, 0)\">BẢNG SIZE THAM KHẢO</span><br />\r\n<img src=\"https://salt.tikicdn.com/cache/w750/ts/product/6f/1b/1c/4241f8d6b1accd6aadb0f65e6dca9eba.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">&nbsp;-&nbsp;<em>Áo sơ mi nam</em>&nbsp;<em>BODY AMAZING</em>&nbsp;chính là gợi ý tuyệt vời cho nhịp sống trẻ, năng động, sáng tạo&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">Áo được thiết kế đơn giản và toát lên vẻ lịch lãm tinh tế, mang đến phong cách thời trang trẻ trung, chắc chắn sẽ là lựa chọn hoàn hảo cho chàng trai hiện đại, nam tính.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><img src=\"https://salt.tikicdn.com/cache/w750/ts/product/7f/06/20/e18e9ecfddf1f63a267a17cc53ab9062.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; margin:0px auto; max-width:100%\" /></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">Những chiếc&nbsp;<em>áo sơ mi trắng&nbsp;dài tay</em>&nbsp;<em>form Body</em>&nbsp;trơn dù kết hợp với quần âu, quần jeans khi đi làm hay diện cùng quần ngố, quần short đi chơi, đi học đều NỔI BẬT, THOẢI MÁI và PHONG CÁCH.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"font-size:18pt\"><img src=\"https://salt.tikicdn.com/cache/w750/ts/product/65/0e/04/dc869b6cb2e3d0e1bf3d9ffa9dd52791.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; margin:0px auto; max-width:100%\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">Với form dáng&nbsp;<em>body</em>&nbsp;vừa vặn các chàng có thể tự tin khoe body cực chuẩn của mình</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\">Hãy bổ sung ngay item này để diện, thật chất nhé!</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><img src=\"https://salt.tikicdn.com/ts/tmp/12/e4/39/1dbab5f271b0c4c850d8f61c876e2a12.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><em><span style=\"font-size:18pt\">Áo sơ mi nam body màu trắng, thương hiệu Amazing</span></em></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><em>- Chất liệu</em>: Vải kate thun co giãn 04 chiều, thấm hút mồ hôi</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/9b/e7/99/f6dcd799a68a47687bde754edff0740a.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><em>- Quy cách, tiêu chuẩn:</em>&nbsp;đường may tinh tế, tỉ mỉ trong từng chi tiết</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/96/5e/d2/8e9293d5a1be92dbf8d2c54b60583b66.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><em>- Kiểu dáng:</em>&nbsp;Thiết kế&nbsp;<em>form body fit</em>&nbsp;đơn giản, dễ mặc, dễ phối đồ</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/cf/0b/5e/96ab99a8f84bb0d848b36db6ef239600.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">-&nbsp;<em>Form body Hàn Quốc</em>&nbsp;mang lại phong cách trẻ trung, lịch lãm</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/a8/62/a0/ad3dc7f9073d927d98543e888eabf218.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\">Chất lượng sản phẩm tốt, giá cả hợp lý</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/9b/e7/99/5c9c43b6f2b6bd20c1698c3b50e7d95d.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:rgb(255, 0, 0); font-size:18pt\">Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh.</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/5e/9b/92/d09d826c7fd91314b59b787321d4dfab.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18pt\">Chúc các bạn luôn tự tin và thật đẹp mỗi ngày cùng #&nbsp;thời trang Amazing&nbsp;nhé!</span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/4f/12/93/5b49b64e73fdb47c437467115b1bc59f.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:red\"><span style=\"font-size:18pt\"><span style=\"color:rgb(34, 34, 34)\"><em>AMAZING</em>&nbsp;hân hạnh được phục vụ quý khách.</span></span></span></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"color:red\">Hướng dẫn giặt ủi áo sơ mi nam Amazing:</span></p>\r\n\r\n<p style=\"text-align:left\">Giặt với nước có nhiệt độ thường, nhiệt độ cao sẽ dễ làm giãn bề mặt vải và ảnh hưởng đến độ bền màu của sản phẩm.</p>\r\n\r\n<p style=\"text-align:left\">Không dùng thuốc tẩy, hay xà bông có độ tẩy mạnh,&nbsp; tránh chế độ ngâm, tránh giặt ở chế độ vòng quay lớn.</p>\r\n\r\n<p style=\"text-align:left\">Nên phơi mặt trái của sản phẩm, phơi trong bóng râm, tránh ánh nắng trực tiếp.</p>\r\n\r\n<p style=\"text-align:left\">Ủi ở nhiệt độ vừa phải và nên xịt thêm ít nước tạo độ bốc hơi nước, bề mặt vải sẽ mau phẳng hơn.&nbsp;</p>\r\n\r\n<p style=\"text-align:left\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/d6/43/8b/591375cc34d192b409c957815a2b334a.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n\r\n<p style=\"text-align:left\"><em><span style=\"color:red\">Lưu ý:&nbsp;</span>Tùy vào chất lượng độ phân giải của màn hình PC hay màn hình điện thoại bạn đang sử dụng mà màu sắc&nbsp;hình ảnh sẽ không được trung thực 100% so với thực tế. Mong quý khách thông cảm.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 0, 2, 0, 1, 2),
(24, 'Áo Sơ Mi Nam Phối Chữ Lịch Lãm Thời Trang Cao Cấp NT1', 'ao-so-mi-nam-phoi-chu-lich-lam-thoi-trang-cao-cap-nt1', 198000, 99000, 'qxmZXsnNDJrTkREg_12.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Được thiết kế từ chất liệu cao cấp, mềm mịn, không chỉ mang lại cảm giác thoải mái khi mặc, mà còn tạo phong cách trẻ trung, lịch lãm cho phái mạnh.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc trang nhã, lịch sự dễ dàng kết hợp với nhiều trang phục.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may chắc chắn và tỉ mỉ, mang đến độ bền đẹp lâu dài cho sản phẩm.</span></p>\r\n\r\n<ul>\r\n	<li>Được thiết kế từ chất liệu cao cấp, mềm mịn, không chỉ mang lại cảm giác thoải mái khi mặc, mà còn tạo phong cách trẻ trung, lịch lãm cho phái mạnh.</li>\r\n	<li>Màu sắc trang nhã, lịch sự dễ dàng kết hợp với nhiều trang phục.</li>\r\n	<li>Đường may chắc chắn và tỉ mỉ, mang đến độ bền đẹp lâu dài cho sản phẩm.</li>\r\n	<li>Dễ giặt sạch, dễ ủi thẳng khi sử dụng, tiết kiệm nhiều thời gian.</li>\r\n	<li>Dễ dàng phối hợp cùng nhiều phụ kiện khác mang đến phong cách thời trang riêng cho phái mạnh giúp bạn thêm tự tin khi ra đường.</li>\r\n</ul>\r\n', 0, 2, 0, 1, 2),
(25, 'Áo sơ mi nam', 'ao-so-mi-nam', 320000, 150000, '7tczikRCYP9aKjHS_13.jpg', '<div style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Chất liệu: kaki mềm mịn, thoáng mát, ít nhăn, cho người mặc luôn tự tin, thoải mái<br />\r\nKhông bị xù lông hay chảy xệ khi giặt, độ bền cao<br />\r\nThích hợp mặc cùng quần jeans, kaki, short ... tạo phong cách thời trang trẻ trung và ấn tượng<br />\r\nMàu sắc hài hòa, dễ mặc, thích hợp với nhiều dáng người\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">Chất liệu: kaki mềm mịn, thoáng mát, ít nhăn, cho người mặc luôn tự tin, thoải mái</span></p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">Không bị xù lông hay chảy xệ khi giặt, độ bền cao</span></p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">Thích hợp mặc cùng quần jeans, kaki, short tạo phong cách thời trang trẻ trung và ấn tượng</span></p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">Màu sắc hài hòa, dễ mặc, thích hợp với nhiều dáng người</span></p>\r\n\r\n<p>&nbsp;Kiểu dáng : áo họa tiết cổ sơ mi, tay dài</p>\r\n\r\n<p>Chất liệu:&nbsp; lụa 3d</p>\r\n\r\n<p>&nbsp;Màu sắc: như hình</p>\r\n\r\n<p>Size : M, L, XL</p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">&nbsp;</span></p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">Hướng dẫn chọn size:</span></p>\r\n\r\n<p><span style=\"font-family:helvetica; font-size:10pt\">&nbsp;S: Từ&nbsp;</span><span style=\"color:rgb(17, 17, 17); font-family:arial\">40 - 52kg</span></p>\r\n\r\n<p><span style=\"color:rgb(17, 17, 17); font-family:arial\">&nbsp;M&nbsp;:&nbsp;&nbsp;Từ : 45 - 55kg dưới 1m65&nbsp;</span><br />\r\n<span style=\"color:rgb(17, 17, 17); font-family:arial\">&nbsp;L :&nbsp;&nbsp; Từ : 55 - 65kg dưới 1m7&nbsp;</span><br />\r\n<span style=\"color:rgb(17, 17, 17); font-family:arial\">&nbsp;XL :&nbsp;Từ : 65 - 75kg dưới 1m75</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n', 0, 2, 0, 1, 2),
(26, 'áo sơ mi nam phối hai màu đen trắng', 'ao-so-mi-nam-phoi-hai-mau-den-trang', 299000, 199000, 'PiIcSxUJzvoB2bT9_14.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi nam body vẫn rất phỳ hợp để sử dụng thoải mái cho môi trường công sở.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mẫu áo có thiết kế như thế này sẽ giúp các bạn nam thể hiện được sự tươi trẻ, năng động, thanh lịch và dễ dàng khoe được vóc dáng cân đối của cơ thể.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mẫu áo sơ mi nam body phù hợp với mọi chàng trai.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chi tiết sọc đen ở vạt và cổ áo mang đến vẻ đẹp lịch lãm và đẳng cấp.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Có các sz: m, l , xl</span></p>\r\n\r\n<p style=\"text-align:justify\">Mô tẢ sẢn phẨm áo áo sơ mi cao cẤp</p>\r\n\r\n<p style=\"text-align:justify\">NỘi dung sẢn phẨm:</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;&nbsp; Phong cách thời trang với thiết kế trẻ trung và cá tính , cho các bạn nam tự tin khoe cá tính sôi nổi.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; Chất liệu bền đẹp&nbsp; mang lại sự thoải mái, thoáng mát, thấm&nbsp; mồ hôi tốt, phù hợp với các bạn trẻ yêu thích hoạt động.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; Màu sắc hài hòa, dễ mặc, thích hợp với nhiều dáng người.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; Áo sơ mi nam phong cách hàn quốc thiết kế nút cài tiện dụng với kiểu dáng trẻ trung thể hiện vẻ nam tính của bạn nam.</p>\r\n', 0, 2, 0, 1, 2),
(27, 'Aó Sơmi Nam Dài Tay in Hình Độc Đáo Lịch Lãm Sang Trọng XMB20', 'ao-somi-nam-dai-tay-in-hinh-doc-dao-lich-lam-sang-trong-xmb20', 200000, 110000, 'mqncYDGWIu7USTJj_15.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Lụa không nhăn</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất vải sờ mịn không bai, không nhăn, không xù.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Fom Body cực chuẩn, ôm trọn bờ vai mặc cực trẻ trung và phong cách, phù hợp mọi hoàn cảnh kể cả đi chơi và đi làm.</span></p>\r\n\r\n<p style=\"text-align:justify\">Áo sơ mi- quần short là item mới mẻ, tuyệt vời cho chàng đi biển, đi picnic. Đơn giản, vừa người, dễ mặc, dễ phối đồ, áo sơ mi nam dài tay sẽ giúp lấy đi những gì từng là thiếu sót trở thành dấu ấn độc đáo, tạo nên triết lý trong cách ăn mặc cho nam giới.</p>\r\n\r\n<p style=\"text-align:justify\">Chất lụa trơn, mềm mịn mỏng không nhăn, không xù, không bai, không phai màu. Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tró giặt máy .</p>\r\n\r\n<p style=\"text-align:justify\">Sản phẩm được làm từ Chất liệu Kate lụa thoáng mát, thấm hút mồ hôi tốt, thích hợp mặc trong nhiều điều kiện khác nhau.</p>\r\n\r\n<p style=\"text-align:justify\">Với thiết kế không quá cầu kỳ, sản phẩm chú trọng phom dáng cùng từng đường kim mũi chỉ tinh tế để tạo nên sự thanh lịch cho người mặc.</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu vải kate dày mềm.</p>\r\n\r\n<p style=\"text-align:justify\">Cầu vai làm cho người đàn ông trở nên mạnh mẽ hơn.</p>\r\n\r\n<p style=\"text-align:justify\">màu sắc y như trong hình</p>\r\n\r\n<p style=\"text-align:justify\">thông tin size chuẩ M dưới L dưới dưới 65 kg</p>\r\n', 0, 2, 0, 1, 2);
INSERT INTO `tb_sanpham` (`idSP`, `Ten`, `TenKD`, `GiaGoc`, `GiaGiam`, `Anh`, `MoTa`, `DaBan`, `idLoaiSP`, `LuotLike`, `idTTSP`, `idTH`) VALUES
(28, 'Áo sơ mi nam Amazing tay dài sọc tăm màu trắng mã 4402-055', 'ao-so-mi-nam-amazing-tay-dai-soc-tam-mau-trang-ma-4402-055', 219000, 219000, 'MKLue5hETNDR2ncx_18.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu CVC cao cấp, được nhập khẩu từ INDIA</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thành phần: 60% cotton, 40% polyester</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thấm hút mồ hôi và thoáng mát mang lại cảm giác thoải mái cho người mặc.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Dễ giặt, dễ ủi, dễ bảo quản trong điều kiện tự nhiên bình thường</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế sọc tăm nhỏ, nhẹ nhàng, thanh lịch, dễ dàng phối đồ và các phụ kiện khác</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Là lựa chọn đáng cân nhắc cho đồng phục công sở</span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>1/ Chất liệu</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Chất liệu CVC cao cấp, được nhập khẩu từ INDIA.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Thành phần: 60% cotton, 40% polyester</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Thấm hút mồ hôi và thoáng mát mang lại cảm giác thoải mái cho người mặc.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Dể giặt, dể ủi, dể bảo quản trong điều kiện tự nhiên bình thường</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Thiết kế sọc tăm nhỏ, nhẹ nhàng, thanh lịch, dể dàng phối đồ và các phụ kiện khác</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; Là lựa chọn đáng cân nhắc cho đồng phục công sở.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>2/ Thiết kế</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Áo cổ sơ mi, dòng sản phẩm classic, lưu giữ những chi tiết cơ bản chuẩn mực</p>\r\n\r\n<p style=\"text-align:justify\">của một chiếc áo sơ mi nam cổ điển từ xưa.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Cổ và manchette được ép dập công phu, đường kim mũi chỉ tinh xảo.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Sản phẩm được sản xuất trên dây chuyền công nghệ cao.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Dáng áo vạt bầu, thân suông giúp bạn thoải mái, năng động hơn trong mọi hoạt động hằng ngày.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>3/ Phong cách và ứng dụng</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Sở hữu chiếc áo sơ mi Amazing bạn sẽ chẳng phải bận tâm suy nghĩ cách phối đồ hay các phụ kiện đi kèm.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Bởi những điều đơn giản và khả năng ứng dụng cao làm cho chiếc áo luôn luôn hiện diện trong tủ đồ của nam giới.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp;Bạn có thể thoải mái lựa chọn cho mình cùng lúc nhiều chiếc áo sơ mi với những màu sắc khác nhau để tiện thay đổi hằng ngày và khẳng định phong cách thời trang qua nhiều màu sắc.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; Lưu ý:&nbsp;</strong>Tùy vào chất lượng độ phân giải của màn hình PC hay màn hình điện thoại bạn đang sử dụng mà màu sắc hình ảnh sẽ không được trung thực 100%. Mong quý khách thông cảm.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;Bảng size áo sơ mi nam đơn sắc Amazing</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/af/a6/e7/ace82fda5fc5161427b7f25fa6185968.jpg\" style=\"border:0px; box-sizing:border-box; display:block; height:auto; margin:0px auto; max-width:100%; vertical-align:middle; width:750px\" /></p>\r\n', 0, 2, 0, 1, 2),
(29, 'Áo Sơ Mi Nam Form Rộng Kẻ Caro', 'ao-so-mi-nam-form-rong-ke-caro', 250000, 150000, '3KduLpO7HFN4qU2J_22.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Bộ sưu tập: Hè Thu 2018</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng: Áo sơ mi công sở</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Form rộng, kẻ sọc caro cá tính</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Vải thô</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp: Công sở, đi chơi, dạo phố</span></p>\r\n\r\n<ul>\r\n	<li>Áo Sơ Mi Nam Form Rộng Kẻ Caro&nbsp;luôn là sự lựa chọn hàng đầu của giới công sở hiện nay, với kiểu dáng lịch thiệp, đường may đẹp và chất lượng vải cao cấp.</li>\r\n	<li>Áo sơ mi giúp bạn nam trông lịch lãm và sang trọng hơn với thiết kế sang trọng, gia công sắc sảo.</li>\r\n	<li>Áo form rộng, trẻ trung, tay dài năng động.</li>\r\n	<li>Sản phẩm may từ chất liệu vải thô nhập khẩu cao cấp, được biết đến với đặc tính thấm hút mồ hôi tốt, thoáng mát ngay cả trong điều kiện thời thiết nóng bức cho form áo đứng, sang trọng.</li>\r\n	<li>Bề mặt vải mềm mịn. Vải còn có đặc tính chống bám bẩn và chống mài mòn tốt, đảm bảo sự bền đẹp với thời gian, dễ giặt, nhanh khô.</li>\r\n	<li>Bạn có thể kết hợp cùng quần tây, jeans, kaki cho phong cách thời trang đa dạng.</li>\r\n</ul>\r\n', 0, 2, 0, 1, 2),
(30, 'Áo Sơ Mi Nam Dài Tay Cổ Bẻ Họa Tiết Kẻ Sọc Trẻ Trung', 'ao-so-mi-nam-dai-tay-co-be-hoa-tiet-ke-soc-tre-trung', 500000, 179000, 'gFoND7mqVwvYrcX4_24.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">100% chất cotton cao cấp, thấm hút mồ hôi gấp 5 lần vải bình thường giúp người mặc cảm thấy thoải mái, dễ chịu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế, tỉ mỉ trong từng chi tiết</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Họa tiết đơn giản, dễ mặc, dễ phối đồ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Form body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất lượng sản phẩm tốt</span></p>\r\n\r\n<p style=\"text-align:justify\">THÔNG TIN CHI TIẾT<br />\r\nChất liệu: 100% cotton cao cấp<br />\r\nMàu sắc: Ghi – Xanh nhạt – Cam đất – Xanh Đậm<br />\r\nThương hiệu: ZERO<br />\r\nXuất xứ: Việt Nam</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/44/88/da/aaa23c1c1811350a26055ae1e699900e.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/44/88/da/aaa23c1c1811350a26055ae1e699900e.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:749px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/61/36/7e/4182582eb1bdde63526c695d6f3b782b.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/61/36/7e/4182582eb1bdde63526c695d6f3b782b.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:1050px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n------------------------------------<br />\r\nTHÔNG TIN SẢN PHẨM Áo sơ mi là món đồ kinh điển dành cho nam giới, đặc biệt là những quý ông công sở. Những chiếc áo sơ mi nam thiết kế đơn giản nhưng đã định hình nên phong thái, khí chất mạnh mẽ nhất của một đấng mày râu.Với thời tiết oi bức của mùa hè, những chiếc áo sơ mi nam dài tay làm bạn cảm thấy bí bức, khó chịu. Vì vậy, đã đến lúc các quý ông bổ sung vào tủ đồ của mình những mẫu áo sơ mi nam cotton đơn giản. Chất liệu vải cotton cao cấp, thấm hút mồ hôi cực tốt. Áo sơ mi với những họa tiết đơn giản nhưng vẫn mang đến sự lịch lãm, trẻ trung. Sơ mi nam trắng mix cùng với quần âu chưa bao giờ là lỗi mốt. Sơ mi nam- quần jean là cặp đôi hoàn hảo cùng chàng dạo phố. Đơn giản, vừa người, dễ mặc, dễ phối đồ, áo sơ mi nam họa tiết dài tay sẽ giúp lấy đi những gì từng là thiếu sót trở thành dấu ấn độc đáo, tạo nên triết lý trong cách ăn mặc cho nam giới.<br />\r\n100% chất cotton cao cấp, thấm hút mồ hôi gấp 5 lần vải bình thường giúp người mặc cảm thấy thoải mái, dễ chịu<br />\r\nĐường may tinh tế, tỉ mỉ trong từng chi tiết<br />\r\nHọa tiết đơn giản, dễ mặc, dễ phối đồ<br />\r\nForm body Hàn Quốc mang lại phong cách trẻ trung, lịch lãm<br />\r\nChất lượng sản phẩm tốt<br />\r\n--------------------------------------</p>\r\n', 0, 2, 0, 1, 2),
(31, 'Áo sơ mi sọc caro unisex', 'ao-so-mi-soc-caro-unisex', 199000, 104000, 'vrjl0S9xZoCiU2tH_28.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sọc caro hot nhất hiện nay</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Có thể mặc như một áo khoác cá tính</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu đỏ và xanh ấn tượng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phù hợp cả bạn nam và bạn nữ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu kate lụa cao cấp</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:24pt\"><em>Mẫu áo phù hợp với cả bạn nam và bạn nữ (UNISEX)</em></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18.6667px\"><em>Áo sơ mi sọc caro unisex</em></span><span style=\"font-size:14pt\">: Ngày nay với nhu cầu thời trang ngày càng được chú trọng, thì những chiếc áo sơ mi cũng ngày càng được thiết kế tinh tế để phù hợp với phong cách hiện đại hơn.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><em><span style=\"font-size:18.6667px\">Áo sơ mi sọc caro unisex</span><span style=\"font-size:14pt\">&nbsp;</span></em><span style=\"font-size:14pt\">đươc thiết kế đơn giản nhưng lại cực kỳ ấn tượng và bắt mắt. Với hình những hình sọc kẻ cùng logo trước áo cực ấn tượng và thời trang, sang chảnh, sành điệu.&nbsp;</span></p>\r\n', 0, 2, 0, 1, 2),
(32, 'Áo sơ mi nam form rộng cổ 2 ve LAHstore, thời trang trẻ, phong cách Hàn Quốc', 'ao-so-mi-nam-form-rong-co-2-ve-lahstore-thoi-trang-tre-phong-cach-han-quoc', 200000, 149000, 'EM7NHzwL4fBKa3Zl_30.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Bộ sưu tập: Hè Thu 2020</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng: Áo sơ mi cổ 2 ve tay lỡ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Form rộng thoải mái, in họa tiết trẻ trung</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Vải thun Mỹ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp: Đi chơi, dạo phố, du lịch</span></p>\r\n\r\n<ul>\r\n	<li>Áo sơ mi nam form rộng cổ 2 ve LAHstore, thời trang trẻ, phong cách Hàn Quốc&nbsp;luôn là sự lựa chọn hàng đầu của giới công sở hiện nay, với kiểu dáng lịch thiệp, đường may đẹp và chất lượng vải cao cấp.</li>\r\n	<li>Áo sơ mi giúp bạn nam trông trẻ trung hơn với thiết kế in hình độc đáo, gia công sắc sảo.</li>\r\n	<li>Áo form rộng thoải mái, trẻ trung, tay dài dáng jacket năng động.</li>\r\n	<li>Sản phẩm may từ chất liệu vải thun Mỹ cao cấp, được biết đến với đặc tính thấm hút mồ hôi tốt, thoáng mát ngay cả trong điều kiện thời thiết nóng bức cho form áo đứng, sang trọng.</li>\r\n	<li>Bề mặt vải mềm mịn. Vải còn có đặc tính chống bám bẩn và chống mài mòn tốt, đảm bảo sự bền đẹp với thời gian, dễ giặt, nhanh khô.</li>\r\n	<li>Bạn có thể kết hợp cùng quần tây, jeans, kaki cho phong cách thời trang đa dạng.</li>\r\n</ul>\r\n', 0, 2, 0, 1, 2),
(33, 'Combo 3 áo thun trơn nam thời trang Everest màu trắng đen xám', 'combo-3-ao-thun-tron-nam-thoi-trang-everest-mau-trang-den-xam', 179000, 119000, 'htsgLA23mC0SzaOM_32.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu thun mềm mại co giãn tốt , thoáng mát</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế thời trang phù hợp xu hướng hiện nay</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng đa phong cách</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế sắc sảo</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần mạnh mẽ.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Dễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố</span></p>\r\n', 0, 4, 0, 1, 2),
(34, 'Áo Thun Nam Unisex thiết kế hình trơn 2 màu Đen / Trắng basic thương hiệu Japas Cotton Ai Cập 190gram, áo phông cổ tròn basic cộc tay thoáng mát, thấm hút mồ hôi - Hàng chính hãng', 'ao-thun-nam-unisex-thiet-ke-hinh-tron-2-mau-den-trang-basic-thuong-hieu-japas-cotton-ai-cap-190gram-ao-phong-co-tron-basic-coc-tay-thoang-mat-tham-hut-mo-hoi-hang-chinh-hang', 244000, 99000, 'lYWKHMP32QwoNkxh_36.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu 100% Cotton Ai Cập không pha polyester</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất dầy dặn cảm giác được sợi bông thiên nhiêu khi mặc, áo phông cổ tròn basic cộc tay thoáng mát, thấm hút mồ hôi</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Dệt sợi cotton tiêu chuẩn 190Gram/m2</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Cam kết không bị co giãn, không bị phai khi giặt</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">2 màu Đen / Trắng basic thiết kế hình trơn, hàng chính hãng thương hiệu Japas</span></p>\r\n\r\n<p style=\"text-align:justify\">KIỂU DÁNG:&nbsp;Áo cộc tay cổ tròn</p>\r\n', 0, 4, 0, 1, 2),
(35, 'Áo Thun Nam Polo Ngắn Tay (APC0308S1-01) Phối Viền Cổ Năng Động, Trẻ Trung, Nam Tính', 'ao-thun-nam-polo-ngan-tay-apc0308s1-01-phoi-vien-co-nang-dong-tre-trung-nam-tinh', 389000, 149000, 'tXgPH0T6iIhvOlfa_38.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tên Sản Phẩm: Áo Thun Nam Polo Ngắn Tay (APC0308S1-01) Phối Viền Cổ Năng Động, Trẻ Trung, Nam Tính</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thương hiệu: ZAKADO Cao Cấp</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu Sắc: Cam, Đỏ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế: kiểu dáng cơ bản với dáng ôm vừa, cổ bẻ có phối viền, tay ngắn</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thành Phần: 95% Coolmax, 5% Spandex</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phom dáng: Slimfit</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may: Tinh tế, tỉ mỉ, cổ áo có đường bo chống bai rão và luôn giữ được fom dáng áo</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size: 38/S - 39/M - 40/L - 41/XL - 42/2XL</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản Xuất: Việt Nam</span></p>\r\n', 0, 4, 0, 1, 2),
(36, 'Áo Thun Nam Polo Ngắn Tay ZAKADO (APCS001) Trơn muối tiêu Cao Cấp Trẻ Trung, Nam Tính (nhiều màu)', 'ao-thun-nam-polo-ngan-tay-zakado-apcs001-tron-muoi-tieu-cao-cap-tre-trung-nam-tinh-nhieu-mau-', 429000, 159000, '5hpFWKzOQ6jBCUbY_41.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tên Sản Phẩm: Áo Thun Nam Polo Ngắn Tay ZAKADO (APCS001) Trơn muối tiêu Cao Cấp Trẻ Trung, Nam Tính (nhiều màu)</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thương hiệu cao cấp ZAKADO</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu Sắc: Hồng muối tiêu, Xanh muối tiêu, Xanh đậm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế kiểu dáng cơ bản với dáng ôm vừa, cổ bẻ, tay ngắn,dệt muối tiêu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thành Phần: 95% CVC, 5% Spandex</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phom dáng: SlimFit</span></p>\r\n', 0, 4, 0, 1, 2),
(37, 'Áo Thun Nam Phản Quang In hình COM CÁ MẬP , áo chất, đi đêm, đi phượt bao ngầu, nhìn đã mắt', 'ao-thun-nam-phan-quang-in-hinh-com-ca-map-ao-chat-di-dem-di-phuot-bao-ngau-nhin-da-mat', 250000, 89000, 'KECkd7BzjZfhe4Or_43.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo thun unisex Phản Quang 7 màu cao cấp</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Nổi bật khi chụp bằng flash với hiệu ứng 7 màu cực đặc sắc</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Có khả năng thấm hút mồ hôi tốt dành riêng cho các bạn trẻ năng động, cá tính, trẻ trung</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế, tỉ mỉ Sản xuất tại Việt Nam, chất lượng xuất khẩu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phù hợp khi đi dạo chơi, đi phượt, đi café, trà sữa, du lịch …</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">ĐĂC BIÊT: VÀO BAR, KARAOKE, ĐI PHƯỢT BAO NỔI, KHÔNG LO ĐI LẠC</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Thun cotton lụa 4 chiều 100% dày mềm mịn, đường may đẹp, chắc chắn, đảm bảo k bông tróc Hình in rõ nét Sản phẩm có độ co giãnXin giới thiệu với các bạn mẫu áo thun Phản Quang cực hot \"CON CÁ MẬP \".</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sự khác biệt giữa áo in thường và áo thun in Phản Quang là khi đi trời tối, decal sẽ phản chiếu ánh sáng tạo hiệu ứng đặc biệt. khiến bạn ngầu hơn trong đám đông</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Còn nữa, khi chụp bằng flash điện thoại sẽ nổi bật lên ánh sáng 7 màu lung linh không thể đẹp hơn.&nbsp;&nbsp;</span></p>\r\n', 0, 4, 0, 1, 2),
(38, 'Áo thun unisex nam hoạ tiết ASALA phông rộng UX-14', 'ao-thun-unisex-nam-hoa-tiet-asala-phong-rong-ux-14', 120000, 69000, 'RI1ouUKkS9m05FZ3_45.png', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu thun mềm mại ,với sự co giãn tốt cực thoáng mát</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế thời trang trẻ phù hợp xu hướng hiện nay</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng trẻ trung.Đường may tinh tế, tỉ mỹ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo thun được thiết kế vể đẹp trẻ trung năng động nhưng cũng đầy cá tính.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Dễ dàng phối các trang phục , đi chơi đi làm đi dạo phố cực chất.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp cho sự kết hợp vứi quần jean, sọt,kaki,jogger!</span></p>\r\n\r\n<p style=\"text-align:justify\">áo thun thoáng mát</p>\r\n\r\n<p style=\"text-align:justify\">đa năng</p>\r\n\r\n<p style=\"text-align:justify\">unisex nam nữ đều mặc được</p>\r\n\r\n<p style=\"text-align:justify\">chất liệu: thun</p>\r\n\r\n<p style=\"text-align:justify\">xuất xứ: việt nam</p>\r\n\r\n<p style=\"text-align:justify\">size: one size.</p>\r\n', 0, 4, 0, 1, 2),
(39, 'o thun nam nữ tay lỡ Unisex in hình cao cấp ,Trẻ Trung, Thoáng Mát, Thấm Hút Mồ Hôi TL1', 'o-thun-nam-nu-tay-lo-unisex-in-hinh-cao-cap-tre-trung-thoang-mat-tham-hut-mo-hoi-tl1', 149000, 99000, 'pEn2XmfBSRlj4qPG_47.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Form áo rộng, form rộng tay lỡ thích hợp cho cả nam và nữ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất thun Cotton MỀM - MỊN - MÁT</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng: trẻ trung, năng động</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: đa dạng để bạn lựa chọn</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Hình in: rõ nét, chất lượng cao</span></p>\r\n\r\n<div style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"text-align:center\"><span style=\"color:rgb(255, 0, 0); font-size:xx-large\">Áo Thun Nam Nữ In Hình Cực Chất Tay Lỡ Oversize</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">Áo thun nam nữ tay lỡ Unisex in hình cao cấp ,Trẻ Trung, Thoáng Mát, Thấm Hút Mồ Hôi</div>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:large\">CHI TIẾT:</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:large\">- Áo Thun Nam unisex Cao Cấp Trẻ trung, thoáng mát, thấm hút mồ hôi (nhiều màu) có thiết kế kiểu cơ bản với dáng ôm vừa phải, cổ tròn, tay ngắn, ngực áo thêu logo nhỏ.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:large\">- Áo Thun Nam unisex Cao Cấp có màu sắc trẻ trung, dễ dàng phối cùng quần jeans hoặc shorts, giày thể thao hoặc giày lười, thích hợp sử dụng trong các dịp đi chơi, gặp gỡ bạn bè</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:large\"><img alt=\"\" src=\"https://salt.tikicdn.com/cache/w750/ts/product/09/57/3a/f4bbfcacb2e97ed5668c9e9410f20e87.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:825px; margin:0px auto; max-width:100%; width:775px\" /></span></p>\r\n\r\n<p style=\"text-align:center\"><em><span style=\"font-size:large\">Màu Sắc Trẻ Trung</span></em></p>\r\n\r\n<p style=\"text-align:center\"><em><span style=\"font-size:large\"><img alt=\"\" src=\"https://salt.tikicdn.com/cache/w750/ts/product/22/63/34/8ac1d646dd1a55c89d25666a1a92bb0e.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:822px; margin:0px auto; max-width:100%; width:767px\" /></span></em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><em><span style=\"font-size:large\">Mẫu mới đơn giản nhưng không phần sang trọng</span></em></p>\r\n\r\n<p style=\"text-align:center\"><em><span style=\"font-size:large\"><img alt=\"\" src=\"https://salt.tikicdn.com/cache/w750/ts/product/6f/ad/6f/f750353460c03b7227ffa0fc07c5d8a3.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:766px; margin:0px auto; max-width:100%; width:765px\" /></span></em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:large\"><em>Cớ 4 Màu : Đen,Trắng,Tím,Vàng</em></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:large\"><em><img alt=\"\" src=\"https://salt.tikicdn.com/cache/w750/ts/product/d4/ee/a3/ecc438f98cffc313176f2f8fc50fbf9a.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:830px; margin:0px auto; max-width:100%; width:755px\" /></em></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h2 style=\"text-align:justify\">CHẤT LIỆU:</h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:large\">-&nbsp;Cotton được xử lý bằng công nghệ Nano pha Spandex mềm mát, thoáng khí, thấm hút mồ hôi tốt đồng thời có khả năng co giãn nhẹ nhàng, tạo cảm giác thoải mái trong mọi hoạt động.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:large\">SIZE: M - L - XL&nbsp;</span></p>\r\n\r\n<h2 style=\"text-align:justify\">&nbsp;</h2>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<div style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div style=\"box-sizing: border-box;\"><img alt=\"\" src=\"https://salt.tikicdn.com/cache/w750/ts/product/ee/f6/26/945bfa3d63ebbc2f318fadc4096280e5.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:550px; margin:0px auto; max-width:100%; width:750px\" /></div>\r\n\r\n<div style=\"box-sizing: border-box; text-align: center;\"><span style=\"color:rgb(255, 0, 0); font-size:x-large\">Chân Thành Cảm Ơn Quý Khách Đã Ủng Hộ Shop</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n', 0, 4, 0, 1, 2),
(40, 'Áo Thun Nam Phản Quang In hình CỜ VUA , áo chất, đi đêm, đi phượt bao ngầu, nhìn đã mắt', 'ao-thun-nam-phan-quang-in-hinh-co-vua-ao-chat-di-dem-di-phuot-bao-ngau-nhin-da-mat', 250000, 89000, 'fAFmquHaWzcV2psw_49.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo thun unisex Phản Quang 7 màu cao cấp</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Nổi bật khi chụp bằng flash với hiệu ứng 7 màu cực đặc sắc</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Có khả năng thấm hút mồ hôi tốt dành riêng cho các bạn trẻ năng động, cá tính, trẻ trung</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường may tinh tế, tỉ mỉ Sản xuất tại Việt Nam, chất lượng xuất khẩu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phù hợp khi đi dạo chơi, đi phượt, đi café, trà sữa, du lịch …</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">ĐĂC BIÊT: VÀO BAR, KARAOKE, ĐI PHƯỢT BAO NỔI, KHÔNG LO ĐI LẠC</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Thun cotton lụa 4 chiều 100% dày mềm mịn, đường may đẹp, chắc chắn, đảm bảo k bông tróc Hình in rõ nét Sản phẩm có độ co giãnXin giới thiệu với các bạn mẫu áo thun Phản Quang cực hot \"CỜ VUA \".</span><br />\r\n&nbsp;</p>\r\n', 0, 4, 0, 1, 2),
(41, 'Áo sơ mi nữ thiết kế cổ V tay lỡ GUMAC AA1191', 'ao-so-mi-nu-thiet-ke-co-v-tay-lo-gumac-aa1191', 320000, 256000, '9b0J7Rw382X1LOE5_51.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm thuộc BST vừa ra mắt tại thương hiệu GUMAC.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế tinh tế đến từng đường may, chất liệu mềm mại.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu sản phẩm vải xô mờ tôn dáng cực chuẩn.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phong cách trẻ trung, thanh lịch, sang trọng, , giúp bạn tự tin tỏa sáng khi xuất hiện.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tôn vinh thần thái, vẻ đẹp thanh lịch hiện đại, toát được nét dịu dàng, nữ tính vốn có của mình.</span></p>\r\n', 0, 8, 0, 1, 2),
(42, 'Áo sơ mi xẻ V tay loe GUMAC AA1159', 'ao-so-mi-xe-v-tay-loe-gumac-aa1159', 320000, 256000, 'hMgEp8sTVPay5iRY_53.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm thuộc BST vừa ra mắt tại thương hiệu GUMAC.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế tinh tế đến từng đường may, chất liệu mềm mại.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu sản phẩm vải Xô Nhăn tôn dáng cực chuẩn.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phong cách trẻ trung, thanh lịch, sang trọng, , giúp bạn tự tin tỏa sáng khi xuất hiện.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tôn vinh thần thái, vẻ đẹp thanh lịch hiện đại, toát được nét dịu dàng, nữ tính vốn có của mình.</span></p>\r\n', 0, 8, 0, 1, 2),
(43, 'Áo sơ mi nữ thiết kế cổ viền trắng bèo GUMAC AA1119', 'ao-so-mi-nu-thiet-ke-co-vien-trang-beo-gumac-aa1119', 320000, 256000, 'sKzItfCQa2TFkL9r_56.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm thuộc BST vừa ra mắt tại thương hiệu GUMAC.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế tinh tế đến từng đường may, chất liệu mềm mại.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu sản phẩm vải Tằm Ý tôn dáng cực chuẩn.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phong cách trẻ trung, thanh lịch, sang trọng, , giúp bạn tự tin tỏa sáng khi xuất hiện.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tôn vinh thần thái, vẻ đẹp thanh lịch hiện đại, toát được nét dịu dàng, nữ tính vốn có của mình.</span></p>\r\n', 0, 8, 0, 1, 2),
(44, 'Áo sơ mi họa tiết AA10263 GUMAC', 'ao-so-mi-hoa-tiet-aa10263-gumac', 320000, 210000, 'xWDi6PMX9lhbu2yS_60.png', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm thuộc BST vừa ra mắt của thương hiệu GUMAC.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Áo sơ mi may từ chất liệu cao cấp, đường may tinh tế, gia công tỉ mỉ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thiết kế theo phong cách công sở thanh lịch, mới lạ. thời thượng và năng động</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu mang lại cảm giác dễ chịu vô cùng, tự tin xuống phố đi làm.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm dành cho nhiều lứa tuổi, có thể mặc đi bất cứ nơi đâu và lúc nào.</span></p>\r\n', 0, 8, 0, 1, 2),
(45, 'Giày Sneaker Thể Thao Nam Thời Trang Năng Động Mẫu Mới GN97', 'giay-sneaker-the-thao-nam-thoi-trang-nang-dong-mau-moi-gn97', 378000, 165000, 'SRiM8KjbQzloNCFs_61.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: Đen, trắng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size: 39, 40, 41, 42, 43</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Vật liệu trên: PU nhân tạo</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu đế: caosu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phong cách: thể thao</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chức năng: Không thấm nước, cao, hấp thụ sốc, chống mài mòn, chống trượt</span></p>\r\n\r\n<p style=\"text-align:justify\">THÔNG TIN SẢN PHẨM</p>\r\n\r\n<p style=\"text-align:justify\">Tên sản phẩm: Giày thể thao nam mẫu mới GN97</p>\r\n\r\n<p style=\"text-align:justify\">Mã Sản phẩm: GN97</p>\r\n\r\n<p style=\"text-align:justify\">Màu sắc: Đen, trắng</p>\r\n\r\n<p style=\"text-align:justify\">Size: 39, 40, 41, 42, 43</p>\r\n\r\n<p style=\"text-align:justify\">Vật liệu trên: PU nhân tạo</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu đế: caosu</p>\r\n\r\n<p style=\"text-align:justify\">Phong cách: thể thao</p>\r\n\r\n<p style=\"text-align:justify\">Chức năng: Không thấm nước, cao, hấp thụ sốc, chống mài mòn, chống trượt</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/e7/0b/98/490375f884a62f77e02f8a850fa9623f.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/e7/0b/98/490375f884a62f77e02f8a850fa9623f.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:undefined; margin:0px auto; max-width:100%; width:undefined\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/ab/b0/a4/7edcd4b075469a9661edc86d3633928b.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/ab/b0/a4/7edcd4b075469a9661edc86d3633928b.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:500px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/d5/c1/cd/9a33814ddfa90f7388611e8022f934d4.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/d5/c1/cd/9a33814ddfa90f7388611e8022f934d4.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:450px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/89/ff/46/61bde18852339c418a99bea64fde8acf.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/89/ff/46/61bde18852339c418a99bea64fde8acf.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:450px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/88/f7/26/4c379dbd4fd368c24107cddee41a95a8.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/88/f7/26/4c379dbd4fd368c24107cddee41a95a8.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:450px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/04/bf/69/108abb4ff90f7b4226dd04c775339c00.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/04/bf/69/108abb4ff90f7b4226dd04c775339c00.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:450px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/48/ae/70/d828fd0f9ac91dc5336e959e99a120a1.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/48/ae/70/d828fd0f9ac91dc5336e959e99a120a1.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:450px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/b6/07/cd/eb7667e73c9ff78f81667226e5d22f9c.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/b6/07/cd/eb7667e73c9ff78f81667226e5d22f9c.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:undefined; margin:0px auto; max-width:100%; width:undefined\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/e2/3a/f8/0ff753923f59add575408d7d4522c894.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/e2/3a/f8/0ff753923f59add575408d7d4522c894.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:undefined; margin:0px auto; max-width:100%; width:undefined\" title=\"\" /></p>\r\n\r\n<p style=\"text-align:justify\">HƯỚNG DẪN SỬ DỤNG</p>\r\n\r\n<p style=\"text-align:justify\">Tránh mang giày khi trời mưa vì làm sản phẩm bị ướt, dễ bong tróc</p>\r\n\r\n<p style=\"text-align:justify\">Cất giày ở nơi khô ráo thoáng mát</p>\r\n\r\n<p style=\"text-align:justify\">Làm sạch giày bằng cách dùng 1 miếng vải mềm thấm ướt, tháo dây giày ra và làm sạch nhẹ nhàng trên bề mặt giày</p>\r\n\r\n<p style=\"text-align:justify\">Dùng bàn chải đánh răng nhúng một chút dầu rửa bát, đánh sạch giày từ trong ra ngoài</p>\r\n\r\n<p style=\"text-align:justify\">Không dùng hoá chất mạnh để giặt giày sẽ làm giày dễ phai màu</p>\r\n\r\n<p style=\"text-align:justify\">Không nên phơi giày trực tiếp dưới ánh nắng mặt trời</p>\r\n', 0, 13, 0, 1, 2),
(46, 'Giày Thể Thao Nam Sneaker Nâng Chiều Cao TB188', 'giay-the-thao-nam-sneaker-nang-chieu-cao-tb188', 500000, 315000, '2JvbTXBWM6uzaYPC_1.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Giày Thể Thao Nam TB188 Thiết kế trẻ trung năng động</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đế cao su non cực kỳ êm ái</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu bề mặt canvas và da PU cực kỳ bền đẹp</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc nổi bật thể hiện cá tính riêng</span></p>\r\n\r\n<p style=\"text-align:justify\">Giày Thể Thao Nam TB188 Thiết kế trẻ trung năng động</p>\r\n\r\n<p style=\"text-align:justify\">Đế cao su non cực kỳ êm ái</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu bề mặt canvas và da PU cực kỳ bền đẹp</p>\r\n\r\n<p style=\"text-align:justify\">Màu sắc nổi bật thể hiện cá tính riêng</p>\r\n\r\n<p style=\"text-align:justify\">Giày nam mũi tròn mang phong cách thể thao,</p>\r\n\r\n<p style=\"text-align:justify\">Khẳng định cá tính của riêng bạn</p>\r\n\r\n<p style=\"text-align:justify\">Chất liệu giày sneaker mềm mại thoáng khí phù hợp khi đi chơi, dạo phố nhưng giày bền và chắc chắn thách thức với mọi hoạt động như đi phượt đường dài, chạy bộ, chơi thể thao…</p>\r\n\r\n<p style=\"text-align:justify\">Thiết kế giày thể thao đẹp với phần dây theo phong cách cổ điển, form dáng giày thon gọn tôn dáng người mang. Sản phẩm thích hợp với áo thun kết hợp thêm áo sơ mi khoác ngoài và quần jean năng động. Các bạn thích phong cách hiphop thì sự kết hợp với áo hoodgie và quần jogger cũng rất đẹp.</p>\r\n\r\n<p style=\"text-align:justify\">Đế giày siêu nhẹ, thiết kế đế có độ ma sát cao giúp chống trơn trượt và độ bám đường cao.</p>\r\n\r\n<p style=\"text-align:justify\">Nâng tầm 3cm đúng chuẩn giày sneaker đẹp:</p>\r\n\r\n<p style=\"text-align:justify\">Bảng size giày nam:</p>\r\n\r\n<table style=\"border-collapse:collapse; border-spacing:0px; color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px; max-width:100%; text-align:justify; text-indent:0px; width:891px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:142px\">\r\n			<p>Size giày</p>\r\n			</td>\r\n			<td style=\"width:107.333px\">\r\n			<p>39</p>\r\n			</td>\r\n			<td style=\"width:83.3333px\">\r\n			<p>40</p>\r\n			</td>\r\n			<td style=\"width:71.3333px\">\r\n			<p>41</p>\r\n			</td>\r\n			<td style=\"width:112.667px\">\r\n			<p>42</p>\r\n			</td>\r\n			<td style=\"width:94px\">\r\n			<p>43</p>\r\n			</td>\r\n			<td style=\"width:127.333px\">\r\n			<p>44</p>\r\n			</td>\r\n			<td style=\"width:100.667px\">\r\n			<p>/</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:142px\">\r\n			<p>Chiều dài chân mm</p>\r\n			</td>\r\n			<td style=\"width:107.333px\">\r\n			<p>245</p>\r\n			</td>\r\n			<td style=\"width:83.3333px\">\r\n			<p>250</p>\r\n			</td>\r\n			<td style=\"width:71.3333px\">\r\n			<p>255</p>\r\n			</td>\r\n			<td style=\"width:112.667px\">\r\n			<p>260</p>\r\n			</td>\r\n			<td style=\"width:94px\">\r\n			<p>265</p>\r\n			</td>\r\n			<td style=\"width:127.333px\">\r\n			<p>270</p>\r\n			</td>\r\n			<td style=\"width:100.667px\">\r\n			<p>/</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 13, 0, 1, 2),
(47, 'Giày Thể Thao Sneaker Nam ,Màu Đen Đế Êm, Nhẹ Thoáng Khí, Thích Hợp Đi Chơi, Đi Hoc, Đi Làm, Đế Cao Su Đúc, Chống Trơn Trượt, Hạn Chế Mòn Đế, Miếng Lót Giày Cực Êm S301', 'giay-the-thao-sneaker-nam-mau-den-de-em-nhe-thoang-khi-thich-hop-di-choi-di-hoc-di-lam-de-cao-su-duc-chong-tron-truot-han-che-mon-de-mieng-lot-giay-cuc-em-s301', 450000, 290000, 'qHNxfS98MyRnsuYD_3.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đế được làm bằng cao su đúc nguyên khối chống trơn trượt hạn chế mòn</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thích hợp mọi độ tuổi đi làm đi chơi đi học Phần Upper Phần trên được dệt bằng lưới nên thoáng khí</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phần Midsole Phần giữa phần này tạo độ êm vì có miếng lót cấu trúc tổ ong đàn hồi lực tốt</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc đen sang trọng pha viền cam trẻ trung</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Với chất liệu lưới kết hợp lót tổ ong làm thông thoáng mùi hôi giày không bị hôi chân</span></p>\r\n\r\n<h3 style=\"text-align:justify\">Giày Thể Thao Sneaker Nam ,Màu Đen Đế Êm, Nhẹ Thoáng Khí, Thích Hợp Đi Chơi, Đi Hoc, Đi Làm, Đế Cao Su Đúc, Chống Trơn Trượt, Hạn Chế Mòn Đế, Miếng Lót Giày Cực Êm Gia Công Xuất Khẩu S301.</h3>\r\n\r\n<h2 style=\"text-align:justify\">THÔNG TIN NỔI BẬT:</h2>\r\n\r\n<ul>\r\n	<li>Giày là một vật dụng đi vào bàn chân con người để bảo vệ và làm êm chân trong khi thực hiện các hoạt động khác nhau. Giày cũng được sử dụng như một món đồ trang trí.</li>\r\n	<li>Sau đây là một vài thông tin giúp Quý Khách hàng hiểu rõ hơn về giày thể thao sneaker nam&nbsp;</li>\r\n	<li>Shop Cam kết Giày 100% giống hình, toàn bộ giày sneaker nam thể thao này được shop chụp tự nhiên</li>\r\n	<li>Đường chỉ may chắc chắn, chỉ được sử dụng trong nghành sản xuất giày</li>\r\n	<li>Đế cao su cao 3cm,cao suc đúc nguyên khối hạn chế trơn và mòn</li>\r\n	<li>Phần trên ( Upper ) được làm bằng lưới chuyên dụng trong nghành giày tiêu chuẩn USA</li>\r\n	<li>Phần lót giày làm bằng đệm cấu trúc tổ ong, cho sự đàn hồi cao, mang rất êm chân, riêng phần lót này không bán ngoài thị trường , được gia công riêng cho dòng giày và không bị hư. Không bí chân, Giảm mồ hôi hiệu quả.</li>\r\n	<li>Giày sneaker thể thao nam dễ phối đồ, linh hoạt, thoải mái với các hoạt động trong ngày.</li>\r\n	<li>Hiện tại giày thể thao sneaker nam này có nhiều màu cho nhiều sự lựa chọn</li>\r\n	<li>Giày sneaker thể thao nam có nhiều size có thể đổi size thoải mái Form Giày gọn gàng kiểu dáng ôm chân, phù hợp với các lứa tuổi.&nbsp;\r\n	<p><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/8a/0c/2d/82fe8d5a5aa03d1084d0ac6bfa4949cb.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/8a/0c/2d/82fe8d5a5aa03d1084d0ac6bfa4949cb.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/47/0f/ca/93881ffbe10afe4a7fd5c0952aff2449.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/47/0f/ca/93881ffbe10afe4a7fd5c0952aff2449.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/cc/7d/59/f65fe8646df8cf3d0e2902e3d641b3d1.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/cc/7d/59/f65fe8646df8cf3d0e2902e3d641b3d1.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/3f/41/b3/511b2c8abc9ce73b364c99ac39892e11.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/3f/41/b3/511b2c8abc9ce73b364c99ac39892e11.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/f5/37/3b/7b1f377b3069594960f127d5f246f818.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/f5/37/3b/7b1f377b3069594960f127d5f246f818.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /><img alt=\"\" id=\"https://salt.tikicdn.com/ts/tmp/ec/ec/d0/99c56011a12a178d27f88a5347e24737.jpg\" src=\"https://salt.tikicdn.com/ts/tmp/ec/ec/d0/99c56011a12a178d27f88a5347e24737.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" title=\"\" /></p>\r\n\r\n	<p><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/56/1a/80/54e9284f5ba8d700ba42a73de9ded4e0.png\" style=\"border-style:none; box-sizing:border-box; display:block; height:610px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n	</li>\r\n	<li>\r\n	<h2>HƯỚNG DẪN BẢO QUẢN:</h2>\r\n\r\n	<ul>\r\n		<li>Bảo quản nơi khô ráo, thoáng mát để giữ giày bền hơn và giảm mùi hôi.</li>\r\n		<li>Có thể giặt bằng nước cùng với chất tẩy rửa nhẹ.</li>\r\n		<li>Nếu bị dính bụi bẩn có thể dùng bàn chải lông mềm để chải sạch hoặc sử dụng chai giặt giày chuyên dụng&nbsp;</li>\r\n		<li>Không giặt giày bằng chất tẩy rửa mạnh hoặc bằng máy giặt sẽ làm hỏng giày nhanh.</li>\r\n		<li>Vì được sử dụng công nghệ ép nhiệt mới nên mưa nắng sử dụng thoải mái&nbsp;</li>\r\n		<li>Kiểu dáng sang trọng, lịch sự, đẳng cấp cùng chất liệu vải cao cấp, mềm mại, loại bỏ cảm giác đau chân khi phải di chuyển nhiều.</li>\r\n		<li>Không phơi giày dưới trời nắng, nên phơi trong mát , và phơi giày ngược, nghĩa là phần cổ giày ngược xuống đất.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 0, 13, 0, 1, 2);
INSERT INTO `tb_sanpham` (`idSP`, `Ten`, `TenKD`, `GiaGoc`, `GiaGiam`, `Anh`, `MoTa`, `DaBan`, `idLoaiSP`, `LuotLike`, `idTTSP`, `idTH`) VALUES
(48, 'Thắt Lưng Nam Dây Da Phong Cách Hàn Quốc Khóa Tự Động - TOPEE OTOL5 (Đen)', 'that-lung-nam-day-da-phong-cach-han-quoc-khoa-tu-dong-topee-otol5-den-', 300000, 259000, 'GUdfX576iVYnK42R_5.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Thắt Lưng Nam TOPEE là món phụ kiện thời trang cao cấp dành cho quý ông trẻ trung, sành điệu</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm được gia công tỉ mỉ và tinh xảo giúp gia tăng tuổi thọ dài lâu khi sử dụng.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu da cao cấp đã qua quy trình xử lý kỳ công giúp cho bề mặt sản phẩm luôn có độ bóng đẹp hoàn hảo.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Bề mặt da không bị rạn nứt hay gãy đứt trong suốt thời gian sử dụng.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đường chỉ may đều đặn, sắc sảo và trau chuốt.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đầu khóa hợp kim không gỉ chắc chắn và siêu bền, có thể dễ dàng tùy chỉnh kích cỡ cho phù hợp với vóc dáng cơ thể.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Dễ dàng kết hợp cùng quần Jeans, Kaki, áo Sơ Mi, áo thun, nhằm mang lại vẻ ngoài lịch thiệp và sang trọng cho đấng mày râu.</span></p>\r\n\r\n<p style=\"text-align:justify\">Thắt lưng nam TOPEE với chất liệu da cao cấp đẹp bền bỉ, chống đứt gãy hay bong tróc hiệu quả</p>\r\n\r\n<p style=\"text-align:justify\">Đầu khóa hợp kim không gỉ sáng bóng thời thượng</p>\r\n\r\n<p style=\"text-align:justify\">Kiểu dáng đẳng cấp sang trọng</p>\r\n\r\n<p style=\"text-align:justify\">Tông màu lịch lãm, dễ kết hợp trang phục</p>\r\n\r\n<p style=\"text-align:justify\">Kích thước 3.5 x 120cm</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/72/3b/8d/47f6bff2abfc72c986878674270378f4.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/4a/23/6b/a4b35fce57e96806599432295a12e8d3.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:635px; margin:0px auto; max-width:100%; width:635px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/21/15/25/1bd002d860b460d76de937b7a4affd55.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/5d/5e/01/bbbf5fb5c2ec9664d6fac9327f8c372a.jpg\" style=\"border-style:none; box-sizing:border-box; display:block; height:750px; margin:0px auto; max-width:100%; width:750px\" /></p>\r\n', 0, 14, 0, 1, 2),
(49, 'Dây nịt nam thắt lưng nam Nutushop chất liệu da bò thật khóa tự động hàng hiệu cao cấp NT45', 'day-nit-nam-that-lung-nam-nutushop-chat-lieu-da-bo-that-khoa-tu-dong-hang-hieu-cao-cap-nt45', 380000, 240000, 'iKJ3MvjtbRm8nTFL_8.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kích thước: 3.5cm x 120cm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu da bò 100% dày mềm mại cao cấp.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: đen, nâu- màu sắc sang trọng, dễ phối trang phục</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng thắt lưng nam hiện đại, sang trọng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">An toàn cho người dùng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng thời trang, sang trọng</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu khóa tự động, dễ sử dụng</span></p>\r\n\r\n<div class=\"html-content pdp-product-highlights\" style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;</div>\r\n', 0, 14, 0, 1, 2),
(50, 'Thắt lưng nam, dây nịt nam khóa kim NT92- đen', 'that-lung-nam-day-nit-nam-khoa-kim-nt92-den', 350000, 170000, 'MPLT2UdJFGZBeOAp_10.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu da bò bền bỉ, chống đứt gãy hay bong tróc hiệu quả</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Đầu khóa hợp kim không gỉ sáng bóng thời thượng</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng đẳng cấp sang trọng</span><br />\r\n<br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tông màu lịch lãm, dễ kết hợp trang phục</span></p>\r\n', 0, 14, 0, 1, 2),
(51, 'Dây nịt nam thắt lưng nam chất liệu da bò thật khóa tự động hàng hiệu cao cấp NT102', 'day-nit-nam-that-lung-nam-chat-lieu-da-bo-that-khoa-tu-dong-hang-hieu-cao-cap-nt102', 360000, 260000, 'EFuTMXp1yPA2JYBI_12.jpg', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Chất liệu: Da bò thật 100%, loại da cao cấp, mặt khóa thép không rỉ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kích thước: 3.5cmx 120cm</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Màu sắc: đen</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Kiểu dáng hiện đại, sang trọng nam tính</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Mục đích: Công sở,đi chơi, dạo phố, dự tiệc.</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Sản phẩm gia công tỉ mỉ từng đường may, dùng hay làm quà tặng rất đẹp</span></p>\r\n\r\n<div class=\"html-content pdp-product-highlights\" style=\"box-sizing: border-box; color: rgb(36, 36, 36); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;</div>\r\n', 0, 14, 0, 1, 2),
(52, 'Túi Đeo Chéo Nữ Vải Canvas Dày Dặn Size 26 x 20,5 x 8 cm Đựng Được Sách Vở Đi Học SK8822', 'tui-deo-cheo-nu-vai-canvas-day-dan-size-26-x-20-5-x-8-cm-dung-duoc-sach-vo-di-hoc-sk8822', 155000, 89000, 'v7zycZ9sItuHeRqK_11.png', '<p><span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Túi vải canvas xinh xắn cho các nàng đi học đây ạ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Tặng kèm bộ sticker siêu dễ thương</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Túi có 2 màu đen, trắng cực kì dễ phối đồ luôn ạ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Size túi: 26 x 20,5 x 8 cm (ngang x cao x rộng)</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Túi có 1 ngăn chính cùng 1 số ngăn phụ nhỏ tiện ích, đựng được sách vở đi học ạ</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Phong cách: Hàn Quốc</span><br />\r\n<span style=\"color:rgb(36, 36, 36); font-family:roboto,helvetica,arial,sans-serif; font-size:14px\">Xuất xứ: Trung Quốc</span><br />\r\n&nbsp;</p>\r\n', 0, 16, 0, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_size`
--

CREATE TABLE `tb_size` (
  `idSize` int(11) NOT NULL,
  `Size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_size`
--

INSERT INTO `tb_size` (`idSize`, `Size`) VALUES
(1, 'M'),
(2, 'XXL'),
(4, 'XL'),
(5, 'L');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_sizesanpham`
--

CREATE TABLE `tb_sizesanpham` (
  `idSizeSP` int(11) NOT NULL,
  `idSize` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_sizesanpham`
--

INSERT INTO `tb_sizesanpham` (`idSizeSP`, `idSize`, `idSP`, `Gia`) VALUES
(5, 2, 6, 210000),
(6, 4, 6, 200000),
(7, 5, 6, 195000),
(8, 1, 7, 85000),
(9, 5, 1, 150000),
(10, 2, 8, 85000),
(11, 4, 8, 80000),
(12, 5, 8, 77000),
(13, 2, 13, 109000),
(14, 4, 13, 109000),
(15, 1, 13, 109000),
(16, 5, 13, 109000),
(17, 2, 18, 89000),
(18, 4, 18, 80000),
(19, 2, 19, 119000),
(20, 4, 19, 119000),
(21, 5, 20, 115000),
(22, 1, 20, 115000),
(23, 4, 20, 115000),
(24, 5, 22, 249000),
(25, 1, 22, 249000),
(26, 4, 22, 249000),
(27, 2, 23, 190000),
(28, 1, 23, 190000),
(29, 4, 23, 190000),
(30, 2, 23, 190000),
(31, 4, 24, 90000),
(32, 5, 24, 85000),
(33, 1, 24, 80000),
(34, 4, 25, 150000),
(35, 1, 25, 140000),
(36, 1, 25, 130000),
(37, 4, 26, 199000),
(38, 1, 26, 199000),
(39, 1, 26, 199000),
(40, 4, 27, 110000),
(41, 1, 27, 110000),
(42, 5, 27, 110000),
(43, 1, 28, 219000),
(44, 5, 28, 219000),
(45, 4, 30, 169000),
(46, 1, 30, 159000),
(47, 1, 30, 149000),
(48, 5, 32, 139000),
(49, 1, 32, 149000),
(50, 5, 33, 119000),
(51, 1, 33, 119000),
(52, 4, 33, 119000),
(53, 2, 33, 119000),
(54, 5, 34, 99000),
(55, 1, 34, 99000),
(56, 4, 34, 99000),
(57, 5, 35, 139000),
(58, 1, 35, 139000),
(59, 4, 35, 139000),
(60, 5, 36, 129000),
(61, 1, 36, 139000),
(62, 4, 36, 149000),
(63, 2, 36, 159000),
(64, 5, 37, 69000),
(65, 1, 37, 79000),
(66, 4, 37, 89000),
(67, 4, 41, 256000),
(68, 5, 41, 256000),
(69, 4, 44, 210000),
(70, 1, 44, 180000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_slide`
--

CREATE TABLE `tb_slide` (
  `idSlide` int(11) NOT NULL,
  `Slide` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_slide`
--

INSERT INTO `tb_slide` (`idSlide`, `Slide`) VALUES
(12, 'a3UsAtF1voLew5iT_2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_thuonghieu`
--

CREATE TABLE `tb_thuonghieu` (
  `idTH` int(11) NOT NULL,
  `ThuongHieu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_thuonghieu`
--

INSERT INTO `tb_thuonghieu` (`idTH`, `ThuongHieu`) VALUES
(2, 'Không'),
(3, 'OEM'),
(4, 'Amazing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_trangthaidh`
--

CREATE TABLE `tb_trangthaidh` (
  `idTTDH` int(11) NOT NULL,
  `TrangThaiDH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_trangthaidh`
--

INSERT INTO `tb_trangthaidh` (`idTTDH`, `TrangThaiDH`) VALUES
(1, 'Đang xử lý'),
(2, 'Hoàn thành');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_ttsanpham`
--

CREATE TABLE `tb_ttsanpham` (
  `idTTSP` int(11) NOT NULL,
  `TinhTrang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_ttsanpham`
--

INSERT INTO `tb_ttsanpham` (`idTTSP`, `TinhTrang`) VALUES
(1, 'Còn hàng'),
(2, 'Hết hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

CREATE TABLE `tb_user` (
  `idUser` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Avatar` varchar(255) NOT NULL,
  `idLoaiTK` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `SDT` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_user`
--

INSERT INTO `tb_user` (`idUser`, `Email`, `TaiKhoan`, `MatKhau`, `Avatar`, `idLoaiTK`, `HoTen`, `DiaChi`, `SDT`) VALUES
(1, 'sdssdsdsdsd@gmail.com', 'khaprovcl', '$2y$10$koVs5toUllMDA6YfNEAec.8II94d2F38Sgyd/4XKz7Y2uvFqjYy5K', 'mywaifu.jpg', 1, '', '', ''),
(2, 'aaaaaa@gmail.com', 'khaprovcl1', '$2y$10$mpaygVuS/Xff7cuyBIwifOJivW7bsSrxIZHGBjXIDY043k30FIwAi', 'mywaifu.jpg', 1, '', '', ''),
(3, 'aaaa23@gmail.com', 'test123456', '$2y$10$/bTlV9chLDBufsJBKtdWoeNryT.wvGqWe0Wx4jAgaVJ04dkbgdvke', 'uk.jpg', 1, '', '', ''),
(4, 'nguyen@gmail.com', 'nguyen001', '$2y$10$paIhYHH.Vl9KMxOHELSUuO57wMmYxergRFbgZVf6w2vBeTPB/a6QK', 'uk.jpg', 2, '', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_chitietdonhang`
--
ALTER TABLE `tb_chitietdonhang`
  ADD PRIMARY KEY (`idCTDH`),
  ADD KEY `idDH` (`idDH`),
  ADD KEY `idSP` (`idSP`);

--
-- Chỉ mục cho bảng `tb_donhang`
--
ALTER TABLE `tb_donhang`
  ADD PRIMARY KEY (`idDH`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idTTDH` (`idTTDH`);

--
-- Chỉ mục cho bảng `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`idImg`),
  ADD KEY `idSP` (`idSP`);

--
-- Chỉ mục cho bảng `tb_loai`
--
ALTER TABLE `tb_loai`
  ADD PRIMARY KEY (`idLoai`);

--
-- Chỉ mục cho bảng `tb_loaisanpham`
--
ALTER TABLE `tb_loaisanpham`
  ADD PRIMARY KEY (`idLoaiSP`),
  ADD KEY `idLoai` (`idLoai`);

--
-- Chỉ mục cho bảng `tb_loaitaikhoan`
--
ALTER TABLE `tb_loaitaikhoan`
  ADD PRIMARY KEY (`idLoaiTK`);

--
-- Chỉ mục cho bảng `tb_magiamgia`
--
ALTER TABLE `tb_magiamgia`
  ADD PRIMARY KEY (`idMGG`);

--
-- Chỉ mục cho bảng `tb_mau`
--
ALTER TABLE `tb_mau`
  ADD PRIMARY KEY (`idMau`);

--
-- Chỉ mục cho bảng `tb_mausanpham`
--
ALTER TABLE `tb_mausanpham`
  ADD PRIMARY KEY (`idMauSP`),
  ADD KEY `idMau` (`idMau`),
  ADD KEY `idSP` (`idSP`);

--
-- Chỉ mục cho bảng `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD PRIMARY KEY (`idRating`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idSP` (`idSP`);

--
-- Chỉ mục cho bảng `tb_sanpham`
--
ALTER TABLE `tb_sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idLoaiSP` (`idLoaiSP`),
  ADD KEY `idTTSP` (`idTTSP`),
  ADD KEY `idTH` (`idTH`);

--
-- Chỉ mục cho bảng `tb_size`
--
ALTER TABLE `tb_size`
  ADD PRIMARY KEY (`idSize`);

--
-- Chỉ mục cho bảng `tb_sizesanpham`
--
ALTER TABLE `tb_sizesanpham`
  ADD PRIMARY KEY (`idSizeSP`),
  ADD KEY `idSize` (`idSize`),
  ADD KEY `idSP` (`idSP`);

--
-- Chỉ mục cho bảng `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`idSlide`);

--
-- Chỉ mục cho bảng `tb_thuonghieu`
--
ALTER TABLE `tb_thuonghieu`
  ADD PRIMARY KEY (`idTH`);

--
-- Chỉ mục cho bảng `tb_trangthaidh`
--
ALTER TABLE `tb_trangthaidh`
  ADD PRIMARY KEY (`idTTDH`);

--
-- Chỉ mục cho bảng `tb_ttsanpham`
--
ALTER TABLE `tb_ttsanpham`
  ADD PRIMARY KEY (`idTTSP`);

--
-- Chỉ mục cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idLoaiTK` (`idLoaiTK`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_chitietdonhang`
--
ALTER TABLE `tb_chitietdonhang`
  MODIFY `idCTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tb_donhang`
--
ALTER TABLE `tb_donhang`
  MODIFY `idDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `idImg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tb_loai`
--
ALTER TABLE `tb_loai`
  MODIFY `idLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_loaisanpham`
--
ALTER TABLE `tb_loaisanpham`
  MODIFY `idLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tb_loaitaikhoan`
--
ALTER TABLE `tb_loaitaikhoan`
  MODIFY `idLoaiTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_magiamgia`
--
ALTER TABLE `tb_magiamgia`
  MODIFY `idMGG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tb_mau`
--
ALTER TABLE `tb_mau`
  MODIFY `idMau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_mausanpham`
--
ALTER TABLE `tb_mausanpham`
  MODIFY `idMauSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tb_rating`
--
ALTER TABLE `tb_rating`
  MODIFY `idRating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_sanpham`
--
ALTER TABLE `tb_sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tb_size`
--
ALTER TABLE `tb_size`
  MODIFY `idSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_sizesanpham`
--
ALTER TABLE `tb_sizesanpham`
  MODIFY `idSizeSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `idSlide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tb_thuonghieu`
--
ALTER TABLE `tb_thuonghieu`
  MODIFY `idTH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tb_trangthaidh`
--
ALTER TABLE `tb_trangthaidh`
  MODIFY `idTTDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_ttsanpham`
--
ALTER TABLE `tb_ttsanpham`
  MODIFY `idTTSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_chitietdonhang`
--
ALTER TABLE `tb_chitietdonhang`
  ADD CONSTRAINT `tb_chitietdonhang_ibfk_1` FOREIGN KEY (`idDH`) REFERENCES `tb_donhang` (`idDH`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_chitietdonhang_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `tb_sanpham` (`idSP`);

--
-- Các ràng buộc cho bảng `tb_donhang`
--
ALTER TABLE `tb_donhang`
  ADD CONSTRAINT `tb_donhang_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `tb_user` (`idUser`),
  ADD CONSTRAINT `tb_donhang_ibfk_2` FOREIGN KEY (`idTTDH`) REFERENCES `tb_trangthaidh` (`idTTDH`);

--
-- Các ràng buộc cho bảng `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `tb_sanpham` (`idSP`);

--
-- Các ràng buộc cho bảng `tb_loaisanpham`
--
ALTER TABLE `tb_loaisanpham`
  ADD CONSTRAINT `tb_loaisanpham_ibfk_1` FOREIGN KEY (`idLoai`) REFERENCES `tb_loai` (`idLoai`);

--
-- Các ràng buộc cho bảng `tb_mausanpham`
--
ALTER TABLE `tb_mausanpham`
  ADD CONSTRAINT `tb_mausanpham_ibfk_1` FOREIGN KEY (`idMau`) REFERENCES `tb_mau` (`idMau`),
  ADD CONSTRAINT `tb_mausanpham_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `tb_sanpham` (`idSP`);

--
-- Các ràng buộc cho bảng `tb_rating`
--
ALTER TABLE `tb_rating`
  ADD CONSTRAINT `tb_rating_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `tb_user` (`idUser`),
  ADD CONSTRAINT `tb_rating_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `tb_sanpham` (`idSP`);

--
-- Các ràng buộc cho bảng `tb_sanpham`
--
ALTER TABLE `tb_sanpham`
  ADD CONSTRAINT `tb_sanpham_ibfk_1` FOREIGN KEY (`idLoaiSP`) REFERENCES `tb_loaisanpham` (`idLoaiSP`),
  ADD CONSTRAINT `tb_sanpham_ibfk_2` FOREIGN KEY (`idTTSP`) REFERENCES `tb_ttsanpham` (`idTTSP`),
  ADD CONSTRAINT `tb_sanpham_ibfk_3` FOREIGN KEY (`idTH`) REFERENCES `tb_thuonghieu` (`idTH`);

--
-- Các ràng buộc cho bảng `tb_sizesanpham`
--
ALTER TABLE `tb_sizesanpham`
  ADD CONSTRAINT `tb_sizesanpham_ibfk_1` FOREIGN KEY (`idSize`) REFERENCES `tb_size` (`idSize`),
  ADD CONSTRAINT `tb_sizesanpham_ibfk_2` FOREIGN KEY (`idSP`) REFERENCES `tb_sanpham` (`idSP`);

--
-- Các ràng buộc cho bảng `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`idLoaiTK`) REFERENCES `tb_loaitaikhoan` (`idLoaiTK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
