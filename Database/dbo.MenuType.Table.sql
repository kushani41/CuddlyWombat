USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[MenuTypeID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_MenuItemType] PRIMARY KEY CLUSTERED 
(
	[MenuTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MenuType] ([MenuTypeID], [Name]) VALUES (1, N'Breakfast')
INSERT [dbo].[MenuType] ([MenuTypeID], [Name]) VALUES (2, N'Lunch')
INSERT [dbo].[MenuType] ([MenuTypeID], [Name]) VALUES (3, N'Dinner')
INSERT [dbo].[MenuType] ([MenuTypeID], [Name]) VALUES (4, N'Desserts')
INSERT [dbo].[MenuType] ([MenuTypeID], [Name]) VALUES (5, N'Drinks')
