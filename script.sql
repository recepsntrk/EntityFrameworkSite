USE [master]
GO
/****** Object:  Database [DB121031223433]    Script Date: 14.11.2012 14:33:03 ******/
CREATE DATABASE [DB121031223433] ON  PRIMARY 
( NAME = N'DB121031223433Data', FILENAME = N'D:\MSSQL\DATA\DB121031223433Data.mdf' , SIZE = 3072KB , MAXSIZE = 51200KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB121031223433Log', FILENAME = N'D:\MSSQL\DATA\DB121031223433Log.ldf' , SIZE = 1024KB , MAXSIZE = 25600KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB121031223433] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB121031223433].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB121031223433] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB121031223433] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB121031223433] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB121031223433] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB121031223433] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB121031223433] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB121031223433] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB121031223433] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [DB121031223433] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB121031223433] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB121031223433] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB121031223433] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB121031223433] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB121031223433] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB121031223433] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB121031223433] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB121031223433] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB121031223433] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB121031223433] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB121031223433] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB121031223433] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB121031223433] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB121031223433] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB121031223433] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB121031223433] SET  MULTI_USER 
GO
ALTER DATABASE [DB121031223433] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB121031223433] SET DB_CHAINING OFF 
GO
USE [DB121031223433]
GO
/****** Object:  User [USR121031223433]    Script Date: 14.11.2012 14:33:04 ******/
CREATE USER [USR121031223433] FOR LOGIN [USR121031223433] WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'USR121031223433'
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CategoryID] [int] IDENTITY(100,1) NOT NULL,
	[CategoryName] [nvarchar](70) NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[ISCREDATE] [datetime] NOT NULL,
	[ISMODDATE] [datetime] NOT NULL,
	[ISCREUSERID] [int] NOT NULL,
	[ISMODUSERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPicture]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPicture](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Picture1] [nvarchar](max) NOT NULL,
	[thumbsPicture1] [nvarchar](max) NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[ISCREDATE] [datetime] NOT NULL,
	[ISMODDATE] [datetime] NOT NULL,
	[ISCREUSERID] [int] NOT NULL,
	[ISMODUSERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] IDENTITY(1000,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[KdvDahil] [decimal](8, 2) NULL,
	[OldPrice] [decimal](8, 2) NULL,
	[ISCampaign] [bit] NULL,
	[Stock] [int] NOT NULL,
	[Size] [nvarchar](20) NOT NULL,
	[Detail] [nvarchar](max) NULL,
	[ISACTIVE] [bit] NULL,
	[ISDELETED] [bit] NULL,
	[ISCREDATE] [datetime] NULL,
	[ISMODDATE] [datetime] NULL,
	[ISCREUSERID] [int] NULL,
	[ISMODUSERID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProductComment]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UyeID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Score] [tinyint] NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSepet]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSepet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UyeID] [int] NOT NULL,
	[Adet] [int] NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[ISCREDATE] [datetime] NOT NULL,
	[AlimDetayi] [nvarchar](max) NULL,
	[Tutar] [decimal](8, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSiparisDetaylari]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSiparisDetaylari](
	[SiparisDetayID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisID] [int] NOT NULL,
	[SiparisTipID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Adet] [int] NOT NULL,
	[AlimDetayi] [nvarchar](max) NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[ISCREDATE] [datetime] NOT NULL,
	[ISMODDATE] [datetime] NOT NULL,
	[ISMODUSERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisDetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSiparisDurumlari]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSiparisDurumlari](
	[DurumID] [int] IDENTITY(1,1) NOT NULL,
	[DurumAdi] [nvarchar](30) NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DurumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSiparisler]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSiparisler](
	[SiparisID] [int] IDENTITY(75100,1) NOT NULL,
	[UyeID] [int] NOT NULL,
	[DurumID] [int] NOT NULL,
	[SiparisToplamTutar] [decimal](8, 2) NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[ISCREDATE] [datetime] NOT NULL,
	[ISMODDATE] [datetime] NOT NULL,
	[ISMODUSERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSubCategory]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubCategory](
	[SubCategoryID] [int] IDENTITY(200,1) NOT NULL,
	[SubCategoryName] [nvarchar](70) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ISACTIVE] [bit] NOT NULL,
	[ISDELETED] [bit] NOT NULL,
	[ISCREDATE] [datetime] NOT NULL,
	[ISMODDATE] [datetime] NOT NULL,
	[ISCREUSERID] [int] NOT NULL,
	[ISMODUSERID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUyeIletisim]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUyeIletisim](
	[IletisimID] [int] IDENTITY(1,1) NOT NULL,
	[UyeID] [int] NOT NULL,
	[Telefon] [nvarchar](30) NULL,
	[Adres] [nvarchar](max) NULL,
	[Il] [nvarchar](50) NULL,
	[Ilce] [nvarchar](50) NULL,
	[AdresAdi] [nvarchar](30) NULL,
	[ISACTIVE] [bit] NULL,
	[ISDELETED] [bit] NULL,
	[ISCREDATE] [datetime] NULL,
	[ISMODDATE] [datetime] NULL,
	[CreUSERID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IletisimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUyeler]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUyeler](
	[UyeID] [int] IDENTITY(100,1) NOT NULL,
	[UyeTipID] [int] NOT NULL,
	[UyeAdi] [nvarchar](50) NOT NULL,
	[UyeMail] [nvarchar](100) NOT NULL,
	[UyeTel] [nvarchar](30) NOT NULL,
	[UyeCinsiyeti] [nvarchar](1) NULL,
	[UyeSifresi] [nvarchar](70) NOT NULL,
	[UyeDogTarihi] [datetime] NULL,
	[UyeAdresi] [nvarchar](max) NULL,
	[AdresIl] [nvarchar](50) NULL,
	[AdresIlce] [nvarchar](50) NULL,
	[ISACTIVE] [bit] NULL,
	[ISDELETED] [bit] NULL,
	[ISCREDATE] [datetime] NULL,
	[ISMODDATE] [datetime] NULL,
	[Aktivasyon] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UyeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUyeTipleri]    Script Date: 14.11.2012 14:33:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUyeTipleri](
	[UyeTipID] [int] IDENTITY(1,1) NOT NULL,
	[UyeTipAdi] [nvarchar](30) NULL,
	[ISACTIVE] [bit] NULL,
	[ISDELETED] [bit] NULL,
	[ISCREDATE] [datetime] NULL,
	[ISMODDATE] [datetime] NULL,
	[CreUSERID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UyeTipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (100, N'Nikah Şekeri', 1, 0, CAST(0x0000A0FB01811796 AS DateTime), CAST(0x0000A0FB01811796 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (101, N'Bebek Şekeri', 1, 0, CAST(0x0000A0FB0183C763 AS DateTime), CAST(0x0000A0FB0183C763 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (102, N'Sünnet Şekeri', 1, 0, CAST(0x0000A0FB0183C764 AS DateTime), CAST(0x0000A0FB0183C764 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (103, N'Sepetler', 1, 0, CAST(0x0000A0FB0183C764 AS DateTime), CAST(0x0000A0FB0183C764 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (104, N'Çikolatalar', 1, 0, CAST(0x0000A0FB0183C765 AS DateTime), CAST(0x0000A0FB0183C765 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (105, N'Oda Süsleme', 1, 0, CAST(0x0000A0FB0183C765 AS DateTime), CAST(0x0000A0FB0183C765 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (106, N'Kına Malzemeleri', 1, 0, CAST(0x0000A0FB0183C765 AS DateTime), CAST(0x0000A0FB0183C765 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (107, N'Anı Defterleri', 1, 0, CAST(0x0000A0FB0183C766 AS DateTime), CAST(0x0000A0FB0183C766 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (108, N'Aksesuarlar', 1, 0, CAST(0x0000A0FB0183C766 AS DateTime), CAST(0x0000A0FB0183C766 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (109, N'Diş Buğdayı', 1, 0, CAST(0x0000A0FB0183C766 AS DateTime), CAST(0x0000A0FB0183C766 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (110, N'Yaş Günü', 1, 0, CAST(0x0000A0FB0183C768 AS DateTime), CAST(0x0000A0FB0183C768 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (111, N'Davetiyeler', 1, 0, CAST(0x0000A0FB0183C768 AS DateTime), CAST(0x0000A0FB0183C768 AS DateTime), 101, 101)
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (112, N'Toptan Satış', 1, 0, CAST(0x0000A0FB0183C769 AS DateTime), CAST(0x0000A0FB0183C769 AS DateTime), 101, 101)
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
SET IDENTITY_INSERT [dbo].[tblPicture] ON 

INSERT [dbo].[tblPicture] ([ID], [ProductID], [Picture1], [thumbsPicture1], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (15, 1028, N'Images/Products/gelin arabalı şemsiye 001.jpg', N'Images/Products/thumbs/gelin arabalı şemsiye 001s.jpg', 1, 0, CAST(0x0000A10101639311 AS DateTime), CAST(0x0000A10101639311 AS DateTime), 101, 101)
INSERT [dbo].[tblPicture] ([ID], [ProductID], [Picture1], [thumbsPicture1], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (16, 1029, N'Images/Products/img.jpg', N'Images/Products/thumbs/IMG_0432.JPG', 1, 0, CAST(0x0000A10200B3931D AS DateTime), CAST(0x0000A10200B3931D AS DateTime), 101, 101)
SET IDENTITY_INSERT [dbo].[tblPicture] OFF
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [SubCategoryID], [Price], [KdvDahil], [OldPrice], [ISCampaign], [Stock], [Size], [Detail], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (1028, N'gelin arabalı şemsiye', 200, CAST(2.00 AS Decimal(8, 2)), CAST(2.36 AS Decimal(8, 2)), CAST(3.00 AS Decimal(8, 2)), 1, 200, N'10*12 cm', N'Vitrin süsü olarak kullanıldığından güzel bir hatıradır.', 1, 0, CAST(0x0000A101016392D8 AS DateTime), CAST(0x0000A102001482E9 AS DateTime), 101, 103)
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [SubCategoryID], [Price], [KdvDahil], [OldPrice], [ISCampaign], [Stock], [Size], [Detail], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (1029, N'deneme', 206, CAST(1.00 AS Decimal(8, 2)), CAST(1.18 AS Decimal(8, 2)), NULL, 1, 65, N'5*8 cm', N'dene', 1, 0, CAST(0x0000A10200B392F8 AS DateTime), CAST(0x0000A10200B3CF27 AS DateTime), 101, 101)
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
SET IDENTITY_INSERT [dbo].[tblSepet] ON 

INSERT [dbo].[tblSepet] ([ID], [ProductID], [UyeID], [Adet], [ISACTIVE], [ISDELETED], [ISCREDATE], [AlimDetayi], [Tutar]) VALUES (43, 1028, 101, 25, 1, 1, CAST(0x0000A102000B5BFF AS DateTime), N'Gelin Adı :handan-Damat Adı :recep -Nikah Tarihi :22.11.2012 -Şeker :Cikolata -Mıknatıs :yok -Not:dsa', CAST(2.20 AS Decimal(8, 2)))
INSERT [dbo].[tblSepet] ([ID], [ProductID], [UyeID], [Adet], [ISACTIVE], [ISDELETED], [ISCREDATE], [AlimDetayi], [Tutar]) VALUES (44, 1028, 111, 1, 1, 1, CAST(0x0000A10200CA1337 AS DateTime), N'Gelin Adı :handan-Damat Adı :recep -Nikah Tarihi :08.11.2012 -Şeker :Cikolata -Mıknatıs :var -Not:avhjz', CAST(2.30 AS Decimal(8, 2)))
INSERT [dbo].[tblSepet] ([ID], [ProductID], [UyeID], [Adet], [ISACTIVE], [ISDELETED], [ISCREDATE], [AlimDetayi], [Tutar]) VALUES (45, 1028, 112, 32, 1, 0, CAST(0x0000A1020137478E AS DateTime), N'Gelin Adı :Ds-Damat Adı :Ds -Nikah Tarihi :22.11.2012 -Şeker :Lavanta -Mıknatıs :var -Not:Vsvc', CAST(2.10 AS Decimal(8, 2)))
INSERT [dbo].[tblSepet] ([ID], [ProductID], [UyeID], [Adet], [ISACTIVE], [ISDELETED], [ISCREDATE], [AlimDetayi], [Tutar]) VALUES (46, 1029, 101, 1, 1, 1, CAST(0x0000A1020145D4B0 AS DateTime), N'Bebek Adı :das -Doğum Tarihi :20.11.2012 -Şeker :Cikolata -Mıknatıs :yok -Not:dsa', CAST(1.20 AS Decimal(8, 2)))
INSERT [dbo].[tblSepet] ([ID], [ProductID], [UyeID], [Adet], [ISACTIVE], [ISDELETED], [ISCREDATE], [AlimDetayi], [Tutar]) VALUES (47, 1028, 101, 1, 1, 1, CAST(0x0000A10201466F89 AS DateTime), N'Gelin Adı :dsa-Damat Adı :dsa -Nikah Tarihi :28.11.2012 -Şeker :Cikolata -Mıknatıs :yok -Not:', CAST(2.20 AS Decimal(8, 2)))
INSERT [dbo].[tblSepet] ([ID], [ProductID], [UyeID], [Adet], [ISACTIVE], [ISDELETED], [ISCREDATE], [AlimDetayi], [Tutar]) VALUES (48, 1029, 101, 1, 1, 0, CAST(0x0000A1020146D010 AS DateTime), N'Bebek Adı :das -Doğum Tarihi :10.09.2012 -Şeker :Lavanta -Mıknatıs :var -Not:dsa', CAST(1.10 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[tblSepet] OFF
SET IDENTITY_INSERT [dbo].[tblSiparisDetaylari] ON 

INSERT [dbo].[tblSiparisDetaylari] ([SiparisDetayID], [SiparisID], [SiparisTipID], [ProductID], [Adet], [AlimDetayi], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISMODUSERID]) VALUES (33, 75132, 100, 1028, 25, N'Gelin Adı :handan-Damat Adı :recep -Nikah Tarihi :22.11.2012 -Şeker :Cikolata -Mıknatıs :yok -Not:dsa', 1, 0, CAST(0x0000A102000B6F36 AS DateTime), CAST(0x0000A102000B6F36 AS DateTime), 101)
INSERT [dbo].[tblSiparisDetaylari] ([SiparisDetayID], [SiparisID], [SiparisTipID], [ProductID], [Adet], [AlimDetayi], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISMODUSERID]) VALUES (34, 75133, 100, 1028, 1, N'Gelin Adı :handan-Damat Adı :recep -Nikah Tarihi :08.11.2012 -Şeker :Cikolata -Mıknatıs :var -Not:avhjz', 1, 0, CAST(0x0000A10200CAA366 AS DateTime), CAST(0x0000A10200CAA366 AS DateTime), 111)
INSERT [dbo].[tblSiparisDetaylari] ([SiparisDetayID], [SiparisID], [SiparisTipID], [ProductID], [Adet], [AlimDetayi], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISMODUSERID]) VALUES (35, 75134, 100, 1028, 32, N'Gelin Adı :Ds-Damat Adı :Ds -Nikah Tarihi :22.11.2012 -Şeker :Lavanta -Mıknatıs :var -Not:Vsvc', 1, 0, CAST(0x0000A10201377036 AS DateTime), CAST(0x0000A10201377036 AS DateTime), 112)
SET IDENTITY_INSERT [dbo].[tblSiparisDetaylari] OFF
SET IDENTITY_INSERT [dbo].[tblSiparisDurumlari] ON 

INSERT [dbo].[tblSiparisDurumlari] ([DurumID], [DurumAdi], [ISACTIVE], [ISDELETED]) VALUES (1, N'Onay Bekliyor', 1, 0)
INSERT [dbo].[tblSiparisDurumlari] ([DurumID], [DurumAdi], [ISACTIVE], [ISDELETED]) VALUES (2, N'Tedarik', 1, 0)
INSERT [dbo].[tblSiparisDurumlari] ([DurumID], [DurumAdi], [ISACTIVE], [ISDELETED]) VALUES (3, N'Hazırlanıyor', 1, 0)
INSERT [dbo].[tblSiparisDurumlari] ([DurumID], [DurumAdi], [ISACTIVE], [ISDELETED]) VALUES (4, N'Kargo', 1, 0)
INSERT [dbo].[tblSiparisDurumlari] ([DurumID], [DurumAdi], [ISACTIVE], [ISDELETED]) VALUES (5, N'Tamamlandı', 1, 0)
SET IDENTITY_INSERT [dbo].[tblSiparisDurumlari] OFF
SET IDENTITY_INSERT [dbo].[tblSiparisler] ON 

INSERT [dbo].[tblSiparisler] ([SiparisID], [UyeID], [DurumID], [SiparisToplamTutar], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISMODUSERID]) VALUES (75132, 101, 1, CAST(64.90 AS Decimal(8, 2)), 1, 0, CAST(0x0000A102000B6F24 AS DateTime), CAST(0x0000A102000B6F24 AS DateTime), 101)
INSERT [dbo].[tblSiparisler] ([SiparisID], [UyeID], [DurumID], [SiparisToplamTutar], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISMODUSERID]) VALUES (75133, 111, 1, CAST(2.71 AS Decimal(8, 2)), 1, 0, CAST(0x0000A10200CAA34F AS DateTime), CAST(0x0000A10200CAA34F AS DateTime), 111)
INSERT [dbo].[tblSiparisler] ([SiparisID], [UyeID], [DurumID], [SiparisToplamTutar], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISMODUSERID]) VALUES (75134, 112, 1, CAST(79.29 AS Decimal(8, 2)), 1, 0, CAST(0x0000A10201377024 AS DateTime), CAST(0x0000A10201377024 AS DateTime), 112)
SET IDENTITY_INSERT [dbo].[tblSiparisler] OFF
SET IDENTITY_INSERT [dbo].[tblSubCategory] ON 

INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (200, N'Gelin-Damat', 100, 1, 0, CAST(0x0000A0FB01846BD5 AS DateTime), CAST(0x0000A0FB01846BD5 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (201, N'Magnet', 100, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (202, N'Polyester', 100, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (203, N'Cam', 100, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (204, N'Çiçek', 100, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (205, N'Metal', 100, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (206, N'Kız Bebek', 101, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (207, N'Erkek Bebek', 101, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (208, N'İkiz', 101, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (209, N'Çubuk', 101, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (210, N'Biblo', 102, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (211, N'Kız Bebek', 103, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (212, N'Erkek Bebek', 103, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (213, N'Sünnet', 103, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (214, N'Nikah', 103, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (215, N'Çikolatalar', 104, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (216, N'Sünnet', 105, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (217, N'Bebek', 105, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (218, N'Kına', 106, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (219, N'Kına Tepsisi', 106, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (220, N'Sepet', 106, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (221, N'Kınalık', 106, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (222, N'Kız Bebek', 107, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (223, N'Erkek Bebek', 107, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (224, N'Sünnet', 107, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (225, N'Nikah', 107, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (226, N'Aksesuarlar', 108, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (227, N'Biblo', 109, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (228, N'1 Yaş Bibloları', 110, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (229, N'1 Yaş Anı Defterleri', 110, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SubCategoryName], [CategoryID], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [ISCREUSERID], [ISMODUSERID]) VALUES (230, N'Aksesuarlar', 110, 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101, 101)
SET IDENTITY_INSERT [dbo].[tblSubCategory] OFF
SET IDENTITY_INSERT [dbo].[tblUyeler] ON 

INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (101, 1, N'Recep Şentürk', N'rcpsntrk@hotmail.com', N'05319721630', N'E', N'5b42741fa51b0d8e42ca6a3495180f7fcc2e7fcf1cb081815faff52823943111', CAST(0x0000808600000000 AS DateTime), N'Göl sok. No:13', N'İstanbul', N'Bahçelievler', 1, 0, CAST(0x0000A0FB017F308B AS DateTime), CAST(0x0000A0FB017F308B AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (102, 3, N'Yaşar Şentürk', N'yasar.senturk83@hotmail.com', N'05542118207', N'E', N'5b42741fa51b0d8e42ca6a3495180f7fcc2e7fcf1cb081815faff52823943111', CAST(0x0000783100000000 AS DateTime), N'Cennet', N'İstanbul', N'KüçükÇekmece', 1, 0, CAST(0x0000A0FC00C0F8FF AS DateTime), CAST(0x0000A0FC00C0F8FF AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (103, 1, N'Burcu şentürk', N'sir__recep@hotmail.com', N'02124240410', N'K', N'5a01b25ecaccf9112f5c8a16fb087465456d8cb10ca94712be00ce95233f22fe', CAST(0x00007A9000000000 AS DateTime), N'yeni mah küme sok no 35', N'K.Çekmöece', N'YENİ MAH', 1, 0, CAST(0x0000A0FC00DCEE0E AS DateTime), CAST(0x0000A0FC00DCEE0E AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (104, 3, N'deneme', N's@ho.com', N'05', N'E', N'44c8031cb036a7350d8b9b8603af662a4b9cdbd2f96e8d5de5af435c9c35da69', CAST(0x00009D9700000000 AS DateTime), N'sad', N'dsa', N'das', 1, 0, CAST(0x0000A0FC01097D59 AS DateTime), CAST(0x0000A0FC01097D59 AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (105, 3, N'dsa', N'das@h.com', N'21', N'E', N'aa58b21b01d6b8a99c1a5856962dbac36c758a79dc0a77c2e013ce2c39ecdc8a', CAST(0x0000A4B400000000 AS DateTime), N'dsa', N'dsa', N'dsa', 1, 0, CAST(0x0000A0FC010A3927 AS DateTime), CAST(0x0000A0FC010A3927 AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (106, 3, N'Fatih Kırbacı', N'fatihfx1@hotmail.com', N'', N'E', N'163ebb063365113fba6e51f74d0a62280d992596766690389f41f117defe3035', CAST(0x0000784F00000000 AS DateTime), N'', N'', N'', 1, 0, CAST(0x0000A0FC0117774B AS DateTime), CAST(0x0000A0FC0117774B AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (107, 3, N'leyla uçar', N'iremnaz27@hotmail.com', N'05389812647', N'K', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', CAST(0x000078BD00000000 AS DateTime), N'', N'istanbul', N'esenyurt', 1, 0, CAST(0x0000A0FC0126CCE3 AS DateTime), CAST(0x0000A0FC0126CCE3 AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (108, 3, N'das', N'das@ho.com', N'123', N'E', N'785f3ec7eb32f30b90cd0fcf3657d388b5ff4297f2f9716ff66e9b69c05ddd09', CAST(0x00009D0B00000000 AS DateTime), N'das', N'dsa', N'dsa', 1, 0, CAST(0x0000A0FE0001AE3B AS DateTime), CAST(0x0000A0FE0001AE3B AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (109, 3, N'da', N'd@ho.com', N'2', N'E', N'f9c7af7ebcbf098b9f5f37361d1b168bb2e5b98d930ceef0f055377a8c94db61', CAST(0x0000A34700000000 AS DateTime), N'da', N'dsa', N'das', 1, 0, CAST(0x0000A0FE00029694 AS DateTime), CAST(0x0000A0FE00029694 AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (110, 3, N'cc', N'cc@ho.com', N'2', N'E', N'9b7ecc6eeb83abf9ade10fe38865df4499be3568dcc507ae2ec3b44989cb0093', CAST(0x0000A34800000000 AS DateTime), N'dsa', N'dsa', N'das', 1, 0, CAST(0x0000A0FE00053450 AS DateTime), CAST(0x0000A0FE00053450 AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (111, 3, N'handan acar', N'handan_acar60@hotmail.com', N'05412924578', N'K', N'4a287c46ccccdc612af1f9dac697811949fee510940346c992f3ac47211771e9', CAST(0x0000801100000000 AS DateTime), N'Sefakoy', N'istanbul', N'kcekmece', 1, 0, CAST(0x0000A0FF011AD6CA AS DateTime), CAST(0x0000A0FF011AD6CA AS DateTime), NULL)
INSERT [dbo].[tblUyeler] ([UyeID], [UyeTipID], [UyeAdi], [UyeMail], [UyeTel], [UyeCinsiyeti], [UyeSifresi], [UyeDogTarihi], [UyeAdresi], [AdresIl], [AdresIlce], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [Aktivasyon]) VALUES (112, 3, N'Deneme ipad', N'Dene@h.com', N'77', N'E', N'f9c7af7ebcbf098b9f5f37361d1b168bb2e5b98d930ceef0f055377a8c94db61', CAST(0x0000A4DE00000000 AS DateTime), N'Gf', N'İst', N'Bahc', 1, 0, CAST(0x0000A102013561D2 AS DateTime), CAST(0x0000A102013561D2 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tblUyeler] OFF
SET IDENTITY_INSERT [dbo].[tblUyeTipleri] ON 

INSERT [dbo].[tblUyeTipleri] ([UyeTipID], [UyeTipAdi], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [CreUSERID]) VALUES (1, N'Admin', 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101)
INSERT [dbo].[tblUyeTipleri] ([UyeTipID], [UyeTipAdi], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [CreUSERID]) VALUES (2, N'Moderatör', 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101)
INSERT [dbo].[tblUyeTipleri] ([UyeTipID], [UyeTipAdi], [ISACTIVE], [ISDELETED], [ISCREDATE], [ISMODDATE], [CreUSERID]) VALUES (3, N'User', 1, 0, CAST(0x0000A0FB00000000 AS DateTime), CAST(0x0000A0FB00000000 AS DateTime), 101)
SET IDENTITY_INSERT [dbo].[tblUyeTipleri] OFF
ALTER TABLE [dbo].[tblPicture]  WITH CHECK ADD  CONSTRAINT [FK_tblPicture_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblPicture] CHECK CONSTRAINT [FK_tblPicture_tblProduct]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblSubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[tblSubCategory] ([SubCategoryID])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblSubCategory]
GO
ALTER TABLE [dbo].[tblProductComment]  WITH CHECK ADD  CONSTRAINT [FK_tblProductComment_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblProductComment] CHECK CONSTRAINT [FK_tblProductComment_tblProduct]
GO
ALTER TABLE [dbo].[tblProductComment]  WITH CHECK ADD  CONSTRAINT [FK_tblProductComment_tblUyeler] FOREIGN KEY([UyeID])
REFERENCES [dbo].[tblUyeler] ([UyeID])
GO
ALTER TABLE [dbo].[tblProductComment] CHECK CONSTRAINT [FK_tblProductComment_tblUyeler]
GO
ALTER TABLE [dbo].[tblSepet]  WITH CHECK ADD  CONSTRAINT [FK_tblSepet_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblSepet_tblProduct]
GO
ALTER TABLE [dbo].[tblSepet]  WITH CHECK ADD  CONSTRAINT [FK_tblSepet_tblUyeler] FOREIGN KEY([UyeID])
REFERENCES [dbo].[tblUyeler] ([UyeID])
GO
ALTER TABLE [dbo].[tblSepet] CHECK CONSTRAINT [FK_tblSepet_tblUyeler]
GO
ALTER TABLE [dbo].[tblSiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_tblSiparisDetaylari_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tblSiparisDetaylari] CHECK CONSTRAINT [FK_tblSiparisDetaylari_tblProduct]
GO
ALTER TABLE [dbo].[tblSiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_tblSiparisDetaylari_tblSiparisler] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[tblSiparisler] ([SiparisID])
GO
ALTER TABLE [dbo].[tblSiparisDetaylari] CHECK CONSTRAINT [FK_tblSiparisDetaylari_tblSiparisler]
GO
ALTER TABLE [dbo].[tblSiparisler]  WITH CHECK ADD  CONSTRAINT [FK_tblSiparisler_tblSiparisDurumlari] FOREIGN KEY([DurumID])
REFERENCES [dbo].[tblSiparisDurumlari] ([DurumID])
GO
ALTER TABLE [dbo].[tblSiparisler] CHECK CONSTRAINT [FK_tblSiparisler_tblSiparisDurumlari]
GO
ALTER TABLE [dbo].[tblSiparisler]  WITH CHECK ADD  CONSTRAINT [FK_tblSiparisler_tblUyeler] FOREIGN KEY([UyeID])
REFERENCES [dbo].[tblUyeler] ([UyeID])
GO
ALTER TABLE [dbo].[tblSiparisler] CHECK CONSTRAINT [FK_tblSiparisler_tblUyeler]
GO
ALTER TABLE [dbo].[tblSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_tblSubCategory_tblCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblSubCategory] CHECK CONSTRAINT [FK_tblSubCategory_tblCategory]
GO
ALTER TABLE [dbo].[tblUyeIletisim]  WITH CHECK ADD  CONSTRAINT [FK_tblUyeIletisim_tblUyeler] FOREIGN KEY([UyeID])
REFERENCES [dbo].[tblUyeler] ([UyeID])
GO
ALTER TABLE [dbo].[tblUyeIletisim] CHECK CONSTRAINT [FK_tblUyeIletisim_tblUyeler]
GO
ALTER TABLE [dbo].[tblUyeler]  WITH CHECK ADD  CONSTRAINT [FK_tblUyeler_tblUyeTipleri] FOREIGN KEY([UyeTipID])
REFERENCES [dbo].[tblUyeTipleri] ([UyeTipID])
GO
ALTER TABLE [dbo].[tblUyeler] CHECK CONSTRAINT [FK_tblUyeler_tblUyeTipleri]
GO
USE [master]
GO
ALTER DATABASE [DB121031223433] SET  READ_WRITE 
GO
