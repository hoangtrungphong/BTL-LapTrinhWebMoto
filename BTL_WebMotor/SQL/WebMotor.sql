
	GO	
	CREATE DATABASE WebMotoBike

	USE WebMotoBike
	GO	

	-- Bảng User --
	CREATE TABLE tblUser 
	(	
		sTaiKhoan VARCHAR(50) NOT NULL,
		sMatKhau VARCHAR(50) NOT NULL,
		sEmail VARCHAR(100) NOT NULL
	)
	
	ALTER TABLE dbo.tblUser ADD CONSTRAINT PK_tblUser PRIMARY KEY(sTaiKhoan)

	-- Bảng thông tin khách hàng --
	CREATE TABLE tblKhachHang				
	(	sTaiKhoan VARCHAR(50) NOT NULL,		
		ID_KhachHang INT IDENTITY(1,1) NOT NULL,	
		sTenKH NVARCHAR(100) NOT NULL,		
		sGioiTinh NVARCHAR(20) NOT NULL,	
		dNgaySinh DATE NOT NULL,			
		sDienThoai VARCHAR(50) NOT NULL,	
		sDiaChi NVARCHAR(100) NOT NULL
		
	)	
	
	ALTER TABLE dbo.tblKhachHang 
	ADD CONSTRAINT PK_tblKhachHang PRIMARY KEY(sTaiKhoan,ID_KhachHang),
		CONSTRAINT FK_iMaKH FOREIGN KEY(sTaiKhoan) REFERENCES dbo.tblUser(sTaiKhoan)
		go 
	-- Bảng loại sản phẩm --
	CREATE TABLE  

	-- Bảng sản phẩm --
	CREATE TABLE tblSanPham 
	(	
		ID_SanPham INT IDENTITY(1,1) NOT NULL,

	)
