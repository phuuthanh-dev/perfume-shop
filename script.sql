/*drop database UserManagement*/


CREATE DATABASE Perfume_Website 

USE [Perfume_Website]

-- Tạo bảng [dbo].[tblUsers]
CREATE TABLE [dbo].[tblUsers](
	[userName] [nvarchar](50) NOT NULL PRIMARY KEY,
	[fullName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[roleID] [int] NOT NULL,
	[address] [nvarchar](200) NULL,
	[phone] [nvarchar](11) NOT NULL,
)
	
INSERT [dbo].[tblUsers] ([userName], [fullName], [password], [roleID], [address], [phone]) VALUES (N'phuuthanh2003', N'Phùng Hữu Thành', N'thanhthanh1', 1, N'60 Nguyễn Văn Trỗi', N'0981347469')
INSERT [dbo].[tblUsers] ([userName], [fullName], [password], [roleID], [phone]) VALUES (N'admin', N'admin', N'1', 1, N'0123456789')
INSERT [dbo].[tblUsers] ([userName], [fullName], [password], [roleID], [address], [phone]) VALUES (N'se170345', N'Phùng Hữu Thành', N'thanhthanh1', 1, N'60 Nguyễn Văn Trỗi', N'0707064154')
