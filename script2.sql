
-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserID]  [nvarchar](50) NOT NULL, 
 	[TotalMoney] [money] NULL, 
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserID])
 REFERENCES[dbo].[Users] ([UserName])
)


 -- Tạo bảng OrderDetails
 CREATE TABLE [dbo].[OrderDetails]( 
 	[OrderID] [int] FOREIGN KEY REFERENCES [dbo].[Orders]([OrderID]) NOT NULL,  	
	[ProductID] [int] FOREIGN KEY REFERENCES [dbo].[Products]([ProductID]) NOT NULL, 
 	[Quantity] [float] NOT NULL, 
 	[UnitPrice] [money] NULL,
	[Discount] [float] NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderID], [ProductID] ),
)
