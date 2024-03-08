
-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserName] [nvarchar](50) NOT NULL, 
 	[TotalMoney] [money] NULL, 
	[status] bit not null,
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserName])
 REFERENCES [dbo].[Users] ([UserName]) ON DELETE NO ACTION
)

INSERT INTO [dbo].[Orders] ([Date], [UserName], [TotalMoney], [status]) VALUES 
	('2023-11-27', 'user9', 155.93, 1),
	('2023-12-1', 'user10', 155.93, 1),
    ('2023-11-25', 'user1', 155.93, 1),
    ('2023-05-24', 'user3', 195.96, 1),
    ('2023-12-15', 'user2', 92.95, 1),
    ('2022-02-05', 'user3', 519.88, 1),
    ('2021-07-12', 'user6', 196.93, 1),
	('2023-07-03', 'user5', 176.2, 1),
    ('2023-10-18', 'user1', 131.93, 1),
	('2023-08-21', 'user5', 196, 1),
	('2023-07-26', 'user6', 196.65, 1),
	('2023-06-22', 'user4', 129.13, 1),
    ('2023-12-21', 'user2', 92.95, 1),
    ('2023-02-28', 'user4', 119.88, 1),
    ('2023-07-22', 'user2', 96.93, 1),
	('2022-07-21', 'user2', 56.93, 1),
    ('2023-11-26', 'user2', 13.5, 1),
	('2023-12-15', 'user1', 26.13, 1),
	('2023-12-31', 'user5', 16.93, 1),
	('2023-12-22', 'user6', 19.93, 0),
	('2022-12-11', 'user10', 167.93, 1),
    ('2023-12-26', 'user9', 93.5, 1),
	('2023-12-24', 'user9', 16.13, 1),
	('2023-12-23', 'user8', 96.93, 1),
	('2022-12-22', 'user7', 50.93, 1),
    ('2023-12-21', 'user6', 225.5, 1),
	('2023-12-27', 'user1', 22.13, 1),
	('2023-12-28', 'user5', 17.93, 1),
	('2023-12-29', 'user6', 11.93, 0),
	('2022-12-11', 'user10', 167.93, 1),
    ('2023-12-28', 'user9', 93.5, 1),
	('2022-12-17', 'user10', 167.93, 1),
    ('2023-12-29', 'user9', 93.5, 1),
	('2023-12-30', 'user9', 16.13, 1),
	('2023-12-26', 'user8', 96.93, 1),
	('2022-12-25', 'user7', 50.93, 1),
    ('2023-12-24', 'user6', 225.5, 1),
	('2023-12-23', 'user1', 22.13, 1),
	('2023-12-22', 'user5', 17.93, 1),
	('2023-12-21', 'user6', 11.93, 0),
	('2022-12-20', 'user10', 167.93, 1),
    ('2023-12-19', 'user9', 93.5, 1),
	('2023-12-25', 'user2', 16.13, 1),
	('2023-12-22', 'user8', 76.93, 1),
	('2023-12-22', 'user6', 279.93, 0),
	('2023-12-25', 'user2', 216.93, 1);
	
 -- Tạo bảng OrderDetails
 CREATE TABLE [dbo].[OrderDetails]( 
 	[OrderID] [int] NOT NULL,  	
	[ProductID] [int] NOT NULL, 
 	[Quantity] [float] NOT NULL, 
 	[UnitPrice] [money] NULL,
	[Discount] [float] NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderID], [ProductID] ),
	CONSTRAINT [FK_ProductDetail] FOREIGN KEY ([ProductID])
	REFERENCES [dbo].[Products]([ProductID]) ON DELETE CASCADE,
	CONSTRAINT [FK_OrderDetail] FOREIGN KEY ([OrderID])
	REFERENCES [dbo].[Orders]([OrderID]) ON DELETE CASCADE
)

INSERT INTO [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES 
    (1, 2, 3, 29.99, 0.5),
    (1, 3, 2, 39.99, 0.3),
    (1, 4, 2, 49.99, 0.45),
    (2, 5, 3, 59.99, 0.7),
    (2, 7, 3, 79.99, 0.45),
    (2, 62, 1, 9.99, 0),
    (3, 11, 3, 29.99, 0.3),
    (3, 64, 2, 14.99, 0),
    (4, 37, 4, 79.99, 0.5),
    (4, 39, 4, 99.99, 0.45),
    (4, 44, 4, 49.99, 0.3),
    (5, 52, 2, 19.99, 0.7),
    (5, 55, 4, 49.99, 0.3),
    (5, 58, 3, 29.99, 0.5),
    (6, 66, 3, 19.99, 0),
    (6, 68, 4, 17.99, 0);

	CREATE TABLE Wallets (
    WalletID INT IDENTITY(1,1),
	UserName [nvarchar](50),
    Balance DECIMAL(10, 2),
	CONSTRAINT [PK_Wallets] PRIMARY KEY ([WalletID]),
	CONSTRAINT [FK_Wallets_Users] FOREIGN KEY ([UserName])
	REFERENCES [dbo].[Users]([UserName])
)

INSERT INTO Wallets (UserName, Balance)
VALUES
('john_doe', 300),
('john_doeee', 0),
('phuuthanh2003', 500),
('user1', 200),
('user10', 150),
('user2', 0),
('user3', 0),
('user4', 0),
('user5', 0),
('user6', 0),
('user7', 0),
('user8', 0),
('user9', 0),
('11ne', 20),
('12dau', 0),
('13kia', 0),
('14day', 0),
('15do', 0),
('user8', 0),
('16roi', 20);



/*drop table Wallets
drop table OrderDetails
drop table Orders
drop table Users
drop table products
drop table [Categories]
drop table [Suppliers]*/