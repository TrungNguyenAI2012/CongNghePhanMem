USE master
GO
DROP DATABASE CoffeeManager
GO
CREATE DATABASE CoffeeManager
GO
USE CoffeeManager
GO

-- Danh mục
CREATE TABLE tblLoaiMon
(
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(50)					NOT NULL			DEFAULT N'Loại món',
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL
)
GO
INSERT INTO tblLoaiMon (Ten) VALUES (N'Dịch vụ')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Cà phê')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Ice blended')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Trà')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Macchiato')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Ice yogurt')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Soda mix')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Chocolate')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Trà sữa')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Bánh ngọt')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Điểm tâm')
INSERT INTO tblLoaiMon (Ten) VALUES (N'Cơm trưa văn phòng')
GO
SELECT * FROM tblLoaiMon
GO

-- Thực đơn
CREATE TABLE tblMon
(
	IDLM			INT								NOT NULL,
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL			DEFAULT N'Món',
	Gia				INT								NOT NULL			DEFAULT 0					CHECK (Gia >= 0),
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDLM)				REFERENCES tblLoaiMon(ID),
)
GO
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (1, N'Đồ ăn cho cá (1 bịch)', 5000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (1, N'Phiếu khu vui chơi (1 trẻ)', 15000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Cà phê đá / nóng', 25000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Cà phê sữa đá / nóng', 27000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Espresso', 28000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Cappuchino', 30000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Matcha latte', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Bạc xỉu đá', 30000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Cacao nóng', 30000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (2, N'Cacao đá', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Cookie Frappucino', 39000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Chocolate Frappucino', 39000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Caramel Frappucino', 39000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Café đá xay', 39000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Café cốt dừa', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Matcha đá xay', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (3, N'Matcha cốt dừa', 42000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà đào', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà vải', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà Lipton', 29000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà vải lựu đỏ', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà vải bạc hà', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà Oolong sen vàng', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà Oolong hoa hồng', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà táo hạt chia', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà ối hạt chia', 39000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà dâu hoa đậu biếc', 36000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Trà dâu sủi matcha', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (4, N'Sữa dâu sủi matcha', 39000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (5, N'Café Mint Macchiato', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (5, N'Peach Tea Macchiato', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (5, N'Black Tea Macchiato', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (5, N'Oolong Tea Macchiato', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Ice Yogurt', 29000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Mango Yogurt', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Kiwi Yogurt', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Blueberry Yogurt', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Strawberry Yogurt', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Passion Fruit Yogurt', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (6, N'Yogurt phúc bồn tử', 32000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Mint Soda', 36000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Blueberry Soda', 36000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Passion Fruit Soda', 36000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Kiwi Soda', 36000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Soda hoa hồng phúc bồn tử / Raspberry Rose Sparkler', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Soda cuaracao / Blue Sky', 36000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Soda cuaracao việt quất / Deep Blue Sea', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (7, N'Soda cuaracao chanh dây / Blue Ocean', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (8, N'Chocolate sữa nóng', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (8, N'Chocolate kem sữa', 38000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (8, N'Chocolate sữa dừa', 40000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa truyền thống', 28000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa phúc bồn tử', 28000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa dâu', 28000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa việt quất', 28000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa Chocolate', 28000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa Matcha', 30000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa bạc hà', 30000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa trân châu đường đen', 30000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (9, N'Trà sữa kem trứng', 34000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (10, N'Bánh bông lan', 34000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (10, N'Bánh nho', 34000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (10, N'Bánh táo', 34000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (11, N'Bánh mì ốp la', 33000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (11, N'Cơm trắng trứng ốp la', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (11, N'Cơm sườn', 45000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (11, N'Cơm sườn trứng ốp la', 55000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (12, N'Cơm chiên chay', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (12, N'Cơm rau xào chay', 35000)
INSERT INTO tblMon (IDLM, Ten, Gia) VALUES (12, N'Mì gói xào hải sản', 52000)
GO
SELECT * FROM tblMon
GO

-- Nguyên liệu
CREATE TABLE tblNguyenLieu
(
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(50)					NOT NULL			DEFAULT N'Nguyên liệu',
	SoLuong			INT								NOT NULL			DEFAULT 0					CHECK (SoLuong >= 0),
	DVT				NVARCHAR(20)					NULL				DEFAULT 0,
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL
)
GO
INSERT INTO tblNguyenLieu (Ten, SoLuong, DVT) VALUES (N'Bánh mì', 50, N'Ổ')
INSERT INTO tblNguyenLieu (Ten, SoLuong, DVT) VALUES (N'Cơm', 50, N'Khẩu phần')
INSERT INTO tblNguyenLieu (Ten, SoLuong, DVT) VALUES (N'Mì', 100, N'Gói')
INSERT INTO tblNguyenLieu (Ten, SoLuong, DVT) VALUES (N'Sườn', 30, N'Miếng')
INSERT INTO tblNguyenLieu (Ten, SoLuong, DVT) VALUES (N'Trứng', 50, N'Quả')
GO
SELECT * FROM tblNguyenLieu
GO

-- Chế biến
CREATE TABLE tblCheBien
(
	IDNL			INT								NOT NULL,
	IDMon			INT								NOT NULL,
	SoLuong			INT								NULL,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDNL)			REFERENCES tblNguyenLieu(ID),
	FOREIGN KEY (IDMon)			REFERENCES tblMon(ID),
)
GO
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (1, 64, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (5, 64, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (2, 65, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (5, 65, 2)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (2, 66, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (4, 66, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (2, 67, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (4, 67, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (5, 67, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (2, 68, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (2, 69, 1)
INSERT INTO tblCheBien (IDNL, IDMon, SoLuong) VALUES (3, 70, 1)
GO
SELECT * FROM tblCheBien
GO

-- Dịch vụ
CREATE TABLE tblDichVu
(
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL			DEFAULT N'Dịch vụ',
	Gia				INT								NOT NULL			DEFAULT 0					CHECK (Gia >= 0),
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL
)
GO
SELECT * FROM tblDichVu
GO

-- Khu vực
CREATE TABLE tblKhuVuc
(
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL			DEFAULT N'Khu vực',
	Gia				INT								NOT NULL			DEFAULT 0					CHECK (Gia >= 0),
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL
)
GO
INSERT INTO tblKhuVuc (Ten, Gia) VALUES (N'Cá Koi', 5000)
INSERT INTO tblKhuVuc (Ten, Gia) VALUES (N'Thú cưng', 10000)
INSERT INTO tblKhuVuc (Ten, Gia) VALUES (N'Làm việc', 15000)
INSERT INTO tblKhuVuc (Ten, Gia) VALUES (N'Đọc sách', 10000)
INSERT INTO tblKhuVuc (Ten, Gia) VALUES (N'Sân vườn', 0)
INSERT INTO tblKhuVuc (Ten, Gia) VALUES (N'Máy lạnh', 10000)
GO
SELECT * FROM tblKhuVuc
GO

-- Bàn
CREATE TABLE tblBan
(
	IDKV			INT								NOT NULL,
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(50)					NOT NULL			DEFAULT N'Bàn',
	SoNguoi			INT								NULL				DEFAULT 0,
	CoNguoi			BIT								NOT NULL			DEFAULT 0,
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDKV)				REFERENCES tblKhuVuc(ID),
)
GO
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (1, N'Cá Koi 1', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (1, N'Cá Koi 2', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (1, N'Cá Koi 3', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (1, N'Cá Koi 4', 5, 1)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (1, N'Cá Koi 5', 5, 1)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (1, N'Cá Koi 6', 5, 1)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (2, N'Thú cưng 1', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (2, N'Thú cưng 2', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (2, N'Thú cưng 3', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (2, N'Thú cưng 4', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (2, N'Thú cưng 5', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (2, N'Thú cưng 6', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (3, N'Làm việc 1', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (3, N'Làm việc 2', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (3, N'Làm việc 3', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (3, N'Làm việc 4', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (3, N'Làm việc 5', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (3, N'Làm việc 6', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (4, N'Đọc sách 1', 1, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (4, N'Đọc sách 2', 1, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (4, N'Đọc sách 3', 1, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (4, N'Đọc sách 4', 1, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (4, N'Đọc sách 5', 1, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (4, N'Đọc sách 6', 1, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (5, N'Sân vườn 1', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (5, N'Sân vườn 2', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (5, N'Sân vườn 3', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (5, N'Sân vườn 4', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (5, N'Sân vườn 5', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (5, N'Sân vườn 6', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (6, N'Máy lạnh 1', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (6, N'Máy lạnh 2', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (6, N'Máy lạnh 3', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (6, N'Máy lạnh 4', 2, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (6, N'Máy lạnh 5', 5, 0)
INSERT INTO tblBan (IDKV, Ten, SoNguoi, coNguoi) VALUES (6, N'Máy lạnh 6', 2, 0)
GO
SELECT * FROM tblBan
GO

-- Chức vụ
CREATE TABLE tblChucVu
(
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL,
	GhiChu			NTEXT							NULL
)
GO
INSERT INTO tblChucVu (Ten) VALUES (N'Admin')
INSERT INTO tblChucVu (Ten) VALUES (N'Quản lý')
INSERT INTO tblChucVu (Ten) VALUES (N'Nhân viên')
INSERT INTO tblChucVu (Ten) VALUES (N'Khách hàng thân thiết')
INSERT INTO tblChucVu (Ten) VALUES (N'Khách hàng mới')
GO
SELECT * FROM tblChucVu
GO

-- Tài khoản
CREATE TABLE tblTaiKhoan
(
	IDCV			INT								NOT NULL			DEFAULT 0,
	TenTK			VARCHAR(100)					PRIMARY KEY,
	TenHT			NVARCHAR(100)					NOT NULL			DEFAULT N'Tài khoản mới',
	MatKhau			VARCHAR(1000)					NOT NULL			DEFAULT 0,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDCV)		REFERENCES tblChucVu(ID),
)
GO
INSERT INTO tblTaiKhoan (IDCV, TenTK, TenHT, MatKhau) VALUES (1, 'Admin', 'Admin', 'Admin')
INSERT INTO tblTaiKhoan (IDCV, TenTK, TenHT, MatKhau) VALUES (2, 'QuanLy', 'Quản lý', 'QuanLy')
INSERT INTO tblTaiKhoan (IDCV, TenTK, TenHT, MatKhau) VALUES (3, 'NhanVien', 'Nhân viên', 'NhanVien')
INSERT INTO tblTaiKhoan (IDCV, TenTK, TenHT, MatKhau) VALUES (4, 'KhachHangThanThiet', 'Khách hàng thân thiết', 'KhachHangThanThiet')
INSERT INTO tblTaiKhoan (IDCV, TenTK, TenHT, MatKhau) VALUES (5, 'KhachHangMoi', 'Khách hàng mới', 'KhachHangMoi')
GO
SELECT * FROM tblTaiKhoan
GO

-- Khách hàng
CREATE TABLE tblKhachHang
(
	TaiKhoan		VARCHAR(100)					NOT NULL,
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL			DEFAULT N'Khách hàng',
	CMND			VARCHAR(12)						NULL,
	GioiTinh		BIT								NULL				DEFAULT 0,
	NgaySinh		DATE							NULL,
	DiaChi			NVARCHAR(100)					NULL,
	SoDT			VARCHAR(100)					NULL,
	NgayVao			DATE							NOT NULL			DEFAULT CAST(GETDATE() AS DATE),
	Diem			INT								NOT NULL			DEFAULT 0					CHECK (Diem >= 0),
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (TaiKhoan)	REFERENCES tblTaiKhoan(TenTK)
)
GO
INSERT INTO tblKhachHang (TaiKhoan, Ten) VALUES ('KhachHangThanThiet', N'Nguyễn Thuỵ Uyên Trâm')
INSERT INTO tblKhachHang (TaiKhoan, Ten) VALUES ('KhachHangThanThiet', N'Phạm Thị Thảo Nguyên')
INSERT INTO tblKhachHang (TaiKhoan, Ten) VALUES ('KhachHangMoi', N'Nguyễn Gia Huy')
INSERT INTO tblKhachHang (TaiKhoan, Ten) VALUES ('KhachHangMoi', N'Nguyễn Gia Bảo')
GO
SELECT * FROM tblKhachHang
GO

-- Nhân viên
CREATE TABLE tblNhanVien
(
	TaiKhoan		VARCHAR(100)					NULL,
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL,
	CMND			VARCHAR(12)						NOT NULL,
	GioiTinh		BIT								NOT NULL			DEFAULT 0,
	NgaySinh		DATE							NOT NULL,
	DiaChi			NVARCHAR(100)					NOT NULL,
	SoDT			VARCHAR(100)					NOT NULL,
	NgayVao			DATE							NOT NULL			DEFAULT CAST(GETDATE() AS DATE),
	LuongCB			INT								NOT NULL			DEFAULT 0					CHECK (LuongCB >= 0),
	HinhAnh			NTEXT							NULL,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (TaiKhoan)	REFERENCES tblTaiKhoan(TenTK)
)
GO
INSERT INTO tblNhanVien (TaiKhoan, Ten, CMND, GioiTinh, NgaySinh, DiaChi, SoDT, LuongCB) VALUES ('Admin', N'Phạm Mạnh Trung Nguyên', '078400000502', 1, '2000-12-20', N'Trịnh Thị Dối, Đông Thạnh, Hóc Môn', '0782465032', 10000000)
INSERT INTO tblNhanVien (TaiKhoan, Ten, CMND, GioiTinh, NgaySinh, DiaChi, SoDT, LuongCB) VALUES ('QuanLy', N'Nguyễn Thuỵ Uyên Trâm', '123456789', 0, '1977-03-13', N'Trịnh Thị Dối, Đông Thạnh, Hóc Môn', '0915991798', 10000000)
INSERT INTO tblNhanVien (TaiKhoan, Ten, CMND, GioiTinh, NgaySinh, DiaChi, SoDT, LuongCB) VALUES ('NhanVien', N'Phạm Thị Thảo Nguyên', '123456789', 0, '2007-08-19', N'Trịnh Thị Dối, Đông Thạnh, Hóc Môn', '0102030405', 7000000)
GO
SELECT * FROM tblNhanVien
GO

-- Chấm công
CREATE TABLE tblChamCong
(
	IDNV			INT								NOT NULL,
	GioVao			DATETIME						NOT NULL,
	GioRa			DATETIME						NOT NULL			DEFAULT CURRENT_TIMESTAMP,
	TongLuong		FLOAT							NOT NULL,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDNV)	REFERENCES tblNhanVien(ID),
)
GO
INSERT INTO tblChamCong (IDNV, GioVao, TongLuong) VALUES (2, GETDATE(), 150000)
INSERT INTO tblChamCong (IDNV, GioVao, TongLuong) VALUES (3, GETDATE(), 100000)
GO
SELECT * FROM tblChamCong
GO

-- Hoá đơn
CREATE TABLE tblHoaDon
(
	IDNV			INT								NULL,
	IDKH			INT								NULL,
	IDBan			INT								NULL,
	ID				INT				IDENTITY		PRIMARY KEY,
	GioVao			DATETIME						NOT NULL			DEFAULT CURRENT_TIMESTAMP,
	GioRa			DATETIME						NULL,
	GiamGia			INT								NULL				DEFAULT 0					CHECK (GiamGia >= 0),
	TongTien		INT								NULL				DEFAULT 0					CHECK (TongTien >= 0),
	DiaChi			NVARCHAR(100)					NULL,
	ThanhToan		BIT								NULL				DEFAULT 0,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDNV)				REFERENCES tblNhanVien(ID),
	FOREIGN KEY (IDKH)				REFERENCES tblKhachHang(ID),
	FOREIGN KEY (IDBan)				REFERENCES tblBan(ID),
)
GO
INSERT INTO tblHoaDon (IDNV, IDKH, IDBan, GioRa, TongTien, ThanhToan) VALUES (1, 1, 1, GETDATE(), 105000, 1)
INSERT INTO tblHoaDon (IDNV, IDKH, IDBan, GioRa, TongTien, ThanhToan) VALUES (1, 2, 2, GETDATE(), 135000, 1)
INSERT INTO tblHoaDon (IDNV, IDKH, IDBan, GioRa, TongTien, ThanhToan) VALUES (1, 3, 3, GETDATE(), 115000, 1)
INSERT INTO tblHoaDon (IDNV, IDKH, IDBan, TongTien, ThanhToan) VALUES (1, 4, 4, 54000, 0)
INSERT INTO tblHoaDon (IDNV, IDKH, IDBan, TongTien, ThanhToan) VALUES (1, 1, 5, 44000, 0)
INSERT INTO tblHoaDon (IDNV, IDKH, IDBan, TongTien, ThanhToan) VALUES (1, 2, 6, 10000, 0)
GO
SELECT * FROM tblHoaDon
GO

-- Chi tiết hoá đơn
CREATE TABLE tblChiTietHoaDon
(
	IDHD			INT								NOT NULL,
	IDMon			INT								NULL,
	SoLuong			INT								NOT NULL			DEFAULT 0,
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDHD)				REFERENCES tblHoaDon(ID),
	FOREIGN KEY (IDMon)				REFERENCES tblMon(ID),
)
GO
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (1, 3, 4)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (2, 6, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (2, 8, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (2, 9, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (2, 1, 2)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (2, 2, 2)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (3, 3, 2)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (3, 65, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (3, 66, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (4, 13, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (4, 1, 2)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (5, 13, 1)
INSERT INTO tblChiTietHoaDon (IDHD, IDMon, SoLuong) VALUES (6, 1, 2)
GO
SELECT * FROM tblChiTietHoaDon
GO

-- Nhóm chi
CREATE TABLE tblNhomChi
(
	ID				INT				IDENTITY		PRIMARY KEY,
	Ten				NVARCHAR(100)					NOT NULL,
	GhiChu			NTEXT							NULL
)
GO
INSERT INTO tblNhomChi (Ten) VALUES (N'Sửa sang quán')
INSERT INTO tblNhomChi (Ten) VALUES (N'Mua bánh mì')
INSERT INTO tblNhomChi (Ten) VALUES (N'Mua cơm')
INSERT INTO tblNhomChi (Ten) VALUES (N'Mua mì')
INSERT INTO tblNhomChi (Ten) VALUES (N'Mua sườn')
INSERT INTO tblNhomChi (Ten) VALUES (N'Mua trứng')
GO
SELECT * FROM tblNhomChi
GO

-- Phiếu chi
CREATE TABLE tblPhieuChi
(
	IDNV			INT								NOT NULL,
	ID				INT				IDENTITY		PRIMARY KEY,
	NgayLap			DATETIME						NOT NULL			DEFAULT CURRENT_TIMESTAMP,
	TongTien		INT								NOT NULL			DEFAULT 0					CHECK (TongTien >= 0),
	GhiChu			NTEXT							NULL

	FOREIGN KEY (IDNV)				REFERENCES tblNhanVien(ID),
)
GO
INSERT INTO tblPhieuChi (IDNV, TongTien) VALUES (1, 150000)
INSERT INTO tblPhieuChi (IDNV, TongTien) VALUES (2, 50000)
INSERT INTO tblPhieuChi (IDNV, TongTien) VALUES (2, 100000)
INSERT INTO tblPhieuChi (IDNV, TongTien) VALUES (3, 200000)
GO
SELECT * FROM tblPhieuChi
GO

-- Chi tiết phiếu chi
	CREATE TABLE tblChiTietPhieuChi
	(
		IDPC			INT								NOT NULL,
		IDNC			INT								NOT NULL,
		TienChi			INT								NOT NULL			DEFAULT 0					CHECK (TienChi >= 0),
		GhiChu			NTEXT							NULL

		FOREIGN KEY (IDPC)				REFERENCES tblPhieuChi(ID),
		FOREIGN KEY (IDNC)				REFERENCES tblNhomChi(ID),
	)
GO
INSERT INTO tblChiTietPhieuChi (IDPC, IDNC, TienChi) VALUES (1, 1, 150000)
INSERT INTO tblChiTietPhieuChi (IDPC, IDNC, TienChi) VALUES (2, 3, 25000)
INSERT INTO tblChiTietPhieuChi (IDPC, IDNC, TienChi) VALUES (2, 4, 25000)
INSERT INTO tblChiTietPhieuChi (IDPC, IDNC, TienChi) VALUES (3, 5, 150000)
INSERT INTO tblChiTietPhieuChi (IDPC, IDNC, TienChi) VALUES (3, 6, 50000)
GO
SELECT * FROM tblChiTietPhieuChi
GO

---- PROC
-- Tạo hoá đơn mới
CREATE PROC procThemHoaDon
@IDBan INT
AS
BEGIN
	INSERT tblHoaDon (IDBan) VALUES (@IDBan)
END
GO

-- Thêm món vào hoá đơn
CREATE PROC procThemChiTietHoaDon
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

---- TRIGGER
-- Cập nhập chi tiết hoá đơn
CREATE TRIGGER triCapNhapChiTietHoaDon
ON tblChiTietHoaDon FOR INSERT, UPDATE
AS
BEGIN
	DECLARE @IDHD INT

	SELECT @IDHD = IDHD FROM INSERTED

	DECLARE @IDBan INT

	SELECT @IDBan = IDBan FROM tblHoaDon WHERE ID = @IDHD AND ThanhToan = 0

	UPDATE tblBan SET CoNguoi = 1 WHERE ID = @IDBan
END
GO

-- Cập nhập hoá đơn
CREATE TRIGGER triCapNhapHoaDon
ON tblHoaDon FOR UPDATE
AS
BEGIN
	DECLARE @IDHD1 INT
	DECLARE @IDHD2 INT

	SELECT @IDHD1 = ID FROM INSERTED
	SELECT @IDHD2 = ID FROM DELETED

	DECLARE @IDBan1 INT
	DECLARE @IDBan2 INT

	SELECT @IDBan1 = IDBan FROM tblHoaDon WHERE ID = @IDHD1
	SELECT @IDBan2 = IDBan FROM tblHoaDon WHERE ID = @IDHD2

	DECLARE @SoLuong1 INT = 0
	DECLARE @SoLuong2 INT = 0

	SELECT @SoLuong1 = COUNT(*) FROM tblHoaDon WHERE IDBan = @IDBan1 AND ThanhToan = 0
	SELECT @SoLuong2 = COUNT(*) FROM tblHoaDon WHERE IDBan = @IDBan2 AND ThanhToan = 0

	IF (@SoLuong1 = 0)
		UPDATE tblBan SET CoNguoi = 0 WHERE ID = @IDBan1
	ELSE
		UPDATE tblBan SET CoNguoi = 1 WHERE ID = @IDBan1

	IF (@SoLuong2 = 0)
		UPDATE tblBan SET CoNguoi = 0 WHERE ID = @IDBan2
	ELSE
		UPDATE tblBan SET CoNguoi = 1 WHERE ID = @IDBan2
END
GO