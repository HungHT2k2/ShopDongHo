
go
Create table category(
categoryID int identity(1,1)  Primary key not null,
name nvarchar(255) not null,
)	
go

Create table Products(
ProductsID int IDENTITY(1,1)  Primary key not null,
Name nvarchar(50) ,
image nvarchar(255),
Price  int ,
Title nvarchar(255) ,
Description nvarchar(255),
categoryID int foreign key references category(categoryID),
manhinh nvarchar(255),
timepin int,
hdh nvarchar(255),
hang nvarchar(255),
sell_ID nvarchar(50),
)
go
drop table Products

Create table Account (
uID int identity(1,1) Primary key not null,
Username nvarchar(50) ,
Password nvarchar(50) ,
trangthai nvarchar(50),
isSell int ,
isAdmin int,
)
drop table Account
go

INSERT INTO Account (Username,Password,trangthai, isSell,isAdmin)
VALUES ('admin',123,N'ON',1,1);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('sa',123,N'ON',0,0);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('saa',123,N'ON',1,0);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('sab',123,N'OFF',0,1);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('sac',123,N'ON',0,0);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('affae',123,N'OFF',1,0);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('aefe',123,N'ON',0,1);
INSERT INTO Account (Username,Password,trangthai,isSell,isAdmin)
VALUES ('erw',123,N'OFF',0,0);

go


INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES (N'Apple Watch S3 GPS 38mm viền nhôm dây silicone','https://cdn.tgdd.vn/Products/Images/7077/239158/apple-watch-s3-gps-38mm-thumb-600x600.jpg',101, N'Màn hình: OLED, 1.5 inch
Tính lượng calories tiêu thụ, Đếm số bước chân, Chế độ luyện tập','ABCD',1,N'OLED1.57 inch',10,N'iPhone 8 trở lên với iOS phiên bản mới nhất',N'Apple',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Xiaomi Mi Band 7','https://cdn.tgdd.vn/Products/Images/7077/290757/mi-band-7-pro-tn-600x600.jpg',104, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập','ABCD',4,N'AMOLED, 1.64 inch',12,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Samsung Galaxy Watch5','https://cdn.tgdd.vn/Products/Images/7077/285263/samsung-galaxy-watch5-pro-lte-thumbnew-600x600.jpg',134, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',2,N'AMOLED, 1.64 inch',12,N'Android 6.0 trở lên, iOS 12 trở lên',N'Sam Sung',3);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Samsung Galaxy Watch 4 Classic','https://cdn.tgdd.vn/Products/Images/7077/278317/samsung-galaxy-watch-4-classic-46mm-den-600x600.jpg',153, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',2,N'AMOLED, 1.64 inch',10,N'Android 6.0 trở lên, iOS 12 trở lên',N'Sam Sung',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('BeFit BeU B3','https://cdn.tgdd.vn/Products/Images/7077/279257/befit-b3-vang-thumbnew-1-600x600.jpeg',163, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',3,N'AMOLED, 1.64 inch',10,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Xiaomi Watch S1','https://cdn.tgdd.vn/Products/Images/7077/274192/dong-ho-thong-minh-xiaomi-watch-s1-thumbn-600x600.jpg',155, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',4,N'AMOLED, 1.64 inch',11,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',3);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Apple Watch SE','https://cdn.tgdd.vn/Products/Images/7077/234918/se-40mm-vien-nhom-day-cao-su-xanh-den-thumb-1-600x600.jpg',121, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',1,N'AMOLED, 1.64 inch',10,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',8);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Apple Watch S8','https://cdn.tgdd.vn/Products/Images/7077/289804/apple-watch-s8-41mm-trang-kem-thumb-600x600.jpeg',119, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',1,N'AMOLED, 1.64 inch',9,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Samsung Galaxy Watch 4','https://cdn.tgdd.vn/Products/Images/7077/278304/samsung-galaxy-watch-4-40mm-den-600x600.jpg',131, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',2,N'AMOLED, 1.64 inch',12,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('BeU B1','https://cdn.tgdd.vn/Products/Images/7077/231680/beu-b1-den-thumbn-1-600x600.jpg',131, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập','ABCD',3,N'AMOLED, 1.64 inch',12,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',11);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Apple Watch S6','https://cdn.tgdd.vn/Products/Images/7077/234912/s6-44mm-vien-nhom-day-cao-su-do-thumb-1-600x600.jpg',139, 'Màn hình: OLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập','ABCD',1,N'AMOLED, 1.64 inch',10,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',1);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Apple Watch S8','https://cdn.tgdd.vn/Products/Images/7077/289804/apple-watch-s8-41mm-trang-kem-thumb-600x600.jpeg',210, 'Màn hình: AMOLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',1,N'AMOLED, 1.64 inch',12,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',2);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Samsung Galaxy Watch 4','https://cdn.tgdd.vn/Products/Images/7077/278304/samsung-galaxy-watch-4-40mm-den-600x600.jpg',483, 'Màn hình: AMOLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập' ,'ABCD',2,N'AMOLED, 1.64 inch',10,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',3);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('BeU B1','https://cdn.tgdd.vn/Products/Images/7077/231680/beu-b1-den-thumbn-1-600x600.jpg',542, 'Màn hình: AMOLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập','ABCD',3,N'AMOLED, 1.64 inch',9,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',2);
INSERT INTO Products(Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID)
VALUES ('Apple Watch S6','https://cdn.tgdd.vn/Products/Images/7077/234912/s6-44mm-vien-nhom-day-cao-su-do-thumb-1-600x600.jpg',357, 'Màn hình: AMOLED, 1.5 inch.Tính lượng calories tiêu thụ, 
Đếm số bước chân, Chế độ luyện tập','ABCD',1,N'AMOLED, 1.64 inch',8,N'Android 6.0 trở lên, iOS 12 trở lên',N'Xiaomi',4);
go


INSERT INTO category(name)
VALUES('Apple')
INSERT INTO category(name)
VALUES('Samsung')
INSERT INTO category(name)
VALUES('Befit')
INSERT INTO category(name)
VALUES('Xiaomi')
go

select * from Products where manhinh like 
select  Top 4*  from Products order by ProductsID desc
CREATE TABLE [dbo].[transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_session] [nvarchar](50) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_mail] [nvarchar](50) NOT NULL,
	[user_phone] [nvarchar](20) NOT NULL,
	[address] [nvarchar](300) NOT NULL,
	[message] [nvarchar](4000) NOT NULL,
	[amount] [nvarchar](20) NOT NULL,
	[payment] [nvarchar](30) NOT NULL,
	[status] [nvarchar](30) NULL,
	[created] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

select  *  from Products order by [Name] asc