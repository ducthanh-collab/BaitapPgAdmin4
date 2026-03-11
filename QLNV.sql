CREATE DATABASE QLNV;

-- Bảng phòng ban
CREATE TABLE phongban (
    maphong VARCHAR(10) PRIMARY KEY,
    tenphong VARCHAR(50),
    dienthoai VARCHAR(15)
);

-- Bảng chức vụ
CREATE TABLE chucvu (
    macv VARCHAR(10) PRIMARY KEY,
    tencv VARCHAR(50),
    phucap NUMERIC
);

-- Bảng nhân viên
CREATE TABLE nhavien (
    manv VARCHAR(10) PRIMARY KEY,
    hoten VARCHAR(50),
    ngaysinh DATE,
    gioitinh VARCHAR(10),
    maphong VARCHAR(10),
    macv VARCHAR(10),
    FOREIGN KEY (maphong) REFERENCES phongban(maphong),
    FOREIGN KEY (macv) REFERENCES chucvu(macv)
);