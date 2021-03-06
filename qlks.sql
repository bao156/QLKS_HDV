USE [QLKS_HDV]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[bookingcard_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
	[recieveAt] [date] NOT NULL,
	[backAt] [date] NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[bookingcard_id] ASC,
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Booking_card]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking_card](
	[id] [int] NOT NULL,
	[customer_id] [int] NULL,
	[discount_id] [int] NULL,
 CONSTRAINT [PK_Booking_card] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[phone] [varchar](15) NULL,
	[email] [varchar](500) NULL,
	[username] [varchar](30) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_Renting]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Renting](
	[bookingcard_id] [int] NOT NULL,
	[room_code] [varchar](10) NOT NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Customer_Renting] PRIMARY KEY CLUSTERED 
(
	[bookingcard_id] ASC,
	[room_code] ASC,
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[discount_name] [nvarchar](50) NULL,
	[discount_value] [float] NULL,
	[userAt] [date] NULL,
	[endAt] [date] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[logo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Price]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[type_id] [int] NOT NULL,
	[weekend] [bit] NOT NULL,
	[price] [nchar](10) NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC,
	[weekend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Renting]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Renting](
	[bookingcard_id] [int] NOT NULL,
	[room_code] [varchar](10) NOT NULL,
	[rentAt] [date] NULL,
	[backAt] [date] NULL,
	[staff_id] [int] NULL,
 CONSTRAINT [PK_Renting_1] PRIMARY KEY CLUSTERED 
(
	[bookingcard_id] ASC,
	[room_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NULL,
	[hotel_id] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[code] [varchar](10) NOT NULL,
	[type_id] [int] NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [PK_Room_1] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room_type]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number_of_bed] [int] NULL,
 CONSTRAINT [PK_Room_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[phone] [varchar](15) NULL,
	[email] [varchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[username] [varchar](30) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/10/2021 1:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](50) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [firstname], [lastname], [phone], [email], [username]) VALUES (2, N'Lê Hà', N'Tĩnh', N'0836157441', N'nguyenvinhlam@gmail.com', N'tien156')
INSERT [dbo].[Customer] ([id], [firstname], [lastname], [phone], [email], [username]) VALUES (3, N'Nguyễn Văn', N'Tín', N'075158321', N'nguyenvan@gmail.com', N'tien156')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([id], [hotel_name], [description], [logo]) VALUES (1, N'Silver Lining', N'Mèo méo meo mèo meo', N'  ')
SET IDENTITY_INSERT [dbo].[Hotel] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [role_name], [hotel_id]) VALUES (1, N'Manager', 1)
INSERT [dbo].[Roles] ([id], [role_name], [hotel_id]) VALUES (2, N'Reception', 1)
INSERT [dbo].[Roles] ([id], [role_name], [hotel_id]) VALUES (3, N'Cleaner', 1)
INSERT [dbo].[Roles] ([id], [role_name], [hotel_id]) VALUES (4, N'Customer', 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Room_type] ON 

INSERT [dbo].[Room_type] ([id], [number_of_bed]) VALUES (1, 3)
INSERT [dbo].[Room_type] ([id], [number_of_bed]) VALUES (2, 1)
SET IDENTITY_INSERT [dbo].[Room_type] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([id], [firstname], [lastname], [phone], [email], [address], [username]) VALUES (1, N'Nguyễn Thái', N'Bảo', N'0836877964', N'nguyenthaibao157@gmail.com', N'Đồng Tháp', N'bao156')
INSERT [dbo].[Staff] ([id], [firstname], [lastname], [phone], [email], [address], [username]) VALUES (10, N'Nguyễn Đức', N'Tài', N'0836811742', N'nguyentaido@gmail.com', N'An Giang', N'bao157')
SET IDENTITY_INSERT [dbo].[Staff] OFF
INSERT [dbo].[Users] ([username], [password], [role_id]) VALUES (N'bao156', N'123456', 1)
INSERT [dbo].[Users] ([username], [password], [role_id]) VALUES (N'bao157', N'123456', 2)
INSERT [dbo].[Users] ([username], [password], [role_id]) VALUES (N'bao158', N'123456', 3)
INSERT [dbo].[Users] ([username], [password], [role_id]) VALUES (N'tien156', N'123456', 4)
INSERT [dbo].[Users] ([username], [password], [role_id]) VALUES (N'tien157', N'123456', 4)
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Booking_card] FOREIGN KEY([bookingcard_id])
REFERENCES [dbo].[Booking_card] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Booking_card]
GO
ALTER TABLE [dbo].[Booking_card]  WITH CHECK ADD  CONSTRAINT [FK_Booking_card_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Booking_card] CHECK CONSTRAINT [FK_Booking_card_Customer]
GO
ALTER TABLE [dbo].[Booking_card]  WITH CHECK ADD  CONSTRAINT [FK_Booking_card_Discount] FOREIGN KEY([discount_id])
REFERENCES [dbo].[Discount] ([id])
GO
ALTER TABLE [dbo].[Booking_card] CHECK CONSTRAINT [FK_Booking_card_Discount]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Users1] FOREIGN KEY([username])
REFERENCES [dbo].[Users] ([username])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Users1]
GO
ALTER TABLE [dbo].[Customer_Renting]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Renting_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customer_Renting] CHECK CONSTRAINT [FK_Customer_Renting_Customer]
GO
ALTER TABLE [dbo].[Customer_Renting]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Renting_Renting] FOREIGN KEY([bookingcard_id], [room_code])
REFERENCES [dbo].[Renting] ([bookingcard_id], [room_code])
GO
ALTER TABLE [dbo].[Customer_Renting] CHECK CONSTRAINT [FK_Customer_Renting_Renting]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Room_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Room_type] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_Room_type]
GO
ALTER TABLE [dbo].[Renting]  WITH CHECK ADD  CONSTRAINT [FK_Renting_Booking_card] FOREIGN KEY([bookingcard_id])
REFERENCES [dbo].[Booking_card] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Renting] CHECK CONSTRAINT [FK_Renting_Booking_card]
GO
ALTER TABLE [dbo].[Renting]  WITH CHECK ADD  CONSTRAINT [FK_Renting_Room] FOREIGN KEY([room_code])
REFERENCES [dbo].[Room] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Renting] CHECK CONSTRAINT [FK_Renting_Room]
GO
ALTER TABLE [dbo].[Renting]  WITH CHECK ADD  CONSTRAINT [FK_Renting_Staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
GO
ALTER TABLE [dbo].[Renting] CHECK CONSTRAINT [FK_Renting_Staff]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Hotel] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[Hotel] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Hotel]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Room_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Room_type] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Room_type]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Users] FOREIGN KEY([username])
REFERENCES [dbo].[Users] ([username])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
