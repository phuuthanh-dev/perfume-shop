
-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserName] [nvarchar](50) NOT NULL, 
 	[TotalMoney] [money] NULL, 
	[status] bit not null,
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserName])
 REFERENCES [dbo].[Users] ([UserName])
)

INSERT INTO [dbo].[Orders] ([Date], [UserName], [TotalMoney], [status]) VALUES 
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
	('2023-03-15', 'user1', 26.13, 1),
	('2023-02-12', 'user2', 16.93, 1),
	('2023-02-12', 'user2', 19.93, 0),
	('2023-01-15', 'user2', 216.93, 1);

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
('phuuthanh2003', 0),
('user1', 0),
('user10', 0),
('user2', 0),
('user3', 0),
('user4', 0),
('user5', 0),
('user6', 0),
('user7', 0),
('user8', 0),
('user9', 0);