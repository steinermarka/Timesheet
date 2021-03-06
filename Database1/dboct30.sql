USE [TimeSheetDB]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Worker]
GO
/****** Object:  Table [dbo].[WorkDept]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[WorkDept]
GO
/****** Object:  Table [dbo].[WorkArea]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[WorkArea]
GO
/****** Object:  Table [dbo].[Week]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Week]
GO
/****** Object:  Table [dbo].[Site]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Site]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Partner]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Level]
GO
/****** Object:  Table [dbo].[InternalNumber]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[InternalNumber]
GO
/****** Object:  Table [dbo].[Facility]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Facility]
GO
/****** Object:  Table [dbo].[Description]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Description]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[CostCenter]    Script Date: 10/30/2013 3:36:52 PM ******/
DROP TABLE [dbo].[CostCenter]
GO
/****** Object:  Table [dbo].[CostCenter]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CostCenter](
	[CostCenterId] [int] IDENTITY(1,1) NOT NULL,
	[CostCenter] [varchar](50) NOT NULL,
	[LegalEntity] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CostCenterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Description]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Description](
	[DescriptionId] [int] IDENTITY(1,1) NOT NULL,
	[WorkerId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AccountNumber] [nchar](10) NULL,
	[HashCode] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateLastUsed] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Facility]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facility](
	[FacilityId] [int] IDENTITY(1,1) NOT NULL,
	[Facility] [nvarchar](30) NOT NULL,
	[AccountsPayableID] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InternalNumber]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalNumber](
	[InternalNumberId] [int] IDENTITY(1,1) NOT NULL,
	[InternalOrder] [nvarchar](50) NOT NULL,
	[LegalEntity] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InternalNumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Level]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[LevelId] [int] IDENTITY(1,1) NOT NULL,
	[Level] [nvarchar](5) NOT NULL,
	[RegularRate] [money] NOT NULL,
	[OvertimeRate] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partner]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[PartnerId] [int] IDENTITY(1,1) NOT NULL,
	[Partner] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PartnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Site]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Site](
	[SiteId] [int] IDENTITY(1,1) NOT NULL,
	[Site] [nvarchar](10) NOT NULL,
	[SiteName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Week]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[WeekId] [int] IDENTITY(1,1) NOT NULL,
	[WeekNumber] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[WorkerId] [int] NOT NULL,
	[DescriptionId] [int] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[IsOvertime] [bit] NOT NULL,
	[Monday] [money] NULL,
	[Tuesday] [money] NULL,
	[Wednesday] [money] NULL,
	[Thursday] [money] NULL,
	[Friday] [money] NULL,
	[Saturday] [money] NULL,
	[Sunday] [money] NULL,
	[Submitted] [datetime] NULL,
	[NewRequest] [bit] NOT NULL,
	[SiteId] [int] NULL,
	[WorkAreaId] [int] NULL,
	[PartnerId] [int] NULL,
	[InternalNumberId] [int] NULL,
	[CostCenterId] [int] NULL,
	[CapitalNumber] [nvarchar](50) NULL,
	[CustomerId] [int] NULL,
	[AccountType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WeekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkArea]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkArea](
	[WorkAreaId] [int] IDENTITY(1,1) NOT NULL,
	[WorkArea] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkDept]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkDept](
	[WorkDeptId] [int] IDENTITY(1,1) NOT NULL,
	[WorkDept] [nvarchar](10) NOT NULL,
	[WorkDeptDesc] [nvarchar](50) NOT NULL,
	[ProcessId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkDeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Worker]    Script Date: 10/30/2013 3:36:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[WorkerId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeNumber] [nvarchar](10) NULL,
	[LevelId] [int] NULL,
	[WorkDeptId] [int] NULL,
	[FacilityId] [int] NULL,
	[RoleId] [int] NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[IsManager] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsPartTime] [bit] NOT NULL,
	[OnDisability] [bit] NOT NULL,
	[IonName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CostCenter] ON 

INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (2, N'1000100005', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (3, N'1000100017', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (4, N'1000100024', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (5, N'1000100041', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (6, N'1000100069', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (7, N'1000100090', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (8, N'1000100222', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (9, N'1000100254', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (10, N'1000100311', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (11, N'1000100320', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (12, N'1000100447', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (13, N'1000100748', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (14, N'1000100909', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (15, N'1000100913', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (16, N'1000101036', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (17, N'1000101157', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (18, N'1000101249', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (19, N'1000101401', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (20, N'1000101405', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (21, N'1000101460', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (22, N'1000101729', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (23, N'1000101798', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (24, N'1000102007', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (25, N'1000102161', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (26, N'1000102200', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (27, N'1000102201', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (28, N'1000102250', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (29, N'1000102333', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (30, N'1000102354', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (31, N'1000102355', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (32, N'1000102471', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (33, N'1000102555', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (34, N'1000102599', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (35, N'1000102615', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (36, N'1000102616', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (37, N'1000102618', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (38, N'1000102619', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (39, N'1000102621', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (40, N'1000102622', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (41, N'1000102623', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (42, N'1000102624', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (43, N'1000102671', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (44, N'1000102749', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (45, N'1000103684', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (46, N'1000104162', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (47, N'1000104361', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (48, N'1000104485', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (49, N'1000104513', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (50, N'1000104525', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (51, N'1000104548', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (52, N'1000104556', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (53, N'1000104559', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (54, N'1000104567', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (55, N'1000104568', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (56, N'1000104585', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (57, N'1000104700', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (58, N'1000104701', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (59, N'1000104717', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (60, N'1000104726', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (61, N'1000104771', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (62, N'1000104908', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (63, N'1000104951', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (64, N'1000105154', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (65, N'1000105463', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (66, N'1000105503', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (67, N'1000105616', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (68, N'1000105970', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (69, N'1000106079', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (70, N'1000106451', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (71, N'1000106566', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (72, N'1000106973', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (73, N'1000107110', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (74, N'1000107297', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (75, N'1000107371', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (76, N'1000107381', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (77, N'1000107382', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (78, N'1000107383', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (79, N'1000107385', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (80, N'1000107386', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (81, N'1000107896', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (82, N'1000108753', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (83, N'1000108778', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (84, N'1000108807', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (85, N'1000108881', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (86, N'1000108884', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (87, N'1000109789', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (88, N'1000109908', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (89, N'1000109956', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (90, N'1000109988', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (91, N'1000109995', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (92, N'1000109999', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (93, N'1000120112', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (94, N'1000120306', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (95, N'1000120309', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (96, N'1000122389', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (97, N'1000123200', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (98, N'1000123232', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (99, N'1000123268', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (100, N'1000124606', N'001')
GO
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (101, N'1000127127', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (102, N'1000131791', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (103, N'1000131793', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (104, N'1000132359', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (105, N'1000139304', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (106, N'1000139604', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (107, N'1000139804', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (108, N'1000164951', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (109, N'1000166032', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (110, N'1000166665', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (111, N'1000166778', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (112, N'1000168576', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (113, N'1000168577', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (114, N'1000168578', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (115, N'1000168579', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (116, N'1000168580', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (117, N'1000168581', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (118, N'1000173177', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (119, N'1000173178', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (120, N'1000173188', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (121, N'1000175089', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (122, N'1000179075', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (123, N'1000196787', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (124, N'1000196789', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (125, N'1000199967', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (126, N'1000202526', N'002')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (127, N'1000302312', N'003')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (128, N'1000306402', N'003')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (129, N'1000376596', N'003')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (130, N'1000500017', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (131, N'1000501501', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (132, N'1000501528', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (133, N'1000501532', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (134, N'1000501533', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (135, N'1000501539', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (136, N'1000501554', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (137, N'1000501597', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (138, N'1000504017', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (139, N'1000504018', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (140, N'1000504025', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (141, N'1000504038', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (142, N'1000504319', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (143, N'1000505057', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (144, N'1000505138', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (145, N'1000506800', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (146, N'1000506801', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (147, N'1000506802', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (148, N'1000506803', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (149, N'1000506804', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (150, N'1000506816', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (151, N'1000506817', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (152, N'1000507632', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (153, N'1000530078', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (154, N'1000531483', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (155, N'1000533333', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (156, N'1000568625', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (157, N'1001871005', N'018')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (158, N'1002411236', N'024')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (159, N'1003901001', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (160, N'1003901015', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (161, N'1003901070', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (162, N'1003907777', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (163, N'1003911236', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (164, N'1003912224', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (165, N'1003922253', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (166, N'1003946708', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (167, N'1003946709', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (168, N'1003946710', N'039')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (169, N'1006901809', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (170, N'1006915465', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (171, N'1006962335', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (172, N'1006962340', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (173, N'1006980005', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (174, N'2000101961', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (175, N'2000104049', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (176, N'2000104062', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (177, N'2000104063', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (178, N'2000104064', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (179, N'2000104066', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (180, N'2000104074', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (181, N'2000104075', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (182, N'2000104084', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (183, N'2000104100', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (184, N'2000104103', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (185, N'2000104104', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (186, N'2000104107', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (187, N'2000104110', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (188, N'2000104111', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (189, N'2000104112', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (190, N'2000104114', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (191, N'2000104117', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (192, N'2000104120', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (193, N'2000104123', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (194, N'2000104126', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (195, N'2000104138', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (196, N'2000104152', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (197, N'2000104154', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (198, N'2000104165', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (199, N'2000104168', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (200, N'2000104173', N'001')
GO
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (201, N'2000104182', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (202, N'2000104187', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (203, N'2000104199', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (204, N'2000104200', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (205, N'2000104320', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (206, N'2000104321', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (207, N'2000104328', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (208, N'2000104332', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (209, N'2000104333', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (210, N'2000104508', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (211, N'2000104513', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (212, N'2000104518', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (213, N'2000104519', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (214, N'2000104529', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (215, N'2000104531', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (216, N'2000104544', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (217, N'2000104562', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (218, N'2000104563', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (219, N'2000104564', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (220, N'2000104580', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (221, N'2000104585', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (222, N'2000104619', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (223, N'2000104626', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (224, N'2000104631', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (225, N'2000104641', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (226, N'2000104646', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (227, N'2000104653', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (228, N'2000104657', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (229, N'2000104658', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (230, N'2000104667', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (231, N'2000104668', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (232, N'2000104670', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (233, N'2000104674', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (234, N'2000104682', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (235, N'2000104687', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (236, N'2000104700', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (237, N'2000104708', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (238, N'2000104720', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (239, N'2000104723', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (240, N'2000104726', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (241, N'2000104728', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (242, N'2000104732', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (243, N'2000104733', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (244, N'2000104735', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (245, N'2000104736', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (246, N'2000104759', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (247, N'2000104769', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (248, N'2000104773', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (249, N'2000104779', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (250, N'2000104786', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (251, N'2000104791', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (252, N'2000104827', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (253, N'2000104871', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (254, N'2000104892', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (255, N'2000104899', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (256, N'2000105295', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (257, N'2000105366', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (258, N'2000105383', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (259, N'2000105394', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (260, N'2000105444', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (261, N'2000105466', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (262, N'2000105498', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (263, N'2000105512', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (264, N'2000105560', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (265, N'2000105577', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (266, N'2000105585', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (267, N'2000105589', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (268, N'2000105594', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (269, N'2000105596', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (270, N'2000106030', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (271, N'2000106084', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (272, N'2000106087', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (273, N'2000106088', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (274, N'2000106089', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (275, N'2000106092', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (276, N'2000106103', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (277, N'2000106110', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (278, N'2000106213', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (279, N'2000106256', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (280, N'2000106787', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (281, N'2000107002', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (282, N'2000107100', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (283, N'2000107108', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (284, N'2000107115', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (285, N'2000107164', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (286, N'2000107165', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (287, N'2000107167', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (288, N'2000107182', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (289, N'2000107290', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (290, N'2000107321', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (291, N'2000107337', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (292, N'2000107350', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (293, N'2000107372', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (294, N'2000107382', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (295, N'2000107396', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (296, N'2000107415', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (297, N'2000107417', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (298, N'2000107421', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (299, N'2000107422', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (300, N'2000107483', N'001')
GO
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (301, N'2000107500', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (302, N'2000107505', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (303, N'2000107506', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (304, N'2000107511', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (305, N'2000107522', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (306, N'2000107552', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (307, N'2000107566', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (308, N'2000107570', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (309, N'2000107572', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (310, N'2000107587', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (311, N'2000107604', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (312, N'2000107605', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (313, N'2000107606', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (314, N'2000107620', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (315, N'2000107675', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (316, N'2000107735', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (317, N'2000107748', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (318, N'2000107760', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (319, N'2000107808', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (320, N'2000107825', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (321, N'2000107826', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (322, N'2000107843', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (323, N'2000107991', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (324, N'2002400601', N'024')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (325, N'4000301893', N'003')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (326, N'5000102135', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (327, N'5000102217', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (328, N'5000102400', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (329, N'5000102450', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (330, N'5000102808', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (331, N'5000102886', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (332, N'5000104360', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (333, N'5000104420', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (334, N'5000104460', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (335, N'5000104485', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (336, N'5000104498', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (337, N'5000106490', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (338, N'6000104032', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (339, N'7000102094', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (340, N'7000102100', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (341, N'7000102365', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (342, N'7000104025', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (343, N'7000104088', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (344, N'7000104094', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (345, N'7000104938', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (346, N'7000104972', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (347, N'7000105788', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (348, N'7000106815', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (349, N'7000107660', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (350, N'7000107712', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (351, N'7000505503', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (352, N'7000507893', N'005')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (353, N'P0484900', N'002')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (354, N'P0484900', N'002')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (355, N'P1701010', N'002')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (356, N'P1724402', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (357, N'P539502888', N'094')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (358, N'P5395213', N'094')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (359, N'P8327021', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (360, N'P9665204', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (361, N'P9665401', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (362, N'P9665931', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (363, N'PU011023', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (364, N'PU011047', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (365, N'PU011401', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (366, N'PU011402', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (367, N'PU011403', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (368, N'PU011404', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (369, N'PU011405', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (370, N'PU011406', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (371, N'PU011407', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (372, N'PU011503', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (373, N'PU011508', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (374, N'PU011509', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (375, N'PU011510', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (376, N'PU011512', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (377, N'PU011513', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (378, N'PU011514', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (379, N'PU011515', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (380, N'PU011516', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (381, N'PU011517', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (382, N'PU011535', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (383, N'PU011537', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (384, N'PU011538', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (385, N'PU011539', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (386, N'PU011540', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (387, N'PU011541', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (388, N'PU011542', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (389, N'PU011543', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (390, N'PU011549', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (391, N'PU011568', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (392, N'PU011569', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (393, N'PU011570', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (394, N'PU011571', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (395, N'PU011926', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (396, N'PU017027', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (397, N'PU017235', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (398, N'PU017269', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (399, N'PU017524', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (400, N'PU017525', N'007')
GO
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (401, N'PU017526', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (402, N'PU017527', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (403, N'PU017528', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (404, N'PU017529', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (405, N'PU017530', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (406, N'PU017536', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (407, N'PU017546', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (408, N'PU017547', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (409, N'PU017941', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (410, N'PU018023', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (411, N'PU018226', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (412, N'PU018401', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (413, N'PU018403', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (414, N'PU018405', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (415, N'PU018505', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (416, N'PU018507', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (417, N'PU018508', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (418, N'PU018509', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (419, N'PU018510', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (420, N'PU018511', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (421, N'PU018515', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (422, N'PU018516', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (423, N'PU018517', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (424, N'PU018518', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (425, N'PU018519', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (426, N'PU018520', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (427, N'PU018522', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (428, N'PU018525', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (429, N'PU018529', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (430, N'PU018530', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (431, N'PU018532', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (432, N'PU018920', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (433, N'PU019501', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (434, N'PU019502', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (435, N'PU019503', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (436, N'PU019504', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (437, N'PU019505', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (438, N'PU019506', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (439, N'PU019507', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (440, N'PU019509', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (441, N'PU020026', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (442, N'PU020201', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (443, N'PU020203', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (444, N'PU020409', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (445, N'PU020410', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (446, N'PU020411', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (447, N'PU020412', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (448, N'PU020413', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (449, N'PU020925', N'007')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (450, N'1000108883', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (451, N'1000173189', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (452, N'1000102320', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (453, N'1000173761', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (454, N'1006918963', N'069')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (455, N'4000106371', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (456, N'1000101523', N'001')
INSERT [dbo].[CostCenter] ([CostCenterId], [CostCenter], [LegalEntity]) VALUES (457, N'5000102835', N'001')
SET IDENTITY_INSERT [dbo].[CostCenter] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (1, 0, N'')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (2, 72, N'New Customer')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (3, 72, N'Next Customer')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (4, 72, N'Last Customer')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (5, 0, N'Meeting')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (6, 0, N'Training')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (7, 0, N'Vacation')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (8, 0, N'Illness')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (9, 0, N'Personal Day')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (10, 0, N'Excused Absence')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (11, 0, N'Carry-Over Vacation')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (12, 72, N'Guy Lister')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (13, 73, N'Next Customer')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (14, 73, N'Another Customer')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (15, 73, N'Added Customer')
INSERT [dbo].[Customer] ([CustomerId], [WorkerId], [CustomerName]) VALUES (16, 73, N'Add another Customer')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Description] ON 

INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (1, 0, N'', NULL, 0, 1, NULL)
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (2, 72, N'This is first', NULL, 1, 1, NULL)
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (3, 72, N'This is second', NULL, 2, 1, NULL)
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (4, 72, N'This is a new Description', N'          ', -1836547038, 1, CAST(0x0000A25E00000000 AS DateTime))
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (5, 72, N'Description of Work', N'          ', -1755256574, 1, CAST(0x0000A26100000000 AS DateTime))
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (6, 72, N'Benefits presentation', N'          ', 770779671, 1, CAST(0x0000A26100000000 AS DateTime))
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (7, 72, N'Review', N'          ', -762533021, 1, CAST(0x0000A26100000000 AS DateTime))
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (8, 73, N'Description One', N'          ', -935528773, 0, CAST(0x0000A26500000000 AS DateTime))
INSERT [dbo].[Description] ([DescriptionId], [WorkerId], [Description], [AccountNumber], [HashCode], [IsActive], [DateLastUsed]) VALUES (9, 73, N'Second Description', N'          ', -1100792957, 1, CAST(0x0000A26500000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Description] OFF
SET IDENTITY_INSERT [dbo].[Facility] ON 

INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (1, N'MBC', N'9501')
INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (2, N'GO', N'9501')
INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (3, N'IT', N'9501')
INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (4, N'MV', N'9501')
INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (5, N'PD', N'9501')
INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (6, N'SW', N'9501')
INSERT [dbo].[Facility] ([FacilityId], [Facility], [AccountsPayableID]) VALUES (7, N'WH', N'9501')
SET IDENTITY_INSERT [dbo].[Facility] OFF
SET IDENTITY_INSERT [dbo].[InternalNumber] ON 

INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (2, N'4001127366', N'003')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (3, N'4001132262', N'003')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (4, N'4001132263', N'003')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (5, N'4001132265', N'003')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (6, N'4001176963', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (7, N'4700095824', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (8, N'4700102694', N'003')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (9, N'7100001345', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (10, N'7100001348', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (11, N'7100001358', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (12, N'7100001359', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (13, N'7100001360', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (14, N'7100001363', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (15, N'7100001411', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (16, N'7100001415', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (17, N'7100001418', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (18, N'7100001421', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (19, N'7100001421', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (20, N'7100001423', N'024')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (21, N'7100001436', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (22, N'7100001542', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (23, N'7100001551', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (24, N'7100001554', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (25, N'7100001556', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (26, N'7100001580', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (27, N'7100001581', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (28, N'7100001583', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (29, N'7100001589', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (30, N'7100001592', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (31, N'7100001594', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (32, N'7100001602', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (33, N'7100001918', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (34, N'7100001919', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (35, N'7100001922', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (36, N'7100001923', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (37, N'7100001950', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (38, N'7100001951', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (39, N'7100001952', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (40, N'7100001954', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (41, N'7100001965', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (42, N'7100001966', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (43, N'7100001967', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (44, N'7100001968', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (45, N'7100001969', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (46, N'7100001973', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (47, N'7100001978', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (48, N'7100001982', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (49, N'7100001984', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (50, N'7100001985', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (51, N'7100001988', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (52, N'7100001989', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (53, N'7100001991', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (54, N'7100001992', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (55, N'7100001993', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (56, N'7100001994', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (57, N'7100001997', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (58, N'7100002012', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (59, N'7100002016', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (60, N'7100002035', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (61, N'7100002035', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (62, N'7100002038', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (63, N'7100002053', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (64, N'7100002058', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (65, N'7100002069', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (66, N'7100002094', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (67, N'7100002100', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (68, N'7100002108', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (69, N'7100002110', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (70, N'7100002123', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (71, N'7100002129', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (72, N'7100002132', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (73, N'7100002200', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (74, N'7100002466', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (75, N'7100002578', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (76, N'7100002583', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (77, N'7100002616', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (78, N'7100002744', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (79, N'7100002798', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (80, N'7100002824', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (81, N'7100003024', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (82, N'7100003063', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (83, N'7100003067', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (84, N'7100003068', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (85, N'7100003069', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (86, N'7100003070', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (87, N'7100003071', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (88, N'7100003072', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (89, N'7100003073', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (90, N'7100003074', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (91, N'7100003075', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (92, N'7100003075', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (93, N'7100003076', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (94, N'7100003096', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (95, N'7100003145', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (96, N'7100003154', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (97, N'7100003183', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (98, N'7100003272', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (99, N'7100003335', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (100, N'7100003405', N'001')
GO
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (101, N'7100003409', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (102, N'7100003510', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (103, N'7100003576', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (104, N'7100003597', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (105, N'7100003599', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (106, N'7100003603', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (107, N'7100004009', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (108, N'7100004011', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (109, N'7100004186', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (110, N'7100004236', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (111, N'7100004321', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (112, N'7100004322', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (113, N'7100004323', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (114, N'7100004361', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (115, N'7100004422', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (116, N'7100004444', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (117, N'7100004494', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (118, N'7100004529', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (119, N'7100004630', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (120, N'7100004737', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (121, N'7100004745', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (122, N'7100005209', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (123, N'7100005606', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (124, N'7100005647', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (125, N'7100005906', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (126, N'7100006141', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (127, N'7100006389', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (128, N'7100006394', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (129, N'7100006686', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (130, N'7100006696', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (131, N'7100006740', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (132, N'7100006898', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (133, N'7100006899', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (134, N'7100006900', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (135, N'7100006901', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (136, N'7100006912', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (137, N'7100007011', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (138, N'7100007132', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (139, N'7100007142', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (140, N'7100007175', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (141, N'7100007198', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (142, N'7100007201', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (143, N'7100007246', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (144, N'7100007267', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (145, N'7100007279', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (146, N'7100007376', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (147, N'7100007377', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (148, N'7100007385', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (149, N'7100007396', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (150, N'7100007397', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (151, N'7100007690', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (152, N'7100007707', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (153, N'7100007708', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (154, N'7100007709', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (155, N'7100007710', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (156, N'7100007769', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (157, N'7100007793', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (158, N'7100007879', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (159, N'7100008113', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (160, N'7100008129', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (161, N'7100008136', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (162, N'7100008384', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (163, N'7100008455', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (164, N'7100008459', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (165, N'7100008620', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (166, N'7100008735', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (167, N'7100008738', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (168, N'7100008767', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (169, N'7100008851', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (170, N'7100008851', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (171, N'7100008854', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (172, N'7100008855', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (173, N'7100008909', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (174, N'7100008911', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (175, N'7100008912', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (176, N'7100008925', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (177, N'7100008927', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (178, N'7100008931', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (179, N'7100008941', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (180, N'7100008995', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (181, N'7100008997', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (182, N'7100009108', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (183, N'7100009109', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (184, N'7100009110', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (185, N'7100009216', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (186, N'7100009223', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (187, N'7100009224', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (188, N'7100009225', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (189, N'7100009226', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (190, N'7100009227', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (191, N'7100009234', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (192, N'7100009250', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (193, N'7100009330', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (194, N'7100009456', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (195, N'7100009463', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (196, N'7100009637', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (197, N'7100009989', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (198, N'7100010140', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (199, N'7100010186', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (200, N'7100010304', N'001')
GO
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (201, N'7100010305', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (202, N'7100010590', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (203, N'7100010591', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (204, N'7100010592', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (205, N'7100010593', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (206, N'7100010594', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (207, N'7100010597', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (208, N'7100010608', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (209, N'7100010621', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (210, N'7100010682', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (211, N'7100010734', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (212, N'7100010841', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (213, N'7100010842', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (214, N'7100010943', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (215, N'7100010945', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (216, N'7100011072', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (217, N'7100011093', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (218, N'7100011157', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (219, N'7100011173', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (220, N'7100011177', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (221, N'7100011182', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (222, N'7100011190', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (223, N'7100011323', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (224, N'7100011325', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (225, N'7100011327', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (226, N'7100011346', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (227, N'7100011346', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (228, N'7100011367', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (229, N'7100011398', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (230, N'7100011486', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (231, N'7100011490', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (232, N'7100011491', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (233, N'7100011501', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (234, N'7100011554', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (235, N'7100011716', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (236, N'7100011799', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (237, N'7100011853', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (238, N'7100011856', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (239, N'7100011906', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (240, N'7100011914', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (241, N'7100011926', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (242, N'7100011937', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (243, N'7100011941', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (244, N'7100011953', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (245, N'7100011954', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (246, N'7100011956', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (247, N'7100012087', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (248, N'7100012158', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (249, N'7100012214', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (250, N'7100012234', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (251, N'7100012316', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (252, N'7100012377', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (253, N'7100012381', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (254, N'7100012431', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (255, N'7100012453', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (256, N'7100012468', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (257, N'7100012470', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (258, N'7100012471', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (259, N'7100012501', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (260, N'7100012515', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (261, N'7100012522', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (262, N'7100012538', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (263, N'7100012591', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (264, N'7100012634', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (265, N'7100012662', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (266, N'7100012693', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (267, N'7100012755', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (268, N'7100012776', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (269, N'7100012931', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (270, N'7100012932', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (271, N'7100013088', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (272, N'7100013110', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (273, N'7100013118', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (274, N'7100013128', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (275, N'7100013243', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (276, N'7100013323', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (277, N'7100013358', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (278, N'7100013445', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (279, N'7100013530', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (280, N'7100013556', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (281, N'7100013557', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (282, N'7100013561', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (283, N'7100013575', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (284, N'7100013601', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (285, N'7100013604', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (286, N'7100013607', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (287, N'7100013608', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (288, N'7100013610', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (289, N'7100013615', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (290, N'7100013661', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (291, N'7100013673', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (292, N'7100013684', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (293, N'7100013692', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (294, N'7100013695', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (295, N'7100013696', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (296, N'7100013697', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (297, N'7100013748', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (298, N'7100013753', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (299, N'7100013756', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (300, N'7100013818', N'001')
GO
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (301, N'7100013819', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (302, N'7100013892', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (303, N'7100014024', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (304, N'7100014026', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (305, N'7100014075', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (306, N'7100014079', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (307, N'7100014129', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (308, N'7100014211', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (309, N'7100014303', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (310, N'7100014306', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (311, N'7100014307', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (312, N'7100014366', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (313, N'7100014378', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (314, N'7100014462', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (315, N'7100014530', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (316, N'7100014690', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (317, N'7100014737', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (318, N'7100014738', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (319, N'7100014739', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (320, N'7100014817', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (321, N'7100014831', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (322, N'7100014849', N'2216')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (323, N'7100014910', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (324, N'7100014922', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (325, N'7100014923', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (326, N'7100014924', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (327, N'7100014925', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (328, N'7100014983', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (329, N'7100015005', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (330, N'7100015007', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (331, N'7100015008', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (332, N'7100015038', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (333, N'7100015058', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (334, N'7100015075', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (335, N'7100015099', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (336, N'7100015100', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (337, N'7100015112', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (338, N'7100015169', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (339, N'7100015170', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (340, N'7100015171', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (341, N'7100015172', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (342, N'7100015173', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (343, N'7100015174', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (344, N'7100015178', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (345, N'7100015190', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (346, N'7100015202', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (347, N'7100015207', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (348, N'7100015213', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (349, N'7100015214', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (350, N'7100015215', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (351, N'7100015216', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (352, N'7100015217', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (353, N'7100015218', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (354, N'7100015219', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (355, N'7100015242', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (356, N'7100015244', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (357, N'7100015245', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (358, N'7100015266', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (359, N'7100015268', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (360, N'7100015312', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (361, N'7100015318', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (362, N'7100015352', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (363, N'7100015353', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (364, N'7100015360', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (365, N'7100015361', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (366, N'7100015390', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (367, N'7100015394', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (368, N'7100015407', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (369, N'7100015463', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (370, N'7100015507', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (371, N'7100015509', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (372, N'7100015551', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (373, N'7100015576', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (374, N'7100015583', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (375, N'7100015591', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (376, N'7100015614', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (377, N'7100015663', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (378, N'7100015663', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (379, N'7100015664', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (380, N'7100015717', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (381, N'7100015783', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (382, N'7100015784', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (383, N'7100015787', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (384, N'7100015804', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (385, N'7100015820', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (386, N'7100015829', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (387, N'7100015830', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (388, N'7100015848', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (389, N'7100015851', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (390, N'7100015908', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (391, N'7100015923', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (392, N'7100015952', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (393, N'7100015967', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (394, N'7100015975', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (395, N'7100016004', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (396, N'7100016049', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (397, N'7100016049', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (398, N'7100016077', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (399, N'7100016077', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (400, N'7100016078', N'001')
GO
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (401, N'7100016107', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (402, N'7100016108', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (403, N'7100016109', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (404, N'7100016110', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (405, N'7100016134', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (406, N'7100016143', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (407, N'7100016153', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (408, N'7100016156', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (409, N'7100016174', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (410, N'7100016193', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (411, N'7100016199', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (412, N'7100016205', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (413, N'7100016240', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (414, N'7100016245', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (415, N'7100016264', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (416, N'7100016292', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (417, N'7100016296', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (418, N'7100016399', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (419, N'7100016481', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (420, N'7100016482', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (421, N'7100016507', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (422, N'7100016536', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (423, N'7100016617', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (424, N'7100016688', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (425, N'7100016813', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (426, N'7100016874', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (427, N'7100016897', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (428, N'7100016921', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (429, N'7100016951', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (430, N'7100017009', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (431, N'7100017067', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (432, N'7100017073', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (433, N'7100017104', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (434, N'7100017105', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (435, N'7100017110', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (436, N'7100017117', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (437, N'7100017118', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (438, N'7100017120', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (439, N'7100017208', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (440, N'7100017212', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (441, N'7100017220', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (442, N'7100017244', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (443, N'7100017245', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (444, N'7100017256', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (445, N'7100017268', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (446, N'7100017305', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (447, N'7100017340', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (448, N'7100017341', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (449, N'7100017403', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (450, N'7100017449', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (451, N'7100017538', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (452, N'7100017560', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (453, N'7100017565', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (454, N'7100017630', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (455, N'7100017631', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (456, N'7100017635', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (457, N'7100017653', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (458, N'7100017655', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (459, N'7100017670', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (460, N'7100017700', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (461, N'7100017767', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (462, N'7100017768', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (463, N'7100017772', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (464, N'7100017776', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (465, N'7100017912', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (466, N'7100017969', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (467, N'7100017971', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (468, N'7100018004', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (469, N'7100018005', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (470, N'7100018007', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (471, N'7100018018', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (472, N'7100018067', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (473, N'7100018132', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (474, N'7100018144', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (475, N'7100018579', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (476, N'7100018592', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (477, N'7100018903', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (478, N'7300059689', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (479, N'7700010840', N'069')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (480, N'7700010870', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (481, N'7700010871', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (482, N'7900003198', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (483, N'7900003857', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (484, N'7900003858', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (485, N'7900003859', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (486, N'7900003860', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (487, N'7900003862', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (488, N'7900004073', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (489, N'7900004074', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (490, N'7900012464', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (491, N'7900012533', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (492, N'7900013794', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (493, N'7900014819', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (494, N'7900015610', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (495, N'7900040956', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (496, N'7900040957', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (497, N'7900041695', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (498, N'7900042065', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (499, N'7900043117', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (500, N'7900043239', N'001')
GO
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (501, N'7900044525', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (502, N'7900055826', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (503, N'7900055827', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (504, N'7900056089', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (505, N'7900059412', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (506, N'7900059983', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (507, N'7900060262', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (508, N'7900060375', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (509, N'7900067911', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (510, N'7900068483', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (511, N'7900068566', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (512, N'7900068698', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (513, N'7900068933', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (514, N'7900069148', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (515, N'7900069157', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (516, N'7900069302', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (517, N'7900069326', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (518, N'7900069328', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (519, N'7900069332', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (520, N'7900069335', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (521, N'7900069336', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (522, N'7900069337', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (523, N'7900069707', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (524, N'7900070014', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (525, N'7900070304', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (526, N'7100006390', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (527, N'7100010302', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (528, N'7100012469', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (529, N'7100016337', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (530, N'7100016371', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (531, N'7100017502', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (532, N'7100018141', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (533, N'7900040812', N'005')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (534, N'7100013494', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (535, N'7100016912', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (536, N'7100018703', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (537, N'7100018716', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (538, N'7100008128', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (539, N'7100013135', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (540, N'7100014907', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (541, N'7100016923', N'039')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (542, N'7900069327', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (543, N'7100006738', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (544, N'7100008202', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (545, N'7100008431', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (546, N'7100010229', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (547, N'7100013785', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (548, N'7100017277', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (549, N'7100017598', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (550, N'7100017855', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (551, N'7100017959', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (552, N'7900069331', N'001')
INSERT [dbo].[InternalNumber] ([InternalNumberId], [InternalOrder], [LegalEntity]) VALUES (553, N'4700095823', N'001')
SET IDENTITY_INSERT [dbo].[InternalNumber] OFF
SET IDENTITY_INSERT [dbo].[Level] ON 

INSERT [dbo].[Level] ([LevelId], [Level], [RegularRate], [OvertimeRate]) VALUES (1, N'D9', 90.0000, 90.0000)
INSERT [dbo].[Level] ([LevelId], [Level], [RegularRate], [OvertimeRate]) VALUES (2, N'L5', 37.7500, 37.7500)
INSERT [dbo].[Level] ([LevelId], [Level], [RegularRate], [OvertimeRate]) VALUES (3, N'L6', 64.0000, 64.0000)
INSERT [dbo].[Level] ([LevelId], [Level], [RegularRate], [OvertimeRate]) VALUES (4, N'L9', 50.0000, 50.0000)
INSERT [dbo].[Level] ([LevelId], [Level], [RegularRate], [OvertimeRate]) VALUES (5, N'LM', 80.0000, 80.0000)
SET IDENTITY_INSERT [dbo].[Level] OFF
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([PartnerId], [Partner]) VALUES (2, N'RDSS')
INSERT [dbo].[Partner] ([PartnerId], [Partner]) VALUES (3, N'F&HC')
INSERT [dbo].[Partner] ([PartnerId], [Partner]) VALUES (4, N'Beauty')
INSERT [dbo].[Partner] ([PartnerId], [Partner]) VALUES (5, N'Baby-Feminine-Fam care')
INSERT [dbo].[Partner] ([PartnerId], [Partner]) VALUES (6, N'Health and Grooming')
INSERT [dbo].[Partner] ([PartnerId], [Partner]) VALUES (7, N'Corporate')
SET IDENTITY_INSERT [dbo].[Partner] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (1, N'Dining Services')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (2, N'Clerical')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (3, N'Mechanic')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (4, N'Utilites')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (5, N'Managers')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (6, N'Project Engineer')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (7, N'Project Coordinator')
INSERT [dbo].[Role] ([RoleId], [Role]) VALUES (8, N'Shipping Receiving')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Site] ON 

INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (2, N'BIC', NULL)
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (3, N'BJIC', NULL)
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (4, N'F&HCIC', N'Ivorydale Technical Center')
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (5, N'GLIC-E', NULL)
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (6, N'GO', N'General Offices')
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (7, N'MBC', N'Health Care Research Center')
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (8, N'MVL', N'Miami Valley Laboratories')
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (9, N'NIC', NULL)
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (10, N'SgIC', NULL)
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (11, N'SWIC', N'Sharon Woods Technical Center')
INSERT [dbo].[Site] ([SiteId], [Site], [SiteName]) VALUES (12, N'WHBC', N'Winton Hill Business Center')
SET IDENTITY_INSERT [dbo].[Site] OFF
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (1, 43, 0, 72, 3, N'', 0, 0.0000, 3.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 1, 1, 1, 1, 2, 2, N'', 3, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (2, 43, 0, 72, 3, N'', 1, 0.0000, 0.0000, 2.0000, 5.0000, 0.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 1, 1, 1, 1, 2, 2, N'', 3, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (3, 43, 0, 72, 4, N'', 0, 4.0000, 4.0000, 4.0000, 4.0000, 0.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 0, 1, 1, 3, 13, 11, N'', 11, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (4, 43, 0, 72, 5, N'', 0, 2.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 0, 1, 1, 1, 2, 2, N'', 1, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (5, 43, 0, 72, 4, N'', 0, 0.0000, 4.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 1, 1, 1, 5, 12, 2, N'', 11, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (6, 43, 0, 72, 1, N'', 0, 0.0000, 3.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 0, 1, 1, 3, 2, 2, N'', 1, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (7, 43, 0, 72, 6, N'', 0, 0.0000, 0.0000, 3.0000, 0.0000, 0.0000, 0.0000, 0.0000, CAST(0x0000A2620016F9A4 AS DateTime), 0, 3, 0, 1, 0, 2, N'', 1, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (8, 44, 0, 72, 4, N'', 0, 0.0000, 0.0000, 8.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 5, 4, 3, 2, 0, N'', 11, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (9, 46, 0, 72, 5, N'', 0, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 0.0000, 0.0000, NULL, 1, 7, 6, 3, 539, 453, N'', 3, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (10, 0, 0, 0, 0, N'', 0, 7.0000, 3.0000, 3.0000, 3.0000, 4.0000, 0.0000, 0.0000, NULL, 0, 6, 7, 3, 548, 2, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (11, 0, 0, 0, 0, N'', 0, 7.0000, 3.0000, 3.0000, 3.0000, 4.0000, 0.0000, 0.0000, NULL, 0, 6, 7, 3, 548, 2, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (12, 43, 0, 0, 0, N'', 0, 2.0000, 2.0000, 4.0000, 1.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (13, 0, 0, 0, 0, N'', 0, 2.0000, 2.0000, 4.0000, 1.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (14, 44, 0, 72, 4, N'', 1, 0.0000, 3.0000, 2.0000, 3.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 5, 4, 3, 2, 0, N'', 11, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (15, 0, 0, 0, 0, N'', 0, 2.0000, 2.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 6, 7, 3, 548, 2, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (16, 0, 0, 0, 0, N'', 0, 0.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 6, 7, 3, 548, 2, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (17, 0, 0, 0, 0, N'', 0, 0.0000, 0.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 6, 7, 3, 548, 2, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (18, 0, 0, 0, 0, N'', 0, 0.0000, 3.0000, 2.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (19, 44, 2013, 0, 0, N'', 0, 0.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (20, 0, 0, 0, 0, N'', 0, 0.0000, 1.0000, 0.0000, 4.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (21, 0, 0, 0, 0, N'', 1, 0.0000, 0.0000, 2.0000, 3.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (22, 44, 2013, 0, 0, N'', 1, 0.0000, 0.0000, 2.0000, 3.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (23, 43, 0, 73, 0, N'', 0, 0.0000, 1.0000, 2.0000, 3.0000, 4.0000, 3.0000, 0.0000, CAST(0x0000A266001532F4 AS DateTime), 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (24, 43, 0, 73, 0, N'', 1, 0.0000, 2.0000, 4.0000, 6.0000, 8.0000, 0.0000, 0.0000, CAST(0x0000A266001532F4 AS DateTime), 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (25, 43, 0, 0, 0, N'', 1, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3.0000, 0.0000, NULL, 0, 3, 6, 4, 535, 0, N'', 12, NULL)
INSERT [dbo].[Week] ([WeekId], [WeekNumber], [Year], [WorkerId], [DescriptionId], [Comments], [IsOvertime], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday], [Submitted], [NewRequest], [SiteId], [WorkAreaId], [PartnerId], [InternalNumberId], [CostCenterId], [CapitalNumber], [CustomerId], [AccountType]) VALUES (26, 44, 2013, 73, 8, N'', 0, 1.0000, 1.0000, 1.0000, 2.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 5, 3, 3, 0, 6, N'asdfasdf', 12, NULL)
SET IDENTITY_INSERT [dbo].[Week] OFF
SET IDENTITY_INSERT [dbo].[WorkArea] ON 

INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (2, N'Lab')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (3, N'PRL')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (4, N'Plant')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (5, N'Special R&D Utilities (Non JLL)')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (6, N'Prototypes / Devices')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (7, N'Samples / parts')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (8, N'Claims / Copy Support')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (9, N'Compliance driven')
INSERT [dbo].[WorkArea] ([WorkAreaId], [WorkArea]) VALUES (10, N'Comsumer Monitoring')
SET IDENTITY_INSERT [dbo].[WorkArea] OFF
SET IDENTITY_INSERT [dbo].[WorkDept] ON 

INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (2, N'1000107382', N'PRL BABY CHASSIS', 35)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (3, N'1000501528', N'SWTC R&DSS', 30)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (4, N'1000501532', N'INTEGRATED RISK', 33)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (5, N'1000501533', N'MVL CONATSER', 29)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (6, N'1000501539', N'ITC R&DSS', 27)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (7, N'1000501543', N'Site Administration', 3)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (8, N'1000501544', N'WH Project Office', 31)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (9, N'1000501554', N'WHBC RDSS', 32)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (10, N'1000501589', N'BTF R&DSS MVL', 29)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (11, N'1000501597', N'HCRC R&DSS', 28)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (12, N'2000106088', N'City Wide RDSS', 34)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (13, N'5000104387', N'MVL R&DSS', 29)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (14, N'5000104455', N'WHBC ENGINEERING SVC', 7)
INSERT [dbo].[WorkDept] ([WorkDeptId], [WorkDept], [WorkDeptDesc], [ProcessId]) VALUES (15, N'7900068656', N'Lab/PRL Equipment Support MVIC', 34)
SET IDENTITY_INSERT [dbo].[WorkDept] OFF
SET IDENTITY_INSERT [dbo].[Worker] ON 

INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (1, N'01034671', 3, 12, 7, 6, N'Brian', N'Kiley', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (2, N'01034951', 3, 4, 7, 6, N'Randy', N'Gross', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (3, N'01045179', 3, 12, 4, 6, N'Kerry', N'Becker', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (4, N'01051237', 3, 11, 1, 6, N'Steve', N'Winbigler', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (5, N'01130528', 3, 12, 3, 5, N'Kelly', N'Teegarden', 1, 1, 0, 0, N'teegarden.ks')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (6, N'01138951', 3, 12, 6, 6, N'Brian', N'Burns', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (7, N'01141335', 3, 12, 1, 6, N'Tim', N'Fiedeldey', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (8, N'01141807', 3, 12, 1, 6, N'April', N'Hills', 1, 1, 0, 0, N'hills.al')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (9, N'01142705', 3, 2, 7, 6, N'Peter', N'Tran', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (10, N'01146593', 3, 11, 1, 6, N'Dan', N'Williams', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (11, N'01147062', 3, 12, 3, 6, N'Bryony', N'Marshall', 0, 1, 0, 0, N'marshall.be')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (12, N'01148540', 3, 12, 6, 6, N'Tom', N'Brady', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (13, N'01508001', 3, 3, 6, 6, N'Dave', N'Wise', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (14, N'01605464', 3, 12, 3, 6, N'Matt', N'Paumier', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (15, N'01657999', 3, 12, 6, 6, N'Matt', N'Stophlet', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (16, N'01658002', 3, 12, 7, 6, N'Terrell', N'Byrd', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (17, N'01658008', 3, 12, 1, 6, N'Cai', N'Feng', 1, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (18, N'01022062', 5, 9, 7, 3, N'Ngornly', N'Ly', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (19, N'01033524', 5, 12, 7, 3, N'Mike', N'Burke', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (20, N'01034926', 5, 9, 7, 3, N'Charlie', N'Mahler', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (21, N'01037965', 5, 12, 3, 3, N'Steve', N'Kolesar', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (22, N'01040146', 5, 11, 1, 3, N'Mark', N'Neumann', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (23, N'01042270', 5, 3, 6, 3, N'Greg', N'Campbell', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (24, N'01042944', 5, 12, 7, 3, N'Tom', N'Lemmink', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (25, N'01043877', 5, 11, 1, 3, N'Gary', N'Piatt', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (26, N'01044794', 5, 12, 3, 3, N'Lou', N'Zeiser', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (27, N'01049970', 5, 12, 6, 3, N'Gary', N'Manos', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (28, N'01053294', 5, 12, 6, 3, N'Buzz', N'Watters', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (29, N'01054834', 5, 3, 6, 3, N'Tom', N'Dierig', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (30, N'01054926', 5, 9, 7, 3, N'Dennis', N'Piper', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (31, N'01085651', 5, 12, 3, 3, N'Rusty', N'Perry', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (32, N'01085674', 5, 3, 6, 3, N'Bob', N'Swensen', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (33, N'01101227', 5, 12, 1, 3, N'Doni', N'Hatz', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (34, N'01128653', 5, 9, 7, 3, N'Tom', N'Bender', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (35, N'01130328', 5, 12, 6, 3, N'Dave', N'Anderson', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (36, N'01130454', 5, 11, 1, 3, N'Rob', N'Pfeifer', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (37, N'01130996', 5, 3, 6, 2, N'Barbara', N'Williams', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (38, N'01133520', 5, 12, 1, 3, N'John', N'Herlinger', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (39, N'01133589', 5, 12, 3, 3, N'Kevin', N'Tewell', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (40, N'01142704', 5, 12, 7, 3, N'Mark', N'Wiley', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (41, N'01142787', 5, 12, 3, 3, N'Mike', N'Schell', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (42, N'01145679', 5, 12, 7, 3, N'Mike', N'Bell', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (43, N'01145912', 5, 12, 7, 3, N'Earl', N'Osborne', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (44, N'01146264', 5, 12, 3, 3, N'Phil', N'Hughes', 0, 1, 0, 0, N'Hughes.p')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (45, N'01148760', 5, 12, 1, 3, N'Mike', N'Roaden', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (46, N'01502060', 5, 12, 3, 3, N'Dan', N'Schmaltz', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (47, N'01502103', 5, 12, 3, 3, N'Bill', N'Dunaway', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (48, N'01502125', 5, 12, 3, 3, N'Bill', N'McLaughlin', 0, 1, 0, 0, N'mclaughlin.wk')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (49, N'01502862', 5, 12, 6, 3, N'Rob', N'Dawn', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (50, N'01502863', 5, 12, 6, 3, N'Ski', N'Buchenau', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (51, N'01503314', 5, 12, 6, 3, N'Dean', N'Albright', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (52, N'01504668', 5, 12, 7, 3, N'Mike', N'Griffin', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (53, N'01505298', 5, 12, 3, 3, N'Freddie', N'Kendall', 0, 1, 0, 0, N'kendall.f')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (54, N'01507087', 5, 12, 6, 3, N'Doug', N'Otting', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (55, N'01512401', 5, 12, 3, 3, N'Bill', N'Meier', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (56, N'01514378', 5, 12, 1, 3, N'Kirk', N'Schrotel', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (57, N'01520944', 5, 12, 1, 3, N'Rich', N'Maupin', 0, 1, 0, 1, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (58, N'01523939', 5, 9, 7, 3, N'Dan', N'Conrad', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (59, N'01525303', 5, 12, 6, 3, N'Corey', N'Moore', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (60, N'01558237', 5, 12, 3, 3, N'Rick', N'Ponton', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (61, N'01607383', 5, 12, 3, 3, N'Michael', N'Byerly', 0, 1, 0, 0, N'byerly.ms')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (62, N'01612935', 5, 12, 7, 3, N'Stanley', N'Gregory', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (63, N'01613624', 5, 12, 6, 3, N'Louis', N'Hudepohl', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (64, N'01629089', 5, 12, 7, 3, N'Barron', N'Weant', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (65, N'01631373', 5, 12, 7, 3, N'Jody', N'Moye', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (66, N'01635456', 5, 12, 1, 3, N'Gregory', N'Dougherty', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (67, N'01635956', 5, 12, 7, 3, N'Matt', N'Kiefer', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (68, N'01635957', 5, 12, 1, 3, N'Matt', N'Mueller', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (69, N'01657927', 5, 12, 7, 3, N'Mike', N'Galligan', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (70, N'01658001', 5, 12, 7, 3, N'Dan', N'Machenheimer', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (71, N'01658009', 5, 12, 1, 3, N'Sean', N'Thomas', 0, 1, 0, 0, NULL)
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (72, N'09999999', 6, 12, 1, 3, N'Mark', N'Steiner', 0, 1, 0, 0, N'steiner.ma')
INSERT [dbo].[Worker] ([WorkerId], [EmployeeNumber], [LevelId], [WorkDeptId], [FacilityId], [RoleId], [FirstName], [LastName], [IsManager], [IsActive], [IsPartTime], [OnDisability], [IonName]) VALUES (73, N'08888888', 6, 12, 1, 3, N'Guy', N'Lister', 0, 1, 0, 0, N'lister.g.1')
SET IDENTITY_INSERT [dbo].[Worker] OFF
