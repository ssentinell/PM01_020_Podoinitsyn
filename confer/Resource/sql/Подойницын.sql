USE [master]
GO
/****** Object:  Database [020_Подойницын_3Квалиф ПМ01 ]    Script Date: 15.04.2024 12:37:51 ******/
CREATE DATABASE [020_Подойницын_3Квалиф ПМ01 ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'020_Подойницын_3Квалиф ПМ01', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\020_Подойницын_3Квалиф ПМ01 .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'020_Подойницын_3Квалиф ПМ01 _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\020_Подойницын_3Квалиф ПМ01 _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [020_Подойницын_3Квалиф ПМ01 ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ARITHABORT OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET  MULTI_USER 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET QUERY_STORE = OFF
GO
USE [020_Подойницын_3Квалиф ПМ01 ]
GO
/****** Object:  Table [dbo].[City]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Code2] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Name_Eng] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[Days] [int] NOT NULL,
	[City_ID] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jury]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jury](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Tel] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[SpecialityID] [int] NOT NULL,
 CONSTRAINT [PK_Jury] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderators]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderators](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Tel] [nvarchar](max) NOT NULL,
	[SpecialityID] [int] NOT NULL,
	[Event] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Moderators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizers]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Tel] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Organizers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Patronymic] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Tel] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Participants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialities]    Script Date: 15.04.2024 12:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialities](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_Specialities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (252, N'AB', 895, N'Абхазия', N'Abkhazia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (253, N'AU', 36, N'Австралия', N'Australia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (254, N'AT', 40, N'Австрия', N'Austria')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (255, N'AZ', 31, N'Азербайджан', N'Azerbaijan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (256, N'AL', 8, N'Албания', N'Albania')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (257, N'DZ', 12, N'Алжир', N'Algeria')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (258, N'AS', 16, N'Американское Самоа', N'American Samoa')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (259, N'AI', 660, N'Ангилья', N'Anguilla')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (260, N'AO', 24, N'Ангола', N'Angola')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (261, N'AD', 20, N'Андорра', N'Andorra')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (262, N'AQ', 10, N'Антарктида', N'Antarctica')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (263, N'AG', 28, N'Антигуа и Барбуда', N'Antigua and Barbuda')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (264, N'AR', 32, N'Аргентина', N'Argentina')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (265, N'AM', 51, N'Армения', N'Armenia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (266, N'AW', 533, N'Аруба', N'Aruba')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (267, N'AF', 4, N'Афганистан', N'Afghanistan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (268, N'BS', 44, N'Багамы', N'Bahamas')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (269, N'BD', 50, N'Бангладеш', N'Bangladesh')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (270, N'BB', 52, N'Барбадос', N'Barbados')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (271, N'BH', 48, N'Бахрейн', N'Bahrain')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (272, N'BY', 112, N'Беларусь', N'Belarus')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (273, N'BZ', 84, N'Белиз', N'Belize')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (274, N'BE', 56, N'Бельгия', N'Belgium')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (275, N'BJ', 204, N'Бенин', N'Benin')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (276, N'BM', 60, N'Бермуды', N'Bermuda')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (277, N'BG', 100, N'Болгария', N'Bulgaria')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (278, N'BO', 68, N'Боливия, Многонациональное Государство', N'Bolivia, plurinational state of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (279, N'BQ', 535, N'Бонайре, Саба и Синт-Эстатиус', N'Bonaire, Sint Eustatius and Saba')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (280, N'BA', 70, N'Босния и Герцеговина', N'Bosnia and Herzegovina')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (281, N'BW', 72, N'Ботсвана', N'Botswana')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (282, N'BR', 76, N'Бразилия', N'Brazil')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (283, N'IO', 86, N'Британская территория в Индийском океане', N'British Indian Ocean Territory')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (284, N'BN', 96, N'Бруней-Даруссалам', N'Brunei Darussalam')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (285, N'BF', 854, N'Буркина-Фасо', N'Burkina Faso')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (286, N'BI', 108, N'Бурунди', N'Burundi')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (287, N'BT', 64, N'Бутан', N'Bhutan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (288, N'VU', 548, N'Вануату', N'Vanuatu')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (289, N'HU', 348, N'Венгрия', N'Hungary')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (290, N'VE', 862, N'Венесуэла Боливарианская Республика', N'Venezuela')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (291, N'VG', 92, N'Виргинские острова, Британские', N'Virgin Islands, British')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (292, N'VI', 850, N'Виргинские острова, США', N'Virgin Islands, U.S.')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (293, N'VN', 704, N'Вьетнам', N'Vietnam')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (294, N'GA', 266, N'Габон', N'Gabon')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (295, N'HT', 332, N'Гаити', N'Haiti')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (296, N'GY', 328, N'Гайана', N'Guyana')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (297, N'GM', 270, N'Гамбия', N'Gambia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (298, N'GH', 288, N'Гана', N'Ghana')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (299, N'GP', 312, N'Гваделупа', N'Guadeloupe')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (300, N'GT', 320, N'Гватемала', N'Guatemala')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (301, N'GN', 324, N'Гвинея', N'Guinea')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (302, N'GW', 624, N'Гвинея-Бисау', N'Guinea-Bissau')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (303, N'DE', 276, N'Германия', N'Germany')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (304, N'GG', 831, N'Гернси', N'Guernsey')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (305, N'GI', 292, N'Гибралтар', N'Gibraltar')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (306, N'HN', 340, N'Гондурас', N'Honduras')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (307, N'HK', 344, N'Гонконг', N'Hong Kong')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (308, N'GD', 308, N'Гренада', N'Grenada')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (309, N'GL', 304, N'Гренландия', N'Greenland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (310, N'GR', 300, N'Греция', N'Greece')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (311, N'GE', 268, N'Грузия', N'Georgia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (312, N'GU', 316, N'Гуам', N'Guam')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (313, N'DK', 208, N'Дания', N'Denmark')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (314, N'JE', 832, N'Джерси', N'Jersey')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (315, N'DJ', 262, N'Джибути', N'Djibouti')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (316, N'DM', 212, N'Доминика', N'Dominica')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (317, N'DO', 214, N'Доминиканская Республика', N'Dominican Republic')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (318, N'EG', 818, N'Египет', N'Egypt')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (319, N'ZM', 894, N'Замбия', N'Zambia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (320, N'EH', 732, N'Западная Сахара', N'Western Sahara')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (321, N'ZW', 716, N'Зимбабве', N'Zimbabwe')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (322, N'IL', 376, N'Израиль', N'Israel')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (323, N'IN', 356, N'Индия', N'India')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (324, N'ID', 360, N'Индонезия', N'Indonesia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (325, N'JO', 400, N'Иордания', N'Jordan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (326, N'IQ', 368, N'Ирак', N'Iraq')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (327, N'IR', 364, N'Иран, Исламская Республика', N'Iran, Islamic Republic of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (328, N'IE', 372, N'Ирландия', N'Ireland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (329, N'IS', 352, N'Исландия', N'Iceland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (330, N'ES', 724, N'Испания', N'Spain')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (331, N'IT', 380, N'Италия', N'Italy')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (332, N'YE', 887, N'Йемен', N'Yemen')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (333, N'CV', 132, N'Кабо-Верде', N'Cape Verde')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (334, N'KZ', 398, N'Казахстан', N'Kazakhstan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (335, N'KH', 116, N'Камбоджа', N'Cambodia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (336, N'CM', 120, N'Камерун', N'Cameroon')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (337, N'CA', 124, N'Канада', N'Canada')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (338, N'QA', 634, N'Катар', N'Qatar')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (339, N'KE', 404, N'Кения', N'Kenya')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (340, N'CY', 196, N'Кипр', N'Cyprus')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (341, N'KG', 417, N'Киргизия', N'Kyrgyzstan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (342, N'KI', 296, N'Кирибати', N'Kiribati')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (343, N'CN', 156, N'Китай', N'China')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (344, N'CC', 166, N'Кокосовые (Килинг) острова', N'Cocos (Keeling) Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (345, N'CO', 170, N'Колумбия', N'Colombia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (346, N'KM', 174, N'Коморы', N'Comoros')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (347, N'CG', 178, N'Конго', N'Congo')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (348, N'CD', 180, N'Конго, Демократическая Республика', N'Congo, Democratic Republic of the')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (349, N'KP', 408, N'Корея, Народно-Демократическая Республика', N'Korea, Democratic People''s republic of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (350, N'KR', 410, N'Корея, Республика', N'Korea, Republic of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (351, N'CR', 188, N'Коста-Рика', N'Costa Rica')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (352, N'CI', 384, N'Кот д''Ивуар', N'Cote d''Ivoire')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (353, N'CU', 192, N'Куба', N'Cuba')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (354, N'KW', 414, N'Кувейт', N'Kuwait')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (355, N'CW', 531, N'Кюрасао', N'Curaçao')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (356, N'LA', 418, N'Лаос', N'Lao People''s Democratic Republic')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (357, N'LV', 428, N'Латвия', N'Latvia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (358, N'LS', 426, N'Лесото', N'Lesotho')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (359, N'LB', 422, N'Ливан', N'Lebanon')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (360, N'LY', 434, N'Ливийская Арабская Джамахирия', N'Libyan Arab Jamahiriya')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (361, N'LR', 430, N'Либерия', N'Liberia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (362, N'LI', 438, N'Лихтенштейн', N'Liechtenstein')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (363, N'LT', 440, N'Литва', N'Lithuania')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (364, N'LU', 442, N'Люксембург', N'Luxembourg')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (365, N'MU', 480, N'Маврикий', N'Mauritius')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (366, N'MR', 478, N'Мавритания', N'Mauritania')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (367, N'MG', 450, N'Мадагаскар', N'Madagascar')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (368, N'YT', 175, N'Майотта', N'Mayotte')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (369, N'MO', 446, N'Макао', N'Macao')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (370, N'MW', 454, N'Малави', N'Malawi')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (371, N'MY', 458, N'Малайзия', N'Malaysia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (372, N'ML', 466, N'Мали', N'Mali')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (373, N'UM', 581, N'Малые Тихоокеанские отдаленные острова Соединенных Штатов', N'United States Minor Outlying Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (374, N'MV', 462, N'Мальдивы', N'Maldives')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (375, N'MT', 470, N'Мальта', N'Malta')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (376, N'MA', 504, N'Марокко', N'Morocco')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (377, N'MQ', 474, N'Мартиника', N'Martinique')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (378, N'MH', 584, N'Маршалловы острова', N'Marshall Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (379, N'MX', 484, N'Мексика', N'Mexico')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (380, N'FM', 583, N'Микронезия, Федеративные Штаты', N'Micronesia, Federated States of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (381, N'MZ', 508, N'Мозамбик', N'Mozambique')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (382, N'MD', 498, N'Молдова, Республика', N'Moldova')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (383, N'MC', 492, N'Монако', N'Monaco')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (384, N'MN', 496, N'Монголия', N'Mongolia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (385, N'MS', 500, N'Монтсеррат', N'Montserrat')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (386, N'MM', 104, N'Мьянма', N'Myanmar')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (387, N'NA', 516, N'Намибия', N'Namibia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (388, N'NR', 520, N'Науру', N'Nauru')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (389, N'NP', 524, N'Непал', N'Nepal')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (390, N'NE', 562, N'Нигер', N'Niger')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (391, N'NG', 566, N'Нигерия', N'Nigeria')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (392, N'NL', 528, N'Нидерланды', N'Netherlands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (393, N'NI', 558, N'Никарагуа', N'Nicaragua')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (394, N'NU', 570, N'Ниуэ', N'Niue')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (395, N'NZ', 554, N'Новая Зеландия', N'New Zealand')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (396, N'NC', 540, N'Новая Каледония', N'New Caledonia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (397, N'NO', 578, N'Норвегия', N'Norway')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (398, N'AE', 784, N'Объединенные Арабские Эмираты', N'United Arab Emirates')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (399, N'OM', 512, N'Оман', N'Oman')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (400, N'BV', 74, N'Остров Буве', N'Bouvet Island')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (401, N'IM', 833, N'Остров Мэн', N'Isle of Man')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (402, N'NF', 574, N'Остров Норфолк', N'Norfolk Island')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (403, N'CX', 162, N'Остров Рождества', N'Christmas Island')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (404, N'HM', 334, N'Остров Херд и острова Макдональд', N'Heard Island and McDonald Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (405, N'KY', 136, N'Острова Кайман', N'Cayman Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (406, N'CK', 184, N'Острова Кука', N'Cook Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (407, N'TC', 796, N'Острова Теркс и Кайкос', N'Turks and Caicos Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (408, N'PK', 586, N'Пакистан', N'Pakistan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (409, N'PW', 585, N'Палау', N'Palau')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (410, N'PS', 275, N'Палестинская территория, оккупированная', N'Palestinian Territory, Occupied')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (411, N'PA', 591, N'Панама', N'Panama')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (412, N'VA', 336, N'Папский Престол (Государство — город Ватикан)', N'Holy See (Vatican City State)')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (413, N'PG', 598, N'Папуа-Новая Гвинея', N'Papua New Guinea')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (414, N'PY', 600, N'Парагвай', N'Paraguay')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (415, N'PE', 604, N'Перу', N'Peru')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (416, N'PN', 612, N'Питкерн', N'Pitcairn')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (417, N'PL', 616, N'Польша', N'Poland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (418, N'PT', 620, N'Португалия', N'Portugal')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (419, N'PR', 630, N'Пуэрто-Рико', N'Puerto Rico')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (420, N'MK', 807, N'Республика Македония', N'Macedonia, The Former Yugoslav Republic Of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (421, N'RE', 638, N'Реюньон', N'Reunion')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (422, N'RU', 643, N'Россия', N'Russian Federation')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (423, N'RW', 646, N'Руанда', N'Rwanda')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (424, N'RO', 642, N'Румыния', N'Romania')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (425, N'WS', 882, N'Самоа', N'Samoa')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (426, N'SM', 674, N'Сан-Марино', N'San Marino')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (427, N'ST', 678, N'Сан-Томе и Принсипи', N'Sao Tome and Principe')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (428, N'SA', 682, N'Саудовская Аравия', N'Saudi Arabia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (429, N'SZ', 748, N'Свазиленд', N'Swaziland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (430, N'SH', 654, N'Святая Елена, Остров вознесения, Тристан-да-Кунья', N'Saint Helena, Ascension And Tristan Da Cunha')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (431, N'MP', 580, N'Северные Марианские острова', N'Northern Mariana Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (432, N'BL', 652, N'Сен-Бартельми', N'Saint Barthélemy')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (433, N'MF', 663, N'Сен-Мартен', N'Saint Martin (French Part)')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (434, N'SN', 686, N'Сенегал', N'Senegal')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (435, N'VC', 670, N'Сент-Винсент и Гренадины', N'Saint Vincent and the Grenadines')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (436, N'LC', 662, N'Сент-Люсия', N'Saint Lucia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (437, N'KN', 659, N'Сент-Китс и Невис', N'Saint Kitts and Nevis')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (438, N'PM', 666, N'Сент-Пьер и Микелон', N'Saint Pierre and Miquelon')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (439, N'RS', 688, N'Сербия', N'Serbia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (440, N'SC', 690, N'Сейшелы', N'Seychelles')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (441, N'SG', 702, N'Сингапур', N'Singapore')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (442, N'SX', 534, N'Синт-Мартен', N'Sint Maarten')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (443, N'SY', 760, N'Сирийская Арабская Республика', N'Syrian Arab Republic')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (444, N'SK', 703, N'Словакия', N'Slovakia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (445, N'SI', 705, N'Словения', N'Slovenia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (446, N'GB', 826, N'Соединенное Королевство', N'United Kingdom')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (447, N'US', 840, N'Соединенные Штаты', N'United States')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (448, N'SB', 90, N'Соломоновы острова', N'Solomon Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (449, N'SO', 706, N'Сомали', N'Somalia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (450, N'SD', 729, N'Судан', N'Sudan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (451, N'SR', 740, N'Суринам', N'Suriname')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (452, N'SL', 694, N'Сьерра-Леоне', N'Sierra Leone')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (453, N'TJ', 762, N'Таджикистан', N'Tajikistan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (454, N'TH', 764, N'Таиланд', N'Thailand')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (455, N'TW', 158, N'Тайвань (Китай)', N'Taiwan, Province of China')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (456, N'TZ', 834, N'Танзания, Объединенная Республика', N'Tanzania, United Republic Of')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (457, N'TL', 626, N'Тимор-Лесте', N'Timor-Leste')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (458, N'TG', 768, N'Того', N'Togo')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (459, N'TK', 772, N'Токелау', N'Tokelau')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (460, N'TO', 776, N'Тонга', N'Tonga')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (461, N'TT', 780, N'Тринидад и Тобаго', N'Trinidad and Tobago')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (462, N'TV', 798, N'Тувалу', N'Tuvalu')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (463, N'TN', 788, N'Тунис', N'Tunisia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (464, N'TM', 795, N'Туркмения', N'Turkmenistan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (465, N'TR', 792, N'Турция', N'Turkey')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (466, N'UG', 800, N'Уганда', N'Uganda')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (467, N'UZ', 860, N'Узбекистан', N'Uzbekistan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (468, N'UA', 804, N'Украина', N'Ukraine')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (469, N'WF', 876, N'Уоллис и Футуна', N'Wallis and Futuna')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (470, N'UY', 858, N'Уругвай', N'Uruguay')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (471, N'FO', 234, N'Фарерские острова', N'Faroe Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (472, N'FJ', 242, N'Фиджи', N'Fiji')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (473, N'PH', 608, N'Филиппины', N'Philippines')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (474, N'FI', 246, N'Финляндия', N'Finland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (475, N'FK', 238, N'Фолклендские острова (Мальвинские)', N'Falkland Islands (Malvinas)')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (476, N'FR', 250, N'Франция', N'France')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (477, N'GF', 254, N'Французская Гвиана', N'French Guiana')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (478, N'PF', 258, N'Французская Полинезия', N'French Polynesia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (479, N'TF', 260, N'Французские Южные территории', N'French Southern Territories')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (480, N'HR', 191, N'Хорватия', N'Croatia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (481, N'CF', 140, N'Центрально-Африканская Республика', N'Central African Republic')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (482, N'TD', 148, N'Чад', N'Chad')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (483, N'ME', 499, N'Черногория', N'Montenegro')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (484, N'CZ', 203, N'Чешская Республика', N'Czech Republic')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (485, N'CL', 152, N'Чили', N'Chile')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (486, N'CH', 756, N'Швейцария', N'Switzerland')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (487, N'SE', 752, N'Швеция', N'Sweden')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (488, N'SJ', 744, N'Шпицберген и Ян Майен', N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (489, N'LK', 144, N'Шри-Ланка', N'Sri Lanka')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (490, N'EC', 218, N'Эквадор', N'Ecuador')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (491, N'GQ', 226, N'Экваториальная Гвинея', N'Equatorial Guinea')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (492, N'AX', 248, N'Эландские острова', N'Åland Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (493, N'SV', 222, N'Эль-Сальвадор', N'El Salvador')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (494, N'ER', 232, N'Эритрея', N'Eritrea')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (495, N'EE', 233, N'Эстония', N'Estonia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (496, N'ET', 231, N'Эфиопия', N'Ethiopia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (497, N'ZA', 710, N'Южная Африка', N'South Africa')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (498, N'GS', 239, N'Южная Джорджия и Южные Сандвичевы острова', N'South Georgia and the South Sandwich Islands')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (499, N'OS', 896, N'Южная Осетия', N'South Ossetia')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (500, N'SS', 728, N'Южный Судан', N'South Sudan')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (501, N'JM', 388, N'Ямайка', N'Jamaica')
GO
INSERT [dbo].[Country] ([ID], [Code], [Code2], [Name], [Name_Eng]) VALUES (502, N'JP', 392, N'Япония', N'Japan')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Jury] ON 
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (21, N'Верона', N'Галкина', N'Васильевна', N'obuckridge@sipes.com', CAST(N'1969-05-18' AS Date), 252, N'7(880)544-61-83', N'HHikbP', N'foto21.jpg', N'ж', 3)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (22, N'Айлин', N'Герасимова', N'Ефимовна', N'loraine.aufderhar@johnston.info', CAST(N'1966-06-09' AS Date), 252, N'7(835)478-61-60', N'TuhRzy', N'foto22.jpg', N'ж', 3)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (23, N'Августин', N'Большаков', N'Алексеевич', N'juanita.kuvalis@yahoo.com', CAST(N'1978-07-12' AS Date), 252, N'7(173)770-55-13', N'4Y83lz', N'foto23.jpg', N'м', 1)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (24, N'Ким', N'Морозов', N'Демьянович', N'ibode@lebsack.com', CAST(N'1981-10-11' AS Date), 252, N'7(518)761-85-69', N'z0q7Co', N'foto24.jpg', N'м', 1)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (25, N'Лука', N'Кошелев', N'Артёмович', N'lilly.rodriguez@yahoo.com', CAST(N'1995-05-30' AS Date), 252, N'7(375)644-35-80', N'uB8I2Z', N'foto25.jpg', N'м', 1)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (26, N'Марина', N'Ларионова', N'Владимировна', N'sandrine84@gmail.com', CAST(N'1950-06-06' AS Date), 252, N'7(521)121-28-90', N'o7Cjwu', N'foto26.jpg', N'ж', 1)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (27, N'Марфа', N'Маслова', N'Феликсовна', N'pearlie.watsica@wintheiser.com', CAST(N'1997-11-22' AS Date), 252, N'7(615)741-11-77', N'zC4bi7', N'foto27.jpg', N'ж', 2)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (28, N'Вениамин', N'Гришин', N'Петрович', N'kaela97@hotmail.com', CAST(N'1954-10-15' AS Date), 252, N'7(420)788-04-09', N'ubeQbm', N'foto28.jpg', N'м', 5)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (29, N'Владислав', N'Гришин', N'Аркадьевич', N'gino.baumbach@gmail.com', CAST(N'1950-08-31' AS Date), 252, N'7(207)088-79-39', N'16BLjl', N'foto29.jpg', N'м', 1)
GO
INSERT [dbo].[Jury] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender], [SpecialityID]) VALUES (30, N'Габи', N'Корнилова', N'Георгьевна', N'deja76@mante.info', CAST(N'1962-12-26' AS Date), 252, N'7(809)651-85-96', N'XLleqI', N'foto30.jpg', N'ж', 5)
GO
SET IDENTITY_INSERT [dbo].[Jury] OFF
GO
SET IDENTITY_INSERT [dbo].[Moderators] ON 
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (1, N'Виктория', N'Царева', N'Давидовна', N'ж', N'iunhxq41tgr5@tutanota.com', CAST(N'1988-07-03' AS Date), 252, N'7(567)103-73-32', 1, N'IT в бизнесе', N'FYi396Dd5u', N'foto9.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (2, N'Дмитрий', N'Зорин', N'Маркович', N'м', N'ofdt4z1bijq0@tutanota.com', CAST(N'1993-09-07' AS Date), 252, N'7(79)644-01-06', 1, N'IT в бизнесе', N'7gi7E8K4Ng', N'foto10.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (3, N'Анна', N'Зотова', N'Тимуровна', N'ж', N'ac6yxzg7rl5k@mail.com', CAST(N'1990-09-21' AS Date), 252, N'7(488)643-19-98', 2, N'Разработка приложений', N'3L3eA5eEg3', N'foto8.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (4, N'Тимур', N'Соловьев', N'Константинович', N'м', N'b1p4ur8nsedj@yahoo.com', CAST(N'1992-09-03' AS Date), 252, N'7(1828)504-39-49', 3, N'IT-инфраструктура', N'Si8S5kS83v', N'foto11.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (5, N'Александр', N'Малахов', N'Фёдорович', N'м', N'wyo6k9emv1j5@mail.com', CAST(N'1957-05-18' AS Date), 252, N'7(905)793-68-23', 2, N'Разработка приложений', N'T83vfX2Z3b', N'foto12.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (6, N'Марк', N'Зорин', N'Ярославович', N'м', N'g7kwp8lu65xi@tutanota.com', CAST(N'1961-03-09' AS Date), 252, N'7(54)522-60-54', 4, N'Стартапы', N'25cPn58HxV', N'foto13.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (7, N'Ева', N'Егорова', N'Михайловна', N'ж', N'doj5r1m8xnky@gmail.com', CAST(N'1987-06-15' AS Date), 252, N'7(05)441-48-14', 1, N'IT в бизнесе', N'3z86YDzaX8', N'foto14.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (8, N'Кристина', N'Гущина', N'Львовна', N'ж', N'bxk06h5touyr@mail.com', CAST(N'1966-06-28' AS Date), 252, N'7(023)826-25-26', 5, N'Информационная безопасность', N't8F9hZXp89', N'foto16.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (9, N'Виктория', N'Кудрявцева', N'Романовна', N'ж', N'26yf8xbcntgp@gmail.com', CAST(N'1953-01-27' AS Date), 252, N'7(7804)582-64-90', 2, N'Разработка приложений', N'92mARR3gu4', N'foto17.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (10, N'Александра', N'Новикова', N'Александровна', N'ж', N'0z4fvq65c7tg@gmail.com', CAST(N'1982-09-02' AS Date), 252, N'7(1472)122-56-07', 4, N'Стартапы', N'Kf64Y6rhZ3', N'foto18.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (11, N'Родион', N'Масленников', N'Филиппович', N'м', N'3kma18t5furi@gmail.com', CAST(N'1952-06-09' AS Date), 252, N'7(23)912-71-67', 4, N'Стартапы', N's7iAYE9d38', N'foto19.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (12, N'Тимур', N'Иванов', N'Иванович', N'м', N'ws7nxyhd6g1o@yahoo.com', CAST(N'1955-08-30' AS Date), 252, N'7(5939)489-85-18', 5, N'Информационная безопасность', N'3Ga9jfT9D2', N'foto20.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (13, N'Сергей', N'Иванов', N'Степанович', N'м', N'oitzvs1mylj2@gmail.com', CAST(N'1993-09-01' AS Date), 252, N'7(4020)034-48-35', 3, N'IT-инфраструктура', N'N6598CFsgi', N'foto21.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (14, N'Ярослав', N'Спиридонов', N'Сергеевич', N'м', N'las6pufjkv45@outlook.com', CAST(N'1969-04-22' AS Date), 252, N'7(17)843-77-26', 3, N'IT-инфраструктура', N'DV5625Zfmj', N'foto22.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (15, N'Эмилия', N'Виноградова', N'Валерьевна', N'ж', N'nl81b9i7s0ka@gmail.com', CAST(N'1991-10-25' AS Date), 252, N'7(16)788-42-97', 3, N'IT-инфраструктура', N'22YyD83dMg', N'foto23.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (16, N'Ева', N'Мартынова', N'Семёновна', N'ж', N'ma87ser3gkj9@yahoo.com', CAST(N'1984-03-24' AS Date), 252, N'7(087)267-87-85', 5, N'Информационная безопасность', N'522EmkEmA6', N'foto24.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (17, N'Анисия', N'Яковлева', N'Григорьевна', N'ж', N'dfmygtwpecj9@tutanota.com', CAST(N'1997-09-13' AS Date), 252, N'7(798)711-92-89', 5, N'Информационная безопасность', N'uf9u227NYU', N'foto25.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (18, N'Тимофей', N'Свиридов', N'Александрович', N'м', N'82zju4yritwo@mail.com', CAST(N'1991-07-22' AS Date), 252, N'7(68)882-28-10', 2, N'Разработка приложений', N'4UDk9p76mD', N'foto26.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (19, N'Захар', N'Медведев', N'Даниилович', N'м', N'zo6nye42s87t@yahoo.com', CAST(N'1960-04-11' AS Date), 252, N'7(36)230-79-77', 4, N'Стартапы', N'cK49u3JU4n', N'foto27.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (20, N'Елизавета', N'Тихонова', N'Александровна', N'ж', N'0cejwmnpqtb6@gmail.com', CAST(N'1955-01-07' AS Date), 252, N'7(2594)224-28-37', 5, N'Информационная безопасность', N'b2JHb32S8i', N'foto28.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Name], [Surname], [Patronymic], [Gender], [Mail], [Date_birth], [CountryID], [Tel], [SpecialityID], [Event], [Password], [Photo]) VALUES (21, N'Роман', N'Рыжов', N'Константинович', N'м', N'42thql96cwe5@yahoo.com', CAST(N'1981-12-30' AS Date), 252, N'7(1009)025-64-70', 2, N'Разработка приложений', N'uASc9446eF', N'foto29.jpg')
GO
SET IDENTITY_INSERT [dbo].[Moderators] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizers] ON 
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (1, N'Всеволод', N'Васильев', N'Давидович', N'6z92wongmash@tutanota.com', CAST(N'1988-10-16' AS Date), 252, N'7(354)903-53-67', N'Ke22Yh8Pp7', N'foto1.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (2, N'Фёдор', N'Новиков', N'Макарович', N'jkp23vlzsqei@gmail.com', CAST(N'1980-08-03' AS Date), 252, N'7(6562)925-01-77', N'Tj78jXeH68', N'foto2.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (3, N'Владислава', N'Фролова', N'Савельевна', N'dncmxp1vqr4t@tutanota.com', CAST(N'1999-07-13' AS Date), 252, N'7(12)981-33-56', N'DF9a8cJf82', N'foto3.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (4, N'Елисей', N'Кузнецов', N'Александрович', N'sn4xvg8wyb0h@outlook.com', CAST(N'1983-12-19' AS Date), 252, N'7(698)667-22-45', N'B2bdk8FD27', N'foto4.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (5, N'София', N'Рябова', N'Матвеевна', N'9zaecohlw2xy@tutanota.com', CAST(N'1998-08-10' AS Date), 252, N'7(38)393-11-43', N'58vMHdK4g5', N'foto5.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (6, N'Арсений', N'Власов', N'Львович', N'sohzld6c52mv@gmail.com', CAST(N'1980-05-28' AS Date), 252, N'7(4297)539-13-81', N'T3uhc34E9Z', N'foto6.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (7, N'Екатерина', N'Маслова', N'Макаровна', N'a1v0lgxsz3qb@mail.com', CAST(N'1983-10-26' AS Date), 252, N'7(49)638-66-62', N'dj8PN3b4M9', N'foto7.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (8, N'Давид', N'Агафонов', N'Артёмович', N'lry2ko5t031w@gmail.com', CAST(N'1995-10-14' AS Date), 252, N'7(65)706-55-85', N'uy69Pp8DY6', N'foto8.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (9, N'Варвара', N'Федотова', N'Сергеевна', N'omrjzf0pc8n6@outlook.com', CAST(N'1996-12-05' AS Date), 252, N'7(40)420-24-06', N'Sp3k6Ax86E', N'foto9.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (10, N'Виктория', N'Кудряшова', N'Дмитриевна', N't1wpou7merxi@yahoo.com', CAST(N'1999-02-13' AS Date), 252, N'7(427)939-24-67', N'fvm774FV3R', N'foto10.jpg', N'ж')
GO
SET IDENTITY_INSERT [dbo].[Organizers] OFF
GO
SET IDENTITY_INSERT [dbo].[Participants] ON 
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (81, N'Нора', N'Ершова', N'Федотовна', N'techie@outlook.com', CAST(N'1987-03-26' AS Date), 252, N'+7 (960) 424-07-11', N'tKKevv8%', N'foto60.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (82, N'Жанна', N'Афанасьева', N'Валентиновна', N'agapow@yahoo.com', CAST(N'1988-01-04' AS Date), 252, N'+7 (930) 661-69-31', N'huSfHm4$', N'foto61.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (83, N'Рая', N'Крылова', N'Всеволодовна', N'chaikin@yahoo.ca', CAST(N'1988-04-05' AS Date), 252, N'+7 (957) 265-60-68', N'TlUwMw77%', N'foto62.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (84, N'Вида', N'Попова', N'Тимофеевна', N'lbecchi@yahoo.ca', CAST(N'1989-10-25' AS Date), 252, N'+7 (911) 744-03-14', N'%afF#@6', N'foto63.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (85, N'Сандра', N'Давыдова', N'Богуславовна', N'bbirth@gmail.com', CAST(N'1989-12-27' AS Date), 252, N'+7 (984) 877-87-64', N'SU4Jpw"', N'foto64.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (86, N'Сабина', N'Прохорова', N'Созоновна', N'library@sbcglobal.net', CAST(N'1990-01-16' AS Date), 252, N'+7 (940) 500-20-72', N'wL#O0V', N'foto65.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (87, N'Сильва', N'Громова', N'Адольфовна', N'sisyphus@live.com', CAST(N'1990-06-13' AS Date), 252, N'+7 (956) 056-75-21', N'p5r{zY', N'foto66.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (88, N'Джема', N'Боброва', N'Феликсовна', N'msroth@hotmail.com', CAST(N'1990-07-03' AS Date), 252, N'+7 (965) 493-39-66', N'wTVK~M1', N'foto67.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (89, N'Алия', N'Фокина', N'Юлиановна', N'dodong@yahoo.com', CAST(N'1990-11-27' AS Date), 252, N'+7 (997) 329-69-78', N'8*Zfaj', N'foto68.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (90, N'Маргарита', N'Калинина', N'Анатольевна', N'bcevc@hotmail.com', CAST(N'1991-06-08' AS Date), 252, N'+7 (964) 571-56-50', N'4sBGr*', N'foto69.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (91, N'Дина', N'Горшкова', N'Тарасовна', N'sethbrown@aol.com', CAST(N'1991-08-13' AS Date), 252, N'+7 (918) 418-80-73', N'BpC8e8]', N'foto70.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (92, N'Ирэна', N'Гуляева', N'Юрьевна', N'ftgvh2xbdaps@tutanota.com', CAST(N'1992-10-03' AS Date), 252, N'+7 (91) 841-39-39', N'cI1CTd', N'foto1.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (93, N'Келен', N'Бурова', N'Натановна', N'ervbd91pfcoi@mail.com', CAST(N'1990-09-19' AS Date), 252, N'+7 (918) 418-10-29', N'MPmfYk', N'foto2.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (94, N'Лаура', N'Королёва', N'Пётровна', N'p3y4b981xwdl@outlook.com', CAST(N'1995-07-31' AS Date), 252, N'+7 (9184) 188-29-42', N'omtSW3', N'foto3.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (95, N'Розалия', N'Степанова', N'Евсеевна', N'8e9kvxq6z70o@mail.com', CAST(N'1994-11-02' AS Date), 252, N'+7 (918) 418-01-29', N'cErGgC', N'foto4.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (96, N'Евгения', N'Тимофеева', N'Викторовна', N'obnk82vzpg34@yahoo.com', CAST(N'1982-01-02' AS Date), 252, N'+7 (918) 418-12-03', N'q2se3v', N'foto5.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (97, N'Винетта', N'Дроздова', N'Германовна', N'wl652rgtk9js@gmail.com', CAST(N'1996-06-17' AS Date), 252, N'+7 (918) 418-10-35', N'KnqfAk', N'foto6.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (98, N'Ксения', N'Лукина', N'Романовна', N'23rgct5v1myx@gmail.com', CAST(N'1990-09-18' AS Date), 252, N'+7 (918) 418-10-38', N'6YxPwE', N'foto7.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (99, N'Триана', N'Мышкина', N'Геннадьевна', N'i4fs8e6mlk5p@yahoo.com', CAST(N'1981-12-30' AS Date), 252, N'+7 (918) 418-91-37', N'pBQpPx', N'foto8.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Email], [Date_birth], [CountryID], [Tel], [Password], [Photo], [Gender]) VALUES (100, N'Аделия', N'Михеева', N'Авксентьевна', N'4hu6f8dxvngq@tutanota.com', CAST(N'1989-06-11' AS Date), 252, N'+7 (918) 239-45-82', N'FkX6Ms', N'foto9.jpg', N'ж')
GO
SET IDENTITY_INSERT [dbo].[Participants] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialities] ON 
GO
INSERT [dbo].[Specialities] ([ID], [Title]) VALUES (1, N'ИТ')
GO
INSERT [dbo].[Specialities] ([ID], [Title]) VALUES (2, N'Биг Дата')
GO
INSERT [dbo].[Specialities] ([ID], [Title]) VALUES (3, N'Дизайн')
GO
INSERT [dbo].[Specialities] ([ID], [Title]) VALUES (4, N'Аналитика')
GO
INSERT [dbo].[Specialities] ([ID], [Title]) VALUES (5, N'Информационная безопасность')
GO
SET IDENTITY_INSERT [dbo].[Specialities] OFF
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_City] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_City]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Country]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Specialities] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialities] ([ID])
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Specialities]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Country]
GO
ALTER TABLE [dbo].[Moderators]  WITH CHECK ADD  CONSTRAINT [FK_Moderators_Specialities] FOREIGN KEY([SpecialityID])
REFERENCES [dbo].[Specialities] ([ID])
GO
ALTER TABLE [dbo].[Moderators] CHECK CONSTRAINT [FK_Moderators_Specialities]
GO
ALTER TABLE [dbo].[Organizers]  WITH CHECK ADD  CONSTRAINT [FK_Organizers_Country] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Organizers] CHECK CONSTRAINT [FK_Organizers_Country]
GO
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD  CONSTRAINT [FK_Participants_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Participants] CHECK CONSTRAINT [FK_Participants_Country]
GO
USE [master]
GO
ALTER DATABASE [020_Подойницын_3Квалиф ПМ01 ] SET  READ_WRITE 
GO
