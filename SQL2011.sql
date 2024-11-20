CREATE DATABASE MobileShop;

USE MobileShop;

-- Bảng sản phẩm
CREATE TABLE SanPham (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenSP VARCHAR(100) NOT NULL,
    gia DECIMAL(10, 2) NOT NULL,
    hangSX VARCHAR(50) NOT NULL
);

-- Bảng khách hàng
CREATE TABLE KhachHang (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenKH VARCHAR(100) NOT NULL,
    diachi VARCHAR(255),
    sdt VARCHAR(15) NOT NULL
);

-- Bảng đơn hàng
CREATE TABLE DonHang (
    id INT AUTO_INCREMENT PRIMARY KEY,
    khachhangid INT NOT NULL,
    sanphamid INT NOT NULL,
    soluong INT NOT NULL,
    ngaymua DATE NOT NULL,
    FOREIGN KEY (khachhangid) REFERENCES KhachHang(id),
    FOREIGN KEY (sanphamid) REFERENCES SanPham(id)
);

-- Bảng người dùng
CREATE TABLE NguoiDung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tendangnhap VARCHAR(50) UNIQUE NOT NULL,
    matkhau VARCHAR(255) NOT NULL
);
