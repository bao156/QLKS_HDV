USE [QLKS_HDV]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[renting_id] [int] NOT NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[renting_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/25/2021 2:28:18 PM ******/
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
 CONSTRAINT [PK_Booking_1] PRIMARY KEY CLUSTERED 
(
	[bookingcard_id] ASC,
	[type_id] ASC,
	[recieveAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Booking_card]    Script Date: 3/25/2021 2:28:18 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 3/25/2021 2:28:18 PM ******/
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
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](50) NULL,
	[hotel_id] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[discount_name] [nvarchar](50) NULL,
	[discount_value] [float] NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [nvarchar](50) NULL,
	[desbcription] [nvarchar](200) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Price]    Script Date: 3/25/2021 2:28:18 PM ******/
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
/****** Object:  Table [dbo].[Renting]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Renting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [int] NULL,
	[rentAt] [date] NULL,
	[backAt] [date] NULL,
	[bookingcard_id] [int] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Renting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NULL,
	[type_id] [int] NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room_renting]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_renting](
	[renting_id] [int] NOT NULL,
	[room_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Room_renting] PRIMARY KEY CLUSTERED 
(
	[renting_id] ASC,
	[room_id] ASC,
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room_type]    Script Date: 3/25/2021 2:28:18 PM ******/
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
/****** Object:  Table [dbo].[Staff]    Script Date: 3/25/2021 2:28:18 PM ******/
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
	[department_id] [int] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/25/2021 2:28:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Renting] FOREIGN KEY([renting_id])
REFERENCES [dbo].[Renting] ([id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Renting]
GO
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
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Booking_card] CHECK CONSTRAINT [FK_Booking_card_Discount]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Hotel] FOREIGN KEY([hotel_id])
REFERENCES [dbo].[Hotel] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Hotel]
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
ALTER TABLE [dbo].[Renting]  WITH CHECK ADD  CONSTRAINT [FK_Renting_Staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Renting] CHECK CONSTRAINT [FK_Renting_Staff]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Room_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[Room_type] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Room_type]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Status]
GO
ALTER TABLE [dbo].[Room_renting]  WITH CHECK ADD  CONSTRAINT [FK_Room_renting_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Room_renting] CHECK CONSTRAINT [FK_Room_renting_Customer]
GO
ALTER TABLE [dbo].[Room_renting]  WITH CHECK ADD  CONSTRAINT [FK_Room_renting_Renting] FOREIGN KEY([room_id])
REFERENCES [dbo].[Renting] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Room_renting] CHECK CONSTRAINT [FK_Room_renting_Renting]
GO
ALTER TABLE [dbo].[Room_renting]  WITH CHECK ADD  CONSTRAINT [FK_Room_renting_Room] FOREIGN KEY([room_id])
REFERENCES [dbo].[Room] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Room_renting] CHECK CONSTRAINT [FK_Room_renting_Room]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
