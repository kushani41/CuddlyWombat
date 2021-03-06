USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItem](
	[MenuItemID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[Price] [decimal](6, 2) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[IsUsed] [bit] NOT NULL,
	[PreparationTimeInMinutes] [int] NOT NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[MenuItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MenuItem] ON 

INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (1, N'Big breakfast', N'Scrambled eggs with sausage bacon tomato mushroom hash browns', CAST(15.90 AS Decimal(6, 2)), CAST(N'2018-05-06T16:19:44.327' AS DateTime), 1, 20)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (2, N'Spring Roll - 4 per serve', N'Chicken and vegetable served with dipping sauce', CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-06T16:19:44.327' AS DateTime), 1, 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (3, N'Chicken and prawn rice paper rolls - 4 per serve', N'Prawn, chicken, lettuce, thin noodles, cucumber and mint leaves rolled in rice paper served with dipping sauce', CAST(12.90 AS Decimal(6, 2)), CAST(N'2018-05-06T16:19:44.327' AS DateTime), 1, 20)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (4, N'Eggs on toast', N'', CAST(8.00 AS Decimal(6, 2)), CAST(N'2018-05-08T18:07:02.877' AS DateTime), 1, 10)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (5, N'BLT', N'Bacon, lettuce, tomato and BBQ sauce served with chips', CAST(9.90 AS Decimal(6, 2)), CAST(N'2018-05-08T18:35:43.677' AS DateTime), 1, 12)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (6, N'Bruschetta', N'Turkish Bread, tomato, cherry tomato, onion, basil pesto & feta cheese', CAST(9.90 AS Decimal(6, 2)), CAST(N'2018-05-08T18:41:53.903' AS DateTime), 1, 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (7, N'Eggs Benedict', N'Two poached eggs served on toast with holladaise sauce', CAST(14.00 AS Decimal(6, 2)), CAST(N'2018-05-08T18:49:04.757' AS DateTime), 1, 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (8, N'Garlic Bread', N'Turkish Bread, Basil Pesto, Garlic and Cheese', CAST(7.90 AS Decimal(6, 2)), CAST(N'2018-05-08T18:49:46.400' AS DateTime), 1, 5)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (9, N'Wedges / Chips', N'Wedges served with sour cream sweet chilli sauce. Chips with tomato sauce', CAST(7.90 AS Decimal(6, 2)), CAST(N'2018-05-09T00:30:15.730' AS DateTime), 1, 20)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (10, N'Chicken burger', N'Chicken breast, lettuce, bacon, parmesan cheese, caesar dressing, Turkish bread served with chips', CAST(14.90 AS Decimal(6, 2)), CAST(N'2018-05-09T00:30:50.890' AS DateTime), 1, 20)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (11, N'Pancakes', N'Fluffy Pancakes with syrup of your choice', CAST(8.90 AS Decimal(6, 2)), CAST(N'2018-05-13T21:41:17.830' AS DateTime), 1, 10)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (12, N'Avocado on Turkish', N'Turkish bread, tomato relish, spread avocado and grilled tomato', CAST(11.00 AS Decimal(6, 2)), CAST(N'2018-05-13T21:42:14.200' AS DateTime), 1, 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (1011, N'Orange Juice', N'100% Fresh Orange juice', CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T12:18:10.280' AS DateTime), 1, 5)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (1012, N'Apple Juice', N'100% Fresh Apple juice', CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T12:19:09.737' AS DateTime), 1, 5)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (2011, N'Pasta', N'', CAST(11.00 AS Decimal(6, 2)), CAST(N'2018-05-19T12:52:00.633' AS DateTime), 1, 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [Name], [Description], [Price], [DateCreated], [IsUsed], [PreparationTimeInMinutes]) VALUES (3011, N'Rice n Curry', N'Sri Lankan style Rice n Curry', CAST(8.50 AS Decimal(6, 2)), CAST(N'2018-05-19T13:04:08.420' AS DateTime), 1, 20)
SET IDENTITY_INSERT [dbo].[MenuItem] OFF
ALTER TABLE [dbo].[MenuItem] ADD  CONSTRAINT [DF__MenuItem__IsUsed__2645B050]  DEFAULT ((0)) FOR [IsUsed]
GO
