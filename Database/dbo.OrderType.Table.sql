USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[OrderType]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderType](
	[OrderTypeID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_OrderType] PRIMARY KEY CLUSTERED 
(
	[OrderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderType] ([OrderTypeID], [Name]) VALUES (1, N'Phone')
INSERT [dbo].[OrderType] ([OrderTypeID], [Name]) VALUES (2, N'Online')
INSERT [dbo].[OrderType] ([OrderTypeID], [Name]) VALUES (3, N'OnSite')
