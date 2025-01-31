USE [master]
GO
/****** Object:  Database [CoffeeManager]    Script Date: 1/5/2022 1:11:34 PM ******/
CREATE DATABASE [CoffeeManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CoffeeManager', FILENAME = N'D:\SQL Server\SQL\MSSQL15.TRUNGNGUYEN\MSSQL\DATA\CoffeeManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CoffeeManager_log', FILENAME = N'D:\SQL Server\SQL\MSSQL15.TRUNGNGUYEN\MSSQL\DATA\CoffeeManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CoffeeManager] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CoffeeManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CoffeeManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CoffeeManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CoffeeManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CoffeeManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CoffeeManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [CoffeeManager] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CoffeeManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CoffeeManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CoffeeManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CoffeeManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CoffeeManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CoffeeManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CoffeeManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CoffeeManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CoffeeManager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CoffeeManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CoffeeManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CoffeeManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CoffeeManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CoffeeManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CoffeeManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CoffeeManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CoffeeManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CoffeeManager] SET  MULTI_USER 
GO
ALTER DATABASE [CoffeeManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CoffeeManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CoffeeManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CoffeeManager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CoffeeManager] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CoffeeManager] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CoffeeManager] SET QUERY_STORE = OFF
GO
USE [CoffeeManager]
GO
/****** Object:  Table [dbo].[tblBan]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBan](
	[IDKV] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[SoNguoi] [int] NULL,
	[CoNguoi] [bit] NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChamCong]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChamCong](
	[IDNV] [int] NOT NULL,
	[GioVao] [datetime] NOT NULL,
	[GioRa] [datetime] NOT NULL,
	[TongLuong] [float] NOT NULL,
	[GhiChu] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCheBien]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCheBien](
	[IDNL] [int] NOT NULL,
	[IDMon] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietHoaDon]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietHoaDon](
	[IDHD] [int] NOT NULL,
	[IDMon] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuChi]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuChi](
	[IDPC] [int] NOT NULL,
	[IDNC] [int] NOT NULL,
	[TienChi] [int] NOT NULL,
	[GhiChu] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[IDNV] [int] NULL,
	[IDKH] [int] NULL,
	[IDBan] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GioVao] [datetime] NOT NULL,
	[GioRa] [datetime] NULL,
	[GiamGia] [int] NULL,
	[TongTien] [int] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhToan] [bit] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[TaiKhoan] [varchar](100) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[CMND] [varchar](12) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDT] [varchar](100) NULL,
	[NgayVao] [date] NOT NULL,
	[Diem] [int] NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhuVuc]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhuVuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLoaiMon]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiMon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMon]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMon](
	[IDLM] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNguyenLieu]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguyenLieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DVT] [nvarchar](20) NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[TaiKhoan] [varchar](100) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[CMND] [varchar](12) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SoDT] [varchar](100) NOT NULL,
	[NgayVao] [date] NOT NULL,
	[LuongCB] [int] NOT NULL,
	[HinhAnh] [ntext] NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhomChi]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhomChi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuChi]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuChi](
	[IDNV] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[TongTien] [int] NOT NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[IDCV] [int] NOT NULL,
	[TenTK] [varchar](100) NOT NULL,
	[TenHT] [nvarchar](100) NOT NULL,
	[MatKhau] [varchar](1000) NOT NULL,
	[GhiChu] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBan] ON 

INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (1, 1, N'Cá Koi 1', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (1, 2, N'Cá Koi 2', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (1, 3, N'Cá Koi 3', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (1, 4, N'Cá Koi 4', 5, 1, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (1, 5, N'Cá Koi 5', 5, 1, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (1, 6, N'Cá Koi 6', 5, 1, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (2, 7, N'Thú cưng 1', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (2, 8, N'Thú cưng 2', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (2, 9, N'Thú cưng 3', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (2, 10, N'Thú cưng 4', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (2, 11, N'Thú cưng 5', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (2, 12, N'Thú cưng 6', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (3, 13, N'Làm việc 1', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (3, 14, N'Làm việc 2', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (3, 15, N'Làm việc 3', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (3, 16, N'Làm việc 4', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (3, 17, N'Làm việc 5', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (3, 18, N'Làm việc 6', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (4, 19, N'Đọc sách 1', 1, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (4, 20, N'Đọc sách 2', 1, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (4, 21, N'Đọc sách 3', 1, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (4, 22, N'Đọc sách 4', 1, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (4, 23, N'Đọc sách 5', 1, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (4, 24, N'Đọc sách 6', 1, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (5, 25, N'Sân vườn 1', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (5, 26, N'Sân vườn 2', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (5, 27, N'Sân vườn 3', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (5, 28, N'Sân vườn 4', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (5, 29, N'Sân vườn 5', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (5, 30, N'Sân vườn 6', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (6, 31, N'Máy lạnh 1', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (6, 32, N'Máy lạnh 2', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (6, 33, N'Máy lạnh 3', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (6, 34, N'Máy lạnh 4', 2, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (6, 35, N'Máy lạnh 5', 5, 0, NULL, NULL)
INSERT [dbo].[tblBan] ([IDKV], [ID], [Ten], [SoNguoi], [CoNguoi], [HinhAnh], [GhiChu]) VALUES (6, 36, N'Máy lạnh 6', 2, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblBan] OFF
GO
INSERT [dbo].[tblChamCong] ([IDNV], [GioVao], [GioRa], [TongLuong], [GhiChu]) VALUES (2, CAST(N'2022-01-05T13:09:14.963' AS DateTime), CAST(N'2022-01-05T13:09:14.963' AS DateTime), 150000, NULL)
INSERT [dbo].[tblChamCong] ([IDNV], [GioVao], [GioRa], [TongLuong], [GhiChu]) VALUES (3, CAST(N'2022-01-05T13:09:14.967' AS DateTime), CAST(N'2022-01-05T13:09:14.967' AS DateTime), 100000, NULL)
GO
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (1, 64, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (5, 64, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 65, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (5, 65, 2, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 66, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (4, 66, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 67, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (4, 67, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (5, 67, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 68, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 69, 1, NULL)
INSERT [dbo].[tblCheBien] ([IDNL], [IDMon], [SoLuong], [GhiChu]) VALUES (3, 70, 1, NULL)
GO
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (1, 3, 4, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 6, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 8, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 9, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 1, 2, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (2, 2, 2, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (3, 3, 2, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (3, 65, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (3, 66, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (4, 13, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (4, 1, 2, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (5, 13, 1, NULL)
INSERT [dbo].[tblChiTietHoaDon] ([IDHD], [IDMon], [SoLuong], [GhiChu]) VALUES (6, 1, 2, NULL)
GO
INSERT [dbo].[tblChiTietPhieuChi] ([IDPC], [IDNC], [TienChi], [GhiChu]) VALUES (1, 1, 150000, NULL)
INSERT [dbo].[tblChiTietPhieuChi] ([IDPC], [IDNC], [TienChi], [GhiChu]) VALUES (2, 3, 25000, NULL)
INSERT [dbo].[tblChiTietPhieuChi] ([IDPC], [IDNC], [TienChi], [GhiChu]) VALUES (2, 4, 25000, NULL)
INSERT [dbo].[tblChiTietPhieuChi] ([IDPC], [IDNC], [TienChi], [GhiChu]) VALUES (3, 5, 150000, NULL)
INSERT [dbo].[tblChiTietPhieuChi] ([IDPC], [IDNC], [TienChi], [GhiChu]) VALUES (3, 6, 50000, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblChucVu] ON 

INSERT [dbo].[tblChucVu] ([ID], [Ten], [GhiChu]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[tblChucVu] ([ID], [Ten], [GhiChu]) VALUES (2, N'Quản lý', NULL)
INSERT [dbo].[tblChucVu] ([ID], [Ten], [GhiChu]) VALUES (3, N'Nhân viên', NULL)
INSERT [dbo].[tblChucVu] ([ID], [Ten], [GhiChu]) VALUES (4, N'Khách hàng thân thiết', NULL)
INSERT [dbo].[tblChucVu] ([ID], [Ten], [GhiChu]) VALUES (5, N'Khách hàng mới', NULL)
SET IDENTITY_INSERT [dbo].[tblChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHoaDon] ON 

INSERT [dbo].[tblHoaDon] ([IDNV], [IDKH], [IDBan], [ID], [GioVao], [GioRa], [GiamGia], [TongTien], [DiaChi], [ThanhToan], [GhiChu]) VALUES (1, 1, 1, 1, CAST(N'2022-01-05T13:09:14.983' AS DateTime), CAST(N'2022-01-05T13:09:14.983' AS DateTime), 0, 105000, NULL, 1, NULL)
INSERT [dbo].[tblHoaDon] ([IDNV], [IDKH], [IDBan], [ID], [GioVao], [GioRa], [GiamGia], [TongTien], [DiaChi], [ThanhToan], [GhiChu]) VALUES (1, 2, 2, 2, CAST(N'2022-01-05T13:09:14.983' AS DateTime), CAST(N'2022-01-05T13:09:14.983' AS DateTime), 0, 135000, NULL, 1, NULL)
INSERT [dbo].[tblHoaDon] ([IDNV], [IDKH], [IDBan], [ID], [GioVao], [GioRa], [GiamGia], [TongTien], [DiaChi], [ThanhToan], [GhiChu]) VALUES (1, 3, 3, 3, CAST(N'2022-01-05T13:09:14.983' AS DateTime), CAST(N'2022-01-05T13:09:14.983' AS DateTime), 0, 115000, NULL, 1, NULL)
INSERT [dbo].[tblHoaDon] ([IDNV], [IDKH], [IDBan], [ID], [GioVao], [GioRa], [GiamGia], [TongTien], [DiaChi], [ThanhToan], [GhiChu]) VALUES (1, 4, 4, 4, CAST(N'2022-01-05T13:09:14.987' AS DateTime), NULL, 0, 54000, NULL, 0, NULL)
INSERT [dbo].[tblHoaDon] ([IDNV], [IDKH], [IDBan], [ID], [GioVao], [GioRa], [GiamGia], [TongTien], [DiaChi], [ThanhToan], [GhiChu]) VALUES (1, 1, 5, 5, CAST(N'2022-01-05T13:09:14.987' AS DateTime), NULL, 0, 44000, NULL, 0, NULL)
INSERT [dbo].[tblHoaDon] ([IDNV], [IDKH], [IDBan], [ID], [GioVao], [GioRa], [GiamGia], [TongTien], [DiaChi], [ThanhToan], [GhiChu]) VALUES (1, 2, 6, 6, CAST(N'2022-01-05T13:09:14.987' AS DateTime), NULL, 0, 10000, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[tblHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKhachHang] ON 

INSERT [dbo].[tblKhachHang] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [Diem], [HinhAnh], [GhiChu]) VALUES (N'KhachHangThanThiet', 1, N'Nguyễn Thuỵ Uyên Trâm', NULL, 0, NULL, NULL, NULL, CAST(N'2022-01-05' AS Date), 0, NULL, NULL)
INSERT [dbo].[tblKhachHang] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [Diem], [HinhAnh], [GhiChu]) VALUES (N'KhachHangThanThiet', 2, N'Phạm Thị Thảo Nguyên', NULL, 0, NULL, NULL, NULL, CAST(N'2022-01-05' AS Date), 0, NULL, NULL)
INSERT [dbo].[tblKhachHang] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [Diem], [HinhAnh], [GhiChu]) VALUES (N'KhachHangMoi', 3, N'Nguyễn Gia Huy', NULL, 0, NULL, NULL, NULL, CAST(N'2022-01-05' AS Date), 0, NULL, NULL)
INSERT [dbo].[tblKhachHang] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [Diem], [HinhAnh], [GhiChu]) VALUES (N'KhachHangMoi', 4, N'Nguyễn Gia Bảo', NULL, 0, NULL, NULL, NULL, CAST(N'2022-01-05' AS Date), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblKhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKhuVuc] ON 

INSERT [dbo].[tblKhuVuc] ([ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (1, N'Cá Koi', 5000, NULL, NULL)
INSERT [dbo].[tblKhuVuc] ([ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, N'Thú cưng', 10000, NULL, NULL)
INSERT [dbo].[tblKhuVuc] ([ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, N'Làm việc', 15000, NULL, NULL)
INSERT [dbo].[tblKhuVuc] ([ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, N'Đọc sách', 10000, NULL, NULL)
INSERT [dbo].[tblKhuVuc] ([ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (5, N'Sân vườn', 0, NULL, NULL)
INSERT [dbo].[tblKhuVuc] ([ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, N'Máy lạnh', 10000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblKhuVuc] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLoaiMon] ON 

INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (1, N'Dịch vụ', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (2, N'Cà phê', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (3, N'Ice blended', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (4, N'Trà', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (5, N'Macchiato', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (6, N'Ice yogurt', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (7, N'Soda mix', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (8, N'Chocolate', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (9, N'Trà sữa', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (10, N'Bánh ngọt', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (11, N'Điểm tâm', NULL, NULL)
INSERT [dbo].[tblLoaiMon] ([ID], [Ten], [HinhAnh], [GhiChu]) VALUES (12, N'Cơm trưa văn phòng', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblLoaiMon] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMon] ON 

INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (1, 1, N'Đồ ăn cho cá (1 bịch)', 5000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (1, 2, N'Phiếu khu vui chơi (1 trẻ)', 15000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 3, N'Cà phê đá / nóng', 25000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 4, N'Cà phê sữa đá / nóng', 27000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 5, N'Espresso', 28000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 6, N'Cappuchino', 30000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 7, N'Matcha latte', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 8, N'Bạc xỉu đá', 30000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 9, N'Cacao nóng', 30000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (2, 10, N'Cacao đá', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 11, N'Cookie Frappucino', 39000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 12, N'Chocolate Frappucino', 39000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 13, N'Caramel Frappucino', 39000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 14, N'Café đá xay', 39000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 15, N'Café cốt dừa', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 16, N'Matcha đá xay', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (3, 17, N'Matcha cốt dừa', 42000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 18, N'Trà đào', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 19, N'Trà vải', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 20, N'Trà Lipton', 29000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 21, N'Trà vải lựu đỏ', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 22, N'Trà vải bạc hà', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 23, N'Trà Oolong sen vàng', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 24, N'Trà Oolong hoa hồng', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 25, N'Trà táo hạt chia', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 26, N'Trà ối hạt chia', 39000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 27, N'Trà dâu hoa đậu biếc', 36000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 28, N'Trà dâu sủi matcha', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (4, 29, N'Sữa dâu sủi matcha', 39000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (5, 30, N'Café Mint Macchiato', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (5, 31, N'Peach Tea Macchiato', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (5, 32, N'Black Tea Macchiato', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (5, 33, N'Oolong Tea Macchiato', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 34, N'Ice Yogurt', 29000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 35, N'Mango Yogurt', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 36, N'Kiwi Yogurt', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 37, N'Blueberry Yogurt', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 38, N'Strawberry Yogurt', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 39, N'Passion Fruit Yogurt', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (6, 40, N'Yogurt phúc bồn tử', 32000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 41, N'Mint Soda', 36000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 42, N'Blueberry Soda', 36000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 43, N'Passion Fruit Soda', 36000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 44, N'Kiwi Soda', 36000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 45, N'Soda hoa hồng phúc bồn tử / Raspberry Rose Sparkler', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 46, N'Soda cuaracao / Blue Sky', 36000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 47, N'Soda cuaracao việt quất / Deep Blue Sea', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (7, 48, N'Soda cuaracao chanh dây / Blue Ocean', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (8, 49, N'Chocolate sữa nóng', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (8, 50, N'Chocolate kem sữa', 38000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (8, 51, N'Chocolate sữa dừa', 40000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 52, N'Trà sữa truyền thống', 28000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 53, N'Trà sữa phúc bồn tử', 28000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 54, N'Trà sữa dâu', 28000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 55, N'Trà sữa việt quất', 28000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 56, N'Trà sữa Chocolate', 28000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 57, N'Trà sữa Matcha', 30000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 58, N'Trà sữa bạc hà', 30000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 59, N'Trà sữa trân châu đường đen', 30000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (9, 60, N'Trà sữa kem trứng', 34000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (10, 61, N'Bánh bông lan', 34000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (10, 62, N'Bánh nho', 34000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (10, 63, N'Bánh táo', 34000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (11, 64, N'Bánh mì ốp la', 33000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (11, 65, N'Cơm trắng trứng ốp la', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (11, 66, N'Cơm sườn', 45000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (11, 67, N'Cơm sườn trứng ốp la', 55000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (12, 68, N'Cơm chiên chay', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (12, 69, N'Cơm rau xào chay', 35000, NULL, NULL)
INSERT [dbo].[tblMon] ([IDLM], [ID], [Ten], [Gia], [HinhAnh], [GhiChu]) VALUES (12, 70, N'Mì gói xào hải sản', 52000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblMon] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNguyenLieu] ON 

INSERT [dbo].[tblNguyenLieu] ([ID], [Ten], [SoLuong], [DVT], [HinhAnh], [GhiChu]) VALUES (1, N'Bánh mì', 50, N'Ổ', NULL, NULL)
INSERT [dbo].[tblNguyenLieu] ([ID], [Ten], [SoLuong], [DVT], [HinhAnh], [GhiChu]) VALUES (2, N'Cơm', 50, N'Khẩu phần', NULL, NULL)
INSERT [dbo].[tblNguyenLieu] ([ID], [Ten], [SoLuong], [DVT], [HinhAnh], [GhiChu]) VALUES (3, N'Mì', 100, N'Gói', NULL, NULL)
INSERT [dbo].[tblNguyenLieu] ([ID], [Ten], [SoLuong], [DVT], [HinhAnh], [GhiChu]) VALUES (4, N'Sườn', 30, N'Miếng', NULL, NULL)
INSERT [dbo].[tblNguyenLieu] ([ID], [Ten], [SoLuong], [DVT], [HinhAnh], [GhiChu]) VALUES (5, N'Trứng', 50, N'Quả', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblNguyenLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNhanVien] ON 

INSERT [dbo].[tblNhanVien] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [LuongCB], [HinhAnh], [GhiChu]) VALUES (N'Admin', 1, N'Phạm Mạnh Trung Nguyên', N'078400000502', 1, CAST(N'2000-12-20' AS Date), N'Trịnh Thị Dối, Đông Thạnh, Hóc Môn', N'0782465032', CAST(N'2022-01-05' AS Date), 10000000, NULL, NULL)
INSERT [dbo].[tblNhanVien] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [LuongCB], [HinhAnh], [GhiChu]) VALUES (N'QuanLy', 2, N'Nguyễn Thuỵ Uyên Trâm', N'123456789', 0, CAST(N'1977-03-13' AS Date), N'Trịnh Thị Dối, Đông Thạnh, Hóc Môn', N'0915991798', CAST(N'2022-01-05' AS Date), 10000000, NULL, NULL)
INSERT [dbo].[tblNhanVien] ([TaiKhoan], [ID], [Ten], [CMND], [GioiTinh], [NgaySinh], [DiaChi], [SoDT], [NgayVao], [LuongCB], [HinhAnh], [GhiChu]) VALUES (N'NhanVien', 3, N'Phạm Thị Thảo Nguyên', N'123456789', 0, CAST(N'2007-08-19' AS Date), N'Trịnh Thị Dối, Đông Thạnh, Hóc Môn', N'0102030405', CAST(N'2022-01-05' AS Date), 7000000, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNhomChi] ON 

INSERT [dbo].[tblNhomChi] ([ID], [Ten], [GhiChu]) VALUES (1, N'Sửa sang quán', NULL)
INSERT [dbo].[tblNhomChi] ([ID], [Ten], [GhiChu]) VALUES (2, N'Mua bánh mì', NULL)
INSERT [dbo].[tblNhomChi] ([ID], [Ten], [GhiChu]) VALUES (3, N'Mua cơm', NULL)
INSERT [dbo].[tblNhomChi] ([ID], [Ten], [GhiChu]) VALUES (4, N'Mua mì', NULL)
INSERT [dbo].[tblNhomChi] ([ID], [Ten], [GhiChu]) VALUES (5, N'Mua sườn', NULL)
INSERT [dbo].[tblNhomChi] ([ID], [Ten], [GhiChu]) VALUES (6, N'Mua trứng', NULL)
SET IDENTITY_INSERT [dbo].[tblNhomChi] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPhieuChi] ON 

INSERT [dbo].[tblPhieuChi] ([IDNV], [ID], [NgayLap], [TongTien], [GhiChu]) VALUES (1, 1, CAST(N'2022-01-05T13:09:15.037' AS DateTime), 150000, NULL)
INSERT [dbo].[tblPhieuChi] ([IDNV], [ID], [NgayLap], [TongTien], [GhiChu]) VALUES (2, 2, CAST(N'2022-01-05T13:09:15.037' AS DateTime), 50000, NULL)
INSERT [dbo].[tblPhieuChi] ([IDNV], [ID], [NgayLap], [TongTien], [GhiChu]) VALUES (2, 3, CAST(N'2022-01-05T13:09:15.037' AS DateTime), 100000, NULL)
INSERT [dbo].[tblPhieuChi] ([IDNV], [ID], [NgayLap], [TongTien], [GhiChu]) VALUES (3, 4, CAST(N'2022-01-05T13:09:15.040' AS DateTime), 200000, NULL)
SET IDENTITY_INSERT [dbo].[tblPhieuChi] OFF
GO
INSERT [dbo].[tblTaiKhoan] ([IDCV], [TenTK], [TenHT], [MatKhau], [GhiChu]) VALUES (1, N'Admin', N'Admin', N'Admin', NULL)
INSERT [dbo].[tblTaiKhoan] ([IDCV], [TenTK], [TenHT], [MatKhau], [GhiChu]) VALUES (5, N'KhachHangMoi', N'Khách hàng m?i', N'KhachHangMoi', NULL)
INSERT [dbo].[tblTaiKhoan] ([IDCV], [TenTK], [TenHT], [MatKhau], [GhiChu]) VALUES (4, N'KhachHangThanThiet', N'Khách hàng thân thi?t', N'KhachHangThanThiet', NULL)
INSERT [dbo].[tblTaiKhoan] ([IDCV], [TenTK], [TenHT], [MatKhau], [GhiChu]) VALUES (3, N'NhanVien', N'Nhân viên', N'NhanVien', NULL)
INSERT [dbo].[tblTaiKhoan] ([IDCV], [TenTK], [TenHT], [MatKhau], [GhiChu]) VALUES (2, N'QuanLy', N'Qu?n lý', N'QuanLy', NULL)
GO
ALTER TABLE [dbo].[tblBan] ADD  DEFAULT (N'Bàn') FOR [Ten]
GO
ALTER TABLE [dbo].[tblBan] ADD  DEFAULT ((0)) FOR [SoNguoi]
GO
ALTER TABLE [dbo].[tblBan] ADD  DEFAULT ((0)) FOR [CoNguoi]
GO
ALTER TABLE [dbo].[tblChamCong] ADD  DEFAULT (getdate()) FOR [GioRa]
GO
ALTER TABLE [dbo].[tblChiTietHoaDon] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[tblChiTietPhieuChi] ADD  DEFAULT ((0)) FOR [TienChi]
GO
ALTER TABLE [dbo].[tblDichVu] ADD  DEFAULT (N'Dịch vụ') FOR [Ten]
GO
ALTER TABLE [dbo].[tblDichVu] ADD  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[tblHoaDon] ADD  DEFAULT (getdate()) FOR [GioVao]
GO
ALTER TABLE [dbo].[tblHoaDon] ADD  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[tblHoaDon] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[tblHoaDon] ADD  DEFAULT ((0)) FOR [ThanhToan]
GO
ALTER TABLE [dbo].[tblKhachHang] ADD  DEFAULT (N'Khách hàng') FOR [Ten]
GO
ALTER TABLE [dbo].[tblKhachHang] ADD  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[tblKhachHang] ADD  DEFAULT (CONVERT([date],getdate())) FOR [NgayVao]
GO
ALTER TABLE [dbo].[tblKhachHang] ADD  DEFAULT ((0)) FOR [Diem]
GO
ALTER TABLE [dbo].[tblKhuVuc] ADD  DEFAULT (N'Khu vực') FOR [Ten]
GO
ALTER TABLE [dbo].[tblKhuVuc] ADD  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[tblLoaiMon] ADD  DEFAULT (N'Loại món') FOR [Ten]
GO
ALTER TABLE [dbo].[tblMon] ADD  DEFAULT (N'Món') FOR [Ten]
GO
ALTER TABLE [dbo].[tblMon] ADD  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[tblNguyenLieu] ADD  DEFAULT (N'Nguyên liệu') FOR [Ten]
GO
ALTER TABLE [dbo].[tblNguyenLieu] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[tblNguyenLieu] ADD  DEFAULT ((0)) FOR [DVT]
GO
ALTER TABLE [dbo].[tblNhanVien] ADD  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[tblNhanVien] ADD  DEFAULT (CONVERT([date],getdate())) FOR [NgayVao]
GO
ALTER TABLE [dbo].[tblNhanVien] ADD  DEFAULT ((0)) FOR [LuongCB]
GO
ALTER TABLE [dbo].[tblPhieuChi] ADD  DEFAULT (getdate()) FOR [NgayLap]
GO
ALTER TABLE [dbo].[tblPhieuChi] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[tblTaiKhoan] ADD  DEFAULT ((0)) FOR [IDCV]
GO
ALTER TABLE [dbo].[tblTaiKhoan] ADD  DEFAULT (N'Tài khoản mới') FOR [TenHT]
GO
ALTER TABLE [dbo].[tblTaiKhoan] ADD  DEFAULT ((0)) FOR [MatKhau]
GO
ALTER TABLE [dbo].[tblBan]  WITH CHECK ADD FOREIGN KEY([IDKV])
REFERENCES [dbo].[tblKhuVuc] ([ID])
GO
ALTER TABLE [dbo].[tblChamCong]  WITH CHECK ADD FOREIGN KEY([IDNV])
REFERENCES [dbo].[tblNhanVien] ([ID])
GO
ALTER TABLE [dbo].[tblCheBien]  WITH CHECK ADD FOREIGN KEY([IDNL])
REFERENCES [dbo].[tblNguyenLieu] ([ID])
GO
ALTER TABLE [dbo].[tblCheBien]  WITH CHECK ADD FOREIGN KEY([IDMon])
REFERENCES [dbo].[tblMon] ([ID])
GO
ALTER TABLE [dbo].[tblChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([IDHD])
REFERENCES [dbo].[tblHoaDon] ([ID])
GO
ALTER TABLE [dbo].[tblChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([IDMon])
REFERENCES [dbo].[tblMon] ([ID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuChi]  WITH CHECK ADD FOREIGN KEY([IDPC])
REFERENCES [dbo].[tblPhieuChi] ([ID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuChi]  WITH CHECK ADD FOREIGN KEY([IDNC])
REFERENCES [dbo].[tblNhomChi] ([ID])
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([IDNV])
REFERENCES [dbo].[tblNhanVien] ([ID])
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([IDBan])
REFERENCES [dbo].[tblBan] ([ID])
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([IDKH])
REFERENCES [dbo].[tblKhachHang] ([ID])
GO
ALTER TABLE [dbo].[tblKhachHang]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[tblTaiKhoan] ([TenTK])
GO
ALTER TABLE [dbo].[tblMon]  WITH CHECK ADD FOREIGN KEY([IDLM])
REFERENCES [dbo].[tblLoaiMon] ([ID])
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[tblTaiKhoan] ([TenTK])
GO
ALTER TABLE [dbo].[tblPhieuChi]  WITH CHECK ADD FOREIGN KEY([IDNV])
REFERENCES [dbo].[tblNhanVien] ([ID])
GO
ALTER TABLE [dbo].[tblTaiKhoan]  WITH CHECK ADD FOREIGN KEY([IDCV])
REFERENCES [dbo].[tblChucVu] ([ID])
GO
ALTER TABLE [dbo].[tblChiTietPhieuChi]  WITH CHECK ADD CHECK  (([TienChi]>=(0)))
GO
ALTER TABLE [dbo].[tblDichVu]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD CHECK  (([GiamGia]>=(0)))
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD CHECK  (([TongTien]>=(0)))
GO
ALTER TABLE [dbo].[tblKhachHang]  WITH CHECK ADD CHECK  (([Diem]>=(0)))
GO
ALTER TABLE [dbo].[tblKhuVuc]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[tblMon]  WITH CHECK ADD CHECK  (([Gia]>=(0)))
GO
ALTER TABLE [dbo].[tblNguyenLieu]  WITH CHECK ADD CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD CHECK  (([LuongCB]>=(0)))
GO
ALTER TABLE [dbo].[tblPhieuChi]  WITH CHECK ADD CHECK  (([TongTien]>=(0)))
GO
/****** Object:  StoredProcedure [dbo].[procThemChiTietHoaDon]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Thêm món vào hoá đơn
CREATE PROC [dbo].[procThemChiTietHoaDon]
@IDHD		INT,
@IDMon		INT,
@SoLuong	INT
AS
BEGIN
	DECLARE @TonTaiChiTietHoaDon INT;
	DECLARE	@SoLuongMon			 INT = 1;

	SELECT @TonTaiChiTietHoaDon = IDHD, @SoLuongMon = SoLuong
	FROM tblChiTietHoaDon
	WHERE IDHD = @IDHD AND IDMon = @IDMon

	IF (@TonTaiChiTietHoaDon > 0)
		BEGIN
			DECLARE @SoLuongMoi	INT = @SoLuongMon + @SoLuong
			IF (@SoLuongMoi > 0)
				UPDATE tblChiTietHoaDon SET SoLuong = @SoLuongMon + @SoLuong WHERE IDHD = @IDHD AND IDMon = @IDMon
			ELSE
				DELETE tblChiTietHoaDon WHERE IDHD = @IDHD AND IDMon = @IDMon
		END
	ELSE
		BEGIN
			INSERT tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (@IDHD, @IDMon, @SoLuong)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[procThemHoaDon]    Script Date: 1/5/2022 1:11:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---- PROC
-- Tạo hoá đơn mới
CREATE PROC [dbo].[procThemHoaDon]
@IDBan INT
AS
BEGIN
	INSERT tblHoaDon (IDBan) VALUES (@IDBan)
END
GO
USE [master]
GO
ALTER DATABASE [CoffeeManager] SET  READ_WRITE 
GO
