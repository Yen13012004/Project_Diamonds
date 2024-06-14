Create database DB_Diamonds
GO

Use DB_Diamonds
GO

Create table Category
(
	CategoryId int primary key identity,
	Name nvarchar(150)
)
GO

Insert Into Category Values (N'Nhẫn kim cương')
GO

Create table Products
(
	ProductId int primary key identity,
	Name nvarchar(150),
	Description text,
	Image varchar(200),
	Carat int,
	Clarity nvarchar(100),
	Cut nvarchar(150),
	Luminescent nvarchar(150),
	Shape nvarchar(150),
	Size int,
	Height int,
	Color nvarchar(100),
	Price float,
	SalePrice float,
	StockQuantity int,
	CategoryId int foreign key references Category(CategoryId),
	CreatedAt datetime,
	UpdatedAt datetime
)
GO

Insert into Products values (N'Nhẫn Kim Cương Nữ R.2235', N'Sang trọng', 'https://trangkimluxury.vn/images/products/2022/12/13/large/6_1670921408.jpg', 2, 'None', 'excellent', N'Phát quang','cushion', 3,3, N'Trắng', 25496000, 21416640, 12,1, '2024-03-25', '2024-03-26')
GO

Select * from Products
GO

Create table Customer
(
	CustomerId int primary key identity,
	UserName nvarchar(100),
	FullName nvarchar(150),
	Avatar varchar(150),
	Gender bit,
	Birthday date,
	Email varchar(150),
	Password varchar(500),
	Phone varchar(12),
	Address nvarchar(225),
	Active int,
	Role varchar(50),
)
GO


Insert into Customer Values (N'yenNguyen', N'Nguyễn Thị Yến','https://tse2.mm.bing.net/th?id=OIP.9SKfV5dAQ-SahY_Hau0W2AHaHa&pid=Api&P=0&h=220',1,'2004-01-13', 'yen@gmail.com','$2a$12$/y5uNR77dRrlWNdRJDtqCuBpdYlY4jWahcCaZjzqFp/GTtbq0txTK', '1341415938', N'Bắc Ninh',1 , 'user')
Insert into Customer Values (N'admin', N'Nguyễn Thị Yến','https://tse2.mm.bing.net/th?id=OIP.9SKfV5dAQ-SahY_Hau0W2AHaHa&pid=Api&P=0&h=220',1,'2004-01-13', 'yen@gmail.com','$2a$12$uVg6rriHUPhLVZ0iLtMpiOosXbNAJVc3wQXMqzJhbxwS5eudgypoS', '1341415938', N'Bắc Ninh',1, 'admin')
GO

Create table Orders 
(
	OrderId int primary key identity,
	CustomerId int foreign key references Customer(CustomerId),
	OrderDate date,
	TotalAmount int,
	Status bit,
	ShippingAddress nvarchar(225),
	BillingAddress nvarchar(200),
	CreatedAt datetime,
	UpdatedAt datetime
)
GO
Insert into Orders values (1, '2024-05-23', 12, 1, N'Bắc Ninh', N'Việt Nam', '2024-05-23', '2024-05-24')
GO