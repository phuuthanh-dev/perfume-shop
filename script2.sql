
-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserID] [int], 
 	[TotalMoney] [money] NULL, 
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserID])
 REFERENCES [dbo].[Users] ([UserID])
)

INSERT INTO [dbo].[Orders] ([Date], [UserID], [TotalMoney]) VALUES 
    ('2023-11-25', 4, 155.93),
    ('2023-05-25', 4, 195.96),
    ('2023-12-25', 5, 92.95),
    ('2023-02-25', 5, 519.88),
    ('2023-07-25', 6, 196.93),

    ('2023-12-25', 7, 131.93);

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

