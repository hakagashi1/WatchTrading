USE [AromaTrading ]
GO
ALTER TABLE [dbo].[user_payment] DROP CONSTRAINT [FK_user_payment_user]
GO
ALTER TABLE [dbo].[user_address] DROP CONSTRAINT [FK_user_address_user]
GO
ALTER TABLE [dbo].[shopping_session] DROP CONSTRAINT [FK_shopping_session_user]
GO
ALTER TABLE [dbo].[product_images] DROP CONSTRAINT [FK_product_images_product]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK_product_user]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK_Product_product_category]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK_Product_discount]
GO
ALTER TABLE [dbo].[payment_details] DROP CONSTRAINT [FK_payment_details_Shipping]
GO
ALTER TABLE [dbo].[payment_details] DROP CONSTRAINT [FK_payment_details_order_details]
GO
ALTER TABLE [dbo].[order_items] DROP CONSTRAINT [FK_order_items_Product]
GO
ALTER TABLE [dbo].[order_items] DROP CONSTRAINT [FK_order_items_order_details]
GO
ALTER TABLE [dbo].[order_details] DROP CONSTRAINT [FK_order_details_user]
GO
ALTER TABLE [dbo].[cart_item] DROP CONSTRAINT [FK_cart_item_shopping_session]
GO
ALTER TABLE [dbo].[cart_item] DROP CONSTRAINT [FK_cart_item_Product]
GO
/****** Object:  Table [dbo].[user_payment]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_payment]') AND type in (N'U'))
DROP TABLE [dbo].[user_payment]
GO
/****** Object:  Table [dbo].[user_address]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_address]') AND type in (N'U'))
DROP TABLE [dbo].[user_address]
GO
/****** Object:  Table [dbo].[user]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[shopping_session]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shopping_session]') AND type in (N'U'))
DROP TABLE [dbo].[shopping_session]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shipping]') AND type in (N'U'))
DROP TABLE [dbo].[Shipping]
GO
/****** Object:  Table [dbo].[product_images]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_images]') AND type in (N'U'))
DROP TABLE [dbo].[product_images]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_category]') AND type in (N'U'))
DROP TABLE [dbo].[product_category]
GO
/****** Object:  Table [dbo].[product]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[payment_details]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[payment_details]') AND type in (N'U'))
DROP TABLE [dbo].[payment_details]
GO
/****** Object:  Table [dbo].[order_items]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_items]') AND type in (N'U'))
DROP TABLE [dbo].[order_items]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_details]') AND type in (N'U'))
DROP TABLE [dbo].[order_details]
GO
/****** Object:  Table [dbo].[discount]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[discount]') AND type in (N'U'))
DROP TABLE [dbo].[discount]
GO
/****** Object:  Table [dbo].[cart_item]    Script Date: 02/11/2021 00:07:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cart_item]') AND type in (N'U'))
DROP TABLE [dbo].[cart_item]
GO
USE [master]
GO
/****** Object:  Database [AromaTrading ]    Script Date: 02/11/2021 00:07:29 ******/
DROP DATABASE [AromaTrading ]
GO
/****** Object:  Database [AromaTrading ]    Script Date: 02/11/2021 00:07:29 ******/
CREATE DATABASE [AromaTrading ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AromaTrading', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AromaTrading .mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AromaTrading _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AromaTrading _log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AromaTrading ] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AromaTrading ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AromaTrading ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AromaTrading ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AromaTrading ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AromaTrading ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AromaTrading ] SET ARITHABORT OFF 
GO
ALTER DATABASE [AromaTrading ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AromaTrading ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AromaTrading ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AromaTrading ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AromaTrading ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AromaTrading ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AromaTrading ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AromaTrading ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AromaTrading ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AromaTrading ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AromaTrading ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AromaTrading ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AromaTrading ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AromaTrading ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AromaTrading ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AromaTrading ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AromaTrading ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AromaTrading ] SET RECOVERY FULL 
GO
ALTER DATABASE [AromaTrading ] SET  MULTI_USER 
GO
ALTER DATABASE [AromaTrading ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AromaTrading ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AromaTrading ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AromaTrading ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AromaTrading ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AromaTrading ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AromaTrading ', N'ON'
GO
ALTER DATABASE [AromaTrading ] SET QUERY_STORE = OFF
GO
USE [AromaTrading ]
GO
/****** Object:  Table [dbo].[cart_item]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[session_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_cart_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[details] [text] NOT NULL,
	[discount_percent] [decimal](2, 0) NOT NULL,
	[active] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[modified_at] [datetime] NULL,
 CONSTRAINT [PK_discount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_order_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_items]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_order_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_details]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[shipping_id] [int] NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_payment_details_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[details] [text] NOT NULL,
	[SKU] [nvarchar](50) NULL,
	[category_id] [int] NOT NULL,
	[price] [int] NOT NULL,
	[discount_id] [int] NULL,
	[sold] [int] NULL,
	[created_at] [datetime] NULL,
	[seller_id] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[details] [text] NOT NULL,
 CONSTRAINT [PK_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_images]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [text] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_product_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping_session]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping_session](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_shopping_session] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[telephone] [varchar](50) NULL,
	[isSell] [bit] NULL,
	[isAdmin] [bit] NULL,
	[email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_address]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[address_line1] [varchar](50) NOT NULL,
	[address_line2] [varchar](50) NULL,
	[city] [varchar](50) NOT NULL,
	[postal_code] [varchar](50) NOT NULL,
	[country] [varchar](50) NOT NULL,
	[telephone] [varchar](50) NOT NULL,
	[mobile] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user_address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_payment]    Script Date: 02/11/2021 00:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[payment_type] [varchar](50) NOT NULL,
	[provider] [varchar](50) NOT NULL,
	[account_no] [int] NOT NULL,
	[expiry] [date] NOT NULL,
 CONSTRAINT [PK_user_payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[discount] ON 

INSERT [dbo].[discount] ([id], [name], [details], [discount_percent], [active], [created_at], [modified_at]) VALUES (1, N'20/10', N'Woman''s day', CAST(10 AS Decimal(2, 0)), 1, CAST(N'2021-10-20T00:00:00.000' AS DateTime), CAST(N'2021-10-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[discount] OFF
GO
SET IDENTITY_INSERT [dbo].[order_details] ON 

INSERT [dbo].[order_details] ([id], [user_id], [created_at], [status]) VALUES (2, 1, CAST(N'2021-10-30T15:00:15.810' AS DateTime), 0)
INSERT [dbo].[order_details] ([id], [user_id], [created_at], [status]) VALUES (3, 2, CAST(N'2021-10-30T22:03:40.467' AS DateTime), 0)
INSERT [dbo].[order_details] ([id], [user_id], [created_at], [status]) VALUES (4, 4, CAST(N'2021-10-30T22:07:07.663' AS DateTime), 0)
INSERT [dbo].[order_details] ([id], [user_id], [created_at], [status]) VALUES (7, 22, CAST(N'2021-10-31T20:09:27.493' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[order_details] OFF
GO
SET IDENTITY_INSERT [dbo].[order_items] ON 

INSERT [dbo].[order_items] ([id], [order_id], [product_id], [quantity], [created_at]) VALUES (5, 2, 2, 1, CAST(N'2021-10-31T20:46:59.077' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [quantity], [created_at]) VALUES (10, 4, 6, 1, CAST(N'2021-10-31T12:10:23.080' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [quantity], [created_at]) VALUES (12, 4, 27, 1, CAST(N'2021-10-31T12:17:46.493' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [quantity], [created_at]) VALUES (14, 7, 4, 1, CAST(N'2021-10-31T20:11:29.213' AS DateTime))
INSERT [dbo].[order_items] ([id], [order_id], [product_id], [quantity], [created_at]) VALUES (15, 7, 8, 1, CAST(N'2021-10-31T20:11:32.570' AS DateTime))
SET IDENTITY_INSERT [dbo].[order_items] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_details] ON 

INSERT [dbo].[payment_details] ([id], [order_id], [shipping_id], [status]) VALUES (1, 4, 2, N'0')
INSERT [dbo].[payment_details] ([id], [order_id], [shipping_id], [status]) VALUES (2, 2, 3, N'0')
INSERT [dbo].[payment_details] ([id], [order_id], [shipping_id], [status]) VALUES (3, 7, 2, N'0')
SET IDENTITY_INSERT [dbo].[payment_details] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (2, N'ICONIC LINK AMBER 123', N'Demo1', N'DW00100462', 1, 200, 1, 50, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 5, 40)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (4, N'PETITE AMBER 5', N'The Petite Amber features a light brown dial with a sunray finish. A vibrant color associated with warmth, energy, and boldness. Crafted with polished stainless steel, available with a refined rose gold plating. A delicate and chic timepiece that gives your look a unique touch.', N'DW00100476', 2, 229, 1, 12, CAST(N'2021-10-04T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (6, N'QUADRO PRESSED MELROSE', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.

', N'DW00100431
', 6, 179, 1, 23, CAST(N'2021-10-06T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (7, N'Merrose', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.




', N'DW00100432
', 7, 229, 1, 42, CAST(N'2021-10-07T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (8, N'QUADRO PRESSED MELROSE


', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.

', N'DW00100437', 4, 199, 1, 56, CAST(N'2021-09-10T00:00:00.000' AS DateTime), 14, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (9, N'QUADRO PRESSED STERLING yyy', N'Demo2', N'DW00100438', 4, 210, 1, 12, CAST(N'2021-04-13T00:00:00.000' AS DateTime), 1, 40)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (10, N'QUADRO PRESSED SHEFFIELD


', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.


', N'DW00100434', 4, 179, 1, 5, CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (11, N'QUADRO PRESSED SHEFFIELD


', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.


', N'DW00100435', 4, 179, 1, 24, CAST(N'2018-04-03T00:00:00.000' AS DateTime), 5, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (12, N'QUADRO PRESSED SHEFFIELD', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.', N'DW00100439', 4, 200, 1, 6, CAST(N'2020-06-04T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (13, N'QUADRO PRESSED ASHFIELD', N'The Quadro is our first square dial timepiece. Crafted with polished stainless steel and available in a refined rose gold plating or vibrant silver finish. Choose between the option of a white, black, or green patterned dial and a selection of pressed mesh or pressed leather straps. Elevate your look with a unique edge.
', N'DW00100433', 4, 199, 1, 23, CAST(N'2014-09-05T00:00:00.000' AS DateTime), 1, 20)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (14, N'ICONIC MOTION', N'The Iconic Motion is our first water-resistant timepiece. Featuring an upgraded 10 ATM water-resistant watch head and an all-new strap made from a synthetic rubber called FKM. Available with contrasting rose gold or silver accents that give the timepiece its bold and eye-catching edge. Designed for an active lifestyle, a statement piece that combines style and functionality.


', N'DW00100426', 1, 199, 1, 5, CAST(N'2021-10-06T00:00:00.000' AS DateTime), 14, 12)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (15, N'ICONIC MOTION
', N'The Iconic Motion is our first water-resistant timepiece. Featuring an upgraded 10 ATM water-resistant watch head and an all-new strap made from a synthetic rubber called FKM. Available with contrasting rose gold or silver accents that give the timepiece its bold and eye-catching edge. Designed for an active lifestyle, a statement piece that combines style and functionality.


', N'DW00100436', 1, 249, 1, 7, CAST(N'2021-02-17T00:00:00.000' AS DateTime), 5, 13)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (16, N'ICONIC LINK CERAMIC', N'The Iconic Link Ceramic is our first timepiece made entirely from ceramic. Featuring silver accents on the hands and markers of the dial to seamlessly match the shiny surface of the ceramic links. This unique addition to the Iconic Link collection stands out as the new statement piece. The little black watch everyone needs in their collection. Please be advised that hard impacts can cause ceramic to chip or crack, although this is not a common occurrence.

', N'DW00100415', 1, 299, 1, 45, CAST(N'2021-05-13T00:00:00.000' AS DateTime), 5, 134)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (18, N'ICONIC LINK EMERALD', N'The Iconic Link Emerald features a glossy emerald green dial. Available in polished stainless steel with a vibrant silver finish or refined rose gold plating. A timepiece that brings a pop of color to your collection, one that commands attention with its striking design.

', N'DW00100420', 1, 229, 1, 21, CAST(N'2021-05-04T00:00:00.000' AS DateTime), 16, 131)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (19, N'ICONIC LINK LUMINE', N'The Lumine features a bejeweled eggshell white dial with glistening crystals. This exclusive design gives our signature twelve index dial a renewed and luminous silhouette. To achieve the two-tone appearance, the Lumine comes in polished stainless steel with a vibrant silver finish with contrasting elements of the bracelet and case plated in refined rose gold. This unique combination gives the timepiece its elegant and graceful appearance.

', N'DW00100359', 1, 299, 1, 45, CAST(N'2012-02-04T00:00:00.000' AS DateTime), 16, 31)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (20, N'ICONIC LINK', N'A modern take on a classic design, the Iconic Link is the revelation behind years of meticulous craftsmanship. The Iconic Link features a luxurious metal bracelet with three-piece links; each segment is comprised of solid steel, individually crafted pieces in an elegantly tapered form, ensuring a seamless transition from case to clasp.
The distinctive and sculptural lines of the raised midpiece blend effortlessly with the watch case, as our signature twelve index dial takes on a renewed, modern silhouette.
The Iconic Link is available in polished stainless steel (316L) with a vibrant silver finish or with refined rose gold plating.
The link bracelet can be adjusted for a perfect fit at your Daniel Wellington store or local watchmaker.', N'DW00100213', 1, 209, 1, 34, CAST(N'2005-04-03T00:00:00.000' AS DateTime), 1, 341)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (21, N'ICONIC LINK', N'A modern take on a classic design, the Iconic Link is the revelation behind years of meticulous craftsmanship. The Iconic Link features a luxurious metal bracelet with three-piece links; each segment is comprised of solid steel, individually crafted pieces in an elegantly tapered form, ensuring a seamless transition from case to clasp.
The distinctive and sculptural lines of the raised midpiece blend effortlessly with the watch case, as our signature twelve index dial takes on a renewed, modern silhouette.
The Iconic Link is available in polished stainless steel (316L) with a vibrant silver finish or with refined rose gold plating.
The link bracelet can be adjusted for a perfect fit at your Daniel Wellington store or local watchmaker.', N'DW00100208', 1, 199, 1, 62, CAST(N'2006-03-02T00:00:00.000' AS DateTime), 5, 31)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (22, N'ICONIC LINK', N'A modern take on a classic design, the Iconic Link is the revelation behind years of meticulous craftsmanship. The Iconic Link features a luxurious metal bracelet with three-piece links; each segment is comprised of solid steel, individually crafted pieces in an elegantly tapered form, ensuring a seamless transition from case to clasp.
The distinctive and sculptural lines of the raised midpiece blend effortlessly with the watch case, as our signature twelve index dial takes on a renewed, modern silhouette.
The Iconic Link is available in polished stainless steel (316L) with a vibrant silver finish or with refined rose gold plating.
The link bracelet can be adjusted for a perfect fit at your Daniel Wellington store or local watchmaker.', N'DW00100214', 1, 199, 1, 62, CAST(N'2004-02-01T00:00:00.000' AS DateTime), 16, 3)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (23, N'ICONIC LINK', N'The Petite Pressed Melrose is our most delicate timepiece to date. Designed to be worn every day, this watch reflects the beauty in the small things. Crafted with polished stainless steel and plated with refined rose gold. Choose between a white or black dial and elevate your look with a graceful touch.

', NULL, 2, 179, NULL, NULL, NULL, 1, 70)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (24, N'PETITE PRESSED MELROSE', N'The Petite Pressed Melrose is our most delicate timepiece to date. Designed to be worn every day, this watch reflects the beauty in the small things. Crafted with polished stainless steel and plated with refined rose gold. Choose between a white or black dial and elevate your look with a graceful touch.', NULL, 2, 179, NULL, NULL, NULL, 1, 70)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (27, N'aaa', N'Demo4', NULL, 5, 209, NULL, NULL, NULL, 1, 120)
INSERT [dbo].[product] ([id], [name], [details], [SKU], [category_id], [price], [discount_id], [sold], [created_at], [seller_id], [quantity]) VALUES (28, N'12345', N'Demo5', NULL, 3, 179, NULL, NULL, NULL, 22, 120)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[product_category] ON 

INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (1, N'ICONIC', N'Timeless, elegant and expressive')
INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (2, N'PETITE', N'Our sleekest timepiece to date')
INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (3, N'CLASSIC', N'Our most coveted pieces')
INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (4, N'QUADRO', N'Our signature dial, redefined with a bold edge')
INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (5, N'ELAN', N'An eclectic expression')
INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (6, N'ASPIRATION', N'Timeless elegance')
INSERT [dbo].[product_category] ([id], [name], [details]) VALUES (7, N'EMALIE', N'A continuation of our classics')
SET IDENTITY_INSERT [dbo].[product_category] OFF
GO
SET IDENTITY_INSERT [dbo].[product_images] ON 

INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (7, N'images\categories\ICONIC LINK AMBER\1.jpg', 2)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (8, N'images\categories\ICONIC LINK AMBER\1.jpg', 2)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (9, N'images\categories\ICONIC LINK AMBER\1.jpg', 2)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (10, N'images\categories\ICONIC LINK AMBER\1.jpg', 2)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (11, N'images\categories\ICONIC LINK AMBER\1.jpg', 2)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (16, N'images\categories\PETITE AMBER\1.jpg', 4)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (17, N'images\categories\PETITE AMBER\1.jpg', 4)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (18, N'images\categories\PETITE AMBER\1.jpg', 4)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (19, N'images\categories\PETITE AMBER\1.jpg', 4)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (24, N'images\categories\QUADRO PRESSED MELROSE\DW00100431\1.jpg', 6)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (25, N'images\categories\QUADRO PRESSED MELROSE\DW00100431\1.jpg', 6)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (26, N'images\categories\QUADRO PRESSED MELROSE\DW00100431\1.jpg', 6)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (27, N'images\categories\QUADRO PRESSED MELROSE\DW00100431\1.jpg', 6)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (28, N'images\categories\QUADRO PRESSED MELROSE\DW00100431\1.jpg', 6)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (29, N'images\categories\QUADRO PRESSED MELROSE\DW00100431\1.jpg', 6)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (30, N'images\categories\QUADRO PRESSED MELROSE\DW00100432\1.jpg', 7)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (31, N'images\categories\QUADRO PRESSED MELROSE\DW00100432\1.jpg', 7)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (32, N'images\categories\QUADRO PRESSED MELROSE\DW00100432\1.jpg', 7)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (33, N'images\categories\QUADRO PRESSED MELROSE\DW00100432\1.jpg', 7)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (34, N'images\categories\QUADRO PRESSED MELROSE\DW00100432\1.jpg', 7)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (35, N'images\categories\QUADRO PRESSED MELROSE\DW00100432\1.jpg', 7)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (36, N'images\categories\QUADRO PRESSED MELROSE\DW00100437\1.jpg', 8)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (37, N'images\categories\QUADRO PRESSED MELROSE\DW00100437\2.jpg', 8)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (38, N'images\categories\QUADRO PRESSED MELROSE\DW00100437\3.jpg', 8)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (39, N'images\categories\QUADRO PRESSED MELROSE\DW00100437\4.jpg', 8)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (40, N'images\categories\QUADRO PRESSED STERLING\1.jpg', 9)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (41, N'images\categories\QUADRO PRESSED STERLING\1.jpg', 9)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (42, N'images\categories\QUADRO PRESSED STERLING\1.jpg', 9)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (43, N'images\categories\QUADRO PRESSED STERLING\1.jpg', 9)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (44, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100434\1.jpg', 10)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (45, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100434\2.jpg', 10)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (46, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100434\3.jpg', 10)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (47, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100434\4.jpg', 10)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (48, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100434\5.jpg', 10)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (49, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100434\6.jpg', 10)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (50, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100435\1.jpg', 11)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (51, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100435\2.jpg', 11)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (52, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100435\3.jpg', 11)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (53, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100435\4.jpg', 11)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (54, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100435\5.jpg', 11)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (55, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100439\1.jpg', 12)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (56, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100439\1.jpg', 12)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (57, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100439\1.jpg', 12)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (58, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100439\1.jpg', 12)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (59, N'images\categories\QUADRO PRESSED SHEFFIELD\DW00100439\1.jpg', 12)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (60, N'images\categories\QUADRO PRESSED ASHFIELD\1.jpg', 13)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (61, N'images\categories\QUADRO PRESSED ASHFIELD\2.jpg', 13)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (62, N'images\categories\QUADRO PRESSED ASHFIELD\3.jpg', 13)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (63, N'images\categories\QUADRO PRESSED ASHFIELD\4.jpg', 13)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (64, N'images\categories\QUADRO PRESSED ASHFIELD\5.jpg', 13)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (65, N'images\categories\QUADRO PRESSED ASHFIELD\6.jpg', 13)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (66, N'images\categories\ICONIC MOTION\DW00100426\1.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (67, N'images\categories\ICONIC MOTION\DW00100426\2.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (68, N'images\categories\ICONIC MOTION\DW00100426\3.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (69, N'images\categories\ICONIC MOTION\DW00100426\4.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (70, N'images\categories\ICONIC MOTION\DW00100426\5.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (71, N'images\categories\ICONIC MOTION\DW00100426\6.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (72, N'images\categories\ICONIC MOTION\DW00100426\7.jpg', 14)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (73, N'images\categories\ICONIC MOTION\DW00100436\1.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (74, N'images\categories\ICONIC MOTION\DW00100436\2.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (75, N'images\categories\ICONIC MOTION\DW00100436\3.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (76, N'images\categories\ICONIC MOTION\DW00100436\4.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (77, N'images\categories\ICONIC MOTION\DW00100436\5.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (78, N'images\categories\ICONIC MOTION\DW00100436\6.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (79, N'images\categories\ICONIC MOTION\DW00100436\7.jpg', 15)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (80, N'images\categories\ICONIC LINK CERAMIC\1.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (81, N'images\categories\ICONIC LINK CERAMIC\2.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (82, N'images\categories\ICONIC LINK CERAMIC\3.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (83, N'images\categories\ICONIC LINK CERAMIC\4.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (84, N'images\categories\ICONIC LINK CERAMIC\5.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (85, N'images\categories\ICONIC LINK CERAMIC\6.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (86, N'images\categories\ICONIC LINK CERAMIC\7.jpg', 16)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (95, N'images\categories\ICONIC LINK EMERALD\1.jpg', 18)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (96, N'images\categories\ICONIC LINK EMERALD\2.jpg', 18)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (97, N'images\categories\ICONIC LINK EMERALD\3.jpg', 18)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (98, N'images\categories\ICONIC LINK EMERALD\4.jpg', 18)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (99, N'images\categories\ICONIC LINK LUMINE\1.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (100, N'images\categories\ICONIC LINK LUMINE\2.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (101, N'images\categories\ICONIC LINK LUMINE\3.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (102, N'images\categories\ICONIC LINK LUMINE\4.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (103, N'images\categories\ICONIC LINK LUMINE\5.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (104, N'images\categories\ICONIC LINK LUMINE\6.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (105, N'images\categories\ICONIC LINK LUMINE\7.jpg', 19)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (106, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (107, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (108, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (109, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (110, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (111, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (112, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (113, N'images\categories\ICONIC LINK\DW00100213\1.jpg', 20)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (114, N'images\categories\ICONIC LINK\DW00100208\1.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (115, N'images\categories\ICONIC LINK\DW00100208\2.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (116, N'images\categories\ICONIC LINK\DW00100208\3.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (117, N'images\categories\ICONIC LINK\DW00100208\4.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (118, N'images\categories\ICONIC LINK\DW00100208\5.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (119, N'images\categories\ICONIC LINK\DW00100208\6.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (120, N'images\categories\ICONIC LINK\DW00100208\7.jpg', 21)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (121, N'images\categories\ICONIC LINK\DW00100208\8.jpg', 21)
GO
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (122, N'images\categories\ICONIC LINK\DW00100214\1.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (123, N'images\categories\ICONIC LINK\DW00100214\2.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (124, N'images\categories\ICONIC LINK\DW00100214\3.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (125, N'images\categories\ICONIC LINK\DW00100214\4.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (126, N'images\categories\ICONIC LINK\DW00100214\5.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (127, N'images\categories\ICONIC LINK\DW00100214\6.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (128, N'images\categories\ICONIC LINK\DW00100214\7.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (129, N'images\categories\ICONIC LINK\DW00100214\8.jpg', 22)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (130, N'images\categories\PETITE PRESSED MELROSE\1.jpg', 23)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (131, N'images\categories\PETITE PRESSED MELROSE\2.jpg', 23)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (132, N'images\categories\PETITE PRESSED MELROSE\3.jpg', 23)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (133, N'images\categories\PETITE PRESSED MELROSE\4.jpg', 23)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (134, N'images\categories\PETITE PRESSED MELROSE\\5.jpg', 23)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (135, N'images\categories\PETITE PRESSED MELROSE\1.jpg', 24)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (138, N'https://www.danielwellington.com/product-images/dw00100313_petite_do-yIU84Alz.png?ecom2=true&format=jpg&canvas=1:1&width=600&quality=80&bg-color=FFFFFF', 27)
INSERT [dbo].[product_images] ([id], [link], [product_id]) VALUES (139, N'images\categories\PETITE PRESSED MELROSE\2.jpg', 28)
SET IDENTITY_INSERT [dbo].[product_images] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [type], [price]) VALUES (1, N'Flat Rate', 5)
INSERT [dbo].[Shipping] ([id], [type], [price]) VALUES (2, N'Free Shipping', 0)
INSERT [dbo].[Shipping] ([id], [type], [price]) VALUES (3, N'Flate Rate', 10)
INSERT [dbo].[Shipping] ([id], [type], [price]) VALUES (4, N'Local Delivery', 2)
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (1, N'thuytien', N'thuytien', N'Tien', N'Thuy', N'0123456785', 1, 0, N'thuytien@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (2, N'tientien', N'tientien', N'xxx', N'xxx', N'0102030405', 0, 1, N'tientien@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (3, N'abc', N'123', N'aaa', N'bbb', N'1230984567', 0, 0, N'abc@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (4, N'aaa', N'111', N'a', N'b', N'1919191919', 0, 0, N'aaa@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (5, N'bbb', N'222', N'c', N'd', N'0123829292', 1, 1, N'bbb@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (7, N'ccc', N'222', N'e', N'f', N'1281121211', 0, 0, N'ccc@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (8, N'ddd', N'444', N'g', N'h', N'1212121232', 0, 0, N'ddd@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (10, N'eee', N'555', N'i', N'k', N'1213454535', 0, 0, N'eee@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (14, N'fff', N'555', N'm', N'm', N'1231434523', 1, 0, N'fff@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (16, N'ggg', N'555', N'n', N'n', N'4276743214', 1, 0, N'ggg@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (18, N'etg', N'123456789', N'b', N'b', N'1446323424', 0, 1, N'etg@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (19, N'tttt', N'tttt', N'aaa', N'aaa', N'0123432789', 1, 0, N'tttt@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (20, N'eeee', N'eeee', N'eeee', N'eeee', N'0123456788', 1, 0, N'eeee@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [telephone], [isSell], [isAdmin], [email]) VALUES (22, N'rrrr', N'rrrr', N'rrrr', N'rrrr', N'1234567892', 1, 0, N'rrrr@gmail.com')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_address] ON 

INSERT [dbo].[user_address] ([id], [user_id], [address_line1], [address_line2], [city], [postal_code], [country], [telephone], [mobile]) VALUES (1, 1, N'ABC Street', N'BCD Street', N'XYZ City', N'100000', N'Vietnam', N'0123456789', N'0123456789')
SET IDENTITY_INSERT [dbo].[user_address] OFF
GO
ALTER TABLE [dbo].[cart_item]  WITH CHECK ADD  CONSTRAINT [FK_cart_item_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[cart_item] CHECK CONSTRAINT [FK_cart_item_Product]
GO
ALTER TABLE [dbo].[cart_item]  WITH CHECK ADD  CONSTRAINT [FK_cart_item_shopping_session] FOREIGN KEY([session_id])
REFERENCES [dbo].[shopping_session] ([id])
GO
ALTER TABLE [dbo].[cart_item] CHECK CONSTRAINT [FK_cart_item_shopping_session]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_user]
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD  CONSTRAINT [FK_order_items_order_details] FOREIGN KEY([order_id])
REFERENCES [dbo].[order_details] ([id])
GO
ALTER TABLE [dbo].[order_items] CHECK CONSTRAINT [FK_order_items_order_details]
GO
ALTER TABLE [dbo].[order_items]  WITH CHECK ADD  CONSTRAINT [FK_order_items_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_items] CHECK CONSTRAINT [FK_order_items_Product]
GO
ALTER TABLE [dbo].[payment_details]  WITH CHECK ADD  CONSTRAINT [FK_payment_details_order_details] FOREIGN KEY([order_id])
REFERENCES [dbo].[order_details] ([id])
GO
ALTER TABLE [dbo].[payment_details] CHECK CONSTRAINT [FK_payment_details_order_details]
GO
ALTER TABLE [dbo].[payment_details]  WITH CHECK ADD  CONSTRAINT [FK_payment_details_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[payment_details] CHECK CONSTRAINT [FK_payment_details_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_Product_discount] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discount] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_Product_discount]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_Product_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[product_category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_Product_product_category]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_user] FOREIGN KEY([seller_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_user]
GO
ALTER TABLE [dbo].[product_images]  WITH CHECK ADD  CONSTRAINT [FK_product_images_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_images] CHECK CONSTRAINT [FK_product_images_product]
GO
ALTER TABLE [dbo].[shopping_session]  WITH CHECK ADD  CONSTRAINT [FK_shopping_session_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[shopping_session] CHECK CONSTRAINT [FK_shopping_session_user]
GO
ALTER TABLE [dbo].[user_address]  WITH CHECK ADD  CONSTRAINT [FK_user_address_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user_address] CHECK CONSTRAINT [FK_user_address_user]
GO
ALTER TABLE [dbo].[user_payment]  WITH CHECK ADD  CONSTRAINT [FK_user_payment_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user_payment] CHECK CONSTRAINT [FK_user_payment_user]
GO
USE [master]
GO
ALTER DATABASE [AromaTrading ] SET  READ_WRITE 
GO
