
-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserName] [nvarchar](50) NOT NULL, 
 	[TotalMoney] [money] NULL, 
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserName])
 REFERENCES [dbo].[Users] ([UserName])
)

INSERT INTO [dbo].[Orders] ([Date], [UserName], [TotalMoney]) VALUES 
    ('2023-11-25', 'user1', 155.93),
    ('2023-05-24', 'user3', 195.96),
    ('2023-12-15', 'user2', 92.95),
    ('2022-02-05', 'user3', 519.88),
    ('2021-07-12', 'user6', 196.93),
	('2023-07-03', 'user5', 176.2),
    ('2023-10-18', 'user1', 131.93),
	('2023-08-21', 'user5', 196),
	('2023-07-26', 'user6', 196.65),
	('2023-06-22', 'user4', 129.13),
    ('2023-12-21', 'user2', 92.95),
    ('2023-02-28', 'user4', 119.88),
    ('2023-07-22', 'user2', 96.93),
	('2022-07-21', 'user2', 56.93),
    ('2023-11-26', 'user2', 13.5),
	('2023-03-15', 'user1', 26.13),
	('2023-02-12', 'user2', 16.93),
	('2023-01-15', 'user2', 216.93);

 -- Tạo bảng OrderDetails
 CREATE TABLE [dbo].[OrderDetails]( 
 	[OrderID] [int] NOT NULL,  	
	[ProductID] [int] NOT NULL, 
 	[Quantity] [float] NOT NULL, 
 	[UnitPrice] [money] NULL,
	[Discount] [float] NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderID], [ProductID] ),
	CONSTRAINT [FK_OrderDetail] FOREIGN KEY ([ProductID])
	REFERENCES [dbo].[Products]([ProductID])
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

