CREATE DATABASE WebBanHang;
GO

USE WebBanHang;
GO

CREATE TABLE Khach_Hang (
    MaKhachHang INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    DienThoai NVARCHAR(20),
    DiaChi NVARCHAR(255)
);

CREATE TABLE Nhan_Vien (
    MaNhanVien INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    DienThoai NVARCHAR(20),
    NgayTuyenDung DATETIME NOT NULL,
    ChucVu NVARCHAR(50) NOT NULL
);

CREATE TABLE Account (
    Username NVARCHAR(50) PRIMARY KEY,
    Password NVARCHAR(255) NOT NULL,
    Role NVARCHAR(50) NOT NULL,
    MaNhanVien INT,
    FOREIGN KEY (MaNhanVien) REFERENCES Nhan_Vien(MaNhanVien)
);

CREATE TABLE Danh_Muc (
    MaDanhMuc INT PRIMARY KEY IDENTITY(1,1),
    TenDanhMuc NVARCHAR(50) NOT NULL
);

CREATE TABLE San_Pham (
    MaSanPham INT PRIMARY KEY IDENTITY(1,1),
    TenSanPham NVARCHAR(100) NOT NULL,
    ThuongHieu NVARCHAR(50) NOT NULL,
    KichThuoc NVARCHAR(50) NOT NULL,
    Gia FLOAT NOT NULL,
    UrlHinhAnh NVARCHAR(255),
    MaDanhMuc INT NOT NULL,
    MaNhanVien INT NOT NULL,
    ThoiGianThem DATETIME,
    ThoiGianSua DATETIME,
    XuatXu NVARCHAR(100) NOT NULL,
    FOREIGN KEY (MaDanhMuc) REFERENCES Danh_Muc(MaDanhMuc),
    FOREIGN KEY (MaNhanVien) REFERENCES Nhan_Vien(MaNhanVien)
);

CREATE TABLE Don_Hang (
    MaDonHang INT PRIMARY KEY IDENTITY(1,1),
    MaKhachHang INT NOT NULL,
    MaNhanVien INT NOT NULL,
    NgayDatHang DATETIME NOT NULL DEFAULT GETDATE(),
    TongTien FLOAT NOT NULL,
    TrangThai NVARCHAR(50) NOT NULL,
    FOREIGN KEY (MaKhachHang) REFERENCES Khach_Hang(MaKhachHang),
    FOREIGN KEY (MaNhanVien) REFERENCES Nhan_Vien(MaNhanVien)
);

CREATE TABLE Chi_Tiet_Don_Hang (
    MaDonHang INT NOT NULL,
    MaSanPham INT NOT NULL,
    SoLuong INT NOT NULL,
    DonGia FLOAT NOT NULL,
    FOREIGN KEY (MaDonHang) REFERENCES Don_Hang(MaDonHang),
    FOREIGN KEY (MaSanPham) REFERENCES San_Pham(MaSanPham),
    PRIMARY KEY (MaDonHang, MaSanPham)
);

-- Thêm dữ liệu mẫu vào bảng Danh_Muc
INSERT INTO Danh_Muc (TenDanhMuc) VALUES 
(N'Giày Thể Thao'),
(N'Giày Boot'),
(N'Dép Xăng Đan'),
(N'Giày Da');

-- Thêm dữ liệu mẫu vào bảng Khach_Hang
INSERT INTO Khach_Hang (HoTen, Email, DienThoai, DiaChi) VALUES 
(N'Nguyễn Văn An', 'nguyenvanan@example.com', '0123456789', N'123 Phan Đình Phùng, Hà Nội'),
(N'Trần Thị Nở', 'tranthino@example.com', '0987654321', N'456 Lê Lợi, Hồ Chí Minh'),
(N'Lê Văn Cầu', 'levancau@example.com', '0912345678', N'789 Trần Hưng Đạo, Đà Nẵng'),
(N'Phạm Thị Thu Thảo', 'phamthao@example.com', '0908765432', N'321 Nguyễn Trãi, Huế');

-- Thêm dữ liệu mẫu vào bảng Nhan_Vien
INSERT INTO Nhan_Vien (HoTen, Email, DienThoai, NgayTuyenDung, ChucVu) VALUES 
(N'Bùi Văn Hiếu', 'buihieu@gmail.com', '0112233445', '2020-01-15', 'Quản Lý Bán Hàng'),
(N'Phạm Nhật Hào', 'phamhao@gmail.com', '0223344556', '2021-03-10', 'Trợ Lý Bán Hàng'),
(N'Vũ Thành Vinh', 'vuvinh@gmail.com', '0974835173', '2019-07-22', 'Quản Lý Kho'),
(N'Nguyễn Ngọc Minh', 'nguyenminh@gmail.com', '0334455667', '2022-05-01', 'Nhân Viên Giao Hàng');

-- Thêm dữ liệu mẫu vào bảng Account
INSERT INTO Account (Username, Password, Role, MaNhanVien) VALUES 
(N'buihieu', N'123', N'Admin', 1),
(N'phamhao', N'456', N'Admin', 2),
(N'vuvinh', N'2711', N'Admin', 3),
(N'nguyenminh', N'789', N'Admin', 4);

-- Thêm dữ liệu mẫu với các kích thước và xuất xứ khác nhau
INSERT INTO San_Pham (TenSanPham, ThuongHieu, KichThuoc, Gia, UrlHinhAnh, MaDanhMuc, MaNhanVien, ThoiGianThem, XuatXu) VALUES 
(N'Air Max 97', 'Nike', N'40,41,42,43', 150.0, N'airmax97.jpg', 1, 1, GETDATE(), N'USA'),
(N'UltraBoost', 'Adidas', N'42,43,44,45', 180.0, N'UltraBoost.jpg', 1, 2, GETDATE(), N'Germany'),
(N'Classic Boot', 'Timberland', N'41,42,43,44', 200.0, N'ClassicBoot.jpg', 2, 3, GETDATE(), N'USA'),
(N'Elegant Sandals', 'Puma', N'38,39,40,41', 120.0, N'ElegantSandals.jpg', 3, 4, GETDATE(), N'Germany'),
(N'Formal Leather Shoes', 'Reebok', N'39,40,41,42', 220.0, N'FormalLeatherShoes.jpg', 4, 1, GETDATE(), N'UK');

-- Thêm dữ liệu mẫu vào bảng Don_Hang
INSERT INTO Don_Hang (MaKhachHang, MaNhanVien, NgayDatHang, TongTien, TrangThai) VALUES 
(1, 1, '2023-05-01', 330.0, N'Đã Xử Lý'),
(2, 2, '2023-05-15', 180.0, N'Đã Gửi Hàng'),
(3, 3, '2023-06-10', 200.0, N'Đã Giao'),
(4, 1, '2023-07-22', 220.0, N'Chờ Xử Lý');

-- Thêm dữ liệu mẫu vào bảng Chi_Tiet_Don_Hang
INSERT INTO Chi_Tiet_Don_Hang (MaDonHang, MaSanPham, SoLuong, DonGia) VALUES 
(1, 1, 2, 150.0),
(1, 2, 1, 180.0),
(2, 2, 1, 180.0),
(3, 3, 1, 200.0),
(4, 5, 1, 220.0);
