CREATE DATABASE QLKS
GO

USE QLKS
GO
CREATE TABLE LoaiPhong
(
	MaLoai VARCHAR(10) PRIMARY KEY,
	TenLoai NVARCHAR(30),
	GhiChu NVARCHAR(250),
	DuongDanAnh VARCHAR(50)
)
GO

CREATE TABLE Phong
(
	MaPhong VARCHAR(10) PRIMARY KEY,
	TenPhong VARCHAR(10),
	MaLoai VARCHAR(10) REFERENCES LoaiPhong(MaLoai),
	DienTich INT,
	GiaThue INT
)
GO

CREATE TABLE TaiKhoan
(
	TenTaiKhoan VARCHAR(20) PRIMARY KEY,
	MatKhau VARCHAR(20),
	HoTen NVARCHAR(30),
	SoDienThoai VARCHAR(20),
	Email VARCHAR(35),
	LaAdmin BIT NOT NULL
)
GO

CREATE TABLE DatPhong
(
	MaDatPhong INT PRIMARY KEY,
	TenTaiKhoan VARCHAR(20) REFERENCES TaiKhoan(TenTaiKhoan),
	MaPhong VARCHAR(10) REFERENCES Phong(MaPhong),
	NgayDat date, NgayDen date,
	NgayTra date,
	DichVu NVARCHAR(100),
	ThanhTien INT
)
GO

CREATE TABLE DichVu
(
	MaDichVu VARCHAR(10) PRIMARY KEY,
	TenDichVu NVARCHAR(20),
	GiaDichVu INT
)
GO


INSERT INTO LoaiPhong VALUES ('LP01', N'Phòng Tiêu Chuẩn',	N'Đây là loại phòng có thiết kế đơn giản, có diện tích nhỏ, nằm ở các tầng thấp và không có tầm nhìn đẹp. Trong phòng được trang bị những thiết bị tối thiểu, đây là loại phòng có mức giá thấp nhất trong khách sạn.',			'/Content/images/PhongTieuChuan.png')
INSERT INTO LoaiPhong VALUES ('LP02', N'Phòng Hạng Trung',	N'Là loại phòng được thiết kế với diện tích tầm trung, được trang bị đầy đủ trang thiết bị tiện nghi hiện đại và sở hữu tầm nhìn đẹp.',																							'/Content/images/PhongHangTrung.png')
INSERT INTO LoaiPhong VALUES ('LP03', N'Phòng Cao Cấp',		N'Là loại phòng cao cấp của khách sạn, nằm ở các tầng cao của khách sạn, diện tích rộng, hướng nhìn đẹp và xa, đồng thời, các trang thiết bị, đồ nội thất cũng cao cấp.',														'/Content/images/PhongCaoCap.png')
INSERT INTO LoaiPhong VALUES ('LP04', N'Phòng VIP',			N'Là loại phòng nghỉ cao cấp nhất của một khách sạn. Nằm ở tầng cao nhất của khách sạn, được trang bị những đồ dùng cao cấp nhất, những thiết bị buồng phòng tiện nghi, đẳng cấp nhất và cả các dịch vụ đặc biệt kèm theo.',	'/Content/images/PhongVip.png')
INSERT INTO LoaiPhong VALUES ('LP05', N'Phòng Liên Kết',	N'Hai phòng cạnh nhau có cửa thông với nhau. Loại phòng này thường dành cho những khách hàng đi theo gia đình hay nhóm.',																										'/Content/images/PhongLienKet.png')

INSERT INTO Phong VALUES ('MP01', '01001', 'LP01', 18, 200)
INSERT INTO Phong VALUES ('MP02', '02002', 'LP02', 22, 240)
INSERT INTO Phong VALUES ('MP03', '03003', 'LP03', 30, 340)
INSERT INTO Phong VALUES ('MP04', '04004', 'LP04', 50, 600)
INSERT INTO Phong VALUES ('MP05', '05001', 'LP05', 30, 350)
INSERT INTO Phong VALUES ('MP06', '01002', 'LP01', 25, 270)
INSERT INTO Phong VALUES ('MP07', '02003', 'LP02', 26, 280)
INSERT INTO Phong VALUES ('MP08', '02004', 'LP02', 27, 290)
INSERT INTO Phong VALUES ('MP09', '03001', 'LP03', 32, 350)
INSERT INTO Phong VALUES ('MP10', '03002', 'LP03', 33, 370)
INSERT INTO Phong VALUES ('MP11', '01003', 'LP01', 24, 290)
INSERT INTO Phong VALUES ('MP12', '03004', 'LP03', 35, 410)
INSERT INTO Phong VALUES ('MP13', '04001', 'LP05', 40, 420)
INSERT INTO Phong VALUES ('MP14', '04002', 'LP05', 42, 440)
INSERT INTO Phong VALUES ('MP15', '04003', 'LP05', 44, 460)
INSERT INTO Phong VALUES ('MP16', '01004', 'LP01', 22, 240)
INSERT INTO Phong VALUES ('MP17', '02001', 'LP02', 30, 400)
INSERT INTO Phong VALUES ('MP18', '05002', 'LP04', 70, 700)
INSERT INTO Phong VALUES ('MP19', '01005', 'LP01', 22, 220)
INSERT INTO Phong VALUES ('MP20', '01006', 'LP01', 20, 210)

INSERT INTO DichVu VALUES ('DV01', N'Ăn Sáng',	50)
INSERT INTO DichVu VALUES ('DV02', N'Ăn Trưa',	100)
INSERT INTO DichVu VALUES ('DV03', N'Ăn Tối',	100)

INSERT INTO TaiKhoan VALUES ('NguyenKhanh',		'1234',		N'Nguyễn Khánh',		'0328758787',	'wh.knightz@gmail.com',		1)
INSERT INTO TaiKhoan VALUES ('LyChan',			'1234',		N'Lý Văn Chản',			'0969930060',	'chanmta@gmail.com',		1)
INSERT INTO TaiKhoan VALUES ('TuongPhan',		'1234',		N'Phan Trung Tường',	'0366918587',	'tuongphan@gmail.com',		1)
INSERT INTO TaiKhoan VALUES ('DangVanThang',	'1234',		N'Đặng Văn Thắng',		'0988784336',	'davatha@gmail.com',		1)
INSERT INTO TaiKhoan VALUES ('Khanh',			'1',		N'Nguyễn Khánh',		'0328758787',	'nguyenkhanh@gmail.com',	0)
INSERT INTO TaiKhoan VALUES ('Chan',			'121415',	N'Vô Danh',				'0328758786',	'vodanh@gmail.com',			0)
INSERT INTO TaiKhoan VALUES ('Tuong',			'1125',		N'Trung Tường',			'032875875',	'trungtuong@gmail.com',		0)
INSERT INTO TaiKhoan VALUES ('Thang',			'112',		N'Văn Thắng',			'032875456',	'vodanh@gmail.com',			0)
INSERT INTO TaiKhoan VALUES ('Abcxyz',			'14124',	N'Tôn Ngộ Không',		'032871238',	'khongco@gmail.com',		0)
INSERT INTO TaiKhoan VALUES ('Abc123',			'1515',		N'Tề Thiên Đại Thánh',	'032871238',	'hellomylove@gmail.com',	0)
INSERT INTO TaiKhoan VALUES ('Abc456',			'61361',	N'Lữ Bố',				'032871238',	'helloworld@gmail.com',		0)