USE [master]
GO
/****** Object:  Database [QUANLYNHANSU]    Script Date: 11/22/2016 9:43:34 PM ******/
CREATE DATABASE [QUANLYNHANSU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYNHANSU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QUANLYNHANSU.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLYNHANSU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QUANLYNHANSU_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLYNHANSU] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYNHANSU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYNHANSU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYNHANSU] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYNHANSU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYNHANSU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYNHANSU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYNHANSU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYNHANSU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYNHANSU] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYNHANSU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYNHANSU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYNHANSU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYNHANSU] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QUANLYNHANSU]
GO
/****** Object:  Table [dbo].[tblChiTietHopDong]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHopDong](
	[MaHD] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GhiChu] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietKhenThuong]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietKhenThuong](
	[MaKT] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[NgayKhenThuong] [date] NULL,
	[TienKhenThuong] [bigint] NULL,
	[GhiChu] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChiTietNgoaiNgu]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietNgoaiNgu](
	[MaNN] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[ThoiGian] [date] NULL,
	[TrinhDo] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[MaChucVu] [nchar](10) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
	[PhuCap] [bigint] NULL,
 CONSTRAINT [PK_tblChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChuyenMon]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuyenMon](
	[MaChuyenMon] [nchar](10) NOT NULL,
	[TenChuyenMon] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaChuyenMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHopDongLD]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHopDongLD](
	[MaHD] [nchar](10) NOT NULL,
	[TenHD] [nvarchar](50) NULL,
	[LoaiHD] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblHopDongLD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhenThuong]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhenThuong](
	[MaKT] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaPB] [nchar](10) NULL,
 CONSTRAINT [PK_tblKhenThuong] PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNgoaiNgu]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNgoaiNgu](
	[MaNN] [nchar](10) NOT NULL,
	[TenNN] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblNgoaiNgu] PRIMARY KEY CLUSTERED 
(
	[MaNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaPB] [nchar](10) NOT NULL,
	[MaChucVu] [nchar](10) NOT NULL,
	[MaChuyenMon] [nchar](10) NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhanQuyen]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhanQuyen](
	[MaPQ] [int] NOT NULL,
	[TenQuyen] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblPhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuLuong]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuLuong](
	[MaPhieuLuong] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[LuongCoBan] [bigint] NULL,
	[HeSoLuong] [float] NULL,
	[TienThuong] [bigint] NULL,
	[PhuCap] [bigint] NULL,
	[TongLinh] [bigint] NULL,
	[NgayLinh] [nchar](10) NULL,
 CONSTRAINT [PK_tblPhieuLuong] PRIMARY KEY CLUSTERED 
(
	[MaPhieuLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhongBan]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhongBan](
	[MaPB] [nchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NOT NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[SDT] [nchar](10) NULL,
	[SoNV] [int] NULL,
 CONSTRAINT [PK_tblPhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 11/22/2016 9:43:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[UserName] [nchar](20) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaPQ] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[tblChiTietHopDong] ([MaHD], [MaNV], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'1         ', N'002       ', CAST(0x3C380B00 AS Date), CAST(0x173B0B00 AS Date), N'chua het')
INSERT [dbo].[tblChiTietHopDong] ([MaHD], [MaNV], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'2         ', N'001       ', CAST(0xB9330B00 AS Date), CAST(0x01380B00 AS Date), NULL)
INSERT [dbo].[tblChiTietHopDong] ([MaHD], [MaNV], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'1         ', N'003       ', CAST(0xB9330B00 AS Date), CAST(0x94360B00 AS Date), NULL)
INSERT [dbo].[tblChiTietHopDong] ([MaHD], [MaNV], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'1         ', N'004       ', CAST(0x363B0B00 AS Date), CAST(0x103E0B00 AS Date), NULL)
INSERT [dbo].[tblChiTietHopDong] ([MaHD], [MaNV], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'3         ', N'005       ', CAST(0xDB3A0B00 AS Date), CAST(0xDB3A0B00 AS Date), NULL)
INSERT [dbo].[tblChiTietKhenThuong] ([MaKT], [MaNV], [NgayKhenThuong], [TienKhenThuong], [GhiChu]) VALUES (N'KT01      ', N'006       ', CAST(0x6E390B00 AS Date), 500000, NULL)
INSERT [dbo].[tblChiTietKhenThuong] ([MaKT], [MaNV], [NgayKhenThuong], [TienKhenThuong], [GhiChu]) VALUES (N'KT02      ', N'013       ', NULL, 200000, NULL)
INSERT [dbo].[tblChiTietKhenThuong] ([MaKT], [MaNV], [NgayKhenThuong], [TienKhenThuong], [GhiChu]) VALUES (N'KT03      ', N'009       ', NULL, 500000, NULL)
INSERT [dbo].[tblChiTietKhenThuong] ([MaKT], [MaNV], [NgayKhenThuong], [TienKhenThuong], [GhiChu]) VALUES (N'KT04      ', N'018       ', NULL, 300000, NULL)
INSERT [dbo].[tblChiTietNgoaiNgu] ([MaNN], [MaNV], [ThoiGian], [TrinhDo], [GhiChu]) VALUES (N'ENG       ', N'001       ', CAST(0x79380B00 AS Date), N'B1', NULL)
INSERT [dbo].[tblChiTietNgoaiNgu] ([MaNN], [MaNV], [ThoiGian], [TrinhDo], [GhiChu]) VALUES (N'ENG       ', N'002       ', CAST(0x38360B00 AS Date), N'B1', NULL)
INSERT [dbo].[tblChiTietNgoaiNgu] ([MaNN], [MaNV], [ThoiGian], [TrinhDo], [GhiChu]) VALUES (N'FRA       ', N'002       ', CAST(0x5B380B00 AS Date), N'A2', NULL)
INSERT [dbo].[tblChiTietNgoaiNgu] ([MaNN], [MaNV], [ThoiGian], [TrinhDo], [GhiChu]) VALUES (N'ENG       ', N'003       ', NULL, N'B1', NULL)
INSERT [dbo].[tblChiTietNgoaiNgu] ([MaNN], [MaNV], [ThoiGian], [TrinhDo], [GhiChu]) VALUES (N'ENG       ', N'004       ', NULL, N'B1', NULL)
INSERT [dbo].[tblChiTietNgoaiNgu] ([MaNN], [MaNV], [ThoiGian], [TrinhDo], [GhiChu]) VALUES (N'ENG       ', N'005       ', NULL, N'IELTS 5.0', NULL)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'BV        ', N'Bảo vệ', 60000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'GD        ', N'Giám Đốc', 1000000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'GS        ', N'Người giám sát', 250000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'LT        ', N'Lễ tân', 200000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'NV        ', N'Nhân viên', 180000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'PGD       ', N'Phó Giám Đốc', 800000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'PTP       ', N'Phó Phòng', 400000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'TK        ', N'Thư ký', 300000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'TP        ', N'Trưởng Phòng', 550000)
INSERT [dbo].[tblChucVu] ([MaChucVu], [TenChucVu], [PhuCap]) VALUES (N'TT        ', N'Thực tập sinh', 80000)
INSERT [dbo].[tblChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (N'CD        ', N'Cao Đẳng')
INSERT [dbo].[tblChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (N'DH        ', N'Đại Học')
INSERT [dbo].[tblChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (N'PTCS      ', N'Phổ Thông Cơ Sở')
INSERT [dbo].[tblChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (N'PTTH      ', N'Phổ Thông Trung Học')
INSERT [dbo].[tblChuyenMon] ([MaChuyenMon], [TenChuyenMon]) VALUES (N'TC        ', N'Trung Cấp')
INSERT [dbo].[tblHopDongLD] ([MaHD], [TenHD], [LoaiHD]) VALUES (N'1         ', N'Kinh tế', N'24 tháng')
INSERT [dbo].[tblHopDongLD] ([MaHD], [TenHD], [LoaiHD]) VALUES (N'2         ', N'Kinh Tế', N'36 Tháng')
INSERT [dbo].[tblHopDongLD] ([MaHD], [TenHD], [LoaiHD]) VALUES (N'3         ', N'Kinh Tế', N'48 Tháng')
INSERT [dbo].[tblHopDongLD] ([MaHD], [TenHD], [LoaiHD]) VALUES (N'4         ', N'Kinh tế', N'5 năm')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT01      ', N'006       ', N'06        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT02      ', N'013       ', N'08        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT03      ', N'009       ', N'05        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT04      ', N'018       ', N'02        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT06      ', N'002       ', N'02        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT07      ', N'014       ', N'10        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT08      ', N'015       ', N'09        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT09      ', N'016       ', N'07        ')
INSERT [dbo].[tblKhenThuong] ([MaKT], [MaNV], [MaPB]) VALUES (N'KT10      ', N'001       ', N'04        ')
INSERT [dbo].[tblNgoaiNgu] ([MaNN], [TenNN]) VALUES (N'CHI       ', N'Tiếng Trung')
INSERT [dbo].[tblNgoaiNgu] ([MaNN], [TenNN]) VALUES (N'ENG       ', N'Tiếng Anh')
INSERT [dbo].[tblNgoaiNgu] ([MaNN], [TenNN]) VALUES (N'FRA       ', N'Tiếng Pháp')
INSERT [dbo].[tblNgoaiNgu] ([MaNN], [TenNN]) VALUES (N'JAP       ', N'Tiếng Nhật')
INSERT [dbo].[tblNgoaiNgu] ([MaNN], [TenNN]) VALUES (N'KOR       ', N'Tiếng Hàn')
INSERT [dbo].[tblNgoaiNgu] ([MaNN], [TenNN]) VALUES (N'RUS       ', N'Tiếng Nga')
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'001       ', N'Trần Quang Thái', N'Nam', CAST(0x990A0B00 AS Date), N'Hưng Yên', N'04        ', N'TP        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'002       ', N'Nguyễn Thanh Tùng', N'Nam', CAST(0xF5110B00 AS Date), N'Hưng Yên', N'02        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'003       ', N'Lê Thanh Tuấn Anh ', N'Nam', CAST(0xF30E0B00 AS Date), N'Nghệ An', N'02        ', N'NV        ', N'CD        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'004       ', N'Bùi Thị Ngọc Mai', N'Nữ', NULL, N'Thanh Hóa', N'01        ', N'LT        ', N'CD        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'005       ', N'Trần Thị Vân Oanh', N'Nữ', NULL, N'Nam Định', N'07        ', N'NV        ', N'CD        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'006       ', N'Trần Hải Đăng', N'Nam', NULL, N'Hải Phòng', N'06        ', N'GD        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'007       ', N'Nguyễn Thanh Tâm', N'Nam', NULL, N'Nghệ An', N'03        ', N'GS        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'008       ', N'Lê Viết Tuấn', N'Nam', NULL, N'Hưng Yên', N'05        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'009       ', N'Nguyễn Thành Luân', N'Nam', NULL, N'Nam Định', N'05        ', N'NV        ', N'CD        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'010       ', N'Nguyễn Minh Phương', N'Nữ', NULL, N'Hà Nội', N'08        ', N'PTP       ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'011       ', N'Phạm Thị Bích Phương', N'Nữ', NULL, N'Quảng Bình', N'02        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'012       ', N'Hồ Thị Mỹ Dung', N'Nữ', NULL, N'Hà Nam', N'03        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'013       ', N'Phạm Ngọc Anh', N'Nam', NULL, N'Ninh Bình', N'08        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'014       ', N'Nguyễn Đức Tú', N'Nam', NULL, N'Hải Dương', N'10        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'015       ', N'Nguyễn Văn Tuấn Anh', N'Nam', NULL, N'Thanh Hóa', N'09        ', N'TP        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'016       ', N'Nguyễn Thị Thu', N'Nữ', CAST(0x1A1B0B00 AS Date), N'Hòa Bình', N'07        ', N'LT        ', N'CD        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'017       ', N'Hà Đức Hiến', N'Nam', CAST(0xE4140B00 AS Date), N'Nam Định', N'05        ', N'GS        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'018       ', N'Phạm Văn Công', N'Nam', CAST(0x4A180B00 AS Date), N'Nghệ An', N'02        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'019       ', N'Phạm Thành Trung', NULL, NULL, NULL, N'01        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'020       ', N'Nguyễn Duy Hiếu', NULL, NULL, NULL, N'01        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'021       ', N'Nguyễn Duy Hùng', NULL, NULL, NULL, N'01        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [MaPB], [MaChucVu], [MaChuyenMon], [GhiChu]) VALUES (N'022       ', N'Nguyễn Duy Hùng', NULL, NULL, NULL, N'01        ', N'NV        ', N'DH        ', NULL)
INSERT [dbo].[tblPhanQuyen] ([MaPQ], [TenQuyen]) VALUES (1, N'Admin     ')
INSERT [dbo].[tblPhanQuyen] ([MaPQ], [TenQuyen]) VALUES (2, N'NhanVien  ')
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL01      ', N'001       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL02      ', N'002       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL03      ', N'003       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL04      ', N'004       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL05      ', N'005       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL06      ', N'006       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL07      ', N'007       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL08      ', N'008       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL09      ', N'009       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL10      ', N'010       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL11      ', N'011       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL12      ', N'012       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL13      ', N'013       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL14      ', N'014       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL15      ', N'015       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhieuLuong] ([MaPhieuLuong], [MaNV], [LuongCoBan], [HeSoLuong], [TienThuong], [PhuCap], [TongLinh], [NgayLinh]) VALUES (N'PL16      ', N'016       ', 1210000, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'01        ', N'Hành Chính', N'S1', N'3546123   ', 5)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'02        ', N'Kế Toán', N'S2', N'3547189   ', 4)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'03        ', N'Marketing', N'S3', N'3761283   ', 2)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'04        ', N'Vật Tư', N'S4', N'3454111   ', 1)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'05        ', N'Tài Vụ', N'S5', N'3764156   ', 3)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'06        ', N'Điều Hành', N'S6', N'3345654   ', 1)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'07        ', N'Tổ chức sự kiện', N'S7', N'3567129   ', 2)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'08        ', N'Thiết Kế', N'S8', N'3651768   ', 2)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'09        ', N'Nhân Sự', N'S9', NULL, 1)
INSERT [dbo].[tblPhongBan] ([MaPB], [TenPB], [DiaDiem], [SDT], [SoNV]) VALUES (N'10        ', N'Chăm sóc khách hàng', N'S10', N'324156    ', 1)
INSERT [dbo].[tblTaiKhoan] ([UserName], [Password], [MaNV], [MaPQ]) VALUES (N'admin               ', N'admin     ', N'001       ', 1)
INSERT [dbo].[tblTaiKhoan] ([UserName], [Password], [MaNV], [MaPQ]) VALUES (N'nga                 ', N'nga       ', N'002       ', 2)
INSERT [dbo].[tblTaiKhoan] ([UserName], [Password], [MaNV], [MaPQ]) VALUES (N'cong                ', N'cong      ', N'003       ', 2)
INSERT [dbo].[tblTaiKhoan] ([UserName], [Password], [MaNV], [MaPQ]) VALUES (N'hatrang             ', N'hatrang   ', N'006       ', 2)
ALTER TABLE [dbo].[tblChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHopDong_tblHopDongLD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHopDongLD] ([MaHD])
GO
ALTER TABLE [dbo].[tblChiTietHopDong] CHECK CONSTRAINT [FK_tblChiTietHopDong_tblHopDongLD]
GO
ALTER TABLE [dbo].[tblChiTietHopDong]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietHopDong_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblChiTietHopDong] CHECK CONSTRAINT [FK_tblChiTietHopDong_tblNhanVien]
GO
ALTER TABLE [dbo].[tblChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietKhenThuong_tblKhenThuong] FOREIGN KEY([MaKT])
REFERENCES [dbo].[tblKhenThuong] ([MaKT])
GO
ALTER TABLE [dbo].[tblChiTietKhenThuong] CHECK CONSTRAINT [FK_tblChiTietKhenThuong_tblKhenThuong]
GO
ALTER TABLE [dbo].[tblChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietKhenThuong_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblChiTietKhenThuong] CHECK CONSTRAINT [FK_tblChiTietKhenThuong_tblNhanVien]
GO
ALTER TABLE [dbo].[tblChiTietNgoaiNgu]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietNgoaiNgu_tblNgoaiNgu] FOREIGN KEY([MaNN])
REFERENCES [dbo].[tblNgoaiNgu] ([MaNN])
GO
ALTER TABLE [dbo].[tblChiTietNgoaiNgu] CHECK CONSTRAINT [FK_tblChiTietNgoaiNgu_tblNgoaiNgu]
GO
ALTER TABLE [dbo].[tblChiTietNgoaiNgu]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietNgoaiNgu_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblChiTietNgoaiNgu] CHECK CONSTRAINT [FK_tblChiTietNgoaiNgu_tblNhanVien]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[tblChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblChucVu]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblChuyenMon] FOREIGN KEY([MaChuyenMon])
REFERENCES [dbo].[tblChuyenMon] ([MaChuyenMon])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblChuyenMon]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblPhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[tblPhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblPhongBan]
GO
ALTER TABLE [dbo].[tblPhieuLuong]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuLuong_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblPhieuLuong] CHECK CONSTRAINT [FK_tblPhieuLuong_tblNhanVien]
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tblTaiKhoan_tblNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tblTaiKhoan] CHECK CONSTRAINT [FK_tblTaiKhoan_tblNhanVien]
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tblTaiKhoan_tblPhanQuyen] FOREIGN KEY([MaPQ])
REFERENCES [dbo].[tblPhanQuyen] ([MaPQ])
GO
ALTER TABLE [dbo].[tblTaiKhoan] CHECK CONSTRAINT [FK_tblTaiKhoan_tblPhanQuyen]
GO
USE [master]
GO
ALTER DATABASE [QUANLYNHANSU] SET  READ_WRITE 
GO
