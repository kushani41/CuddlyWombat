USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[GivenName] [varchar](100) NOT NULL,
	[Surname] [varchar](100) NOT NULL,
	[Username] [varchar](100) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [Email], [Password], [GivenName], [Surname], [Username], [DateCreated]) VALUES (1, N'kushani41@test.com', N'Pek06SyLOc7al7qfizp8NvokJ4/oE65XiI98LdxExFM=', N'Kushani', N'Liyanage', NULL, CAST(N'2018-05-04T23:37:00.383' AS DateTime))
INSERT [dbo].[Customer] ([CustomerID], [Email], [Password], [GivenName], [Surname], [Username], [DateCreated]) VALUES (2, N'testCustomer1@gmail.com', N'vF0/WqS4PzGrwromI3BzwxcsrqzPeJBaVGNrAPyKTTo=', N'testCustomer1', N'testCustomer1', NULL, CAST(N'2018-05-11T00:39:07.013' AS DateTime))
INSERT [dbo].[Customer] ([CustomerID], [Email], [Password], [GivenName], [Surname], [Username], [DateCreated]) VALUES (3, N'testCustomer2@gmail.com', N'vF0/WqS4PzGrwromI3BzwxcmnvyBXzYVK2XynRx0/lE=', N'testCustomer2', N'testCustomer2', NULL, CAST(N'2018-05-11T00:39:39.753' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
