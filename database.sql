USE [DormitoryManagement]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[IsManager] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bed]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[BedNumber] [tinyint] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
 CONSTRAINT [PK_Bed] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dom]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1) NULL,
 CONSTRAINT [PK_Dom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Floor]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Floor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DomId] [int] NOT NULL,
	[Number] [int] NOT NULL,
 CONSTRAINT [PK_Floor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[TypeId] [int] NULL,
	[RoomId] [int] NULL,
	[Amount] [float] NOT NULL,
	[NumberOfUse] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[IsPaid] [bit] NULL,
	[Deadline] [datetime] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceType]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Bill Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[StandardPrice] [money] NULL,
	[StandardUsage] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceType]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Price Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[TypeId] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Purpose] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[IsDone] [bit] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestType]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Request Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FloorId] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[RoomGender] [bit] NULL,
	[CanUse] [bit] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomUsage]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomUsage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NULL,
	[WaterUsage] [int] NULL,
	[ElectricUsage] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Room Usage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/24/2021 1:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentCode] [nvarchar](8) NULL,
	[BedId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[Email] [nvarchar](255) NULL,
	[Avatar] [nvarchar](max) NULL,
	[HasInDorm] [bit] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Username], [Password], [IsManager], [IsActive]) VALUES (1, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [IsManager], [IsActive]) VALUES (2, N'HE141325', N'123', 0, 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [IsManager], [IsActive]) VALUES (3, N'HE141311', N'123', 0, 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [IsManager], [IsActive]) VALUES (4, N'HE141365', N'123', 0, 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [IsManager], [IsActive]) VALUES (9, N'HE141366', N'123', 0, 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [IsManager], [IsActive]) VALUES (10, N'HE141597', N'123', 0, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Bed] ON 

INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (1, 1, 1, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (2, 1, 2, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (3, 1, 3, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (4, 1, 4, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (5, 1, 5, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (6, 1, 6, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (7, 1, 7, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (8, 1, 8, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (9, 2, 1, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (10, 2, 2, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (11, 2, 3, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (12, 2, 4, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (13, 2, 5, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (14, 2, 6, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (15, 2, 7, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (16, 2, 8, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (17, 3, 1, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (18, 3, 2, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (19, 3, 3, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (20, 3, 4, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (21, 3, 5, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (22, 3, 6, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (23, 3, 7, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (24, 3, 8, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (25, 4, 1, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (26, 4, 2, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (27, 4, 3, 0)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (28, 4, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (29, 4, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (30, 4, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (31, 4, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (32, 4, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (33, 5, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (34, 5, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (35, 5, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (36, 5, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (37, 5, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (38, 5, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (39, 5, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (40, 5, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (41, 6, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (42, 6, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (43, 6, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (44, 6, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (45, 6, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (46, 6, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (47, 6, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (48, 6, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (49, 7, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (50, 7, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (51, 7, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (52, 7, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (53, 7, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (54, 7, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (55, 7, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (56, 7, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (57, 8, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (58, 8, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (59, 8, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (60, 8, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (61, 8, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (62, 8, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (63, 8, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (64, 8, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (65, 9, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (66, 9, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (67, 9, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (68, 9, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (69, 9, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (70, 9, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (71, 9, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (72, 9, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (73, 10, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (74, 10, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (75, 10, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (76, 10, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (77, 10, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (78, 10, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (79, 10, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (80, 10, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (81, 11, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (82, 11, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (83, 11, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (84, 11, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (85, 11, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (86, 11, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (87, 11, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (88, 11, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (89, 12, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (90, 12, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (91, 12, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (92, 12, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (93, 12, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (94, 12, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (95, 12, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (96, 12, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (97, 13, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (98, 13, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (99, 13, 3, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (100, 13, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (101, 13, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (102, 13, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (103, 13, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (104, 13, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (105, 14, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (106, 14, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (107, 14, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (108, 14, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (109, 14, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (110, 14, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (111, 14, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (112, 14, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (113, 15, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (114, 15, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (115, 15, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (116, 15, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (117, 15, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (118, 15, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (119, 15, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (120, 15, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (121, 16, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (122, 16, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (123, 16, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (124, 16, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (125, 16, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (126, 16, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (127, 16, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (128, 16, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (129, 17, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (130, 17, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (131, 17, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (132, 17, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (133, 17, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (134, 17, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (135, 17, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (136, 17, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (137, 18, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (138, 18, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (139, 18, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (140, 18, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (141, 18, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (142, 18, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (143, 18, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (144, 18, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (145, 19, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (146, 19, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (147, 19, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (148, 19, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (149, 19, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (150, 19, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (151, 19, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (152, 19, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (153, 20, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (154, 20, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (155, 20, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (156, 20, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (157, 20, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (158, 20, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (159, 20, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (160, 20, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (161, 21, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (162, 21, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (163, 21, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (164, 21, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (165, 21, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (166, 21, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (167, 21, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (168, 21, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (169, 22, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (170, 22, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (171, 22, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (172, 22, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (173, 22, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (174, 22, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (175, 22, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (176, 22, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (177, 23, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (178, 23, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (179, 23, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (180, 23, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (181, 23, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (182, 23, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (183, 23, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (184, 23, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (185, 24, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (186, 24, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (187, 24, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (188, 24, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (189, 24, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (190, 24, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (191, 24, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (192, 24, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (193, 25, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (194, 25, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (195, 25, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (196, 25, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (197, 25, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (198, 25, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (199, 25, 7, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (200, 25, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (201, 26, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (202, 26, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (203, 26, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (204, 26, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (205, 26, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (206, 26, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (207, 26, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (208, 26, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (209, 27, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (210, 27, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (211, 27, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (212, 27, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (213, 27, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (214, 27, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (215, 27, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (216, 27, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (217, 28, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (218, 28, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (219, 28, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (220, 28, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (221, 28, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (222, 28, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (223, 28, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (224, 28, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (225, 29, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (226, 29, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (227, 29, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (228, 29, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (229, 29, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (230, 29, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (231, 29, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (232, 29, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (233, 30, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (234, 30, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (235, 30, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (236, 30, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (237, 30, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (238, 30, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (239, 30, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (240, 30, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (241, 31, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (242, 31, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (243, 31, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (244, 31, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (245, 31, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (246, 31, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (247, 31, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (248, 31, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (249, 32, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (250, 32, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (251, 32, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (252, 32, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (253, 32, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (254, 32, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (255, 32, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (256, 32, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (257, 33, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (258, 33, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (259, 33, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (260, 33, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (261, 33, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (262, 33, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (263, 33, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (264, 33, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (265, 34, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (266, 34, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (267, 34, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (268, 34, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (269, 34, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (270, 34, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (271, 34, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (272, 34, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (273, 35, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (274, 35, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (275, 35, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (276, 35, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (277, 35, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (278, 35, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (279, 35, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (280, 35, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (281, 36, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (282, 36, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (283, 36, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (284, 36, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (285, 36, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (286, 36, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (287, 36, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (288, 36, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (289, 37, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (290, 37, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (291, 37, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (292, 37, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (293, 37, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (294, 37, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (295, 37, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (296, 37, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (297, 38, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (298, 38, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (299, 38, 3, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (300, 38, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (301, 38, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (302, 38, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (303, 38, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (304, 38, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (305, 39, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (306, 39, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (307, 39, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (308, 39, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (309, 39, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (310, 39, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (311, 39, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (312, 39, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (313, 40, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (314, 40, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (315, 40, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (316, 40, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (317, 40, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (318, 40, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (319, 40, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (320, 40, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (321, 41, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (322, 41, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (323, 41, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (324, 41, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (325, 41, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (326, 41, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (327, 41, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (328, 41, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (329, 42, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (330, 42, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (331, 42, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (332, 42, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (333, 42, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (334, 42, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (335, 42, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (336, 42, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (337, 43, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (338, 43, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (339, 43, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (340, 43, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (341, 43, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (342, 43, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (343, 43, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (344, 43, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (345, 44, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (346, 44, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (347, 44, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (348, 44, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (349, 44, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (350, 44, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (351, 44, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (352, 44, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (353, 45, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (354, 45, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (355, 45, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (356, 45, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (357, 45, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (358, 45, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (359, 45, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (360, 45, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (361, 46, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (362, 46, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (363, 46, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (364, 46, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (365, 46, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (366, 46, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (367, 46, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (368, 46, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (369, 47, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (370, 47, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (371, 47, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (372, 47, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (373, 47, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (374, 47, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (375, 47, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (376, 47, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (377, 48, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (378, 48, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (379, 48, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (380, 48, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (381, 48, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (382, 48, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (383, 48, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (384, 48, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (385, 49, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (386, 49, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (387, 49, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (388, 49, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (389, 49, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (390, 49, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (391, 49, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (392, 49, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (393, 50, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (394, 50, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (395, 50, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (396, 50, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (397, 50, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (398, 50, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (399, 50, 7, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (400, 50, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (401, 51, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (402, 51, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (403, 51, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (404, 51, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (405, 51, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (406, 51, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (407, 51, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (408, 51, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (409, 52, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (410, 52, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (411, 52, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (412, 52, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (413, 52, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (414, 52, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (415, 52, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (416, 52, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (417, 53, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (418, 53, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (419, 53, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (420, 53, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (421, 53, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (422, 53, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (423, 53, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (424, 53, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (425, 54, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (426, 54, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (427, 54, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (428, 54, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (429, 54, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (430, 54, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (431, 54, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (432, 54, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (433, 55, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (434, 55, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (435, 55, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (436, 55, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (437, 55, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (438, 55, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (439, 55, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (440, 55, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (441, 56, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (442, 56, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (443, 56, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (444, 56, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (445, 56, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (446, 56, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (447, 56, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (448, 56, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (449, 57, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (450, 57, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (451, 57, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (452, 57, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (453, 57, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (454, 57, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (455, 57, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (456, 57, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (457, 58, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (458, 58, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (459, 58, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (460, 58, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (461, 58, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (462, 58, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (463, 58, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (464, 58, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (465, 59, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (466, 59, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (467, 59, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (468, 59, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (469, 59, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (470, 59, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (471, 59, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (472, 59, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (473, 60, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (474, 60, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (475, 60, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (476, 60, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (477, 60, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (478, 60, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (479, 60, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (480, 60, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (481, 61, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (482, 61, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (483, 61, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (484, 61, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (485, 61, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (486, 61, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (487, 61, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (488, 61, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (489, 62, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (490, 62, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (491, 62, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (492, 62, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (493, 62, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (494, 62, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (495, 62, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (496, 62, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (497, 63, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (498, 63, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (499, 63, 3, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (500, 63, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (501, 63, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (502, 63, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (503, 63, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (504, 63, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (505, 64, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (506, 64, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (507, 64, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (508, 64, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (509, 64, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (510, 64, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (511, 64, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (512, 64, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (513, 65, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (514, 65, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (515, 65, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (516, 65, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (517, 65, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (518, 65, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (519, 65, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (520, 65, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (521, 66, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (522, 66, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (523, 66, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (524, 66, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (525, 66, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (526, 66, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (527, 66, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (528, 66, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (529, 67, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (530, 67, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (531, 67, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (532, 67, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (533, 67, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (534, 67, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (535, 67, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (536, 67, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (537, 68, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (538, 68, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (539, 68, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (540, 68, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (541, 68, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (542, 68, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (543, 68, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (544, 68, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (545, 69, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (546, 69, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (547, 69, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (548, 69, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (549, 69, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (550, 69, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (551, 69, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (552, 69, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (553, 70, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (554, 70, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (555, 70, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (556, 70, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (557, 70, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (558, 70, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (559, 70, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (560, 70, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (561, 71, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (562, 71, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (563, 71, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (564, 71, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (565, 71, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (566, 71, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (567, 71, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (568, 71, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (569, 72, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (570, 72, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (571, 72, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (572, 72, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (573, 72, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (574, 72, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (575, 72, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (576, 72, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (577, 73, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (578, 73, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (579, 73, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (580, 73, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (581, 73, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (582, 73, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (583, 73, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (584, 73, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (585, 74, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (586, 74, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (587, 74, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (588, 74, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (589, 74, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (590, 74, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (591, 74, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (592, 74, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (593, 75, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (594, 75, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (595, 75, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (596, 75, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (597, 75, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (598, 75, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (599, 75, 7, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (600, 75, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (601, 76, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (602, 76, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (603, 76, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (604, 76, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (605, 76, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (606, 76, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (607, 76, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (608, 76, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (609, 77, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (610, 77, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (611, 77, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (612, 77, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (613, 77, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (614, 77, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (615, 77, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (616, 77, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (617, 78, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (618, 78, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (619, 78, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (620, 78, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (621, 78, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (622, 78, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (623, 78, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (624, 78, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (625, 79, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (626, 79, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (627, 79, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (628, 79, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (629, 79, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (630, 79, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (631, 79, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (632, 79, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (633, 80, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (634, 80, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (635, 80, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (636, 80, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (637, 80, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (638, 80, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (639, 80, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (640, 80, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (641, 81, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (642, 81, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (643, 81, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (644, 81, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (645, 81, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (646, 81, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (647, 81, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (648, 81, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (649, 82, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (650, 82, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (651, 82, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (652, 82, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (653, 82, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (654, 82, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (655, 82, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (656, 82, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (657, 83, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (658, 83, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (659, 83, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (660, 83, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (661, 83, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (662, 83, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (663, 83, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (664, 83, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (665, 84, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (666, 84, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (667, 84, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (668, 84, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (669, 84, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (670, 84, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (671, 84, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (672, 84, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (673, 85, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (674, 85, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (675, 85, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (676, 85, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (677, 85, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (678, 85, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (679, 85, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (680, 85, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (681, 86, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (682, 86, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (683, 86, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (684, 86, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (685, 86, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (686, 86, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (687, 86, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (688, 86, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (689, 87, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (690, 87, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (691, 87, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (692, 87, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (693, 87, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (694, 87, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (695, 87, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (696, 87, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (697, 88, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (698, 88, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (699, 88, 3, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (700, 88, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (701, 88, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (702, 88, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (703, 88, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (704, 88, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (705, 89, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (706, 89, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (707, 89, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (708, 89, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (709, 89, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (710, 89, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (711, 89, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (712, 89, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (713, 90, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (714, 90, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (715, 90, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (716, 90, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (717, 90, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (718, 90, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (719, 90, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (720, 90, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (721, 91, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (722, 91, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (723, 91, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (724, 91, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (725, 91, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (726, 91, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (727, 91, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (728, 91, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (729, 92, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (730, 92, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (731, 92, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (732, 92, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (733, 92, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (734, 92, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (735, 92, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (736, 92, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (737, 93, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (738, 93, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (739, 93, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (740, 93, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (741, 93, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (742, 93, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (743, 93, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (744, 93, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (745, 94, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (746, 94, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (747, 94, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (748, 94, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (749, 94, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (750, 94, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (751, 94, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (752, 94, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (753, 95, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (754, 95, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (755, 95, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (756, 95, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (757, 95, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (758, 95, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (759, 95, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (760, 95, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (761, 96, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (762, 96, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (763, 96, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (764, 96, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (765, 96, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (766, 96, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (767, 96, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (768, 96, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (769, 97, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (770, 97, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (771, 97, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (772, 97, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (773, 97, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (774, 97, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (775, 97, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (776, 97, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (777, 98, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (778, 98, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (779, 98, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (780, 98, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (781, 98, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (782, 98, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (783, 98, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (784, 98, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (785, 99, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (786, 99, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (787, 99, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (788, 99, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (789, 99, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (790, 99, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (791, 99, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (792, 99, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (793, 100, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (794, 100, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (795, 100, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (796, 100, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (797, 100, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (798, 100, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (799, 100, 7, 1)
GO
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (800, 100, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (801, 101, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (802, 101, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (803, 101, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (804, 101, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (805, 101, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (806, 101, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (807, 101, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (808, 101, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (809, 102, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (810, 102, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (811, 102, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (812, 102, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (813, 102, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (814, 102, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (815, 102, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (816, 102, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (817, 103, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (818, 103, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (819, 103, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (820, 103, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (821, 103, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (822, 103, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (823, 103, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (824, 103, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (825, 104, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (826, 104, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (827, 104, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (828, 104, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (829, 104, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (830, 104, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (831, 104, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (832, 104, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (833, 105, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (834, 105, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (835, 105, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (836, 105, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (837, 105, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (838, 105, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (839, 105, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (840, 105, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (841, 106, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (842, 106, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (843, 106, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (844, 106, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (845, 106, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (846, 106, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (847, 106, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (848, 106, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (849, 107, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (850, 107, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (851, 107, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (852, 107, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (853, 107, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (854, 107, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (855, 107, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (856, 107, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (857, 108, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (858, 108, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (859, 108, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (860, 108, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (861, 108, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (862, 108, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (863, 108, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (864, 108, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (865, 109, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (866, 109, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (867, 109, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (868, 109, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (869, 109, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (870, 109, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (871, 109, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (872, 109, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (873, 110, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (874, 110, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (875, 110, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (876, 110, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (877, 110, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (878, 110, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (879, 110, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (880, 110, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (881, 111, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (882, 111, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (883, 111, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (884, 111, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (885, 111, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (886, 111, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (887, 111, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (888, 111, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (889, 112, 1, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (890, 112, 2, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (891, 112, 3, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (892, 112, 4, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (893, 112, 5, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (894, 112, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (895, 112, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (896, 112, 8, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (910, 26, 6, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (911, 26, 7, 1)
INSERT [dbo].[Bed] ([Id], [RoomId], [BedNumber], [IsAvailable]) VALUES (912, 26, 8, 1)
GO
SET IDENTITY_INSERT [dbo].[Bed] OFF
GO
SET IDENTITY_INSERT [dbo].[Dom] ON 

INSERT [dbo].[Dom] ([Id], [Name]) VALUES (1, N'A')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (2, N'B')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (3, N'C')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (4, N'D')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (5, N'E')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (6, N'F')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (7, N'G')
INSERT [dbo].[Dom] ([Id], [Name]) VALUES (8, N'H')
SET IDENTITY_INSERT [dbo].[Dom] OFF
GO
SET IDENTITY_INSERT [dbo].[Floor] ON 

INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (1, 1, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (2, 1, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (3, 1, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (4, 1, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (5, 2, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (6, 2, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (7, 2, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (8, 2, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (9, 3, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (10, 3, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (11, 3, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (12, 3, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (13, 4, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (14, 4, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (15, 4, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (16, 4, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (17, 5, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (18, 5, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (19, 5, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (20, 5, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (21, 6, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (22, 6, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (23, 6, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (24, 6, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (25, 7, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (26, 7, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (27, 7, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (28, 7, 4)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (29, 8, 1)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (30, 8, 2)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (31, 8, 3)
INSERT [dbo].[Floor] ([Id], [DomId], [Number]) VALUES (32, 8, 4)
SET IDENTITY_INSERT [dbo].[Floor] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (13, 1, 3, NULL, 90000, 30, N'nho dung deadline', 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (15, 1, 1, NULL, 90000, 30, N'đúng hẹn nha em', 1, CAST(N'2021-07-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (16, 1, 4, 1, 90000, 30, N'', 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), CAST(N'2021-07-23T21:00:47.217' AS DateTime))
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (19, 2, 2, NULL, 90000, 30, N'Thanh toan tien nuoc thang 6', 0, CAST(N'2021-08-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (20, 1, 1, 1, 90000, 30, N'đúng hẹn nhé em', 1, CAST(N'2021-08-07T00:00:00.000' AS DateTime), CAST(N'2021-07-23T22:20:03.717' AS DateTime))
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (25, 2, 2, 1, 150000, 50, N'', 1, CAST(N'2021-07-31T00:00:00.000' AS DateTime), CAST(N'2021-07-23T21:57:25.347' AS DateTime))
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (26, 2, 1, 1, 300000, 100, N'Tiền điện tháng 7', 1, CAST(N'2021-08-19T00:00:00.000' AS DateTime), CAST(N'2021-07-23T21:20:31.297' AS DateTime))
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (27, 29, 3, 4, 800000, NULL, N'nhanh giup em', 1, NULL, CAST(N'2021-07-23T22:15:59.563' AS DateTime))
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (28, 29, 1, 4, 300000, 100, N'', 1, CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-07-24T02:37:46.540' AS DateTime))
INSERT [dbo].[Invoice] ([Id], [StudentId], [TypeId], [RoomId], [Amount], [NumberOfUse], [Note], [IsPaid], [Deadline], [DateCreated]) VALUES (29, 29, 4, NULL, 120000, 40, N'', 0, CAST(N'2021-08-07T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceType] ON 

INSERT [dbo].[InvoiceType] ([Id], [Name]) VALUES (1, N'Electricity')
INSERT [dbo].[InvoiceType] ([Id], [Name]) VALUES (2, N'Water')
INSERT [dbo].[InvoiceType] ([Id], [Name]) VALUES (3, N'Room')
INSERT [dbo].[InvoiceType] ([Id], [Name]) VALUES (4, N'Trash')
SET IDENTITY_INSERT [dbo].[InvoiceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Price] ON 

INSERT [dbo].[Price] ([Id], [TypeId], [StandardPrice], [StandardUsage], [Date]) VALUES (1, 1, 3000.0000, 100, CAST(N'2021-07-20T20:56:11.990' AS DateTime))
INSERT [dbo].[Price] ([Id], [TypeId], [StandardPrice], [StandardUsage], [Date]) VALUES (2, 2, 3000.0000, 100, CAST(N'2021-07-20T20:56:11.993' AS DateTime))
INSERT [dbo].[Price] ([Id], [TypeId], [StandardPrice], [StandardUsage], [Date]) VALUES (3, 3, 800000.0000, 100, CAST(N'2021-07-20T20:56:11.993' AS DateTime))
INSERT [dbo].[Price] ([Id], [TypeId], [StandardPrice], [StandardUsage], [Date]) VALUES (4, 4, 50000.0000, 100, CAST(N'2021-07-20T20:56:11.993' AS DateTime))
SET IDENTITY_INSERT [dbo].[Price] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceType] ON 

INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (1, N'Electricity')
INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (2, N'Water')
INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (3, N'Room')
INSERT [dbo].[PriceType] ([Id], [Name]) VALUES (4, N'Trash')
SET IDENTITY_INSERT [dbo].[PriceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([Id], [StudentId], [TypeId], [Title], [Purpose], [Reply], [IsDone], [DateCreated]) VALUES (2, 1, 1, N'Sua quat', N'Muon mat hon', N'okee e', 1, CAST(N'2021-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Request] ([Id], [StudentId], [TypeId], [Title], [Purpose], [Reply], [IsDone], [DateCreated]) VALUES (3, 1, 2, N'Mua dieu hoa', N'Muon mat hon', N'chờ quyết định của nhà trường trong tuần tới em nhé', 1, CAST(N'2021-07-23T04:59:00.393' AS DateTime))
INSERT [dbo].[Request] ([Id], [StudentId], [TypeId], [Title], [Purpose], [Reply], [IsDone], [DateCreated]) VALUES (4, 1, 2, N'MN', N'mm', N'no', 1, CAST(N'2021-07-23T05:24:11.483' AS DateTime))
INSERT [dbo].[Request] ([Id], [StudentId], [TypeId], [Title], [Purpose], [Reply], [IsDone], [DateCreated]) VALUES (5, 1, 2, N'Em muốn mua 3 cái ghế ', N'Em mua 3 cái ghế, phòng A101 ', N'đồng ý em', 1, CAST(N'2021-07-23T10:25:42.067' AS DateTime))
INSERT [dbo].[Request] ([Id], [StudentId], [TypeId], [Title], [Purpose], [Reply], [IsDone], [DateCreated]) VALUES (7, 2, 4, N'Thanh toán tiền phòng kỳ Sum21', N'Em muốn book phòng mới', NULL, 0, CAST(N'2021-07-23T21:23:58.030' AS DateTime))
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[RequestType] ON 

INSERT [dbo].[RequestType] ([Id], [Name]) VALUES (1, N'Checkout')
INSERT [dbo].[RequestType] ([Id], [Name]) VALUES (2, N'Đăng kí các vấn đề ký túc xá')
INSERT [dbo].[RequestType] ([Id], [Name]) VALUES (3, N'Đăng kí tạm trú')
INSERT [dbo].[RequestType] ([Id], [Name]) VALUES (4, N'Thanh toán')
INSERT [dbo].[RequestType] ([Id], [Name]) VALUES (5, N'Hỗ trợ')
INSERT [dbo].[RequestType] ([Id], [Name]) VALUES (6, N'Yêu cầu khác')
SET IDENTITY_INSERT [dbo].[RequestType] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (1, 1, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (2, 1, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (3, 1, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (4, 1, 4, 1, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (5, 1, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (6, 1, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (7, 1, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (8, 1, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (9, 1, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (10, 1, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (11, 1, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (12, 1, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (13, 1, 13, NULL, 0)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (14, 1, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (15, 2, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (16, 2, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (17, 2, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (18, 2, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (19, 2, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (20, 2, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (21, 2, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (22, 2, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (23, 2, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (24, 2, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (25, 2, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (26, 2, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (27, 2, 13, NULL, 0)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (28, 2, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (29, 3, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (30, 3, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (31, 3, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (32, 3, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (33, 3, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (34, 3, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (35, 3, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (36, 3, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (37, 3, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (38, 3, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (39, 3, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (40, 3, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (41, 3, 13, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (42, 3, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (43, 4, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (44, 4, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (45, 4, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (46, 4, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (47, 4, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (48, 4, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (49, 4, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (50, 4, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (51, 4, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (52, 4, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (53, 4, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (54, 4, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (55, 4, 13, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (56, 4, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (57, 5, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (58, 5, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (59, 5, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (60, 5, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (61, 5, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (62, 5, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (63, 5, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (64, 5, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (65, 5, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (66, 5, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (67, 5, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (68, 5, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (69, 5, 13, NULL, 0)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (70, 5, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (71, 6, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (72, 6, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (73, 6, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (74, 6, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (75, 6, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (76, 6, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (77, 6, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (78, 6, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (79, 6, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (80, 6, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (81, 6, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (82, 6, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (83, 6, 13, NULL, 0)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (84, 6, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (85, 7, 1, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (86, 7, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (87, 7, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (88, 7, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (89, 7, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (90, 7, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (91, 7, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (92, 7, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (93, 7, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (94, 7, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (95, 7, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (96, 7, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (97, 7, 13, NULL, 0)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (98, 7, 14, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (99, 8, 1, NULL, 1)
GO
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (100, 8, 2, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (101, 8, 3, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (102, 8, 4, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (103, 8, 5, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (104, 8, 6, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (105, 8, 7, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (106, 8, 8, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (107, 8, 9, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (108, 8, 10, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (109, 8, 11, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (110, 8, 12, NULL, 1)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (111, 8, 13, NULL, 0)
INSERT [dbo].[Room] ([Id], [FloorId], [RoomNumber], [RoomGender], [CanUse]) VALUES (112, 8, 14, NULL, 1)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomUsage] ON 

INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (1, 1, 1500, 2000, CAST(N'2021-07-20T20:56:12.543' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (2, 2, 1000, 2500, CAST(N'2021-07-20T20:56:12.543' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (3, 3, 2000, 3000, CAST(N'2021-07-20T20:56:12.543' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (4, 4, 1000, 1500, CAST(N'2021-07-20T20:56:12.547' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (5, 5, 0, 0, CAST(N'2021-07-23T12:49:35.343' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (6, 6, 0, 0, CAST(N'2021-07-23T12:49:36.910' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (7, 7, 0, 0, CAST(N'2021-07-23T12:49:38.177' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (8, 8, 0, 0, CAST(N'2021-07-23T12:49:39.660' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (9, 9, 0, 0, CAST(N'2021-07-23T12:49:41.110' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (10, 10, 0, 0, CAST(N'2021-07-23T12:49:57.310' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (11, 11, 0, 0, CAST(N'2021-07-23T12:49:58.600' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (12, 12, 0, 0, CAST(N'2021-07-23T12:49:59.937' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (13, 13, 0, 0, CAST(N'2021-07-23T12:50:01.230' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (14, 14, 0, 0, CAST(N'2021-07-23T12:50:02.600' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (15, 15, 0, 0, CAST(N'2021-07-23T12:50:05.540' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (16, 16, 0, 0, CAST(N'2021-07-23T12:50:06.947' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (17, 17, 0, 0, CAST(N'2021-07-23T12:50:08.140' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (18, 18, 0, 0, CAST(N'2021-07-23T12:50:09.470' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (19, 19, 0, 0, CAST(N'2021-07-23T12:50:10.623' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (20, 20, 0, 0, CAST(N'2021-07-23T12:50:11.630' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (21, 21, 0, 0, CAST(N'2021-07-23T12:50:12.760' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (22, 22, 0, 0, CAST(N'2021-07-23T12:50:13.740' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (23, 23, 0, 0, CAST(N'2021-07-23T12:50:15.187' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (24, 24, 0, 0, CAST(N'2021-07-23T12:50:26.457' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (25, 25, 0, 0, CAST(N'2021-07-23T12:50:27.790' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (26, 26, 0, 0, CAST(N'2021-07-23T12:50:28.823' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (27, 27, 0, 0, CAST(N'2021-07-23T12:50:31.277' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (28, 28, 0, 0, CAST(N'2021-07-23T12:50:33.010' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (29, 29, 0, 0, CAST(N'2021-07-23T12:50:34.357' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (30, 30, 0, 0, CAST(N'2021-07-23T12:50:35.853' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (31, 31, 0, 0, CAST(N'2021-07-23T12:50:37.113' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (32, 32, 0, 0, CAST(N'2021-07-23T12:50:38.343' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (33, 33, 0, 0, CAST(N'2021-07-23T12:50:40.107' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (34, 34, 0, 0, CAST(N'2021-07-23T12:50:41.593' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (35, 35, 0, 0, CAST(N'2021-07-23T12:50:43.127' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (36, 36, 0, 0, CAST(N'2021-07-23T12:50:44.407' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (37, 37, 0, 0, CAST(N'2021-07-23T12:50:45.687' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (38, 38, 0, 0, CAST(N'2021-07-23T12:50:48.147' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (39, 39, 0, 0, CAST(N'2021-07-23T12:50:49.613' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (40, 40, 0, 0, CAST(N'2021-07-23T12:50:51.863' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (41, 41, 0, 0, CAST(N'2021-07-23T12:50:53.640' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (42, 42, 0, 0, CAST(N'2021-07-23T12:51:18.470' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (43, 43, 0, 0, CAST(N'2021-07-23T12:52:59.880' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (44, 44, 0, 0, CAST(N'2021-07-23T12:53:02.423' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (45, 45, 0, 0, CAST(N'2021-07-23T12:53:04.063' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (46, 46, 0, 0, CAST(N'2021-07-23T12:53:06.820' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (47, 47, 0, 0, CAST(N'2021-07-23T12:53:08.413' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (48, 48, 0, 0, CAST(N'2021-07-23T12:53:10.090' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (49, 49, 0, 0, CAST(N'2021-07-23T12:53:11.960' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (50, 50, 0, 0, CAST(N'2021-07-23T12:53:13.967' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (51, 51, 0, 0, CAST(N'2021-07-23T12:53:15.607' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (52, 52, 0, 0, CAST(N'2021-07-23T12:53:17.477' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (53, 53, 0, 0, CAST(N'2021-07-23T12:53:19.373' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (54, 54, 0, 0, CAST(N'2021-07-23T12:53:21.373' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (55, 55, 0, 0, CAST(N'2021-07-23T12:53:23.437' AS DateTime))
INSERT [dbo].[RoomUsage] ([Id], [RoomId], [WaterUsage], [ElectricUsage], [Date]) VALUES (56, 56, 0, 0, CAST(N'2021-07-23T13:13:06.870' AS DateTime))
SET IDENTITY_INSERT [dbo].[RoomUsage] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (1, N'HE141365', 1, N'Nguyen Van A', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (2, N'HE141366', 2, N'Nguyen Van B', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (3, N'HE141367', 3, N'Nguyen Van C', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (4, N'HE141368', 4, N'Nguyen Van D', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (5, N'HE141369', 5, N'Nguyen Van E', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (6, N'HE141370', 6, N'Nguyen Van F', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (7, N'HE141371', 7, N'Nguyen Van G', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (8, N'HE141372', 8, N'Nguyen Van H', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (9, N'HE141373', 9, N'Nguyen Van I', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (10, N'HE141374', 10, N'Nguyen Van J', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (11, N'HE141375', 11, N'Nguyen Van K', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (12, N'HE141376', 12, N'Nguyen Van L', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (13, N'HE141377', 13, N'Nguyen Van M', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (14, N'HE141378', 14, N'Nguyen Van N', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (15, N'HE141379', 15, N'Nguyen Van O', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (16, N'HE141380', 16, N'Nguyen Van P', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (17, N'HE141381', 17, N'Nguyen Van Q', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (18, N'HE141382', 18, N'Nguyen Van R', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (19, N'HE141383', 19, N'Nguyen Van S', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (20, N'HE141384', 20, N'Nguyen Van T', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (21, N'HE141385', 21, N'Nguyen Van U', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (22, N'HE141386', 22, N'Nguyen Van V', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (23, N'HE141387', 23, N'Nguyen Van W', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (24, N'HE141388', 24, N'Nguyen Van X', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (25, N'HE141389', 25, N'Nguyen Van Y', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (26, N'HE141390', 26, N'Nguyen Van Z', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (29, N'HE141311', 27, N'Mai Dinh C', 1, NULL, NULL, 1)
INSERT [dbo].[Student] ([Id], [StudentCode], [BedId], [Name], [Gender], [Email], [Avatar], [HasInDorm]) VALUES (30, N'HE141597', NULL, N'Le Duc Anh', 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Price] ADD  CONSTRAINT [DF_Price_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Request] ADD  CONSTRAINT [DF_Request_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[RoomUsage] ADD  CONSTRAINT [DF_RoomUsage_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[Bed]  WITH CHECK ADD  CONSTRAINT [FK_Bed_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Bed] CHECK CONSTRAINT [FK_Bed_Room]
GO
ALTER TABLE [dbo].[Floor]  WITH CHECK ADD  CONSTRAINT [FK_Floor_Dom] FOREIGN KEY([DomId])
REFERENCES [dbo].[Dom] ([Id])
GO
ALTER TABLE [dbo].[Floor] CHECK CONSTRAINT [FK_Floor_Dom]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Invoice Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[InvoiceType] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Invoice Type]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Room]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Student]
GO
ALTER TABLE [dbo].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_PriceType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[PriceType] ([Id])
GO
ALTER TABLE [dbo].[Price] CHECK CONSTRAINT [FK_Price_PriceType]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Request Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[RequestType] ([Id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Request Type]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Student]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Floor] FOREIGN KEY([FloorId])
REFERENCES [dbo].[Floor] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Floor]
GO
ALTER TABLE [dbo].[RoomUsage]  WITH CHECK ADD  CONSTRAINT [FK_Room Usage_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[RoomUsage] CHECK CONSTRAINT [FK_Room Usage_Room]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Bed] FOREIGN KEY([BedId])
REFERENCES [dbo].[Bed] ([Id])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Bed]
GO
